inline.NumInlined: 22549
inline.NumDeleted: 5467
begin_hunk_0_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE23resizeIsAsciiIfNotEmptyIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEib:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !2459, !alias.scope !2465
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.k, align 8, !tbaa !2466, !alias.scope !2465
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !2467, !alias.scope !2465
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !2465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30, !noalias !2465
  %i.m = load atomic i32, ptr %i.j monotonic, align 8, !noalias !2465 ; 4 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !3, !noalias !2465
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.j, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !2465 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.e, align 4, !noalias !2465
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.k, align 8, !tbaa !2466, !alias.scope !2465
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30, !noalias !2465
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !2465
  %i.u = load ptr, ptr %5, align 8, !tbaa !2459   ; 9 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !813
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !815
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !816
  %.not = icmp slt i32 %i.ac, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %.not, %bb.g ]
  %i.ad = load i16, ptr %i.k, align 8, !tbaa !2466
  switch i16 %i.ad, label %bb.n [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.i
    i16 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = load atomic i32, ptr %i.u acquire, align 4
  %i.af = and i32 %i.ae, 768
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.u)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.j
  br i1 %i.ah, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ai = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i.i = or i1 %i.ak, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !2468

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.l, align 2, !tbaa !2467
  %i.an = zext i16 %i.am to i64
  %i.ao = ptrtoint ptr %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.aq = cmpxchg ptr %i.ap, i64 %i.ao, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.as = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i25 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !2468

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #37
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  store ptr %i.j, ptr %6, align 8, !tbaa !2475, !alias.scope !2477
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !2478, !alias.scope !2477
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !2477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30, !noalias !2477
  %i.az = load atomic i32, ptr %i.j acquire, align 8, !noalias !2477 ; 4 uses
  store i32 %i.az, ptr %i.d, align 4, !tbaa !3, !noalias !2477
  %i.ba = and i32 %i.az, -1312
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge.i.i.i.i.i.i.i, !prof !260

bb.r:                                             ; preds = %bb.q
  %i.bc = or disjoint i32 %i.az, 128
  %i.bd = cmpxchg ptr %i.j, i32 %i.az, i32 %i.bc seq_cst seq_cst, align 4, !noalias !2477 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, !prof !2452

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16: ; preds = %bb.r
  %i.bf = extractvalue { i32, i1 } %i.bd, 0
  store i32 %i.bf, ptr %i.d, align 4, !noalias !2477
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, %bb.q
  %i.bg = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !2477 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30, !noalias !2477
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !2477
  store i8 1, ptr %i.ay, align 8, !tbaa !2478, !alias.scope !2477
  %i.bh = load ptr, ptr %6, align 8, !tbaa !2475  ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  %.neg.i.i18 = select i1 %.not.i.i17, i64 0, i64 -40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i18 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !813
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !815
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !816
  %.not11 = icmp slt i32 %i.bp, %1
  br i1 %.not11, label %bb.v, label %.thread

