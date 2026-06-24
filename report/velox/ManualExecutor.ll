inline.NumInlined: 695
inline.NumDeleted: 321
begin_hunk_0_@_ZN5folly14ManualExecutor4stepEv:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1577
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef 512) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1539
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !1544
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1541 ; 3 uses
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !1549
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  store ptr %i.au, ptr %i.af, align 32, !tbaa !1547
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE16_M_pop_front_auxEv.exit.i.i, %_ZSt10destroy_atIN5folly8FunctionIFvvEEEEvPT_.exit.i.i
  %storemerge.i.i = phi ptr [ %i.am, %_ZSt10destroy_atIN5folly8FunctionIFvvEEEEvPT_.exit.i.i ], [ %i.at, %_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EE16_M_pop_front_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.f, align 16, !tbaa !1573
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #24 ; 0 uses
  %i.aw = load ptr, ptr %i.a, align 16, !tbaa !23
  invoke void %i.aw(ptr noundef nonnull align 16 dereferenceable(48) %1)
          to label %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit unwind label %bb.p, !inline_history !1578

bb.p:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit.thread: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ay = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #24 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit: ; preds = %bb.o
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %.not.i.i15 = icmp eq ptr %.pre, null
  br i1 %.not.i.i15, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit
  %i.az = call noundef i64 %.pre(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef null) #24, !inline_history !1510 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit.thread, %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit, %bb.q
  %.1833 = phi i64 [ 0, %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit.thread ], [ 1, %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i64 %.1833

bb.r:                                             ; preds = %bb.c, %bb.p
  %.pn10 = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.j, %bb.c ]
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i17, label %_ZN5folly8FunctionIFvvEED2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = call noundef i64 %i.ba(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef null) #24, !inline_history !1510 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit19

_ZN5folly8FunctionIFvvEED2Ev.exit19:              ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14ManualExecutor4waitEv(ptr noundef nonnull align 64 dereferenceable(304) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i2, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.lr.ph, label %._crit_edge

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.lr.ph:    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.k, %bb.b ]
  call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.lr.ph, %bb.b
  %i.f = load ptr, ptr %i.c, align 16, !tbaa !1511
  %i.g = load ptr, ptr %i.d, align 16, !tbaa !1511
  %i.h = icmp eq ptr %i.f, %i.g
  %i.i = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i64 9223372036854775807, ptr %1, align 8
  %i.j = call noundef zeroext i1 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E14try_wait_untilINSt6chrono3_V212steady_clockENS7_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS7_10time_pointIT_T0_EE(ptr noundef nonnull align 64 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.k = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %._crit_edge, !llvm.loop !1512

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E14try_wait_untilINSt6chrono3_V212steady_clockENS7_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS7_10time_pointIT_T0_EE(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 11 uses
  %4 = alloca %"class.folly::WaitOptions", align 8 ; 6 uses
  %5 = alloca %"class.folly::WaitOptions", align 8 ; 5 uses
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i.backedge, %bb.a
  %i.b = load atomic i64, ptr %0 acquire, align 64 ; 5 uses
  %i.c = and i64 %i.b, 17179869184
  %.not49.us.i.i = icmp eq i64 %i.c, 0
  br i1 %.not49.us.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.d = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %.split.us.i.i.backedge

bb.c:                                             ; preds = %.split.us.i.i
  %i.e = and i64 %i.b, 4294967296
  %.not50.us.i.i = icmp eq i64 %i.e, 0
  %i.f = and i64 %i.b, 4294967295
  %.not.us.i.i = icmp ne i64 %i.f, 0
  %or.cond.not.i = and i1 %.not50.us.i.i, %.not.us.i.i
  br i1 %or.cond.not.i, label %bb.d, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %i.b, 34359738367
  %i.h = cmpxchg ptr %0, i64 %i.b, i64 %i.g seq_cst seq_cst, align 8
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit.thread, label %.split.us.i.i.backedge

.split.us.i.i.backedge:                           ; preds = %bb.d, %bb.b
  br label %.split.us.i.i, !llvm.loop !1568

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %i.j = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8, !noalias !1590 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i, !prof !1550

bb.e:                                             ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit
  %i.k = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !noalias !1590
  br label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i

_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i: ; preds = %bb.e, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.j, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit ]
  %i.m = tail call noundef i32 @_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10allocIndexIJEEEjDpOT_(ptr noundef nonnull align 64 dereferenceable(2184) %i.l), !noalias !1590 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i
  %i.n = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8, !noalias !1590 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i, !prof !1550

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !noalias !1590
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i: ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.o, %bb.g ], [ %i.n, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 64, !tbaa !1551, !noalias !1590
  %i.s = zext i32 %i.m to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store atomic i32 0, ptr %i.u monotonic, align 4, !noalias !1590
  store i32 0, ptr %i.t, align 4, !tbaa !1563, !noalias !1590
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit: ; preds = %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i
  %storemerge.i = phi ptr [ %i.t, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i ], [ null, %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i ] ; 2 uses
  store ptr %storemerge.i, ptr %3, align 8, !tbaa !1593, !alias.scope !1590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 1, ptr %i.a, align 4, !tbaa !7
  %i.v = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i19, label %bb.h, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i, !prof !1550

bb.h:                                             ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit
  %i.w = invoke noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
          to label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i unwind label %bb.k

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i: ; preds = %bb.h, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit
  %i.x = phi ptr [ %i.v, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit ], [ %i.w, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 64, !tbaa !1551
  %i.aa = ptrtoint ptr %storemerge.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = trunc i64 %i.ad to i32
  %i.af = invoke noundef i32 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E10decrOrPushERjj(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ae)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  switch i32 %i.af, label %._crit_edge [
    i32 2, label %bb.j
    i32 0, label %bb.m
  ], !prof !1595

._crit_edge:                                      ; preds = %bb.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !1593
  br label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.3)
          to label %.invoke unwind label %bb.l

bb.k:                                             ; preds = %.invoke, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i, %bb.h, %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #24
  br label %bb.w

bb.m:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %3, align 8, !tbaa !1593  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 2000, ptr %4, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %.sroa.24.0..sroa_idx, align 8
  %i.ak = load atomic i32, ptr %i.aj acquire, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit.thread, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit, !prof !1559

_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit.thread: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.r

_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit: ; preds = %bb.m
  %i.am = call noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 4 dereferenceable(4) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.am, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit
  %i.an = load ptr, ptr %3, align 8, !tbaa !1593
  %i.ao = invoke noundef zeroext i1 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E13tryRemoveNodeERKNS0_11LifoSemNodeIS4_S3_EE(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.an)
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  %.pre29 = load ptr, ptr %3, align 8, !tbaa !1593 ; 3 uses
  br i1 %i.ao, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i64 2000, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 1, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i64 9223372036854775807, ptr %2, align 8
  %i.ap = load atomic i32, ptr %.pre29 acquire, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit, label %bb.q, !prof !1559

bb.q:                                             ; preds = %bb.p
  %i.ar = call noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 4 dereferenceable(4) %.pre29, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(9) %5) #24 ; 0 uses
  br label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit

_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.r

bb.r:                                             ; preds = %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit.thread, %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit, %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit
  %i.as = load ptr, ptr %3, align 8, !tbaa !1593  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.s, label %.thread, !prof !1550

bb.s:                                             ; preds = %bb.r
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.4)
          to label %.invoke unwind label %bb.t

