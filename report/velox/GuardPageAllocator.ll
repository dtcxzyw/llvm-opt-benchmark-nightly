inline.NumInlined: 616
inline.NumDeleted: 385
begin_hunk_0_@_ZN5folly6fibers12_GLOBAL__N_120sigsegvSignalHandlerEiP9siginfo_tPv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 53) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %0) ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.not12 = icmp eq ptr %1, null
  br i1 %.not12, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = ptrtoint ptr %i.f to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.a, align 8, !tbaa !61
  %i.h = load atomic i8, ptr @_ZGVZN5folly6fibers10StackCache15protectedRangesEvE8instance acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN5folly6fibers10StackCache11isProtectedEl.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6fibers10StackCache15protectedRangesEvE8instance) #12
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN5folly6fibers10StackCache11isProtectedEl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22
          to label %bb.g unwind label %bb.h       ; 7 uses

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.m, ptr %i.k, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.n, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  store ptr %i.k, ptr @_ZZN5folly6fibers10StackCache15protectedRangesEvE8instance, align 8, !tbaa !30
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6fibers10StackCache15protectedRangesEvE8instance) #12
  br label %_ZN5folly6fibers10StackCache11isProtectedEl.exit

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly6fibers10StackCache15protectedRangesEvE8instance) #12
  resume { ptr, i32 } %i.q

_ZN5folly6fibers10StackCache11isProtectedEl.exit: ; preds = %bb.d, %bb.e, %bb.g
  %i.r = load ptr, ptr @_ZZN5folly6fibers10StackCache15protectedRangesEvE8instance, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.a, ptr %3, align 8, !tbaa !100
  %i.s = call noundef zeroext i1 @_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_6fibers10StackCache11isProtectedElEUlRKT_E_EEDaOSM_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5folly6fibers10StackCache11isProtectedEl.exit
  call fastcc void @_ZN5folly6fibers12_GLOBAL__N_136FOLLY_FIBERS_STACK_OVERFLOW_DETECTEDEiP9siginfo_tPv(ptr noundef %1, ptr noundef %2)
  br label %bb.m

bb.j:                                             ; preds = %_ZN5folly6fibers10StackCache11isProtectedEl.exit, %bb.c
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6fibers12_GLOBAL__N_116oldSigsegvActionE, i64 136), align 8, !tbaa !97
  %i.u = and i32 %i.t, 4
  %.not13 = icmp eq i32 %i.u, 0
  %i.v = load ptr, ptr @_ZN5folly6fibers12_GLOBAL__N_116oldSigsegvActionE, align 8, !tbaa !46 ; 2 uses
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void %i.v(i32 noundef 11, ptr noundef %1, ptr noundef %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void %i.v(i32 noundef 11)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN5folly6fibers12_GLOBAL__N_136FOLLY_FIBERS_STACK_OVERFLOW_DETECTEDEiP9siginfo_tPv(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #16 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 44) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !102
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !119
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !call_target !125, !inline_history !135
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6fibers12_GLOBAL__N_116oldSigsegvActionE, i64 136), align 8, !tbaa !97
  %i.s = and i32 %i.r, 4
  %.not = icmp eq i32 %i.s, 0
  %i.t = load ptr, ptr @_ZN5folly6fibers12_GLOBAL__N_116oldSigsegvActionE, align 8, !tbaa !46 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void %i.t(i32 noundef 11, ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.g

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void %i.t(i32 noundef 11)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.5, i64 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_6fibers10StackCache11isProtectedElEUlRKT_E_EEDaOSM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr.41", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !139, !alias.scope !136
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.e, align 8, !tbaa !144, !alias.scope !136
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.f, align 2, !tbaa !145, !alias.scope !136
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !136
  %i.g = load atomic i32, ptr %i.d monotonic, align 4, !noalias !136 ; 4 uses
  store i32 %i.g, ptr %i.c, align 4, !tbaa !7, !noalias !136
  %i.h = and i32 %i.g, -1408
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i32 %i.g, 2048
  %i.k = cmpxchg ptr %i.d, i32 %i.g, i32 %i.j seq_cst seq_cst, align 4, !noalias !136 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = extractvalue { i32, i1 } %i.k, 0
  store i32 %i.m, ptr %i.c, align 4, !noalias !136
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2, ptr %i.e, align 8, !tbaa !144, !alias.scope !136
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.n = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !136
  %i.o = load ptr, ptr %3, align 8, !tbaa !139    ; 9 uses
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = select i1 %.not.i.i, i64 16, i64 -40
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %.sroa.011.015.i = load ptr, ptr %i.q, align 8, !tbaa !66 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.011.015.i, null
  br i1 %.not19.i, label %_ZZN5folly6fibers10StackCache11isProtectedElENKUlRKT_E_clISt13unordered_setISt4pairIllESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEEEDaS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %4 = load ptr, ptr %1, align 8, !tbaa !146, !nonnull !64, !align !148
  %5 = load i64, ptr %4, align 8, !tbaa !61       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.sroa.011.016.i = phi ptr [ %.sroa.011.015.i, %.lr.ph.i ], [ %.sroa.011.0.i, %.critedge.i ] ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !67
  %.not.i = icmp sgt i64 %7, %5
  br i1 %.not.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !149
  %8 = icmp slt i64 %5, %i.s
  br i1 %8, label %_ZZN5folly6fibers10StackCache11isProtectedElENKUlRKT_E_clISt13unordered_setISt4pairIllESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEEEDaS4_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.sroa.011.0.i = load ptr, ptr %.sroa.011.016.i, align 8, !tbaa !66 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.011.0.i, null
  br i1 %.not20.i, label %_ZZN5folly6fibers10StackCache11isProtectedElENKUlRKT_E_clISt13unordered_setISt4pairIllESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEEEDaS4_.exit, label %bb.f

_ZZN5folly6fibers10StackCache11isProtectedElENKUlRKT_E_clISt13unordered_setISt4pairIllESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEEEDaS4_.exit: ; preds = %bb.g, %.critedge.i, %bb.e
  %.lcssa.i = phi i1 [ false, %bb.e ], [ true, %bb.g ], [ false, %.critedge.i ]
  %i.t = load i16, ptr %i.e, align 8, !tbaa !144
  switch i16 %i.t, label %bb.m [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.h
    i16 3, label %bb.l
  ]

bb.h:                                             ; preds = %_ZZN5folly6fibers10StackCache11isProtectedElENKUlRKT_E_clISt13unordered_setISt4pairIllESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEEEDaS4_.exit
  %i.u = load atomic i32, ptr %i.o acquire, align 4
  %i.v = and i32 %i.u, 768
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.i
  br i1 %i.x, label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.y = atomicrmw sub ptr %i.o, i32 2048 seq_cst, align 4 ; 2 uses
  %i.z = add i32 %i.y, -2048                      ; 2 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !7
  %i.aa = icmp ugt i32 %i.z, 2047
  %i.ab = and i32 %i.y, 16
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  %or.cond.i.i.i = or i1 %i.aa, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.k, !prof !150

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.o

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.l:                                             ; preds = %_ZZN5folly6fibers10StackCache11isProtectedElENKUlRKT_E_clISt13unordered_setISt4pairIllESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEEEDaS4_.exit
  %i.ac = load i16, ptr %i.f, align 2, !tbaa !145
  %i.ad = zext i16 %i.ac to i64
  %i.ae = ptrtoint ptr %i.o to i64
  %.idx.i = shl nuw nsw i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.ag = cmpxchg ptr %i.af, i64 %i.ae, i64 0 seq_cst seq_cst, align 8
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZZN5folly6fibers10StackCache11isProtectedElENKUlRKT_E_clISt13unordered_setISt4pairIllESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEEEDaS4_.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ai = atomicrmw sub ptr %i.o, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !7
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i = or i1 %i.ak, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.n, !prof !150

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.o

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #23
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZZN5folly6fibers10StackCache11isProtectedElENKUlRKT_E_clISt13unordered_setISt4pairIllESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEEEDaS4_.exit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.l, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 %.lcssa.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !78

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #25
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
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !45

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
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !45

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !76
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !77

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
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !151 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %i.am = and i32 %i.al, 255                      ; 2 uses
  store i32 %i.am, ptr %i.c, align 4, !tbaa !7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
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
  store i16 2, ptr %2, align 2, !tbaa !144
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
  br label %bb.c, !llvm.loop !152

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
  store i16 3, ptr %2, align 2, !tbaa !144
  %i.cc = trunc i32 %.246.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !145
  br label %.thread80

.thread81:                                        ; preds = %.thread78
  %i.ce = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ce, label %.backedge, label %bb.s

bb.s:                                             ; preds = %.thread81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cf = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cg = add i32 %i.cf, -2048                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !7
  %i.ch = icmp ugt i32 %i.cg, 2047
  %i.ci = and i32 %i.cf, 16
  %.not.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i = or i1 %i.ch, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !150

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  %i.cj = cmpxchg ptr %i.br, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.cl = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cm = add i32 %i.cl, -2048                    ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !7
  %i.cn = icmp ugt i32 %i.cm, 2047
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !150

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.backedge

.thread80:                                        ; preds = %.thread78, %bb.k, %bb.l, %bb.r
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800), ptr noundef nonnull, ptr noundef nonnull) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv() #8 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %i.a
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v() #10

