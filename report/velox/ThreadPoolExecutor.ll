inline.NumInlined: 1808
inline.NumDeleted: 899
begin_hunk_0_@_ZN5folly18ThreadPoolExecutor7withAllENS_11FunctionRefIFvRS0_EEE:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr.80", align 8 ; 9 uses
  %i.d = load atomic i8, ptr @_ZGVZN5folly29getSyncVecThreadPoolExecutorsEvE7storage acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly29getSyncVecThreadPoolExecutorsEv.exit, !prof !7496

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly29getSyncVecThreadPoolExecutorsEvE7storage) #12
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly29getSyncVecThreadPoolExecutorsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly29getSyncVecThreadPoolExecutorsEvE7storage, i8 0, i64 32, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly29getSyncVecThreadPoolExecutorsEvE7storage) #12
  br label %_ZN5folly29getSyncVecThreadPoolExecutorsEv.exit

_ZN5folly29getSyncVecThreadPoolExecutorsEv.exit:  ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7741)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly29getSyncVecThreadPoolExecutorsEvE7storage, i64 24), ptr %3, align 8, !tbaa !7744, !alias.scope !7741
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !7749, !alias.scope !7741
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !7750, !alias.scope !7741
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12, !noalias !7741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !7741
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly29getSyncVecThreadPoolExecutorsEvE7storage, i64 24) monotonic, align 8, !noalias !7741 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7, !noalias !7741
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly29getSyncVecThreadPoolExecutorsEv.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly29getSyncVecThreadPoolExecutorsEvE7storage, i64 24), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !7741 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !7741
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !7749, !alias.scope !7741
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly29getSyncVecThreadPoolExecutorsEv.exit
  %i.p = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly29getSyncVecThreadPoolExecutorsEvE7storage, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !7741
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !7741
  %i.q = load ptr, ptr %3, align 8, !tbaa !7744   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  %.neg.i.i.i = select i1 %.not.i.i.i, i64 0, i64 -24
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i.i ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !7518 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val3.i = load ptr, ptr %i.s, align 8, !tbaa !7518 ; 2 uses
  %i.t = icmp eq ptr %.val.i, %.val3.i
  br i1 %i.t, label %"_ZZN5folly18ThreadPoolExecutor7withAllENS_11FunctionRefIFvRS0_EEEENK3$_0clIKSt6vectorIPS0_SaIS8_EEEEDaRT_.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.noexc.i
  %.sroa.01.04.i.i = phi ptr [ %i.v, %.noexc.i ], [ %.val.i, %bb.g ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.01.04.i.i, align 8, !tbaa !7504
  invoke void %1(ptr noundef nonnull align 64 dereferenceable(488) %i.u, ptr noundef %0)
          to label %.noexc.i unwind label %bb.q, !inline_history !7751

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.v, %.val3.i
  br i1 %i.w, label %"_ZZN5folly18ThreadPoolExecutor7withAllENS_11FunctionRefIFvRS0_EEEENK3$_0clIKSt6vectorIPS0_SaIS8_EEEEDaRT_.exit.i", label %.lr.ph.i.i

"_ZZN5folly18ThreadPoolExecutor7withAllENS_11FunctionRefIFvRS0_EEEENK3$_0clIKSt6vectorIPS0_SaIS8_EEEEDaRT_.exit.i": ; preds = %.noexc.i, %bb.g
  %i.x = load i16, ptr %i.g, align 8, !tbaa !7749 ; 2 uses
  %.not.i.i4.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i4.i, label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPNS_18ThreadPoolExecutorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS3_7withAllENS_11FunctionRefIFvRS3_EEEE3$_0EEDaOT_.exit", label %bb.h

bb.h:                                             ; preds = %"_ZZN5folly18ThreadPoolExecutor7withAllENS_11FunctionRefIFvRS0_EEEENK3$_0clIKSt6vectorIPS0_SaIS8_EEEEDaRT_.exit.i"
  %i.y = load ptr, ptr %3, align 8, !tbaa !7744   ; 7 uses
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
  %i.ac = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.y)
          to label %.noexc5.i unwind label %bb.p

.noexc5.i:                                        ; preds = %bb.j
  br i1 %i.ac, label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPNS_18ThreadPoolExecutorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS3_7withAllENS_11FunctionRefIFvRS3_EEEE3$_0EEDaOT_.exit", label %bb.k

bb.k:                                             ; preds = %.noexc5.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ad = atomicrmw sub ptr %i.y, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ae = add i32 %i.ad, -2048                    ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !7
  %i.af = icmp ugt i32 %i.ae, 2047
  %i.ag = and i32 %i.ad, 16
  %.not.i.i.i.i.i = icmp eq i32 %i.ag, 0
  %or.cond.i.i.i.i = or i1 %i.af, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, label %bb.l, !prof !7752

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPNS_18ThreadPoolExecutorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS3_7withAllENS_11FunctionRefIFvRS3_EEEE3$_0EEDaOT_.exit"