bb.u:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.bq

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bi, i32 noundef %1, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.br = load atomic i8, ptr %i.f seq_cst, align 8, !range !93, !noundef !94
  %7 = trunc nuw i8 %i.br to i1
  %8 = and i1 %2, %7
  %9 = zext i1 %8 to i8
  store atomic i8 %9, ptr %i.f seq_cst, align 8
  %i.bs = load ptr, ptr %6, align 8, !tbaa !2475  ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bs, null
  %.neg.i.i24 = select i1 %.not.i.i23, i64 0, i64 -40
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %.neg.i.i24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !813
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !815
  %i.by = icmp sge i32 %i.bv, %i.bx
  %i.bz = zext i1 %i.by to i8
  store atomic i8 %i.bz, ptr %i.g seq_cst, align 1
  %.pre = load i8, ptr %i.ay, align 8, !tbaa !2478, !range !93
  %i.ca = trunc nuw i8 %.pre to i1
  br i1 %i.ca, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.t, %bb.s, %bb.w
  %i.cb = phi ptr [ %i.bs, %bb.w ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.cc = atomicrmw and ptr %i.cb, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cd = and i32 %i.cc, -401
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !3
  %i.ce = and i32 %i.cc, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.x, !prof !260

bb.x:                                             ; preds = %.thread
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE25keepAtMostOneStringBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.366", align 8   ; 8 uses
  %2 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2479 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2479
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !601  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !602
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load atomic i32, ptr %i.j acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !601  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !624
  %i.p = icmp ult i64 %i.o, 1048513
  br i1 %i.p, label %bb.d, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !601  ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !601
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = atomicrmw add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  store ptr %i.w, ptr %1, align 8, !tbaa !2357
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !2360
  %i.z = load ptr, ptr %2, align 8, !tbaa !601    ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !601
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = atomicrmw add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f, %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !2358
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !2357  ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !2358 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !601 ; 7 uses
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.h
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !inline_history !613

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !614
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !82
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.i, !inline_history !613

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #37
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ae
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2359

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !2357
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.au = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ad, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !2360
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #35
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.az = load ptr, ptr %2, align 8, !tbaa !601   ; 7 uses
  %.not.i10 = icmp eq ptr %i.az, null
  br i1 %.not.i10, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = atomicrmw sub ptr %i.ba, i32 1 acq_rel, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_:bb.a
bb.a:
  %2 = alloca %class.anon.1242, align 8           ; 6 uses
  %3 = alloca %class.anon.1243, align 8           ; 6 uses
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !812, !range !93, !noundef !94
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !67, !range !93
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !813
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !815  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !816
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !575    ; 2 uses
  %.not.i.i8 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i8, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i30.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i30.not, label %.critedge.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i31, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !817

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i31 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i31, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !155
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !817

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !155
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !815 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !813 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, label %.loopexit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph: ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !2965, !nonnull !94, !align !215 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit16
  %indvars.iv = phi i64 [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit16 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !2966, !nonnull !94, !align !215
  %i.an = load i64, ptr %i.am, align 8, !tbaa !155, !noalias !2970
  %i.ao = lshr i64 %i.an, 26
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = and i8 %i.ap, 63
  store ptr null, ptr %4, align 8, !tbaa !806, !alias.scope !2973
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !2976, !nonnull !94, !align !215
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2977, !nonnull !94, !align !215
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !709
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %indvars.iv
  store i8 %i.aq, ptr %i.av, align 1, !tbaa !26
  %i.aw = load ptr, ptr %4, align 8, !tbaa !806
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZN8facebook5velox6StatusD2Ev.exit16, label %bb.i, !prof !260

bb.i:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit16

_ZN8facebook5velox6StatusD2Ev.exit16:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, !llvm.loop !2979

bb.j:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !575   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !813
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !815
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !2980
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ax, ptr %i.be, align 8, !tbaa !2982
  store i8 1, ptr %3, align 8, !tbaa !2983
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !2985
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %i.az, i32 noundef %i.bb, ptr noundef nonnull byval(%class.anon.1242) align 8 %2, ptr noundef nonnull byval(%class.anon.1243) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit16, %bb.h, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1242) align 8 %2, ptr noundef byval(%class.anon.1243) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2980, !range !93, !noundef !94
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2982
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !155
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2965, !nonnull !94, !align !215 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i, %.preheader.i
  %.032.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.as, %_ZN8facebook5velox6StatusD2Ev.exit22.i ] ; 3 uses
  %i.af = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i, i1 true)
  %7 = trunc nuw nsw i64 %i.af to i32
  %8 = or disjoint i32 %i.d, %7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !2966, !nonnull !94, !align !215
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !155, !noalias !2986
  %i.ai = lshr i64 %i.ah, 26
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = and i8 %i.aj, 63
  store ptr null, ptr %6, align 8, !tbaa !806, !alias.scope !2989
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !2976, !nonnull !94, !align !215
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2977, !nonnull !94, !align !215
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !709
  %9 = sext i32 %8 to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %9
  store i8 %i.ak, ptr %i.ap, align 1, !tbaa !26
  %i.aq = load ptr, ptr %6, align 8, !tbaa !806
  %.not.i21.i = icmp eq ptr %i.aq, null
  br i1 %.not.i21.i, label %_ZN8facebook5velox6StatusD2Ev.exit22.i, label %bb.d, !prof !260

bb.d:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i

