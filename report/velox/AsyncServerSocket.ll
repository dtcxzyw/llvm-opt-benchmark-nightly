inline.NumInlined: 2640
inline.NumDeleted: 1337
begin_hunk_0_@_ZZN5folly15observer_detail15ObserverManager8initCoreESt10shared_ptrINS0_4CoreEEENKUlvE_clEv:bb.a
  br label %_ZTWN5folly15observer_detail15ObserverManager16inManagerThread_E.exit

_ZTWN5folly15observer_detail15ObserverManager16inManagerThread_E.exit: ; preds = %bb.a, %bb.b
  %i.d = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN5folly15observer_detail15ObserverManager16inManagerThread_E) ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10758, !range !10600, !noundef !146 ; 2 uses
  store i8 1, ptr %i.d, align 1, !tbaa !10758
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.f = load ptr, ptr %0, align 8, !tbaa !11154, !nonnull !146, !align !11031 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !11156
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !11161
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !11162
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.i = load atomic i32, ptr %i.f monotonic, align 8 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZTWN5folly15observer_detail15ObserverManager16inManagerThread_E.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr %i.f, i32 %i.i, i32 %i.l seq_cst seq_cst, align 4 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.c
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.g, align 8, !tbaa !11161
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i, %_ZTWN5folly15observer_detail15ObserverManager16inManagerThread_E.exit
  %i.p = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.f unwind label %bb.s       ; 0 uses

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11163, !nonnull !146, !align !11031
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11087
  %i.t = load ptr, ptr %0, align 8, !tbaa !11154, !nonnull !146, !align !11031
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i64, ptr %i.u seq_cst, align 8
  %i.w = invoke noundef i64 @_ZN5folly15observer_detail4Core7refreshEm(ptr noundef nonnull align 16 dereferenceable(293) %i.s, i64 noundef %i.v)
          to label %bb.g unwind label %bb.t       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.x = load i16, ptr %i.g, align 8, !tbaa !11161 ; 2 uses
  %.not.i4 = icmp eq i16 %i.x, 0
  br i1 %.not.i4, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %2, align 8, !tbaa !11156  ; 7 uses
  switch i16 %i.x, label %bb.n [
    i16 1, label %bb.i
    i16 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = load atomic i32, ptr %i.y acquire, align 4
  %i.aa = and i32 %i.z, 768
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.y)
          to label %.noexc9 unwind label %bb.p

.noexc9:                                          ; preds = %bb.j
  br i1 %i.ac, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.noexc9, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.ad = atomicrmw sub ptr %i.y, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ae = add i32 %i.ad, -2048                    ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !7
  %i.af = icmp ugt i32 %i.ae, 2047
  %i.ag = and i32 %i.ad, 16
  %.not.i.i.i.i8 = icmp eq i32 %i.ag, 0
  %or.cond.i.i.i = or i1 %i.af, %.not.i.i.i.i8
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !11164

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.ah = load i16, ptr %i.h, align 2, !tbaa !11162
  %i.ai = zext i16 %i.ah to i64
  %i.aj = ptrtoint ptr %i.y to i64
  %.idx.i = shl nuw nsw i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.al = cmpxchg ptr %i.ak, i64 %i.aj, i64 0 seq_cst seq_cst, align 8
  %i.am = extractvalue { i64, i1 } %i.al, 1
  br i1 %i.am, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.an = atomicrmw sub ptr %i.y, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ao = add i32 %i.an, -2048                    ; 2 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !7
  %i.ap = icmp ugt i32 %i.ao, 2047
  %i.aq = and i32 %i.an, 16
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  %or.cond.i.i = or i1 %i.ap, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !11164

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #48
  unreachable

bb.q:                                             ; preds = %bb.g, %.noexc9, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %bb.m, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.not.i, label %_ZN5folly6detail14ScopeGuardImplIZZNS_15observer_detail15ObserverManager8initCoreESt10shared_ptrINS2_4CoreEEENKUlvE_clEvEUlvE_Lb1EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZTHN5folly15observer_detail15ObserverManager16inManagerThread_E() #39
  br label %_ZN5folly6detail14ScopeGuardImplIZZNS_15observer_detail15ObserverManager8initCoreESt10shared_ptrINS2_4CoreEEENKUlvE_clEvEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZZNS_15observer_detail15ObserverManager8initCoreESt10shared_ptrINS2_4CoreEEENKUlvE_clEvEUlvE_Lb1EED2Ev.exit: ; preds = %bb.q, %bb.r
  store i8 %i.e, ptr %i.d, align 1, !tbaa !10758
  ret void

