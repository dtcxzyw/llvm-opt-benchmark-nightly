inline.NumInlined: 2896
inline.NumDeleted: 1413
begin_hunk_0_@_ZN5folly9EventBase5driveEv:bb.a
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase5driveEvEUlvE_Lb1EED2Ev.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase5driveEvEUlvE_Lb1EED2Ev.exit2 ; 0 uses

_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase5driveEvEUlvE_Lb1EED2Ev.exit: ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  ret void

_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase5driveEvEUlvE_Lb1EED2Ev.exit2: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly9EventBase10scheduleAtEONS_8FunctionIFvvEEERKNSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 16 dereferenceable(632) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function", align 16  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !call_target !492
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !14043
  %i.f = sub nsw i64 %.sroa.0.0.copyload.i.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !14050 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %_ZN5folly9EventBase5timerEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = tail call noalias noundef nonnull dereferenceable(16712) ptr @_Znwm(i64 noundef 16712) #61, !noalias !14051 ; 4 uses
  %.sroa.0.0.copyload.i.i4 = load i64, ptr %i.i, align 8, !tbaa !14043, !noalias !14051
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC1EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16712) %i.j, ptr noundef nonnull align 16 dereferenceable(632) %0, i64 %.sroa.0.0.copyload.i.i4, i32 noundef 1, i64 -1)
          to label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i unwind label %bb.c, !noalias !14051

common.resume:                                    ; preds = %bb.k, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 16712) #59, !noalias !14051
  br label %common.resume

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 16, !tbaa !14050 ; 2 uses
  store ptr %i.j, ptr %i.g, align 16, !tbaa !14050
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9EventBase5timerEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(13) %i.m)
          to label %._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i unwind label %bb.e, !inline_history !14054

._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.g, align 16, !tbaa !14050
  br label %_ZN5folly9EventBase5timerEv.exit

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #58
  unreachable

