inline.NumInlined: 39046
inline.NumDeleted: 11423
begin_hunk_0_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE23resizeIsAsciiIfNotEmptyIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEib:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !1114, !alias.scope !1120
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.k, align 8, !tbaa !1121, !alias.scope !1120
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !1122, !alias.scope !1120
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !1120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31, !noalias !1120
  %i.m = load atomic i32, ptr %i.j monotonic, align 8, !noalias !1120 ; 4 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !3, !noalias !1120
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.j, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !1120 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.e, align 4, !noalias !1120
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.k, align 8, !tbaa !1121, !alias.scope !1120
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31, !noalias !1120
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !1120
  %i.u = load ptr, ptr %5, align 8, !tbaa !1114   ; 9 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !952
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !954
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !955
  %.not = icmp slt i32 %i.ac, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %.not, %bb.g ]
  %i.ad = load i16, ptr %i.k, align 8, !tbaa !1121
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ai = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i.i = or i1 %i.ak, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !1123

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.l, align 2, !tbaa !1122
  %i.an = zext i16 %i.am to i64
  %i.ao = ptrtoint ptr %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.aq = cmpxchg ptr %i.ap, i64 %i.ao, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.as = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i25 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !1123

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #37
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.0, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  store ptr %i.j, ptr %6, align 8, !tbaa !1130, !alias.scope !1132
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !1133, !alias.scope !1132
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !1132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31, !noalias !1132
  %i.az = load atomic i32, ptr %i.j acquire, align 8, !noalias !1132 ; 4 uses
  store i32 %i.az, ptr %i.d, align 4, !tbaa !3, !noalias !1132
  %i.ba = and i32 %i.az, -1312
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge.i.i.i.i.i.i.i, !prof !351

bb.r:                                             ; preds = %bb.q
  %i.bc = or disjoint i32 %i.az, 128
  %i.bd = cmpxchg ptr %i.j, i32 %i.az, i32 %i.bc seq_cst seq_cst, align 4, !noalias !1132 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, !prof !396

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16: ; preds = %bb.r
  %i.bf = extractvalue { i32, i1 } %i.bd, 0
  store i32 %i.bf, ptr %i.d, align 4, !noalias !1132
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, %bb.q
  %i.bg = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !1132 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31, !noalias !1132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1132
  store i8 1, ptr %i.ay, align 8, !tbaa !1133, !alias.scope !1132
  %i.bh = load ptr, ptr %6, align 8, !tbaa !1130  ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  %.neg.i.i18 = select i1 %.not.i.i17, i64 0, i64 -40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i18 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !952
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !954
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !955
  %.not11 = icmp slt i32 %i.bp, %1
  br i1 %.not11, label %bb.v, label %.thread

bb.u:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %i.bq

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bi, i32 noundef %1, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.br = load atomic i8, ptr %i.f seq_cst, align 8, !range !182, !noundef !183
  %7 = select i1 %2, i8 %i.br, i8 0
  store atomic i8 %7, ptr %i.f seq_cst, align 8
  %i.bs = load ptr, ptr %6, align 8, !tbaa !1130  ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bs, null
  %.neg.i.i24 = select i1 %.not.i.i23, i64 0, i64 -40
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %.neg.i.i24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !952
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !954
  %i.by = icmp sge i32 %i.bv, %i.bx
  %i.bz = zext i1 %i.by to i8
  store atomic i8 %i.bz, ptr %i.g seq_cst, align 1
  %.pre = load i8, ptr %i.ay, align 8, !tbaa !1133, !range !182
  %i.ca = trunc nuw i8 %.pre to i1
  br i1 %i.ca, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.t, %bb.s, %bb.w
  %i.cb = phi ptr [ %i.bs, %bb.w ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.cc = atomicrmw and ptr %i.cb, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cd = and i32 %i.cc, -401
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !3
  %i.ce = and i32 %i.cc, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.x, !prof !351

bb.x:                                             ; preds = %.thread
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE25keepAtMostOneStringBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.357", align 8   ; 8 uses
  %2 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1134 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1134
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !619  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !620
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load atomic i32, ptr %i.j acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !619  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !707
  %i.p = icmp ult i64 %i.o, 1048513
  br i1 %i.p, label %bb.d, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !172
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !619  ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !619
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = atomicrmw add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  store ptr %i.w, ptr %1, align 8, !tbaa !1015
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !1018
  %i.z = load ptr, ptr %2, align 8, !tbaa !619    ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !619
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = atomicrmw add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f, %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !1016
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1015  ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !1016 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !619 ; 7 uses
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.h
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !172
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !inline_history !699

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !700
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !172
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.i, !inline_history !699

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #37
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ae
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1017

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !1015
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.au = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ad, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !1018
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #35
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.az = load ptr, ptr %2, align 8, !tbaa !619   ; 7 uses
  %.not.i10 = icmp eq ptr %i.az, null
  br i1 %.not.i10, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = atomicrmw sub ptr %i.ba, i32 1 acq_rel, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKS1_SV_EUlSV_E_EEvSZ_SV_T0_EUlSV_E_EEvSV_:bb.a

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ap, align 8, !tbaa !968
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

bb.l:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !969
  %i.bb = shl nsw i64 %indvars.iv, 2
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.bd, %bb.l ], [ %i.az, %bb.k ], [ %i.aw, %bb.i ]
  %i.be = sext i32 %.0.i.i to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !243
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !9626

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bj = load ptr, ptr %0, align 8, !tbaa !639   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !952
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !954
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !9627
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bj, ptr %i.bq, align 8, !tbaa !9629
  store i8 1, ptr %3, align 8, !tbaa !9630
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bj, ptr %i.br, align 8, !tbaa !9632
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_(i32 noundef %i.bl, i32 noundef %i.bn, ptr noundef nonnull byval(%class.anon.5414) align 8 %2, ptr noundef nonnull byval(%class.anon.5415) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.5414) align 8 %2, ptr noundef byval(%class.anon.5415) align 8 %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 8 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.h

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
  %i.q = load i8, ptr %2, align 8, !tbaa !9627, !range !182, !noundef !183
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9629
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !243
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !9617 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre34.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !9618 ; 2 uses
  %.phi.trans.insert35.i = getelementptr inbounds nuw i8, ptr %.pre34.i, i64 120
  %.pre36.i = load ptr, ptr %.phi.trans.insert35.i, align 8, !tbaa !9622 ; 4 uses
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %.pre36.i, i64 58
  %.pre38.i = load i8, ptr %.phi.trans.insert37.i, align 2, !tbaa !966, !range !182
  %i.ac = trunc nuw i8 %.pre38.i to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre36.i, i64 59
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre36.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.pre36.i, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre34.i, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9611
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9623, !nonnull !183, !align !321
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9624, !nonnull !183, !align !321
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !769
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.033.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.be, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i, i1 true)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = or disjoint i32 %i.d, %i.ao             ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  br i1 %i.ac, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load i8, ptr %i.ad, align 1, !tbaa !967, !range !182, !noundef !183
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.af, align 8, !tbaa !968
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

bb.g:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !969
  %i.av = shl nsw i64 %i.aq, 2
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.at, %bb.f ], [ %i.ap, %bb.d ]
  %i.ay = sext i32 %.0.i.i.i to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.aq
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !243
  %i.bd = add nsw i64 %.033.i, -1
  %i.be = and i64 %i.bd, %.033.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.be, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !9633

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit49, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = sdiv i32 %0, 64                         ; 2 uses
  %i.bg = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bh
  %i.bi = xor i64 %notmask.i.i35, -1
  %i.bj = sub nsw i32 64, %i.bg
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl i64 %i.bi, %i.bk
  %i.bm = load i8, ptr %2, align 8, !tbaa !9627, !range !182, !noundef !183
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9629
  %i.bp = sext i32 %i.bf to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !243
  %i.bs = xor i8 %i.bm, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = xor i64 %i.br, %i.bu
  %i.bw = and i64 %i.bv, %i.bl                    ; 4 uses
  %.not.i36 = icmp eq i64 %i.bw, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit49, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = shl nsw i32 %i.bf, 6                    ; 3 uses
  %.pre.i38 = load ptr, ptr %i.bx, align 8, !tbaa !9617 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre34.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !9618 ; 2 uses
  %.phi.trans.insert35.i41 = getelementptr inbounds nuw i8, ptr %.pre34.i40, i64 120
  %.pre36.i42 = load ptr, ptr %.phi.trans.insert35.i41, align 8, !tbaa !9622 ; 4 uses
  %.phi.trans.insert37.i43 = getelementptr inbounds nuw i8, ptr %.pre36.i42, i64 58
  %.pre38.i44 = load i8, ptr %.phi.trans.insert37.i43, align 2, !tbaa !966, !range !182
  %i.bz = trunc nuw i8 %.pre38.i44 to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre36.i42, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre36.i42, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre34.i40, i64 144
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !9611 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !9623, !nonnull !183, !align !321
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !9624, !nonnull !183, !align !321
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !769 ; 3 uses
  br i1 %i.bz, label %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us.preheader, label %.preheader.i37.split