_ZN8facebook5velox6StatusD2Ev.exit22.i:           ; preds = %bb.d, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ar = add nsw i64 %.032.i, -1
  %i.as = and i64 %i.ar, %.032.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.as, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i, !llvm.loop !2992

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = sdiv i32 %0, 64                         ; 2 uses
  %i.au = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i35, -1
  %i.ax = sub nsw i32 64, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = load i8, ptr %2, align 8, !tbaa !2980, !range !93, !noundef !94
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2982
  %i.bd = sext i32 %i.at to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !155
  %i.bg = xor i8 %i.ba, 1
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = xor i64 %i.bf, %i.bi
  %i.bk = and i64 %i.bj, %i.az                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bk, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = shl nsw i32 %i.at, 6
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !2965, !nonnull !94, !align !215 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i41, %.preheader.i37
  %.032.i39 = phi i64 [ %i.bk, %.preheader.i37 ], [ %i.cd, %_ZN8facebook5velox6StatusD2Ev.exit22.i41 ] ; 3 uses
  %i.bq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i39, i1 true)
  %10 = trunc nuw nsw i64 %i.bq to i32
  %11 = or disjoint i32 %i.bm, %10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !2966, !nonnull !94, !align !215
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !155, !noalias !2993
  %i.bt = lshr i64 %i.bs, 26
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = and i8 %i.bu, 63
  store ptr null, ptr %5, align 8, !tbaa !806, !alias.scope !2996
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !2976, !nonnull !94, !align !215
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2977, !nonnull !94, !align !215
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !709
  %12 = sext i32 %11 to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %12
  store i8 %i.bv, ptr %i.ca, align 1, !tbaa !26
  %i.cb = load ptr, ptr %5, align 8, !tbaa !806
  %.not.i21.i40 = icmp eq ptr %i.cb, null
  br i1 %.not.i21.i40, label %_ZN8facebook5velox6StatusD2Ev.exit22.i41, label %bb.g, !prof !260

bb.g:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i41

_ZN8facebook5velox6StatusD2Ev.exit22.i41:         ; preds = %bb.g, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cc = add i64 %.032.i39, -1
  %i.cd = and i64 %i.cc, %.032.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.cd, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38, !llvm.loop !2992

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i41, %bb.f, %bb.e
  %i.ce = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3364 = icmp sgt i32 %i.ce, %i.d
  br i1 %.not3364, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43
  %i.cf = load i8, ptr %3, align 8, !tbaa !2983, !range !93, !noundef !94
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2985
  %i.ci = xor i8 %i.cf, 1
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !94, !align !215 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.j

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit
  %i.cp = phi i32 [ %i.ce, %.lr.ph ], [ %i.dz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit ] ; 2 uses
  %.065 = phi i32 [ %i.c, %.lr.ph ], [ %i.cp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit ] ; 2 uses
  %i.cq = sdiv i32 %.065, 64                      ; 3 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !155
  %i.cu = xor i64 %i.ct, %i.ck                    ; 2 uses
  switch i64 %i.cu, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph.i: ; preds = %bb.h
  %i.cv = shl nsw i32 %i.cq, 6
  br label %_ZN8facebook5velox6StatusD2Ev.exit54.i

bb.i:                                             ; preds = %bb.h
  %i.cw = shl nsw i32 %i.cq, 6                    ; 2 uses
  %i.cx = add i32 %i.cw, 64
  %i.cy = sext i32 %i.cx to i64
  %.0.off = add i32 %.065, 127
  %.not77.i = icmp ult i32 %.0.off, 64
  br i1 %.not77.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph.i: ; preds = %bb.i
  %i.cz = sext i32 %i.cw to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph.i, %_ZN8facebook5velox6StatusD2Ev.exit35.i
  %.076.i = phi i64 [ %i.cz, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph.i ], [ %i.dk, %_ZN8facebook5velox6StatusD2Ev.exit35.i ] ; 2 uses
  %i.da = load ptr, ptr %i.cn, align 8, !tbaa !2966, !nonnull !94, !align !215
  %i.db = load i64, ptr %i.da, align 8, !tbaa !155, !noalias !2999
  %i.dc = lshr i64 %i.db, 26
  %i.dd = trunc i64 %i.dc to i8
  %i.de = and i8 %i.dd, 63
  %i.df = load ptr, ptr %i.co, align 8, !tbaa !2976, !nonnull !94, !align !215
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !2977, !nonnull !94, !align !215
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !709
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.076.i
  store i8 %i.de, ptr %i.dj, align 1, !tbaa !26
  %i.dk = add nuw i64 %.076.i, 1                  ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.cy
  br i1 %i.dl, label %_ZN8facebook5velox6StatusD2Ev.exit35.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, !llvm.loop !3002