_ZN5folly9EventBase5timerEv.exit:                 ; preds = %bb.a, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i, %._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i
  %i.s = phi ptr [ %.pre.i, %._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i ], [ %i.j, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i ], [ %i.h, %bb.a ]
  store ptr null, ptr %3, align 16, !tbaa !13923
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14045 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.u, align 16, !tbaa !14046
  store <2 x ptr> %i.y, ptr %i.t, align 16, !tbaa !14046
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.u, align 16, !tbaa !14047
  store ptr null, ptr %i.w, align 8, !tbaa !14045
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5folly9EventBase5timerEv.exit
  %i.z = call noundef i64 %i.x(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %3) #33, !inline_history !14048 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5folly9EventBase5timerEv.exit
  %i.aa = sdiv i64 %i.f, 1000000
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE17scheduleTimeoutFnINS_8FunctionIFvvEEEEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(16712) %i.s, ptr noundef nonnull %3, i64 %i.aa)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !14045 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i5, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = call noundef i64 %i.ab(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #33, !inline_history !14049 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !14045 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i6, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = call noundef i64 %i.ae(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #33, !inline_history !14049 ; 0 uses
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN5folly9EventBase12getEventBaseEv(ptr nofree noundef nonnull readnone returned align 16 captures(ret: address, provenance) dereferenceable(632) %0) unnamed_addr #6 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5folly9EventBase20getThreadIdCollectorEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(632) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !14055
  ret ptr %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN5folly9EventBase16keepAliveAcquireEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(632) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly9EventBase16keepAliveReleaseEv(ptr noundef nonnull align 16 dereferenceable(632) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.169", align 8 ; 8 uses
  %2 = alloca %"class.std::shared_ptr.169", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit, %bb.a
  %.0 = phi i64 [ %i.b, %bb.a ], [ %i.bt, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit ] ; 3 uses
  %i.d = icmp eq i64 %.0, 1
  br i1 %i.d, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.e = load atomic i32, ptr %i.c monotonic, align 16
  %i.f = invoke noundef i64 @_ZN5folly13getOSThreadIDEv()
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14056 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 320 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  invoke void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.169") align 8 %1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.n = load ptr, ptr %1, align 8, !tbaa !14057  ; 2 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !14057
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14060 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !14060
  store ptr %i.q, ptr %i.o, align 8, !tbaa !14060
  store ptr null, ptr %1, align 8, !tbaa !14057
  %i.r = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #61
          to label %.noexc.i.i.i unwind label %bb.r ; 8 uses

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.r, align 16, !tbaa !14061
  store ptr @"_ZN5folly6detail8function5call_IZNS_9EventBase16keepAliveReleaseEvE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.s, align 16, !tbaa !14047
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.t, align 8, !tbaa !14045
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.n, ptr %i.u, align 16, !tbaa !14057
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr %i.q, ptr %i.v, align 8, !tbaa !14060
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 3 uses
  store ptr null, ptr %i.w, align 16, !tbaa !14063
  %i.x = load atomic ptr, ptr %i.m monotonic, align 8 ; 4 uses
  %i.y = icmp eq ptr %i.x, inttoptr (i64 1 to ptr)
  %i.z = select i1 %i.y, ptr null, ptr %i.x
  store ptr %i.z, ptr %i.w, align 16, !tbaa !14063
  %i.aa = cmpxchg weak ptr %i.m, ptr %i.x, ptr %i.r acq_rel monotonic, align 8 ; 2 uses
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %.loopexit.i.i.i, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i

_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i: ; preds = %.noexc.i.i.i, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i
  %i.ac = phi { ptr, i1 } [ %i.ag, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i ], [ %i.aa, %.noexc.i.i.i ]
  %i.ad = extractvalue { ptr, i1 } %i.ac, 0       ; 4 uses
  %i.ae = icmp eq ptr %i.ad, inttoptr (i64 1 to ptr)
  %i.af = select i1 %i.ae, ptr null, ptr %i.ad
  store ptr %i.af, ptr %i.w, align 16, !tbaa !14063
  %i.ag = cmpxchg weak ptr %i.m, ptr %i.ad, ptr %i.r acq_rel monotonic, align 8 ; 2 uses
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %.loopexit.i.i.i, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i, !llvm.loop !14067

.loopexit.i.i.i:                                  ; preds = %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i, %.noexc.i.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.x, %.noexc.i.i.i ], [ %i.ad, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i ]
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !14060 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.aj, align 8, !tbaa !14069
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !14071
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #33, !call_target !14072, !inline_history !14076
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #33, !call_target !14077, !inline_history !14076
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13923
  %.not.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ %i.aw, %bb.j ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.k, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !14078

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #33
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %.loopexit.i.i.i
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !14060 ; 8 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i3.i.i.i, label %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase16keepAliveReleaseEvE3$_0EEEbDpOT_.exit.i", label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.az, align 8, !tbaa !14069
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !14071
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #33, !call_target !14072, !inline_history !14076
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #33, !call_target !14077, !inline_history !14076
  br label %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase16keepAliveReleaseEvE3$_0EEEbDpOT_.exit.i"

bb.n:                                             ; preds = %bb.l
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13923
  %.not.i.i.i4.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i4.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i6.i.i.i = phi i32 [ %i.bc, %bb.o ], [ %i.bm, %bb.p ]
  %i.bn = icmp eq i32 %.0.i.i.i.i6.i.i.i, 1
  br i1 %i.bn, label %bb.q, label %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase16keepAliveReleaseEvE3$_0EEEbDpOT_.exit.i", !prof !14078

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #33
  br label %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase16keepAliveReleaseEvE3$_0EEEbDpOT_.exit.i"

bb.r:                                             ; preds = %.noexc
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #33
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %.body

"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase16keepAliveReleaseEvE3$_0EEEbDpOT_.exit.i": ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i, %bb.m, %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.bp = icmp eq ptr %.0.lcssa.i.i.i.i, inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.bp, label %bb.s, label %"_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJZNS4_16keepAliveReleaseEvE3$_0EEEvDpOT_.exit"

bb.s:                                             ; preds = %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase16keepAliveReleaseEvE3$_0EEEbDpOT_.exit.i"
  invoke void @_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE8notifyFdEv(ptr noundef nonnull align 64 dereferenceable(506) %i.j)
          to label %"_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJZNS4_16keepAliveReleaseEvE3$_0EEEvDpOT_.exit" unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.b, %bb.d
  %i.bq = add i64 %.0, -1
  %i.br = cmpxchg weak ptr %i.a, i64 %.0, i64 %i.bq acq_rel monotonic, align 8 ; 2 uses
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  br i1 %i.bs, label %"_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJZNS4_16keepAliveReleaseEvE3$_0EEEvDpOT_.exit", label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit: ; preds = %bb.t
  %i.bt = extractvalue { i64, i1 } %i.br, 0
  br label %bb.b

"_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJZNS4_16keepAliveReleaseEvE3$_0EEEvDpOT_.exit": ; preds = %bb.t, %bb.s, %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase16keepAliveReleaseEvE3$_0EEEbDpOT_.exit.i"
  ret void

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bu = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.bu) #58
  unreachable
}