declare noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 {
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

declare noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #10

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly6fibers18GuardPageAllocatorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly6fibers15StackCacheEntryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5folly6fibers15StackCacheEntryEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN5folly6fibers15StackCacheEntryD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #24
  br label %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly6fibers15StackCacheEntryEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5folly6fibers18GuardPageAllocator8allocateEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exitthread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !96     ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.c, label %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic i8, ptr @_ZGVZN5folly6fibers12CacheManager8instanceEvE4inst acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN5folly6fibers12CacheManager8instanceEv.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6fibers12CacheManager8instanceEvE4inst) #12
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly6fibers12CacheManager8instanceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.g, align 8, !tbaa !12
  store ptr %i.g, ptr @_ZZN5folly6fibers12CacheManager8instanceEvE4inst, align 8, !tbaa !15
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6fibers12CacheManager8instanceEvE4inst) #12
  br label %_ZN5folly6fibers12CacheManager8instanceEv.exit

common.resume:                                    ; preds = %.body.i.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly6fibers12CacheManager8instanceEvE4inst) #12
  br label %common.resume

_ZN5folly6fibers12CacheManager8instanceEv.exit:   ; preds = %bb.c, %bb.d, %bb.f
  %i.i = load ptr, ptr @_ZZN5folly6fibers12CacheManager8instanceEvE4inst, align 8, !tbaa !15 ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !87
  %i.k = load atomic i64, ptr %i.i monotonic, align 8, !noalias !153 ; 2 uses
  %i.l = icmp ugt i64 %i.k, 99
  br i1 %i.l, label %_ZN5folly6fibers12CacheManager13getStackCacheEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5folly6fibers12CacheManager8instanceEv.exit, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i
  %.05.i = phi i64 [ %i.p, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.k, %_ZN5folly6fibers12CacheManager8instanceEv.exit ] ; 2 uses
  %i.m = add nuw nsw i64 %.05.i, 1
  %i.n = cmpxchg weak ptr %i.i, i64 %.05.i, i64 %i.m acquire monotonic, align 8, !noalias !153 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.h, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 2 uses
  %i.q = icmp ugt i64 %i.p, 99
  br i1 %i.q, label %_ZN5folly6fibers12CacheManager13getStackCacheEmm.exit, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.r = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22, !noalias !156 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.s = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22
          to label %.noexc.i.i unwind label %bb.j, !noalias !156 ; 3 uses

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZN5folly6fibers10StackCacheC2Emm(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 noundef %1, i64 noundef %i.j)
          to label %_ZSt11make_uniqueIN5folly6fibers15StackCacheEntryEJRmS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i unwind label %bb.i, !noalias !162

bb.i:                                             ; preds = %.noexc.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 56) #24, !noalias !162
  br label %.body.i.i

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.t, %bb.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 8) #24, !noalias !156
  br label %common.resume

_ZSt11make_uniqueIN5folly6fibers15StackCacheEntryEJRmS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i: ; preds = %.noexc.i.i
  store ptr %i.s, ptr %i.r, align 8, !tbaa !18, !alias.scope !159, !noalias !156
  br label %_ZN5folly6fibers12CacheManager13getStackCacheEmm.exit

