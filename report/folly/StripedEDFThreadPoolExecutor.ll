Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/StripedEDFThreadPoolExecutor?download=true
inline.NumInlined: 1775
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_:bb.a
bb.f:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.h:                                             ; preds = %bb.f
  store ptr %i.v, ptr %i.s, align 8, !tbaa !3687
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !3697
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.i:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3697 ; 4 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !3696
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !3691
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !3697
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.v, ptr %i.al, align 8, !tbaa !3691
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.am = atomicrmw sub ptr %i.o, i64 1 monotonic, align 8 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.034, i64 40 ; 2 uses
  %i.ao = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #45
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #34 ; 0 uses
  resume { ptr, i32 } %i.ap

bb.n:                                             ; preds = %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.034, i64 32
  store i8 1, ptr %i.ar, align 8, !tbaa !3698
  %i.as = getelementptr inbounds nuw i8, ptr %.034, i64 80
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.as) #34
  %i.at = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #34 ; 0 uses
  br label %.loopexit, !llvm.loop !3682

.critedge:                                        ; preds = %bb.d, %.lr.ph
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.critedge, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.n
  %i.au = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #34 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN5folly18parking_lot_detail6Bucket9bucketForEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postSlowWaiterMayBlockEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #35 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br label %.backedge, !llvm.loop !3699

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
  tail call void @__clang_call_terminate(ptr %i.m) #41
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #36

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !1757 ; 2 uses
  %i.b = icmp eq ptr %.val2, null
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %.val3 = phi ptr [ %.val, %bb.o ], [ %.val2, %bb.a ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1759 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1760 ; 3 uses
  %i.g = icmp eq ptr %i.d, null                   ; 2 uses
  %i.h = icmp eq ptr %i.f, null
  %or.cond.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i, label %bb.b, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph
  %.phi.trans.insert.i = getelementptr i8, ptr %i.d, i64 160
  %.031.i.val.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !tbaa !1762
  br label %.preheader.i

bb.b:                                             ; preds = %.lr.ph
  %i.i = select i1 %i.g, ptr %i.f, ptr %i.d       ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !1763
  %.not38.i.i = icmp eq ptr %i.i, null
  br i1 %.not38.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.i, align 8, !tbaa !1764
  br label %bb.e

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.031.i.val.i = phi i64 [ %i.s, %.preheader.i ], [ %.031.i.val.pre.i, %.preheader.preheader.i ] ; 3 uses
  %.031.i.i = phi ptr [ %.031..030.i.i, %.preheader.i ], [ %i.d, %.preheader.preheader.i ] ; 3 uses
  %.030.i.i = phi ptr [ %i.p, %.preheader.i ], [ %i.f, %.preheader.preheader.i ] ; 4 uses
  %.029.i.i = phi ptr [ %.030..031.i.i, %.preheader.i ], [ null, %.preheader.preheader.i ]
  %.0.i.i = phi ptr [ %i.q, %.preheader.i ], [ %i.a, %.preheader.preheader.i ]
  %i.j = getelementptr i8, ptr %.031.i.i, i64 168
  %.031.i.val7.i = load i64, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.030.i.i, i64 160
  %.030.i.val.i = load i64, ptr %i.k, align 16, !tbaa !1762 ; 3 uses
  %i.l = getelementptr i8, ptr %.030.i.i, i64 168
  %.030.i.val8.i = load i64, ptr %i.l, align 8
  %.not.i.i.i.i.i = icmp eq i64 %.031.i.val.i, %.030.i.val.i
  %i.m = icmp ugt i64 %.031.i.val.i, %.030.i.val.i
  %i.n = icmp ugt i64 %.031.i.val7.i, %.030.i.val8.i
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.n, i1 %i.m ; 3 uses
  %.031..030.i.i = select i1 %.0.i.i.i.i.i, ptr %.031.i.i, ptr %.030.i.i, !unpredictable !184 ; 3 uses
  %.030..031.i.i = select i1 %.0.i.i.i.i.i, ptr %.030.i.i, ptr %.031.i.i, !unpredictable !184 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.030..031.i.i, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1760 ; 2 uses
  store ptr %.030..031.i.i, ptr %.0.i.i, align 8, !tbaa !1763
  %i.q = getelementptr inbounds nuw i8, ptr %.030..031.i.i, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1759
  store ptr %i.r, ptr %i.o, align 8, !tbaa !1760
  store ptr %.029.i.i, ptr %.030..031.i.i, align 8, !tbaa !1764
  %.not.i.i = icmp eq ptr %i.p, null
  %i.s = select i1 %.0.i.i.i.i.i, i64 %.031.i.val.i, i64 %.030.i.val.i, !unpredictable !184
  br i1 %.not.i.i, label %bb.d, label %.preheader.i, !llvm.loop !93

bb.d:                                             ; preds = %.preheader.i
  store ptr %.031..030.i.i, ptr %i.q, align 8, !tbaa !1763
  store ptr %.030..031.i.i, ptr %.031..030.i.i, align 8, !tbaa !1764
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  store ptr inttoptr (i64 1 to ptr), ptr %.val3, align 8, !tbaa !1764
  %i.t = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.val3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !217  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = tail call noundef i64 %i.x(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.y, ptr noundef null) #34, !inline_history !94 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 80) #43
  br label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.val3, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ac, align 8, !tbaa !116
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !117
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #34, !call_target !135, !inline_history !95
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !119
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #34, !call_target !150, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i.i1 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.af, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.m, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !198

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #34
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.val3, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !130 ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.at = tail call noundef i64 %i.as(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(120) %i.t, ptr noundef null) #34, !inline_history !96 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val3, i64 noundef 176) #43
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1757 ; 2 uses
  %i.au = icmp eq ptr %.val, null
  br i1 %i.au, label %._crit_edge, label %.lr.ph, !llvm.loop !3700

._crit_edge:                                      ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18ThreadPoolExecutor4TaskD2Ev(ptr noundef nonnull align 16 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = tail call noundef i64 %i.d(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef null) #34, !inline_history !3701 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #43
  br label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !126 ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !116
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !117
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !call_target !135, !inline_history !5
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !call_target !150, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !198

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !130  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = tail call noundef i64 %i.y(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef null) #34, !inline_history !0 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEv:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !1743, !alias.scope !3715
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %i.k, ptr %i.n, align 8, !tbaa !1739, !alias.scope !3715
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.o, align 1, !tbaa !1736, !alias.scope !3715
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !3715
  store ptr %.018.i.i, ptr %i.q, align 8, !tbaa !1744, !alias.scope !3715
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !3715
  br label %bb.k

bb.c:                                             ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !3715
  store i32 0, ptr %i.a, align 4, !tbaa !197, !noalias !3715
  %i.r = icmp eq i32 %.017.i.i, 4
  br i1 %i.r, label %bb.d, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = atomicrmw xchg ptr %.sroa.6.0..sroa_idx.i.i, i32 5 acq_rel, align 4, !noalias !3715
  switch i32 %i.s, label %.lr.ph.i.i.preheader.i.i [
    i32 5, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
    i32 2, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  ]

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.d
  %.not.i.i.i.peel.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not.i.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.preheader.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.t release, align 4, !noalias !3715
  %i.u = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.t, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i: ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i
  %i.v = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc12:                                         ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i
  %i.w = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !3715
  %.not.i.i.peel.i.i = icmp eq i32 %i.w, 2
  br i1 %.not.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i: ; preds = %.noexc12, %.noexc13
  %i.x = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc13 unwind label %.loopexit ; 0 uses

.noexc13:                                         ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i
  %i.y = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !3715
  %.not.i.i.i.i = icmp eq i32 %i.y, 2
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i, !llvm.loop !3710

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i: ; preds = %.noexc13, %.noexc12, %bb.d
  %i.z = load atomic i64, ptr %i.f monotonic, align 8, !noalias !3715
  %i.aa = and i64 %i.z, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %bb.j, !llvm.loop !3711

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i: ; preds = %bb.c
  %i.ac = invoke noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.017.i.i)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i
  br i1 %i.ac, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, label %bb.j, !llvm.loop !3711

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i: ; preds = %.noexc14, %bb.d
  %i.ad = load i64, ptr %i.d, align 16, !noalias !3715 ; 3 uses
  %i.ae = icmp eq i64 %.0.i.i, %i.ad              ; 2 uses
  %spec.select26.i.i = select i1 %i.ae, i64 1, i64 %i.e
  %i.af = load i32, ptr %i.a, align 4, !tbaa !197, !noalias !3715 ; 4 uses
  %i.ag = icmp eq i32 %i.af, 7
  %i.ah = icmp eq i32 %i.af, 10                   ; 2 uses
  %or.cond.i.i = or i1 %i.ag, %i.ah
  %i.ai = inttoptr i64 %i.ad to ptr
  switch i32 %i.af, label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i [
    i32 10, label %bb.f
    i32 7, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !3715
  br i1 %i.ah, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i, label %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i, !prof !198

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i: ; preds = %bb.f
  store ptr null, ptr %i.d, align 16, !tbaa !1747, !noalias !3715
  store ptr %i.ai, ptr %3, align 8, !tbaa !1747, !noalias !3715
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %3) #45
          to label %bb.g unwind label %bb.h, !noalias !3715

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  unreachable

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !1747, !noalias !3715
  %.not.i6.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i6.i.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #34, !noalias !3715
  br label %.body

_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !3715
  br label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i

bb.j:                                             ; preds = %.noexc14, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  %.227.i.i = phi ptr [ %.018.i.i, %.noexc14 ], [ %i.ab, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3715
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !3715
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i: ; preds = %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  %i.al = and i64 %.0.i.i, -2
  %i.am = select i1 %i.ae, i64 0, i64 %i.al
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !tbaa !196, !noalias !3715
  %i.ap = and i64 %i.ao, -2
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = zext i1 %or.cond.i.i to i8
  store ptr %i.an, ptr %5, align 8, !tbaa !1742, !alias.scope !3715
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %spec.select26.i.i, ptr %i.as, align 8, !tbaa !1743, !alias.scope !3715
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %i.k, ptr %i.at, align 8, !tbaa !1739, !alias.scope !3715
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !1736, !alias.scope !3715
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.ad, ptr %i.av, align 8, !tbaa !1748, !alias.scope !3715
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.aq, ptr %i.aw, align 8, !tbaa !1749, !alias.scope !3715
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %.018.i.i, ptr %i.ax, align 8, !tbaa !1744, !alias.scope !3715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3715
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !3715
  switch i32 %i.af, label %bb.k [
    i32 10, label %bb.r
    i32 7, label %bb.r
  ]

bb.k:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1757 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1759 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1760 ; 3 uses
  %i.bf = icmp eq ptr %i.bc, null                 ; 2 uses
  %i.bg = icmp eq ptr %i.be, null
  %or.cond.i.i.i.i = or i1 %i.bf, %i.bg
  br i1 %or.cond.i.i.i.i, label %bb.m, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.l
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.bc, i64 160
  %.031.i.val.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 16, !tbaa !1762
  br label %.preheader.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bh = select i1 %i.bf, ptr %i.be, ptr %i.bc   ; 3 uses
  store ptr %i.bh, ptr %i.ay, align 8, !tbaa !1763
  %.not38.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not38.i.i.i.i, label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.bh, align 8, !tbaa !1764
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.031.i.val.i.i.i = phi i64 [ %i.br, %.preheader.i.i.i ], [ %.031.i.val.pre.i.i.i, %.preheader.preheader.i.i.i ] ; 3 uses
  %.031.i.i.i.i = phi ptr [ %.031..030.i.i.i.i, %.preheader.i.i.i ], [ %i.bc, %.preheader.preheader.i.i.i ] ; 3 uses
  %.030.i.i.i.i = phi ptr [ %i.bo, %.preheader.i.i.i ], [ %i.be, %.preheader.preheader.i.i.i ] ; 4 uses
  %.029.i.i.i.i = phi ptr [ %.030..031.i.i.i.i, %.preheader.i.i.i ], [ null, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %i.bp, %.preheader.i.i.i ], [ %i.ay, %.preheader.preheader.i.i.i ]
  %i.bi = getelementptr i8, ptr %.031.i.i.i.i, i64 168
  %.031.i.val7.i.i.i = load i64, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.030.i.i.i.i, i64 160
  %.030.i.val.i.i.i = load i64, ptr %i.bj, align 16, !tbaa !1762 ; 3 uses
  %i.bk = getelementptr i8, ptr %.030.i.i.i.i, i64 168
  %.030.i.val8.i.i.i = load i64, ptr %i.bk, align 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.031.i.val.i.i.i, %.030.i.val.i.i.i
  %i.bl = icmp ugt i64 %.031.i.val.i.i.i, %.030.i.val.i.i.i
  %i.bm = icmp ugt i64 %.031.i.val7.i.i.i, %.030.i.val8.i.i.i
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.bm, i1 %i.bl ; 3 uses
  %.031..030.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i, ptr %.031.i.i.i.i, ptr %.030.i.i.i.i, !unpredictable !184 ; 3 uses
  %.030..031.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i, ptr %.030.i.i.i.i, ptr %.031.i.i.i.i, !unpredictable !184 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i.i, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1760 ; 2 uses
  store ptr %.030..031.i.i.i.i, ptr %.0.i.i.i.i, align 8, !tbaa !1763
  %i.bp = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i.i, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1759
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !1760
  store ptr %.029.i.i.i.i, ptr %.030..031.i.i.i.i, align 8, !tbaa !1764
  %.not.i.i.i8.i = icmp eq ptr %i.bo, null
  %i.br = select i1 %.0.i.i.i.i.i.i.i, i64 %.031.i.val.i.i.i, i64 %.030.i.val.i.i.i, !unpredictable !184
  br i1 %.not.i.i.i8.i, label %bb.o, label %.preheader.i.i.i, !llvm.loop !93

bb.o:                                             ; preds = %.preheader.i.i.i
  store ptr %.031..030.i.i.i.i, ptr %i.bp, align 8, !tbaa !1763
  store ptr %.030..031.i.i.i.i, ptr %.031..030.i.i.i.i, align 8, !tbaa !1764
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i

_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !tbaa !1764
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i

_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i: ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i, %bb.k
  %i.bs = load ptr, ptr %6, align 8, !tbaa !1766  ; 2 uses
  store ptr %i.az, ptr %6, align 8, !tbaa !1766
  %.not.i.i1.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i1.i.i, label %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.bs)
  br label %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i

_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i: ; preds = %bb.p, %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #41
  unreachable

bb.r:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i
  %i.bv = trunc nuw i8 %i.k to i1
  br i1 %i.bv, label %bb.s, label %bb.t, !prof !198

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5folly6detail19atomic_notification10parkingLotE, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.t

bb.t:                                             ; preds = %.noexc15, %bb.r, %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvENKUlvE_clEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.val11 = load ptr, ptr %6, align 8, !tbaa !1766 ; 11 uses
  %.not = icmp eq ptr %.val11, null
  br i1 %.not, label %bb.u, label %.critedge, !prof !198

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str.44, i32 noundef 53)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.45, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.w
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #41
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
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.body

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #41
  unreachable