_ZN8facebook5velox6StatusD2Ev.exit24.i46.us.preheader: ; preds = %.preheader.i37
  %4 = sext i32 %i.by to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us

_ZN8facebook5velox6StatusD2Ev.exit24.i46.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us
  %.033.i45.us = phi i64 [ %i.cp, %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us ], [ %i.bw, %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us.preheader ] ; 3 uses
  %i.cj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i45.us, i1 true)
  %5 = or disjoint i64 %i.cj, %4                  ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %5
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %5
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !243
  %i.co = add i64 %.033.i45.us, -1
  %i.cp = and i64 %i.co, %.033.i45.us             ; 2 uses
  %.not10.i48.us = icmp eq i64 %i.cp, 0
  br i1 %.not10.i48.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit49, label %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us, !llvm.loop !9633

.preheader.i37.split:                             ; preds = %.preheader.i37
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre36.i42, i64 59
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !967, !range !182, !noundef !183
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.preheader.i37.split.split.us, label %.preheader.i37.split.split

.preheader.i37.split.split.us:                    ; preds = %.preheader.i37.split
  %i.ct = load i32, ptr %i.cb, align 8, !tbaa !968
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %6 = sext i32 %i.cw to i64
  %i.cx = sext i32 %i.by to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ci, i64 %i.cx
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us72

_ZN8facebook5velox6StatusD2Ev.exit24.i46.us72:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us72, %.preheader.i37.split.split.us
  %.033.i45.us71 = phi i64 [ %i.bw, %.preheader.i37.split.split.us ], [ %i.db, %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us72 ] ; 3 uses
  %i.cy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i45.us71, i1 true)
  %i.cz = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cy
  store i64 %6, ptr %i.cz, align 8, !tbaa !243
  %i.da = add i64 %.033.i45.us71, -1
  %i.db = and i64 %i.da, %.033.i45.us71           ; 2 uses
  %.not10.i48.us74 = icmp eq i64 %i.db, 0
  br i1 %.not10.i48.us74, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit49, label %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us72, !llvm.loop !9633

.preheader.i37.split.split:                       ; preds = %.preheader.i37.split
  %i.dc = load ptr, ptr %i.ca, align 8, !tbaa !969
  %7 = sext i32 %i.by to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i46

_ZN8facebook5velox6StatusD2Ev.exit24.i46:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i46, %.preheader.i37.split.split
  %.033.i45 = phi i64 [ %i.bw, %.preheader.i37.split.split ], [ %i.dn, %_ZN8facebook5velox6StatusD2Ev.exit24.i46 ] ; 3 uses
  %i.dd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i45, i1 true)
  %8 = or disjoint i64 %i.dd, %7                  ; 2 uses
  %i.de = shl nsw i64 %8, 2
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !243
  %i.dm = add i64 %.033.i45, -1
  %i.dn = and i64 %i.dm, %.033.i45                ; 2 uses
  %.not10.i48 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit49, label %_ZN8facebook5velox6StatusD2Ev.exit24.i46, !llvm.loop !9633

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit49: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i46, %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us72, %_ZN8facebook5velox6StatusD2Ev.exit24.i46.us, %bb.i, %bb.h
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3378 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3378, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit49
  %i.dp = load i8, ptr %3, align 8, !tbaa !9630, !range !182, !noundef !183
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !9632
  %i.ds = xor i8 %i.dp, 1
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i50 = load ptr, ptr %i.dv, align 8        ; 2 uses
  %.phi.trans.insert.i51 = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 24 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit49
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %bb.p