_ZN5folly6fibers12CacheManager13getStackCacheEmm.exit: ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, %_ZN5folly6fibers12CacheManager8instanceEv.exit, %_ZSt11make_uniqueIN5folly6fibers15StackCacheEntryEJRmS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %storemerge.i = phi ptr [ %i.r, %_ZSt11make_uniqueIN5folly6fibers15StackCacheEntryEJRmS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i ], [ null, %_ZN5folly6fibers12CacheManager8instanceEv.exit ], [ null, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ] ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !96     ; 3 uses
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !96
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly6fibers15StackCacheEntryEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5folly6fibers15StackCacheEntryEEclEPS2_.exit.i.i.i.i: ; preds = %_ZN5folly6fibers12CacheManager13getStackCacheEmm.exit
  tail call void @_ZN5folly6fibers15StackCacheEntryD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 8) #24
  br label %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exitthread-pre-split

_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exitthread-pre-split: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly6fibers15StackCacheEntryEEclEPS2_.exit.i.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !96
  br label %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exitthread-pre-split, %_ZN5folly6fibers12CacheManager13getStackCacheEmm.exit
  %i.w = phi ptr [ %.pr, %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exitthread-pre-split ], [ %storemerge.i, %_ZN5folly6fibers12CacheManager13getStackCacheEmm.exit ] ; 2 uses
  %.not12 = icmp eq ptr %i.w, null
  br i1 %.not12, label %bb.k, label %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.b, %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit
  %i.x = phi ptr [ %i.w, %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit ], [ %i.c, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.z = tail call noundef ptr @_ZN5folly6fibers10StackCache6borrowEm(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 noundef %1) ; 2 uses
  %.not8.not = icmp eq ptr %i.z, null
  br i1 %.not8.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit
  %i.aa = icmp slt i64 %1, 0
  br i1 %i.aa, label %bb.l, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !78

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.k
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %1) #22
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit
  %.1 = phi ptr [ %i.ab, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %i.z, %_ZNSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EED2Ev.exit.thread ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6fibers10StackCache6borrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %struct.timespec, align 8           ; 6 uses
  %5 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %6 = alloca %"class.folly::LockedPtr", align 8  ; 8 uses
  %7 = alloca %"struct.std::pair.10", align 8     ; 7 uses
  %i.d = atomicrmw xchg ptr %0, i8 1 acq_rel, align 1
  %.not1.i.i = icmp eq i8 %i.d, 0
  br i1 %.not1.i.i, label %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.lr.ph.i.i
  %.sroa.4.1.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.sroa.4.2.i.i, %.preheader.i.i.backedge ] ; 3 uses
  %i.f = icmp ult i32 %.sroa.4.1.i.i, 4096
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i.i
  %i.g = add nuw nsw i32 %.sroa.4.1.i.i, 1
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !76
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i.i

bb.c:                                             ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !tbaa !163
  store i64 500000, ptr %i.e, align 8, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = invoke i32 @nanosleep(ptr noundef nonnull %4, ptr noundef nonnull %4)
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %.critedge.i.i.i.i

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.j = tail call ptr @__errno_location() #27
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.d, label %.critedge.i.i.i.i, !llvm.loop !166

.critedge.i.i.i.i:                                ; preds = %bb.e, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #23
  unreachable

_ZN5folly6detail7Sleeper4waitEv.exit.i.i:         ; preds = %.critedge.i.i.i.i, %bb.b
  %.sroa.4.2.i.i = phi i32 [ %i.g, %bb.b ], [ %.sroa.4.1.i.i, %.critedge.i.i.i.i ]
  %i.o = load atomic i8, ptr %0 monotonic, align 8
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %.preheader.i.i.backedge, label %bb.g

.preheader.i.i.backedge:                          ; preds = %_ZN5folly6detail7Sleeper4waitEv.exit.i.i, %bb.g
  br label %.preheader.i.i, !llvm.loop !167

bb.g:                                             ; preds = %_ZN5folly6detail7Sleeper4waitEv.exit.i.i
  %i.q = atomicrmw xchg ptr %0, i8 1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit, label %.preheader.i.i.backedge

_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit: ; preds = %bb.g, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  %i.t = call noundef i64 @_ZN5folly6fibers10StackCache9allocSizeEmm(i64 noundef %1, i64 noundef %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %.not = icmp eq i64 %i.t, %i.v
  br i1 %.not, label %bb.h, label %bb.ak

bb.h:                                             ; preds = %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 4 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.ak, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !168, !range !63, !noundef !64
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.ai, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load atomic i8, ptr @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.ai = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = call i64 @sysconf(i32 noundef 30) #12
  store i64 %i.aj, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.ak = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  br label %_ZN5folly6fibers10StackCache8pagesizeEv.exit

_ZN5folly6fibers10StackCache8pagesizeEv.exit:     ; preds = %bb.j, %bb.k, %bb.l
  %i.al = load i64, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.am = load i64, ptr %i.r, align 8, !tbaa !62
  %i.an = mul i64 %i.am, %i.al
  %i.ao = call i32 @mprotect(ptr noundef %i.ac, i64 noundef %i.an, i32 noundef 0) #12
  %.not21.not = icmp eq i32 %i.ao, 0
  br i1 %.not21.not, label %.critedge26, label %bb.m, !prof !45

bb.m:                                             ; preds = %_ZN5folly6fibers10StackCache8pagesizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.c, align 8, !tbaa !46
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !46
  invoke void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.c)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.9, i64 noundef 78)
          to label %.critedge unwind label %bb.ae ; 0 uses

.critedge:                                        ; preds = %bb.o
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.critedge26

.critedge26:                                      ; preds = %_ZN5folly6fibers10StackCache8pagesizeEv.exit, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ar = load atomic i8, ptr @_ZGVZN5folly6fibers10StackCache15protectedRangesEvE8instance acquire, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.p, label %bb.t, !prof !11