.critedge:                                        ; preds = %bb.t
  store ptr null, ptr %0, align 16, !tbaa !196
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %.val11, i64 80 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val11, i64 88 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !130 ; 2 uses
  %i.ce = load <2 x ptr>, ptr %i.cb, align 16, !tbaa !218
  store <2 x ptr> %i.ce, ptr %i.ca, align 16, !tbaa !218
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.cb, align 16, !tbaa !129
  store ptr null, ptr %i.cc, align 8, !tbaa !130
  %.not.i.i.i.i17 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i17, label %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 32
  %i.cg = call noundef i64 %i.cd(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(120) %i.cf, ptr noundef nonnull align 16 dereferenceable(120) %0) #34, !inline_history !3712 ; 0 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !1766
  br label %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit

_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit: ; preds = %.critedge, %bb.z
  %i.ch = phi ptr [ %.val11, %.critedge ], [ %.pre, %bb.z ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %.val11, i64 96
  %i.ck = load i64, ptr %i.cj, align 16, !tbaa !1669
  store i64 %i.ck, ptr %i.ci, align 16, !tbaa !1669
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = getelementptr inbounds nuw i8, ptr %.val11, i64 104 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val11, i64 112
  %i.co = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !218
  store ptr null, ptr %i.cn, align 16, !tbaa !126
  store <2 x ptr> %i.co, ptr %i.cl, align 8, !tbaa !218
  store ptr null, ptr %i.cm, align 8, !tbaa !212
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cq = getelementptr inbounds nuw i8, ptr %.val11, i64 120 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !217
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !217
  store ptr null, ptr %i.cq, align 8, !tbaa !217
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ct = getelementptr inbounds nuw i8, ptr %.val11, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cs, ptr noundef nonnull align 16 dereferenceable(16) %i.ct, i64 16, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 144
  %i.cw = load i64, ptr %i.cv, align 16, !tbaa !214
  store i64 %i.cw, ptr %i.cu, align 16, !tbaa !214
  %.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.ch)
  br label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit: ; preds = %_ZN5folly21CPUThreadPoolExecutor7CPUTaskC2EOS1_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.i, %bb.h, %bb.x
  %.pn = phi { ptr, i32 } [ %i.by, %bb.x ], [ %i.aj, %bb.h ], [ %i.aj, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit20, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp21, %.loopexit.split-lp.loopexit.split-lp ]
  %i.cx = load ptr, ptr %6, align 8, !tbaa !1766  ; 2 uses
  %.not.i18 = icmp eq ptr %i.cx, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit19, label %bb.ab