bb.j:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit
  %i.dx = phi i32 [ %i.do, %.lr.ph ], [ %i.kq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit ] ; 2 uses
  %.079 = phi i32 [ %i.c, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit ] ; 2 uses
  %i.dy = sdiv i32 %.079, 64                      ; 3 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !243
  %i.ec = xor i64 %i.eb, %i.du                    ; 2 uses
  switch i64 %i.ec, label %.lr.ph.i [
    i64 -1, label %bb.k
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.j
  %i.ed = shl nsw i32 %i.dy, 6
  %.pre100.i = load ptr, ptr %.phi.trans.insert.i51, align 8, !tbaa !9618 ; 2 uses
  %.phi.trans.insert101.i = getelementptr inbounds nuw i8, ptr %.pre100.i, i64 120
  %.pre102.i = load ptr, ptr %.phi.trans.insert101.i, align 8, !tbaa !9622 ; 4 uses
  %.phi.trans.insert103.i = getelementptr inbounds nuw i8, ptr %.pre102.i, i64 58
  %.pre104.i = load i8, ptr %.phi.trans.insert103.i, align 2, !tbaa !966, !range !182
  %i.ee = trunc nuw i8 %.pre104.i to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre102.i, i64 59
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre102.i, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre102.i, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre100.i, i64 144
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !9611
  %i.ek = load ptr, ptr %i.dw, align 8, !tbaa !9623, !nonnull !183, !align !321
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !9624, !nonnull !183, !align !321
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !769
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eo = shl nsw i32 %i.dy, 6                    ; 4 uses
  %i.ep = add i32 %i.eo, 64
  %i.eq = sext i32 %i.ep to i64                   ; 8 uses
  %.0.off = add i32 %.079, 127
  %.not91.i = icmp ult i32 %.0.off, 64
  br i1 %.not91.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %bb.k
  %i.er = sext i32 %i.eo to i64                   ; 23 uses
  %.pre93.i = load ptr, ptr %.phi.trans.insert.i51, align 8, !tbaa !9618 ; 2 uses
  %.phi.trans.insert94.i = getelementptr inbounds nuw i8, ptr %.pre93.i, i64 120
  %.pre95.i = load ptr, ptr %.phi.trans.insert94.i, align 8, !tbaa !9622 ; 4 uses
  %.phi.trans.insert96.i = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 58
  %.pre97.i = load i8, ptr %.phi.trans.insert96.i, align 2, !tbaa !966, !range !182
  %i.es = trunc nuw i8 %.pre97.i to i1
  %i.et = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre93.i, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !9611 ; 9 uses
  %i.ex = load ptr, ptr %i.dw, align 8, !tbaa !9623, !nonnull !183, !align !321
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !9624, !nonnull !183, !align !321
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !769 ; 8 uses
  br i1 %i.es, label %iter.check, label %.lr.ph90.i.split

iter.check:                                       ; preds = %.lr.ph90.i
  %i.fb = or disjoint i64 %i.er, 1
  %umax119 = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.eq) ; 2 uses
  %i.fc = sub i64 %umax119, %i.er                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.fc, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fd = or disjoint i64 %i.er, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fd, i64 %i.eq)
  %i.fe = xor i64 %i.er, -1
  %i.ff = add i64 %umax, %i.fe                    ; 2 uses
  %i.fg = sext i32 %i.eo to i34                   ; 2 uses
  %i.fh = shl nsw i34 %i.fg, 2
  %i.fi = trunc i64 %i.ff to i34
  %i.fj = add i34 %i.fg, %i.fi
  %i.fk = shl i34 %i.fj, 2
  %i.fl = icmp slt i34 %i.fk, %i.fh
  %i.fm = icmp ugt i64 %i.ff, 4294967295
  %i.fn = or i1 %i.fl, %i.fm
  br i1 %i.fn, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check120 = icmp ult i64 %i.fc, 16
  %n.mod.vf124 = and i64 %umax119, 1              ; 3 uses
  %n.vec125 = sub i64 %i.fc, %n.mod.vf124         ; 3 uses
  %i.fo = add i64 %n.vec125, %i.er                ; 2 uses
  br i1 %min.iters.check120, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fp = add i64 %index, %i.er                   ; 2 uses
  %i.fq = shl i64 %i.fp, 32
  %i.fr = ashr exact i64 %i.fq, 30
  %i.fs = getelementptr inbounds i8, ptr %i.ew, i64 %i.fr ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %wide.load = load <4 x i32>, ptr %i.fs, align 4, !tbaa !3
  %wide.load121 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !3
  %wide.load122 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !3
  %wide.load123 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !3
  %i.fw = sext <4 x i32> %wide.load to <4 x i64>
  %i.fx = sext <4 x i32> %wide.load121 to <4 x i64>
  %i.fy = sext <4 x i32> %wide.load122 to <4 x i64>
  %i.fz = sext <4 x i32> %wide.load123 to <4 x i64>
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fp ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  store <4 x i64> %i.fw, ptr %i.ga, align 8, !tbaa !243
  store <4 x i64> %i.fx, ptr %i.gb, align 8, !tbaa !243
  store <4 x i64> %i.fy, ptr %i.gc, align 8, !tbaa !243
  store <4 x i64> %i.fz, ptr %i.gd, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec125
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !9634

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf124, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index126 = phi i64 [ %index.next128, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.gf = add i64 %index126, %i.er                ; 2 uses
  %i.gg = shl i64 %i.gf, 32
  %i.gh = ashr exact i64 %i.gg, 30
  %i.gi = getelementptr inbounds i8, ptr %i.ew, i64 %i.gh
  %wide.load127 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !3
  %i.gj = sext <4 x i32> %wide.load127 to <4 x i64>
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.gf
  store <4 x i64> %i.gj, ptr %i.gk, align 8, !tbaa !243
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next128, %n.vec125
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9635

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %n.mod.vf124, 0
  br i1 %cmp.n129, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader: ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.089.i.us.ph = phi i64 [ %i.fo, %middle.block ], [ %i.er, %vector.scevcheck ], [ %i.er, %iter.check ], [ %i.fo, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us

_ZN8facebook5velox6StatusD2Ev.exit39.i.us:        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us
  %.089.i.us = phi i64 [ %i.gr, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us ], [ %.089.i.us.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader ] ; 3 uses
  %sext = shl i64 %.089.i.us, 32
  %i.gm = ashr exact i64 %sext, 30
  %i.gn = getelementptr inbounds i8, ptr %i.ew, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.089.i.us
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !243
  %i.gr = add nuw i64 %.089.i.us, 1               ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.eq
  br i1 %i.gs, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, !llvm.loop !9636

.lr.ph90.i.split:                                 ; preds = %.lr.ph90.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 59
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !967, !range !182, !noundef !183
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %iter.check144, label %.lr.ph90.i.split.split

iter.check144:                                    ; preds = %.lr.ph90.i.split
  %i.gw = load i32, ptr %i.eu, align 8, !tbaa !968
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = sext i32 %i.gz to i64                   ; 2 uses
  %i.hb = or disjoint i64 %i.er, 1
  %umax131 = tail call i64 @llvm.umax.i64(i64 %i.hb, i64 %i.eq) ; 2 uses
  %i.hc = sub i64 %umax131, %i.er                 ; 3 uses
  %min.iters.check132 = icmp ult i64 %i.hc, 4
  br i1 %min.iters.check132, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader, label %vector.main.loop.iter.check133
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_:bb.a
  store <4 x i64> %broadcast.splat152, ptr %gep183, align 8, !tbaa !243
  %index.next155 = add nuw i64 %index154, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next155, %n.vec150
  br i1 %i.hi, label %vec.epilog.middle.block156, label %vec.epilog.vector.body153, !llvm.loop !9638

vec.epilog.middle.block156:                       ; preds = %vec.epilog.vector.body153
  %cmp.n157 = icmp eq i64 %n.mod.vf149, 0
  br i1 %cmp.n157, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader: ; preds = %middle.block141, %iter.check144, %vec.epilog.middle.block156
  %.089.i.us75.ph = phi i64 [ %i.hd, %middle.block141 ], [ %i.er, %iter.check144 ], [ %i.hd, %vec.epilog.middle.block156 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76

_ZN8facebook5velox6StatusD2Ev.exit39.i.us76:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76
  %.089.i.us75 = phi i64 [ %i.hk, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76 ], [ %.089.i.us75.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.089.i.us75
  store i64 %i.ha, ptr %i.hj, align 8, !tbaa !243
  %i.hk = add nuw i64 %.089.i.us75, 1             ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.eq
  br i1 %i.hl, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, !llvm.loop !9639

.lr.ph90.i.split.split:                           ; preds = %.lr.ph90.i.split
  %i.hm = load ptr, ptr %i.et, align 8, !tbaa !969 ; 5 uses
  %i.hn = or disjoint i64 %i.er, 1
  %umax164 = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 %i.eq) ; 2 uses
  %i.ho = sub i64 %umax164, %i.er                 ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.ho, 80
  br i1 %min.iters.check165, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.scevcheck159

vector.scevcheck159:                              ; preds = %.lr.ph90.i.split.split
  %i.hp = or disjoint i64 %i.er, 1
  %umax160 = tail call i64 @llvm.umax.i64(i64 %i.hp, i64 %i.eq)
  %i.hq = xor i64 %i.er, -1
  %i.hr = add i64 %umax160, %i.hq                 ; 2 uses
  %i.hs = sext i32 %i.eo to i34                   ; 2 uses
  %i.ht = shl nsw i34 %i.hs, 2
  %i.hu = trunc i64 %i.hr to i34
  %i.hv = add i34 %i.hs, %i.hu
  %i.hw = shl i34 %i.hv, 2
  %i.hx = icmp slt i34 %i.hw, %i.ht
  %i.hy = icmp ugt i64 %i.hr, 4294967295
  %i.hz = or i1 %i.hx, %i.hy
  br i1 %i.hz, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %vector.scevcheck159
  %n.mod.vf167 = and i64 %umax164, 1              ; 2 uses
  %n.vec168 = sub i64 %i.ho, %n.mod.vf167         ; 2 uses
  %i.ia = add i64 %n.vec168, %i.er
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next171, %vector.body169 ] ; 2 uses
  %i.ib = add i64 %index170, %i.er                ; 5 uses
  %i.ic = shl i64 %i.ib, 32
  %i.id = shl i64 %i.ib, 32
  %i.ie = shl i64 %i.ib, 32
  %i.if = shl i64 %i.ib, 32
  %i.ig = ashr exact i64 %i.ic, 30
  %i.ih = ashr exact i64 %i.id, 30
  %i.ii = ashr exact i64 %i.ie, 30
  %i.ij = ashr exact i64 %i.if, 30
  %i.ik = getelementptr inbounds i8, ptr %i.hm, i64 %i.ig
  %i.il = getelementptr i8, ptr %i.hm, i64 %i.ih
  %i.im = getelementptr i8, ptr %i.il, i64 4
  %i.in = getelementptr i8, ptr %i.hm, i64 %i.ii
  %i.io = getelementptr i8, ptr %i.in, i64 8
  %i.ip = getelementptr i8, ptr %i.hm, i64 %i.ij
  %i.iq = getelementptr i8, ptr %i.ip, i64 12
  %i.ir = load i32, ptr %i.ik, align 4, !tbaa !3
  %i.is = load i32, ptr %i.im, align 4, !tbaa !3
  %i.it = load i32, ptr %i.io, align 4, !tbaa !3
  %i.iu = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.iv = sext i32 %i.ir to i64
  %i.iw = sext i32 %i.is to i64
  %i.ix = sext i32 %i.it to i64
  %i.iy = sext i32 %i.iu to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.iv
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.iw
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ix
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.iy
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !3
  %i.je = load i32, ptr %i.ja, align 4, !tbaa !3
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !3
  %i.jh = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.je, i64 1
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.jf, i64 2
  %i.jk = insertelement <4 x i32> %i.jj, i32 %i.jg, i64 3
  %i.jl = sext <4 x i32> %i.jk to <4 x i64>
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ib
  store <4 x i64> %i.jl, ptr %i.jm, align 8, !tbaa !243
  %index.next171 = add nuw i64 %index170, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next171, %n.vec168
  br i1 %i.jn, label %middle.block172, label %vector.body169, !llvm.loop !9640

middle.block172:                                  ; preds = %vector.body169
  %cmp.n173 = icmp eq i64 %n.mod.vf167, 0
  br i1 %cmp.n173, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader: ; preds = %vector.scevcheck159, %.lr.ph90.i.split.split, %middle.block172
  %.089.i.ph = phi i64 [ %i.er, %vector.scevcheck159 ], [ %i.er, %.lr.ph90.i.split.split ], [ %i.ia, %middle.block172 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i

_ZN8facebook5velox6StatusD2Ev.exit39.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i
  %.089.i = phi i64 [ %i.jw, %_ZN8facebook5velox6StatusD2Ev.exit39.i ], [ %.089.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader ] ; 3 uses
  %sext.i.i = shl i64 %.089.i, 32
  %i.jo = ashr exact i64 %sext.i.i, 30
  %i.jp = getelementptr inbounds i8, ptr %i.hm, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !3
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.089.i
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !243
  %i.jw = add nuw i64 %.089.i, 1                  ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.eq
  br i1 %i.jx, label %_ZN8facebook5velox6StatusD2Ev.exit39.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, !llvm.loop !9641

bb.l:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67.i, %.lr.ph.i
  %.01588.i = phi i64 [ %i.ec, %.lr.ph.i ], [ %i.kp, %_ZN8facebook5velox6StatusD2Ev.exit67.i ] ; 3 uses
  %i.jy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01588.i, i1 true)
  %i.jz = trunc nuw nsw i64 %i.jy to i32
  %i.ka = or disjoint i32 %i.ed, %i.jz            ; 2 uses
  %i.kb = sext i32 %i.ka to i64                   ; 2 uses
  br i1 %i.ee, label %_ZN8facebook5velox6StatusD2Ev.exit67.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kc = load i8, ptr %i.ef, align 1, !tbaa !967, !range !182, !noundef !183
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ke = load i32, ptr %i.eh, align 8, !tbaa !968
  br label %_ZN8facebook5velox6StatusD2Ev.exit67.i

bb.o:                                             ; preds = %bb.m
  %i.kf = load ptr, ptr %i.eg, align 8, !tbaa !969
  %i.kg = shl nsw i64 %i.kb, 2
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3
  br label %_ZN8facebook5velox6StatusD2Ev.exit67.i

_ZN8facebook5velox6StatusD2Ev.exit67.i:           ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i48.i = phi i32 [ %i.ki, %bb.o ], [ %i.ke, %bb.n ], [ %i.ka, %bb.l ]
  %i.kj = sext i32 %.0.i.i48.i to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !3
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.kb
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !243
  %i.ko = add i64 %.01588.i, -1
  %i.kp = and i64 %i.ko, %.01588.i                ; 2 uses
  %.not.i53 = icmp eq i64 %i.kp, 0
  br i1 %.not.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %bb.l, !llvm.loop !9642

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, %_ZN8facebook5velox6StatusD2Ev.exit67.i, %middle.block172, %middle.block141, %vec.epilog.middle.block156, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.k
  %i.kq = add nsw i32 %i.dx, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.kq, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !9643

bb.p:                                             ; preds = %._crit_edge
  %i.kr = ashr i32 %1, 6
  %i.ks = and i32 %1, 63
  %i.kt = zext nneg i32 %i.ks to i64
  %notmask.i54 = shl nsw i64 -1, %i.kt
  %i.ku = xor i64 %notmask.i54, -1
  %i.kv = load i8, ptr %2, align 8, !tbaa !9627, !range !182, !noundef !183
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !9629
  %i.ky = sext i32 %i.kr to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.ky
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !243
  %i.lb = xor i8 %i.kv, 1
  %i.lc = zext nneg i8 %i.lb to i64
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = xor i64 %i.la, %i.ld
  %i.lf = and i64 %i.le, %i.ku                    ; 4 uses
  %.not.i55 = icmp eq i64 %i.lf, 0
  br i1 %.not.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %.preheader.i56

.preheader.i56:                                   ; preds = %bb.p
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i57 = load ptr, ptr %i.lg, align 8, !tbaa !9617 ; 2 uses
  %.phi.trans.insert.i58 = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 8
  %.pre34.i59 = load ptr, ptr %.phi.trans.insert.i58, align 8, !tbaa !9618 ; 2 uses
  %.phi.trans.insert35.i60 = getelementptr inbounds nuw i8, ptr %.pre34.i59, i64 120
  %.pre36.i61 = load ptr, ptr %.phi.trans.insert35.i60, align 8, !tbaa !9622 ; 4 uses
  %.phi.trans.insert37.i62 = getelementptr inbounds nuw i8, ptr %.pre36.i61, i64 58
  %.pre38.i63 = load i8, ptr %.phi.trans.insert37.i62, align 2, !tbaa !966, !range !182
  %i.lh = trunc nuw i8 %.pre38.i63 to i1
  %i.li = getelementptr inbounds nuw i8, ptr %.pre36.i61, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %.pre36.i61, i64 64
  %i.lk = getelementptr inbounds nuw i8, ptr %.pre34.i59, i64 144
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !9611 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !9623, !nonnull !183, !align !321
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !9624, !nonnull !183, !align !321
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !769 ; 3 uses
  br i1 %i.lh, label %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us.preheader, label %.preheader.i56.split

_ZN8facebook5velox6StatusD2Ev.exit24.i65.us.preheader: ; preds = %.preheader.i56
  %9 = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us

_ZN8facebook5velox6StatusD2Ev.exit24.i65.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us
  %.033.i64.us = phi i64 [ %i.lx, %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us ], [ %i.lf, %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us.preheader ] ; 3 uses
  %i.lr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i64.us, i1 true)
  %10 = or disjoint i64 %i.lr, %9                 ; 2 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %10
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !3
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %10
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !243
  %i.lw = add nsw i64 %.033.i64.us, -1
  %i.lx = and i64 %i.lw, %.033.i64.us             ; 2 uses
  %.not10.i67.us = icmp eq i64 %i.lx, 0
  br i1 %.not10.i67.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us, !llvm.loop !9633

.preheader.i56.split:                             ; preds = %.preheader.i56
  %i.ly = getelementptr inbounds nuw i8, ptr %.pre36.i61, i64 59
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !967, !range !182, !noundef !183
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %.preheader.i56.split.split.us, label %.preheader.i56.split.split

.preheader.i56.split.split.us:                    ; preds = %.preheader.i56.split
  %i.mb = load i32, ptr %i.lj, align 8, !tbaa !968
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !3
  %11 = sext i32 %i.me to i64
  %i.mf = sext i32 %i.d to i64
  %invariant.gep111 = getelementptr [8 x i8], ptr %i.lq, i64 %i.mf
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us81

_ZN8facebook5velox6StatusD2Ev.exit24.i65.us81:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us81, %.preheader.i56.split.split.us
  %.033.i64.us80 = phi i64 [ %i.lf, %.preheader.i56.split.split.us ], [ %i.mj, %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us81 ] ; 3 uses
  %i.mg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i64.us80, i1 true)
  %i.mh = getelementptr [8 x i8], ptr %invariant.gep111, i64 %i.mg
  store i64 %11, ptr %i.mh, align 8, !tbaa !243
  %i.mi = add nsw i64 %.033.i64.us80, -1
  %i.mj = and i64 %i.mi, %.033.i64.us80           ; 2 uses
  %.not10.i67.us83 = icmp eq i64 %i.mj, 0
  br i1 %.not10.i67.us83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us81, !llvm.loop !9633