bb.p:                                             ; preds = %.critedge26
  %i.at = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6fibers10StackCache15protectedRangesEvE8instance) #12
  %.not.i27 = icmp eq i32 %i.at, 0
  br i1 %.not.i27, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22
          to label %bb.r unwind label %bb.s       ; 7 uses

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 1, ptr %i.ax, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.av, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.az, i8 0, i64 20, i1 false)
  store ptr %i.au, ptr @_ZZN5folly6fibers10StackCache15protectedRangesEvE8instance, align 8, !tbaa !30
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6fibers10StackCache15protectedRangesEvE8instance) #12
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly6fibers10StackCache15protectedRangesEvE8instance) #12
  br label %.body

bb.t:                                             ; preds = %bb.r, %bb.p, %.critedge26
  %i.bb = load ptr, ptr @_ZZN5folly6fibers10StackCache15protectedRangesEvE8instance, align 8, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56 ; 4 uses
  store ptr %i.bc, ptr %6, align 8, !tbaa !52, !alias.scope !169
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.bd, align 8, !tbaa !56, !alias.scope !169
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12, !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !169
  %i.be = load atomic i32, ptr %i.bc acquire, align 4, !noalias !169 ; 4 uses
  store i32 %i.be, ptr %i.b, align 4, !tbaa !7, !noalias !169
  %i.bf = and i32 %i.be, -1312
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.u, label %.critedge.i.i.i.i.i.i, !prof !45

bb.u:                                             ; preds = %bb.t
  %i.bh = or disjoint i32 %i.be, 128
  %i.bi = cmpxchg ptr %i.bc, i32 %i.be, i32 %i.bh seq_cst seq_cst, align 4, !noalias !169 ; 2 uses
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  br i1 %i.bj, label %bb.v, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !57

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.u
  %i.bk = extractvalue { i32, i1 } %i.bi, 0
  store i32 %i.bk, ptr %i.b, align 4, !noalias !169
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.t
  %i.bl = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.v unwind label %bb.ag      ; 0 uses

bb.v:                                             ; preds = %bb.u, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12, !noalias !169
  store i8 1, ptr %i.bd, align 8, !tbaa !56, !alias.scope !169
  %i.bm = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bm, null
  %.neg.i.i = select i1 %.not.i.i28, i64 0, i64 -56
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %.neg.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.bo = ptrtoint ptr %i.ac to i64
  %i.bp = load atomic i8, ptr @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize acquire, align 8
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.w, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit30, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.br = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  %.not.i29 = icmp eq i32 %i.br, 0
  br i1 %.not.i29, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit30, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = call i64 @sysconf(i32 noundef 30) #12
  store i64 %i.bs, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.bt = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  br label %_ZN5folly6fibers10StackCache8pagesizeEv.exit30

_ZN5folly6fibers10StackCache8pagesizeEv.exit30:   ; preds = %bb.v, %bb.w, %bb.x
  %i.bu = load i64, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.bv = load i64, ptr %i.r, align 8, !tbaa !62
  %i.bw = mul i64 %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bw
  %i.by = ptrtoint ptr %i.bx to i64
  store i64 %i.bo, ptr %7, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.by, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %i.bn, ptr %2, align 8, !tbaa !172
  %i.ca = invoke { ptr, i8 } @_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEES0_INS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.y unwind label %bb.ah      ; 0 uses

bb.y:                                             ; preds = %_ZN5folly6fibers10StackCache8pagesizeEv.exit30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.cb = load i8, ptr %i.bd, align 8, !tbaa !56, !range !63, !noundef !64
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.z, label %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.cd = load ptr, ptr %6, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ce = atomicrmw and ptr %i.cd, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cf = and i32 %i.ce, -401
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !7
  %i.cg = and i32 %i.ce, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.ab, !prof !45

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cd, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.ac

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #23
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.y, %bb.z, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !174
  %.pre35 = load i64, ptr %i.u, align 8, !tbaa !44
  br label %bb.ai