bb.s:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #39
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.pn = phi { ptr, i32 } [ %i.au, %bb.t ], [ %i.at, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.not.i, label %_ZN5folly6detail14ScopeGuardImplIZZNS_15observer_detail15ObserverManager8initCoreESt10shared_ptrINS2_4CoreEEENKUlvE_clEvEUlvE_Lb1EED2Ev.exit7, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZTHN5folly15observer_detail15ObserverManager16inManagerThread_E() #39
  br label %_ZN5folly6detail14ScopeGuardImplIZZNS_15observer_detail15ObserverManager8initCoreESt10shared_ptrINS2_4CoreEEENKUlvE_clEvEUlvE_Lb1EED2Ev.exit7

_ZN5folly6detail14ScopeGuardImplIZZNS_15observer_detail15ObserverManager8initCoreESt10shared_ptrINS2_4CoreEEENKUlvE_clEvEUlvE_Lb1EED2Ev.exit7: ; preds = %bb.u, %bb.v
  store i8 %i.e, ptr %i.d, align 1, !tbaa !10758
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_ZN5folly15observer_detail4Core7refreshEm(ptr noundef nonnull align 16 dereferenceable(293), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11161
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !11156
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !10752

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #54
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.f, i32 256)
  %.sroa.speculated.i = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 %.sroa.speculated.i
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.l = or disjoint i64 %i.k, 1
  %i.m = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl)
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit
  %i.n = load i32, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.o = and i32 %i.n, 128
  %.not50 = icmp eq i32 %i.o, 0
  br i1 %.not50, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !10731

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i64 @llvm.x86.rdtsc()
  %i.q = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !7
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.t = call noundef i64 @llvm.x86.rdtsc()
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ult i64 %i.u, 4000
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !10731

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #39, !srcloc !11165
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !11166

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %.lr.ph.i
  %i.z = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 128, i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !7
  br label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread: ; preds = %bb.e, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, %bb.d, %bb.c
  %i.aa = phi i32 [ %i.n, %bb.c ], [ %.pre, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit ], [ %i.q, %bb.d ], [ %i.w, %bb.e ] ; 5 uses
  %i.ab = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %i.ac = and i32 %i.aa, 512
  %.not51 = icmp eq i32 %i.ac, 0
  br i1 %.not51, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.ad = and i32 %i.aa, 64
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = icmp ult i32 %i.aa, 2048
  %or.cond = or i1 %i.af, %i.ae
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.ag = shl i32 %i.ab, 2
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ah
  %i.aj = load atomic i64, ptr %i.ai monotonic, align 32
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i60 = icmp eq ptr %i.ak, null
  br i1 %.not.i60, label %bb.i, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !10752