; Function Attrs: nounwind uwtable
define void @_ZThn16_N5folly9EventBaseD1Ev(ptr noundef initializes((-16, -8), (0, 40), (64, 65)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN5folly9EventBaseD2Ev(ptr noundef nonnull align 16 dereferenceable(632) %i.a, ptr noundef nonnull @_ZTTN5folly9EventBaseE) #33, !inline_history !13911
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn16_N5folly9EventBaseD0Ev(ptr noundef initializes((-16, -8), (0, 40), (64, 65)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN5folly9EventBaseD2Ev(ptr noundef nonnull align 16 dereferenceable(632) %i.a, ptr noundef nonnull @_ZTTN5folly9EventBaseE) #33, !inline_history !14079
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(632) %i.a, i64 noundef 640) #59, !inline_history !14080
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZTv0_n32_N5folly9EventBase3addENS_8FunctionIFvvEEE(ptr noundef %0, ptr noundef %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Function", align 16  ; 8 uses
  %i.a = load ptr, ptr %0, align 16, !tbaa !29
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %2, align 16, !tbaa !13923
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14045 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.f, align 16, !tbaa !14046
  store <2 x ptr> %i.j, ptr %i.e, align 16, !tbaa !14046
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.f, align 16, !tbaa !14047
end_hunk_0
begin_hunk_1_@_ZN5folly9EventBase18applyLoopKeepAliveEv:bb.a
  tail call void @_ZN5folly12EventHandler15detachEventBaseEv(ptr noundef nonnull align 8 dereferenceable(184) %i.cl)
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !14056 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 240
  store ptr %0, ptr %i.cn, align 16, !tbaa !14217
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 40 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 224 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 32, !tbaa !14231 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 228
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp slt i32 %i.cq, 0
  %i.cu = select i1 %i.ct, i32 %i.cs, i32 %i.cq
  tail call void @_ZN5folly12EventHandler11initHandlerEPNS_9EventBaseENS_13NetworkSocketE(ptr noundef nonnull align 8 dereferenceable(184) %i.co, ptr noundef nonnull %0, i32 %i.cu)
  %i.cv = tail call noundef zeroext i1 @_ZN5folly12EventHandler12registerImplEtb(ptr noundef nonnull align 8 dereferenceable(184) %i.co, i16 noundef zeroext 18, i1 noundef zeroext false)
  br i1 %i.cv, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE13stopConsumingEv.exit17
  %i.cw = load i32, ptr %i.cp, align 32, !tbaa !14231
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.cz = tail call noundef zeroext i1 @_ZN5folly14EventBaseEvent16setEdgeTriggeredEv(ptr noundef nonnull align 8 dereferenceable(168) %i.cy)
  %i.da = zext i1 %i.cz to i8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.db = phi i8 [ 0, %bb.y ], [ %i.da, %bb.z ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 505
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !14232
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 496 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 16, !tbaa !14233
  %i.df = add nsw i64 %i.de, 1
  store i64 %i.df, ptr %i.dd, align 16, !tbaa !14233
  tail call void @_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE8notifyFdEv(ptr noundef nonnull align 64 dereferenceable(506) %i.cm)
  br label %.sink.split

bb.ab:                                            ; preds = %_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE13stopConsumingEv.exit17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 505
  store i8 0, ptr %i.dg, align 1, !tbaa !14232
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.aa, %bb.o, %bb.n
  %.sink = phi i8 [ 0, %bb.o ], [ 0, %bb.n ], [ 1, %bb.aa ], [ 1, %bb.ab ]
  store i8 %.sink, ptr %i.l, align 8, !tbaa !14331
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly9EventBase8loopOnceEi(ptr noundef nonnull align 16 dereferenceable(632) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = or i32 %1, 1
  %i.b = tail call noundef zeroext i1 @_ZN5folly9EventBase8loopBodyEiNS0_11LoopOptionsE(ptr noundef nonnull align 16 dereferenceable(632) %0, i32 noundef %i.a, i16 0)
  ret i1 %i.b
}

declare void @_ZN5folly14TimeoutManager16clearCobTimeoutsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #32

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly9EventBase16runLoopCallbacksEv(ptr noundef nonnull align 16 dereferenceable(632) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"class.boost::intrusive::list", align 16 ; 23 uses
  %3 = alloca %"class.folly::EventBase::LoopCallbacksDeadline", align 8 ; 5 uses
  tail call void @_ZN5folly9EventBase16bumpHandlingTimeEv(ptr noundef nonnull align 16 dereferenceable(632) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14092 ; 3 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = icmp ne ptr %i.b, %i.a
  %.not15 = and i1 %.not.i, %i.c                  ; 2 uses
  br i1 %.not15, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %2, ptr %2, align 16, !tbaa !14092
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.pre26.i.i = load ptr, ptr %i.e, align 16, !tbaa !14093 ; 2 uses
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre28.i.i = load ptr, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !14093
  %.pre29.i.i = load ptr, ptr %.pre26.i.i, align 8, !tbaa !14092
  store ptr %2, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !14093
  store ptr %.pre29.i.i, ptr %2, align 16, !tbaa !14092
  store ptr %2, ptr %.pre26.i.i, align 8, !tbaa !14092
  %i.f = load ptr, ptr %2, align 16, !tbaa !14092
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !14091
  store ptr %i.f, ptr %i.a, align 8, !tbaa !14092
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !14091
  store ptr %.pre28.i.i, ptr %i.e, align 16, !tbaa !14093
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %2, ptr %i.h, align 8, !tbaa !14095
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14043 ; 2 uses
  %.not.i6 = icmp eq i64 %i.j, 0
  br i1 %.not.i6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.k = call i32 @clock_gettime(i32 noundef 6, ptr noundef nonnull %1) #33 ; 0 uses
  %i.l = load i64, ptr %1, align 8, !tbaa !14043
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14043
  %i.o = mul nsw i64 %i.l, 1000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.p = mul nsw i64 %i.j, 1000000
  %i.q = add i64 %i.n, %i.p
  %i.r = add i64 %i.q, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.i = phi i64 [ %i.r, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %3, align 8, !tbaa !14043
  invoke void @_ZN5folly9EventBase19runLoopCallbackListERN5boost9intrusive4listINS0_12LoopCallbackEJNS2_18constant_time_sizeILb0EEEEEERKNS0_21LoopCallbacksDeadlineE(ptr noundef nonnull align 16 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !14092, !noalias !14332 ; 4 uses
  %i.t = load ptr, ptr %2, align 16, !tbaa !14092 ; 7 uses
  %.not.i.i = icmp eq ptr %i.t, null
  %i.u = icmp eq ptr %i.t, %2
  %i.v = or i1 %.not.i.i, %i.u
  br i1 %i.v, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISB_Lb1EEERSC_.exit, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE3endEv.exit.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE3endEv.exit.i: ; preds = %bb.e
  %.not23.i.i = icmp eq ptr %i.s, %i.t
  %.not24.i.i = icmp eq ptr %i.s, %2
  %or.cond25.i.i = or i1 %.not24.i.i, %.not23.i.i
  br i1 %or.cond25.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISB_Lb1EEERSC_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE3endEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14093 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14093
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !14093 ; 2 uses
  store ptr %i.s, ptr %i.aa, align 8, !tbaa !14092
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !14093
  store ptr %2, ptr %i.z, align 8, !tbaa !14092
  store ptr %i.t, ptr %i.x, align 8, !tbaa !14092
  store ptr %i.x, ptr %i.y, align 8, !tbaa !14093
  %.pre = load ptr, ptr %2, align 16, !tbaa !14092, !noalias !14335
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISB_Lb1EEERSC_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISB_Lb1EEERSC_.exit: ; preds = %bb.e, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE3endEv.exit.i, %bb.f
  %i.ab = phi ptr [ %i.t, %bb.e ], [ %i.t, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE3endEv.exit.i ], [ %.pre, %bb.f ] ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !14095
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.not12.i.i.i = icmp eq ptr %i.ab, %2
  br i1 %.not12.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISB_Lb1EEERSC_.exit, %.lr.ph.i.i.i
  %.sroa.06.013.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.ab, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISB_Lb1EEERSC_.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.06.013.i.i.i, align 8, !tbaa !14092 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i, i8 0, i64 16, i1 false)
  %.not.i.i.i7 = icmp eq ptr %i.ac, %2
  br i1 %.not.i.i.i7, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !14144

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvED2Ev.exit: ; preds = %.lr.ph.i.i.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISB_Lb1EEERSC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ae = load ptr, ptr %2, align 16, !tbaa !14092, !noalias !14338 ; 2 uses
  %.not12.i.i.i8 = icmp eq ptr %i.ae, %2
  br i1 %.not12.i.i.i8, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvED2Ev.exit12, label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %bb.g, %.lr.ph.i.i.i9
  %.sroa.06.013.i.i.i10 = phi ptr [ %i.af, %.lr.ph.i.i.i9 ], [ %i.ae, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.06.013.i.i.i10, align 8, !tbaa !14092 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i10, i8 0, i64 16, i1 false)
  %.not.i.i.i11 = icmp eq ptr %i.af, %2
  br i1 %.not.i.i.i11, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvED2Ev.exit12, label %.lr.ph.i.i.i9, !llvm.loop !14144

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvED2Ev.exit12: ; preds = %.lr.ph.i.i.i9, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.ad

bb.h:                                             ; preds = %bb.a, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly9EventBase12LoopCallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvED2Ev.exit
  ret i1 %.not15
}

declare noundef zeroext i1 @_ZN5folly6detail18EventBaseLocalBase13tryDeregisterERNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 16 dereferenceable(632)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !14078

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #64
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.f, i32 256)
  %.sroa.speculated.i = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 %.sroa.speculated.i
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.l = or disjoint i64 %i.k, 1
  %i.m = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl)
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit
  %i.n = load i32, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.o = and i32 %i.n, 128
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i64 @llvm.x86.rdtsc()
  %i.q = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !7
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.t = call noundef i64 @llvm.x86.rdtsc()
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ult i64 %i.u, 4000
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !20

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #33, !srcloc !14341
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !14342

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %.lr.ph.i
  %i.z = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 128, i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !7
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread: ; preds = %bb.e, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, %bb.d, %bb.c
  %i.aa = phi i32 [ %i.n, %bb.c ], [ %.pre, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit ], [ %i.q, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %i.ac = and i32 %i.aa, -1536
  %or.cond = icmp eq i32 %i.ac, 0
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.ad = shl i32 %i.ab, 2
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ae
  %i.ag = load atomic i64, ptr %i.af monotonic, align 32
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i59 = icmp eq ptr %i.ah, null
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !14078

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !14343 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %i.am = and i32 %i.al, 255                      ; 2 uses
  store i32 %i.am, ptr %i.c, align 4, !tbaa !7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = shl nuw nsw i32 %i.aq, 2
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.as
  %i.au = load atomic i64, ptr %i.at monotonic, align 32
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %i.aw = xor i32 %i.aq, 1                        ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ay
  %i.ba = load atomic i64, ptr %i.az monotonic, align 32
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  %.pre90 = load i32, ptr %1, align 4, !tbaa !7
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %.lcssa = phi i32 [ %i.aq, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit ], [ %i.aw, %bb.i ] ; 2 uses
  store atomic i32 %.lcssa, ptr %i.g monotonic, align 4
  %.pre89 = load i32, ptr %1, align 4, !tbaa !7
  br label %bb.m

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.bc = phi i32 [ %.pre90, %.loopexit.loopexit ], [ %i.aa, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread ] ; 2 uses
  %i.bd = add i32 %i.bc, 2048
  %i.be = cmpxchg ptr %0, i32 %i.bc, i32 %i.bd seq_cst seq_cst, align 4 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.k, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %.loopexit
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  store i32 %i.bg, ptr %1, align 4
  br label %.backedge

bb.k:                                             ; preds = %.loopexit
  br i1 %i.j, label %.thread80, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 2, ptr %2, align 2, !tbaa !14280
  br label %.thread80

bb.m:                                             ; preds = %bb.f, %bb.j
  %i.bh = phi i32 [ %.pre89, %bb.j ], [ %i.aa, %bb.f ] ; 3 uses
  %.246.ph = phi i32 [ %.lcssa, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
  %i.bi = and i32 %i.bh, 512
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.n, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread

bb.n:                                             ; preds = %bb.m
  %i.bk = or disjoint i32 %i.bh, 512
  %i.bl = cmpxchg ptr %0, i32 %i.bh, i32 %i.bk seq_cst seq_cst, align 4 ; 2 uses
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = extractvalue { i32, i1 } %i.bl, 0       ; 2 uses
  store i32 %i.bn, ptr %1, align 4
  %i.bo = and i32 %i.bn, 640
  %.not52 = icmp eq i32 %i.bo, 512
  br i1 %.not52, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread, label %.backedge

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread: ; preds = %bb.n, %bb.o, %bb.m
  %i.bp = shl i32 %.246.ph, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bq ; 3 uses
  br i1 %i.j, label %bb.p, label %.thread76

bb.p:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bs = cmpxchg ptr %i.br, i64 0, i64 %i.l seq_cst seq_cst, align 8
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %.thread78, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread76:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bu = cmpxchg ptr %i.br, i64 0, i64 %i.k seq_cst seq_cst, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %bb.q, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %.thread76, %bb.p
  %i.bw = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bw, ptr %1, align 4, !tbaa !7
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, %.thread81, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, %bb.o
  br label %bb.c, !llvm.loop !14344

bb.q:                                             ; preds = %.thread76
  %i.bx = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.bx, ptr %1, align 4, !tbaa !7
  %i.by = and i32 %i.bx, 512
  %.not53 = icmp eq i32 %i.by, 0
  br i1 %.not53, label %bb.u, label %bb.r

.thread78:                                        ; preds = %bb.p
  %i.bz = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bz, ptr %1, align 4, !tbaa !7
  store atomic i32 %.246.ph, ptr %i.m monotonic, align 4
  %i.ca = load i32, ptr %1, align 4, !tbaa !7
  %i.cb = and i32 %i.ca, 512
  %.not5379 = icmp eq i32 %i.cb, 0
  br i1 %.not5379, label %.thread81, label %.thread80

bb.r:                                             ; preds = %bb.q
  store i16 3, ptr %2, align 2, !tbaa !14280
  %i.cc = trunc i32 %.246.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !14281
  br label %.thread80

.thread81:                                        ; preds = %.thread78
  %i.ce = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ce, label %.backedge, label %bb.s

bb.s:                                             ; preds = %.thread81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.cf = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cg = add i32 %i.cf, -2048                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !7
  %i.ch = icmp ugt i32 %i.cg, 2047
  %i.ci = and i32 %i.cf, 16
  %.not.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i = or i1 %i.ch, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !14282

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  %i.cj = cmpxchg ptr %i.br, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.cl = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cm = add i32 %i.cl, -2048                    ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !7
  %i.cn = icmp ugt i32 %i.cm, 2047
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !14282

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.backedge

.thread80:                                        ; preds = %.thread78, %bb.k, %bb.l, %bb.r
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @llvm.x86.rdtsc()
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !7
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i64 @llvm.x86.rdtsc()
  %i.f = sub i64 %i.e, %i.a
  %i.g = icmp ult i64 %i.f, 4000
  br i1 %i.g, label %bb.b, label %.thread, !prof !20

.thread:                                          ; preds = %.lr.ph
  %i.h = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #33, !srcloc !14341
  %i.i = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !7
  %i.j = and i32 %i.i, %2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph, !llvm.loop !14342

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %.2 = phi i1 [ %i.h, %.thread ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.2
}
end_hunk_1
begin_hunk_2_@_ZN5folly9EventBase11loopForeverEv:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  call void @_ZN5folly21ExecutorBlockingGuardC1ENS0_8TrackTagEPNS_8ExecutorENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.f, ptr %i.h, ptr %i.k) #33
  %i.l = invoke noundef zeroext i1 @_ZN5folly9EventBase8loopBodyEiNS0_11LoopOptionsE(ptr noundef nonnull align 16 dereferenceable(632) %0, i32 noundef 0, i16 0)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly21ExecutorBlockingGuardD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase11loopForeverEvE3$_0Lb1EED2Ev"(i8 0, ptr nonnull %0) #33
  resume { ptr, i32 } %i.m

bb.b:                                             ; preds = %bb.a
  call void @_ZN5folly21ExecutorBlockingGuardD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.n = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  invoke void @_ZN5folly9EventBase18applyLoopKeepAliveEv(ptr noundef nonnull align 16 dereferenceable(632) %0)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase11loopForeverEvE3$_0Lb1EED2Ev.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #58
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase11loopForeverEvE3$_0Lb1EED2Ev.exit": ; preds = %bb.b
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %"_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase11loopForeverEvE3$_0Lb1EED2Ev.exit"
  call void @_ZN5folly16throwSystemErrorIJRA34_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(34) @.str.77) #62
  unreachable

bb.e:                                             ; preds = %"_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase11loopForeverEvE3$_0Lb1EED2Ev.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase11loopForeverEvE3$_0Lb1EED2Ev"(i8 %.0.val, ptr %.8.val) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %.0.val to i1
  br i1 %i.a, label %"_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase11loopForeverEvE3$_0Lb1EE7executeEv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 272
  %i.c = atomicrmw sub ptr %i.b, i64 1 monotonic, align 8 ; 0 uses
  invoke void @_ZN5folly9EventBase18applyLoopKeepAliveEv(ptr noundef nonnull align 16 dereferenceable(632) %.8.val)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase11loopForeverEvE3$_0Lb1EE7executeEv.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #58
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_9EventBase11loopForeverEvE3$_0Lb1EE7executeEv.exit": ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRA34_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(34) %0) local_unnamed_addr #46 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  tail call void @_ZN5folly24throwSystemErrorExplicitEiPKc(i32 noundef %i.b, ptr noundef nonnull %0) #62
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitEiPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #55 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #60
  call void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 %0, ptr nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly9EventBase17terminateLoopSoonEv(ptr noundef nonnull align 16 dereferenceable(632) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.169", align 8 ; 8 uses
  %2 = alloca %"class.std::shared_ptr.169", align 8 ; 6 uses
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 16, !tbaa !14044, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.critedge, !prof !14078

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 836)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.81, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.82, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #58
  unreachable

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #58
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.h = load ptr, ptr @_ZZN5folly9EventBase17terminateLoopSoonEvE8vlocal__, align 8, !tbaa !14037 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.j = tail call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly9EventBase17terminateLoopSoonEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str, i32 noundef 5)
  br i1 %i.j, label %bb.g, label %.critedge21

bb.f:                                             ; preds = %.critedge
  %i.k = load i32, ptr %i.h, align 4, !tbaa !7
  %i.l = icmp sgt i32 %i.k, 4
  br i1 %i.l, label %bb.g, label %.critedge21

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str, i32 noundef 839)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.h unwind label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.83, i64 noundef 50)
          to label %.critedge20 unwind label %bb.x ; 0 uses

.critedge20:                                      ; preds = %bb.h
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.critedge21

.critedge21:                                      ; preds = %bb.e, %bb.f, %.critedge20
  %i.o = load ptr, ptr %0, align 16, !tbaa !29, !noalias !14532
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8, !noalias !14532
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29, !noalias !14532
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !noalias !14532
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #33, !noalias !14532, !call_target !14535, !inline_history !14539 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  store atomic i8 1, ptr %i.w monotonic, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14056 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 320 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  invoke void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.169") align 8 %1)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %.critedge21
  %i.ac = load ptr, ptr %1, align 8, !tbaa !14057 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !14057
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14060 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !14060
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !14060
  store ptr null, ptr %1, align 8, !tbaa !14057
  %i.ag = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #61
          to label %.noexc.i.i.i unwind label %bb.u ; 8 uses

.noexc.i.i.i:                                     ; preds = %.noexc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.ag, align 16, !tbaa !13923
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store ptr @"_ZN5folly6detail8function5call_IZNS_9EventBase17terminateLoopSoonEvE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.ah, align 16, !tbaa !14047
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.ai, align 8, !tbaa !14045
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store ptr %i.ac, ptr %i.aj, align 16, !tbaa !14057
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr %i.af, ptr %i.ak, align 8, !tbaa !14060
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 3 uses
  store ptr null, ptr %i.al, align 16, !tbaa !14063
  %i.am = load atomic ptr, ptr %i.ab monotonic, align 8 ; 4 uses
  %i.an = icmp eq ptr %i.am, inttoptr (i64 1 to ptr)
  %i.ao = select i1 %i.an, ptr null, ptr %i.am
  store ptr %i.ao, ptr %i.al, align 16, !tbaa !14063
  %i.ap = cmpxchg weak ptr %i.ab, ptr %i.am, ptr %i.ag acq_rel monotonic, align 8 ; 2 uses
  %i.aq = extractvalue { ptr, i1 } %i.ap, 1
  br i1 %i.aq, label %.loopexit.i.i.i, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i

_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i: ; preds = %.noexc.i.i.i, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i
  %i.ar = phi { ptr, i1 } [ %i.av, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i ], [ %i.ap, %.noexc.i.i.i ]
  %i.as = extractvalue { ptr, i1 } %i.ar, 0       ; 4 uses
  %i.at = icmp eq ptr %i.as, inttoptr (i64 1 to ptr)
  %i.au = select i1 %i.at, ptr null, ptr %i.as
  store ptr %i.au, ptr %i.al, align 16, !tbaa !14063
  %i.av = cmpxchg weak ptr %i.ab, ptr %i.as, ptr %i.ag acq_rel monotonic, align 8 ; 2 uses
  %i.aw = extractvalue { ptr, i1 } %i.av, 1
  br i1 %i.aw, label %.loopexit.i.i.i, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i, !llvm.loop !14540

.loopexit.i.i.i:                                  ; preds = %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i, %.noexc.i.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.am, %.noexc.i.i.i ], [ %i.as, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i.i.i.i ]
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !14060 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ay, align 8, !tbaa !14069
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !14071
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #33, !call_target !14072, !inline_history !14541
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #33, !call_target !14077, !inline_history !14541
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13923
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.l ], [ %i.bl, %bb.m ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !14078

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #33
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %.loopexit.i.i.i
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !14060 ; 8 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i3.i.i.i, label %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase17terminateLoopSoonEvE3$_0EEEbDpOT_.exit.i", label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bo, align 8, !tbaa !14069
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !14071
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #33, !call_target !14072, !inline_history !14541
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #33, !call_target !14077, !inline_history !14541
  br label %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase17terminateLoopSoonEvE3$_0EEEbDpOT_.exit.i"

bb.q:                                             ; preds = %bb.o
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13923
  %.not.i.i.i4.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i4.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i6.i.i.i = phi i32 [ %i.br, %bb.r ], [ %i.cb, %bb.s ]
  %i.cc = icmp eq i32 %.0.i.i.i.i6.i.i.i, 1
  br i1 %i.cc, label %bb.t, label %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase17terminateLoopSoonEvE3$_0EEEbDpOT_.exit.i", !prof !14078

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #33
  br label %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase17terminateLoopSoonEvE3$_0EEEbDpOT_.exit.i"

bb.u:                                             ; preds = %.noexc
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #33
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %.body

"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase17terminateLoopSoonEvE3$_0EEEbDpOT_.exit.i": ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5.i.i.i, %bb.p, %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ce = icmp eq ptr %.0.lcssa.i.i.i.i, inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.ce, label %bb.v, label %"_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJZNS4_17terminateLoopSoonEvE3$_0EEEvDpOT_.exit"

bb.v:                                             ; preds = %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase17terminateLoopSoonEvE3$_0EEEbDpOT_.exit.i"
  invoke void @_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE8notifyFdEv(ptr noundef nonnull align 64 dereferenceable(506) %i.y)
          to label %"_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJZNS4_17terminateLoopSoonEvE3$_0EEEvDpOT_.exit" unwind label %bb.y

"_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJZNS4_17terminateLoopSoonEvE3$_0EEEvDpOT_.exit": ; preds = %bb.v, %"_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE4pushIJZNS_9EventBase17terminateLoopSoonEvE3$_0EEEbDpOT_.exit.i"
  br i1 %i.v, label %bb.w, label %_ZN5folly17ExecutorKeepAliveINS_9EventBaseEED2Ev.exit

bb.w:                                             ; preds = %"_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJZNS4_17terminateLoopSoonEvE3$_0EEEvDpOT_.exit"
  %i.cf = load ptr, ptr %0, align 16, !tbaa !29
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %0, i64 %i.ch ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !29
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci) #33, !call_target !14542, !inline_history !14545
  br label %_ZN5folly17ExecutorKeepAliveINS_9EventBaseEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_9EventBaseEED2Ev.exit: ; preds = %"_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJZNS4_17terminateLoopSoonEvE3$_0EEEvDpOT_.exit", %bb.w
  ret void