bb.ad:                                            ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.o, %bb.n
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #12
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.ae ], [ %i.cj, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.aj

bb.ag:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %_ZN5folly6fibers10StackCache8pagesizeEv.exit30
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #12
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.s, %bb.ah
  %.pn23 = phi { ptr, i32 } [ %i.cm, %bb.ah ], [ %i.cl, %bb.ag ], [ %i.ba, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.i
  %i.cn = phi i64 [ %.pre35, %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit ], [ %i.t, %bb.i ]
  %i.co = phi ptr [ %.pre, %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSG_22SynchronizedMutexLevelE1ELNSG_23SynchronizedMutexMethodE0EEEED2Ev.exit ], [ %i.z, %bb.i ]
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -16
  store ptr %i.cp, ptr %i.y, align 8, !tbaa !174
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cn
  %i.cr = sub i64 0, %1
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  br label %bb.ak

bb.aj:                                            ; preds = %.body, %bb.af
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %.pn, %bb.af ]
  store atomic i8 0, ptr %0 release, align 8
  resume { ptr, i32 } %.pn23.pn

bb.ak:                                            ; preds = %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit, %bb.h, %bb.ai
  %.0 = phi ptr [ %i.cs, %bb.ai ], [ null, %bb.h ], [ null, %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit ]
  store atomic i8 0, ptr %0 release, align 8
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6fibers10StackCacheC2Emm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  store atomic i8 0, ptr %0 seq_cst, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call noundef i64 @_ZN5folly6fibers10StackCache9allocSizeEmm(i64 noundef %1, i64 noundef %2) ; 2 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.e, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = mul i64 %i.d, 100
  %i.h = tail call ptr @mmap(ptr noundef null, i64 noundef %i.g, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #12 ; 2 uses
  %.not = icmp eq ptr %i.h, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.b, label %.critedge22, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !46
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !46
  invoke void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.6, i64 noundef 31)
          to label %.critedge unwind label %bb.h  ; 0 uses

.critedge:                                        ; preds = %bb.d
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.critedge22

.critedge22:                                      ; preds = %bb.a, %.critedge
  store ptr %i.h, ptr %i.b, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !47   ; 6 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = icmp ult i64 %i.p, 1600
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !174  ; 4 uses
  br i1 %i.q, label %_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairIPhbESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE11_M_allocateEm.exit.i: ; preds = %.critedge22
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.o
  %i.v = invoke noalias noundef nonnull dereferenceable(1600) ptr @_Znwm(i64 noundef 1600) #22
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.m, %i.s
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.v, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.m, %.noexc ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !175
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.s
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !179

_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.m, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #24
  br label %_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.v, ptr %i.f, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !174
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 1600 ; 2 uses
  store ptr %i.z, ptr %i.k, align 8, !tbaa !48
  br label %_ZNSt6vectorISt4pairIPhbESaIS2_EE7reserveEm.exit

_ZNSt6vectorISt4pairIPhbESaIS2_EE7reserveEm.exit: ; preds = %.critedge22, %_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.pre = phi ptr [ %i.y, %_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.s, %.critedge22 ]
  %i.aa = phi ptr [ %i.v, %_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.m, %.critedge22 ]
  %i.ab = phi ptr [ %i.z, %_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.l, %.critedge22 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.k

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIPhbESaIS2_EE12emplace_backIJRS1_bEEERS2_DpOT_.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ad, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.p

bb.j:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPhbESaIS2_EE11_M_allocateEm.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIPhbESaIS2_EE7reserveEm.exit, %_ZNSt6vectorISt4pairIPhbESaIS2_EE12emplace_backIJRS1_bEEERS2_DpOT_.exit
  %i.ag = phi ptr [ %i.aa, %_ZNSt6vectorISt4pairIPhbESaIS2_EE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorISt4pairIPhbESaIS2_EE12emplace_backIJRS1_bEEERS2_DpOT_.exit ] ; 6 uses
  %i.ah = phi ptr [ %i.ab, %_ZNSt6vectorISt4pairIPhbESaIS2_EE7reserveEm.exit ], [ %i.bh, %_ZNSt6vectorISt4pairIPhbESaIS2_EE12emplace_backIJRS1_bEEERS2_DpOT_.exit ] ; 5 uses
  %i.ai = phi ptr [ %.pre, %_ZNSt6vectorISt4pairIPhbESaIS2_EE7reserveEm.exit ], [ %i.bi, %_ZNSt6vectorISt4pairIPhbESaIS2_EE12emplace_backIJRS1_bEEERS2_DpOT_.exit ] ; 4 uses
  %.028 = phi i64 [ 0, %_ZNSt6vectorISt4pairIPhbESaIS2_EE7reserveEm.exit ], [ %i.bj, %_ZNSt6vectorISt4pairIPhbESaIS2_EE12emplace_backIJRS1_bEEERS2_DpOT_.exit ] ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !44
  %i.al = mul i64 %i.ak, %.028
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 0, ptr %i.an, align 8, !tbaa !168
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.ac, align 8, !tbaa !174
  br label %_ZNSt6vectorISt4pairIPhbESaIS2_EE12emplace_backIJRS1_bEEERS2_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = ptrtoint ptr %i.ag to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775792
  br i1 %i.as, label %bb.n, label %_ZNKSt6vectorISt4pairIPhbESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #26
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt4pairIPhbESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.at = ashr exact i64 %i.ar, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 576460752303423487)
  %i.ax = select i1 %i.av, i64 576460752303423487, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #22
          to label %.noexc24 unwind label %.loopexit ; 6 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorISt4pairIPhbESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar ; 2 uses
  store ptr %i.am, ptr %i.ba, align 8, !tbaa !59
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i8 0, ptr %i.bb, align 8, !tbaa !168
  %.not10.i.i.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc24, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.az, %.noexc24 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc24 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !180
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !179

_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc24
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %.noexc24 ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ar) #24
  br label %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i
  store ptr %i.az, ptr %i.f, align 8, !tbaa !47
  store ptr %i.be, ptr %i.ac, align 8, !tbaa !174
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ax ; 2 uses
  store ptr %i.bf, ptr %i.k, align 8, !tbaa !48
  br label %_ZNSt6vectorISt4pairIPhbESaIS2_EE12emplace_backIJRS1_bEEERS2_DpOT_.exit

_ZNSt6vectorISt4pairIPhbESaIS2_EE12emplace_backIJRS1_bEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.l
  %i.bg = phi ptr [ %i.az, %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ag, %bb.l ]
  %i.bh = phi ptr [ %i.bf, %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ah, %bb.l ]
  %i.bi = phi ptr [ %i.be, %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ao, %bb.l ]
  %i.bj = add nuw nsw i64 %.028, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, 100
  br i1 %exitcond.not, label %bb.f, label %bb.k, !llvm.loop !184

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIPhbESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.i
  %.pn20 = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.af, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bk = load ptr, ptr %i.f, align 8, !tbaa !47  ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorISt4pairIPhbESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !48
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #24
  br label %_ZNSt6vectorISt4pairIPhbESaIS2_EED2Ev.exit

_ZNSt6vectorISt4pairIPhbESaIS2_EED2Ev.exit:       ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6fibers10StackCache9allocSizeEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @sysconf(i32 noundef 30) #12
  store i64 %i.d, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  br label %_ZN5folly6fibers10StackCache8pagesizeEv.exit

_ZN5folly6fibers10StackCache8pagesizeEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i64, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.g = load atomic i8, ptr @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit3, !prof !11

bb.d:                                             ; preds = %_ZN5folly6fibers10StackCache8pagesizeEv.exit
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  %.not.i2 = icmp eq i32 %i.i, 0
  br i1 %.not.i2, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @sysconf(i32 noundef 30) #12
  store i64 %i.j, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  br label %_ZN5folly6fibers10StackCache8pagesizeEv.exit3

_ZN5folly6fibers10StackCache8pagesizeEv.exit3:    ; preds = %_ZN5folly6fibers10StackCache8pagesizeEv.exit, %bb.d, %bb.e
  %i.l = load i64, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.m = load atomic i8, ptr @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit5, !prof !11

bb.f:                                             ; preds = %_ZN5folly6fibers10StackCache8pagesizeEv.exit3
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  %.not.i4 = icmp eq i32 %i.o, 0
  br i1 %.not.i4, label %_ZN5folly6fibers10StackCache8pagesizeEv.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i64 @sysconf(i32 noundef 30) #12
  store i64 %i.p, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6fibers10StackCache8pagesizeEvE8pagesize) #12
  br label %_ZN5folly6fibers10StackCache8pagesizeEv.exit5