bb.ab:                                            ; preds = %.body
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.cx)
  br label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit19

_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit19: ; preds = %.body, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_ZNK5folly17LLCAccessSpreader7currentEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly16ThrottledLifoSem14try_wait_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 64 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 64 ; 2 uses
  %.06.in.in14.i.i = and i64 %i.b, 4294967295
  %.06.in15.not.i.i = icmp eq i64 %.06.in.in14.i.i, 0
  br i1 %.06.in15.not.i.i, label %.loopexit14, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i
  %.016.i.i = phi i64 [ %i.f, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = add i64 %.016.i.i, -1
  %i.d = cmpxchg weak ptr %i.a, i64 %.016.i.i, i64 %i.c seq_cst monotonic, align 8 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %_ZN5folly16ThrottledLifoSem8try_waitEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i: ; preds = %.lr.ph.i.i
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %.06.in.in.i.i = and i64 %i.f, 4294967295
  %.06.in.not.i.i = icmp eq i64 %.06.in.in.i.i, 0
  br i1 %.06.in.not.i.i, label %.loopexit14, label %.lr.ph.i.i

.loopexit14:                                      ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i, %bb.a
  %i.g = atomicrmw add ptr %i.a, i64 8589934592 seq_cst, align 8 ; 0 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !1669
  %i.h = icmp slt i64 %.sroa.0.0.copyload.i.i, 1
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.loopexit14
  %i.i = load atomic i64, ptr %i.a monotonic, align 64 ; 2 uses
  %.07.in.in15.i.i.i = and i64 %i.i, 4294967295
  %.07.in16.not.i.i.i = icmp eq i64 %.07.in.in15.i.i.i, 0
  br i1 %.07.in16.not.i.i.i, label %.loopexit50.i, label %.lr.ph.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_17RequestWithReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSP_RT1_RT2_:bb.a
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
  br i1 %i.ag, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i, label %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EEvRNS1_17RequestWithReturnISH_EERSG_bRNS_4UnitE.exit, !prof !198

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i: ; preds = %bb.f
  store ptr null, ptr %i.d, align 16, !tbaa !1747
  store ptr %i.ah, ptr %4, align 8, !tbaa !1747
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %4) #45
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
  unreachable

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %4, align 8, !tbaa !1747
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
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !1741
  br label %.thread