.invoke:                                          ; preds = %bb.s, %bb.j
  %.sink = phi ptr [ %i.ag, %bb.j ], [ %i.aw, %bb.s ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly16ShutdownSemErrorE, i64 16), ptr %.sink, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %.sink, ptr nonnull @_ZTIN5folly16ShutdownSemErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aw) #24
  br label %bb.w

bb.u:                                             ; preds = %._crit_edge, %bb.o
  %6 = phi ptr [ %.pre29, %bb.o ], [ %.pre, %._crit_edge ] ; 2 uses
  %.0 = phi i1 [ false, %bb.o ], [ true, %._crit_edge ] ; 2 uses
  %.not.i24 = icmp eq ptr %6, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit, label %.thread

.thread:                                          ; preds = %bb.r, %bb.u
  %.037 = phi i1 [ %.0, %bb.u ], [ true, %bb.r ]
  %i.ay = phi ptr [ %6, %bb.u ], [ %i.as, %bb.r ]
  invoke void @_ZNK5folly6detail19LifoSemNodeRecyclerINS_19SaturatingSemaphoreILb1ESt6atomicEES3_EclEPNS0_11LifoSemNodeIS4_S3_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ay)
          to label %_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit: ; preds = %bb.u, %.thread
  %.038 = phi i1 [ %.0, %bb.u ], [ %.037, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit.thread

bb.w:                                             ; preds = %bb.t, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.ax, %bb.t ]
  call void @_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit.thread: ; preds = %bb.d, %_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit
  %.1 = phi i1 [ %.038, %_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit ], [ true, %bb.d ]
  ret i1 %.1
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E13tryRemoveNodeERKNS0_11LifoSemNodeIS4_S3_EE(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit, !prof !1550

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 64, !tbaa !1551
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = load atomic i64, ptr %0 acquire, align 64
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit
  %.sroa.0.0 = phi i64 [ %i.k, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit ], [ %.sroa.0.0.be, %.backedge.backedge ] ; 10 uses
  %i.l = and i64 %.sroa.0.0, 17179869184
  %.not40 = icmp eq i64 %i.l, 0
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.backedge
  %i.m = tail call noundef i32 @sched_yield() #24 ; 0 uses
  %i.n = load atomic i64, ptr %0 acquire, align 64
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.c, %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE21compare_exchange_weakERS2_S2_St12memory_orderS6_.exit
  %.sroa.0.0.be = phi i64 [ %i.n, %bb.c ], [ %.0.i, %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE21compare_exchange_weakERS2_S2_St12memory_orderS6_.exit ]
  br label %.backedge, !llvm.loop !1596

bb.d:                                             ; preds = %.backedge
  %i.o = and i64 %.sroa.0.0, 4294967296
  %.not41 = icmp eq i64 %i.o, 0
  br i1 %.not41, label %.loopexit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = or disjoint i64 %.sroa.0.0, 17179869184
  %i.q = cmpxchg weak ptr %0, i64 %.sroa.0.0, i64 %i.p acquire monotonic, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.f, label %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE21compare_exchange_weakERS2_S2_St12memory_orderS6_.exit

_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE21compare_exchange_weakERS2_S2_St12memory_orderS6_.exit: ; preds = %bb.e
  %.0.i = extractvalue { i64, i1 } %i.q, 0
  br label %.backedge.backedge

bb.f:                                             ; preds = %bb.e
  %i.s = trunc i64 %.sroa.0.0 to i32              ; 2 uses
  %i.t = icmp eq i32 %i.s, %i.j
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load atomic i32, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = and i64 %.sroa.0.0, -25769803776
  %i.y = add i64 %i.x, 34359738368
  br label %.loopexit42.sink.split

bb.i:                                             ; preds = %bb.g
  %i.z = and i64 %.sroa.0.0, -21474836480
  %i.aa = add i64 %i.z, 34359738368
  %i.ab = zext i32 %i.v to i64
  %i.ac = or disjoint i64 %i.aa, %i.ab
  br label %.loopexit42.sink.split

bb.j:                                             ; preds = %bb.f
  %i.ad = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i24, label %bb.k, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit, !prof !1550

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit: ; preds = %bb.j, %bb.k
  %i.af = phi ptr [ %i.ae, %bb.k ], [ %i.ad, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 64, !tbaa !1551
  %i.ai = and i64 %.sroa.0.0, 4294967295          ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4 ; 3 uses
  %.not47.not = icmp eq i32 %i.al, 0
  br i1 %.not47.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit
  %i.am = icmp eq i32 %i.al, %i.j
  br i1 %i.am, label %.lr.ph._crit_edge, label %.lr.ph65

.lr.ph:                                           ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit26
  %i.an = icmp eq i32 %i.az, %i.j
  br i1 %i.an, label %.lr.ph._crit_edge, label %.lr.ph65, !llvm.loop !1597

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.01949.lcssa = phi ptr [ %i.aj, %.lr.ph.preheader ], [ %i.ax, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.01949.lcssa, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 8
  store atomic i32 %i.aq, ptr %i.ao monotonic, align 4
  br label %.loopexit

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0204864 = phi i32 [ %i.az, %.lr.ph ], [ %i.al, %.lr.ph.preheader ]
  %i.ar = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i25, label %bb.l, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit26, !prof !1550

bb.l:                                             ; preds = %.lr.ph65
  %i.as = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit26

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit26: ; preds = %.lr.ph65, %bb.l
  %i.at = phi ptr [ %i.as, %bb.l ], [ %i.ar, %.lr.ph65 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 64, !tbaa !1551
  %i.aw = zext i32 %.0204864 to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4 ; 3 uses
  %.not.not = icmp eq i32 %i.az, 0
  br i1 %.not.not, label %.loopexit, label %.lr.ph, !llvm.loop !1597

.loopexit:                                        ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit26, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit, %.lr.ph._crit_edge
  %.not44 = phi i1 [ true, %.lr.ph._crit_edge ], [ false, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit ], [ false, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit26 ] ; 2 uses
  %i.ba = icmp eq i32 %i.s, 0
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.bb = and i64 %.sroa.0.0, -25769803776
  %i.bc = add i64 %i.bb, 34359738368
  br label %.loopexit42.sink.split

bb.n:                                             ; preds = %.loopexit
  %i.bd = and i64 %.sroa.0.0, -21474836480
  %i.be = add i64 %i.bd, 34359738368
  %i.bf = or disjoint i64 %i.be, %i.ai
  br label %.loopexit42.sink.split

.loopexit42.sink.split:                           ; preds = %bb.n, %bb.m, %bb.i, %bb.h
  %.sroa.0.0.i.i.sink = phi i64 [ %i.ac, %bb.i ], [ %i.y, %bb.h ], [ %i.bc, %bb.m ], [ %i.bf, %bb.n ]
  %.1.ph = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ %.not44, %bb.m ], [ %.not44, %bb.n ]
  store atomic i64 %.sroa.0.0.i.i.sink, ptr %0 release, align 64
  br label %.loopexit42

.loopexit42:                                      ; preds = %bb.d, %.loopexit42.sink.split
  %.1 = phi i1 [ %.1.ph, %.loopexit42.sink.split ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1593   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK5folly6detail19LifoSemNodeRecyclerINS_19SaturatingSemaphoreILb1ESt6atomicEES3_EclEPNS0_11LifoSemNodeIS4_S3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10allocIndexIJEEEjDpOT_(ptr noundef nonnull align 64 dereferenceable(2184) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit, !prof !1550

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.d = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.e = call noundef i32 %i.d(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null), !inline_history !1598 ; 0 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7
  %i.g = and i32 %i.f, 255                        ; 2 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 8192), i64 %i.h
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = zext i8 %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.k ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  br label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10globalPushERNS7_4SlotEj.exit.i

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10globalPushERNS7_4SlotEj.exit.i: ; preds = %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10globalPushERNS7_4SlotEj.exit.i.backedge, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit
  %i.p = load atomic i64, ptr %i.m acquire, align 64 ; 5 uses
  %.sroa.049.0.extract.trunc.i = trunc i64 %i.p to i32 ; 2 uses
  %.sroa.9.0.extract.shift.i = and i64 %i.p, -4294967296 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.049.0.extract.trunc.i, 0
  br i1 %.not.i, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10globalPushERNS7_4SlotEj.exit.i
  %i.q = load ptr, ptr %i.n, align 64, !tbaa !1551
  %i.r = and i64 %i.p, 4294967295
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %.sroa.2.0.insert.shift.i29.i = add i64 %.sroa.9.0.extract.shift.i, 1095216660480
  %.sroa.0.0.insert.ext.i30.i = zext i32 %i.u to i64
  %.sroa.0.0.insert.insert.i31.i = or disjoint i64 %.sroa.2.0.insert.shift.i29.i, %.sroa.0.0.insert.ext.i30.i
  %i.v = cmpxchg ptr %i.m, i64 %i.p, i64 %.sroa.0.0.insert.insert.i31.i seq_cst seq_cst, align 8
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9.loopexit, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10globalPushERNS7_4SlotEj.exit.i.backedge

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10globalPushERNS7_4SlotEj.exit.i.backedge: ; preds = %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i, %bb.c
  br label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10globalPushERNS7_4SlotEj.exit.i

.preheader.i:                                     ; preds = %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10globalPushERNS7_4SlotEj.exit.i, %bb.d
  %i.x = load atomic i64, ptr %i.o acquire, align 64 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.x to i32 ; 2 uses
  %i.y = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, 0
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.z = load ptr, ptr %i.n, align 64, !tbaa !1551
  %i.aa = and i64 %i.x, 4294967295                ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = and i64 %i.x, -4294967296
  %.sroa.2.0.insert.shift.i.i.i = add i64 %i.ae, 1099511627776
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ad to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.af = cmpxchg ptr %i.o, i64 %i.x, i64 %.sroa.0.0.insert.insert.i.i.i seq_cst seq_cst, align 8
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9globalPopEv.exit.i, label %.preheader.i

bb.e:                                             ; preds = %.preheader.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1562
  %.not27.i = icmp ult i32 %i.ai, %i.ak
  br i1 %.not27.i, label %bb.f, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.al = atomicrmw add ptr %i.ah, i32 1 seq_cst, align 4
  %i.am = add i32 %i.al, 1                        ; 4 uses
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !1562
  %i.ao = icmp ugt i32 %i.am, %i.an
  br i1 %i.ao, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9globalPopEv.exit.i: ; preds = %bb.d
  %i.ap = load ptr, ptr %i.n, align 64, !tbaa !1551
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.aa ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load atomic i32, ptr %i.ar monotonic, align 4
  %i.at = and i64 %i.p, -1099511627776
  %.sroa.2.0.insert.ext.i36.i = add i64 %i.at, 1958505086976
  %.sroa.0.0.insert.ext.i38.i = zext i32 %i.as to i64
  %.sroa.0.0.insert.insert.i39.i = or disjoint i64 %.sroa.2.0.insert.ext.i36.i, %.sroa.0.0.insert.ext.i38.i
  %i.au = cmpxchg ptr %i.m, i64 %.sroa.9.0.extract.shift.i, i64 %.sroa.0.0.insert.insert.i39.i seq_cst seq_cst, align 8
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9globalPopEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %invariant.op.i.i = or disjoint i64 %i.aa, 1099511627776
  br label %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i

_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i: ; preds = %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i, %bb.g
  %i.ax = load atomic i64, ptr %i.o acquire, align 64 ; 3 uses
  %.sroa.0.0.extract.trunc.i41.i = trunc i64 %i.ax to i32
  store atomic i32 %.sroa.0.0.extract.trunc.i41.i, ptr %i.aw monotonic, align 4
  %i.ay = and i64 %i.ax, -4294967296
  %.sroa.0.0.insert.insert.i.reass.i.i = add i64 %invariant.op.i.i, %i.ay
  %i.az = cmpxchg ptr %i.o, i64 %i.ax, i64 %.sroa.0.0.insert.insert.i.reass.i.i seq_cst seq_cst, align 8
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10globalPushERNS7_4SlotEj.exit.i.backedge, label %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit: ; preds = %bb.f
  %i.bb = load ptr, ptr %i.n, align 64, !tbaa !1551
  %i.bc = zext i32 %i.am to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.bc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9.loopexit: ; preds = %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9globalPopEv.exit.i, %bb.c
  %.4.ph.i12.ph = phi i32 [ %.sroa.049.0.extract.trunc.i, %bb.c ], [ %.sroa.0.0.extract.trunc.i.i, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9globalPopEv.exit.i ] ; 2 uses
  %.pre = zext i32 %.4.ph.i12.ph to i64
  br label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9: ; preds = %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9.loopexit, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit
  %.pre-phi = phi i64 [ %.pre, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9.loopexit ], [ %i.bc, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit ]
  %.4.ph.i12 = phi i32 [ %.4.ph.i12.ph, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9.loopexit ], [ %i.am, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit ]
  %i.be = load ptr, ptr %i.n, align 64, !tbaa !1551
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.pre-phi
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store atomic i32 -1, ptr %i.bg release, align 4
  br label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread: ; preds = %bb.f, %bb.e, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit
  %.4.ph.i7 = phi i32 [ 0, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit ], [ %.4.ph.i12, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9 ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i32 %.4.ph.i7
}

declare noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800), ptr noundef nonnull, ptr noundef nonnull) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv() #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %i.a
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v() #1

declare noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly18SequentialThreadId3getEv() ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %0, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %1, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

declare noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #1

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly16ShutdownSemErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !1518
  %i.b = icmp slt i64 %.sroa.0.0.copyload.i.i, 1
  br i1 %i.b, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %0 acquire, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !1518
  %i.e = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.e, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #24
  %i.g = load atomic i32, ptr %0 acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.sroa.025.037.i = phi i64 [ %.sroa.speculated.i, %bb.f ], [ %i.f, %bb.d ]
  %i.i = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #24 ; 3 uses
  %.sroa.0.0.copyload.i2.i15.i = load i64, ptr %1, align 8, !tbaa !1518
  %.not.i = icmp slt i64 %i.i, %.sroa.0.0.copyload.i2.i15.i ; 3 uses
  br i1 %.not.i, label %bb.e, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread

bb.e:                                             ; preds = %.lr.ph.i
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %.sroa.025.037.i) ; 2 uses
  %.sroa.0.0.copyload.i16.i = load i64, ptr %2, align 8, !tbaa !1518
  %i.j = add nsw i64 %.sroa.0.0.copyload.i16.i, %.sroa.speculated.i
  %.not36.i = icmp slt i64 %i.i, %i.j
  br i1 %.not36.i, label %bb.f, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !1599
  %i.k = load atomic i32, ptr %0 acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %.lr.ph.i, !llvm.loop !1600

_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit: ; preds = %bb.e, %bb.a
  %i.m = load atomic i32, ptr %0 monotonic, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit
  %.010 = phi i32 [ %i.m, %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit ], [ %i.q, %bb.i ]
  %i.n = icmp eq i32 %.010, 0
  br i1 %i.n, label %bb.h, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.h, %bb.g
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.o = cmpxchg weak ptr %0, i32 0, i32 2 monotonic acquire, align 4 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %.critedge.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = extractvalue { i32, i1 } %i.o, 0         ; 2 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %bb.g, !llvm.loop !1601

.critedge:                                        ; preds = %.critedge.preheader, %bb.l
  %i.s = load atomic i64, ptr @_ZN5folly6detail11MemoryIdler18defaultIdleTimeoutE acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.t = invoke noundef zeroext i1 @_ZN5folly6detail11MemoryIdler16futexWaitPreIdleISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EEbRNS0_11FutexResultERT_jRKT0_jT1_mf(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1, i64 %i.s, i64 noundef 1024, float noundef 5.000000e-01)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.critedge
  br i1 %i.t, label %bb.j, label %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i

bb.j:                                             ; preds = %.noexc
  %i.u = load i32, ptr %i.a, align 4, !tbaa !1602
  br label %bb.k

_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !1518 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %3, align 8
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 9223372036854775807
  %..i = select i1 %i.v, ptr null, ptr %3
  %i.w = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 2, ptr noundef null, ptr noundef %..i, i32 noundef -1)
          to label %.noexc7 unwind label %bb.m