bb.m:                                             ; preds = %bb.h
  %i.ah = load i16, ptr %i.h, align 2, !tbaa !7750
  %i.ai = zext i16 %i.ah to i64
  %i.aj = ptrtoint ptr %i.y to i64
  %.idx.i.i = shl nuw nsw i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i.i
  %i.al = cmpxchg ptr %i.ak, i64 %i.aj, i64 0 seq_cst seq_cst, align 8
  %i.am = extractvalue { i64, i1 } %i.al, 1
  br i1 %i.am, label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPNS_18ThreadPoolExecutorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS3_7withAllENS_11FunctionRefIFvRS3_EEEE3$_0EEDaOT_.exit", label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.an = atomicrmw sub ptr %i.y, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ao = add i32 %i.an, -2048                    ; 2 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !7
  %i.ap = icmp ugt i32 %i.ao, 2047
  %i.aq = and i32 %i.an, 16
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  %or.cond.i.i.i = or i1 %i.ap, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.o, !prof !7752

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPNS_18ThreadPoolExecutorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS3_7withAllENS_11FunctionRefIFvRS3_EEEE3$_0EEDaOT_.exit"

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #36
  unreachable

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorIPNS_18ThreadPoolExecutorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE2ELNSD_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.at

"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt6vectorIPNS_18ThreadPoolExecutorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS3_7withAllENS_11FunctionRefIFvRS3_EEEE3$_0EEDaOT_.exit": ; preds = %"_ZZN5folly18ThreadPoolExecutor7withAllENS_11FunctionRefIFvRS0_EEEENK3$_0clIKSt6vectorIPS0_SaIS8_EEEEDaRT_.exit.i", %.noexc5.i, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt6vectorIPNS_18ThreadPoolExecutorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSD_22SynchronizedMutexLevelE2ELNSD_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !7749
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7744
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #36
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !7509

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #38
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
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !7448

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
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !7448

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !7507
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !7508

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
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !7509

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !7753 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %i.am = and i32 %i.al, 255
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
  store i16 2, ptr %2, align 2, !tbaa !7749
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
  br label %bb.c, !llvm.loop !7754

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
  store i16 3, ptr %2, align 2, !tbaa !7749
  %i.cc = trunc i32 %.246.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !7750
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
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !7752

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
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !7752

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.backedge

.thread80:                                        ; preds = %.thread78, %bb.k, %bb.l, %bb.r
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #28

declare noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800), ptr noundef nonnull, ptr noundef nonnull) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %i.a
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v() #3

declare noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly18SequentialThreadId3getEv() ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %0, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@_ZNK5folly18ThreadPoolExecutor12getPoolStatsEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.bz
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5folly18ThreadPoolExecutor19getPendingTaskCountEv(ptr noundef nonnull align 64 dereferenceable(488) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %2 = alloca %"class.std::shared_lock", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !7744
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i16 0, ptr %i.e, align 8, !tbaa !7749
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  store i16 0, ptr %i.f, align 2, !tbaa !7750
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.g = load atomic i32, ptr %i.d monotonic, align 8 ; 4 uses
  store i32 %i.g, ptr %i.c, align 4, !tbaa !7
  %i.h = and i32 %i.g, -1408
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i32 %i.g, 2048
  %i.k = cmpxchg ptr %i.d, i32 %i.g, i32 %i.j seq_cst seq_cst, align 4 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.b
  %i.m = extractvalue { i32, i1 } %i.k, 0
  store i32 %i.m, ptr %i.c, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2, ptr %i.e, align 8, !tbaa !7749
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i, %bb.a
  %i.n = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %1) ; 0 uses
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.o = load ptr, ptr %0, align 64, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef i64 %i.q(ptr noundef nonnull align 64 dereferenceable(488) %0)
          to label %bb.e unwind label %bb.o, !call_target !6740

bb.e:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %i.s = load i16, ptr %i.e, align 8, !tbaa !7749 ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %2, align 8, !tbaa !7744   ; 7 uses
  switch i16 %i.s, label %bb.l [
    i16 1, label %bb.g
    i16 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = load atomic i32, ptr %i.t acquire, align 4
  %i.v = and i32 %i.u, 768
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.t)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  br i1 %i.x, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.y = atomicrmw sub ptr %i.t, i32 2048 seq_cst, align 4 ; 2 uses
  %i.z = add i32 %i.y, -2048                      ; 2 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !7
  %i.aa = icmp ugt i32 %i.z, 2047
  %i.ab = and i32 %i.y, 16
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  %or.cond.i.i.i = or i1 %i.aa, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.j, !prof !7752

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.ac = load i16, ptr %i.f, align 2, !tbaa !7750
  %i.ad = zext i16 %i.ac to i64
  %i.ae = ptrtoint ptr %i.t to i64
  %.idx.i = shl nuw nsw i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.ag = cmpxchg ptr %i.af, i64 %i.ae, i64 0 seq_cst seq_cst, align 8
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ai = atomicrmw sub ptr %i.t, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !7
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i = or i1 %i.ak, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.m, !prof !7752

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.h
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #36
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.k, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i64 %i.r