_ZN8facebook5velox6StatusD2Ev.exit54.i:           ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph.i, %_ZN8facebook5velox6StatusD2Ev.exit54.i
  %.01575.i = phi i64 [ %i.cu, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph.i ], [ %i.dy, %_ZN8facebook5velox6StatusD2Ev.exit54.i ] ; 3 uses
  %i.dm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575.i, i1 true)
  %13 = trunc nuw nsw i64 %i.dm to i32
  %14 = or disjoint i32 %i.cv, %13
  %i.dn = load ptr, ptr %i.cn, align 8, !tbaa !2966, !nonnull !94, !align !215
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !155, !noalias !3003
  %i.dp = lshr i64 %i.do, 26
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = and i8 %i.dq, 63
  %i.ds = load ptr, ptr %i.co, align 8, !tbaa !2976, !nonnull !94, !align !215
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !2977, !nonnull !94, !align !215
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !709
  %15 = sext i32 %14 to i64
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %15
  store i8 %i.dr, ptr %i.dw, align 1, !tbaa !26
  %i.dx = add i64 %.01575.i, -1
  %i.dy = and i64 %i.dx, %.01575.i                ; 2 uses
  %.not.i45 = icmp eq i64 %i.dy, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit54.i, !llvm.loop !3006

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i, %_ZN8facebook5velox6StatusD2Ev.exit54.i, %bb.h, %bb.i
  %i.dz = add nsw i32 %i.cp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dz, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3007

bb.j:                                             ; preds = %._crit_edge
  %i.ea = ashr i32 %1, 6
  %i.eb = and i32 %1, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i46 = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i46, -1
  %i.ee = load i8, ptr %2, align 8, !tbaa !2980, !range !93, !noundef !94
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !2982
  %i.eh = sext i32 %i.ea to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !155
  %i.ek = xor i8 %i.ee, 1
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = xor i64 %i.ej, %i.em
  %i.eo = and i64 %i.en, %i.ed                    ; 2 uses
  %.not.i47 = icmp eq i64 %i.eo, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i48

.preheader.i48:                                   ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2965, !nonnull !94, !align !215 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i52, %.preheader.i48
  %.032.i50 = phi i64 [ %i.eo, %.preheader.i48 ], [ %i.fg, %_ZN8facebook5velox6StatusD2Ev.exit22.i52 ] ; 3 uses
  %i.et = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i50, i1 true)
  %16 = trunc nuw nsw i64 %i.et to i32
  %17 = or disjoint i32 %i.d, %16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !2966, !nonnull !94, !align !215
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !155, !noalias !3008
  %i.ew = lshr i64 %i.ev, 26
  %i.ex = trunc i64 %i.ew to i8
  %i.ey = and i8 %i.ex, 63
  store ptr null, ptr %4, align 8, !tbaa !806, !alias.scope !3011
  %i.ez = load ptr, ptr %i.es, align 8, !tbaa !2976, !nonnull !94, !align !215
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !2977, !nonnull !94, !align !215
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !709
  %18 = sext i32 %17 to i64
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %18
  store i8 %i.ey, ptr %i.fd, align 1, !tbaa !26
  %i.fe = load ptr, ptr %4, align 8, !tbaa !806
  %.not.i21.i51 = icmp eq ptr %i.fe, null
  br i1 %.not.i21.i51, label %_ZN8facebook5velox6StatusD2Ev.exit22.i52, label %bb.k, !prof !260

bb.k:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i52