bb.x:                                             ; preds = %bb.h, %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %_ZN5folly17ExecutorKeepAliveINS_9EventBaseEED2Ev.exit26

bb.y:                                             ; preds = %bb.v, %.critedge21
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.y ], [ %i.cd, %bb.u ] ; 2 uses
  br i1 %i.v, label %bb.z, label %_ZN5folly17ExecutorKeepAliveINS_9EventBaseEED2Ev.exit26

bb.z:                                             ; preds = %.body
  %i.co = load ptr, ptr %0, align 16, !tbaa !29
  %i.cp = getelementptr i8, ptr %i.co, i64 -24
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #33, !call_target !14542, !inline_history !14545
  br label %_ZN5folly17ExecutorKeepAliveINS_9EventBaseEED2Ev.exit26

_ZN5folly17ExecutorKeepAliveINS_9EventBaseEED2Ev.exit26: ; preds = %bb.z, %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.x ], [ %eh.lpad-body, %bb.z ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_9EventBase17terminateLoopSoonEvE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr nofree nonnull readnone align 16 captures(none) %0) #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly9EventBase9runInLoopENS_8FunctionIFvvEEEb(ptr noundef nonnull align 16 dereferenceable(632) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.169", align 16 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #61 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly9EventBase20FunctionLoopCallbackE, i64 16), ptr %i.a, align 16, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5folly9EventBase13runBeforeLoopEPNS0_12LoopCallbackE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14060 ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !14060
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !14069
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !14071
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #33, !call_target !14072, !inline_history !14528
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #33, !call_target !14077, !inline_history !14528
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13923
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i, !prof !14078

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #33
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14092 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN5folly9EventBase12LoopCallback18cancelLoopCallbackEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14093 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !14092
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !14093
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN5folly9EventBase12LoopCallback18cancelLoopCallbackEv.exit