bb.o:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5folly18ThreadPoolExecutor7getNameB5cxx11Ev(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(488) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7533 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !call_target !7636
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define i64 @_ZNK5folly18ThreadPoolExecutor6Thread11usedCpuTimeEv(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(52) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7789
  %i.d = call i32 @pthread_getcpuclockid(i64 noundef %i.c, ptr noundef nonnull %i.a) #12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !7
  %i.f = call i32 @clock_gettime(i32 noundef %i.e, ptr noundef nonnull %1) #12 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !7438
  %.pre2 = load i64, ptr %1, align 8, !tbaa !7438
  %i.g = mul nsw i64 %.pre2, 1000000000
  %i.h = add nsw i64 %i.g, %.pre
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %i.i
}

; Function Attrs: nounwind
declare i32 @pthread_getcpuclockid(i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(488) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37, !noalias !7790 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserver, i64 16), ptr %i.a, align 8, !tbaa !11, !noalias !7790
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 24, i1 false), !noalias !7790
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7793, !noalias !7790
  store ptr %i.f, ptr %i.d, align 8, !tbaa !7793, !noalias !7790
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7796, !noalias !7790 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i.i.i, label %_ZSt11make_uniqueIZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserverJS7_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !7797, !noalias !7790
  store ptr %i.h, ptr %i.i, align 8, !tbaa !7796, !noalias !7790
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !7790
  br label %_ZSt11make_uniqueIZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserverJS7_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserverJS7_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.k = load atomic ptr, ptr %i.j monotonic, align 32 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !7633
  %i.l = cmpxchg weak ptr %i.j, ptr %i.k, ptr %i.a acq_rel monotonic, align 8 ; 2 uses
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  br i1 %i.m, label %_ZNSt10unique_ptrIZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserverSt14default_deleteIS8_EED2Ev.exit, label %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i

_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i: ; preds = %_ZSt11make_uniqueIZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserverJS7_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i
  %i.n = phi { ptr, i1 } [ %i.p, %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i ], [ %i.l, %_ZSt11make_uniqueIZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserverJS7_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ]
  %i.o = extractvalue { ptr, i1 } %i.n, 0         ; 2 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !7633
  %i.p = cmpxchg weak ptr %i.j, ptr %i.o, ptr %i.a acq_rel monotonic, align 8 ; 2 uses
  %i.q = extractvalue { ptr, i1 } %i.p, 1
  br i1 %i.q, label %_ZNSt10unique_ptrIZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserverSt14default_deleteIS8_EED2Ev.exit, label %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i, !llvm.loop !7798

_ZNSt10unique_ptrIZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserverSt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i, %_ZSt11make_uniqueIZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserverJS7_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN5folly18ThreadPoolExecutor15addTaskObserverESt10unique_ptrINS0_12TaskObserverESt14default_deleteIS2_EE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(488) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #29 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7569   ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !7569
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b monotonic, align 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !7633
  %i.e = cmpxchg weak ptr %i.b, ptr %i.c, ptr %i.a acq_rel monotonic, align 8 ; 2 uses
  %i.f = extractvalue { ptr, i1 } %i.e, 1
  br i1 %i.f, label %._crit_edge, label %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit

_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit: ; preds = %bb.a, %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit
  %i.g = phi { ptr, i1 } [ %i.i, %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit ], [ %i.e, %bb.a ]
  %i.h = extractvalue { ptr, i1 } %i.g, 0         ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !7633
  %i.i = cmpxchg weak ptr %i.b, ptr %i.h, ptr %i.a acq_rel monotonic, align 8 ; 2 uses
  %i.j = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.j, label %._crit_edge, label %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit, !llvm.loop !7798

._crit_edge:                                      ; preds = %_ZNSt6atomicIPN5folly18ThreadPoolExecutor12TaskObserverEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEEEN25TaskStatsCallbackObserverD2Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserver, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7796 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEEEN25TaskStatsCallbackObserverD0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEEE25TaskStatsCallbackObserver, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7796 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEEEN25TaskStatsCallbackObserverD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEEEN25TaskStatsCallbackObserverD2Ev.exit unwind label %bb.c, !inline_history !7799 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #36, !inline_history !7799
  unreachable

_ZZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEEEN25TaskStatsCallbackObserverD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18ThreadPoolExecutor12TaskObserver12taskEnqueuedERKNS0_8TaskInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18ThreadPoolExecutor12TaskObserver12taskDequeuedERKNS0_16DequeuedTaskInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZZN5folly18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS0_17ProcessedTaskInfoEEEEN25TaskStatsCallbackObserver13taskProcessedES4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7796
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN5folly18ThreadPoolExecutor17ProcessedTaskInfoEEEclES4_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt25__throw_bad_function_callv() #35
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt8functionIFvRKN5folly18ThreadPoolExecutor17ProcessedTaskInfoEEEclES4_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7793
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %_ZN5folly15catch_exceptionIRZZNS_18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEEN25TaskStatsCallbackObserver13taskProcessedES5_EUlvE_RDoFvPKcEJRSC_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.c, !inline_history !7800