.thread:                                          ; preds = %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EEvRNS1_17RequestWithReturnISH_EERSG_bRNS_4UnitE.exit, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
  %i.al = and i64 %.0, -2
  %i.am = select i1 %i.ad, i64 0, i64 %i.al
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !196
  %i.ap = and i64 %i.ao, -2
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = zext i1 %or.cond to i8
  store ptr %i.an, ptr %0, align 8, !tbaa !1742
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select26, ptr %i.as, align 8, !tbaa !1743
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.148, ptr %i.at, align 8, !tbaa !1739
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !1736
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ac, ptr %i.av, align 8, !tbaa !1748
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aq, ptr %i.aw, align 8, !tbaa !1749
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.045, ptr %i.ax, align 8, !tbaa !1744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.k

bb.j:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57
  %.254 = phi ptr [ %.045, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit ], [ %i.aa, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit

bb.k:                                             ; preds = %.thread, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE1_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3751   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1676 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  %i.e = icmp eq ptr %i.d, %i.c
  %i.f = or i1 %.not.i.i.i.i.i.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = atomicrmw and ptr %i.g, i64 -4294967297 seq_cst, align 8 ; 0 uses
  br label %_ZSt6invokeIRKN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS0_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE1_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultISE_JDpT0_EE4typeEOSE_DpOSR_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i
  %.04.i.i.i.i.i.i = phi i64 [ %i.o, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = xor i64 %.04.i.i.i.i.i.i, 4294967296
  %i.m = cmpxchg weak ptr %i.g, i64 %.04.i.i.i.i.i.i, i64 %i.l seq_cst monotonic, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %_ZSt6invokeIRKN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS0_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE1_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultISE_JDpT0_EE4typeEOSE_DpOSR_.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1677 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !1676 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1677 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8, !tbaa !1676
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !1677
  %i.y = load i64, ptr %i.b, align 8, !tbaa !1738
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %i.b, align 8, !tbaa !1738
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZSt6invokeIRKN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS0_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE1_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultISE_JDpT0_EE4typeEOSE_DpOSR_.exit

_ZSt6invokeIRKN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS0_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE1_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultISE_JDpT0_EE4typeEOSE_DpOSR_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b, %.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.t, %.loopexit.i.i.i.i.i ], [ null, %.lr.ph.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3753, !nonnull !184, !align !1750
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store ptr %.0.i.i.i.i.i, ptr %i.ac, align 16, !tbaa !1741
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3755  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !3756
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1757 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1759 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1760 ; 3 uses
  %i.i = icmp eq ptr %i.f, null                   ; 2 uses
  %i.j = icmp eq ptr %i.h, null
  %or.cond.i.i.i.i.i.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.b
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr i8, ptr %i.f, i64 160
  %.031.i.val.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 16, !tbaa !1762
  br label %.preheader.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = select i1 %i.i, ptr %i.h, ptr %i.f       ; 3 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !1763
  %.not38.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not38.i.i.i.i.i.i.i, label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.k, align 8, !tbaa !1764
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %.031.i.val.i.i.i.i.i.i = phi i64 [ %i.u, %.preheader.i.i.i.i.i.i ], [ %.031.i.val.pre.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 3 uses
  %.031.i.i.i.i.i.i.i = phi ptr [ %.031..030.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.f, %.preheader.preheader.i.i.i.i.i.i ] ; 3 uses
  %.030.i.i.i.i.i.i.i = phi ptr [ %i.r, %.preheader.i.i.i.i.i.i ], [ %i.h, %.preheader.preheader.i.i.i.i.i.i ] ; 4 uses
  %.029.i.i.i.i.i.i.i = phi ptr [ %.030..031.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ null, %.preheader.preheader.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.s, %.preheader.i.i.i.i.i.i ], [ %i.b, %.preheader.preheader.i.i.i.i.i.i ]
  %i.l = getelementptr i8, ptr %.031.i.i.i.i.i.i.i, i64 168
  %.031.i.val7.i.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.030.i.i.i.i.i.i.i, i64 160
  %.030.i.val.i.i.i.i.i.i = load i64, ptr %i.m, align 16, !tbaa !1762 ; 3 uses
  %i.n = getelementptr i8, ptr %.030.i.i.i.i.i.i.i, i64 168
  %.030.i.val8.i.i.i.i.i.i = load i64, ptr %i.n, align 8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.031.i.val.i.i.i.i.i.i, %.030.i.val.i.i.i.i.i.i
  %i.o = icmp ugt i64 %.031.i.val.i.i.i.i.i.i, %.030.i.val.i.i.i.i.i.i
  %i.p = icmp ugt i64 %.031.i.val7.i.i.i.i.i.i, %.030.i.val8.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %i.p, i1 %i.o ; 3 uses
  %.031..030.i.i.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i.i.i.i, ptr %.031.i.i.i.i.i.i.i, ptr %.030.i.i.i.i.i.i.i, !unpredictable !184 ; 3 uses
  %.030..031.i.i.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i.i.i.i, ptr %.030.i.i.i.i.i.i.i, ptr %.031.i.i.i.i.i.i.i, !unpredictable !184 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1760 ; 2 uses
  store ptr %.030..031.i.i.i.i.i.i.i, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !1763
  %i.s = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1759
  store ptr %i.t, ptr %i.q, align 8, !tbaa !1760
  store ptr %.029.i.i.i.i.i.i.i, ptr %.030..031.i.i.i.i.i.i.i, align 8, !tbaa !1764
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %i.u = select i1 %.0.i.i.i.i.i.i.i.i.i.i, i64 %.031.i.val.i.i.i.i.i.i, i64 %.030.i.val.i.i.i.i.i.i, !unpredictable !184
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %.preheader.i.i.i.i.i.i, !llvm.loop !93

bb.e:                                             ; preds = %.preheader.i.i.i.i.i.i
  store ptr %.031..030.i.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !1763
  store ptr %.030..031.i.i.i.i.i.i.i, ptr %.031..030.i.i.i.i.i.i.i, align 8, !tbaa !1764
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i.i.i.i

_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8, !tbaa !1764
  br label %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i.i.i.i

_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i.i.i.i: ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESE_SE_PSE_.exit.i.i.i.i.i.i, %bb.a
  %i.v = load ptr, ptr %.val, align 8, !tbaa !1766 ; 2 uses
  store ptr %i.c, ptr %.val, align 8, !tbaa !1766
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSH_DpOSI_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i.i.i.i
  tail call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.v)
  br label %_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSH_DpOSI_.exit

_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSH_DpOSI_.exit: ; preds = %_ZN5folly13IntrusiveHeapINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt4lessIvEvNS_17DerivedNodeTraitsIS6_vEEE3popEv.exit.i.i.i.i.i, %bb.f
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call noundef i64 %i.f(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.g, ptr noundef null) #34, !inline_history !94 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #43
  br label %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5folly18ThreadPoolExecutor4Task10ExpirationEEclEPS3_.exit.i.i.i, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !116
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !117
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #34, !call_target !135, !inline_history !95
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #34, !call_target !150, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !198

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #34
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.f, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !130 ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i, label %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ab = tail call noundef i64 %i.aa(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(120) %i.b, ptr noundef null) #34, !inline_history !96 ; 0 uses
  br label %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeD2Ev.exit

_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #43
  br label %bb.l

bb.l:                                             ; preds = %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #4 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(120) %1, i64 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.156, align 1            ; 3 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %5 = alloca %"class.folly::detail::distributed_mutex::Waiter", align 64 ; 12 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy", align 8 ; 16 uses
  %7 = alloca %"class.std::unique_ptr.197", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.b = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #42 ; 12 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !tbaa !1764
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr null, ptr %i.d, align 16, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130  ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 16, !tbaa !218
  store <2 x ptr> %i.i, ptr %i.e, align 16, !tbaa !218
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.f, align 16, !tbaa !129
  store ptr null, ptr %i.g, align 8, !tbaa !130
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 %i.h(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(120) %1, ptr noundef nonnull align 16 dereferenceable(120) %i.d) #34, !inline_history !3757 ; 0 uses
  br label %_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit

_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4NodeC2EOS3_m.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 16, !tbaa !1669
  store i64 %i.m, ptr %i.k, align 16, !tbaa !1669
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load <2 x ptr>, ptr %i.o, align 8, !tbaa !218
  store ptr null, ptr %i.p, align 16, !tbaa !126
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !218
  store ptr null, ptr %i.o, align 8, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !217
  store i64 %i.t, ptr %i.r, align 8, !tbaa !217
  store ptr null, ptr %i.s, align 8, !tbaa !217
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = load i64, ptr %i.x, align 16, !tbaa !214
  store i64 %i.y, ptr %i.w, align 16, !tbaa !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %2, ptr %i.z, align 16, !tbaa !1762
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 0, ptr %i.aa, align 8, !tbaa !1780
  store ptr %i.b, ptr %7, align 8, !tbaa !1766
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3762)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ac = ptrtoint ptr %5 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ae = or disjoint i64 %i.ac, 1                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_m:bb.a
  store atomic i64 %.0.i.i, ptr %i.af monotonic, align 8, !noalias !3762
  %i.al = icmp eq i64 %.0.i.i, 0
  br i1 %i.al, label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.thread.i, label %bb.d

_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.thread.i: ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  store ptr null, ptr %6, align 8, !tbaa !1742, !alias.scope !3762
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ae, ptr %i.am, align 8, !tbaa !1743, !alias.scope !3762
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.ak, ptr %i.an, align 8, !tbaa !1739, !alias.scope !3762
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.ao, align 1, !tbaa !1736, !alias.scope !3762
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !3762
  store ptr %.018.i.i, ptr %i.aq, align 8, !tbaa !1744, !alias.scope !3762
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3762
  br label %bb.l

bb.d:                                             ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !3762
  store i32 0, ptr %i.a, align 4, !tbaa !197, !noalias !3762
  %i.ar = icmp eq i32 %.017.i.i, 4
  br i1 %i.ar, label %bb.e, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.as = atomicrmw xchg ptr %.sroa.6.0..sroa_idx.i.i, i32 5 acq_rel, align 4, !noalias !3762
  switch i32 %i.as, label %.lr.ph.i.i.preheader.i.i [
    i32 5, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
    i32 2, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  ]

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.e
  %.not.i.i.i.peel.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not.i.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.preheader.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.at release, align 4, !noalias !3762
  %i.au = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.at, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i: ; preds = %bb.f, %.lr.ph.i.i.preheader.i.i
  %i.av = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc4:                                          ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i
  %i.aw = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !3762
  %.not.i.i.peel.i.i = icmp eq i32 %i.aw, 2
  br i1 %.not.i.i.peel.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i: ; preds = %.noexc4, %.noexc5
  %i.ax = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc5 unwind label %.loopexit ; 0 uses

.noexc5:                                          ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i
  %i.ay = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !3762
  %.not.i.i.i.i = icmp eq i32 %i.ay, 2
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i, !llvm.loop !3760

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i: ; preds = %.noexc5, %.noexc4, %bb.e
  %i.az = load atomic i64, ptr %i.af monotonic, align 8, !noalias !3762
  %i.ba = and i64 %i.az, -2
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %bb.k, !llvm.loop !3761

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i: ; preds = %bb.d
  %i.bc = invoke noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.017.i.i)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit

.noexc6:                                          ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i
  br i1 %i.bc, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, label %bb.k, !llvm.loop !3761

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i: ; preds = %.noexc6, %bb.e
  %i.bd = load i64, ptr %i.ad, align 16, !noalias !3762 ; 3 uses
  %i.be = icmp eq i64 %.0.i.i, %i.bd              ; 2 uses
  %spec.select26.i.i = select i1 %i.be, i64 1, i64 %i.ae
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !197, !noalias !3762 ; 4 uses
  %i.bg = icmp eq i32 %i.bf, 7
  %i.bh = icmp eq i32 %i.bf, 10                   ; 2 uses
  %or.cond.i.i = or i1 %i.bg, %i.bh
  %i.bi = inttoptr i64 %i.bd to ptr
  switch i32 %i.bf, label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i [
    i32 10, label %bb.g
    i32 7, label %bb.g
  ]

bb.g:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !3762
  br i1 %i.bh, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i, label %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i, !prof !198

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i: ; preds = %bb.g
  store ptr null, ptr %i.ad, align 16, !tbaa !1747, !noalias !3762
  store ptr %i.bi, ptr %4, align 8, !tbaa !1747, !noalias !3762
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %4) #45
          to label %bb.h unwind label %bb.i, !noalias !3762

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  unreachable

