inline.NumInlined: 1732
inline.NumDeleted: 1003
begin_hunk_0_@_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_:bb.a
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, 2147483649                 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5folly18parking_lot_detail6Bucket9bucketForEm(i64 noundef %i.m) ; 6 uses
  fence seq_cst
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.r) #46
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3572 ; 3 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.u = load i64, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.03034 = phi ptr [ %i.t, %.lr.ph ], [ %i.w, %.critedge ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03034, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3577 ; 6 uses
  %i.x = load i64, ptr %.03034, align 8, !tbaa !3581
  %i.y = icmp eq i64 %i.x, %i.m
  br i1 %i.y, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.03034, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !3582
  %i.ab = icmp eq i64 %i.aa, %i.u
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq ptr %i.t, %.03034
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3583
  %i.af = icmp eq ptr %i.ae, %.03034              ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.i:                                             ; preds = %bb.g
  store ptr %i.w, ptr %i.s, align 8, !tbaa !3572
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !3584
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.j:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.03034, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3584 ; 4 uses
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !3583
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !3577
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !3584
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.w, ptr %i.al, align 8, !tbaa !3577
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %i.am = atomicrmw sub ptr %i.o, i64 1 monotonic, align 8 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03034, i64 40 ; 2 uses
  %i.ao = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #46
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #34 ; 0 uses
  resume { ptr, i32 } %i.ap

bb.o:                                             ; preds = %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.03034, i64 32
  store i8 1, ptr %i.ar, align 8, !tbaa !3585
  %i.as = getelementptr inbounds nuw i8, ptr %.03034, i64 80
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.as) #34
  %i.at = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #34 ; 0 uses
  br label %.loopexit, !llvm.loop !3586

.critedge:                                        ; preds = %bb.e, %bb.d
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.critedge, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.o
  %i.au = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #34 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %.loopexit
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN5folly18parking_lot_detail6Bucket9bucketForEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postSlowWaiterMayBlockEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #36 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %.0.be, %.backedge.backedge ] ; 2 uses
  %i.a = icmp eq i32 %.0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  %i.b = cmpxchg ptr %0, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit1

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit1: ; preds = %bb.b
  %i.d = extractvalue { i32, i1 } %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit1, %.backedge
  %.1 = phi i32 [ %i.d, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit1 ], [ %.0, %.backedge ] ; 2 uses
  %i.e = icmp eq i32 %.1, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  fence seq_cst
  %i.f = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  %.0.be = phi i32 [ %i.f, %bb.d ], [ %i.j, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit ]
  br label %.backedge, !llvm.loop !3587

bb.e:                                             ; preds = %bb.c
  %i.h = cmpxchg ptr %0, i32 %.1, i32 1 release monotonic, align 4 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %bb.e
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br label %.backedge.backedge

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %0, i32 noundef 2147483647, i32 noundef -1)
          to label %_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit unwind label %bb.g ; 0 uses