_ZN5folly6fibers10StackCache8pagesizeEv.exit5:    ; preds = %_ZN5folly6fibers10StackCache8pagesizeEv.exit3, %bb.f, %bb.g
  %i.r = mul i64 %i.l, %1
  %i.s = add i64 %0, -1
  %i.t = add i64 %i.s, %i.r
  %i.u = load i64, ptr @_ZZN5folly6fibers10StackCache8pagesizeEvE8pagesize, align 8, !tbaa !61
  %i.v = udiv i64 %i.t, %i.u
  %i.w = add i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.f
  ret i64 %i.x
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEES0_INS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %.not.not = icmp eq i64 %i.b, 0                 ; 2 uses
  %.pre = load i64, ptr %1, align 8               ; 4 uses
  br i1 %.not.not, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre43 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !61
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.c, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !66 ; 5 uses
  %i.f = icmp eq ptr %.sroa.028.0, null
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67
  %i.i = icmp eq i64 %.pre, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.e, %i.k
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNKSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, label %bb.c, !llvm.loop !185

.thread:                                          ; preds = %bb.c, %..thread_crit_edge
  %i.n = phi i64 [ %.pre43, %..thread_crit_edge ], [ %i.e, %bb.c ] ; 2 uses
  %i.o = xor i64 %i.n, %.pre
  %i.p = mul i64 %i.o, -7070675565921424023       ; 2 uses
  %i.q = lshr i64 %i.p, 47
  %i.r = xor i64 %.pre, %i.q
  %i.s = xor i64 %i.r, %i.p
  %i.t = mul i64 %i.s, -7070675565921424023       ; 2 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -7070675565921424023       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %i.z = urem i64 %i.w, %i.y                      ; 3 uses
  br i1 %.not.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ae = phi i64 [ %.pre.i.i, %bb.f ], [ %i.aq, %bb.h ]
  %i.af = phi ptr [ %i.ad, %bb.f ], [ %i.ao, %bb.h ] ; 4 uses
  %i.ag = icmp eq i64 %i.w, %i.ae
  br i1 %i.ag, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !67
  %i.aj = icmp eq i64 %.pre, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp eq i64 %i.n, %i.al
  %i.an = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %i.an, label %_ZNKSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i, %bb.g
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !66 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !71 ; 2 uses
  %i.ar = urem i64 %i.aq, %i.y
  %.not19.i.i = icmp eq i64 %i.ar, %i.z
  br i1 %.not19.i.i, label %bb.g, label %.critedge, !llvm.loop !186

.critedge:                                        ; preds = %bb.h, %_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i, %bb.e, %.thread
  %i.as = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 4 uses
  store ptr null, ptr %i.as, align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.au = invoke ptr @_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.z, i64 noundef %i.w, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %_ZNKSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit unwind label %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 32) #24
  resume { ptr, i32 } %i.av

_ZNKSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit: ; preds = %bb.d, %_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i, %.critedge
  %.sroa.031.1 = phi ptr [ %i.au, %.critedge ], [ %i.af, %_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i ], [ %.sroa.028.0, %bb.d ]
  %.sroa.432.1 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt8__detail15_Hashtable_baseISt4pairIllES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !187
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #12 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !187
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #23
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !28
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %i.t, align 8, !tbaa !71
  %i.u = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66
  store ptr %i.x, ptr %3, align 8, !tbaa !66
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !73
  store ptr %3, ptr %i.y, align 8, !tbaa !66
  br label %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  store ptr %i.aa, ptr %3, align 8, !tbaa !66
  store ptr %3, ptr %i.z, align 8, !tbaa !75
  %i.ab = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !71
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !73
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !73
  br label %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !65
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !78

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !188
  br label %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIllELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !78

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIllELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIllELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIllELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !75
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !66  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !71
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !75
  store ptr %i.o, ptr %.031, align 8, !tbaa !66
  store ptr %.031, ptr %i.g, align 8, !tbaa !75
  store ptr %i.g, ptr %i.m, align 8, !tbaa !73
  %i.p = load ptr, ptr %.031, align 8, !tbaa !66
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !73
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !66
  store ptr %i.r, ptr %.031, align 8, !tbaa !66
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !73
  store ptr %.031, ptr %i.s, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #24
  br label %_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !28
  store ptr %.0.i, ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers18GuardPageAllocator10deallocateEPhm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef zeroext i1 @_ZN5folly6fibers10StackCache8giveBackEPhm(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef %1, i64 noundef %2)
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZdlPvm(ptr noundef %1, i64 noundef %2) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6fibers10StackCache8giveBackEPhm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = atomicrmw xchg ptr %0, i8 1 acq_rel, align 1
  %.not1.i.i = icmp eq i8 %i.a, 0
  br i1 %.not1.i.i, label %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.lr.ph.i.i
  %.sroa.4.1.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.sroa.4.2.i.i, %.preheader.i.i.backedge ] ; 3 uses
  %i.c = icmp ult i32 %.sroa.4.1.i.i, 4096
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i.i
  %i.d = add nuw nsw i32 %.sroa.4.1.i.i, 1
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !76
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i.i

bb.c:                                             ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !tbaa !163
  store i64 500000, ptr %i.b, align 8, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.e = invoke i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.e, label %.critedge.i.i.i.i

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.g = tail call ptr @__errno_location() #27
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %.critedge.i.i.i.i, !llvm.loop !166

.critedge.i.i.i.i:                                ; preds = %bb.e, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

_ZN5folly6detail7Sleeper4waitEv.exit.i.i:         ; preds = %.critedge.i.i.i.i, %bb.b
  %.sroa.4.2.i.i = phi i32 [ %i.d, %bb.b ], [ %.sroa.4.1.i.i, %.critedge.i.i.i.i ]
  %i.l = load atomic i8, ptr %0 monotonic, align 8
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %.preheader.i.i.backedge, label %bb.g

.preheader.i.i.backedge:                          ; preds = %_ZN5folly6detail7Sleeper4waitEv.exit.i.i, %bb.g
  br label %.preheader.i.i, !llvm.loop !167

bb.g:                                             ; preds = %_ZN5folly6detail7Sleeper4waitEv.exit.i.i
  %i.n = atomicrmw xchg ptr %0, i8 1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit, label %.preheader.i.i.backedge