_ZN8facebook5velox6StatusD2Ev.exit22.i52:         ; preds = %bb.k, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ff = add nsw i64 %.032.i50, -1
  %i.fg = and i64 %i.ff, %.032.i50                ; 2 uses
  %.not10.i53 = icmp eq i64 %i.fg, 0
  br i1 %.not10.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49, !llvm.loop !2992

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i52, %_ZN8facebook5velox6StatusD2Ev.exit22.i, %bb.j, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1267) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1268, align 8           ; 6 uses
  %3 = alloca %class.anon.1269, align 8           ; 6 uses
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !812, !range !93, !noundef !94
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !67, !range !93
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !813
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !815  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !816
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !575    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i27.not, label %.critedge.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i28, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !817

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !155
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !817

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !155
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !815 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !813 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, label %.loopexit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph: ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !3014, !nonnull !94, !align !215 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit13
  %indvars.iv = phi i64 [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit13 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !3015, !nonnull !94, !align !215
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2930, !noalias !3018
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !155, !noalias !3018
  %i.aq = lshr i64 %i.ap, 26
  %i.ar = trunc i64 %i.aq to i8
  %i.as = and i8 %i.ar, 63
  store ptr null, ptr %4, align 8, !tbaa !806, !alias.scope !3021
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !3024, !nonnull !94, !align !215
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3025, !nonnull !94, !align !215
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !709
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %indvars.iv
  store i8 %i.as, ptr %i.ax, align 1, !tbaa !26
  %i.ay = load ptr, ptr %4, align 8, !tbaa !806
  %.not.i12 = icmp eq ptr %i.ay, null
  br i1 %.not.i12, label %_ZN8facebook5velox6StatusD2Ev.exit13, label %bb.i, !prof !260

bb.i:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit13

_ZN8facebook5velox6StatusD2Ev.exit13:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, !llvm.loop !3027

bb.j:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !575   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !813
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !815
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !3028
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.az, ptr %i.bg, align 8, !tbaa !3030
  store i8 1, ptr %3, align 8, !tbaa !3031
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !3033
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %i.bb, i32 noundef %i.bd, ptr noundef nonnull byval(%class.anon.1268) align 8 %2, ptr noundef nonnull byval(%class.anon.1269) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13, %bb.h, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1268) align 8 %2, ptr noundef byval(%class.anon.1269) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !3028, !range !93, !noundef !94
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3030
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !155
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3014, !nonnull !94, !align !215 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.au, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.af = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  %7 = trunc nuw nsw i64 %i.af to i32
  %8 = or disjoint i32 %i.d, %7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !3015, !nonnull !94, !align !215
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2930, !noalias !3034
  %9 = sext i32 %8 to i64                         ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %9
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !155, !noalias !3034
  %i.ak = lshr i64 %i.aj, 26
  %i.al = trunc i64 %i.ak to i8
  %i.am = and i8 %i.al, 63
  store ptr null, ptr %6, align 8, !tbaa !806, !alias.scope !3037
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !3024, !nonnull !94, !align !215
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !3025, !nonnull !94, !align !215
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !709
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %9
  store i8 %i.am, ptr %i.ar, align 1, !tbaa !26
  %i.as = load ptr, ptr %6, align 8, !tbaa !806
  %.not.i18.i = icmp eq ptr %i.as, null
  br i1 %.not.i18.i, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, label %bb.d, !prof !260

bb.d:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %bb.d, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.at = add nsw i64 %.029.i, -1
  %i.au = and i64 %i.at, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.au, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i, !llvm.loop !3040

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = sdiv i32 %0, 64                         ; 2 uses
  %i.aw = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i.i35, -1
  %i.az = sub nsw i32 64, %i.aw
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = load i8, ptr %2, align 8, !tbaa !3028, !range !93, !noundef !94
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !3030
  %i.bf = sext i32 %i.av to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !155
  %i.bi = xor i8 %i.bc, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bh, %i.bk
  %i.bm = and i64 %i.bl, %i.bb                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bm, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = shl nsw i32 %i.av, 6
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !3014, !nonnull !94, !align !215 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i41, %.preheader.i37
  %.029.i39 = phi i64 [ %i.bm, %.preheader.i37 ], [ %i.ch, %_ZN8facebook5velox6StatusD2Ev.exit19.i41 ] ; 3 uses
  %i.bs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i39, i1 true)
  %10 = trunc nuw nsw i64 %i.bs to i32
  %11 = or disjoint i32 %i.bo, %10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !3015, !nonnull !94, !align !215
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2930, !noalias !3041
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %12
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !155, !noalias !3041
  %i.bx = lshr i64 %i.bw, 26
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i8 %i.by, 63
  store ptr null, ptr %5, align 8, !tbaa !806, !alias.scope !3044
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !3024, !nonnull !94, !align !215
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !3025, !nonnull !94, !align !215
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !709
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %12
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !26
  %i.cf = load ptr, ptr %5, align 8, !tbaa !806
  %.not.i18.i40 = icmp eq ptr %i.cf, null
  br i1 %.not.i18.i40, label %_ZN8facebook5velox6StatusD2Ev.exit19.i41, label %bb.g, !prof !260

