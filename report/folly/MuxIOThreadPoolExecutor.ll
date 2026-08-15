inline.NumInlined: 3547
inline.NumDeleted: 1829
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSG_E6resultIEESG_:bb.a
  call void @_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_17RequestWithReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE0_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSP_RT1_RT2_(ptr dead_on_unwind nonnull writable sret(%"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(17) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14313, !range !12505, !noundef !377
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i8 0, ptr %6, align 8, !tbaa !12579, !alias.scope !14543
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !14546
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14548
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14538, !range !12505, !noundef !377
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5folly8OptionalINS_16ThrottledLifoSem6WaiterEEptEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #20
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5folly8OptionalINS_16ThrottledLifoSem6WaiterEEptEv.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12784 ; 4 uses
  %.not.i.i = icmp ne ptr %i.i, null
  %i.j = icmp ne ptr %i.i, %i.h
  %.not7.i = and i1 %.not.i.i, %i.j               ; 2 uses
  br i1 %.not7.i, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5eraseENS0_13list_iteratorISB_Lb1EEE.exit.i, label %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE0_clEv.exit

_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5eraseENS0_13list_iteratorISB_Lb1EEE.exit.i: ; preds = %_ZN5folly8OptionalINS_16ThrottledLifoSem6WaiterEEptEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12785, !noalias !14550 ; 2 uses
  store ptr %i.i, ptr %i.m, align 8, !tbaa !12784, !noalias !14550
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !12785, !noalias !14550
  %i.o = load i64, ptr %i.k, align 8, !tbaa !14316, !noalias !14550
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.k, align 8, !tbaa !14316, !noalias !14550
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !14550
  br label %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE0_clEv.exit

_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE0_clEv.exit: ; preds = %_ZN5folly8OptionalINS_16ThrottledLifoSem6WaiterEEptEv.exit.i, %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly16ThrottledLifoSem6WaiterENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEEXadL_ZNS5_4hookEEEEEmLb1EvE5eraseENS0_13list_iteratorISB_Lb1EEE.exit.i
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_Lb1EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE0_clEv.exit
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #39
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_Lb1EED2Ev.exit: ; preds = %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE0_clEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = load i8, ptr %i.t, align 8, !tbaa !14317, !range !12505, !noundef !377
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.noexc13, label %_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit, !prof !12475

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5folly6detail19atomic_notification10parkingLotE, ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit

_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit: ; preds = %.noexc13, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !12504, !range !12505, !noundef !377
  %i.y = trunc nuw i8 %i.x to i1
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit, %_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_Lb1EED2Ev.exit
  %.010 = phi i1 [ %.not7.i, %_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE0_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_Lb1EED2Ev.exit ], [ %i.y, %_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i1 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EENS_13invoke_detail6traitsIRKSG_E6resultIEESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.366, align 1            ; 3 uses
  %3 = alloca %"class.folly::detail::distributed_mutex::RequestWithReturn.505", align 8 ; 5 uses
  %4 = alloca %"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %1, ptr %3, align 8, !tbaa !14311
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_17RequestWithReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE1_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSP_RT1_RT2_(ptr dead_on_unwind nonnull writable sret(%"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14313, !range !12505, !noundef !377
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12784 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  %i.g = icmp eq ptr %i.f, %i.e
  %i.h = or i1 %.not.i.i, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw and ptr %i.i, i64 -4294967297 seq_cst, align 8 ; 0 uses
  br label %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE1_clEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load atomic i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i
  %.04.i.i = phi i64 [ %i.q, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.n = xor i64 %.04.i.i, 4294967296
  %i.o = cmpxchg weak ptr %i.i, i64 %.04.i.i, i64 %i.n seq_cst monotonic, align 8 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE1_clEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i: ; preds = %.lr.ph.i.i
  %i.q = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12785 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !12784 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12785 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !12784
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !12785
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !14316
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !14316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE1_clEv.exit

_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE1_clEv.exit: ; preds = %.lr.ph.i.i, %bb.c, %.loopexit.i
  %.0.i = phi ptr [ null, %bb.c ], [ %i.v, %.loopexit.i ], [ null, %.lr.ph.i.i ]
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE1_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_Lb1EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE1_clEv.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #39
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !14317, !range !12505, !noundef !377
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.noexc, label %_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit, !prof !12475

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5folly6detail19atomic_notification10parkingLotE, ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit

_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit: ; preds = %.noexc, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14318
  br label %_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE1_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS0_17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE1_EENS_13invoke_detail6traitsIRKSH_E6resultIEESH_EUlvE_Lb1EED2Ev.exit: ; preds = %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE1_clEv.exit, %_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit
  %.010 = phi ptr [ %i.ai, %_ZN5folly6detail17distributed_mutex16wakeTimedWaitersISt6atomicImEEEvPT_b.exit ], [ %.0.i, %_ZZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EEENKUlvE1_clEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSP_RT1_RT2_(ptr dead_on_unwind noalias writable sret(%"class.folly::detail::distributed_mutex::DistributedMutex<>::DistributedMutexStateProxy") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %5 = alloca %"class.folly::detail::distributed_mutex::Waiter", align 64 ; 10 uses
  %.sroa.2 = alloca [40 x i8], align 8            ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.c = ptrtoint ptr %5 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.e = or disjoint i64 %i.c, 1                  ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 5 uses
  %.sroa.2.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 24
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit

_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit: ; preds = %bb.j, %bb.a
  %.048 = phi i8 [ 0, %bb.a ], [ %.149, %bb.j ]
  %.046 = phi ptr [ null, %bb.a ], [ %.253, %bb.j ] ; 5 uses
  %.044 = phi i32 [ 4, %bb.a ], [ %.043, %bb.j ]
  %.043 = phi i32 [ 8, %bb.a ], [ %.044, %bb.j ]  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.g = zext nneg i32 %.043 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.24..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2, i64 40, i1 false)
  store ptr @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE, ptr %i.d, align 16, !tbaa !58
  store atomic i64 %i.g, ptr %i.b release, align 64
  %i.h = atomicrmw xchg ptr %2, i64 %i.e acq_rel, align 8 ; 3 uses
  %i.i = and i64 %i.h, 2
  %.not.i27 = icmp eq i64 %i.i, 0
  br i1 %.not.i27, label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit, label %bb.b, !prof !12454

bb.b:                                             ; preds = %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit
  %i.j = and i64 %i.h, -3
  br label %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit

_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit: ; preds = %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit, %bb.b
  %.149 = phi i8 [ %.048, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit ], [ 1, %bb.b ] ; 3 uses
  %.0 = phi i64 [ %i.h, %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit ], [ %i.j, %bb.b ] ; 4 uses
  store atomic i64 %.0, ptr %6 monotonic, align 8
  %i.k = icmp eq i64 %.0, 0
  br i1 %i.k, label %.critedge, label %bb.c

.critedge:                                        ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit
  store ptr null, ptr %0, align 8, !tbaa !14320
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.l, align 8, !tbaa !14321
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.149, ptr %i.m, align 8, !tbaa !14317
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.n, align 1, !tbaa !14313
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr %.046, ptr %i.p, align 8, !tbaa !14322
  br label %bb.k

bb.c:                                             ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !12474
  %i.q = icmp eq i32 %.043, 4
  br i1 %i.q, label %bb.d, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit

bb.d:                                             ; preds = %bb.c
  %i.r = atomicrmw xchg ptr %i.f, i32 5 acq_rel, align 4
  switch i32 %i.r, label %.lr.ph.i.i.preheader [
    i32 5, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
    i32 2, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread56
  ]

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %.not.i.i.i.peel = icmp eq ptr %.046, null
  br i1 %.not.i.i.i.peel, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %.046, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.s release, align 4
  %i.t = call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.s, i32 noundef 1, i32 noundef -1) ; 0 uses
  br label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel: ; preds = %bb.e, %.lr.ph.i.i.preheader
  %i.u = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %i.f, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1) ; 0 uses
  %i.v = load atomic i32, ptr %i.f acquire, align 32
  %.not.i.i.peel = icmp eq i32 %i.v, 2
  br i1 %.not.i.i.peel, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread56, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i: ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i
  %i.w = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %i.f, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1) ; 0 uses
  %i.x = load atomic i32, ptr %i.f acquire, align 32
  %.not.i.i = icmp eq i32 %i.x, 2
  br i1 %.not.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread56, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i, !llvm.loop !14553

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread56: ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel, %bb.d
  %i.y = load atomic i64, ptr %6 monotonic, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  br label %bb.j, !llvm.loop !14554

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit: ; preds = %bb.c
  %i.ab = call noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.043)
  br i1 %i.ab, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread, label %bb.j, !llvm.loop !14554

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread: ; preds = %bb.d, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit
  %i.ac = load i64, ptr %i.d, align 16            ; 3 uses
  %i.ad = icmp eq i64 %.0, %i.ac                  ; 2 uses
  %spec.select = select i1 %i.ad, i64 1, i64 %i.e
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !12474 ; 3 uses
  %i.af = icmp eq i32 %i.ae, 7
  %i.ag = icmp eq i32 %i.ae, 10                   ; 2 uses
  %or.cond = or i1 %i.af, %i.ag
  %i.ah = inttoptr i64 %i.ac to ptr
  switch i32 %i.ae, label %.thread [
    i32 10, label %bb.f
    i32 7, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.ag, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i, label %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE_EEvRNS1_20RequestWithoutReturnISH_EERSG_bRNS_4UnitE.exit, !prof !12475

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i: ; preds = %bb.f
  store ptr null, ptr %i.d, align 16, !tbaa !14326
  store ptr %i.ah, ptr %4, align 8, !tbaa !14326
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %4) #42
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
  unreachable

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %4, align 8, !tbaa !14326
  %.not.i6.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i6.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.ai

_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE_EEvRNS1_20RequestWithoutReturnISH_EERSG_bRNS_4UnitE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.thread

.thread:                                          ; preds = %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS8_10time_pointIT_T0_EEEUlvE_EEvRNS1_20RequestWithoutReturnISH_EERSG_bRNS_4UnitE.exit, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
  %i.ak = and i64 %.0, -2
  %i.al = select i1 %i.ad, i64 0, i64 %i.ak
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !55
  %i.ao = and i64 %i.an, -2
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i1 %or.cond to i8
  store ptr %i.am, ptr %0, align 8, !tbaa !14320
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select, ptr %i.ar, align 8, !tbaa !14321
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.149, ptr %i.as, align 8, !tbaa !14317
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.aq, ptr %i.at, align 1, !tbaa !14313
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ac, ptr %i.au, align 8, !tbaa !14328
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %i.av, align 8, !tbaa !14329
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.046, ptr %i.aw, align 8, !tbaa !14322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.k

bb.j:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread56
  %.253 = phi ptr [ %.046, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit ], [ %i.aa, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit

bb.k:                                             ; preds = %.thread, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex19TaskWithoutCoalesceIZNS_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS9_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS9_10time_pointIT_T0_EEEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE(ptr noundef nonnull align 8 dereferenceable(40) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14532 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14541, !nonnull !377
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12504, !range !12505, !noundef !377
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.thread.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 2 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultISE_JDpT0_EE4typeEOSE_DpOSR_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i
  %.04.i.i.i.i.i.i = phi i64 [ %i.m, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = xor i64 %.04.i.i.i.i.i.i, 4294967296
  %i.k = cmpxchg weak ptr %i.f, i64 %.04.i.i.i.i.i.i, i64 %i.j seq_cst monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.i.i.i.i.i, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 2 uses
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i, label %_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultISE_JDpT0_EE4typeEOSE_DpOSR_.exit

_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !14541
  %.pre8.i.i.i.i.i = load i8, ptr %.pre.i.i.i.i.i, align 1, !tbaa !12504, !range !12505
  %i.p = trunc nuw i8 %.pre8.i.i.i.i.i to i1
  br i1 %i.p, label %_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.thread.i.i.i.i.i, label %_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.thread.i.i.i.i.i

_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.thread.i.i.i.i.i: ; preds = %_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.i.i.i.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.r = load atomic i64, ptr %i.q monotonic, align 8 ; 3 uses
  %i.s = and i64 %i.r, 4294967296
  %.not4.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  %i.t = and i64 %i.r, 4294967295
  %i.u = icmp ne i64 %i.t, 0
  %i.v = and i1 %.not4.i.i.i.i.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i2.i.i.i.i.i, label %_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.thread.i.i.i.i.i

.lr.ph.i2.i.i.i.i.i:                              ; preds = %_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.thread.i.i.i.i.i, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i3.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.z, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i3.i.i.i.i.i ], [ %i.r, %_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.thread.i.i.i.i.i ] ; 2 uses
  %i.w = or disjoint i64 %.05.i.i.i.i.i.i, 4294967296
  %i.x = cmpxchg weak ptr %i.q, i64 %.05.i.i.i.i.i.i, i64 %i.w seq_cst monotonic, align 8 ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultISE_JDpT0_EE4typeEOSE_DpOSR_.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i3.i.i.i.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i3.i.i.i.i.i: ; preds = %.lr.ph.i2.i.i.i.i.i
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 3 uses
  %i.aa = and i64 %i.z, 4294967296
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.z, 4294967295
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = and i1 %.not.i.i.i.i.i.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i2.i.i.i.i.i, label %_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.thread.i.i.i.i.i

_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.thread.i.i.i.i.i: ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i3.i.i.i.i.i, %_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.thread.i.i.i.i.i, %_ZN5folly16ThrottledLifoSem19tryReleaseWakingBitEv.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14542, !nonnull !377, !align !14131 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ag, align 8, !tbaa !14538
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !14542, !nonnull !377, !align !14131 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !14538, !range !12505, !noundef !377
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNR5folly8OptionalINS_16ThrottledLifoSem6WaiterEEdeEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.thread.i.i.i.i.i
  tail call void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #20
  unreachable

_ZNR5folly8OptionalINS_16ThrottledLifoSem6WaiterEEdeEv.exit.i.i.i.i.i: ; preds = %_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.thread.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12785 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !12785
  store ptr %i.an, ptr %i.am, align 8, !tbaa !12784
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !12785
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !12784
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !14316
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.al, align 8, !tbaa !14316
  br label %_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultISE_JDpT0_EE4typeEOSE_DpOSR_.exit

_ZSt6invokeIRKN5folly6detail17distributed_mutex19TaskWithoutCoalesceIZNS0_16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS6_10time_pointIT_T0_EEEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultISE_JDpT0_EE4typeEOSE_DpOSR_.exit: ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i, %.lr.ph.i2.i.i.i.i.i, %bb.b, %_ZNR5folly8OptionalINS_16ThrottledLifoSem6WaiterEEdeEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::OptionalEmptyException", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.105)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22OptionalEmptyExceptionE, i64 16), ptr %0, align 8, !tbaa !30
  invoke void @_ZN5folly15throw_exceptionINS_22OptionalEmptyExceptionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_0