_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit: ; preds = %bb.g, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62
  %i.q = call noundef i64 @_ZN5folly6fibers10StackCache9allocSizeEmm(i64 noundef %2, i64 noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %.not = icmp ugt ptr %1, %i.s
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44
  %i.v = mul i64 %i.u, 100
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %.not15 = icmp ugt ptr %i.w, %1
  br i1 %.not15, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.y = sub i64 0, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !174 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i8 1, ptr %i.af, align 8, !tbaa !168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !174
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 5 uses
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775792
  br i1 %i.al, label %bb.l, label %_ZNKSt6vectorISt4pairIPhbESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #26
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt4pairIPhbESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.am = ashr exact i64 %i.ak, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 576460752303423487)
  %i.aq = select i1 %i.ao, i64 576460752303423487, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #22
          to label %.noexc9 unwind label %bb.n    ; 5 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt4pairIPhbESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 2 uses
  store ptr %i.z, ptr %i.at, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 1, ptr %i.au, align 8, !tbaa !168
  %.not10.i.i.i.i.i = icmp eq ptr %i.ah, %i.ac
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.as, %.noexc9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc9 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !190
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !179

_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc9
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.as, %.noexc9 ], [ %i.aw, %.lr.ph.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i24.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ak) #24
  br label %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIPhbESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !47
  store ptr %i.ax, ptr %i.ab, align 8, !tbaa !174
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.ay, ptr %i.ad, align 8, !tbaa !48
  br label %.critedge

bb.n:                                             ; preds = %_ZNKSt6vectorISt4pairIPhbESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %0 release, align 8
  resume { ptr, i32 } %i.az

.critedge:                                        ; preds = %bb.j, %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit, %bb.h
  %.0 = phi i1 [ false, %_ZNSt10lock_guardIN5folly8SpinLockEEC2ERS1_.exit ], [ false, %bb.h ], [ true, %_ZNSt6vectorISt4pairIPhbESaIS2_EE17_M_realloc_insertIJRS1_bEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ true, %bb.j ]
  store atomic i8 0, ptr %0 release, align 8
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #8 align 2

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #18 section ".text.startup" comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE, align 8
  tail call void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE3arg) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_() #8 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) #8 comdat align 2 {
bb.a:
  %i.a = and i32 %2, 12
  %i.b = icmp eq i32 %i.a, 12
  %.pre13 = load i32, ptr %1, align 4, !tbaa !7   ; 2 uses
  %i.c = and i32 %.pre13, %2
  %i.d = icmp eq i32 %i.c, 12
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 12)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %1, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %._crit_edge ], [ %.pre13, %bb.a ]
  %i.h = and i32 %i.g, %2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = xor i32 %2, -1                           ; 2 uses
  %i.j = atomicrmw and ptr %0, i32 %i.i seq_cst, align 4 ; 2 uses
  %i.k = and i32 %i.j, %2
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 2147483647, i32 noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = and i32 %i.j, %i.i
  store i32 %i.m, ptr %1, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nofree nounwind }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { cold }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSSt13__atomic_baseImE", !14, i64 0}