bb.i:                                             ; preds = %bb.h
  %i.al = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.am = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.an = call noundef i32 %i.am(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !11167 ; 0 uses
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !7
  %i.ap = and i32 %i.ao, 255                      ; 2 uses
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !7
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aq
  %i.as = load atomic i8, ptr %i.ar monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %i.at = zext i8 %i.as to i32                    ; 3 uses
  %i.au = shl nuw nsw i32 %i.at, 2
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.av
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 32
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %i.az = xor i32 %i.at, 1                        ; 2 uses
  %i.ba = shl nuw nsw i32 %i.az, 2
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bb
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 32
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.k, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre91 = load i32, ptr %1, align 4, !tbaa !7
  br label %.loopexit

bb.k:                                             ; preds = %bb.j, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %.lcssa = phi i32 [ %i.at, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit ], [ %i.az, %bb.j ] ; 2 uses
  store atomic i32 %.lcssa, ptr %i.g monotonic, align 4
  %.pre90 = load i32, ptr %1, align 4, !tbaa !7
  br label %bb.n

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f
  %i.bf = phi i32 [ %.pre91, %.loopexit.loopexit ], [ %i.aa, %bb.f ] ; 2 uses
  %i.bg = add i32 %i.bf, 2048
  %i.bh = cmpxchg ptr %0, i32 %i.bf, i32 %i.bg seq_cst seq_cst, align 4 ; 2 uses
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %bb.l, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %.loopexit
  %i.bj = extractvalue { i32, i1 } %i.bh, 0
  store i32 %i.bj, ptr %1, align 4
  br label %.backedge

bb.l:                                             ; preds = %.loopexit
  br i1 %i.j, label %.thread81, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i16 2, ptr %2, align 2, !tbaa !11161
  br label %.thread81

bb.n:                                             ; preds = %bb.g, %bb.k
  %i.bk = phi i32 [ %.pre90, %bb.k ], [ %i.aa, %bb.g ] ; 3 uses
  %.247.ph = phi i32 [ %.lcssa, %bb.k ], [ %i.ab, %bb.g ] ; 3 uses
  %i.bl = and i32 %i.bk, 512
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit58.thread

bb.o:                                             ; preds = %bb.n
  %i.bn = or disjoint i32 %i.bk, 512
  %i.bo = cmpxchg ptr %0, i32 %i.bk, i32 %i.bn seq_cst seq_cst, align 4 ; 2 uses
  %i.bp = extractvalue { i32, i1 } %i.bo, 1
  br i1 %i.bp, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit58.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = extractvalue { i32, i1 } %i.bo, 0       ; 2 uses
  store i32 %i.bq, ptr %1, align 4
  %i.br = and i32 %i.bq, 640
  %.not53 = icmp eq i32 %i.br, 512
  br i1 %.not53, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit58.thread, label %.backedge

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit58.thread: ; preds = %bb.o, %bb.p, %bb.n
  %i.bs = shl i32 %.247.ph, 2
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bt ; 3 uses
  br i1 %i.j, label %bb.q, label %.thread77

bb.q:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit58.thread
  %i.bv = cmpxchg ptr %i.bu, i64 0, i64 %i.l seq_cst seq_cst, align 8
  %i.bw = extractvalue { i64, i1 } %i.bv, 1
  br i1 %i.bw, label %.thread79, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread77:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit58.thread
  %i.bx = cmpxchg ptr %i.bu, i64 0, i64 %i.k seq_cst seq_cst, align 8
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  br i1 %i.by, label %bb.r, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %.thread77, %bb.q
  %i.bz = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bz, ptr %1, align 4, !tbaa !7
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.v, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64, %.thread82, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, %bb.p
  br label %bb.c, !llvm.loop !11168

bb.r:                                             ; preds = %.thread77
  %i.ca = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.ca, ptr %1, align 4, !tbaa !7
  %i.cb = and i32 %i.ca, 512
  %.not54 = icmp eq i32 %i.cb, 0
  br i1 %.not54, label %bb.v, label %bb.s

.thread79:                                        ; preds = %bb.q
  %i.cc = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.cc, ptr %1, align 4, !tbaa !7
  store atomic i32 %.247.ph, ptr %i.m monotonic, align 4
  %i.cd = load i32, ptr %1, align 4, !tbaa !7
  %i.ce = and i32 %i.cd, 512
  %.not5480 = icmp eq i32 %i.ce, 0
  br i1 %.not5480, label %.thread82, label %.thread81

bb.s:                                             ; preds = %bb.r
  store i16 3, ptr %2, align 2, !tbaa !11161
  %i.cf = trunc i32 %.247.ph to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !11162
  br label %.thread81

.thread82:                                        ; preds = %.thread79
  %i.ch = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ch, label %.backedge, label %bb.t

bb.t:                                             ; preds = %.thread82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.ci = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cj = add i32 %i.ci, -2048                    ; 2 uses
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !7
  %i.ck = icmp ugt i32 %i.cj, 2047
  %i.cl = and i32 %i.ci, 16
  %.not.i.i = icmp eq i32 %i.cl, 0
  %or.cond.i = or i1 %i.ck, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.u, !prof !11164

bb.u:                                             ; preds = %bb.t
  call void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %.backedge

bb.v:                                             ; preds = %bb.r
  %i.cm = cmpxchg ptr %i.bu, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %.backedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.co = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cp = add i32 %i.co, -2048                    ; 2 uses
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !7
  %i.cq = icmp ugt i32 %i.cp, 2047
  %i.cr = and i32 %i.co, 16
  %.not.i.i61 = icmp eq i32 %i.cr, 0
  %or.cond.i62 = or i1 %i.cq, %.not.i.i61
  br i1 %or.cond.i62, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64, label %bb.x, !prof !11164

bb.x:                                             ; preds = %bb.w
  call void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %.backedge

.thread81:                                        ; preds = %.thread79, %bb.l, %bb.m, %bb.s
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #11

; Function Attrs: cold
declare noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @sched_yield() #39 ; 0 uses
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !7
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @sched_yield() #39 ; 0 uses
  %i.f = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.f, ptr %1, align 4, !tbaa !7
  %i.g = and i32 %i.f, %2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  %i.j = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !7
  %i.k = and i32 %i.j, %2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j:bb.a
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bd ; 2 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 32 ; 2 uses
  %i.bg = and i64 %i.bf, -2
  %i.bh = icmp eq i64 %i.bg, %i.d
  br i1 %i.bh, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %.epil.preheader
  %i.bi = cmpxchg ptr %i.be, i64 %i.bf, i64 0 seq_cst seq_cst, align 8
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = zext i1 %i.bj to i32
  %..026.epil = add i32 %.02651.epil.init, %i.bk
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.r, %._crit_edge.unr-lcssa
  %.127.lcssa = phi i32 [ %.127.1, %._crit_edge.unr-lcssa ], [ %.02651.epil.init, %.epil.preheader ], [ %..026.epil, %bb.r ] ; 2 uses
  %.not40 = icmp eq i32 %.127.lcssa, 0
  br i1 %.not40, label %.critedge, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bl = shl i32 %.127.lcssa, 11                 ; 2 uses
  %i.bm = atomicrmw add ptr %0, i32 %i.bl seq_cst, align 4
  %i.bn = add i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %1, align 4, !tbaa !7
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #2 align 2

declare void @_ZN5folly15observer_detail4Core7getDataEv(ptr dead_on_unwind writable sret(%"struct.folly::observer_detail::Core::VersionedData") align 8, ptr noundef nonnull align 16 dereferenceable(293)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10696
  %i.c = load ptr, ptr %0, align 8, !tbaa !11330  ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 8 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !10696 ; 4 uses
  switch i8 %i.b, label %bb.p [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.i
    i8 -1, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i [
    i8 0, label %bb.c
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
    i8 1, label %bb.d
  ], !prof !11337

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %i.c, ptr noundef nonnull align 8 dereferenceable(33) %1, i64 26, i1 false), !tbaa.struct !10694
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !10699 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 110) #50
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  store i8 -1, ptr %i.d, align 8, !tbaa !10696
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.c, ptr noundef nonnull align 8 dereferenceable(33) %1, i64 28, i1 false), !tbaa.struct !10694
  store i8 0, ptr %i.d, align 8, !tbaa !10696
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.f:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i [
    i8 1, label %bb.g
    i8 -1, label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i.i.i.i
  ], !prof !11338

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !11237 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !11237
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !10699
  %i.l = load ptr, ptr %1, align 8, !tbaa !10699
  %i.m = zext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.k, ptr align 2 %i.l, i64 %i.m, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  store i8 -1, ptr %i.d, align 8, !tbaa !10696
  br label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i.i.i.i