.preheader.i56.split.split:                       ; preds = %.preheader.i56.split
  %i.mk = load ptr, ptr %i.li, align 8, !tbaa !969
  %12 = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i65

_ZN8facebook5velox6StatusD2Ev.exit24.i65:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i65, %.preheader.i56.split.split
  %.033.i64 = phi i64 [ %i.lf, %.preheader.i56.split.split ], [ %i.mv, %_ZN8facebook5velox6StatusD2Ev.exit24.i65 ] ; 3 uses
  %i.ml = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i64, i1 true)
  %13 = or disjoint i64 %i.ml, %12                ; 2 uses
  %i.mm = shl nsw i64 %13, 2
  %i.mn = getelementptr inbounds i8, ptr %i.mk, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !3
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !3
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %13
  store i64 %i.ms, ptr %i.mt, align 8, !tbaa !243
  %i.mu = add nsw i64 %.033.i64, -1
  %i.mv = and i64 %i.mu, %.033.i64                ; 2 uses
  %.not10.i67 = icmp eq i64 %i.mv, 0
  br i1 %.not10.i67, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i65, !llvm.loop !9633

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i65, %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us81, %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.p, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSD_INSE_ILm2EEELb0ELb0EEEEEEEEJSJ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS1_17SignatureVariableESaISY_EEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::shared_ptr.27", align 16 ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !tbaa !157
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit, !prof !159

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance) #31
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEJRbRKSt6vectorINS6_17SignatureVariableESaISN_EEEESt10shared_ptrIT_EDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5426") align 8 @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance, ptr nonnull @__dso_handle) #31 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance) #31
  br label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit38, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.o, %bb.h ], [ %i.au, %_ZNSt14_Function_baseD2Ev.exit38 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance) #31
  br label %common.resume

_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !160  ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.i

bb.f:                                             ; preds = %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.48)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #31
  br label %common.resume