_ZN5folly6detail9futexWakeISt6atomicIjEEEiPKT_ij.exit: ; preds = %bb.b, %bb.d, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #42
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #37

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !3380 ; 2 uses
  %i.b = icmp eq ptr %.val1, null
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %.val2 = phi ptr [ %.val, %bb.o ], [ %.val1, %bb.a ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3588 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3590 ; 3 uses
  %i.g = icmp eq ptr %i.d, null                   ; 2 uses
  %i.h = icmp eq ptr %i.f, null
  %or.cond.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i, label %bb.b, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph
  %.phi.trans.insert.i = getelementptr i8, ptr %i.d, i64 160
  %.0.i.val.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !tbaa !3591
  br label %.preheader.i

bb.b:                                             ; preds = %.lr.ph
  %i.i = select i1 %i.g, ptr %i.f, ptr %i.d       ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !3593
  %.not38.i.i = icmp eq ptr %i.i, null
  br i1 %.not38.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.i, align 8, !tbaa !3594
  br label %bb.e

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.0.i.val.i = phi i64 [ %1, %.preheader.i ], [ %.0.i.val.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.030.i.i.a = phi ptr [ %i.m, %.preheader.i ], [ %i.f, %.preheader.preheader.i ] ; 3 uses
  %.029.i.i.a = phi ptr [ %.032..0.i.i, %.preheader.i ], [ null, %.preheader.preheader.i ]
  %.0.i.i.a = phi ptr [ %i.n, %.preheader.i ], [ %i.a, %.preheader.preheader.i ]
  %.0.i.i = phi ptr [ %.0..032.i.i, %.preheader.i ], [ %i.d, %.preheader.preheader.i ] ; 2 uses
  %i.j = getelementptr i8, ptr %.030.i.i.a, i64 160
  %.032.i.val.i = load i64, ptr %i.j, align 16, !tbaa !3591 ; 2 uses
  %i.k = icmp ugt i64 %.0.i.val.i, %.032.i.val.i  ; 2 uses
  %.032..0.i.i = select i1 %i.k, ptr %.030.i.i.a, ptr %.0.i.i, !unpredictable !107 ; 6 uses
  %.0..032.i.i = select i1 %i.k, ptr %.0.i.i, ptr %.030.i.i.a, !unpredictable !107 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3590 ; 2 uses
  store ptr %.032..0.i.i, ptr %.0.i.i.a, align 8, !tbaa !3593
  %i.n = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3588
  store ptr %i.o, ptr %i.l, align 8, !tbaa !3590
  store ptr %.029.i.i.a, ptr %.032..0.i.i, align 8, !tbaa !3594
  %.not.i.i = icmp eq ptr %i.m, null
  %1 = tail call i64 @llvm.umax.i64(i64 %.0.i.val.i, i64 %.032.i.val.i)
  br i1 %.not.i.i, label %bb.d, label %.preheader.i, !llvm.loop !3595

bb.d:                                             ; preds = %.preheader.i
  store ptr %.0..032.i.i, ptr %i.n, align 8, !tbaa !3593
  store ptr %.032..0.i.i, ptr %.0..032.i.i, align 8, !tbaa !3594
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  store ptr inttoptr (i64 1 to ptr), ptr %.val2, align 8, !tbaa !3594
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = tail call noundef i64 %i.t(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef null) #34, !inline_history !3596 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 80) #44
  br label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.val2, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !28
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #34, !call_target !100, !inline_history !3597
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #34, !call_target !133, !inline_history !3597
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !169

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #34
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val2, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57 ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ap = tail call noundef i64 %i.ao(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(120) %i.p, ptr noundef null) #34, !inline_history !3598 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val2, i64 noundef 176) #44
  %.val = load ptr, ptr %i.a, align 8, !tbaa !3380 ; 2 uses
  %i.aq = icmp eq ptr %.val, null
  br i1 %i.aq, label %._crit_edge, label %.lr.ph, !llvm.loop !3599

._crit_edge:                                      ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18ThreadPoolExecutor4TaskD2Ev(ptr noundef nonnull align 16 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = tail call noundef i64 %i.d(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef null) #34, !inline_history !3600 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #44
  br label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !52  ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !28
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !call_target !100, !inline_history !3601
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !call_target !133, !inline_history !3601
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !169

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = tail call noundef i64 %i.y(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef null) #34, !inline_history !58 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #36 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #34, !call_target !100, !inline_history !3602
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

end_hunk_0
begin_hunk_1_@_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEv:bb.a
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy", align 8 ; 16 uses
  %6 = alloca %"class.std::unique_ptr.203", align 8 ; 10 uses
  %7 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store ptr null, ptr %6, align 8, !tbaa !3606
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3609)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.c = ptrtoint ptr %4 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.e = or disjoint i64 %i.c, 1                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i: ; preds = %bb.j, %bb.a
  %.022.i.i = phi ptr [ null, %bb.a ], [ %.227.i.i, %bb.j ] ; 5 uses
  %.020.i.i = phi i8 [ 0, %bb.a ], [ %i.k, %bb.j ]
  %.018.i.i = phi i32 [ 4, %bb.a ], [ %.017.i.i, %bb.j ]
  %.017.i.i = phi i32 [ 8, %bb.a ], [ %.018.i.i, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !3609
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !3609
  %i.g = zext nneg i32 %.017.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !noalias !3609
  store ptr @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNSt15aligned_storageILm40ELm8EE4typeE, ptr %i.d, align 16, !tbaa !173, !noalias !3609
  store ptr %6, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !noalias !3609
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i.i, align 32, !noalias !3609
  store atomic i64 %i.g, ptr %i.b release, align 64, !noalias !3609
  %i.h = atomicrmw xchg ptr %1, i64 %i.e acq_rel, align 8, !noalias !3609 ; 3 uses
  %i.i = and i64 %i.h, 2
  %.not.i28.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i28.i.i, label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i, label %bb.b, !prof !3399

bb.b:                                             ; preds = %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i
  %i.j = and i64 %i.h, -3
  br label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i

_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i: ; preds = %bb.b, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i
  %i.k = phi i8 [ %.020.i.i, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i ], [ 1, %bb.b ] ; 4 uses
  %.0.i.i = phi i64 [ %i.h, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i ], [ %i.j, %bb.b ] ; 4 uses
  store atomic i64 %.0.i.i, ptr %i.f monotonic, align 8, !noalias !3609
  %i.l = icmp eq i64 %.0.i.i, 0
  br i1 %i.l, label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.thread.i, label %bb.c

_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.thread.i: ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  store ptr null, ptr %5, align 8, !tbaa !3551, !alias.scope !3609
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !3552, !alias.scope !3609
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %i.k, ptr %i.n, align 8, !tbaa !3548, !alias.scope !3609
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.o, align 1, !tbaa !3543, !alias.scope !3609
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !3609
  store ptr %.022.i.i, ptr %i.q, align 8, !tbaa !3553, !alias.scope !3609
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !3609
  br label %bb.k

bb.c:                                             ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !3609
  store i32 0, ptr %i.a, align 4, !tbaa !7, !noalias !3609
  %i.r = icmp eq i32 %.017.i.i, 4
  br i1 %i.r, label %bb.d, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = atomicrmw xchg ptr %.sroa.6.0..sroa_idx.i.i, i32 5 acq_rel, align 4, !noalias !3609
  switch i32 %i.s, label %.lr.ph.i.i.preheader.i.i [
    i32 5, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
    i32 2, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  ]

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.d
  %.not.i.i.i.peel.i.i = icmp eq ptr %.022.i.i, null
  br i1 %.not.i.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.preheader.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.t release, align 4, !noalias !3609
  %i.u = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.t, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i: ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i
  %i.v = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc12:                                         ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i
  %i.w = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !3609
  %.not.i.i.peel.i.i = icmp eq i32 %i.w, 2
  br i1 %.not.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i: ; preds = %.noexc12, %.noexc13
  %i.x = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc13 unwind label %.loopexit ; 0 uses

.noexc13:                                         ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i
  %i.y = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !3609
  %.not.i.i.i.i = icmp eq i32 %i.y, 2
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i, !llvm.loop !3612

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i: ; preds = %.noexc13, %.noexc12, %bb.d
  %i.z = load atomic i64, ptr %i.f monotonic, align 8, !noalias !3609
  %i.aa = and i64 %i.z, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %bb.j, !llvm.loop !3613

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i: ; preds = %bb.c
  %i.ac = invoke noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.017.i.i)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i
  br i1 %i.ac, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, label %bb.j, !llvm.loop !3613

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i: ; preds = %.noexc14, %bb.d
  %i.ad = load i64, ptr %i.d, align 16, !noalias !3609 ; 3 uses
  %i.ae = icmp eq i64 %.0.i.i, %i.ad              ; 2 uses
  %spec.select.i.i = select i1 %i.ae, i64 1, i64 %i.e
  %i.af = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !3609 ; 4 uses
  %i.ag = icmp eq i32 %i.af, 7
  %i.ah = icmp eq i32 %i.af, 10                   ; 2 uses
  %or.cond.i.i = or i1 %i.ag, %i.ah
  %i.ai = inttoptr i64 %i.ad to ptr
  switch i32 %i.af, label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i [
    i32 10, label %bb.f
    i32 7, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !3609
  br i1 %i.ah, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i, label %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i, !prof !169

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i: ; preds = %bb.f
  store ptr null, ptr %i.d, align 16, !tbaa !3557, !noalias !3609
  store ptr %i.ai, ptr %3, align 8, !tbaa !3557, !noalias !3609
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %3) #46
          to label %bb.g unwind label %bb.h, !noalias !3609

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  unreachable

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !3557, !noalias !3609
  %.not.i6.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i6.i.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #34, !noalias !3609
  br label %.body

_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !3609
  br label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i

bb.j:                                             ; preds = %.noexc14, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  %.227.i.i = phi ptr [ %.022.i.i, %.noexc14 ], [ %i.ab, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3609
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !3609
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i: ; preds = %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  %i.al = and i64 %.0.i.i, -2
  %i.am = select i1 %i.ae, i64 0, i64 %i.al
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !tbaa !59, !noalias !3609
  %i.ap = and i64 %i.ao, -2
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = zext i1 %or.cond.i.i to i8
  store ptr %i.an, ptr %5, align 8, !tbaa !3551, !alias.scope !3609
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %spec.select.i.i, ptr %i.as, align 8, !tbaa !3552, !alias.scope !3609
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %i.k, ptr %i.at, align 8, !tbaa !3548, !alias.scope !3609
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !3543, !alias.scope !3609
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.ad, ptr %i.av, align 8, !tbaa !3559, !alias.scope !3609
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.aq, ptr %i.aw, align 8, !tbaa !3560, !alias.scope !3609
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %.022.i.i, ptr %i.ax, align 8, !tbaa !3553, !alias.scope !3609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3609
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !3609
  switch i32 %i.af, label %bb.k [
    i32 10, label %bb.r
    i32 7, label %bb.r
  ]

bb.k:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3380 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !3588 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !3590 ; 3 uses
  %i.bf = icmp eq ptr %i.bc, null                 ; 2 uses
  %i.bg = icmp eq ptr %i.be, null
  %or.cond.i.i.i.i = or i1 %i.bf, %i.bg
  br i1 %or.cond.i.i.i.i, label %bb.m, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.l
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.bc, i64 160
  %.0.i.val.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 16, !tbaa !3591
  br label %.preheader.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bh = select i1 %i.bf, ptr %i.be, ptr %i.bc   ; 3 uses
  store ptr %i.bh, ptr %i.ay, align 8, !tbaa !3593
  %.not38.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not38.i.i.i.i, label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.bh, align 8, !tbaa !3594
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.0.i.val.i.i.i = phi i64 [ %8, %.preheader.i.i.i ], [ %.0.i.val.pre.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %.030.i.i.i.i.a = phi ptr [ %i.bl, %.preheader.i.i.i ], [ %i.be, %.preheader.preheader.i.i.i ] ; 3 uses
  %.029.i.i.i.i.a = phi ptr [ %.032..0.i.i.i.i, %.preheader.i.i.i ], [ null, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i.a = phi ptr [ %i.bm, %.preheader.i.i.i ], [ %i.ay, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %.0..032.i.i.i.i, %.preheader.i.i.i ], [ %i.bc, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.bi = getelementptr i8, ptr %.030.i.i.i.i.a, i64 160
  %.032.i.val.i.i.i = load i64, ptr %i.bi, align 16, !tbaa !3591 ; 2 uses
  %i.bj = icmp ugt i64 %.0.i.val.i.i.i, %.032.i.val.i.i.i ; 2 uses
  %.032..0.i.i.i.i = select i1 %i.bj, ptr %.030.i.i.i.i.a, ptr %.0.i.i.i.i, !unpredictable !107 ; 6 uses
  %.0..032.i.i.i.i = select i1 %i.bj, ptr %.0.i.i.i.i, ptr %.030.i.i.i.i.a, !unpredictable !107 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i.i, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !3590 ; 2 uses
  store ptr %.032..0.i.i.i.i, ptr %.0.i.i.i.i.a, align 8, !tbaa !3593
  %i.bm = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i.i, i64 8 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !3588
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !3590
  store ptr %.029.i.i.i.i.a, ptr %.032..0.i.i.i.i, align 8, !tbaa !3594
  %.not.i.i.i8.i = icmp eq ptr %i.bl, null
  %8 = call i64 @llvm.umax.i64(i64 %.0.i.val.i.i.i, i64 %.032.i.val.i.i.i)
  br i1 %.not.i.i.i8.i, label %bb.o, label %.preheader.i.i.i, !llvm.loop !3595

bb.o:                                             ; preds = %.preheader.i.i.i
  store ptr %.0..032.i.i.i.i, ptr %i.bm, align 8, !tbaa !3593
  store ptr %.032..0.i.i.i.i, ptr %.0..032.i.i.i.i, align 8, !tbaa !3594
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i

_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !tbaa !3594
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i

_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i: ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i, %bb.k
  %i.bo = load ptr, ptr %6, align 8, !tbaa !3614  ; 2 uses
  store ptr %i.az, ptr %6, align 8, !tbaa !3614
  %.not.i.i1.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i, label %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.bo)
  br label %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i

_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i: ; preds = %bb.p, %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #42
  unreachable

bb.r:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i
  %i.br = trunc nuw i8 %i.k to i1
  br i1 %i.br, label %bb.s, label %bb.t, !prof !169

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5folly6detail19atomic_notification10parkingLotE, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.t

bb.t:                                             ; preds = %.noexc15, %bb.r, %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.val = load ptr, ptr %6, align 8, !tbaa !3614  ; 11 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %bb.u, label %.critedge, !prof !169

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str.44, i32 noundef 50)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.45, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.w
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #42
  unreachable

.loopexit:                                        ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i, %bb.e
  %lpad.loopexit20 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.s
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.body

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #42
  unreachable

.critedge:                                        ; preds = %bb.t
  store ptr null, ptr %0, align 16, !tbaa !59
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57 ; 2 uses
  %i.ca = load <2 x ptr>, ptr %i.bx, align 16, !tbaa !173
  store <2 x ptr> %i.ca, ptr %i.bw, align 16, !tbaa !173
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.bx, align 16, !tbaa !55
  store ptr null, ptr %i.by, align 8, !tbaa !57
  %.not.i.i.i.i17 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i17, label %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.cc = call noundef i64 %i.bz(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(120) %i.cb, ptr noundef nonnull align 16 dereferenceable(120) %0) #34, !inline_history !3615 ; 0 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !3614
  br label %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit

_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit: ; preds = %.critedge, %bb.z
  %i.cd = phi ptr [ %.val, %.critedge ], [ %.pre, %bb.z ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.cg = load i64, ptr %i.cf, align 16, !tbaa !3361
  store i64 %i.cg, ptr %i.ce, align 16, !tbaa !3361
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 104 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ck = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !173
  store ptr null, ptr %i.cj, align 16, !tbaa !52
  store <2 x ptr> %i.ck, ptr %i.ch, align 8, !tbaa !173
  store ptr null, ptr %i.ci, align 8, !tbaa !77
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !98
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !98
  store ptr null, ptr %i.cm, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.co, ptr noundef nonnull align 16 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.cs = load i64, ptr %i.cr, align 16, !tbaa !79
  store i64 %i.cs, ptr %i.cq, align 16, !tbaa !79
  %.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.cd)
  br label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit: ; preds = %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.i, %bb.h, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.aj, %bb.h ], [ %i.aj, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit20, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp21, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ct = load ptr, ptr %6, align 8, !tbaa !3614  ; 2 uses
  %.not.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit19, label %bb.ab

bb.ab:                                            ; preds = %.body
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.ct)
  br label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit19

_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit19: ; preds = %.body, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_ZNK5folly17LLCAccessSpreader7currentEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly16ThrottledLifoSem14try_wait_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 64 ; 2 uses
  %.07.in.in13.i.i = and i64 %i.b, 4294967295
  %.07.in14.not.i.i = icmp eq i64 %.07.in.in13.i.i, 0
  br i1 %.07.in14.not.i.i, label %.loopexit14, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i
  %.015.i.i = phi i64 [ %i.f, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = add i64 %.015.i.i, -1
  %i.d = cmpxchg weak ptr %i.a, i64 %.015.i.i, i64 %i.c seq_cst monotonic, align 8 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %_ZN5folly16ThrottledLifoSem8try_waitEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i: ; preds = %.lr.ph.i.i
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %.07.in.in.i.i = and i64 %i.f, 4294967295
  %.07.in.not.i.i = icmp eq i64 %.07.in.in.i.i, 0
  br i1 %.07.in.not.i.i, label %.loopexit14, label %.lr.ph.i.i

.loopexit14:                                      ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i, %bb.a
  %i.g = atomicrmw add ptr %i.a, i64 8589934592 seq_cst, align 8 ; 0 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !3361
  %i.h = icmp slt i64 %.sroa.0.0.copyload.i.i, 1
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.loopexit14
  %i.i = load atomic i64, ptr %i.a monotonic, align 64 ; 2 uses
  %.08.in.in14.i.i.i = and i64 %i.i, 4294967295
  %.08.in15.not.i.i.i = icmp eq i64 %.08.in.in14.i.i.i, 0
  br i1 %.08.in15.not.i.i.i, label %.loopexit50.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i
  %.016.i.i.i = phi i64 [ %i.m, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = add i64 %.016.i.i.i, -8589934593
  %i.k = cmpxchg weak ptr %i.a, i64 %.016.i.i.i, i64 %i.j seq_cst monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %_ZN5folly16ThrottledLifoSem8try_waitEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i: ; preds = %.lr.ph.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_17RequestWithReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSP_RT1_RT2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.q = icmp eq i32 %.044, 4
  br i1 %i.q, label %bb.d, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit

bb.d:                                             ; preds = %bb.c
  %i.r = atomicrmw xchg ptr %.sroa.6.0..sroa_idx, i32 5 acq_rel, align 4
  switch i32 %i.r, label %.lr.ph.i.i.preheader [
    i32 5, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
    i32 2, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57
  ]

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %.not.i.i.i.peel = icmp eq ptr %.049, null
  br i1 %.not.i.i.i.peel, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %.049, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.s release, align 4
  %i.t = call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.s, i32 noundef 1, i32 noundef -1) ; 0 uses
  br label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel: ; preds = %bb.e, %.lr.ph.i.i.preheader
  %i.u = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1) ; 0 uses
  %i.v = load atomic i32, ptr %.sroa.6.0..sroa_idx acquire, align 32
  %.not.i.i.peel = icmp eq i32 %i.v, 2
  br i1 %.not.i.i.peel, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i: ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i
  %i.w = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1) ; 0 uses
  %i.x = load atomic i32, ptr %.sroa.6.0..sroa_idx acquire, align 32
  %.not.i.i = icmp eq i32 %i.x, 2
  br i1 %.not.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i, !llvm.loop !3661

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57: ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel, %bb.d
  %i.y = load atomic i64, ptr %i.f monotonic, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  br label %bb.j, !llvm.loop !3662

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit: ; preds = %bb.c
  %i.ab = call noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.044)
  br i1 %i.ab, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread, label %bb.j, !llvm.loop !3662

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread: ; preds = %bb.d, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit
  %i.ac = load i64, ptr %i.d, align 16            ; 3 uses
  %i.ad = icmp eq i64 %.0, %i.ac                  ; 2 uses
  %spec.select = select i1 %i.ad, i64 1, i64 %i.e
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !7   ; 3 uses
  %i.af = icmp eq i32 %i.ae, 7
  %i.ag = icmp eq i32 %i.ae, 10                   ; 2 uses
  %or.cond = or i1 %i.af, %i.ag
  %i.ah = inttoptr i64 %i.ac to ptr               ; 2 uses
  switch i32 %i.ae, label %.thread [
    i32 10, label %bb.f
    i32 7, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.ag, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i, label %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EEvRNS1_17RequestWithReturnISH_EERSG_bRNS_4UnitE.exit, !prof !169

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i: ; preds = %bb.f
  store ptr null, ptr %i.d, align 16, !tbaa !3557
  store ptr %i.ah, ptr %4, align 8, !tbaa !3557
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %4) #46
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
  unreachable

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %4, align 8, !tbaa !3557
  %.not.i6.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i6.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.ai

_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EEvRNS1_17RequestWithReturnISH_EERSG_bRNS_4UnitE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !3549
  br label %.thread

.thread:                                          ; preds = %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EEvRNS1_17RequestWithReturnISH_EERSG_bRNS_4UnitE.exit, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
  %i.al = and i64 %.0, -2
  %i.am = select i1 %i.ad, i64 0, i64 %i.al
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !59
  %i.ap = and i64 %i.ao, -2
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = zext i1 %or.cond to i8
  store ptr %i.an, ptr %0, align 8, !tbaa !3551
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select, ptr %i.as, align 8, !tbaa !3552
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.148, ptr %i.at, align 8, !tbaa !3548
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !3543
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ac, ptr %i.av, align 8, !tbaa !3559
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aq, ptr %i.aw, align 8, !tbaa !3560
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.049, ptr %i.ax, align 8, !tbaa !3553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.k

bb.j:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57
  %.254 = phi ptr [ %.049, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit ], [ %i.aa, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit

bb.k:                                             ; preds = %.thread, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE1_NS5_6WaiterISt6atomicEEEEEEvRKNSt15aligned_storageILm40ELm8EE4typeE(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3663   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3366 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = icmp eq ptr %i.d, %i.c
  %i.f = or i1 %.not.i.i.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = atomicrmw and ptr %i.g, i64 -4294967297 seq_cst, align 8 ; 0 uses
  br label %_ZNK5folly6detail17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS5_10time_pointIT_T0_EEEUlvE1_NS1_6WaiterISt6atomicEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i
  %.04.i.i.i = phi i64 [ %i.o, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = xor i64 %.04.i.i.i, 4294967296
  %i.m = cmpxchg weak ptr %i.g, i64 %.04.i.i.i, i64 %i.l seq_cst monotonic, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %_ZNK5folly6detail17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS5_10time_pointIT_T0_EEEUlvE1_NS1_6WaiterISt6atomicEEEclEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3369 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !3366 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3369 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8, !tbaa !3366
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !3369
  %i.y = load i64, ptr %i.b, align 8, !tbaa !3546
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %i.b, align 8, !tbaa !3546
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZNK5folly6detail17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS5_10time_pointIT_T0_EEEUlvE1_NS1_6WaiterISt6atomicEEEclEv.exit

_ZNK5folly6detail17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS5_10time_pointIT_T0_EEEUlvE1_NS1_6WaiterISt6atomicEEEclEv.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %.loopexit.i.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ %i.t, %.loopexit.i.i ], [ null, %.lr.ph.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3665, !nonnull !107, !align !3565
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store ptr %.0.i.i, ptr %i.ac, align 16, !tbaa !3549
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNSt15aligned_storageILm40ELm8EE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3667  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !3671
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3380 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3588 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3590 ; 3 uses
  %i.i = icmp eq ptr %i.f, null                   ; 2 uses
  %i.j = icmp eq ptr %i.h, null
  %or.cond.i.i.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i, label %bb.c, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.b
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.f, i64 160
  %.0.i.val.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 16, !tbaa !3591
  br label %.preheader.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = select i1 %i.i, ptr %i.h, ptr %i.f       ; 3 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !3593
  %.not38.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not38.i.i.i.i, label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.k, align 8, !tbaa !3594
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.0.i.val.i.i.i = phi i64 [ %1, %.preheader.i.i.i ], [ %.0.i.val.pre.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %.030.i.i.i.i.a = phi ptr [ %i.o, %.preheader.i.i.i ], [ %i.h, %.preheader.preheader.i.i.i ] ; 3 uses
  %.029.i.i.i.i.a = phi ptr [ %.032..0.i.i.i.i, %.preheader.i.i.i ], [ null, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i.a = phi ptr [ %i.p, %.preheader.i.i.i ], [ %i.b, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %.0..032.i.i.i.i, %.preheader.i.i.i ], [ %i.f, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.l = getelementptr i8, ptr %.030.i.i.i.i.a, i64 160
  %.032.i.val.i.i.i = load i64, ptr %i.l, align 16, !tbaa !3591 ; 2 uses
  %i.m = icmp ugt i64 %.0.i.val.i.i.i, %.032.i.val.i.i.i ; 2 uses
  %.032..0.i.i.i.i = select i1 %i.m, ptr %.030.i.i.i.i.a, ptr %.0.i.i.i.i, !unpredictable !107 ; 6 uses
  %.0..032.i.i.i.i = select i1 %i.m, ptr %.0.i.i.i.i, ptr %.030.i.i.i.i.a, !unpredictable !107 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3590 ; 2 uses
  store ptr %.032..0.i.i.i.i, ptr %.0.i.i.i.i.a, align 8, !tbaa !3593
  %i.p = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i.i, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3588
  store ptr %i.q, ptr %i.n, align 8, !tbaa !3590
  store ptr %.029.i.i.i.i.a, ptr %.032..0.i.i.i.i, align 8, !tbaa !3594
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  %1 = tail call i64 @llvm.umax.i64(i64 %.0.i.val.i.i.i, i64 %.032.i.val.i.i.i)
  br i1 %.not.i.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !3595

bb.e:                                             ; preds = %.preheader.i.i.i
  store ptr %.0..032.i.i.i.i, ptr %i.p, align 8, !tbaa !3593
  store ptr %.032..0.i.i.i.i, ptr %.0..032.i.i.i.i, align 8, !tbaa !3594
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i

_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8, !tbaa !3594
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i

_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i: ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i, %bb.a
  %i.r = load ptr, ptr %.val, align 8, !tbaa !3614 ; 2 uses
  store ptr %i.c, ptr %.val, align 8, !tbaa !3614
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZNK5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS1_6WaiterISt6atomicEEEclEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i
  tail call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.r)
  br label %_ZNK5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS1_6WaiterISt6atomicEEEclEv.exit

_ZNK5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS1_6WaiterISt6atomicEEEclEv.exit: ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call noundef i64 %i.f(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.g, ptr noundef null) #34, !inline_history !3596 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #44
  br label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !28
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #34, !call_target !100, !inline_history !3597
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #34, !call_target !133, !inline_history !3597
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !169

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #34
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.f, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i, label %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ab = tail call noundef i64 %i.aa(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(120) %i.b, ptr noundef null) #34, !inline_history !3598 ; 0 uses
  br label %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeD2Ev.exit

_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #44
  br label %bb.l

bb.l:                                             ; preds = %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #4 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(120) %1, i64 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.162, align 1            ; 3 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %5 = alloca %"class.folly::detail::distributed_mutex::Waiter", align 64 ; 12 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy", align 8 ; 16 uses
  %7 = alloca %"class.std::unique_ptr.203", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.b = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #43 ; 10 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !tbaa !3594
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr null, ptr %i.c, align 16, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 16, !tbaa !173
  store <2 x ptr> %i.h, ptr %i.d, align 16, !tbaa !173
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.e, align 16, !tbaa !55
  store ptr null, ptr %i.f, align 8, !tbaa !57
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 %i.g(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(120) %1, ptr noundef nonnull align 16 dereferenceable(120) %i.c) #34, !inline_history !3672 ; 0 uses
  br label %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit

_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i64, ptr %i.k, align 16, !tbaa !3361
  store i64 %i.l, ptr %i.j, align 16, !tbaa !3361
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !173
  store ptr null, ptr %i.o, align 16, !tbaa !52
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !173
  store ptr null, ptr %i.n, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !98
  store i64 %i.s, ptr %i.q, align 8, !tbaa !98
  store ptr null, ptr %i.r, align 8, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load i64, ptr %i.w, align 16, !tbaa !79
  store i64 %i.x, ptr %i.v, align 16, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %2, ptr %i.y, align 16, !tbaa !3591
  store ptr %i.b, ptr %7, align 8, !tbaa !3614
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3673)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.aa = ptrtoint ptr %5 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ac = or disjoint i64 %i.aa, 1                ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i: ; preds = %bb.k, %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit
  %.022.i.i = phi ptr [ null, %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit ], [ %.227.i.i, %bb.k ] ; 5 uses
  %.020.i.i = phi i8 [ 0, %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit ], [ %i.ai, %bb.k ]
  %.018.i.i = phi i32 [ 4, %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit ], [ %.017.i.i, %bb.k ]
  %.017.i.i = phi i32 [ 8, %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit ], [ %.018.i.i, %bb.k ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !3673
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !noalias !3673
  %i.ae = zext nneg i32 %.017.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !noalias !3673
  store ptr @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOSA_mEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNSt15aligned_storageILm40ELm8EE4typeE, ptr %i.ab, align 16, !tbaa !173, !noalias !3673
  store ptr %0, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !noalias !3673
  store ptr %7, ptr %.sroa.6.0..sroa_idx.i.i, align 32, !noalias !3673
  store atomic i64 %i.ae, ptr %i.z release, align 64, !noalias !3673
  %i.af = atomicrmw xchg ptr %0, i64 %i.ac acq_rel, align 8, !noalias !3673 ; 3 uses
  %i.ag = and i64 %i.af, 2
  %.not.i28.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i28.i.i, label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i, label %bb.c, !prof !3399

bb.c:                                             ; preds = %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i
  %i.ah = and i64 %i.af, -3
  br label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i

_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i: ; preds = %bb.c, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i
  %i.ai = phi i8 [ %.020.i.i, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i ], [ 1, %bb.c ] ; 4 uses
  %.0.i.i = phi i64 [ %i.af, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i ], [ %i.ah, %bb.c ] ; 4 uses
  store atomic i64 %.0.i.i, ptr %i.ad monotonic, align 8, !noalias !3673
  %i.aj = icmp eq i64 %.0.i.i, 0
  br i1 %i.aj, label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.thread.i, label %bb.d

_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.thread.i: ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  store ptr null, ptr %6, align 8, !tbaa !3551, !alias.scope !3673
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ac, ptr %i.ak, align 8, !tbaa !3552, !alias.scope !3673
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.ai, ptr %i.al, align 8, !tbaa !3548, !alias.scope !3673
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.am, align 1, !tbaa !3543, !alias.scope !3673
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !alias.scope !3673
  store ptr %.022.i.i, ptr %i.ao, align 8, !tbaa !3553, !alias.scope !3673
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3673
  br label %bb.l

bb.d:                                             ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !3673
  store i32 0, ptr %i.a, align 4, !tbaa !7, !noalias !3673
  %i.ap = icmp eq i32 %.017.i.i, 4
  br i1 %i.ap, label %bb.e, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aq = atomicrmw xchg ptr %.sroa.6.0..sroa_idx.i.i, i32 5 acq_rel, align 4, !noalias !3673
  switch i32 %i.aq, label %.lr.ph.i.i.preheader.i.i [
    i32 5, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
    i32 2, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  ]

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.e
  %.not.i.i.i.peel.i.i = icmp eq ptr %.022.i.i, null
  br i1 %.not.i.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.preheader.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.ar release, align 4, !noalias !3673
  %i.as = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.ar, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i: ; preds = %bb.f, %.lr.ph.i.i.preheader.i.i
  %i.at = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc4:                                          ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i
  %i.au = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !3673
  %.not.i.i.peel.i.i = icmp eq i32 %i.au, 2
  br i1 %.not.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i: ; preds = %.noexc4, %.noexc5
  %i.av = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc5 unwind label %.loopexit ; 0 uses

.noexc5:                                          ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i
  %i.aw = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !3673
  %.not.i.i.i.i = icmp eq i32 %i.aw, 2
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i, !llvm.loop !3676

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i: ; preds = %.noexc5, %.noexc4, %bb.e
  %i.ax = load atomic i64, ptr %i.ad monotonic, align 8, !noalias !3673
  %i.ay = and i64 %i.ax, -2
  %i.az = inttoptr i64 %i.ay to ptr
  br label %bb.k, !llvm.loop !3677

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i: ; preds = %bb.d
  %i.ba = invoke noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.017.i.i)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit

.noexc6:                                          ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i
  br i1 %i.ba, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, label %bb.k, !llvm.loop !3677

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i: ; preds = %.noexc6, %bb.e
  %i.bb = load i64, ptr %i.ab, align 16, !noalias !3673 ; 3 uses
  %i.bc = icmp eq i64 %.0.i.i, %i.bb              ; 2 uses
  %spec.select.i.i = select i1 %i.bc, i64 1, i64 %i.ac
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !3673 ; 4 uses
  %i.be = icmp eq i32 %i.bd, 7
  %i.bf = icmp eq i32 %i.bd, 10                   ; 2 uses
  %or.cond.i.i = or i1 %i.be, %i.bf
  %i.bg = inttoptr i64 %i.bb to ptr
  switch i32 %i.bd, label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i [
    i32 10, label %bb.g
    i32 7, label %bb.g
  ]

bb.g:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !3673
  br i1 %i.bf, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i, label %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i, !prof !169

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i: ; preds = %bb.g
  store ptr null, ptr %i.ab, align 16, !tbaa !3557, !noalias !3673
  store ptr %i.bg, ptr %4, align 8, !tbaa !3557, !noalias !3673
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %4) #46
          to label %bb.h unwind label %bb.i, !noalias !3673

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  unreachable

bb.i:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !3557, !noalias !3673
  %.not.i6.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i6.i.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #34, !noalias !3673
  br label %.body

_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !3673
  br label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i

bb.k:                                             ; preds = %.noexc6, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  %.227.i.i = phi ptr [ %.022.i.i, %.noexc6 ], [ %i.az, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3673
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3673
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i: ; preds = %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  %i.bj = and i64 %.0.i.i, -2
  %i.bk = select i1 %i.bc, i64 0, i64 %i.bj
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !tbaa !59, !noalias !3673
  %i.bn = and i64 %i.bm, -2
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = zext i1 %or.cond.i.i to i8
  store ptr %i.bl, ptr %6, align 8, !tbaa !3551, !alias.scope !3673
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %spec.select.i.i, ptr %i.bq, align 8, !tbaa !3552, !alias.scope !3673
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.ai, ptr %i.br, align 8, !tbaa !3548, !alias.scope !3673
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 %i.bp, ptr %i.bs, align 1, !tbaa !3543, !alias.scope !3673
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bb, ptr %i.bt, align 8, !tbaa !3559, !alias.scope !3673
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.bo, ptr %i.bu, align 8, !tbaa !3560, !alias.scope !3673
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %.022.i.i, ptr %i.bv, align 8, !tbaa !3553, !alias.scope !3673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3673
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3673
  switch i32 %i.bd, label %bb.l [
    i32 10, label %bb.p
    i32 7, label %bb.p
  ]

bb.l:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.thread.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %7, align 8, !tbaa !3614  ; 5 uses
  store ptr null, ptr %7, align 8, !tbaa !3614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !3380 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.m, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.l
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.bx, i64 160
  %.0.i.val.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 16, !tbaa !3591
  br label %.preheader.i.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !3593
  store ptr null, ptr %i.bx, align 8, !tbaa !3594
  br label %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.0.i.val.i.i.i = phi i64 [ %8, %.preheader.i.i.i ], [ %.0.i.val.pre.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %.030.i.i.i.i.a = phi ptr [ %i.cd, %.preheader.i.i.i ], [ %i.by, %.preheader.preheader.i.i.i ] ; 3 uses
  %.029.i.i.i.i.a = phi ptr [ %.032..0.i.i.i.i, %.preheader.i.i.i ], [ null, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i.a = phi ptr [ %i.ce, %.preheader.i.i.i ], [ %i.bw, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %.0..032.i.i.i.i, %.preheader.i.i.i ], [ %i.bx, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.030.i.i.i.i.a, i64 160
  %.032.i.val.i.i.i = load i64, ptr %i.ca, align 16, !tbaa !3591 ; 2 uses
  %i.cb = icmp ugt i64 %.0.i.val.i.i.i, %.032.i.val.i.i.i ; 2 uses
  %.032..0.i.i.i.i = select i1 %i.cb, ptr %.030.i.i.i.i.a, ptr %.0.i.i.i.i, !unpredictable !107 ; 6 uses
  %.0..032.i.i.i.i = select i1 %i.cb, ptr %.0.i.i.i.i, ptr %.030.i.i.i.i.a, !unpredictable !107 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i.i, i64 16 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !3590 ; 2 uses
  store ptr %.032..0.i.i.i.i, ptr %.0.i.i.i.i.a, align 8, !tbaa !3593
  %i.ce = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i.i, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !3588
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !3590
  store ptr %.029.i.i.i.i.a, ptr %.032..0.i.i.i.i, align 8, !tbaa !3594
  %.not.i.i.i8.i = icmp eq ptr %i.cd, null
  %8 = call i64 @llvm.umax.i64(i64 %.0.i.val.i.i.i, i64 %.032.i.val.i.i.i)
  br i1 %.not.i.i.i8.i, label %bb.n, label %.preheader.i.i.i, !llvm.loop !3595

bb.n:                                             ; preds = %.preheader.i.i.i
  store ptr %.0..032.i.i.i.i, ptr %i.ce, align 8, !tbaa !3593
  store ptr %.032..0.i.i.i.i, ptr %.0..032.i.i.i.i, align 8, !tbaa !3594
  br label %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i

_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i: ; preds = %bb.n, %bb.m
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #42
  unreachable

bb.p:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i
  %i.ci = trunc nuw i8 %i.ai to i1
  br i1 %i.ci, label %bb.q, label %bb.r, !prof !169

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5folly6detail19atomic_notification10parkingLotE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.r

bb.r:                                             ; preds = %.noexc7, %bb.p, %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.cj = load ptr, ptr %7, align 8, !tbaa !3614  ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.cj)
  br label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  ret void

.loopexit:                                        ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i, %bb.f
  %lpad.loopexit10 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.q
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %i.bh, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit10, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp11, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ck = load ptr, ptr %7, align 8, !tbaa !3614  ; 2 uses
  %.not.i8 = icmp eq ptr %i.ck, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit9, label %bb.t

bb.t:                                             ; preds = %.body
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.ck)
  br label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit9

_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit9: ; preds = %.body, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOSA_mEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNSt15aligned_storageILm40ELm8EE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) #38 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3678
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !3680 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.c = load ptr, ptr %.val1, align 8, !tbaa !3614 ; 5 uses
  store ptr null, ptr %.val1, align 8, !tbaa !3614
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !3380 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.a
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.c, i64 160
  %.0.i.val.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 16, !tbaa !3591
  br label %.preheader.i.i.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.b, align 8, !tbaa !3593
  store ptr null, ptr %i.c, align 8, !tbaa !3594
  br label %_ZNK5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS6_mEUlvE_NS1_6WaiterISt6atomicEEEclEv.exit

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.0.i.val.i.i.i = phi i64 [ %1, %.preheader.i.i.i ], [ %.0.i.val.pre.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %.030.i.i.i.i.a = phi ptr [ %i.i, %.preheader.i.i.i ], [ %i.d, %.preheader.preheader.i.i.i ] ; 3 uses
  %.029.i.i.i.i.a = phi ptr [ %.032..0.i.i.i.i, %.preheader.i.i.i ], [ null, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i.a = phi ptr [ %i.j, %.preheader.i.i.i ], [ %i.b, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %.0..032.i.i.i.i, %.preheader.i.i.i ], [ %i.c, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.f = getelementptr i8, ptr %.030.i.i.i.i.a, i64 160
  %.032.i.val.i.i.i = load i64, ptr %i.f, align 16, !tbaa !3591 ; 2 uses
  %i.g = icmp ugt i64 %.0.i.val.i.i.i, %.032.i.val.i.i.i ; 2 uses
  %.032..0.i.i.i.i = select i1 %i.g, ptr %.030.i.i.i.i.a, ptr %.0.i.i.i.i, !unpredictable !107 ; 6 uses
  %.0..032.i.i.i.i = select i1 %i.g, ptr %.0.i.i.i.i, ptr %.030.i.i.i.i.a, !unpredictable !107 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i.i, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3590 ; 2 uses
  store ptr %.032..0.i.i.i.i, ptr %.0.i.i.i.i.a, align 8, !tbaa !3593
  %i.j = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i.i, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3588
  store ptr %i.k, ptr %i.h, align 8, !tbaa !3590
  store ptr %.029.i.i.i.i.a, ptr %.032..0.i.i.i.i, align 8, !tbaa !3594
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  %1 = tail call i64 @llvm.umax.i64(i64 %.0.i.val.i.i.i, i64 %.032.i.val.i.i.i)
  br i1 %.not.i.i.i.i, label %bb.c, label %.preheader.i.i.i, !llvm.loop !3595

bb.c:                                             ; preds = %.preheader.i.i.i
  store ptr %.0..032.i.i.i.i, ptr %i.j, align 8, !tbaa !3593
  store ptr %.032..0.i.i.i.i, ptr %.0..032.i.i.i.i, align 8, !tbaa !3594
  br label %_ZNK5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS6_mEUlvE_NS1_6WaiterISt6atomicEEEclEv.exit

_ZNK5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS6_mEUlvE_NS1_6WaiterISt6atomicEEEclEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr nofree noundef nonnull align 64 captures(address) dereferenceable(256) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3366, !noalias !3681 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not12.i.i.i.i, label %_ZN5folly16ThrottledLifoSemD2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.sroa.06.013.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.06.013.i.i.i.i, align 8, !tbaa !3366 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i.i, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i, label %_ZN5folly16ThrottledLifoSemD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3378

_ZN5folly16ThrottledLifoSemD2Ev.exit:             ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED0Ev(ptr noundef nonnull align 64 dereferenceable(256) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3366, !noalias !3684 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not12.i.i.i.i.i, label %_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.sroa.06.013.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.06.013.i.i.i.i.i, align 8, !tbaa !3366 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i.i.i, i8 0, i64 16, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i.i, label %_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3378

_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #34
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 64) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal range(i8 0, 2) i8 @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE3addEOS3_(ptr noundef nonnull align 64 dereferenceable(256) %0, ptr noundef nonnull align 16 dereferenceable(120) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_m(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(120) %1, i64 noundef -1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 64 ; 4 uses
  %i.e = and i64 %i.d, 4294967295
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %.sroa.speculated20.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 4294967295)
  %i.g = and i64 %i.d, -4294967296
  %i.h = or disjoint i64 %.sroa.speculated20.i.i.i, %i.g
  %i.i = cmpxchg weak ptr %i.c, i64 %i.d, i64 %i.h seq_cst monotonic, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %._crit_edge.i.i.i, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i: ; preds = %bb.a, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i
  %i.k = phi { i64, i1 } [ %i.q, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i ], [ %i.i, %bb.a ]
  %i.l = extractvalue { i64, i1 } %i.k, 0         ; 4 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 4294967295)
  %i.o = and i64 %i.l, -4294967296
  %i.p = or disjoint i64 %.sroa.speculated.i.i.i, %i.o
  %i.q = cmpxchg weak ptr %i.c, i64 %i.l, i64 %i.p seq_cst monotonic, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %._crit_edge.i.i.i, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i, %bb.a
  %.0.lcssa19.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.l, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i ] ; 2 uses
  %.lcssa18.i.i.i = phi i64 [ %i.f, %bb.a ], [ %i.n, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i ]
  %i.s = lshr i64 %.0.lcssa19.i.i.i, 33           ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  %i.t = and i64 %.0.lcssa19.i.i.i, 4294967296
  %.not10.i.i.i = icmp eq i64 %i.t, 0
  %or.cond.i.i.i = and i1 %.not.i.i.i, %.not10.i.i.i
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithDeadlineEOS3_m.exit

bb.b:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_ZN5folly16ThrottledLifoSem21maybeStartWakingChainEv(ptr noundef nonnull align 64 dereferenceable(136) %i.b)
  br label %_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithDeadlineEOS3_m.exit

_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithDeadlineEOS3_m.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  %i.u = icmp samesign ule i64 %.lcssa18.i.i.i, %i.s
  %i.v = zext i1 %i.u to i8
  ret i8 %i.v
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4takeEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::CPUThreadPoolExecutor::CPUTask") align 16 %0, ptr noundef nonnull align 64 dereferenceable(256) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %3 = alloca %"class.folly::WaitOptions", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8
  store i64 2000, ptr %3, align 8, !tbaa !3361
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !3429
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store i64 9223372036854775807, ptr %2, align 8
  %i.d = call noundef zeroext i1 @_ZN5folly16ThrottledLifoSem14try_wait_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 64 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEv(ptr dead_on_unwind noalias writable align 16 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE12try_take_forENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Optional") align 16 initializes((128, 129)) %0, ptr noundef nonnull align 64 dereferenceable(256) %1, i64 %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %4 = alloca %"class.folly::WaitOptions", align 8 ; 6 uses
  %5 = alloca %"struct.folly::CPUThreadPoolExecutor::CPUTask", align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8
  store i64 2000, ptr %4, align 8, !tbaa !3361
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !3429
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.e = mul nsw i64 %2, 1000000
  %i.f = add nsw i64 %i.d, %i.e
  store i64 %i.f, ptr %3, align 8
  %i.g = call noundef zeroext i1 @_ZN5folly16ThrottledLifoSem14try_wait_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 64 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEv(ptr dead_on_unwind noalias nonnull writable align 16 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i8 0, ptr %i.i, align 16, !tbaa !3432
  store ptr null, ptr %0, align 16, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 16, !tbaa !173
  store <2 x ptr> %i.n, ptr %i.j, align 16, !tbaa !173
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.k, align 16, !tbaa !55
  store ptr null, ptr %i.l, align 8, !tbaa !57
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef i64 %i.m(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(120) %5, ptr noundef nonnull align 16 dereferenceable(144) %0) #34, !inline_history !3434 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.r = load i64, ptr %i.q, align 16, !tbaa !3361
  store i64 %i.r, ptr %i.p, align 16, !tbaa !3361
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !173
  store ptr null, ptr %i.u, align 16, !tbaa !52
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !173
  store ptr null, ptr %i.t, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !98
  store i64 %i.y, ptr %i.w, align 8, !tbaa !98
  store ptr null, ptr %i.x, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !79
  store i64 %i.ad, ptr %i.ab, align 16, !tbaa !79
  store i8 1, ptr %i.i, align 16, !tbaa !3435
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !57  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i1.i, label %_ZN5folly18ThreadPoolExecutor4TaskD2Ev.exit, label %bb.d

end_hunk_2
begin_hunk_3_@llvm.smax.i64
!3391 = distinct !{!3391, !3392, !"_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE11try_emplaceIJZNS_31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_EEESt4pairINS1_23VectorContainerIteratorIPSP_IKS4_S7_EEEbEOS4_DpOT_: argument 0"}
!3392 = distinct !{!3392, !"_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE11try_emplaceIJZNS_31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_EEESt4pairINS1_23VectorContainerIteratorIPSP_IKS4_S7_EEEbEOS4_DpOT_"}
!3393 = !{!3394, !3397, i64 8}
!3394 = !{!"_ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEEE", !3395, i64 0, !3397, i64 8, !3398, i64 16}
!3395 = !{!"_ZTSN5folly3f146detail21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEE", !3396, i64 0}
!3396 = !{!"p1 _ZTSSt4pairIKPvN5folly8FunctionIKFlvEEEE", !14, i64 0}
!3397 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIjEE", !14, i64 0}
!3398 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEELb0EEE", !3385, i64 0}
!3399 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!3400 = distinct !{!3400, !3379}
!3401 = distinct !{!3401, !3379}
!3402 = !{!3403, !9, i64 15}
!3403 = !{!"_ZTSN5folly3f146detail8F14ChunkIjEE", !3404, i64 0, !9, i64 14, !9, i64 15, !3405, i64 16}
!3404 = !{!"_ZTSSt5arrayIhLm14EE", !9, i64 0}
!3405 = !{!"_ZTSSt5arrayINSt15aligned_storageILm4ELm4EE4typeELm12EE", !9, i64 0}
!3406 = distinct !{!3406, !3379}
!3407 = !{!3403, !9, i64 14}
!3408 = !{!3409, !3356}
!3409 = distinct !{!3409, !3410, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5beginEv: argument 0"}
!3410 = distinct !{!3410, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5beginEv"}
!3411 = distinct !{!3411, !3379}
!3412 = !{!3395, !3396, i64 0}
!3413 = !{!3414, !14, i64 0}
!3414 = !{!"_ZTSSt4pairIKPvN5folly8FunctionIKFlvEEEE", !14, i64 0, !3415, i64 16}
!3415 = !{!"_ZTSN5folly8FunctionIKFlvEEE", !9, i64 0, !14, i64 48, !14, i64 56}
!3416 = !{!3417, !3417, i64 0}
!3417 = !{!"p1 _ZTSN5folly23StripedThrottledLifoSemINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEE", !14, i64 0}
!3418 = !{!3415, !14, i64 48}
!3419 = !{!3415, !14, i64 56}
!3420 = !{!3421}
!3421 = distinct !{!3421, !3422, !"_ZSt11make_uniqueIN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEJRKNS0_16ThrottledLifoSem7OptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!3422 = distinct !{!3422, !"_ZSt11make_uniqueIN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEJRKNS0_16ThrottledLifoSem7OptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!3423 = !{!3424, !2617, i64 0}
!3424 = !{!"_ZTSSt10_Head_baseILm0EPN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEELb0EE", !2617, i64 0}
!3425 = distinct !{null, null}
!3426 = !{!3427}
!3427 = distinct !{!3427, !3428, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5beginEv: argument 0"}
!3428 = distinct !{!3428, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5beginEv"}
!3429 = !{!3430, !44, i64 8}
!3430 = !{!"_ZTSN5folly11WaitOptionsE", !66, i64 0, !44, i64 8}
!3431 = distinct !{!3431, !3379}
!3432 = !{!3433, !44, i64 128}
!3433 = !{!"_ZTSN5folly8OptionalINS_21CPUThreadPoolExecutor7CPUTaskEE31StorageNonTriviallyDestructibleE", !9, i64 0, !44, i64 128}
!3434 = distinct !{null, null, null, null, null, null}
!3435 = !{!3436, !44, i64 128}
!3436 = !{!"_ZTSN5folly8OptionalINS_21CPUThreadPoolExecutor7CPUTaskEEE", !3433, i64 0}
!3437 = distinct !{!3437, !3379}
!3438 = distinct !{!3438, !3439}
!3439 = !{!"llvm.loop.unroll.disable"}
!3440 = distinct !{!3440, !3379}
!3441 = !{!3442, !3443, i64 0}
!3442 = !{!"_ZTSN6google4base21CheckOpMessageBuilderE", !3443, i64 0}
!3443 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!3444 = !{!3397, !3397, i64 0}
!3445 = !{!3446, !3446, i64 0}
!3446 = !{!"p1 omnipotent char", !14, i64 0}
!3447 = distinct !{null, null, null, null, null, null}
!3448 = distinct !{null, null, null, null, null, null}
!3449 = distinct !{!3449, !3379}
!3450 = !{!3396, !3396, i64 0}
!3451 = distinct !{!3451, !3379}
!3452 = distinct !{!3452, !3439}
!3453 = !{!44, !44, i64 0}
!3454 = !{!3455, !44, i64 0}
!3455 = !{!"_ZTSN5folly6detail18ScopeGuardImplBaseE", !44, i64 0}
!3456 = !{!3457}
!3457 = distinct !{!3457, !3458, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSH_: argument 0"}
!3458 = distinct !{!3458, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSH_"}
!3459 = !{!3460, !3460, i64 0}
!3460 = !{!"p1 bool", !14, i64 0}
!3461 = !{!3462, !3462, i64 0}
!3462 = !{!"p1 long", !14, i64 0}
!3463 = !{!3464, !3464, i64 0}
!3464 = !{!"p2 _ZTSN5folly3f146detail8F14ChunkIjEE", !3465, i64 0}
!3465 = !{!"any p2 pointer", !14, i64 0}
!3466 = !{!3467, !3467, i64 0}
!3467 = !{!"p2 omnipotent char", !3465, i64 0}
!3468 = !{!3469, !3469, i64 0}
!3469 = !{!"p1 _ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEEE", !14, i64 0}
!3470 = !{!3471, !3471, i64 0}
!3471 = !{!"p2 _ZTSSt4pairIKPvN5folly8FunctionIKFlvEEEE", !3465, i64 0}
!3472 = distinct !{!3472, !3379}
!3473 = distinct !{!3473, !3379}
!3474 = !{!"branch_weights", i32 1999, i32 1}
!3475 = !{!"branch_weights", i32 1, i32 0}
!3476 = distinct !{!3476, !3379}
!3477 = distinct !{!3477, !3379}
!3478 = !{!3479, !3469, i64 48}
!3479 = !{!"_ZTSZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPvNS_8FunctionIKFlvEEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_", !3460, i64 0, !3462, i64 8, !3464, i64 16, !3462, i64 24, !3467, i64 32, !3462, i64 40, !3469, i64 48, !3462, i64 56, !3471, i64 64, !3462, i64 72, !3462, i64 80}
!3480 = !{!3479, !3460, i64 0}
!3481 = !{i8 0, i8 2}
!3482 = !{!3479, !3462, i64 8}
!3483 = !{i64 8}
!3484 = !{!3479, !3464, i64 16}
!3485 = !{!3479, !3462, i64 24}
!3486 = !{!3479, !3467, i64 32}
!3487 = !{!3479, !3462, i64 40}
!3488 = !{!3479, !3462, i64 56}
!3489 = !{!3479, !3462, i64 80}
!3490 = !{!3479, !3462, i64 72}
!3491 = !{!3479, !3471, i64 64}
!3492 = distinct !{null, null, null, null, null}
!3493 = distinct !{null, null, null, null, null}
!3494 = !{!3495, !3417, i64 0}
!3495 = !{!"_ZTSZN5folly31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_", !3417, i64 0}
!3496 = !{!3497, !34, i64 0}
!3497 = !{!"_ZTSN5folly6detail22IntegralSizePolicyBaseImLb1ELb0EEE", !34, i64 0}
!3498 = !{!3499, !34, i64 0}
!3499 = !{!"_ZTSSt4pairIlmE", !34, i64 0, !34, i64 8}
!3500 = !{!3499, !34, i64 8}
!3501 = distinct !{!3501, !3379}
!3502 = !{!3503, !34, i64 8}
!3503 = !{!"_ZTSN5folly12small_vectorISt4pairIlmELm64EvE19HeapPtrWithCapacityE", !3504, i64 0, !34, i64 8}
!3504 = !{!"p1 _ZTSSt4pairIlmE", !14, i64 0}
!3505 = distinct !{!3505, !3379}
!3506 = !{!3507, !3462, i64 0}
!3507 = !{!"_ZTSZN5folly12small_vectorISt4pairIlmELm64EvE12emplace_backIJRlRmEEERS2_DpOT_EUlPvE_", !3462, i64 0, !3462, i64 8}
!3508 = !{!3507, !3462, i64 8}
!3509 = distinct !{!3509, !3379}
!3510 = distinct !{!3510, !3439}
!3511 = !{!"branch_weights", i32 1, i32 1048575}
!3512 = distinct !{!3512, !3379}
!3513 = distinct !{!3513, !3379}
!3514 = distinct !{!3514, !3379}
!3515 = distinct !{!3515, !3379}
!3516 = distinct !{!3516, !3379}
!3517 = distinct !{!3517, !3379}
!3518 = distinct !{!3518, !3439}
!3519 = distinct !{!3519, !3379}
!3520 = distinct !{!3520, !3379}
!3521 = distinct !{!3521, !3379}
!3522 = distinct !{!3522, !3379}
!3523 = distinct !{!3523, !3379, !3524, !3525}
!3524 = !{!"llvm.loop.isvectorized", i32 1}
!3525 = !{!"llvm.loop.unroll.runtime.disable"}
!3526 = distinct !{!3526, !3379}
!3527 = distinct !{!3527, !3379}
!3528 = distinct !{!3528, !3379}
!3529 = distinct !{!3529, !3379}
!3530 = distinct !{!3530, !3379}
!3531 = distinct !{!3531, !3439}
!3532 = distinct !{!3532, !3379}
!3533 = distinct !{!3533, !3379}
!3534 = distinct !{!3534, !3379}
!3535 = distinct !{!3535, !3379, !3524, !3525}
!3536 = distinct !{!3536, !3379}
!3537 = distinct !{!3537, !3379}
!3538 = distinct !{!3538, !3379}
!3539 = distinct !{!3539, !3379}
!3540 = distinct !{!3540, !3379}
!3541 = !{!3542, !3542, i64 0}
!3542 = !{!"p1 _ZTSN5folly16ThrottledLifoSemE", !14, i64 0}
!3543 = !{!3544, !44, i64 17}
!3544 = !{!"_ZTSN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE26DistributedMutexStateProxyE", !3545, i64 0, !34, i64 8, !44, i64 16, !44, i64 17, !34, i64 24, !3545, i64 32, !3545, i64 40}
!3545 = !{!"p1 _ZTSN5folly6detail17distributed_mutex6WaiterISt6atomicEE", !14, i64 0}
!3546 = !{!3547, !34, i64 0}
!3547 = !{!"_ZTSN5boost9intrusive6detail11size_holderILb1EmvEE", !34, i64 0}
!3548 = !{!3544, !44, i64 16}
!3549 = !{!3550, !3550, i64 0}
!3550 = !{!"p1 _ZTSN5folly16ThrottledLifoSem6WaiterE", !14, i64 0}
!3551 = !{!3544, !3545, i64 0}
!3552 = !{!3544, !34, i64 8}
!3553 = !{!3544, !3545, i64 40}
!3554 = distinct !{!3554, !3379, !3555}
!3555 = !{!"llvm.loop.peeled.count", i32 1}
!3556 = distinct !{!3556, !3379}
!3557 = !{!3558, !14, i64 0}
!3558 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !14, i64 0}
!3559 = !{!3544, !34, i64 24}
!3560 = !{!3544, !3545, i64 32}
!3561 = !{!3562, !3542, i64 0}
!3562 = !{!"_ZTSZN5folly16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_", !3542, i64 0}
!3563 = !{!3564, !3545, i64 8}
!3564 = !{!"_ZTSN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_NS1_6WaiterISt6atomicEEEE", !3562, i64 0, !3545, i64 8}
!3565 = !{i64 64}
!3566 = !{!3567, !34, i64 0}
!3567 = !{!"_ZTS8timespec", !34, i64 0, !34, i64 8}
!3568 = !{!3567, !34, i64 8}
!3569 = distinct !{!3569, !3379}
!3570 = !{i64 12072793}
!3571 = distinct !{!3571, !3379}
!3572 = !{!3573, !3576, i64 40}
!3573 = !{!"_ZTSN5folly18parking_lot_detail6BucketE", !3574, i64 0, !3576, i64 40, !3576, i64 48, !38, i64 56}
!3574 = !{!"_ZTSSt5mutex", !3575, i64 0}
!3575 = !{!"_ZTSSt12__mutex_base", !9, i64 0}
!3576 = !{!"p1 _ZTSN5folly18parking_lot_detail12WaitNodeBaseE", !14, i64 0}
!3577 = !{!3578, !3576, i64 16}
!3578 = !{!"_ZTSN5folly18parking_lot_detail12WaitNodeBaseE", !34, i64 0, !34, i64 8, !3576, i64 16, !3576, i64 24, !44, i64 32, !3574, i64 40, !3579, i64 80}
!3579 = !{!"_ZTSSt18condition_variable", !3580, i64 0}
!3580 = !{!"_ZTSSt9__condvar", !9, i64 0}
!3581 = !{!3578, !34, i64 0}
!3582 = !{!3578, !34, i64 8}
!3583 = !{!3573, !3576, i64 48}
!3584 = !{!3578, !3576, i64 24}
!3585 = !{!3578, !44, i64 32}
!3586 = distinct !{!3586, !3379}
!3587 = distinct !{!3587, !3379}
!3588 = !{!3589, !3382, i64 8}
!3589 = !{!"_ZTSN5folly17IntrusiveHeapNodeIvEE", !3382, i64 0, !3382, i64 8, !3382, i64 16}
!3590 = !{!3589, !3382, i64 16}
!3591 = !{!3592, !34, i64 160}
!3592 = !{!"_ZTSN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeE", !3589, i64 0, !80, i64 32, !34, i64 160}
!3593 = !{!3382, !3382, i64 0}
!3594 = !{!3589, !3382, i64 0}
!3595 = distinct !{!3595, !3379}
!3596 = distinct !{null, ptr @_ZN5folly18ThreadPoolExecutor4TaskD2Ev, null, null, null, null, null}
!3597 = distinct !{null, ptr @_ZN5folly18ThreadPoolExecutor4TaskD2Ev, null, null, null}
!3598 = distinct !{null, ptr @_ZN5folly18ThreadPoolExecutor4TaskD2Ev, null, null}
!3599 = distinct !{!3599, !3379}
!3600 = distinct !{null, null, null, null, null}
!3601 = distinct !{null, null, null}
!3602 = distinct !{null}
!3603 = distinct !{null, null, null, null}
!3604 = distinct !{!3604, !3379}
!3605 = distinct !{!3605, !3379}
!3606 = !{!3607, !3608, i64 0}
!3607 = !{!"_ZTSSt10_Head_baseILm0EPN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeELb0EE", !3608, i64 0}
!3608 = !{!"p1 _ZTSN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeE", !14, i64 0}
!3609 = !{!3610}
!3610 = distinct !{!3610, !3611, !"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_: argument 0"}
!3611 = distinct !{!3611, !"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_"}
!3612 = distinct !{!3612, !3379, !3555}
!3613 = distinct !{!3613, !3379}
!3614 = !{!3608, !3608, i64 0}
!3615 = distinct !{null, null, null, null}
!3616 = distinct !{!3616, !3379}
!3617 = !{!3618, !3542, i64 8}
!3618 = !{!"_ZTSZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEEUlvE_", !3460, i64 0, !3542, i64 8, !3619, i64 16}
!3619 = !{!"p1 _ZTSN5folly8OptionalINS_16ThrottledLifoSem6WaiterEEE", !14, i64 0}
!3620 = !{!3619, !3619, i64 0}
!3621 = !{!3622, !44, i64 24}
!3622 = !{!"_ZTSN5folly8OptionalINS_16ThrottledLifoSem6WaiterEE31StorageNonTriviallyDestructibleE", !9, i64 0, !44, i64 24}
!3623 = !{!3624, !44, i64 24}
!3624 = !{!"_ZTSN5folly8OptionalINS_16ThrottledLifoSem6WaiterEEE", !3622, i64 0}
!3625 = distinct !{!3625, !3379}
!3626 = !{!3618, !3460, i64 0}
!3627 = !{!3618, !3619, i64 16}
!3628 = !{!3629}
!3629 = distinct !{!3629, !3630, !"_ZN5folly6detailplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_EENS0_14ScopeGuardImplINSt5decayISH_E4typeELb1EEENS0_16ScopeGuardOnExitEOSH_: argument 0"}
!3630 = distinct !{!3630, !"_ZN5folly6detailplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_EENS0_14ScopeGuardImplINSt5decayISH_E4typeELb1EEENS0_16ScopeGuardOnExitEOSH_"}
!3631 = !{!3632, !3632, i64 0}
!3632 = !{!"p1 _ZTSN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EEE", !14, i64 0}
!3633 = !{!3634, !3634, i64 0}
!3634 = !{!"p1 _ZTSN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE26DistributedMutexStateProxyE", !14, i64 0}
!3635 = !{!3636}
!3636 = distinct !{!3636, !3637, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE17erase_and_disposeINS0_6detail13null_disposerEEENS0_13list_iteratorISB_Lb0EEENSG_ISB_Lb1EEET_: argument 0"}
!3637 = distinct !{!3637, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE17erase_and_disposeINS0_6detail13null_disposerEEENS0_13list_iteratorISB_Lb0EEENSG_ISB_Lb1EEET_"}
!3638 = distinct !{!3638, !3379, !3555}
!3639 = distinct !{!3639, !3379}
!3640 = distinct !{!3640, !3379}
!3641 = distinct !{!3641, !3379}
!3642 = !{!3643, !3643, i64 0}
!3643 = !{!"_ZTSN5folly6detail11FutexResultE", !9, i64 0}
!3644 = distinct !{!3644, !3379}
!3645 = !{!3646}
!3646 = distinct !{!3646, !3647, !"_ZN5folly6detail17distributed_mutex8coalesceINS1_17RequestWithReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE0_EENS1_6WaiterISt6atomicEESJ_EENSt11conditionalIXsr3std7is_voidINS_13invoke_detail6traitsIRKT1_E6resultIEEEE5valueENS1_19TaskWithoutCoalesceISR_SF_EENSO_IXlesr6SizeofISW_EE5valueszsrSF_8storage_ENS1_16TaskWithCoalesceISR_SF_EENS1_22TaskWithBigReturnValueISR_SF_EEE4typeEE4typeERSE_RSF_: argument 0"}
!3647 = distinct !{!3647, !"_ZN5folly6detail17distributed_mutex8coalesceINS1_17RequestWithReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE0_EENS1_6WaiterISt6atomicEESJ_EENSt11conditionalIXsr3std7is_voidINS_13invoke_detail6traitsIRKT1_E6resultIEEEE5valueENS1_19TaskWithoutCoalesceISR_SF_EENSO_IXlesr6SizeofISW_EE5valueszsrSF_8storage_ENS1_16TaskWithCoalesceISR_SF_EENS1_22TaskWithBigReturnValueISR_SF_EEE4typeEE4typeERSE_RSF_"}
!3648 = distinct !{!3648, !3379, !3555}
!3649 = distinct !{!3649, !3379}
!3650 = !{!3651, !3632, i64 0}
!3651 = !{!"_ZTSZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSG_E6resultIEESG_EUlvE_", !3632, i64 0, !3634, i64 8}
!3652 = !{!3651, !3634, i64 8}
!3653 = !{!3654, !3542, i64 8}
!3654 = !{!"_ZTSZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEEUlvE0_", !3619, i64 0, !3542, i64 8}
!3655 = !{!3654, !3619, i64 0}
!3656 = !{!3657}
!3657 = distinct !{!3657, !3658, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE17erase_and_disposeINS0_6detail13null_disposerEEENS0_13list_iteratorISB_Lb0EEENSG_ISB_Lb1EEET_: argument 0"}
!3658 = distinct !{!3658, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE17erase_and_disposeINS0_6detail13null_disposerEEENS0_13list_iteratorISB_Lb0EEENSG_ISB_Lb1EEET_"}
!3659 = !{!3660, !3545, i64 16}
!3660 = !{!"_ZTSN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS5_10time_pointIT_T0_EEEUlvE0_NS1_6WaiterISt6atomicEEEE", !3654, i64 0, !3545, i64 16}
!3661 = distinct !{!3661, !3379, !3555}
!3662 = distinct !{!3662, !3379}
!3663 = !{!3664, !3542, i64 0}
!3664 = !{!"_ZTSZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEEUlvE1_", !3542, i64 0}
!3665 = !{!3666, !3545, i64 8}
!3666 = !{!"_ZTSN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS5_10time_pointIT_T0_EEEUlvE1_NS1_6WaiterISt6atomicEEEE", !3664, i64 0, !3545, i64 8}
!3667 = !{!3668, !3669, i64 0}
!3668 = !{!"_ZTSZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_", !3669, i64 0, !3670, i64 8}
!3669 = !{!"p1 _ZTSSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EE", !14, i64 0}
!3670 = !{!"p1 _ZTSN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEE", !14, i64 0}
!3671 = !{!3668, !3670, i64 8}
!3672 = distinct !{null, null, null, null, null}
!3673 = !{!3674}
!3674 = distinct !{!3674, !3675, !"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_: argument 0"}
!3675 = distinct !{!3675, !"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_"}
!3676 = distinct !{!3676, !3379, !3555}
!3677 = distinct !{!3677, !3379}
!3678 = !{!3679, !3670, i64 0}
!3679 = !{!"_ZTSZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mEUlvE_", !3670, i64 0, !3669, i64 8}
!3680 = !{!3679, !3669, i64 8}
!3681 = !{!3682}
!3682 = distinct !{!3682, !3683, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5beginEv: argument 0"}
!3683 = distinct !{!3683, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5beginEv"}
!3684 = !{!3685}
!3685 = distinct !{!3685, !3686, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5beginEv: argument 0"}
!3686 = distinct !{!3686, !"_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5beginEv"}
!3687 = !DISubprogram(name: "~Thread", linkageName: "_ZN5folly18ThreadPoolExecutor6ThreadD4Ev", scope: !3688, file: !2639, line: 236, type: !4488, scopeLine: 236, containingType: !3688, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Thread", scope: !2640, file: !2639, line: 229, size: 512, align: 512, flags: DIFlagProtected | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3689, vtableHolder: !3691, identifier: "_ZTSN5folly18ThreadPoolExecutor6ThreadE")
!3689 = !{!3690, !3698, !3699, !3700, !3794, !4180, !4391, !4455, !4487, !3687, !4491}
!3690 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3688, baseType: !3691, extraData: i32 0)
!3691 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ThreadHandle", scope: !2640, file: !2639, line: 153, size: 64, flags: DIFlagPublic | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3692, vtableHolder: !3691, identifier: "_ZTSN5folly18ThreadPoolExecutor12ThreadHandleE")
!3692 = !{!3693, !3694}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$ThreadHandle", scope: !2639, file: !2639, baseType: !119, size: 64, flags: DIFlagArtificial)
!3694 = !DISubprogram(name: "~ThreadHandle", linkageName: "_ZN5folly18ThreadPoolExecutor12ThreadHandleD4Ev", scope: !3691, file: !2639, line: 155, type: !3695, scopeLine: 155, containingType: !3691, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{null, !3697}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3698 = !DIDerivedType(tag: DW_TAG_variable, name: "nextId", scope: !3688, file: !2639, line: 240, baseType: !1159, flags: DIFlagStaticMember)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3688, file: !2639, line: 241, baseType: !313, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "processedTasks", scope: !3688, file: !2639, line: 245, baseType: !3701, size: 64, offset: 128)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "relaxed_atomic<unsigned long>", scope: !87, file: !3702, line: 284, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3703, templateParams: !3749, identifier: "_ZTSN5folly14relaxed_atomicImEE")
!3702 = !DIFile(filename: "_deps/folly-src/folly/synchronization/RelaxedAtomic.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "34724e566be972a9cf7eae42a7ab235b")
!3703 = !{!3704}
!3704 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3701, baseType: !3705, extraData: i32 0)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "relaxed_atomic_integral_base<unsigned long>", scope: !195, file: !3702, line: 100, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3706, templateParams: !3749, identifier: "_ZTSN5folly6detail28relaxed_atomic_integral_baseImEE")
!3706 = !{!3707, !3751, !3755, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3771, !3774, !3777, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793}
!3707 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3705, baseType: !3708, flags: DIFlagPrivate, extraData: i32 0)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "relaxed_atomic_base<unsigned long>", scope: !195, file: !3702, line: 38, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3709, templateParams: !3749, identifier: "_ZTSN5folly6detail19relaxed_atomic_baseImEE")
!3709 = !{!3710, !3711, !3715, !3720, !3723, !3726, !3731, !3736, !3737, !3738, !3739, !3740, !3744, !3747, !3748}
!3710 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3708, baseType: !1159, flags: DIFlagProtected, extraData: i32 0)
!3711 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly6detail19relaxed_atomic_baseImEaSEm", scope: !3708, file: !3702, line: 49, type: !3712, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!211, !3714, !211}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3715 = !DISubprogram(name: "operator=", linkageName: "_ZNV5folly6detail19relaxed_atomic_baseImEaSEm", scope: !3708, file: !3702, line: 53, type: !3716, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!211, !3718, !211}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3719 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3708)
!3720 = !DISubprogram(name: "store", linkageName: "_ZN5folly6detail19relaxed_atomic_baseImE5storeEm", scope: !3708, file: !3702, line: 58, type: !3721, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{null, !3714, !211}
!3723 = !DISubprogram(name: "store", linkageName: "_ZNV5folly6detail19relaxed_atomic_baseImE5storeEm", scope: !3708, file: !3702, line: 61, type: !3724, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !3718, !211}
!3726 = !DISubprogram(name: "load", linkageName: "_ZNK5folly6detail19relaxed_atomic_baseImE4loadEv", scope: !3708, file: !3702, line: 65, type: !3727, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!211, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3708)
!3731 = !DISubprogram(name: "load", linkageName: "_ZNVK5folly6detail19relaxed_atomic_baseImE4loadEv", scope: !3708, file: !3702, line: 66, type: !3732, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!211, !3734}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3719)
!3736 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNK5folly6detail19relaxed_atomic_baseImEcvmEv", scope: !3708, file: !3702, line: 70, type: !3727, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3737 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNVK5folly6detail19relaxed_atomic_baseImEcvmEv", scope: !3708, file: !3702, line: 71, type: !3732, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3738 = !DISubprogram(name: "exchange", linkageName: "_ZN5folly6detail19relaxed_atomic_baseImE8exchangeEm", scope: !3708, file: !3702, line: 73, type: !3712, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3739 = !DISubprogram(name: "exchange", linkageName: "_ZNV5folly6detail19relaxed_atomic_baseImE8exchangeEm", scope: !3708, file: !3702, line: 76, type: !3716, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3740 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZN5folly6detail19relaxed_atomic_baseImE21compare_exchange_weakERmm", scope: !3708, file: !3702, line: 80, type: !3741, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!90, !3714, !3743, !211}
!3743 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !211, size: 64)
!3744 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNV5folly6detail19relaxed_atomic_baseImE21compare_exchange_weakERmm", scope: !3708, file: !3702, line: 84, type: !3745, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!90, !3718, !3743, !211}
!3747 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZN5folly6detail19relaxed_atomic_baseImE23compare_exchange_strongERmm", scope: !3708, file: !3702, line: 89, type: !3741, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3748 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNV5folly6detail19relaxed_atomic_baseImE23compare_exchange_strongERmm", scope: !3708, file: !3702, line: 93, type: !3745, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3749 = !{!3750}
!3750 = !DITemplateTypeParameter(name: "T", type: !211)
!3751 = !DISubprogram(name: "fetch_add", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImE9fetch_addEm", scope: !3705, file: !3702, line: 118, type: !3752, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!211, !3754, !211}
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3755 = !DISubprogram(name: "fetch_add", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImE9fetch_addEm", scope: !3705, file: !3702, line: 121, type: !3756, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!211, !3758, !211}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3759 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3705)
!3760 = !DISubprogram(name: "fetch_sub", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImE9fetch_subEm", scope: !3705, file: !3702, line: 125, type: !3752, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3761 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImE9fetch_subEm", scope: !3705, file: !3702, line: 128, type: !3756, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3762 = !DISubprogram(name: "fetch_and", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImE9fetch_andEm", scope: !3705, file: !3702, line: 132, type: !3752, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3763 = !DISubprogram(name: "fetch_and", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImE9fetch_andEm", scope: !3705, file: !3702, line: 135, type: !3756, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3764 = !DISubprogram(name: "fetch_or", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImE8fetch_orEm", scope: !3705, file: !3702, line: 139, type: !3752, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3765 = !DISubprogram(name: "fetch_or", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImE8fetch_orEm", scope: !3705, file: !3702, line: 142, type: !3756, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3766 = !DISubprogram(name: "fetch_xor", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImE9fetch_xorEm", scope: !3705, file: !3702, line: 146, type: !3752, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3767 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImE9fetch_xorEm", scope: !3705, file: !3702, line: 149, type: !3756, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3768 = !DISubprogram(name: "operator++", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImEppEv", scope: !3705, file: !3702, line: 153, type: !3769, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!211, !3754}
!3771 = !DISubprogram(name: "operator++", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImEppEv", scope: !3705, file: !3702, line: 154, type: !3772, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!211, !3758}
!3774 = !DISubprogram(name: "operator++", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImEppEi", scope: !3705, file: !3702, line: 156, type: !3775, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!211, !3754, !123}
!3777 = !DISubprogram(name: "operator++", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImEppEi", scope: !3705, file: !3702, line: 157, type: !3778, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!211, !3758, !123}
!3780 = !DISubprogram(name: "operator--", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImEmmEv", scope: !3705, file: !3702, line: 159, type: !3769, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3781 = !DISubprogram(name: "operator--", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImEmmEv", scope: !3705, file: !3702, line: 160, type: !3772, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3782 = !DISubprogram(name: "operator--", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImEmmEi", scope: !3705, file: !3702, line: 162, type: !3775, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3783 = !DISubprogram(name: "operator--", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImEmmEi", scope: !3705, file: !3702, line: 163, type: !3778, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3784 = !DISubprogram(name: "operator+=", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImEpLEm", scope: !3705, file: !3702, line: 165, type: !3752, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3785 = !DISubprogram(name: "operator+=", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImEpLEm", scope: !3705, file: !3702, line: 166, type: !3756, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3786 = !DISubprogram(name: "operator-=", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImEmIEm", scope: !3705, file: !3702, line: 168, type: !3752, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3787 = !DISubprogram(name: "operator-=", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImEmIEm", scope: !3705, file: !3702, line: 169, type: !3756, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3788 = !DISubprogram(name: "operator&=", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImEaNEm", scope: !3705, file: !3702, line: 171, type: !3752, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3789 = !DISubprogram(name: "operator&=", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImEaNEm", scope: !3705, file: !3702, line: 172, type: !3756, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3790 = !DISubprogram(name: "operator|=", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImEoREm", scope: !3705, file: !3702, line: 174, type: !3752, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3791 = !DISubprogram(name: "operator|=", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImEoREm", scope: !3705, file: !3702, line: 175, type: !3756, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3792 = !DISubprogram(name: "operator^=", linkageName: "_ZN5folly6detail28relaxed_atomic_integral_baseImEeOEm", scope: !3705, file: !3702, line: 177, type: !3752, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3793 = !DISubprogram(name: "operator^=", linkageName: "_ZNV5folly6detail28relaxed_atomic_integral_baseImEeOEm", scope: !3705, file: !3702, line: 178, type: !3756, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3688, file: !2639, line: 247, baseType: !3795, size: 64, offset: 192)
end_hunk_3