bb.i:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !1747, !noalias !3762
  %.not.i6.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i6.i.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #34, !noalias !3762
  br label %.body

_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !3762
  br label %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i

bb.k:                                             ; preds = %.noexc6, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  %.227.i.i = phi ptr [ %.018.i.i, %.noexc6 ], [ %i.bb, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3762
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3762
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i

_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i: ; preds = %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEvRNS1_20RequestWithoutReturnIT0_EERT_bRNS_4UnitE.exit.i.i, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i
  %i.bl = and i64 %.0.i.i, -2
  %i.bm = select i1 %i.be, i64 0, i64 %i.bl
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i64, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !tbaa !196, !noalias !3762
  %i.bp = and i64 %i.bo, -2
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = zext i1 %or.cond.i.i to i8
  store ptr %i.bn, ptr %6, align 8, !tbaa !1742, !alias.scope !3762
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %spec.select26.i.i, ptr %i.bs, align 8, !tbaa !1743, !alias.scope !3762
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.ak, ptr %i.bt, align 8, !tbaa !1739, !alias.scope !3762
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !1736, !alias.scope !3762
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bd, ptr %i.bv, align 8, !tbaa !1748, !alias.scope !3762
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.bq, ptr %i.bw, align 8, !tbaa !1749, !alias.scope !3762
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %.018.i.i, ptr %i.bx, align 8, !tbaa !1744, !alias.scope !3762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !3762
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3762
  switch i32 %i.bf, label %bb.l [
    i32 10, label %bb.p
    i32 7, label %bb.p
  ]

bb.l:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.thread.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !1783 ; 2 uses
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !1783
  %.val.i8.i = load ptr, ptr %7, align 8, !tbaa !1766 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i8.i, i64 168
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !1780
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %7, align 8, !tbaa !1766
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val.i8.i, i8 0, i64 24, i1 false)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1757 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.m, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.l
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %.val.i8.i, i64 160
  %.031.i.val.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 16, !tbaa !1762
  br label %.preheader.i.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %.val.i8.i, ptr %i.cc, align 8, !tbaa !1763
  store ptr null, ptr %.val.i8.i, align 8, !tbaa !1764
  br label %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.031.i.val.i.i.i = phi i64 [ %i.co, %.preheader.i.i.i ], [ %.031.i.val.pre.i.i.i, %.preheader.preheader.i.i.i ] ; 3 uses
  %.031.i.i.i.i = phi ptr [ %.031..030.i.i.i.i, %.preheader.i.i.i ], [ %.val.i8.i, %.preheader.preheader.i.i.i ] ; 3 uses
  %.030.i.i.i.i = phi ptr [ %i.cl, %.preheader.i.i.i ], [ %i.cd, %.preheader.preheader.i.i.i ] ; 4 uses
  %.029.i.i.i.i = phi ptr [ %.030..031.i.i.i.i, %.preheader.i.i.i ], [ null, %.preheader.preheader.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %i.cm, %.preheader.i.i.i ], [ %i.cc, %.preheader.preheader.i.i.i ]
  %i.cf = getelementptr i8, ptr %.031.i.i.i.i, i64 168
  %.031.i.val6.i.i.i = load i64, ptr %i.cf, align 8
  %i.cg = getelementptr i8, ptr %.030.i.i.i.i, i64 160
  %.030.i.val.i.i.i = load i64, ptr %i.cg, align 16, !tbaa !1762 ; 3 uses
  %i.ch = getelementptr i8, ptr %.030.i.i.i.i, i64 168
  %.030.i.val7.i.i.i = load i64, ptr %i.ch, align 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.031.i.val.i.i.i, %.030.i.val.i.i.i
  %i.ci = icmp ugt i64 %.031.i.val.i.i.i, %.030.i.val.i.i.i
  %i.cj = icmp ugt i64 %.031.i.val6.i.i.i, %.030.i.val7.i.i.i
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.cj, i1 %i.ci ; 3 uses
  %.031..030.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i, ptr %.031.i.i.i.i, ptr %.030.i.i.i.i, !unpredictable !184 ; 3 uses
  %.030..031.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i, ptr %.030.i.i.i.i, ptr %.031.i.i.i.i, !unpredictable !184 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i.i, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1760 ; 2 uses
  store ptr %.030..031.i.i.i.i, ptr %.0.i.i.i.i, align 8, !tbaa !1763
  %i.cm = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i.i, i64 8 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1759
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !1760
  store ptr %.029.i.i.i.i, ptr %.030..031.i.i.i.i, align 8, !tbaa !1764
  %.not.i.i.i9.i = icmp eq ptr %i.cl, null
  %i.co = select i1 %.0.i.i.i.i.i.i.i, i64 %.031.i.val.i.i.i, i64 %.030.i.val.i.i.i, !unpredictable !184
  br i1 %.not.i.i.i9.i, label %bb.n, label %.preheader.i.i.i, !llvm.loop !93