bb.c:                                             ; preds = %_ZNKSt8functionIFvRKN5folly18ThreadPoolExecutor17ProcessedTaskInfoEEEclES4_.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #12 ; 0 uses
  tail call void @_ZN5folly8Executor21invokeCatchingExnsLogEPKc(ptr noundef nonnull @.str.16) #12, !inline_history !7664
  invoke void @__cxa_end_catch()
          to label %_ZN5folly15catch_exceptionIRZZNS_18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEEN25TaskStatsCallbackObserver13taskProcessedES5_EUlvE_RDoFvPKcEJRSC_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #36
  unreachable

_ZN5folly15catch_exceptionIRZZNS_18ThreadPoolExecutor20subscribeToTaskStatsESt8functionIFvRKNS1_17ProcessedTaskInfoEEEEN25TaskStatsCallbackObserver13taskProcessedES5_EUlvE_RDoFvPKcEJRSC_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZNKSt8functionIFvRKN5folly18ThreadPoolExecutor17ProcessedTaskInfoEEEclES4_.exit.i, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E4postEv(ptr noundef nonnull align 64 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %.split.i

.split.i:                                         ; preds = %.split.i.backedge, %bb.a
  %i.a = load atomic i64, ptr %0 acquire, align 64 ; 8 uses
  %i.b = and i64 %i.a, 17179869184
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.i
  %i.c = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %.split.i.backedge

bb.c:                                             ; preds = %.split.i
  %i.d = and i64 %i.a, 4294967296
  %.not42.i = icmp eq i64 %i.d, 0
  br i1 %.not42.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i, !prof !7509

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i
end_hunk_1
begin_hunk_2_@_ZNSt5dequeISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE9pop_frontEv:bb.a
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !call_target !317, !inline_history !7726
  br label %_ZSt10destroy_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEEvPT_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7454
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZSt10destroy_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEEvPT_.exit, !prof !7509

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12
  br label %_ZSt10destroy_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEEvPT_.exit

_ZSt10destroy_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEEvPT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !7565
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  br i1 %.not.i.i.i.i1, label %_ZNSt5dequeISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_M_pop_front_auxEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.y, align 8, !tbaa !7473
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !7475
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !call_target !316, !inline_history !7812
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12, !call_target !317, !inline_history !7812
  br label %_ZNSt5dequeISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_M_pop_front_auxEv.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7454
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.m ], [ %i.al, %bb.n ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.o, label %_ZNSt5dequeISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_M_pop_front_auxEv.exit, !prof !7509

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #12
  br label %_ZNSt5dequeISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_M_pop_front_auxEv.exit

_ZNSt5dequeISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_M_pop_front_auxEv.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7813
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef 512) #34
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !7807
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !7428
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !7455 ; 3 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !7429
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  store ptr %i.at, ptr %i.c, align 8, !tbaa !7430
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt5dequeISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_M_pop_front_auxEv.exit, %_ZSt10destroy_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEEvPT_.exit
  %storemerge = phi ptr [ %i.x, %_ZSt10destroy_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEEvPT_.exit ], [ %i.as, %_ZNSt5dequeISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_M_pop_front_auxEv.exit ]
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !7565
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E14try_wait_untilINSt6chrono3_V212steady_clockENS7_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS7_10time_pointIT_T0_EE(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.111", align 8 ; 11 uses
  %4 = alloca %"class.folly::WaitOptions", align 8 ; 6 uses
  %5 = alloca %"class.folly::WaitOptions", align 8 ; 5 uses
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i.backedge, %bb.a
  %i.b = load atomic i64, ptr %0 acquire, align 64 ; 5 uses
  %i.c = and i64 %i.b, 17179869184
  %.not49.us.i.i = icmp eq i64 %i.c, 0
  br i1 %.not49.us.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.d = tail call noundef i32 @sched_yield() #12 ; 0 uses
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
  br label %.split.us.i.i, !llvm.loop !7814

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7815)
  %i.j = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8, !noalias !7815 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i, !prof !7509

bb.e:                                             ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit
  %i.k = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !noalias !7815
  br label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i