bb.g:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i41

_ZN8facebook5velox6StatusD2Ev.exit19.i41:         ; preds = %bb.g, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cg = add i64 %.029.i39, -1
  %i.ch = and i64 %i.cg, %.029.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.ch, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38, !llvm.loop !3040

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i41, %bb.f, %bb.e
  %i.ci = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.ci, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.h

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, %.lr.ph
  %i.cj = phi i32 [ %i.cl, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.cj, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43 ]
  %i.ck = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ck)
  %i.cl = add nsw i32 %i.cj, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.cl, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !3047

bb.h:                                             ; preds = %._crit_edge
  %i.cm = ashr i32 %1, 6
  %i.cn = and i32 %1, 63
  %i.co = zext nneg i32 %i.cn to i64
  %notmask.i44 = shl nsw i64 -1, %i.co
  %i.cp = xor i64 %notmask.i44, -1
  %i.cq = load i8, ptr %2, align 8, !tbaa !3028, !range !93, !noundef !94
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !3030
  %i.ct = sext i32 %i.cm to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !155
  %i.cw = xor i8 %i.cq, 1
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = and i64 %i.cz, %i.cp                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.da, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !3014, !nonnull !94, !align !215 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i50, %.preheader.i46
  %.029.i48 = phi i64 [ %i.da, %.preheader.i46 ], [ %i.du, %_ZN8facebook5velox6StatusD2Ev.exit19.i50 ] ; 3 uses
  %i.df = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i48, i1 true)
  %13 = trunc nuw nsw i64 %i.df to i32
  %14 = or disjoint i32 %i.d, %13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !3015, !nonnull !94, !align !215
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !2930, !noalias !3048
  %15 = sext i32 %14 to i64                       ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %15
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !155, !noalias !3048
  %i.dk = lshr i64 %i.dj, 26
  %i.dl = trunc i64 %i.dk to i8
  %i.dm = and i8 %i.dl, 63
  store ptr null, ptr %4, align 8, !tbaa !806, !alias.scope !3051
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !3024, !nonnull !94, !align !215
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !3025, !nonnull !94, !align !215
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !709
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %15
  store i8 %i.dm, ptr %i.dr, align 1, !tbaa !26
  %i.ds = load ptr, ptr %4, align 8, !tbaa !806
  %.not.i18.i49 = icmp eq ptr %i.ds, null
  br i1 %.not.i18.i49, label %_ZN8facebook5velox6StatusD2Ev.exit19.i50, label %bb.i, !prof !260

bb.i:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i50

_ZN8facebook5velox6StatusD2Ev.exit19.i50:         ; preds = %bb.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.dt = add nsw i64 %.029.i48, -1
  %i.du = and i64 %i.dt, %.029.i48                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.du, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47, !llvm.loop !3040

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i50, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3031, !range !93, !noundef !94
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3033
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !155
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = shl i32 %1, 6                            ; 3 uses
  %i.n = add i32 %i.m, 64
  %i.o = sext i32 %i.n to i64
  %.not74 = icmp eq i32 %i.m, -64
  br i1 %.not74, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph: ; preds = %bb.b
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit: ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit32
  %.073 = phi i64 [ %i.p, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph ], [ %i.ai, %_ZN8facebook5velox6StatusD2Ev.exit32 ] ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3014, !nonnull !94, !align !215 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3015, !nonnull !94, !align !215
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2930, !noalias !3054
  %sext = shl i64 %.073, 32
  %i.v = ashr exact i64 %sext, 29
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !155, !noalias !3054
  %i.y = lshr i64 %i.x, 26
  %i.z = trunc i64 %i.y to i8
  %i.aa = and i8 %i.z, 63
  store ptr null, ptr %2, align 8, !tbaa !806, !alias.scope !3057
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3024, !nonnull !94, !align !215
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3025, !nonnull !94, !align !215
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !709
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.073
  store i8 %i.aa, ptr %i.ag, align 1, !tbaa !26
  %i.ah = load ptr, ptr %2, align 8, !tbaa !806
  %.not.i31 = icmp eq ptr %i.ah, null
  br i1 %.not.i31, label %_ZN8facebook5velox6StatusD2Ev.exit32, label %bb.c, !prof !260

bb.c:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit32