.noexc7:                                          ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.k

bb.k:                                             ; preds = %.noexc7, %bb.j
  %.0.i = phi i32 [ %i.u, %bb.j ], [ %i.w, %.noexc7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not.not = icmp ne i32 %.0.i, 3                ; 3 uses
  br i1 %.not.not, label %bb.l, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.x = load atomic i32, ptr %0 acquire, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %.critedge, !llvm.loop !1604

_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread: ; preds = %bb.f, %.lr.ph.i, %bb.i, %bb.k, %bb.l, %bb.d, %bb.b, %bb.c
  %.3 = phi i1 [ true, %bb.b ], [ %.not.not, %bb.k ], [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.i ], [ %.not.not, %bb.l ], [ %.not.i, %.lr.ph.i ], [ %.not.i, %bb.f ]
  ret i1 %.3

bb.m:                                             ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i, %.critedge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #23
  unreachable
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail11MemoryIdler16futexWaitPreIdleISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EEbRNS0_11FutexResultERT_jRKT0_jT1_mf(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i64 %5, i64 noundef %6, float noundef %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %i.a = icmp slt i64 %5, 0
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not38 = icmp ne i64 %5, 0
  %i.b = fcmp ugt float %7, 0.000000e+00
  %or.cond = and i1 %.not38, %i.b
  br i1 %or.cond, label %bb.c, label %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @_ZN5folly18getCurrentThreadIDEv() ; 2 uses
  %i.d = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #24
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -7070675565921424023       ; 2 uses
  %i.g = lshr i64 %i.f, 47
  %i.h = xor i64 %i.c, %i.g
  %i.i = xor i64 %i.h, %i.f
  %i.j = mul i64 %i.i, -7070675565921424023       ; 2 uses
  %i.k = lshr i64 %i.j, 47
  %i.l = xor i64 %i.k, %i.j                       ; 2 uses
  %i.m = mul i64 %i.l, -7070675565921424023
  %i.n = xor i64 %i.m, -1
  %i.o = mul i64 %i.l, 4692019660866977792
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = lshr i64 %i.p, 24
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 265                        ; 2 uses
  %i.t = lshr i64 %i.s, 14
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 21                         ; 2 uses
  %i.w = lshr i64 %i.v, 28
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, 2147483649
  %i.z = fmul float %7, f0x1F800000
  %i.aa = uitofp i64 %i.y to float
  %i.ab = fmul float %i.z, %i.aa
  %i.ac = uitofp nneg i64 %5 to float
  %i.ad = fadd float %i.ab, 1.000000e+00
  %i.ae = fmul float %i.ad, %i.ac
  %i.af = fptoui float %i.ae to i64
  %i.ag = tail call i64 @llvm.smax.i64(i64 %i.af, i64 0)
  br label %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit

_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit: ; preds = %bb.c, %bb.b
  %.sroa.031.0 = phi i64 [ %5, %bb.b ], [ %i.ag, %bb.c ] ; 2 uses
  %.not42 = icmp eq i64 %.sroa.031.0, 0
  br i1 %.not42, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit
  %i.ah = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #24
  %i.ai = add nsw i64 %i.ah, %.sroa.031.0         ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %3, align 8, !tbaa !1518
  %i.aj = icmp slt i64 %i.ai, %.sroa.0.0.copyload.i2.i
  br i1 %i.aj, label %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit, label %.thread

_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i64 %i.ai, ptr %8, align 8
  %i.ak = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not = icmp eq i32 %i.ak, 3
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit
  store i32 %i.ak, ptr %0, align 4, !tbaa !1602
  br label %.thread

bb.f:                                             ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit, %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit
  call void @_ZN5folly6detail11MemoryIdler22flushLocalMallocCachesEv()
  call void @_ZN5folly6detail11MemoryIdler16unmapUnusedStackEm(i64 noundef %6)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.a, %bb.f
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.2
}

declare void @_ZN5folly6detail11MemoryIdler22flushLocalMallocCachesEv() local_unnamed_addr #1

declare void @_ZN5folly6detail11MemoryIdler16unmapUnusedStackEm(i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN5folly18getCurrentThreadIDEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #2

declare noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly6detail19LifoSemNodeRecyclerINS_19SaturatingSemaphoreILb1ESt6atomicEES3_EclEPNS0_11LifoSemNodeIS4_S3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit, !prof !1550

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit

_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit: ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 64, !tbaa !1551
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = and i64 %i.j, 4294967295
  br label %_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit

_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit: ; preds = %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.c ], [ 0, %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit ] ; 3 uses
  %i.l = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i.i2, label %bb.d, label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3, !prof !1550

bb.d:                                             ; preds = %_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit
  %i.m = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3

_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3: ; preds = %_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit ] ; 3 uses
  %i.o = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit.i, !prof !1550