_ZN5folly9EventBase12LoopCallback18cancelLoopCallbackEv.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !14093 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !14093
  store ptr %i.x, ptr %i.s, align 8, !tbaa !14092
  store ptr %i.s, ptr %i.y, align 16, !tbaa !14093
  store ptr %i.s, ptr %i.z, align 8, !tbaa !14092
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly9EventBase12runAfterLoopEPNS0_12LoopCallbackE(ptr noundef nonnull align 16 dereferenceable(632) %0, ptr noundef initializes((24, 32)) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.a, align 8, !tbaa !14304
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14060 ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !14060
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !14069
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !14071
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #33, !call_target !14072, !inline_history !14528
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #33, !call_target !14077, !inline_history !14528
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13923
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i, !prof !14078

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #33
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14092 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN5folly9EventBase12LoopCallback18cancelLoopCallbackEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14093 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !14092
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !14093
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN5folly9EventBase12LoopCallback18cancelLoopCallbackEv.exit

_ZN5folly9EventBase12LoopCallback18cancelLoopCallbackEv.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !14093 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !14093
  store ptr %i.x, ptr %i.s, align 8, !tbaa !14092
  store ptr %i.s, ptr %i.y, align 16, !tbaa !14093
  store ptr %i.s, ptr %i.z, align 8, !tbaa !14092
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE11AtomicQueue4pushIJS3_EEEbDpOT_(ptr noundef nonnull align 64 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.169", align 8 ; 8 uses
  %3 = alloca %"class.std::shared_ptr.169", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.169") align 8 %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !14057  ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !14057
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14060 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !14060
  store ptr %i.d, ptr %i.b, align 8, !tbaa !14060
  store ptr null, ptr %2, align 8, !tbaa !14057
  %i.e = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #61
          to label %.noexc unwind label %bb.o     ; 8 uses

.noexc:                                           ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.e, align 16, !tbaa !13923
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14045 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.g, align 16, !tbaa !14046
  store <2 x ptr> %i.j, ptr %i.f, align 16, !tbaa !14046
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.g, align 16, !tbaa !14047
  store ptr null, ptr %i.h, align 8, !tbaa !14045
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.k = call noundef i64 %i.i(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(88) %i.e) #33, !inline_history !14619 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.b, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.a, ptr %i.l, align 16, !tbaa !14057
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.d, ptr %i.m, align 8, !tbaa !14060
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 3 uses
  store ptr null, ptr %i.n, align 16, !tbaa !14063
  %i.o = load atomic ptr, ptr %0 monotonic, align 64 ; 4 uses
  %i.p = icmp eq ptr %i.o, inttoptr (i64 1 to ptr)
  %i.q = select i1 %i.p, ptr null, ptr %i.o
  store ptr %i.q, ptr %i.n, align 16, !tbaa !14063
  %i.r = cmpxchg weak ptr %0, ptr %i.o, ptr %i.e acq_rel monotonic, align 8 ; 2 uses
  %i.s = extractvalue { ptr, i1 } %i.r, 1
  br i1 %i.s, label %.loopexit, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i

_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i
  %i.t = phi { ptr, i1 } [ %i.x, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i ], [ %i.r, %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ]
  %i.u = extractvalue { ptr, i1 } %i.t, 0         ; 4 uses
  %i.v = icmp eq ptr %i.u, inttoptr (i64 1 to ptr)
  %i.w = select i1 %i.v, ptr null, ptr %i.u
  store ptr %i.w, ptr %i.n, align 16, !tbaa !14063
  %i.x = cmpxchg weak ptr %0, ptr %i.u, ptr %i.e acq_rel monotonic, align 8 ; 2 uses
  %i.y = extractvalue { ptr, i1 } %i.x, 1
  br i1 %i.y, label %.loopexit, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i, !llvm.loop !14620

.loopexit:                                        ; preds = %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i, %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.lcssa.i = phi ptr [ %i.o, %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ %i.u, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueINS0_8FunctionIFvvEEEE4NodeEE21compare_exchange_weakERS7_S7_St12memory_orderSA_.exit.i ]
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !14060 ; 8 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.aa, align 8, !tbaa !14069
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !14071
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #33, !call_target !14072, !inline_history !14393
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #33, !call_target !14077, !inline_history !14393
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13923
  %.not.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.f ], [ %i.an, %bb.g ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.h, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14078

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #33
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !14060 ; 8 uses
  %.not.i.i3 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i3, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aq, align 8, !tbaa !14069
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !14071
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #33, !call_target !14072, !inline_history !14393
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #33, !call_target !14077, !inline_history !14393
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7

bb.k:                                             ; preds = %bb.i
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13923
  %.not.i.i.i4 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.m:                                             ; preds = %bb.k
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i6 = phi i32 [ %i.at, %bb.l ], [ %i.bd, %bb.m ]
  %i.be = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.be, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7, !prof !14078

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #33
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.n
  %i.bf = icmp eq ptr %.0.lcssa.i, inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i1 %i.bf

bb.o:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #33
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly9EventBase33runInEventBaseThreadAlwaysEnqueueENS_8FunctionIFvvEEE(ptr noundef nonnull align 16 dereferenceable(632) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14045
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 947, i32 noundef 2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.51, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %0)
          to label %_ZNSolsEPKv.exit unwind label %bb.g

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.84, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZNSolsEPKv.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJS3_EEEvDpOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14056 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.l = invoke noundef zeroext i1 @_ZN5folly23AtomicNotificationQueueINS_8FunctionIFvvEEEE11AtomicQueue4pushIJS3_EEEbDpOT_(ptr noundef nonnull align 64 dereferenceable(8) %i.k, ptr noundef nonnull align 16 dereferenceable(64) %1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  br i1 %i.l, label %bb.f, label %_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJS3_EEEvDpOT_.exit

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE8notifyFdEv(ptr noundef nonnull align 64 dereferenceable(506) %i.h)
          to label %_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJS3_EEEvDpOT_.exit unwind label %bb.g

_ZN5folly32EventBaseAtomicNotificationQueueINS_8FunctionIFvvEEENS_9EventBase10FuncRunnerEE10putMessageIJS3_EEEvDpOT_.exit: ; preds = %.noexc, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #58
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly9EventBase27runInEventBaseThreadAndWaitENS_8FunctionIFvvEEE(ptr noundef nonnull align 16 dereferenceable(632) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %4 = alloca %"class.folly::Baton", align 4      ; 6 uses
  %5 = alloca %"class.folly::Function", align 16  ; 5 uses
end_hunk_3