_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i: ; preds = %bb.e, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.j, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit ]
  %i.m = tail call noundef i32 @_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10allocIndexIJEEEjDpOT_(ptr noundef nonnull align 64 dereferenceable(2184) %i.l), !noalias !7815 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i
  %i.n = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8, !noalias !7815 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i, !prof !7509

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !noalias !7815
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i: ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.o, %bb.g ], [ %i.n, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 64, !tbaa !7801, !noalias !7815
  %i.s = zext i32 %i.m to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store atomic i32 0, ptr %i.u monotonic, align 4, !noalias !7815
  store i32 0, ptr %i.t, align 4, !tbaa !7494, !noalias !7815
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit: ; preds = %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i
  %storemerge.i = phi ptr [ %i.t, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit.i ], [ null, %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit.i ] ; 2 uses
  store ptr %storemerge.i, ptr %3, align 8, !tbaa !7818, !alias.scope !7815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 1, ptr %i.a, align 4, !tbaa !7
  %i.v = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i19, label %bb.h, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i, !prof !7509

bb.h:                                             ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit
  %i.w = invoke noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
          to label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i unwind label %bb.k

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i: ; preds = %bb.h, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit
  %i.x = phi ptr [ %i.v, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E12allocateNodeIJEEESt10unique_ptrINS0_11LifoSemNodeIS4_S3_EENS0_19LifoSemNodeRecyclerIS4_S3_EEEDpOT_.exit ], [ %i.w, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 64, !tbaa !7801
  %i.aa = ptrtoint ptr %storemerge.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = trunc i64 %i.ad to i32
  %i.af = invoke noundef i32 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E10decrOrPushERjj(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ae)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  switch i32 %i.af, label %bb.u [
    i32 2, label %bb.j
    i32 0, label %bb.m
  ], !prof !7820

bb.j:                                             ; preds = %bb.i
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.20)
          to label %.invoke unwind label %bb.l

bb.k:                                             ; preds = %.invoke, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit.i, %bb.h, %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #12
  br label %bb.w

bb.m:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %3, align 8, !tbaa !7818  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i64 2000, ptr %4, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %.sroa.24.0..sroa_idx, align 8
  %i.ak = load atomic i32, ptr %i.aj acquire, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit.thread, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit, !prof !7448

_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit.thread: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.r

_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit: ; preds = %bb.m
  %i.am = call noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 4 dereferenceable(4) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.am, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit
  %i.an = load ptr, ptr %3, align 8, !tbaa !7818
  %i.ao = invoke noundef zeroext i1 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E13tryRemoveNodeERKNS0_11LifoSemNodeIS4_S3_EE(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.an)
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  br i1 %i.ao, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %6 = load ptr, ptr %3, align 8, !tbaa !7818     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store i64 2000, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 1, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i64 9223372036854775807, ptr %2, align 8
  %i.ap = load atomic i32, ptr %6 acquire, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit, label %bb.q, !prof !7448

bb.q:                                             ; preds = %bb.p
  %i.ar = call noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(9) %5) #12 ; 0 uses
  br label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit

_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.r

bb.r:                                             ; preds = %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit.thread, %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit, %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit
  %i.as = load ptr, ptr %3, align 8, !tbaa !7818  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.s, label %.thread, !prof !7509

bb.s:                                             ; preds = %bb.r
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.21)
          to label %.invoke unwind label %bb.t

.invoke:                                          ; preds = %bb.s, %bb.j
  %.sink = phi ptr [ %i.ag, %bb.j ], [ %i.aw, %bb.s ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly16ShutdownSemErrorE, i64 16), ptr %.sink, align 8, !tbaa !11
  invoke void @__cxa_throw(ptr nonnull %.sink, ptr nonnull @_ZTIN5folly16ShutdownSemErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aw) #12
  br label %bb.w

bb.u:                                             ; preds = %bb.i, %bb.o
  %.0.ph = phi i1 [ true, %bb.i ], [ false, %bb.o ] ; 2 uses
  %.pr = load ptr, ptr %3, align 8, !tbaa !7818   ; 2 uses
  %.not.i24 = icmp eq ptr %.pr, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit, label %.thread

.thread:                                          ; preds = %bb.r, %bb.u
  %.037 = phi i1 [ %.0.ph, %bb.u ], [ true, %bb.r ]
  %i.ay = phi ptr [ %.pr, %bb.u ], [ %i.as, %bb.r ]
  invoke void @_ZNK5folly6detail19LifoSemNodeRecyclerINS_19SaturatingSemaphoreILb1ESt6atomicEES3_EclEPNS0_11LifoSemNodeIS4_S3_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ay)
          to label %_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #36
  unreachable