bb.n:                                             ; preds = %.preheader.i.i.i
  store ptr %.031..030.i.i.i.i, ptr %i.cm, align 8, !tbaa !1763
  store ptr %.030..031.i.i.i.i, ptr %.031..030.i.i.i.i, align 8, !tbaa !1764
  br label %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i

_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i: ; preds = %bb.n, %bb.m
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #41
  unreachable

bb.p:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i
  %i.cr = trunc nuw i8 %i.ak to i1
  br i1 %i.cr, label %bb.q, label %bb.r, !prof !198

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5folly6detail19atomic_notification10parkingLotE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.r

bb.r:                                             ; preds = %.noexc7, %bb.p, %_ZZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_mENKUlvE_clEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.cs = load ptr, ptr %7, align 8, !tbaa !1766  ; 2 uses
  %.not.i = icmp eq ptr %i.cs, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.cs)
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
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %i.bj, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit10, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp11, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ct = load ptr, ptr %7, align 8, !tbaa !1766  ; 2 uses
  %.not.i8 = icmp eq ptr %i.ct, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit9, label %bb.t

bb.t:                                             ; preds = %.body
  call fastcc void @_ZNKSt14default_deleteIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeEEclEPS6_(ptr noundef nonnull %i.ct)
  br label %_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit9