_ZN8facebook5velox6StatusD2Ev.exit32:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ai = add nuw i64 %.073, 1                    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.o
  br i1 %i.aj, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit, label %.loopexit, !llvm.loop !3060

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit51
  %.01572 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph ], [ %i.bc, %_ZN8facebook5velox6StatusD2Ev.exit51 ] ; 3 uses
  %i.ak = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01572, i1 true)
  %4 = trunc nuw nsw i64 %i.ak to i32
  %5 = or disjoint i32 %i.l, %4
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !3014, !nonnull !94, !align !215 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3015, !nonnull !94, !align !215
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2930, !noalias !3061
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %6
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !155, !noalias !3061
  %i.ar = lshr i64 %i.aq, 26
  %i.as = trunc i64 %i.ar to i8
  %i.at = and i8 %i.as, 63
  store ptr null, ptr %3, align 8, !tbaa !806, !alias.scope !3064
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3024, !nonnull !94, !align !215
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3025, !nonnull !94, !align !215
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !709
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %6
  store i8 %i.at, ptr %i.az, align 1, !tbaa !26
  %i.ba = load ptr, ptr %3, align 8, !tbaa !806
  %.not.i50 = icmp eq ptr %i.ba, null
  br i1 %.not.i50, label %_ZN8facebook5velox6StatusD2Ev.exit51, label %bb.d, !prof !260

bb.d:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN8facebook5velox6StatusD2Ev.exit51

_ZN8facebook5velox6StatusD2Ev.exit51:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.bb = add i64 %.01572, -1
  %i.bc = and i64 %i.bb, %.01572                  ; 2 uses
  %.not = icmp eq i64 %i.bc, 0
  br i1 %.not, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, !llvm.loop !3067

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32, %_ZN8facebook5velox6StatusD2Ev.exit51, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1295) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1296, align 8           ; 6 uses
  %3 = alloca %class.anon.1297, align 8           ; 6 uses
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !812, !range !93, !noundef !94
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !67, !range !93
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !813
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !815  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !816
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !575    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i27.not, label %.critedge.i.i.i, label %.lr.ph29

bb.f:                                             ; preds = %.lr.ph29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i28, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph29, label %.critedge.i.i.i, !llvm.loop !817

.lr.ph29:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !155
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !817

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !155
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph29, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph29 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !815 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !813 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !3068, !nonnull !94, !align !215 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit13
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !3069, !nonnull !94, !align !215
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3072, !noalias !3074, !nonnull !94, !align !215 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2202, !noalias !3074
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !2203, !range !93, !noalias !3074, !noundef !94
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = trunc nsw i64 %indvars.iv to i32
  br i1 %i.as, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 59
  %i.av = load i8, ptr %i.au, align 1, !tbaa !2204, !range !93, !noalias !3074, !noundef !94
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !2205, !noalias !3074
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

bb.l:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2206, !noalias !3074
  %i.bb = shl nsw i64 %indvars.iv, 2
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3, !noalias !3074
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bd, %bb.l ], [ %i.ay, %bb.k ], [ %i.at, %bb.i ]
  %i.be = sext i32 %.0.i.i.i to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !155, !noalias !3074
  %i.bh = lshr i64 %i.bg, 26
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = and i8 %i.bi, 63
  store ptr null, ptr %4, align 8, !tbaa !806, !alias.scope !3077
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !3080, !nonnull !94, !align !215
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3081, !nonnull !94, !align !215
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !709
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %indvars.iv
  store i8 %i.bj, ptr %i.bo, align 1, !tbaa !26
  %i.bp = load ptr, ptr %4, align 8, !tbaa !806
  %.not.i12 = icmp eq ptr %i.bp, null
  br i1 %.not.i12, label %_ZN8facebook5velox6StatusD2Ev.exit13, label %bb.m, !prof !260

bb.m:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit13

_ZN8facebook5velox6StatusD2Ev.exit13:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !3083

bb.n:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bq = load ptr, ptr %0, align 8, !tbaa !575   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !813
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !815
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !3084
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !3086
  store i8 1, ptr %3, align 8, !tbaa !3087
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bq, ptr %i.by, align 8, !tbaa !3089
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %i.bs, i32 noundef %i.bu, ptr noundef nonnull byval(%class.anon.1296) align 8 %2, ptr noundef nonnull byval(%class.anon.1297) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
end_hunk_1