bb.i:                                             ; preds = %.preheader, %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36
  %.01747 = phi i1 [ true, %.preheader ], [ %i.x, %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36 ]
  %.sroa.039.046 = phi ptr [ %i.g, %.preheader ], [ %i.as, %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance, i64 8), align 8, !tbaa !161 ; 2 uses
  %i.q = load <2 x ptr>, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance, align 8, !tbaa !164
  store <2 x ptr> %i.q, ptr %4, align 16, !tbaa !164
  %.not.i.i.i27 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i27, label %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i28 = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29

bb.l:                                             ; preds = %bb.j
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29

_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29: ; preds = %bb.i, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions19CardinalityFunctionINS3_10VectorExecEEESG_lNS2_15ConstantCheckerIJNS2_3MapINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEENSK_INSL_ILm2EEELb0ELb0EEEEEEEEJSQ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS10_EERKSU_INS3_17SignatureVariableESaIS15_EEbEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.m, align 8, !tbaa !165
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions19CardinalityFunctionINS3_10VectorExecEEESG_lNS2_15ConstantCheckerIJNS2_3MapINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEENSK_INSL_ILm2EEELb0ELb0EEEEEEEEJSQ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS10_EERKSU_INS3_17SignatureVariableESaIS15_EEbEUlvE_E10_M_managerERSt9_Any_dataRKS1C_St18_Manager_operation, ptr %i.l, align 8, !tbaa !168
  %i.w = invoke noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry24registerFunctionInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIKNS0_4core23ISimpleFunctionMetadataEERKSt8functionIFSt10unique_ptrINS1_28SimpleFunctionAdapterFactoryESt14default_deleteISK_EEvEEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.039.046, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %3)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29
  %i.x = and i1 %.01747, %i.w                     ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !168  ; 2 uses
  %.not.i30 = icmp eq ptr %i.y, null
  br i1 %.not.i30, label %_ZNSt14_Function_baseD2Ev.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit31 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit31:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !161 ; 8 uses
  %.not.i.i32 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i32, label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ad, align 8, !tbaa !169
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !171
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31, !inline_history !174
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !172
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31, !inline_history !174
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

bb.r:                                             ; preds = %bb.p
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i33 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

bb.t:                                             ; preds = %bb.r
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i35 = phi i32 [ %i.ag, %bb.s ], [ %i.aq, %bb.t ]
  %i.ar = icmp eq i32 %.0.i.i.i.i35, 1
  br i1 %i.ar, label %bb.u, label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, !prof !155

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36: ; preds = %_ZNSt14_Function_baseD2Ev.exit31, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.039.046, i64 32 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.i
  br i1 %i.at, label %bb.y, label %bb.i

bb.v:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !168 ; 2 uses
  %.not.i37 = icmp eq ptr %i.av, null
  br i1 %.not.i37, label %_ZNSt14_Function_baseD2Ev.exit38, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit38 unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #37
  unreachable

end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKS1_SX_EUlSX_E_EEvS11_SX_T0_EUlSX_E_EEvSX_:bb.a
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ap, align 8, !tbaa !968, !noalias !9847
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

bb.l:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !969, !noalias !9847
  %i.bb = shl nsw i64 %indvars.iv, 2
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3, !noalias !9847
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.bd, %bb.l ], [ %i.az, %bb.k ], [ %i.aw, %bb.i ]
  %i.be = sext i32 %.0.i.i to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3, !noalias !9847
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !243
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !9853

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bj = load ptr, ptr %0, align 8, !tbaa !639   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !952
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !954
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !9854
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bj, ptr %i.bq, align 8, !tbaa !9856
  store i8 1, ptr %3, align 8, !tbaa !9857
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bj, ptr %i.br, align 8, !tbaa !9859
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSG_INSH_ILm2EEELb0ELb0EEEEEEEEJSM_EEEE7iterateIJNS4_12VectorReaderISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISZ_EEvRKNS0_17SelectivityVectorESY_EUlSY_E_EEvS13_SY_T0_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS16_EEvS18_iibSY_EUliE_EEviiSY_S15_(i32 noundef %i.bl, i32 noundef %i.bn, ptr noundef nonnull byval(%class.anon.5503) align 8 %2, ptr noundef nonnull byval(%class.anon.5504) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSG_INSH_ILm2EEELb0ELb0EEEEEEEEJSM_EEEE7iterateIJNS4_12VectorReaderISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISZ_EEvRKNS0_17SelectivityVectorESY_EUlSY_E_EEvS13_SY_T0_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS16_EEvS18_iibSY_EUliE_EEviiSY_S15_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.5503) align 8 %2, ptr noundef byval(%class.anon.5504) align 8 %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 8 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.h

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
  %i.q = load i8, ptr %2, align 8, !tbaa !9854, !range !182, !noundef !183
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9856
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !243
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !9841 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre34.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !9842 ; 2 uses
  %.pre35.i = load ptr, ptr %.pre34.i, align 8, !tbaa !9846, !noalias !9860 ; 4 uses
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.pre35.i, i64 58
  %.pre37.i = load i8, ptr %.phi.trans.insert36.i, align 2, !tbaa !966, !range !182, !noalias !9860
  %i.ac = trunc nuw i8 %.pre37.i to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre35.i, i64 59
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre35.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.pre35.i, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre34.i, i64 264
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9726, !noalias !9860
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9850, !nonnull !183, !align !321
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9851, !nonnull !183, !align !321
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !769
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.033.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.be, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i, i1 true)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = or disjoint i32 %i.d, %i.ao             ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  br i1 %i.ac, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load i8, ptr %i.ad, align 1, !tbaa !967, !range !182, !noalias !9860, !noundef !183
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.af, align 8, !tbaa !968, !noalias !9860
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

bb.g:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !969, !noalias !9860
  %i.av = shl nsw i64 %i.aq, 2
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3, !noalias !9860
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.at, %bb.f ], [ %i.ap, %bb.d ]
  %i.ay = sext i32 %.0.i.i.i to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3, !noalias !9860
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.aq
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !243
  %i.bd = add nsw i64 %.033.i, -1
  %i.be = and i64 %i.bd, %.033.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.be, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !9863

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit48, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = sdiv i32 %0, 64                         ; 2 uses
  %i.bg = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bh
  %i.bi = xor i64 %notmask.i.i35, -1
  %i.bj = sub nsw i32 64, %i.bg
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl i64 %i.bi, %i.bk
  %i.bm = load i8, ptr %2, align 8, !tbaa !9854, !range !182, !noundef !183
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9856
  %i.bp = sext i32 %i.bf to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !243
  %i.bs = xor i8 %i.bm, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = xor i64 %i.br, %i.bu
  %i.bw = and i64 %i.bv, %i.bl                    ; 4 uses
  %.not.i36 = icmp eq i64 %i.bw, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit48, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = shl nsw i32 %i.bf, 6                    ; 3 uses
  %.pre.i38 = load ptr, ptr %i.bx, align 8, !tbaa !9841 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre34.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !9842 ; 2 uses
  %.pre35.i41 = load ptr, ptr %.pre34.i40, align 8, !tbaa !9846, !noalias !9864 ; 4 uses
  %.phi.trans.insert36.i42 = getelementptr inbounds nuw i8, ptr %.pre35.i41, i64 58
  %.pre37.i43 = load i8, ptr %.phi.trans.insert36.i42, align 2, !tbaa !966, !range !182, !noalias !9864
  %i.bz = trunc nuw i8 %.pre37.i43 to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre35.i41, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre35.i41, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre34.i40, i64 264
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !9726, !noalias !9864 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !9850, !nonnull !183, !align !321
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !9851, !nonnull !183, !align !321
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !769 ; 3 uses
  br i1 %i.bz, label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us.preheader, label %.preheader.i37.split

_ZN8facebook5velox6StatusD2Ev.exit24.i45.us.preheader: ; preds = %.preheader.i37
  %4 = sext i32 %i.by to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us

_ZN8facebook5velox6StatusD2Ev.exit24.i45.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us
  %.033.i44.us = phi i64 [ %i.cp, %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us ], [ %i.bw, %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us.preheader ] ; 3 uses
  %i.cj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i44.us, i1 true)
  %5 = or disjoint i64 %i.cj, %4                  ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %5
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !9864
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %5
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !243
  %i.co = add i64 %.033.i44.us, -1
  %i.cp = and i64 %i.co, %.033.i44.us             ; 2 uses
  %.not10.i47.us = icmp eq i64 %i.cp, 0
  br i1 %.not10.i47.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit48, label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us, !llvm.loop !9863

.preheader.i37.split:                             ; preds = %.preheader.i37
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre35.i41, i64 59
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !967, !range !182, !noalias !9864, !noundef !183
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.preheader.i37.split.split.us, label %.preheader.i37.split.split