_ZNSt10unique_ptrIN5folly12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE4NodeESt14default_deleteIS6_EED2Ev.exit9: ; preds = %.body, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOSA_mEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) #37 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3764  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !3765 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1783 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !1783
  %.val.i.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !1766 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 168
  store i64 %i.c, ptr %i.e, align 8, !tbaa !1780
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 3 uses
  store ptr null, ptr %.val, align 8, !tbaa !1766
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1757 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.a
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr i8, ptr %.val.i.i.i.i.i, i64 160
  %.031.i.val.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 16, !tbaa !1762
  br label %.preheader.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store ptr %.val.i.i.i.i.i, ptr %i.f, align 8, !tbaa !1763
  store ptr null, ptr %.val.i.i.i.i.i, align 8, !tbaa !1764
  br label %_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS7_mEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %.031.i.val.i.i.i.i.i.i = phi i64 [ %i.r, %.preheader.i.i.i.i.i.i ], [ %.031.i.val.pre.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 3 uses
  %.031.i.i.i.i.i.i.i = phi ptr [ %.031..030.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.val.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 3 uses
  %.030.i.i.i.i.i.i.i = phi ptr [ %i.o, %.preheader.i.i.i.i.i.i ], [ %i.g, %.preheader.preheader.i.i.i.i.i.i ] ; 4 uses
  %.029.i.i.i.i.i.i.i = phi ptr [ %.030..031.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ null, %.preheader.preheader.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.p, %.preheader.i.i.i.i.i.i ], [ %i.f, %.preheader.preheader.i.i.i.i.i.i ]
  %i.i = getelementptr i8, ptr %.031.i.i.i.i.i.i.i, i64 168
  %.031.i.val6.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.030.i.i.i.i.i.i.i, i64 160
  %.030.i.val.i.i.i.i.i.i = load i64, ptr %i.j, align 16, !tbaa !1762 ; 3 uses
  %i.k = getelementptr i8, ptr %.030.i.i.i.i.i.i.i, i64 168
  %.030.i.val7.i.i.i.i.i.i = load i64, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.031.i.val.i.i.i.i.i.i, %.030.i.val.i.i.i.i.i.i
  %i.l = icmp ugt i64 %.031.i.val.i.i.i.i.i.i, %.030.i.val.i.i.i.i.i.i
  %i.m = icmp ugt i64 %.031.i.val6.i.i.i.i.i.i, %.030.i.val7.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %i.m, i1 %i.l ; 3 uses
  %.031..030.i.i.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i.i.i.i, ptr %.031.i.i.i.i.i.i.i, ptr %.030.i.i.i.i.i.i.i, !unpredictable !184 ; 3 uses
  %.030..031.i.i.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i.i.i.i, ptr %.030.i.i.i.i.i.i.i, ptr %.031.i.i.i.i.i.i.i, !unpredictable !184 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1760 ; 2 uses
  store ptr %.030..031.i.i.i.i.i.i.i, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !1763
  %i.p = getelementptr inbounds nuw i8, ptr %.030..031.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1759
  store ptr %i.q, ptr %i.n, align 8, !tbaa !1760
  store ptr %.029.i.i.i.i.i.i.i, ptr %.030..031.i.i.i.i.i.i.i, align 8, !tbaa !1764
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %i.r = select i1 %.0.i.i.i.i.i.i.i.i.i.i, i64 %.031.i.val.i.i.i.i.i.i, i64 %.030.i.val.i.i.i.i.i.i, !unpredictable !184
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %.preheader.i.i.i.i.i.i, !llvm.loop !93

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i
  store ptr %.031..030.i.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !1763
  store ptr %.030..031.i.i.i.i.i.i.i, ptr %.031..030.i.i.i.i.i.i.i, align 8, !tbaa !1764
  br label %_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS7_mEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit

_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_12_GLOBAL__N_116EDFPriorityQueueINS0_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS7_mEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr nofree noundef nonnull align 64 captures(address) dead_on_return(320) dereferenceable(320) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !1676, !noalias !3768 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not12.i.i.i.i, label %_ZN5folly16ThrottledLifoSemD2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.sroa.06.013.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.06.013.i.i.i.i, align 8, !tbaa !1676 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i.i, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i, label %_ZN5folly16ThrottledLifoSemD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !81

_ZN5folly16ThrottledLifoSemD2Ev.exit:             ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED0Ev(ptr noundef nonnull align 64 dereferenceable(320) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !1676, !noalias !3771 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not12.i.i.i.i.i, label %_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.sroa.06.013.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.06.013.i.i.i.i.i, align 8, !tbaa !1676 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i.i.i, i8 0, i64 16, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i.i, label %_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !81

_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #34
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 320, i64 noundef 64) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define internal range(i8 0, 2) i8 @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE3addEOS3_(ptr noundef nonnull align 64 dereferenceable(320) %0, ptr noundef nonnull align 16 dereferenceable(120) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS3_m(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(120) %1, i64 noundef -1)
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
  tail call void @_ZN5folly16ThrottledLifoSem21maybeStartWakingChainEv(ptr noundef nonnull align 64 dereferenceable(200) %i.b)
  br label %_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithDeadlineEOS3_m.exit

_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE15addWithDeadlineEOS3_m.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  %i.u = icmp samesign ule i64 %.lcssa18.i.i.i, %i.s
  %i.v = zext i1 %i.u to i8
  ret i8 %i.v
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE4takeEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::CPUThreadPoolExecutor::CPUTask") align 16 %0, ptr noundef nonnull align 64 dereferenceable(320) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %3 = alloca %"class.folly::WaitOptions", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8
  store i64 2000, ptr %3, align 8, !tbaa !1669
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !1700
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store i64 9223372036854775807, ptr %2, align 8
  %i.d = call noundef zeroext i1 @_ZN5folly16ThrottledLifoSem14try_wait_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 64 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEv(ptr dead_on_unwind noalias writable align 16 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly12_GLOBAL__N_124EDFPriorityBlockingQueueINS_21CPUThreadPoolExecutor7CPUTaskEE12try_take_forENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Optional") align 16 initializes((128, 129)) %0, ptr noundef nonnull align 64 dereferenceable(320) %1, i64 %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %4 = alloca %"class.folly::WaitOptions", align 8 ; 6 uses
  %5 = alloca %"struct.folly::CPUThreadPoolExecutor::CPUTask", align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8
  store i64 2000, ptr %4, align 8, !tbaa !1669
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !1700
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.e = mul nsw i64 %2, 1000000
  %i.f = add nsw i64 %i.d, %i.e
  store i64 %i.f, ptr %3, align 8
  %i.g = call noundef zeroext i1 @_ZN5folly16ThrottledLifoSem14try_wait_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 64 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_ZN5folly12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEv(ptr dead_on_unwind noalias nonnull writable align 16 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i8 0, ptr %i.i, align 16, !tbaa !1702
  store ptr null, ptr %0, align 16, !tbaa !196
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !130  ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 16, !tbaa !218
  store <2 x ptr> %i.n, ptr %i.j, align 16, !tbaa !218
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.k, align 16, !tbaa !129
  store ptr null, ptr %i.l, align 8, !tbaa !130
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef i64 %i.m(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(120) %5, ptr noundef nonnull align 16 dereferenceable(144) %0) #34, !inline_history !87 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.r = load i64, ptr %i.q, align 16, !tbaa !1669
  store i64 %i.r, ptr %i.p, align 16, !tbaa !1669
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !218
  store ptr null, ptr %i.u, align 16, !tbaa !126
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !218
  store ptr null, ptr %i.t, align 8, !tbaa !212
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !217
  store i64 %i.y, ptr %i.w, align 8, !tbaa !217
  store ptr null, ptr %i.x, align 8, !tbaa !217
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !214
  store i64 %i.ad, ptr %i.ab, align 16, !tbaa !214
end_hunk_3