bb.e:                                             ; preds = %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit.i

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit.i: ; preds = %bb.e, %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.q = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.r = call noundef i32 %i.q(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null), !inline_history !1605 ; 0 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !7
  %i.t = and i32 %i.s, 255                        ; 2 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !7
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 8192), i64 %i.u
  %i.w = load atomic i8, ptr %i.v monotonic, align 1
  %i.x = zext i8 %i.w to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %i.x ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ab = load ptr, ptr %i.aa, align 64, !tbaa !1551
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.0.i ; 2 uses
  %i.ad = load atomic i64, ptr %i.z acquire, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %invariant.op.i = or disjoint i64 %.0.i, 1103806595072
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit.i
  %.sroa.020.0.in.i.i = phi i64 [ %i.ad, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit.i ], [ %.sroa.020.1.in.i.i, %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i ] ; 6 uses
  %.sroa.020.0.i.i = trunc i64 %.sroa.020.0.in.i.i to i32
  store atomic i32 %.sroa.020.0.i.i, ptr %i.ae release, align 4
  %i.af = and i64 %.sroa.020.0.in.i.i, 1095216660480
  %i.ag = icmp eq i64 %i.af, 858993459200
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = and i64 %.sroa.020.0.in.i.i, -1099511627776
  %.sroa.2.0.insert.shift.i2.i.i.i = add i64 %i.ah, 1099511627776
  %i.ai = cmpxchg ptr %i.z, i64 %.sroa.020.0.in.i.i, i64 %.sroa.2.0.insert.shift.i2.i.i.i seq_cst seq_cst, align 8 ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.h, label %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 2176 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %invariant.op.i.i.i = or disjoint i64 %.0.i, 1099511627776
  br label %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i.i