.preheader.i37.split.split.us:                    ; preds = %.preheader.i37.split
  %i.ct = load i32, ptr %i.cb, align 8, !tbaa !968, !noalias !9864
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3, !noalias !9864
  %6 = sext i32 %i.cw to i64
  %i.cx = sext i32 %i.by to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ci, i64 %i.cx
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us70

_ZN8facebook5velox6StatusD2Ev.exit24.i45.us70:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us70, %.preheader.i37.split.split.us
  %.033.i44.us69 = phi i64 [ %i.bw, %.preheader.i37.split.split.us ], [ %i.db, %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us70 ] ; 3 uses
  %i.cy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i44.us69, i1 true)
  %i.cz = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cy
  store i64 %6, ptr %i.cz, align 8, !tbaa !243
  %i.da = add i64 %.033.i44.us69, -1
  %i.db = and i64 %i.da, %.033.i44.us69           ; 2 uses
  %.not10.i47.us72 = icmp eq i64 %i.db, 0
  br i1 %.not10.i47.us72, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit48, label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us70, !llvm.loop !9863

.preheader.i37.split.split:                       ; preds = %.preheader.i37.split
  %i.dc = load ptr, ptr %i.ca, align 8, !tbaa !969, !noalias !9864
  %7 = sext i32 %i.by to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i45

_ZN8facebook5velox6StatusD2Ev.exit24.i45:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i45, %.preheader.i37.split.split
  %.033.i44 = phi i64 [ %i.bw, %.preheader.i37.split.split ], [ %i.dn, %_ZN8facebook5velox6StatusD2Ev.exit24.i45 ] ; 3 uses
  %i.dd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i44, i1 true)
  %8 = or disjoint i64 %i.dd, %7                  ; 2 uses
  %i.de = shl nsw i64 %8, 2
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3, !noalias !9864
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3, !noalias !9864
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !243
  %i.dm = add i64 %.033.i44, -1
  %i.dn = and i64 %i.dm, %.033.i44                ; 2 uses
  %.not10.i47 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit48, label %_ZN8facebook5velox6StatusD2Ev.exit24.i45, !llvm.loop !9863

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit48: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i45, %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us70, %_ZN8facebook5velox6StatusD2Ev.exit24.i45.us, %bb.i, %bb.h
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3376 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3376, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit48
  %i.dp = load i8, ptr %3, align 8, !tbaa !9857, !range !182, !noundef !183
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !9859
  %i.ds = xor i8 %i.dp, 1
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i49 = load ptr, ptr %i.dv, align 8        ; 2 uses
  %.phi.trans.insert.i50 = getelementptr inbounds nuw i8, ptr %.pre.i49, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre.i49, i64 24 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit48
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %bb.p