_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit: ; preds = %bb.u, %.thread
  %.038 = phi i1 [ %.0.ph, %bb.u ], [ %.037, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit.thread

bb.w:                                             ; preds = %bb.t, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.ax, %bb.t ]
  call void @_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E7tryWaitEv.exit.thread: ; preds = %bb.d, %_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit
  %.1 = phi i1 [ %.038, %_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev.exit ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E13tryRemoveNodeERKNS0_11LifoSemNodeIS4_S3_EE(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit, !prof !7509

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9nodeToIdxERKNS0_11LifoSemNodeIS4_S3_EE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 64, !tbaa !7801
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
  %i.m = tail call noundef i32 @sched_yield() #12 ; 0 uses
  %i.n = load atomic i64, ptr %0 acquire, align 64
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.c, %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE21compare_exchange_weakERS2_S2_St12memory_orderS6_.exit
  %.sroa.0.0.be = phi i64 [ %i.n, %bb.c ], [ %.0.i, %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE21compare_exchange_weakERS2_S2_St12memory_orderS6_.exit ]
  br label %.backedge, !llvm.loop !7821

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
  br i1 %.not.i.i.i24, label %bb.k, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit, !prof !7509

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit: ; preds = %bb.j, %bb.k
  %i.af = phi ptr [ %i.ae, %bb.k ], [ %i.ad, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 64, !tbaa !7801
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
  br i1 %i.an, label %.lr.ph._crit_edge, label %.lr.ph65, !llvm.loop !7822

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
  br i1 %.not.i.i.i25, label %bb.l, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit26, !prof !7509

bb.l:                                             ; preds = %.lr.ph65
  %i.as = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit26

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit26: ; preds = %.lr.ph65, %bb.l
  %i.at = phi ptr [ %i.as, %bb.l ], [ %i.ar, %.lr.ph65 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 64, !tbaa !7801
  %i.aw = zext i32 %.0204864 to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4 ; 3 uses
  %.not.not = icmp eq i32 %i.az, 0
  br i1 %.not.not, label %.loopexit, label %.lr.ph, !llvm.loop !7822

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
define linkonce_odr void @_ZNSt10unique_ptrIN5folly6detail11LifoSemNodeINS0_19SaturatingSemaphoreILb1ESt6atomicEES4_EENS1_19LifoSemNodeRecyclerIS5_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7818   ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.c) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E10decrOrPushERjj(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = zext i32 %2 to i64                       ; 2 uses
  br i1 %i.a, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %invariant.op = or disjoint i64 %i.b, 4294967296
  br label %.split

.split.us:                                        ; preds = %bb.a, %.split.us.backedge
  %i.c = load atomic i64, ptr %0 acquire, align 64 ; 5 uses
  %i.d = and i64 %i.c, 17179869184
  %.not49.us = icmp eq i64 %i.d, 0
  br i1 %.not49.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.e = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %.split.us.backedge

bb.c:                                             ; preds = %.split.us
  %i.f = and i64 %i.c, 4294967296
  %.not50.us = icmp eq i64 %i.f, 0
  br i1 %.not50.us, label %bb.d, label %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit22.thread43

bb.d:                                             ; preds = %bb.c
  %i.g = trunc i64 %i.c to i32                    ; 2 uses
  %.not.us = icmp eq i32 %i.g, 0
  br i1 %.not.us, label %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit22.thread43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %1, align 4, !tbaa !7
  %.sroa.speculated.us = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.g) ; 2 uses
  %i.i = zext i32 %.sroa.speculated.us to i64
  %reass.sub.i.us = add i64 %i.c, 34359738368
  %i.j = sub i64 %reass.sub.i.us, %i.i
  %i.k = cmpxchg ptr %0, i64 %i.c, i64 %i.j seq_cst seq_cst, align 8
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit.thread37, label %.split.us.backedge

.split.us.backedge:                               ; preds = %bb.e, %bb.b
  br label %.split.us, !llvm.loop !7814

.split:                                           ; preds = %.split.backedge, %.split.preheader
  %i.m = load atomic i64, ptr %0 acquire, align 64 ; 9 uses
  %i.n = and i64 %i.m, 17179869184
  %.not49 = icmp eq i64 %i.n, 0
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split
  %i.o = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %.split.backedge

bb.g:                                             ; preds = %.split
  %i.p = and i64 %i.m, 4294967296
  %.not50 = icmp eq i64 %i.p, 0                   ; 2 uses
  br i1 %.not50, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = trunc i64 %i.m to i32                    ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %1, align 4, !tbaa !7
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.q) ; 2 uses
  %i.s = zext i32 %.sroa.speculated to i64
  %reass.sub.i = add i64 %i.m, 34359738368
  %i.t = sub i64 %reass.sub.i, %i.s
  %i.u = cmpxchg ptr %0, i64 %i.m, i64 %i.t seq_cst seq_cst, align 8
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit.thread37, label %.split.backedge

.split.backedge:                                  ; preds = %bb.i, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit, %bb.f
  br label %.split, !llvm.loop !7814

_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit.thread37: ; preds = %bb.i, %bb.e
  %.us-phi = phi i32 [ %.sroa.speculated.us, %bb.e ], [ %.sroa.speculated, %bb.i ]
  %i.w = load i32, ptr %1, align 4, !tbaa !7
  %i.x = sub i32 %i.w, %.us-phi
  store i32 %i.x, ptr %1, align 4, !tbaa !7
  br label %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit22.thread43

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.y = and i64 %i.m, 8589934592
  %.not51 = icmp eq i64 %i.y, 0
  br i1 %.not51, label %bb.k, label %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit22.thread43, !prof !7448

bb.k:                                             ; preds = %bb.j
  %i.z = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.l, label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit, !prof !7509

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit

_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit: ; preds = %bb.k, %bb.l
  %i.ab = phi ptr [ %i.aa, %bb.l ], [ %i.z, %bb.k ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 64, !tbaa !7801
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = trunc i64 %i.m to i32
  %spec.select = select i1 %.not50, i32 0, i32 %i.ag
  store atomic i32 %spec.select, ptr %i.af monotonic, align 4
  %i.ah = and i64 %i.m, -34359738368
  %.reass = or disjoint i64 %i.ah, %invariant.op
  %i.ai = cmpxchg ptr %0, i64 %i.m, i64 %.reass seq_cst seq_cst, align 8
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit22.thread43, label %.split.backedge

_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit22.thread43: ; preds = %bb.j, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit, %bb.c, %bb.d, %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit.thread37
  %.4.ph = phi i32 [ 1, %_ZN5folly12AtomicStructINS_6detail11LifoSemHeadESt6atomicE23compare_exchange_strongERS2_S2_St12memory_orderS6_.exit.thread37 ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %_ZN5folly6detail11LifoSemBaseINS_19SaturatingSemaphoreILb1ESt6atomicEES3_E9idxToNodeEj.exit ], [ 2, %bb.j ]
  ret i32 %.4.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10allocIndexIJEEEjDpOT_(ptr noundef nonnull align 64 dereferenceable(2184) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit, !prof !7509

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.e = call noundef i32 %i.d(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null), !inline_history !7823 ; 0 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 8192), i64 %i.h
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = zext i8 %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
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
  %i.q = load ptr, ptr %i.n, align 64, !tbaa !7801
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
  %i.z = load ptr, ptr %i.n, align 64, !tbaa !7801
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
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !7808
  %.not27.i = icmp ult i32 %i.ai, %i.ak
  br i1 %.not27.i, label %bb.f, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.al = atomicrmw add ptr %i.ah, i32 1 seq_cst, align 4
  %i.am = add i32 %i.al, 1                        ; 4 uses
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !7808
  %i.ao = icmp ugt i32 %i.am, %i.an
  br i1 %i.ao, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9globalPopEv.exit.i: ; preds = %bb.d
  %i.ap = load ptr, ptr %i.n, align 64, !tbaa !7801
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
  %i.bb = load ptr, ptr %i.n, align 64, !tbaa !7801
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
  %i.be = load ptr, ptr %i.n, align 64, !tbaa !7801
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.pre-phi
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store atomic i32 -1, ptr %i.bg release, align 4
  br label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread: ; preds = %bb.f, %bb.e, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit
  %.4.ph.i7 = phi i32 [ 0, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit ], [ %.4.ph.i12, %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE8localPopERNS_12AtomicStructINS7_9TaggedPtrES3_EE.exit.thread9 ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i32 %.4.ph.i7
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly16ShutdownSemErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !7438
  %i.b = icmp slt i64 %.sroa.0.0.copyload.i.i, 1
  br i1 %i.b, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %0 acquire, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !7438
  %i.e = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.e, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  %i.g = load atomic i32, ptr %0 acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.sroa.025.037.i = phi i64 [ %.sroa.speculated.i, %bb.f ], [ %i.f, %bb.d ]
  %i.i = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12 ; 3 uses
  %.sroa.0.0.copyload.i2.i15.i = load i64, ptr %1, align 8, !tbaa !7438
  %.not.i = icmp slt i64 %i.i, %.sroa.0.0.copyload.i2.i15.i ; 3 uses
  br i1 %.not.i, label %bb.e, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread

bb.e:                                             ; preds = %.lr.ph.i
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %.sroa.025.037.i) ; 2 uses
  %.sroa.0.0.copyload.i16.i = load i64, ptr %2, align 8, !tbaa !7438
  %i.j = add nsw i64 %.sroa.0.0.copyload.i16.i, %.sroa.speculated.i
  %.not36.i = icmp slt i64 %i.i, %i.j
  br i1 %.not36.i, label %bb.f, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !7507
  %i.k = load atomic i32, ptr %0 acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %.lr.ph.i, !llvm.loop !7824

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
  br i1 %i.r, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %bb.g, !llvm.loop !7825

.critedge:                                        ; preds = %.critedge.preheader, %bb.l
  %i.s = load atomic i64, ptr @_ZN5folly6detail11MemoryIdler18defaultIdleTimeoutE acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.t = invoke noundef zeroext i1 @_ZN5folly6detail11MemoryIdler16futexWaitPreIdleISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EEbRNS0_11FutexResultERT_jRKT0_jT1_mf(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1, i64 %i.s, i64 noundef 1024, float noundef 5.000000e-01)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.critedge
  br i1 %i.t, label %bb.j, label %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i

bb.j:                                             ; preds = %.noexc
  %i.u = load i32, ptr %i.a, align 4, !tbaa !7580
  br label %bb.k

_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !7438 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %3, align 8
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 9223372036854775807
  %..i = select i1 %i.v, ptr null, ptr %3
  %i.w = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 2, ptr noundef null, ptr noundef %..i, i32 noundef -1)
          to label %.noexc7 unwind label %bb.m

.noexc7:                                          ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.k

bb.k:                                             ; preds = %.noexc7, %bb.j
  %.0.i = phi i32 [ %i.u, %bb.j ], [ %i.w, %.noexc7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not.not = icmp ne i32 %.0.i, 3                ; 3 uses
  br i1 %.not.not, label %bb.l, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.x = load atomic i32, ptr %0 acquire, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %.critedge, !llvm.loop !7826

_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread: ; preds = %bb.f, %.lr.ph.i, %bb.i, %bb.k, %bb.l, %bb.d, %bb.b, %bb.c
  %.3 = phi i1 [ true, %bb.b ], [ %.not.not, %bb.k ], [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.i ], [ %.not.not, %bb.l ], [ %.not.i, %.lr.ph.i ], [ %.not.i, %bb.f ]
  ret i1 %.3

bb.m:                                             ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i, %.critedge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly6detail19LifoSemNodeRecyclerINS_19SaturatingSemaphoreILb1ESt6atomicEES3_EclEPNS0_11LifoSemNodeIS4_S3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit, !prof !7509

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit

_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit: ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 64, !tbaa !7801
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
  br i1 %.not.i.i2, label %bb.d, label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3, !prof !7509

bb.d:                                             ; preds = %_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit
  %i.m = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_14LifoSemRawNodeISt6atomicE8PoolImplEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3

_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3: ; preds = %_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %_ZNK5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE10locateElemEPKS4_.exit ] ; 3 uses
  %i.o = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit.i, !prof !7509

bb.e:                                             ; preds = %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit.i

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE9localHeadEv.exit.i: ; preds = %bb.e, %_ZN5folly6detail14LifoSemRawNodeISt6atomicE4poolEv.exit3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.q = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.r = call noundef i32 %i.q(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null), !inline_history !7827 ; 0 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !7
  %i.t = and i32 %i.s, 255
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 8192), i64 %i.u
  %i.w = load atomic i8, ptr %i.v monotonic, align 1
  %i.x = zext i8 %i.w to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %i.x ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ab = load ptr, ptr %i.aa, align 64, !tbaa !7801
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
  br label %bb.f, !llvm.loop !7828

_ZN5folly14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES3_NS_20IndexedMemPoolTraitsIS4_Lb0ELb0EEEE12recycleIndexEj.exit: ; preds = %bb.i, %_ZN5folly12AtomicStructINS_14IndexedMemPoolINS_6detail14LifoSemRawNodeISt6atomicEELj32ELj200ES4_NS_20IndexedMemPoolTraitsIS5_Lb0ELb0EEEE9TaggedPtrES4_E23compare_exchange_strongERS9_S9_St12memory_orderSC_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18ThreadPoolExecutor22ensureMaxActiveThreadsEv(ptr noundef nonnull align 64 dereferenceable(488) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.c = load atomic i64, ptr %i.a monotonic, align 8
  %i.d = load atomic i64, ptr %i.b monotonic, align 8
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @_ZN5folly18ThreadPoolExecutor19ensureActiveThreadsEv(ptr noundef nonnull align 64 dereferenceable(488) %0)
  %i.f = load atomic i64, ptr %i.a monotonic, align 8
  %i.g = load atomic i64, ptr %i.b monotonic, align 8
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !7456

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7450 ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !7545   ; 12 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775792
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #35
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 576460752303423487)
  %i.m = select i1 %i.k, i64 576460752303423487, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 4
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #37 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %i.u = load <2 x ptr>, ptr %2, align 8, !tbaa !26
  store <2 x ptr> %i.u, ptr %i.r, align 8, !tbaa !26
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7454
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.v, align 4, !tbaa !7
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !7
  br label %_ZSt12construct_atISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

_ZSt12construct_atISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt12construct_atISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit
  %i.aa = add i64 %i.a, -16
  %i.ab = sub i64 %i.aa, %i.f                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 304
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ae = add i64 %i.a, -16
  %i.af = sub i64 %i.ae, %i.f
  %i.ag = and i64 %i.af, -16                      ; 2 uses
  %i.ah = or disjoint i64 %i.ag, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ah
  %scevgep36 = getelementptr i8, ptr %i.d, i64 %i.ah
  %scevgep37 = getelementptr i8, ptr %i.d, i64 8
  %i.ai = add i64 %i.ag, 16                       ; 2 uses
  %scevgep38 = getelementptr i8, ptr %i.d, i64 %i.ai
  %scevgep39 = getelementptr i8, ptr %i.q, i64 8
  %scevgep40 = getelementptr i8, ptr %i.q, i64 %i.ai
  %bound0 = icmp ult ptr %i.q, %scevgep36
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound041 = icmp ult ptr %scevgep37, %scevgep40
  %bound142 = icmp ult ptr %scevgep39, %scevgep38
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx = or i1 %found.conflict, %found.conflict43
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 2305843009213693948     ; 3 uses
  %i.aj = shl i64 %n.vec, 4                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.d, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.am
  %next.gep44 = getelementptr i8, ptr %i.d, i64 %i.am ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7832)
  %wide.vec = load <8 x ptr>, ptr %next.gep44, align 8, !tbaa !26, !alias.scope !7832, !noalias !7829
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !26, !alias.scope !7829, !noalias !7832
  store <8 x ptr> splat (ptr null), ptr %next.gep44, align 8, !tbaa !26, !alias.scope !7832, !noalias !7829
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !7834

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor8ObserverEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader80

.lr.ph.i.i.i.preheader80:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

end_hunk_2