!14 = !{!"long", !9, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN5folly6fibers12CacheManagerE", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN5folly6fibers10StackCacheE", !17, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSSt10_HashtableISt4pairIllES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE", !22, i64 0, !14, i64 8, !24, i64 16, !14, i64 24, !26, i64 32, !25, i64 48}
!22 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !23, i64 0}
!23 = !{!"any p2 pointer", !17, i64 0}
!24 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !25, i64 0}
!25 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!26 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !27, i64 0, !14, i64 8}
!27 = !{!"float", !9, i64 0}
!28 = !{!21, !14, i64 8}
!29 = !{!26, !27, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSN5folly12SynchronizedISt13unordered_setISt4pairIllESt4hashIS3_ESt8equal_toIS3_ESaIS3_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !17, i64 0}
!32 = !{!33, !19, i64 0}
!33 = !{!"_ZTSZN5folly6fibers10StackCacheD1EvEUlRT_E_", !19, i64 0}
!34 = !{!35, !38, i64 8}
!35 = !{!"_ZTSN5folly6fibers10StackCacheE", !36, i64 0, !38, i64 8, !14, i64 16, !14, i64 24, !39, i64 32}
!36 = !{!"_ZTSN5folly8SpinLockE", !37, i64 0}
!37 = !{!"_ZTSN5folly13MicroSpinLockE", !9, i64 0}
!38 = !{!"p1 omnipotent char", !17, i64 0}
!39 = !{!"_ZTSSt6vectorISt4pairIPhbESaIS2_EE", !40, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseISt4pairIPhbESaIS2_EE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseISt4pairIPhbESaIS2_EE12_Vector_implE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseISt4pairIPhbESaIS2_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTSSt4pairIPhbE", !17, i64 0}
!44 = !{!35, !14, i64 16}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!9, !9, i64 0}
!47 = !{!42, !43, i64 0}
!48 = !{!42, !43, i64 16}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!51 = distinct !{!51, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !54, i64 0, !55, i64 8}
!54 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !17, i64 0}
!55 = !{!"bool", !9, i64 0}
!56 = !{!53, !55, i64 8}
!57 = !{!"branch_weights", i32 2146410443, i32 1073205}
!58 = !{!43, !43, i64 0}
!59 = !{!60, !38, i64 0}
!60 = !{!"_ZTSSt4pairIPhbE", !38, i64 0, !55, i64 8}
!61 = !{!14, !14, i64 0}
!62 = !{!35, !14, i64 24}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!21, !14, i64 24}
!66 = !{!24, !25, i64 0}
!67 = !{!68, !14, i64 0}
!68 = !{!"_ZTSSt4pairIllE", !14, i64 0, !14, i64 8}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!72, !14, i64 0}
!72 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !14, i64 0}
!73 = !{!25, !25, i64 0}
!74 = distinct !{!74, !70}
!75 = !{!21, !25, i64 16}
!76 = !{i64 13498232}
!77 = distinct !{!77, !70}
!78 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!79 = distinct !{!79, !70}
!80 = distinct !{!80, !70}
!81 = distinct !{!81, !70}
!82 = distinct !{!82, !70}
!83 = distinct !{!83, !70}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN5folly6fibers15StackCacheEntryELb0EE", !86, i64 0}
!86 = !{!"p1 _ZTSN5folly6fibers15StackCacheEntryE", !17, i64 0}
!87 = !{!88, !14, i64 16}
!88 = !{!"_ZTSN5folly6fibers18GuardPageAllocatorE", !89, i64 0, !94, i64 8, !14, i64 16}
!89 = !{!"_ZTSSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EE", !90, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_ELb1ELb1EE", !91, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_implIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EE", !92, i64 0}
!92 = !{!"_ZTSSt5tupleIJPN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EEE", !93, i64 0}
!93 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EEE", !85, i64 0}
!94 = !{!"_ZTSSaIhE"}
!95 = !{!17, !17, i64 0}
!96 = !{!86, !86, i64 0}
!97 = !{!98, !8, i64 136}
!98 = !{!"_ZTS9sigaction", !9, i64 0, !99, i64 8, !8, i64 136, !17, i64 144}
!99 = !{!"_ZTS10__sigset_t", !9, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 long", !17, i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"vtable pointer", !10, i64 0}
!104 = !{!105, !116, i64 240}
!105 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !106, i64 0, !114, i64 216, !9, i64 224, !55, i64 225, !115, i64 232, !116, i64 240, !117, i64 248, !118, i64 256}
!106 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !107, i64 24, !108, i64 28, !108, i64 32, !109, i64 40, !110, i64 48, !9, i64 64, !8, i64 192, !111, i64 200, !112, i64 208}
!107 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!108 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!109 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!110 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !14, i64 8}
!111 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!112 = !{!"_ZTSSt6locale", !113, i64 0}
!113 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!114 = !{!"p1 _ZTSSo", !17, i64 0}
!115 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!116 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!117 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!118 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!119 = !{!120, !9, i64 56}
!120 = !{!"_ZTSSt5ctypeIcE", !121, i64 0, !122, i64 16, !55, i64 24, !123, i64 32, !123, i64 40, !124, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!121 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!122 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!123 = !{!"p1 int", !17, i64 0}
!124 = !{!"p1 short", !17, i64 0}
!125 = !DISubprogram(name: "do_widen", linkageName: "_ZNKSt5ctypeIcE8do_widenEc", scope: !127, file: !126, line: 1092, type: !129, scopeLine: 1092, containingType: !127, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!126 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/locale_facets.h", directory: "")
!127 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !128, file: !126, line: 689, size: 4608, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt5ctypeIcE")
!128 = !DINamespace(name: "std", scope: null)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !133, !132}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !127, file: !126, line: 694, baseType: !132, flags: DIFlagPublic)
!132 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!135 = distinct !{null, null, null, null}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!138 = distinct !{!138, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv"}
!139 = !{!140, !54, i64 0}
!140 = !{!"_ZTSSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !54, i64 0, !141, i64 8}
!141 = !{!"_ZTSN5folly16SharedMutexTokenE", !142, i64 0, !143, i64 2}
!142 = !{!"_ZTSN5folly16SharedMutexToken5StateE", !9, i64 0}
!143 = !{!"short", !9, i64 0}
!144 = !{!141, !142, i64 0}
!145 = !{!141, !143, i64 2}
!146 = !{!147, !101, i64 0}
!147 = !{!"_ZTSZN5folly6fibers10StackCache11isProtectedElEUlRKT_E_", !101, i64 0}
!148 = !{i64 8}
!149 = !{!68, !14, i64 8}
!150 = !{!"branch_weights", i32 4001, i32 1}
!151 = distinct !{null}
!152 = distinct !{!152, !70}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN5folly6fibers12CacheManager13getStackCacheEmm: argument 0"}
!155 = distinct !{!155, !"_ZN5folly6fibers12CacheManager13getStackCacheEmm"}
!156 = !{!157, !154}
!157 = distinct !{!157, !158, !"_ZSt11make_uniqueIN5folly6fibers15StackCacheEntryEJRmS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!158 = distinct !{!158, !"_ZSt11make_uniqueIN5folly6fibers15StackCacheEntryEJRmS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZSt11make_uniqueIN5folly6fibers10StackCacheEJRmS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!161 = distinct !{!161, !"_ZSt11make_uniqueIN5folly6fibers10StackCacheEJRmS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!162 = !{!160, !157, !154}
!163 = !{!164, !14, i64 0}
!164 = !{!"_ZTS8timespec", !14, i64 0, !14, i64 8}
!165 = !{!164, !14, i64 8}
!166 = distinct !{!166, !70}
!167 = distinct !{!167, !70}
!168 = !{!60, !55, i64 8}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!171 = distinct !{!171, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setISt4pairIllESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!172 = !{!173, !173, i64 0}
!173 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIllELb1EEEEEE", !17, i64 0}
!174 = !{!42, !43, i64 8}
!175 = !{!176, !178}
!176 = distinct !{!176, !177, !"_ZSt19__relocate_object_aISt4pairIPhbES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!177 = distinct !{!177, !"_ZSt19__relocate_object_aISt4pairIPhbES2_SaIS2_EEvPT_PT0_RT1_"}
!178 = distinct !{!178, !177, !"_ZSt19__relocate_object_aISt4pairIPhbES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!179 = distinct !{!179, !70}
!180 = !{!181, !183}
!181 = distinct !{!181, !182, !"_ZSt19__relocate_object_aISt4pairIPhbES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!182 = distinct !{!182, !"_ZSt19__relocate_object_aISt4pairIPhbES2_SaIS2_EEvPT_PT0_RT1_"}
!183 = distinct !{!183, !182, !"_ZSt19__relocate_object_aISt4pairIPhbES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!184 = distinct !{!184, !70}
!185 = distinct !{!185, !70}
!186 = distinct !{!186, !70}
!187 = !{!26, !14, i64 8}
!188 = !{!21, !25, i64 48}
!189 = distinct !{!189, !70}
!190 = !{!191, !193}
!191 = distinct !{!191, !192, !"_ZSt19__relocate_object_aISt4pairIPhbES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!192 = distinct !{!192, !"_ZSt19__relocate_object_aISt4pairIPhbES2_SaIS2_EEvPT_PT0_RT1_"}
!193 = distinct !{!193, !192, !"_ZSt19__relocate_object_aISt4pairIPhbES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
end_hunk_0