bb.j:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit
  %i.dx = phi i32 [ %i.do, %.lr.ph ], [ %i.kq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit ] ; 2 uses
  %.077 = phi i32 [ %i.c, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit ] ; 2 uses
  %i.dy = sdiv i32 %.077, 64                      ; 3 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !243
  %i.ec = xor i64 %i.eb, %i.du                    ; 2 uses
  switch i64 %i.ec, label %.lr.ph.i [
    i64 -1, label %bb.k
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.j
  %i.ed = shl nsw i32 %i.dy, 6
  %.pre95.i = load ptr, ptr %.phi.trans.insert.i50, align 8, !tbaa !9842 ; 2 uses
  %.pre96.i = load ptr, ptr %.pre95.i, align 8, !tbaa !9846, !noalias !9867 ; 4 uses
  %.phi.trans.insert97.i = getelementptr inbounds nuw i8, ptr %.pre96.i, i64 58
  %.pre98.i = load i8, ptr %.phi.trans.insert97.i, align 2, !tbaa !966, !range !182, !noalias !9867
  %i.ee = trunc nuw i8 %.pre98.i to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre96.i, i64 59
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre96.i, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre96.i, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 264
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !9726, !noalias !9867
  %i.ek = load ptr, ptr %i.dw, align 8, !tbaa !9850, !nonnull !183, !align !321
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !9851, !nonnull !183, !align !321
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !769
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eo = shl nsw i32 %i.dy, 6                    ; 4 uses
  %i.ep = add i32 %i.eo, 64
  %i.eq = sext i32 %i.ep to i64                   ; 8 uses
  %.0.off = add i32 %.077, 127
  %.not87.i = icmp ult i32 %.0.off, 64
  br i1 %.not87.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %bb.k
  %i.er = sext i32 %i.eo to i64                   ; 23 uses
  %.pre89.i = load ptr, ptr %.phi.trans.insert.i50, align 8, !tbaa !9842 ; 2 uses
  %.pre90.i = load ptr, ptr %.pre89.i, align 8, !tbaa !9846, !noalias !9870 ; 4 uses
  %.phi.trans.insert91.i = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 58
  %.pre92.i = load i8, ptr %.phi.trans.insert91.i, align 2, !tbaa !966, !range !182, !noalias !9870
  %i.es = trunc nuw i8 %.pre92.i to i1
  %i.et = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre89.i, i64 264
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !9726, !noalias !9870 ; 9 uses
  %i.ex = load ptr, ptr %i.dw, align 8, !tbaa !9850, !nonnull !183, !align !321
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !9851, !nonnull !183, !align !321
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !769 ; 8 uses
  br i1 %i.es, label %iter.check, label %.lr.ph86.i.split

iter.check:                                       ; preds = %.lr.ph86.i
  %i.fb = or disjoint i64 %i.er, 1
  %umax117 = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.eq) ; 2 uses
  %i.fc = sub i64 %umax117, %i.er                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.fc, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fd = or disjoint i64 %i.er, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fd, i64 %i.eq)
  %i.fe = xor i64 %i.er, -1
  %i.ff = add i64 %umax, %i.fe                    ; 2 uses
  %i.fg = sext i32 %i.eo to i34                   ; 2 uses
  %i.fh = shl nsw i34 %i.fg, 2
  %i.fi = trunc i64 %i.ff to i34
  %i.fj = add i34 %i.fg, %i.fi
  %i.fk = shl i34 %i.fj, 2
  %i.fl = icmp slt i34 %i.fk, %i.fh
  %i.fm = icmp ugt i64 %i.ff, 4294967295
  %i.fn = or i1 %i.fl, %i.fm
  br i1 %i.fn, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check118 = icmp ult i64 %i.fc, 16
  %n.mod.vf122 = and i64 %umax117, 1              ; 3 uses
  %n.vec123 = sub i64 %i.fc, %n.mod.vf122         ; 3 uses
  %i.fo = add i64 %n.vec123, %i.er                ; 2 uses
  br i1 %min.iters.check118, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fp = add i64 %index, %i.er                   ; 2 uses
  %i.fq = shl i64 %i.fp, 32
  %i.fr = ashr exact i64 %i.fq, 30
  %i.fs = getelementptr inbounds i8, ptr %i.ew, i64 %i.fr ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %wide.load = load <4 x i32>, ptr %i.fs, align 4, !tbaa !3, !noalias !9870
  %wide.load119 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !3, !noalias !9870
  %wide.load120 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !3, !noalias !9870
  %wide.load121 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !3, !noalias !9870
  %i.fw = sext <4 x i32> %wide.load to <4 x i64>
  %i.fx = sext <4 x i32> %wide.load119 to <4 x i64>
  %i.fy = sext <4 x i32> %wide.load120 to <4 x i64>
  %i.fz = sext <4 x i32> %wide.load121 to <4 x i64>
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fp ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  store <4 x i64> %i.fw, ptr %i.ga, align 8, !tbaa !243
  store <4 x i64> %i.fx, ptr %i.gb, align 8, !tbaa !243
  store <4 x i64> %i.fy, ptr %i.gc, align 8, !tbaa !243
  store <4 x i64> %i.fz, ptr %i.gd, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec123
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !9873

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf122, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index124 = phi i64 [ %index.next126, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.gf = add i64 %index124, %i.er                ; 2 uses
  %i.gg = shl i64 %i.gf, 32
  %i.gh = ashr exact i64 %i.gg, 30
  %i.gi = getelementptr inbounds i8, ptr %i.ew, i64 %i.gh
  %wide.load125 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !3, !noalias !9870
  %i.gj = sext <4 x i32> %wide.load125 to <4 x i64>
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.gf
  store <4 x i64> %i.gj, ptr %i.gk, align 8, !tbaa !243
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9874

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %n.mod.vf122, 0
  br i1 %cmp.n127, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader: ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.085.i.us.ph = phi i64 [ %i.fo, %middle.block ], [ %i.er, %vector.scevcheck ], [ %i.er, %iter.check ], [ %i.fo, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us

_ZN8facebook5velox6StatusD2Ev.exit39.i.us:        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us
  %.085.i.us = phi i64 [ %i.gr, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us ], [ %.085.i.us.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader ] ; 3 uses
  %sext = shl i64 %.085.i.us, 32
  %i.gm = ashr exact i64 %sext, 30
  %i.gn = getelementptr inbounds i8, ptr %i.ew, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3, !noalias !9870
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.085.i.us
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !243
  %i.gr = add nuw i64 %.085.i.us, 1               ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.eq
  br i1 %i.gs, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, !llvm.loop !9875

.lr.ph86.i.split:                                 ; preds = %.lr.ph86.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 59
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !967, !range !182, !noalias !9870, !noundef !183
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %iter.check142, label %.lr.ph86.i.split.split

iter.check142:                                    ; preds = %.lr.ph86.i.split
  %i.gw = load i32, ptr %i.eu, align 8, !tbaa !968, !noalias !9870
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3, !noalias !9870
  %i.ha = sext i32 %i.gz to i64                   ; 2 uses
  %i.hb = or disjoint i64 %i.er, 1
  %umax129 = tail call i64 @llvm.umax.i64(i64 %i.hb, i64 %i.eq) ; 2 uses
  %i.hc = sub i64 %umax129, %i.er                 ; 3 uses
  %min.iters.check130 = icmp ult i64 %i.hc, 4
  br i1 %min.iters.check130, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader, label %vector.main.loop.iter.check131

vector.main.loop.iter.check131:                   ; preds = %iter.check142
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSG_INSH_ILm2EEELb0ELb0EEEEEEEEJSM_EEEE7iterateIJNS4_12VectorReaderISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISZ_EEvRKNS0_17SelectivityVectorESY_EUlSY_E_EEvS13_SY_T0_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS16_EEvS18_iibSY_EUliE_EEviiSY_S15_:bb.a
  %gep181 = getelementptr [8 x i8], ptr %invariant.gep180, i64 %index152
  store <4 x i64> %broadcast.splat150, ptr %gep181, align 8, !tbaa !243
  %index.next153 = add nuw i64 %index152, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.hi, label %vec.epilog.middle.block154, label %vec.epilog.vector.body151, !llvm.loop !9877

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body151
  %cmp.n155 = icmp eq i64 %n.mod.vf147, 0
  br i1 %cmp.n155, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader: ; preds = %middle.block139, %iter.check142, %vec.epilog.middle.block154
  %.085.i.us73.ph = phi i64 [ %i.hd, %middle.block139 ], [ %i.er, %iter.check142 ], [ %i.hd, %vec.epilog.middle.block154 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74

_ZN8facebook5velox6StatusD2Ev.exit39.i.us74:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74
  %.085.i.us73 = phi i64 [ %i.hk, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74 ], [ %.085.i.us73.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.085.i.us73
  store i64 %i.ha, ptr %i.hj, align 8, !tbaa !243
  %i.hk = add nuw i64 %.085.i.us73, 1             ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.eq
  br i1 %i.hl, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, !llvm.loop !9878

.lr.ph86.i.split.split:                           ; preds = %.lr.ph86.i.split
  %i.hm = load ptr, ptr %i.et, align 8, !tbaa !969, !noalias !9870 ; 5 uses
  %i.hn = or disjoint i64 %i.er, 1
  %umax162 = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 %i.eq) ; 2 uses
  %i.ho = sub i64 %umax162, %i.er                 ; 2 uses
  %min.iters.check163 = icmp ult i64 %i.ho, 80
  br i1 %min.iters.check163, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.scevcheck157

vector.scevcheck157:                              ; preds = %.lr.ph86.i.split.split
  %i.hp = or disjoint i64 %i.er, 1
  %umax158 = tail call i64 @llvm.umax.i64(i64 %i.hp, i64 %i.eq)
  %i.hq = xor i64 %i.er, -1
  %i.hr = add i64 %umax158, %i.hq                 ; 2 uses
  %i.hs = sext i32 %i.eo to i34                   ; 2 uses
  %i.ht = shl nsw i34 %i.hs, 2
  %i.hu = trunc i64 %i.hr to i34
  %i.hv = add i34 %i.hs, %i.hu
  %i.hw = shl i34 %i.hv, 2
  %i.hx = icmp slt i34 %i.hw, %i.ht
  %i.hy = icmp ugt i64 %i.hr, 4294967295
  %i.hz = or i1 %i.hx, %i.hy
  br i1 %i.hz, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %vector.scevcheck157
  %n.mod.vf165 = and i64 %umax162, 1              ; 2 uses
  %n.vec166 = sub i64 %i.ho, %n.mod.vf165         ; 2 uses
  %i.ia = add i64 %n.vec166, %i.er
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph164
  %index168 = phi i64 [ 0, %vector.ph164 ], [ %index.next169, %vector.body167 ] ; 2 uses
  %i.ib = add i64 %index168, %i.er                ; 5 uses
  %i.ic = shl i64 %i.ib, 32
  %i.id = shl i64 %i.ib, 32
  %i.ie = shl i64 %i.ib, 32
  %i.if = shl i64 %i.ib, 32
  %i.ig = ashr exact i64 %i.ic, 30
  %i.ih = ashr exact i64 %i.id, 30
  %i.ii = ashr exact i64 %i.ie, 30
  %i.ij = ashr exact i64 %i.if, 30
  %i.ik = getelementptr inbounds i8, ptr %i.hm, i64 %i.ig
  %i.il = getelementptr i8, ptr %i.hm, i64 %i.ih
  %i.im = getelementptr i8, ptr %i.il, i64 4
  %i.in = getelementptr i8, ptr %i.hm, i64 %i.ii
  %i.io = getelementptr i8, ptr %i.in, i64 8
  %i.ip = getelementptr i8, ptr %i.hm, i64 %i.ij
  %i.iq = getelementptr i8, ptr %i.ip, i64 12
  %i.ir = load i32, ptr %i.ik, align 4, !tbaa !3, !noalias !9870
  %i.is = load i32, ptr %i.im, align 4, !tbaa !3, !noalias !9870
  %i.it = load i32, ptr %i.io, align 4, !tbaa !3, !noalias !9870
  %i.iu = load i32, ptr %i.iq, align 4, !tbaa !3, !noalias !9870
  %i.iv = sext i32 %i.ir to i64
  %i.iw = sext i32 %i.is to i64
  %i.ix = sext i32 %i.it to i64
  %i.iy = sext i32 %i.iu to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.iv
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.iw
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ix
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.iy
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !3, !noalias !9870
  %i.je = load i32, ptr %i.ja, align 4, !tbaa !3, !noalias !9870
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !3, !noalias !9870
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !3, !noalias !9870
  %i.jh = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.je, i64 1
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.jf, i64 2
  %i.jk = insertelement <4 x i32> %i.jj, i32 %i.jg, i64 3
  %i.jl = sext <4 x i32> %i.jk to <4 x i64>
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ib
  store <4 x i64> %i.jl, ptr %i.jm, align 8, !tbaa !243
  %index.next169 = add nuw i64 %index168, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next169, %n.vec166
  br i1 %i.jn, label %middle.block170, label %vector.body167, !llvm.loop !9879

middle.block170:                                  ; preds = %vector.body167
  %cmp.n171 = icmp eq i64 %n.mod.vf165, 0
  br i1 %cmp.n171, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader: ; preds = %vector.scevcheck157, %.lr.ph86.i.split.split, %middle.block170
  %.085.i.ph = phi i64 [ %i.er, %vector.scevcheck157 ], [ %i.er, %.lr.ph86.i.split.split ], [ %i.ia, %middle.block170 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i

_ZN8facebook5velox6StatusD2Ev.exit39.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i
  %.085.i = phi i64 [ %i.jw, %_ZN8facebook5velox6StatusD2Ev.exit39.i ], [ %.085.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader ] ; 3 uses
  %sext.i.i = shl i64 %.085.i, 32
  %i.jo = ashr exact i64 %sext.i.i, 30
  %i.jp = getelementptr inbounds i8, ptr %i.hm, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3, !noalias !9870
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !3, !noalias !9870
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.085.i
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !243
  %i.jw = add nuw i64 %.085.i, 1                  ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.eq
  br i1 %i.jx, label %_ZN8facebook5velox6StatusD2Ev.exit39.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, !llvm.loop !9880

bb.l:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit61.i, %.lr.ph.i
  %.01584.i = phi i64 [ %i.ec, %.lr.ph.i ], [ %i.kp, %_ZN8facebook5velox6StatusD2Ev.exit61.i ] ; 3 uses
  %i.jy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01584.i, i1 true)
  %i.jz = trunc nuw nsw i64 %i.jy to i32
  %i.ka = or disjoint i32 %i.ed, %i.jz            ; 2 uses
  %i.kb = sext i32 %i.ka to i64                   ; 2 uses
  br i1 %i.ee, label %_ZN8facebook5velox6StatusD2Ev.exit61.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kc = load i8, ptr %i.ef, align 1, !tbaa !967, !range !182, !noalias !9867, !noundef !183
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ke = load i32, ptr %i.eh, align 8, !tbaa !968, !noalias !9867
  br label %_ZN8facebook5velox6StatusD2Ev.exit61.i

bb.o:                                             ; preds = %bb.m
  %i.kf = load ptr, ptr %i.eg, align 8, !tbaa !969, !noalias !9867
  %i.kg = shl nsw i64 %i.kb, 2
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3, !noalias !9867
  br label %_ZN8facebook5velox6StatusD2Ev.exit61.i

_ZN8facebook5velox6StatusD2Ev.exit61.i:           ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i48.i = phi i32 [ %i.ki, %bb.o ], [ %i.ke, %bb.n ], [ %i.ka, %bb.l ]
  %i.kj = sext i32 %.0.i.i48.i to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !3, !noalias !9867
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.kb
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !243
  %i.ko = add i64 %.01584.i, -1
  %i.kp = and i64 %i.ko, %.01584.i                ; 2 uses
  %.not.i52 = icmp eq i64 %i.kp, 0
  br i1 %.not.i52, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %bb.l, !llvm.loop !9881

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, %_ZN8facebook5velox6StatusD2Ev.exit61.i, %middle.block170, %middle.block139, %vec.epilog.middle.block154, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.k
  %i.kq = add nsw i32 %i.dx, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.kq, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !9882

bb.p:                                             ; preds = %._crit_edge
  %i.kr = ashr i32 %1, 6
  %i.ks = and i32 %1, 63
  %i.kt = zext nneg i32 %i.ks to i64
  %notmask.i53 = shl nsw i64 -1, %i.kt
  %i.ku = xor i64 %notmask.i53, -1
  %i.kv = load i8, ptr %2, align 8, !tbaa !9854, !range !182, !noundef !183
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !9856
  %i.ky = sext i32 %i.kr to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.ky
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !243
  %i.lb = xor i8 %i.kv, 1
  %i.lc = zext nneg i8 %i.lb to i64
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = xor i64 %i.la, %i.ld
  %i.lf = and i64 %i.le, %i.ku                    ; 4 uses
  %.not.i54 = icmp eq i64 %i.lf, 0
  br i1 %.not.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.p
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i56 = load ptr, ptr %i.lg, align 8, !tbaa !9841 ; 2 uses
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 8
  %.pre34.i58 = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !9842 ; 2 uses
  %.pre35.i59 = load ptr, ptr %.pre34.i58, align 8, !tbaa !9846, !noalias !9883 ; 4 uses
  %.phi.trans.insert36.i60 = getelementptr inbounds nuw i8, ptr %.pre35.i59, i64 58
  %.pre37.i61 = load i8, ptr %.phi.trans.insert36.i60, align 2, !tbaa !966, !range !182, !noalias !9883
  %i.lh = trunc nuw i8 %.pre37.i61 to i1
  %i.li = getelementptr inbounds nuw i8, ptr %.pre35.i59, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %.pre35.i59, i64 64
  %i.lk = getelementptr inbounds nuw i8, ptr %.pre34.i58, i64 264
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !9726, !noalias !9883 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !9850, !nonnull !183, !align !321
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !9851, !nonnull !183, !align !321
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !769 ; 3 uses
  br i1 %i.lh, label %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us.preheader, label %.preheader.i55.split

_ZN8facebook5velox6StatusD2Ev.exit24.i63.us.preheader: ; preds = %.preheader.i55
  %9 = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us

_ZN8facebook5velox6StatusD2Ev.exit24.i63.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us
  %.033.i62.us = phi i64 [ %i.lx, %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us ], [ %i.lf, %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us.preheader ] ; 3 uses
  %i.lr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i62.us, i1 true)
  %10 = or disjoint i64 %i.lr, %9                 ; 2 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %10
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !3, !noalias !9883
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %10
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !243
  %i.lw = add nsw i64 %.033.i62.us, -1
  %i.lx = and i64 %i.lw, %.033.i62.us             ; 2 uses
  %.not10.i65.us = icmp eq i64 %i.lx, 0
  br i1 %.not10.i65.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us, !llvm.loop !9863

.preheader.i55.split:                             ; preds = %.preheader.i55
  %i.ly = getelementptr inbounds nuw i8, ptr %.pre35.i59, i64 59
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !967, !range !182, !noalias !9883, !noundef !183
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %.preheader.i55.split.split.us, label %.preheader.i55.split.split

.preheader.i55.split.split.us:                    ; preds = %.preheader.i55.split
  %i.mb = load i32, ptr %i.lj, align 8, !tbaa !968, !noalias !9883
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !3, !noalias !9883
  %11 = sext i32 %i.me to i64
  %i.mf = sext i32 %i.d to i64
  %invariant.gep109 = getelementptr [8 x i8], ptr %i.lq, i64 %i.mf
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us79

_ZN8facebook5velox6StatusD2Ev.exit24.i63.us79:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us79, %.preheader.i55.split.split.us
  %.033.i62.us78 = phi i64 [ %i.lf, %.preheader.i55.split.split.us ], [ %i.mj, %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us79 ] ; 3 uses
  %i.mg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i62.us78, i1 true)
  %i.mh = getelementptr [8 x i8], ptr %invariant.gep109, i64 %i.mg
  store i64 %11, ptr %i.mh, align 8, !tbaa !243
  %i.mi = add nsw i64 %.033.i62.us78, -1
  %i.mj = and i64 %i.mi, %.033.i62.us78           ; 2 uses
  %.not10.i65.us81 = icmp eq i64 %i.mj, 0
  br i1 %.not10.i65.us81, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us79, !llvm.loop !9863

.preheader.i55.split.split:                       ; preds = %.preheader.i55.split
  %i.mk = load ptr, ptr %i.li, align 8, !tbaa !969, !noalias !9883
  %12 = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i63

_ZN8facebook5velox6StatusD2Ev.exit24.i63:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i63, %.preheader.i55.split.split
  %.033.i62 = phi i64 [ %i.lf, %.preheader.i55.split.split ], [ %i.mv, %_ZN8facebook5velox6StatusD2Ev.exit24.i63 ] ; 3 uses
  %i.ml = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i62, i1 true)
  %13 = or disjoint i64 %i.ml, %12                ; 2 uses
  %i.mm = shl nsw i64 %13, 2
  %i.mn = getelementptr inbounds i8, ptr %i.mk, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !3, !noalias !9883
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !3, !noalias !9883
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %13
  store i64 %i.ms, ptr %i.mt, align 8, !tbaa !243
  %i.mu = add nsw i64 %.033.i62, -1
  %i.mv = and i64 %i.mu, %.033.i62                ; 2 uses
  %.not10.i65 = icmp eq i64 %i.mv, 0
  br i1 %.not10.i65, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i63, !llvm.loop !9863

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i63, %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us79, %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.p, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #26 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #29 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #31 = { nounwind }
attributes #32 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { builtin nounwind }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { noreturn nounwind }
attributes #38 = { noreturn }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { cold }
attributes #41 = { allocsize(0) }
attributes #42 = { cold noreturn nounwind }
attributes #43 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!12, !9, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!19 = !{!17, !18, i64 16}
!20 = !{!17, !18, i64 8}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN8facebook5velox4exec17SignatureVariableE", !10, i64 0}
!24 = !{!22, !23, i64 8}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!22, !23, i64 16}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!31 = distinct !{!31, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!34 = distinct !{!34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!37 = distinct !{!37, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!40 = distinct !{!40, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!43 = distinct !{!43, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!46 = distinct !{!46, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!49 = distinct !{!49, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!52 = distinct !{!52, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!55 = distinct !{!55, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!58 = distinct !{!58, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!61 = distinct !{!61, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!64 = distinct !{!64, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!67 = distinct !{!67, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!70 = distinct !{!70, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!73 = distinct !{!73, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!76 = distinct !{!76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!79 = distinct !{!79, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!82 = distinct !{!82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!85 = distinct !{!85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!88 = distinct !{!88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!91 = distinct !{!91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!94 = distinct !{!94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!97 = distinct !{!97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!100 = distinct !{!100, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!103 = distinct !{!103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!104 = !{!105}
end_hunk_4