_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i, %bb.f
  %i.n = tail call noalias noundef nonnull dereferenceable(110) ptr @_Znwm(i64 noundef 110) #53 ; 3 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !10699
  store i16 1, ptr %i.n, align 2, !tbaa !11339
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !11237
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !11237 ; 2 uses
  store i32 %i.q, ptr %i.o, align 8, !tbaa !11237
  %i.r = load ptr, ptr %1, align 8, !tbaa !10699
  %i.s = zext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.n, ptr align 2 %i.r, i64 %i.s, i1 false)
  store i8 1, ptr %i.d, align 8, !tbaa !10696
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.i:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i10 [
    i8 2, label %bb.j
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
    i8 1, label %bb.k
  ], !prof !11337

bb.j:                                             ; preds = %bb.i
  %i.t = load i64, ptr %1, align 8
  store i64 %i.t, ptr %i.c, align 8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.k:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !10699 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i10, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 110) #50
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i10

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i10: ; preds = %bb.l, %bb.k, %bb.i
  store i8 -1, ptr %i.d, align 8, !tbaa !10696
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i10, %bb.i
  %i.w = load i64, ptr %1, align 8
  store i64 %i.w, ptr %i.c, align 8
  store i8 2, ptr %i.d, align 8, !tbaa !10696
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.m:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i [
    i8 -1, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit
    i8 1, label %bb.n
  ], !prof !10984

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !10699 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 110) #50
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  store i8 -1, ptr %i.d, align 8, !tbaa !10696
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.p:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS6_16ExternalUnixAddrENS6_9VsockAddrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, %bb.m, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.j, %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i.i.i.i, %bb.h, %bb.g, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly23AtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEEE11AtomicQueue4pushIJS5_EEEbDpOT_(ptr noundef nonnull align 64 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(65) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.19", align 8 ; 8 uses
  %3 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !11366  ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !11366
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10747 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !10747
  store ptr %i.d, ptr %i.b, align 8, !tbaa !10747
  store ptr null, ptr %2, align 8, !tbaa !11366
  %i.e = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #53
          to label %.noexc unwind label %bb.n     ; 6 uses

.noexc:                                           ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZNSt8__detail9__variant15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEC2EOS6_(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(65) %1) #39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.a, ptr %i.f, align 8, !tbaa !11366
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %i.d, ptr %i.g, align 8, !tbaa !10747
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !11367
  %i.i = load atomic ptr, ptr %0 monotonic, align 64 ; 4 uses
  %i.j = icmp eq ptr %i.i, inttoptr (i64 1 to ptr)
  %i.k = select i1 %i.j, ptr null, ptr %i.i
  store ptr %i.k, ptr %i.h, align 8, !tbaa !11367
  %i.l = cmpxchg weak ptr %0, ptr %i.i, ptr %i.e acq_rel monotonic, align 8 ; 2 uses
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  br i1 %i.m, label %.loopexit, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i

_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i: ; preds = %.noexc, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i
  %i.n = phi { ptr, i1 } [ %i.r, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i ], [ %i.l, %.noexc ]
  %i.o = extractvalue { ptr, i1 } %i.n, 0         ; 4 uses
  %i.p = icmp eq ptr %i.o, inttoptr (i64 1 to ptr)
  %i.q = select i1 %i.p, ptr null, ptr %i.o
  store ptr %i.q, ptr %i.h, align 8, !tbaa !11367
  %i.r = cmpxchg weak ptr %0, ptr %i.o, ptr %i.e acq_rel monotonic, align 8 ; 2 uses
  %i.s = extractvalue { ptr, i1 } %i.r, 1
  br i1 %i.s, label %.loopexit, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, !llvm.loop !11375

.loopexit:                                        ; preds = %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, %.noexc
  %.0.lcssa.i = phi ptr [ %i.i, %.noexc ], [ %i.o, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i ]
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !10747 ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.u, align 8, !tbaa !10943
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !10945
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #39, !call_target !3524, !inline_history !10987
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #39, !call_target !3525, !inline_history !10987
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10672
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.g, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !10752

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #39
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !10747 ; 8 uses
  %.not.i.i3 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i3, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ak, align 8, !tbaa !10943
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !10945
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #39, !call_target !3524, !inline_history !10987
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #39, !call_target !3525, !inline_history !10987
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7

bb.j:                                             ; preds = %bb.h
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10672
  %.not.i.i.i4 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.l:                                             ; preds = %bb.j
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i6 = phi i32 [ %i.an, %bb.k ], [ %i.ax, %bb.l ]
  %i.ay = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.ay, label %bb.m, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7, !prof !10752

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #39
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.m
  %i.az = icmp eq ptr %.0.lcssa.i, inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret i1 %i.az

bb.n:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  resume { ptr, i32 } %i.ba
}

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.19") align 8) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEC2EOS6_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(65) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.403, align 8            ; 4 uses
  %3 = alloca %"struct.folly::SocketAddress::IPAddr", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 -1, ptr %i.a, align 8, !tbaa !10982
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !10982
  switch i8 %i.c, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 -1, label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS4_12ErrorMessageEEEC1EOS7_EUlOT_T0_E_JSt7variantIJS5_S6_EEEEEvSA_DpOT0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !7
  store i32 %i.d, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 0, ptr %i.g, align 4, !tbaa !10692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !10694
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.h, align 8, !tbaa !10696
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  store ptr %i.f, ptr %2, align 8, !tbaa !11330
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS6_12ErrorMessageEEEC1EOS9_EUlOT_T0_E_OSt7variantIJS7_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #48
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS6_12ErrorMessageEEEC1EOS9_EUlOT_T0_E_OSt7variantIJS7_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS4_12ErrorMessageEEEC1EOS7_EUlOT_T0_E_JSt7variantIJS5_S6_EEEEEvSA_DpOT0_.exit

bb.e:                                             ; preds = %bb.a
  %i.m = load i32, ptr %1, align 8, !tbaa !11313
  store i32 %i.m, ptr %0, align 8, !tbaa !11313
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !10667
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !10673 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !10670 ; 2 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
end_hunk_1