_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i.i: ; preds = %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i.i, %bb.h
  %i.am = load atomic i64, ptr %i.ak acquire, align 64 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.am to i32
  store atomic i32 %.sroa.0.0.extract.trunc.i.i.i, ptr %i.al monotonic, align 4
  %i.an = and i64 %i.am, -4294967296
  %.sroa.0.0.insert.insert.i.reass.i.i.i = add i64 %invariant.op.i.i.i, %i.an
  %i.ao = cmpxchg ptr %i.ak, i64 %i.am, i64 %.sroa.0.0.insert.insert.i.reass.i.i.i seq_cst seq_cst, align 8
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE12recycleIndexEj.exit, label %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.aq = and i64 %.sroa.020.0.in.i.i, -4294967296
  %.sroa.0.0.insert.insert.i14.i.reass.i = add i64 %invariant.op.i, %i.aq
  %i.ar = cmpxchg ptr %i.z, i64 %.sroa.020.0.in.i.i, i64 %.sroa.0.0.insert.insert.i14.i.reass.i seq_cst seq_cst, align 8 ; 2 uses
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE12recycleIndexEj.exit, label %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i

_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i: ; preds = %bb.i, %bb.g
  %.pn.i.i = phi { i64, i1 } [ %i.ai, %bb.g ], [ %i.ar, %bb.i ]
  %.sroa.020.1.in.i.i = extractvalue { i64, i1 } %.pn.i.i, 0
  br label %bb.f, !llvm.loop !1606

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE12recycleIndexEj.exit: ; preds = %bb.i, %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14ManualExecutor9advanceToERKNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 64 dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !1518 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.a, align 32, !tbaa !1518
  %i.b = icmp sgt i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.a, align 32, !tbaa !1518
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call noundef i64 @_ZN5folly14ManualExecutor3runEv(ptr noundef nonnull align 64 dereferenceable(304) %0) ; 0 uses
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt11logic_errorJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 2 uses
  tail call void @_ZNSt11logic_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #26
  unreachable
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_14ManualExecutor16keepAliveReleaseEvEUlvE_Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #3 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !1607
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.c = atomicrmw sub ptr %i.b, i64 1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #23
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN5folly14ManualExecutor13ScheduledFuncESt6vectorIS4_SaIS4_EEEESt4lessIS4_EEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 1 ; 4 uses
  %3 = alloca %"struct.folly::ManualExecutor::ScheduledFunc", align 16 ; 8 uses
  %4 = alloca %"struct.folly::ManualExecutor::ScheduledFunc", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds i8, ptr %1, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %3, ptr noundef nonnull align 16 dereferenceable(80) %i.a, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 16, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !23  ; 2 uses
  store ptr %i.e, ptr %i.c, align 16, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !25
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.d, align 16, !tbaa !23
  store ptr null, ptr %i.g, align 8, !tbaa !25
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN5folly14ManualExecutor13ScheduledFuncC2EOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %1, i64 -64
  %i.j = call noundef i64 %i.h(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.b) #24, !inline_history !1581 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 16, !tbaa !23
  %.pre13 = load ptr, ptr %i.f, align 8, !tbaa !25
  br label %_ZN5folly14ManualExecutor13ScheduledFuncC2EOS1_.exit

_ZN5folly14ManualExecutor13ScheduledFuncC2EOS1_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ null, %bb.a ], [ %.pre13, %bb.b ] ; 3 uses
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.b ]
  %i.m = ptrtoint ptr %1 to i64
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 80
  %i.q = add nsw i64 %i.p, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) %3, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.r, align 16, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.l, ptr %i.s, align 16, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr %i.k, ptr %i.t, align 8, !tbaa !25
end_hunk_0
