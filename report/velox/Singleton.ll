inline.NumInlined: 3368
inline.NumDeleted: 1576
begin_hunk_0_@_ZN5folly14SingletonVault11doEagerInitEv:bb.a
bb.m:                                             ; preds = %bb.l
  %i.ac = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.p)
          to label %.noexc19 unwind label %bb.s

.noexc19:                                         ; preds = %bb.m
  br i1 %i.ac, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.noexc19, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ad = atomicrmw sub ptr %i.p, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ae = add i32 %i.ad, -2048                    ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !7
  %i.af = icmp ugt i32 %i.ae, 2047
  %i.ag = and i32 %i.ad, 16
  %.not.i.i.i.i = icmp eq i32 %i.ag, 0
  %or.cond.i.i.i = or i1 %i.af, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.o, !prof !174

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.s

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.k
  %i.ah = load i16, ptr %i.g, align 2, !tbaa !158
  %i.ai = zext i16 %i.ah to i64
  %i.aj = ptrtoint ptr %i.p to i64
  %.idx.i = shl nuw nsw i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.al = cmpxchg ptr %i.ak, i64 %i.aj, i64 0 seq_cst seq_cst, align 8
  %i.am = extractvalue { i64, i1 } %i.al, 1
  br i1 %i.am, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.an = atomicrmw sub ptr %i.p, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ao = add i32 %i.an, -2048                    ; 2 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !7
  %i.ap = icmp ugt i32 %i.ao, 2047
  %i.aq = and i32 %i.an, 16
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  %or.cond.i.i = or i1 %i.ap, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.r, !prof !174

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.s

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.m
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.k, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.p, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.at, ptr %4, align 8, !tbaa !151, !alias.scope !2983
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i16 0, ptr %i.au, align 8, !tbaa !157, !alias.scope !2983
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 0, ptr %i.av, align 2, !tbaa !158, !alias.scope !2983
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !2983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !2983
  %i.aw = load atomic i32, ptr %i.at monotonic, align 8, !noalias !2983 ; 4 uses
  store i32 %i.aw, ptr %i.c, align 4, !tbaa !7, !noalias !2983
  %i.ax = and i32 %i.aw, -1408
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.az = or disjoint i32 %i.aw, 2048
  %i.ba = cmpxchg ptr %i.at, i32 %i.aw, i32 %i.az seq_cst seq_cst, align 4, !noalias !2983 ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.ba, 1
  br i1 %i.bb, label %bb.u, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i15

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i15: ; preds = %bb.t
  %i.bc = extractvalue { i32, i1 } %i.ba, 0
  store i32 %i.bc, ptr %i.c, align 4, !noalias !2983
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store i16 2, ptr %i.au, align 8, !tbaa !157, !alias.scope !2983
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i15, %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.bd = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE14lockSharedImplINS4_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.au, ptr noundef nonnull align 1 dereferenceable(1) %1) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !2983
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !2983
  %i.be = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.be, null
  %i.bf = select i1 %.not.i.i16, i64 16, i64 -40
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %bb.w
  %.sroa.022.0.in = phi ptr [ %i.bg, %bb.w ], [ %.sroa.022.0, %bb.ac ]
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !183 ; 3 uses
  %i.bh = icmp eq ptr %.sroa.022.0, null
  br i1 %i.bh, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bi = load i16, ptr %i.au, align 8, !tbaa !157
  %.not.i.i18 = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i18, label %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = load ptr, ptr %4, align 8, !tbaa !151
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull align 2 dereferenceable(4) %i.au)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.ab:                                            ; preds = %bb.j, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ae

bb.ac:                                            ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !180 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %bb.x unwind label %bb.ad, !call_target !2986

bb.ad:                                            ; preds = %bb.ac
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.ab ], [ %i.br, %bb.ad ]
  resume { ptr, i32 } %.pn9.pn

bb.af:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !157
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_19shared_mutex_detail18PolicySuppressTSANEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !151
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_19shared_mutex_detail18PolicySuppressTSANEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #46
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_19shared_mutex_detail18PolicySuppressTSANEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEE(ptr noundef nonnull align 8 dereferenceable(425) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false, void, std::atomic, folly::shared_mutex_detail::PolicySuppressTSAN>::WaitForever", align 1 ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.folly::SharedMutexImpl<true>::WaitForever", align 1 ; 3 uses
  %5 = alloca %"class.folly::LockedPtr.130", align 8 ; 8 uses
  %6 = alloca %"class.folly::LockedPtr.142", align 8 ; 9 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %8 = alloca %"class.folly::Function.97", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2987)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !2915, !alias.scope !2987
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.f, align 8, !tbaa !157, !alias.scope !2987
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.g, align 2, !tbaa !158, !alias.scope !2987
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !2987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28, !noalias !2987
  %i.h = load atomic i32, ptr %i.e monotonic, align 8, !noalias !2987 ; 4 uses
  store i32 %i.h, ptr %i.d, align 4, !tbaa !7, !noalias !2987
  %i.i = and i32 %i.h, -1408
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = or disjoint i32 %i.h, 2048
  %i.l = cmpxchg ptr %i.e, i32 %i.h, i32 %i.k seq_cst seq_cst, align 4, !noalias !2987 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = extractvalue { i32, i1 } %i.l, 0
  store i32 %i.n, ptr %i.d, align 4, !noalias !2987
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2, ptr %i.f, align 8, !tbaa !157, !alias.scope !2987
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.a
  %i.o = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 2 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !2987
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !2987
  %i.p = load ptr, ptr %5, align 8, !tbaa !2915   ; 9 uses
  %.not.i.i = icmp eq ptr %i.p, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -8
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.neg.i.i ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !234
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZNK5folly6detail19SingletonVaultState5checkENS1_4TypeEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5folly6detail16throw_exception_ISt11logic_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.60) #14
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNK5folly6detail19SingletonVaultState5checkENS1_4TypeEPKc.exit: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !2921, !range !34, !noundef !35
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.g, !prof !55

bb.g:                                             ; preds = %_ZNK5folly6detail19SingletonVaultState5checkENS1_4TypeEPKc.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.68)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #42
          to label %bb.aq unwind label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #28
  br label %bb.ae

bb.k:                                             ; preds = %_ZNK5folly6detail19SingletonVaultState5checkENS1_4TypeEPKc.exit
  %i.y = load i16, ptr %i.f, align 8, !tbaa !157
  switch i16 %i.y, label %bb.q [
    i16 0, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.l
    i16 3, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = load atomic i32, ptr %i.p acquire, align 4
  %i.aa = and i32 %i.z, 768
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.p)
          to label %.noexc36 unwind label %bb.s

.noexc36:                                         ; preds = %bb.m
  br i1 %i.ac, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.noexc36, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ad = atomicrmw sub ptr %i.p, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ae = add i32 %i.ad, -2048                    ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !7
  %i.af = icmp ugt i32 %i.ae, 2047
  %i.ag = and i32 %i.ad, 16
  %.not.i.i.i.i35 = icmp eq i32 %i.ag, 0
  %or.cond.i.i.i = or i1 %i.af, %.not.i.i.i.i35
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.o, !prof !174

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.s

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.k
  %i.ah = load i16, ptr %i.g, align 2, !tbaa !158
  %i.ai = zext i16 %i.ah to i64
  %i.aj = ptrtoint ptr %i.p to i64
  %.idx.i = shl nuw nsw i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.al = cmpxchg ptr %i.ak, i64 %i.aj, i64 0 seq_cst seq_cst, align 8
  %i.am = extractvalue { i64, i1 } %i.al, 1
  br i1 %i.am, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.an = atomicrmw sub ptr %i.p, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ao = add i32 %i.an, -2048                    ; 2 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !7
  %i.ap = icmp ugt i32 %i.ao, 2047
  %i.aq = and i32 %i.an, 16
  %.not.i.i.i34 = icmp eq i32 %i.aq, 0
  %or.cond.i.i = or i1 %i.ap, %.not.i.i.i34
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.r, !prof !174

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.s

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.m
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.k, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.p, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2990)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.at, ptr %6, align 8, !tbaa !151, !alias.scope !2990
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i16 0, ptr %i.au, align 8, !tbaa !157, !alias.scope !2990
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 0, ptr %i.av, align 2, !tbaa !158, !alias.scope !2990
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !2990
  %i.aw = load atomic i32, ptr %i.at monotonic, align 8, !noalias !2990 ; 4 uses
  store i32 %i.aw, ptr %i.c, align 4, !tbaa !7, !noalias !2990
  %i.ax = and i32 %i.aw, -1408
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.az = or disjoint i32 %i.aw, 2048
  %i.ba = cmpxchg ptr %i.at, i32 %i.aw, i32 %i.az seq_cst seq_cst, align 4, !noalias !2990 ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.ba, 1
  br i1 %i.bb, label %bb.u, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i20

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i20: ; preds = %bb.t
  %i.bc = extractvalue { i32, i1 } %i.ba, 0
  store i32 %i.bc, ptr %i.c, align 4, !noalias !2990
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store i16 2, ptr %i.au, align 8, !tbaa !157, !alias.scope !2990
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv.exit

bb.v:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i20, %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.bd = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE14lockSharedImplINS4_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.au, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv.exit

_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !2990
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2990
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.be = load ptr, ptr %6, align 8, !tbaa !151   ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.be, null
  %.neg.i.i22 = select i1 %.not.i.i21, i64 0, i64 -56
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %.neg.i.i22 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !179
  call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43
          to label %bb.w unwind label %bb.af      ; 6 uses

bb.w:                                             ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 1, ptr %i.bk, align 8, !tbaa !2996, !noalias !2993
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 1, ptr %i.bl, align 4, !tbaa !2998, !noalias !2993
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6atomicImESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bj, align 8, !tbaa !36, !noalias !2993
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  store i64 %i.bh, ptr %i.bm, align 8, !tbaa !98, !noalias !2993
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !2999, !alias.scope !2993
  store ptr %i.bm, ptr %7, align 8, !tbaa !3002, !alias.scope !2993
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.040.043 = load ptr, ptr %i.bn, align 8, !tbaa !183 ; 2 uses
  %i.bo = icmp eq ptr %.sroa.040.043, null
  br i1 %i.bo, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.ag

._crit_edge:                                      ; preds = %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit"
  %.pre.a = load ptr, ptr %i.bi, align 8, !tbaa !2999 ; 2 uses
  %.not.i.i26 = icmp eq ptr %.pre.a, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %._crit_edge
  %i.bs = phi ptr [ %.pre.a, %._crit_edge ], [ %i.bj, %bb.w ] ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.thread
  store i32 0, ptr %i.bt, align 8, !tbaa !2996
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !2998
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #28, !call_target !3004, !inline_history !3066
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #28, !call_target !3033, !inline_history !3066
  br label %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %._crit_edge.thread
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.bw, %bb.z ], [ %i.cg, %bb.aa ]
  %i.ch = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ch, label %bb.ab, label %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #28
  br label %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ci = load i16, ptr %i.au, align 8, !tbaa !157
  %.not.i.i27 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i27, label %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cj = load ptr, ptr %6, align 8, !tbaa !151
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.cj, ptr noundef nonnull align 2 dereferenceable(4) %i.au)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.ae:                                            ; preds = %bb.j, %bb.i
  %.pn13 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ap

bb.af:                                            ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ag:                                            ; preds = %.lr.ph, %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit"
  %10 = phi ptr [ %i.bm, %.lr.ph ], [ %11, %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit" ] ; 3 uses
  %.sroa.040.044 = phi ptr [ %.sroa.040.043, %.lr.ph ], [ %.sroa.040.0, %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit" ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.040.044, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !180
  %i.cp = load ptr, ptr %i.bi, align 8, !tbaa !2999 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i28, label %_ZNSt10shared_ptrISt6atomicImEEC2ERKS2_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !7
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !7
  br label %_ZNSt10shared_ptrISt6atomicImEEC2ERKS2_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cu = atomicrmw volatile add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %7, align 8, !tbaa !3067
  br label %_ZNSt10shared_ptrISt6atomicImEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicImEEC2ERKS2_.exit:     ; preds = %bb.ag, %bb.ai, %bb.aj
  %11 = phi ptr [ %10, %bb.ag ], [ %10, %bb.ai ], [ %.pre, %bb.aj ]
  store ptr %10, ptr %8, align 16, !tbaa !3067
  store ptr %i.cp, ptr %i.bq, align 8, !tbaa !2999
  store ptr %2, ptr %i.br, align 16
  store ptr %i.co, ptr %.sroa.10.16..sroa_idx, align 8
  store ptr @"_ZN5folly6detail8function5call_IZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %9, align 16, !tbaa !141
  store ptr @"_ZN5folly6detail8function13DispatchSmall4execIZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEE3$_0EEmNS1_2OpEPNS1_4DataESE_", ptr %i.bp, align 8, !tbaa !143
  %i.cv = load ptr, ptr %1, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %8)
          to label %bb.ak unwind label %bb.am, !call_target !3069

bb.ak:                                            ; preds = %_ZNSt10shared_ptrISt6atomicImEEC2ERKS2_.exit
  %i.cy = load ptr, ptr %i.bp, align 8, !tbaa !143 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i29, label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cz = call noundef i64 %i.cy(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit"

"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit": ; preds = %bb.al, %bb.ak
  %.sroa.040.0 = load ptr, ptr %.sroa.040.044, align 8, !tbaa !183 ; 2 uses
  %i.da = icmp eq ptr %.sroa.040.0, null
  br i1 %i.da, label %._crit_edge, label %bb.ag

bb.am:                                            ; preds = %_ZNSt10shared_ptrISt6atomicImEEC2ERKS2_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %i.bp, align 8, !tbaa !143 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i32, label %_ZN5folly8FunctionIFvvEED2Ev.exit33, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dd = call noundef i64 %i.dc(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit33

_ZN5folly8FunctionIFvvEED2Ev.exit33:              ; preds = %bb.am, %bb.an
  call fastcc void @"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev"(ptr null) #28
  call void @_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #28
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit33, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %i.db, %_ZN5folly8FunctionIFvvEED2Ev.exit33 ], [ %i.cm, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ae
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.ae ], [ %.pn.pn, %bb.ao ]
  resume { ptr, i32 } %.pn13.pn

bb.aq:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev"(ptr %.8.val) unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !2996
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !2998
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #28, !call_target !3004, !inline_history !3066
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #28, !call_target !3033, !inline_history !3066
  br label %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #28
  br label %_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2999 ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !2996
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !2998
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !call_target !3004, !inline_history !3076
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !call_target !3033, !inline_history !3076
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicImESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicImESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyISt6atomicImEEEvRS0_PT_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicImESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6atomicImESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicImESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr noundef nonnull align 16 dereferenceable(48) %0) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !3077, !alias.scope !3079
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !3082
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3084
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3086 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.b unwind label %bb.d, !call_target !3090

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !3086 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d, !call_target !2986

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_Lb1EED2Ev"(ptr noundef nonnull align 8 dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %0, align 16, !tbaa !3067
  %i.o = atomicrmw sub ptr %i.n, i64 1 seq_cst, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEv.exit"

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.a, align 16, !tbaa !3091 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEv.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load atomic i32, ptr %i.q acquire, align 4
  switch i32 %i.r, label %bb.i [
    i32 0, label %bb.h
    i32 4, label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEv.exit"
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = cmpxchg ptr %i.q, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1
  %i.u = extractvalue { i32, i1 } %i.s, 0
  %i.v = icmp eq i32 %i.u, 4
  %or.cond.i.i.i.i.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond.i.i.i.i.i, label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEv.exit", label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store atomic i32 3, ptr %i.q release, align 4
  %i.w = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.q, i32 noundef 1, i32 noundef -1)
          to label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEv.exit" unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #46
  unreachable

"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEv.exit": ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @"_ZN5folly6detail8function13DispatchSmall4execIZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEE3$_0EEmNS1_2OpEPNS1_4DataESE_"(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.j [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit"
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !2999
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !3092
  store ptr null, ptr %i.b, align 8, !tbaa !2999
  store <2 x ptr> %i.c, ptr %2, align 8, !tbaa !3092
  store ptr null, ptr %1, align 8, !tbaa !3067
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !2999 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !2996
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !2998
  %i.l = load ptr, ptr %.val, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %.val) #28, !call_target !3004, !inline_history !3093
  %i.o = load ptr, ptr %.val, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.val) #28, !call_target !3033, !inline_history !3093
  br label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit"

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.j, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit", !prof !21

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #28
  br label %"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit"

bb.j:                                             ; preds = %bb.a
  tail call void @abort() #46
  unreachable

"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev.exit": ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_Lb1EED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !3077, !range !34, !noundef !35
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %"_ZN5folly6detail14ScopeGuardImplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_Lb1EE7executeEv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3094, !nonnull !35, !align !3096
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3067
  %i.f = atomicrmw sub ptr %i.e, i64 1 seq_cst, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %"_ZN5folly6detail14ScopeGuardImplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_Lb1EE7executeEv.exit"

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3097, !nonnull !35, !align !3096
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3091 ; 5 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %"_ZN5folly6detail14ScopeGuardImplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_Lb1EE7executeEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load atomic i32, ptr %i.j acquire, align 4
  switch i32 %i.k, label %bb.f [
    i32 0, label %bb.e
    i32 4, label %"_ZN5folly6detail14ScopeGuardImplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_Lb1EE7executeEv.exit"
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = cmpxchg ptr %i.j, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  %i.n = extractvalue { i32, i1 } %i.l, 0
  %i.o = icmp eq i32 %i.n, 4
  %or.cond.i.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i, label %"_ZN5folly6detail14ScopeGuardImplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_Lb1EE7executeEv.exit", label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store atomic i32 3, ptr %i.j release, align 4
  %i.p = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef 1, i32 noundef -1)
          to label %"_ZN5folly6detail14ScopeGuardImplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_Lb1EE7executeEv.exit" unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #46
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_Lb1EE7executeEv.exit": ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: noreturn nounwind
declare void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() local_unnamed_addr #27

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !call_target !3004, !inline_history !3098
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
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

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !call_target !3033, !inline_history !3098
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_18CancellationSourceENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3099, !range !34, !noundef !35
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !3102   ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !7
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #46
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly24ReadMostlyMainPtrDeleterINS_10TLRefCountEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN5folly10TLRefCount9useGlobalISt6vectorIPS0_SaIS3_EEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3103 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3103 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !3105 ; 3 uses
  %.pre9 = load ptr, ptr %i.c, align 8, !tbaa !3107 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre9
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN5folly8FunctionIFvvEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN5folly8FunctionIFvvEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly8FunctionIFvvEEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.h = tail call noundef i64 %i.g(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.05.i.i.i, ptr noundef null) #28, !inline_history !3108 ; 0 uses
  br label %_ZSt8_DestroyIN5folly8FunctionIFvvEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5folly8FunctionIFvvEEEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %.pre9
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3109

_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5folly8FunctionIFvvEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !3105
  br label %_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3110
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #49
  br label %_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly8FunctionIFvvEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !3111   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN5folly10TLRefCountESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3114
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #49
  br label %_ZNSt6vectorIPN5folly10TLRefCountESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5folly10TLRefCountESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EED2Ev.exit, %bb.e
  ret void

.lr.ph:                                           ; preds = %bb.b, %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit
  %.sroa.05.08 = phi ptr [ %i.x, %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit ], [ %i.b, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 48
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !141
  invoke void %i.w(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.05.08)
          to label %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit unwind label %.loopexit, !inline_history !3115

_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit: ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 64 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZN5folly10TLRefCount9useGlobalISt6vectorIPS0_SaIS3_EEEEvRKT_:bb.a
  %i.ef = and i32 %i.ee, 15
  switch i32 %i.ef, label %._crit_edge.i81.thread [
    i32 0, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit.i
    i32 12, label %bb.am
  ], !prof !3152

bb.am:                                            ; preds = %bb.al
  %i.eg = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.ed, i32 noundef 1, i32 noundef 12)
          to label %.noexc83 unwind label %bb.ao

.noexc83:                                         ; preds = %bb.am
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit.i, label %._crit_edge.i81.thread

._crit_edge.i81.thread:                           ; preds = %bb.al, %.noexc83
  %i.ei = atomicrmw and ptr %i.ed, i32 -16 seq_cst, align 4
  %i.ej = and i32 %i.ei, 15
  %.not12.i80 = icmp eq i32 %i.ej, 0
  br i1 %.not12.i80, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge.i81.thread
  %i.ek = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.ed, i32 noundef 2147483647, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit.i unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit.i: ; preds = %bb.al, %._crit_edge.i81.thread, %bb.an, %.noexc83, %bb.ak, %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor7releaseEv.exit
  %i.en = load i16, ptr %i.p, align 8, !tbaa !157 ; 2 uses
  %.not.i.i39 = icmp eq i16 %i.en, 0
  br i1 %.not.i.i39, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit.i
  %i.eo = load ptr, ptr %i.q, align 8, !tbaa !3153 ; 8 uses
  switch i16 %i.en, label %bb.av [
    i16 1, label %bb.aq
    i16 3, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ep = load atomic i32, ptr %i.eo acquire, align 4
  %i.eq = and i32 %i.ep, 768
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.es = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.eo)
          to label %.noexc75 unwind label %bb.ax

.noexc75:                                         ; preds = %bb.ar
  br i1 %i.es, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %.noexc75, %bb.aq
  %i.et = atomicrmw sub ptr %i.eo, i32 2048 seq_cst, align 4
  %i.eu = and i32 %i.et, -2032
  %or.cond.i.i.i.not = icmp eq i32 %i.eu, 2064
  br i1 %or.cond.i.i.i.not, label %bb.at, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, !prof !29

bb.at:                                            ; preds = %bb.as
  %i.ev = atomicrmw and ptr %i.eo, i32 -17 seq_cst, align 4
  %i.ew = and i32 %i.ev, 16
  %.not12.i103 = icmp eq i32 %i.ew, 0
  br i1 %.not12.i103, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, label %.invoke

.invoke:                                          ; preds = %bb.aw, %bb.at
  %i.ex = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.eo, i32 noundef 2147483647, i32 noundef 16)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i unwind label %bb.ax ; 0 uses

bb.au:                                            ; preds = %bb.ap
  %i.ey = load i16, ptr %i.r, align 2, !tbaa !158
  %i.ez = zext i16 %i.ey to i64
  %i.fa = ptrtoint ptr %i.eo to i64
  %.idx.i = shl nuw nsw i64 %i.ez, 5
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.fc = cmpxchg ptr %i.fb, i64 %i.fa, i64 0 seq_cst seq_cst, align 8
  %i.fd = extractvalue { i64, i1 } %i.fc, 1
  br i1 %i.fd, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ap
  %i.fe = atomicrmw sub ptr %i.eo, i32 2048 seq_cst, align 4
  %i.ff = and i32 %i.fe, -2032
  %or.cond.i.i.not = icmp eq i32 %i.ff, 2064
  br i1 %or.cond.i.i.not, label %bb.aw, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, !prof !29

bb.aw:                                            ; preds = %bb.av
  %i.fg = atomicrmw and ptr %i.eo, i32 -17 seq_cst, align 4
  %i.fh = and i32 %i.fg, 16
  %.not12.i96 = icmp eq i32 %i.fh, 0
  br i1 %.not12.i96, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, label %.invoke

bb.ax:                                            ; preds = %.invoke, %bb.ar
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #46
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i: ; preds = %.invoke, %bb.au, %.noexc75, %bb.at, %bb.as, %bb.aw, %bb.av, %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit.i
  %i.fk = load i8, ptr %i.n, align 8, !tbaa !3099, !range !34, !noundef !35
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ay, label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorD2Ev.exit

bb.ay:                                            ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i
  %i.fm = load ptr, ptr %i.m, align 8, !tbaa !3102 ; 5 uses
  %.not.i.i.i40 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i40, label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fn = atomicrmw and ptr %i.fm, i32 -401 seq_cst, align 4
  %i.fo = and i32 %i.fn, 15
  switch i32 %i.fo, label %._crit_edge.i.thread [
    i32 0, label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorD2Ev.exit
    i32 12, label %bb.ba
  ], !prof !3152

bb.ba:                                            ; preds = %bb.az
  %i.fp = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.fm, i32 noundef 1, i32 noundef 12)
          to label %.noexc71 unwind label %bb.bc

.noexc71:                                         ; preds = %bb.ba
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorD2Ev.exit, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %bb.az, %.noexc71
  %i.fr = atomicrmw and ptr %i.fm, i32 -16 seq_cst, align 4
  %i.fs = and i32 %i.fr, 15
  %.not12.i = icmp eq i32 %i.fs, 0
  br i1 %.not12.i, label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i.thread
  %i.ft = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %i.fm, i32 noundef 2147483647, i32 noundef 15)
          to label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorD2Ev.exit unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #46
  unreachable

.loopexit:                                        ; preds = %.invoke338, %bb.ae, %bb.aa, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %bb.x, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fw = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.fw) #46
  unreachable

_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorD2Ev.exit: ; preds = %bb.az, %._crit_edge.i.thread, %bb.bb, %.noexc71, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.fx = load atomic i32, ptr %i.bp monotonic, align 8
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %_ZNKSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit._crit_edge, label %.lr.ph355

.thread:                                          ; preds = %bb.q, %bb.r, %_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE16accessAllThreadsEv.exit.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.lr.ph242:                                        ; preds = %_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor5beginEv.exit, %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8IteratorppEv.exit
  %.sroa.7.0241 = phi ptr [ %.sroa.7.3, %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8IteratorppEv.exit ], [ %.sroa.7.1, %_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor5beginEv.exit ] ; 4 uses
  %i.ga = load ptr, ptr %.sroa.7.0241, align 8, !tbaa !3146 ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 3 uses
  %i.gc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.gb) #28 ; 2 uses
  %.not.i.i.i43 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i.i43, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph242
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.gc) #42
          to label %.noexc48 unwind label %bb.bu

.noexc48:                                         ; preds = %bb.be
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %.lr.ph242
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 72 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !3159
  %.not.i44 = icmp eq ptr %i.ge, null
  br i1 %.not.i44, label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.gf = load atomic i64, ptr %i.ga seq_cst, align 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !3161
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !3168, !nonnull !35, !align !3096
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.gk = atomicrmw add ptr %i.gj, i64 %i.gf seq_cst, align 8 ; 0 uses
  store ptr null, ptr %i.gd, align 8, !tbaa !3092
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 80 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !2999 ; 8 uses
  store ptr null, ptr %i.gl, align 8, !tbaa !2999
  %.not.i.i.i.i45 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i45, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 4 uses
  %i.go = load atomic i64, ptr %i.gn acquire, align 8 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 4294967297
  %i.gq = trunc i64 %i.go to i32                  ; 2 uses
  br i1 %i.gp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gn, align 8, !tbaa !2996
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store i32 0, ptr %i.gr, align 4, !tbaa !2998
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !36
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #28, !call_target !3004, !inline_history !3169
  %i.gv = load ptr, ptr %i.gm, align 8, !tbaa !36
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #28, !call_target !3033, !inline_history !3169
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bg
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i46 = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i.i46, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gz = add nsw i32 %i.gq, -1
  store i32 %i.gz, ptr %i.gn, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.ha = atomicrmw volatile add ptr %i.gn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i = phi i32 [ %i.gq, %bb.bj ], [ %i.ha, %bb.bk ]
  %i.hb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.hb, label %bb.bl, label %bb.bm, !prof !21

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #28
  br label %bb.bm

_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.hc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gb) #28 ; 0 uses
  br label %_ZN5folly10TLRefCount13LocalRefCount7collectEv.exit

bb.bm:                                            ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bh, %bb.bf
  %i.hd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gb) #28 ; 0 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.hf = load atomic i8, ptr %i.he acquire, align 8, !range !34, !noundef !35
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %.lr.ph.i47, label %_ZN5folly10TLRefCount13LocalRefCount7collectEv.exit

.lr.ph.i47:                                       ; preds = %bb.bm, %_ZN5folly6detail7Sleeper4waitEv.exit.i
  %.sroa.4.03.i = phi i32 [ %.sroa.4.1.i, %_ZN5folly6detail7Sleeper4waitEv.exit.i ], [ 0, %bb.bm ] ; 3 uses
  %i.hh = icmp ult i32 %.sroa.4.03.i, 4096
  br i1 %i.hh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.i47
  %i.hi = add nuw nsw i32 %.sroa.4.03.i, 1
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !168
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i

bb.bo:                                            ; preds = %.lr.ph.i47
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 0, ptr %1, align 8, !tbaa !3170
  store i64 500000, ptr %i.k, align 8, !tbaa !3172
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %bb.bo
  %i.hj = invoke i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
          to label %.noexc.i.i unwind label %bb.br

.noexc.i.i:                                       ; preds = %bb.bp
  %i.hk = icmp eq i32 %i.hj, -1
  br i1 %i.hk, label %bb.bq, label %.critedge.i.i.i

bb.bq:                                            ; preds = %.noexc.i.i
  %i.hl = tail call ptr @__errno_location() #51
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !7
  %i.hn = icmp eq i32 %i.hm, 4
  br i1 %i.hn, label %bb.bp, label %.critedge.i.i.i, !llvm.loop !3173

.critedge.i.i.i:                                  ; preds = %bb.bq, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #46
  unreachable

_ZN5folly6detail7Sleeper4waitEv.exit.i:           ; preds = %.critedge.i.i.i, %bb.bn
  %.sroa.4.1.i = phi i32 [ %i.hi, %bb.bn ], [ %.sroa.4.03.i, %.critedge.i.i.i ]
  %i.hq = load atomic i8, ptr %i.he acquire, align 8, !range !34, !noundef !35
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %.lr.ph.i47, label %_ZN5folly10TLRefCount13LocalRefCount7collectEv.exit, !llvm.loop !3174

_ZN5folly10TLRefCount13LocalRefCount7collectEv.exit: ; preds = %_ZN5folly6detail7Sleeper4waitEv.exit.i, %bb.bm, %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i
  %i.hs = load ptr, ptr %i.cb, align 8, !tbaa !3144 ; 3 uses
  %i.ht = icmp eq ptr %.sroa.7.0241, %i.hs
  br i1 %i.ht, label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8IteratorppEv.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZN5folly10TLRefCount13LocalRefCount7collectEv.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.7.0241, i64 24 ; 3 uses
  %i.hv = icmp eq ptr %i.hu, %i.hs
  br i1 %i.hv, label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8IteratorppEv.exit, label %_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8Iterator5validEv.exit.i.i.i49

_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8Iterator5validEv.exit.i.i.i49: ; preds = %bb.bs, %bb.bt
  %.sroa.7.2 = phi ptr [ %i.hx, %bb.bt ], [ %i.hu, %bb.bs ] ; 3 uses
  %i.hw = load ptr, ptr %.sroa.7.2, align 8, !tbaa !3146
  %.not.i.i.i50 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i50, label %bb.bt, label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8IteratorppEv.exit

bb.bt:                                            ; preds = %_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8Iterator5validEv.exit.i.i.i49
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.7.2, i64 24 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, %i.hs
  br i1 %i.hy, label %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8IteratorppEv.exit, label %_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8Iterator5validEv.exit.i.i.i49, !llvm.loop !3150

_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8IteratorppEv.exit: ; preds = %_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8Iterator5validEv.exit.i.i.i49, %bb.bt, %_ZN5folly10TLRefCount13LocalRefCount7collectEv.exit, %bb.bs
  %.sroa.7.3 = phi ptr [ %.sroa.7.0241, %_ZN5folly10TLRefCount13LocalRefCount7collectEv.exit ], [ %i.hu, %bb.bs ], [ %.sroa.7.2, %_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor8Iterator5validEv.exit.i.i.i49 ], [ %i.hx, %bb.bt ] ; 2 uses
  %.not = icmp eq ptr %.sroa.7.3, %i.cc
  br i1 %.not, label %._crit_edge243, label %.lr.ph242

bb.bu:                                            ; preds = %bb.be
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.thread
  %.pn.pn.pn213 = phi { ptr, i32 } [ %i.fz, %.thread ], [ %i.hz, %bb.bu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ia = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 3 uses
  %i.ib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i52 = icmp eq i8 %i.ib, 0
  br i1 %.not.i.i.i52, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ic = load i32, ptr %i.ia, align 4, !tbaa !7  ; 2 uses
  %i.id = add nsw i32 %i.ic, -1
  store i32 %i.id, ptr %i.ia, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.ie = atomicrmw volatile add ptr %i.ia, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i = phi i32 [ %i.ic, %bb.bw ], [ %i.ie, %bb.bx ]
  %i.if = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.if, label %bb.by, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.ig = load ptr, ptr %i.au, align 8, !tbaa !36
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !call_target !3033, !inline_history !3175
  br label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNKSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit._crit_edge: ; preds = %_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorD2Ev.exit, %_ZNKSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.lr.ph
  store atomic i32 2, ptr %i.ar seq_cst, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 3 uses
  %i.ik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i54 = icmp eq i8 %i.ik, 0
  br i1 %.not.i.i.i54, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit._crit_edge
  %i.il = load i32, ptr %i.ij, align 4, !tbaa !7  ; 2 uses
  %i.im = add nsw i32 %i.il, -1
  store i32 %i.im, ptr %i.ij, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55

bb.ca:                                            ; preds = %_ZNKSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit._crit_edge
  %i.in = atomicrmw volatile add ptr %i.ij, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i56 = phi i32 [ %i.il, %bb.bz ], [ %i.in, %bb.ca ]
  %i.io = icmp eq i32 %.0.i.i.i.i56, 1
  br i1 %i.io, label %bb.cb, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55
  %i.ip = load ptr, ptr %i.au, align 8, !tbaa !36
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !call_target !3033, !inline_history !3175
  br label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57

_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57: ; preds = %.thread215, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55, %bb.cb
end_hunk_1
begin_hunk_2_@_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorC2Ej:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.m, align 8, !tbaa !157
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %_ZNKSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE21error_if_not_lockableEv.exit.i
  %i.y = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 2 dereferenceable(4) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.t       ; 0 uses

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !3102 ; 4 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.j, align 8, !tbaa !3099, !range !34, !noundef !35
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.invoke, label %bb.h

.invoke:                                          ; preds = %bb.g, %bb.f
  %i.ac = phi i32 [ 1, %bb.f ], [ 35, %bb.g ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ac) #42
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.ad = load atomic i32, ptr %i.z acquire, align 4 ; 4 uses
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !7
  %i.ae = and i32 %i.ad, -1312
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %.critedge.i.i.i, !prof !55

bb.i:                                             ; preds = %bb.h
  %i.ag = or disjoint i32 %i.ad, 128
  %i.ah = cmpxchg ptr %i.z, i32 %i.ad, i32 %i.ag seq_cst seq_cst, align 4 ; 2 uses
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  br i1 %i.ai, label %bb.j, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i9, !prof !226

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i9: ; preds = %bb.i
  %i.aj = extractvalue { i32, i1 } %i.ah, 0
  store i32 %i.aj, ptr %i.c, align 4
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i9, %bb.h
  %i.ak = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %bb.t       ; 0 uses

bb.j:                                             ; preds = %bb.i, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store i8 1, ptr %i.j, align 8, !tbaa !3099
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.al = load ptr, ptr %0, align 8, !tbaa !3189, !nonnull !35, !align !3096 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  %i.an = load i32, ptr %i.o, align 8, !tbaa !3155
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = load atomic i64, ptr %i.am acquire, align 8
  %i.aq = icmp ugt i64 %i.ap, %i.ao
  br i1 %i.aq, label %bb.k, label %bb.l, !prof !55

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.at = invoke noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE7at_slowEm(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 noundef %i.ao)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.au = phi ptr [ %i.as, %bb.k ], [ %i.at, %bb.l ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ao
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3190
  call void @llvm.experimental.noalias.scope.decl(metadata !3192)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80 ; 4 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !3102, !alias.scope !3192
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 0, ptr %i.az, align 8, !tbaa !3099, !alias.scope !3192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !3192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !3192
  %i.ba = load atomic i32, ptr %i.ay acquire, align 4, !noalias !3192 ; 4 uses
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !7, !noalias !3192
  %i.bb = and i32 %i.ba, -1312
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %.critedge.i.i.i.i.i.i, !prof !55

bb.n:                                             ; preds = %bb.m
  %i.bd = or disjoint i32 %i.ba, 128
  %i.be = cmpxchg ptr %i.ay, i32 %i.ba, i32 %i.bd seq_cst seq_cst, align 4, !noalias !3192 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.o, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !226

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  store i32 %i.bg, ptr %i.b, align 4, !noalias !3192
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.m
  %i.bh = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.o unwind label %bb.u       ; 0 uses

bb.o:                                             ; preds = %bb.n, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !3192
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3192
  store i8 1, ptr %i.az, align 8, !tbaa !3099, !alias.scope !3192
  %i.bi = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  %i.bj = load i8, ptr %i.az, align 8, !tbaa !3099, !range !34, !noundef !35
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.p, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %5, align 8, !tbaa !3102  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bm = atomicrmw and ptr %i.bl, i32 -401 seq_cst, align 4 ; 2 uses
  %i.bn = and i32 %i.bm, -401
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !7
  %i.bo = and i32 %i.bm, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.r, !prof !55

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.s

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.o, %bb.p, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.t:                                             ; preds = %.invoke, %.critedge.i.i.i, %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.br, %bb.t ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.p) #28
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.k) #28
  call void @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.h) #28
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS_18threadlocal_detail10StaticMetaINS_10TLRefCountEvEEJEEEPvDpT0_() #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #43 ; 3 uses
  invoke void @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvEC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #49
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvEC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Function", align 16  ; 6 uses
  %2 = alloca %"class.folly::Function.97", align 16 ; 6 uses
  %3 = alloca %"class.folly::Function.97", align 16 ; 6 uses
  tail call void @_ZN5folly18threadlocal_detail14StaticMetaBaseC2EPFPNS0_11ThreadEntryEvEb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE18getThreadEntrySlowEv, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  store ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE7preForkEv, ptr %1, align 16, !tbaa !3092
  store ptr @_ZN5folly6detail8function5call_IPFbvELb1ELb0EbJEEET2_DpT3_RNS1_4DataE, ptr %i.a, align 16, !tbaa !138
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.b, align 8, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE12onForkParentEv, ptr %2, align 16, !tbaa !3092
  store ptr @_ZN5folly6detail8function5call_IPFvvELb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.c, align 16, !tbaa !141
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.d, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE11onForkChildEv, ptr %3, align 16, !tbaa !3092
  store ptr @_ZN5folly6detail8function5call_IPFvvELb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.e, align 16, !tbaa !141
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.f, align 8, !tbaa !143
  invoke void @_ZN5folly6AtFork15registerHandlerEPKvNS_8FunctionIFbvEEENS3_IFvvEEES7_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef i64 %i.g(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZN5folly8FunctionIFvvEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit
  %i.j = call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit3

_ZN5folly8FunctionIFvvEED2Ev.exit3:               ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit, %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !140  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i4, label %_ZN5folly8FunctionIFbvEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit3
  %i.l = call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef null) #28, !inline_history !145 ; 0 uses
  br label %_ZN5folly8FunctionIFbvEED2Ev.exit

_ZN5folly8FunctionIFbvEED2Ev.exit:                ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit3, %bb.e
  ret void

bb.f:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i.i5, label %_ZN5folly8FunctionIFvvEED2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call noundef i64 %i.n(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit6

_ZN5folly8FunctionIFvvEED2Ev.exit6:               ; preds = %bb.f, %bb.g
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  br i1 %.not.i.i7, label %_ZN5folly8FunctionIFvvEED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit6
  %i.q = call noundef i64 %i.p(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit8

_ZN5folly8FunctionIFvvEED2Ev.exit8:               ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit6, %bb.h
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !140  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.r, null
  br i1 %.not.i.i9, label %_ZN5folly8FunctionIFbvEED2Ev.exit10, label %bb.i

bb.i:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit8
  %i.s = call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef null) #28, !inline_history !145 ; 0 uses
  br label %_ZN5folly8FunctionIFbvEED2Ev.exit10

_ZN5folly8FunctionIFbvEED2Ev.exit10:              ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit8, %bb.i
  call void @_ZN5folly18threadlocal_detail14StaticMetaBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE18getThreadEntrySlowEv() #6 comdat align 2 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_10TLRefCountEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_10TLRefCountEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !inline_history !3187
  br label %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit

_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3195 ; 2 uses
  %i.f = tail call ptr @pthread_getspecific(i32 noundef %i.e) #28 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %_ZN5folly15checkPosixErrorIJRA27_KcEEEviDpOT_.exit

bb.c:                                             ; preds = %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit
  %i.g = tail call noundef ptr @_ZN5folly18threadlocal_detail14StaticMetaBase22allocateNewThreadEntryEv(ptr noundef nonnull align 8 dereferenceable(128) %i.c) ; 2 uses
  %i.h = tail call i32 @pthread_setspecific(i32 noundef %i.e, ptr noundef %i.g) #28 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN5folly15checkPosixErrorIJRA27_KcEEEviDpOT_.exit, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly24throwSystemErrorExplicitEiPKc(i32 noundef %i.h, ptr noundef nonnull @.str.70) #42
  unreachable

_ZN5folly15checkPosixErrorIJRA27_KcEEEviDpOT_.exit: ; preds = %bb.c, %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit
  %.0 = phi ptr [ %i.f, %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit ], [ %i.g, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5folly18threadlocal_detail14StaticMetaBaseC2EPFPNS0_11ThreadEntryEvEb(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE7preForkEv() #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %0 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitNever", align 1 ; 4 uses
  %i.c = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_10TLRefCountEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaINS_10TLRefCountEvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !inline_history !3187
  br label %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit

_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.g = load atomic i32, ptr %i.f acquire, align 4 ; 4 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !7
  %i.h = and i32 %i.g, -1312
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit, !prof !55

bb.c:                                             ; preds = %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit
  %i.j = or disjoint i32 %i.g, 128
  %i.k = cmpxchg ptr %i.f, i32 %i.g, i32 %i.j seq_cst seq_cst, align 4 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, !prof !226

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.d

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i: ; preds = %bb.c
  %i.m = extractvalue { i32, i1 } %i.k, 0
  store i32 %i.m, ptr %i.b, align 4
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit: ; preds = %_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE8instanceEv.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i
  %i.n = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_9WaitNeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %i.n, label %bb.d, label %_ZNSt5mutex4lockEv.exit

bb.d:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit.thread, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.p = load atomic i32, ptr %i.o acquire, align 4 ; 4 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !7
  %i.q = and i32 %i.p, -1312
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.critedge.i.i4, !prof !55

bb.e:                                             ; preds = %bb.d
  %i.s = or disjoint i32 %i.p, 128
  %i.t = cmpxchg ptr %i.o, i32 %i.p, i32 %i.s seq_cst seq_cst, align 4 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i5, !prof !226

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i5: ; preds = %bb.e
  %i.v = extractvalue { i32, i1 } %i.t, 0
  store i32 %i.v, ptr %i.a, align 4
  br label %.critedge.i.i4

.critedge.i.i4:                                   ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i5, %bb.d
  %i.w = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %0) ; 0 uses
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit: ; preds = %bb.e, %.critedge.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #28
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.y = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #28 ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %_ZNSt5mutex4lockEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.y) #42
  unreachable

_ZNSt5mutex4lockEv.exit:                          ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit
  %.0.i.i7 = phi i1 [ false, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit ], [ true, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit ]
  ret i1 %.0.i.i7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE12onForkParentEv() #4 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_9WaitNeverEEEbRjjRT_:bb.a
  %.2 = phi i1 [ false, %bb.j ], [ false, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit31 ], [ %.025, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit ], [ true, %bb.i ] ; 2 uses
  br i1 %i.t, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit, label %bb.b

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_9WaitNeverEEEbRjjjRT_.exit: ; preds = %bb.h, %bb.g, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit, %.lr.ph.i
  %.3 = phi i1 [ false, %.lr.ph.i ], [ true, %bb.g ], [ true, %bb.h ], [ %.2, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21wakeRegisteredWaitersERjj.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #50
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = tail call noundef i64 @llvm.x86.rdtsc()
  %i.e = ptrtoint ptr %0 to i64
  br label %.outer

.outer:                                           ; preds = %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, %bb.d
  %.1.ph = phi i32 [ 0, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit ], [ %i.l, %bb.d ] ; 3 uses
  %i.f = shl i32 %.1.ph, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.f
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %.1.ph, 1                        ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.loopexit, label %.outer, !llvm.loop !3249

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef i64 @llvm.x86.rdtsc()
  %i.o = sub i64 %i.n, %i.d
  %i.p = icmp ult i64 %i.o, 4000
  br i1 %i.p, label %bb.f, label %.thread, !prof !55

.thread:                                          ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.1.ph)
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !168
  br label %bb.c, !llvm.loop !3250

.loopexit:                                        ; preds = %bb.d, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_9WaitNeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #50
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = tail call noundef i32 @sched_yield() #28 ; 0 uses
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.f = icmp ult i32 %.2, %i.c
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.g = zext i32 %.2 to i64                      ; 2 uses
  %i.h = add i32 %3, %indvar
  %i.i = sub i32 %i.c, %i.h                       ; 3 uses
  %i.j = xor i32 %3, -1
  %i.k = add i32 %i.c, %i.j
  %xtraiter = and i32 %i.i, 1
  %i.l = icmp eq i32 %i.k, %indvar
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.i, -2
  br label %bb.e

bb.c:                                             ; preds = %bb.d, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit
  %indvar = phi i32 [ %indvar.next, %bb.d ], [ 0, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit ] ; 3 uses
  %.2 = phi i32 [ %i.s, %bb.d ], [ %3, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit ] ; 4 uses
  %i.m = shl i32 %.2, 2
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.n
  %i.p = load atomic i64, ptr %i.o acquire, align 32
  %i.q = and i64 %i.p, -2
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %.2, 1                           ; 2 uses
  %i.t = icmp eq i32 %i.s, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %i.t, label %.critedge, label %bb.c, !llvm.loop !3251

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %.02648 = phi i32 [ 0, %.lr.ph.new ], [ %.127.1, %bb.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.u = shl i64 %indvars.iv, 2
  %i.v = and i64 %i.u, 4294967292
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.v ; 2 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 32 ; 2 uses
  %i.y = and i64 %i.x, -2
  %i.z = icmp eq i64 %i.y, %i.d
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = cmpxchg ptr %i.w, i64 %i.x, i64 0 seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = zext i1 %i.ab to i32
  %..026 = add i32 %.02648, %i.ac
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.127 = phi i32 [ %.02648, %bb.e ], [ %..026, %bb.f ] ; 2 uses
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.ad = add i64 %indvars.iv.next, 4
  %i.ae = and i64 %i.ad, 4294967292
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ae ; 2 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 32 ; 2 uses
  %i.ah = and i64 %i.ag, -2
  %i.ai = icmp eq i64 %i.ah, %i.d
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = cmpxchg ptr %i.af, i64 %i.ag, i64 0 seq_cst seq_cst, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = zext i1 %i.ak to i32
  %..026.1 = add i32 %.127, %i.al
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.127.1 = phi i32 [ %.127, %bb.g ], [ %..026.1, %bb.h ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.e, !llvm.loop !3252

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.02648.epil.init = phi i32 [ 0, %.lr.ph ], [ %.127.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.am = shl i64 %indvars.iv.epil.init, 2
  %i.an = and i64 %i.am, 4294967292
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.an ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 32 ; 2 uses
  %i.aq = and i64 %i.ap, -2
  %i.ar = icmp eq i64 %i.aq, %i.d
  br i1 %i.ar, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.epil.preheader
  %i.as = cmpxchg ptr %i.ao, i64 %i.ap, i64 0 seq_cst seq_cst, align 8
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = zext i1 %i.at to i32
  %..026.epil = add i32 %.02648.epil.init, %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.j, %._crit_edge.unr-lcssa
  %.127.lcssa = phi i32 [ %.127.1, %._crit_edge.unr-lcssa ], [ %.02648.epil.init, %.epil.preheader ], [ %..026.epil, %bb.j ] ; 2 uses
  %.not40 = icmp eq i32 %.127.lcssa, 0
  br i1 %.not40, label %.critedge, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.av = shl i32 %.127.lcssa, 11                 ; 2 uses
  %i.aw = atomicrmw add ptr %0, i32 %i.av seq_cst, align 4
  %i.ax = add i32 %i.aw, %i.av
  store i32 %i.ax, ptr %1, align 4, !tbaa !7
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.preheader, %._crit_edge, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail8function5call_IPFbvELb1ELb0EbJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #4 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !3092
  %i.b = tail call noundef zeroext i1 %i.a()
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IPFvvELb1ELb0EvJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #4 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !3092
  tail call void %i.a()
  ret void
}

declare noundef i64 @_ZNK5folly18threadlocal_detail14ThreadEntrySet11getIndexForEPNS0_11ThreadEntryE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

declare void @_ZN5folly18threadlocal_detail14ThreadEntrySet5clearEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5folly18threadlocal_detail14ThreadEntrySet6insertERKNS1_7ElementE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3099, !range !34, !noundef !35
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !3102   ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !7
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #46
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30   ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !3221   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01822 = phi i64 [ %i.k, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %i.b, i64 %.01822
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3190
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.k = add i64 %.01822, -1                      ; 2 uses
  %i.l = icmp ugt i64 %i.k, %i.g
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !3253

.critedge:                                        ; preds = %.lr.ph, %bb.c
  %.018.lcssa = phi i64 [ %i.c, %bb.c ], [ %.01822, %.lr.ph ] ; 3 uses
  %i.m = sub i64 %.018.lcssa, %i.g
  %.not27 = icmp eq i64 %.018.lcssa, %i.g
  br i1 %.not27, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %.018.lcssa
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit, %.critedge
  %i.p = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.c, %.critedge ], [ %i.c, %bb.d ] ; 2 uses
  %i.q = shl i64 %i.p, 3
  %i.r = add i64 %i.q, 16                         ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 0, i64 8
  %i.u = add i64 %i.t, %i.r
  %i.v = and i64 %i.u, -16
  %i.w = sub i64 %i.p, %i.g
  %i.x = mul i64 %i.w, 88                         ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 0, i64 8
  %i.aa = add i64 %i.z, %i.x
  %i.ab = and i64 %i.aa, -16
  %i.ac = add i64 %i.ab, %i.v
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %1, i64 noundef %i.ac, i64 noundef 16) #28
  ret void

bb.e:                                             ; preds = %.lr.ph26, %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.bd, %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit ] ; 2 uses
  %i.ad = xor i64 %.025, -1
  %i.ae = getelementptr [8 x i8], ptr %i.o, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3190 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !7
  %.not.i.i = icmp ult i32 %i.ah, 2048
  br i1 %.not.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i, label %bb.f, !prof !55

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE30cleanupTokenlessSharedDeferredERj(ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #46
  unreachable

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !3254 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableIPN5folly18threadlocal_detail11ThreadEntryESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i ] ; 2 uses
  %i.an = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 24) #49
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableIPN5folly18threadlocal_detail11ThreadEntryESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3256

_ZNSt10_HashtableIPN5folly18threadlocal_detail11ThreadEntryESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !3257
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !3258
  %i.ar = shl i64 %i.aq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.ar, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !3257 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt13unordered_mapIPN5folly18threadlocal_detail11ThreadEntryEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPN5folly18threadlocal_detail11ThreadEntryESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !3258
  %i.aw = shl i64 %i.av, 3
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #49
  br label %_ZNSt13unordered_mapIPN5folly18threadlocal_detail11ThreadEntryEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEED2Ev.exit.i.i

_ZNSt13unordered_mapIPN5folly18threadlocal_detail11ThreadEntryEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEED2Ev.exit.i.i: ; preds = %bb.h, %_ZNSt10_HashtableIPN5folly18threadlocal_detail11ThreadEntryESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !3217 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt13unordered_mapIPN5folly18threadlocal_detail11ThreadEntryEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEED2Ev.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3259
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #49
  br label %_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit

_ZN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZNSt13unordered_mapIPN5folly18threadlocal_detail11ThreadEntryEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEED2Ev.exit.i.i, %bb.i
  %i.bd = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.m
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !3260
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread
  %.sroa.06.012 = phi ptr [ %.sroa.06.011, %.lr.ph ], [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 3 uses
  %i.o = icmp eq ptr %i.g, %i.n
  br i1 %i.o, label %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.g, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 42
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread, label %_ZNKSt10type_indexeqERKS_.exit.i.i.i

_ZNKSt10type_indexeqERKS_.exit.i.i.i:             ; preds = %bb.d
  %i.q = load i8, ptr %i.n, align 1, !tbaa !18
  %i.r = icmp eq i8 %i.q, 42
  %.idx.i.i.i.i.i.i = zext i1 %i.r to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %i.s) #28
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread

_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i:      ; preds = %_ZNKSt10type_indexeqERKS_.exit.i.i.i, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !15   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15   ; 3 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !18
  %.not.i.i3.i.i.i = icmp eq i8 %i.ab, 42
  br i1 %.not.i.i3.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit

_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit: ; preds = %bb.e
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ad = icmp eq i8 %i.ac, 42
  %.idx.i.i.i4.i.i.i = zext i1 %i.ad to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i4.i.i.i
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %i.ae) #28
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread

_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread: ; preds = %bb.d, %bb.e, %_ZNKSt10type_indexeqERKS_.exit.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.012, align 8, !tbaa !183 ; 2 uses
  %i.ah = icmp eq ptr %.sroa.06.0, null
  br i1 %i.ah, label %_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit, label %bb.c, !llvm.loop !3312

bb.f:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.aj = call noundef i64 @_ZN5folly4hash20hash_combine_genericINS0_9StdHasherESt10type_indexJS3_EEEmRKT_RKT0_DpRKT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !85
  %i.am = urem i64 %i.aj, %i.al
  %i.an = call noundef ptr @_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEmRKS2_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aj) ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !183
  br label %_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit

_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread, %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i, %bb.b, %bb.g, %bb.f
  %.sroa.06.1 = phi ptr [ %i.ao, %bb.g ], [ null, %bb.f ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread ], [ %.sroa.06.012, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit ], [ %.sroa.06.012, %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEmRKS2_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.e, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !191
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %i.l = phi i64 [ %.pre, %bb.b ], [ %i.an, %bb.g ]
  %.015 = phi ptr [ %i.c, %bb.b ], [ %.0, %bb.g ] ; 2 uses
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.al, %bb.g ] ; 4 uses
  %i.m = icmp eq i64 %3, %i.l
  br i1 %i.m, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 3 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.p, align 1, !tbaa !18
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 42
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread, label %_ZNKSt10type_indexeqERKS_.exit.i.i.i.i

_ZNKSt10type_indexeqERKS_.exit.i.i.i.i:           ; preds = %bb.e
  %i.u = load i8, ptr %i.r, align 1, !tbaa !18
  %i.v = icmp eq i8 %i.u, 42
  %.idx.i.i.i.i.i.i.i = zext i1 %i.v to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %i.w) #28
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread

_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i.i:    ; preds = %_ZNKSt10type_indexeqERKS_.exit.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !15  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 3 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread20, label %bb.f

bb.f:                                             ; preds = %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i.i
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !18
  %.not.i.i3.i.i.i.i = icmp eq i8 %i.af, 42
  br i1 %.not.i.i3.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit

_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit: ; preds = %bb.f
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.ah = icmp eq i8 %i.ag, 42
  %.idx.i.i.i4.i.i.i.i = zext i1 %i.ah to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i4.i.i.i.i
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.ai) #28
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread20, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread

_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread: ; preds = %bb.e, %bb.f, %_ZNKSt10type_indexeqERKS_.exit.i.i.i.i, %bb.c, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit
  %i.al = load ptr, ptr %.0, align 8, !tbaa !183  ; 3 uses
  %.not18 = icmp eq ptr %i.al, null
  br i1 %.not18, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread20, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !191 ; 2 uses
  %i.ao = urem i64 %i.an, %i.k
  %.not19 = icmp eq i64 %i.ao, %1
  br i1 %.not19, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread20, !llvm.loop !3313

_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread20: ; preds = %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread, %bb.g, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.015, %_ZNKSt10type_indexeqERKS_.exit.thread.i.i.i.i ], [ %.015, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN5folly6detail14TypeDescriptorES3_NS_9_IdentityESt8equal_toIS3_ENS2_20TypeDescriptorHasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread ], [ null, %bb.g ]
  ret ptr %.1
}

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS_18threadlocal_detail10StaticMetaIvvEEJEEEPvDpT0_() #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #43 ; 3 uses
  invoke void @_ZN5folly18threadlocal_detail10StaticMetaIvvEC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #49
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly18threadlocal_detail10StaticMetaIvvEC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Function", align 16  ; 6 uses
  %2 = alloca %"class.folly::Function.97", align 16 ; 6 uses
  %3 = alloca %"class.folly::Function.97", align 16 ; 6 uses
  tail call void @_ZN5folly18threadlocal_detail14StaticMetaBaseC2EPFPNS0_11ThreadEntryEvEb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull @_ZN5folly18threadlocal_detail10StaticMetaIvvE18getThreadEntrySlowEv, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  store ptr @_ZN5folly18threadlocal_detail10StaticMetaIvvE7preForkEv, ptr %1, align 16, !tbaa !3092
  store ptr @_ZN5folly6detail8function5call_IPFbvELb1ELb0EbJEEET2_DpT3_RNS1_4DataE, ptr %i.a, align 16, !tbaa !138
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.b, align 8, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store ptr @_ZN5folly18threadlocal_detail10StaticMetaIvvE12onForkParentEv, ptr %2, align 16, !tbaa !3092
  store ptr @_ZN5folly6detail8function5call_IPFvvELb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.c, align 16, !tbaa !141
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.d, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr @_ZN5folly18threadlocal_detail10StaticMetaIvvE11onForkChildEv, ptr %3, align 16, !tbaa !3092
  store ptr @_ZN5folly6detail8function5call_IPFvvELb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.e, align 16, !tbaa !141
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.f, align 8, !tbaa !143
  invoke void @_ZN5folly6AtFork15registerHandlerEPKvNS_8FunctionIFbvEEENS3_IFvvEEES7_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef i64 %i.g(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZN5folly8FunctionIFvvEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit
  %i.j = call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit3

_ZN5folly8FunctionIFvvEED2Ev.exit3:               ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit, %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !140  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i4, label %_ZN5folly8FunctionIFbvEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit3
  %i.l = call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef null) #28, !inline_history !145 ; 0 uses
  br label %_ZN5folly8FunctionIFbvEED2Ev.exit

_ZN5folly8FunctionIFbvEED2Ev.exit:                ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit3, %bb.e
  ret void

bb.f:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i.i5, label %_ZN5folly8FunctionIFvvEED2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call noundef i64 %i.n(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit6

_ZN5folly8FunctionIFvvEED2Ev.exit6:               ; preds = %bb.f, %bb.g
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.p, null
  br i1 %.not.i.i7, label %_ZN5folly8FunctionIFvvEED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit6
  %i.q = call noundef i64 %i.p(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #28, !inline_history !144 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit8

_ZN5folly8FunctionIFvvEED2Ev.exit8:               ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit6, %bb.h
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !140  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.r, null
  br i1 %.not.i.i9, label %_ZN5folly8FunctionIFbvEED2Ev.exit10, label %bb.i

bb.i:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit8
  %i.s = call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef null) #28, !inline_history !145 ; 0 uses
  br label %_ZN5folly8FunctionIFbvEED2Ev.exit10

_ZN5folly8FunctionIFbvEED2Ev.exit10:              ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit8, %bb.i
  call void @_ZN5folly18threadlocal_detail14StaticMetaBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN5folly18threadlocal_detail10StaticMetaIvvE18getThreadEntrySlowEv() #6 comdat align 2 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaIvvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaIvvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !inline_history !2968
  br label %_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit

_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3195 ; 2 uses
  %i.f = tail call ptr @pthread_getspecific(i32 noundef %i.e) #28 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %_ZN5folly15checkPosixErrorIJRA27_KcEEEviDpOT_.exit

bb.c:                                             ; preds = %_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit
  %i.g = tail call noundef ptr @_ZN5folly18threadlocal_detail14StaticMetaBase22allocateNewThreadEntryEv(ptr noundef nonnull align 8 dereferenceable(128) %i.c) ; 2 uses
  %i.h = tail call i32 @pthread_setspecific(i32 noundef %i.e, ptr noundef %i.g) #28 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN5folly15checkPosixErrorIJRA27_KcEEEviDpOT_.exit, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly24throwSystemErrorExplicitEiPKc(i32 noundef %i.h, ptr noundef nonnull @.str.70) #42
  unreachable

_ZN5folly15checkPosixErrorIJRA27_KcEEEviDpOT_.exit: ; preds = %bb.c, %_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit
  %.0 = phi ptr [ %i.f, %_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly18threadlocal_detail10StaticMetaIvvE7preForkEv() #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %0 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitNever", align 1 ; 4 uses
  %i.c = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaIvvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaIvvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg), !inline_history !2968
  br label %_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit

_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.g = load atomic i32, ptr %i.f acquire, align 4 ; 4 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !7
  %i.h = and i32 %i.g, -1312
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit, !prof !55

bb.c:                                             ; preds = %_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit
  %i.j = or disjoint i32 %i.g, 128
  %i.k = cmpxchg ptr %i.f, i32 %i.g, i32 %i.j seq_cst seq_cst, align 4 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, !prof !226

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.d

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i: ; preds = %bb.c
  %i.m = extractvalue { i32, i1 } %i.k, 0
  store i32 %i.m, ptr %i.b, align 4
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit: ; preds = %_ZN5folly18threadlocal_detail10StaticMetaIvvE8instanceEv.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i
  %i.n = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_9WaitNeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %i.n, label %bb.d, label %_ZNSt5mutex4lockEv.exit

bb.d:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit.thread, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.p = load atomic i32, ptr %i.o acquire, align 4 ; 4 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !7
  %i.q = and i32 %i.p, -1312
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.critedge.i.i4, !prof !55

bb.e:                                             ; preds = %bb.d
  %i.s = or disjoint i32 %i.p, 128
  %i.t = cmpxchg ptr %i.o, i32 %i.p, i32 %i.s seq_cst seq_cst, align 4 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i5, !prof !226

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i5: ; preds = %bb.e
  %i.v = extractvalue { i32, i1 } %i.t, 0
  store i32 %i.v, ptr %i.a, align 4
  br label %.critedge.i.i4

.critedge.i.i4:                                   ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i5, %bb.d
  %i.w = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %0) ; 0 uses
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit: ; preds = %bb.e, %.critedge.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #28
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.y = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #28 ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %_ZNSt5mutex4lockEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.y) #42
  unreachable

_ZNSt5mutex4lockEv.exit:                          ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit
  %.0.i.i7 = phi i1 [ false, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE8try_lockEv.exit ], [ true, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE4lockEv.exit ]
  ret i1 %.0.i.i7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly18threadlocal_detail10StaticMetaIvvE12onForkParentEv() #4 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_18threadlocal_detail10StaticMetaIvvEEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
end_hunk_4
begin_hunk_5_@_ZNK3fmt3v119formatterINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES6_RT_:bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3338
  store i32 -1, ptr %i.a, align 4, !tbaa !3338
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3340 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3342 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !3345
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !3347
  store i64 500, ptr %i.h, align 8, !tbaa !3348
  %i.l = load i32, ptr %3, align 4, !tbaa !3336   ; 2 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = invoke noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  store i32 %i.q, ptr %i.o, align 4, !tbaa !7
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit: ; preds = %.noexc, %bb.a
  %i.r = lshr i32 %i.l, 8
  %i.s = and i32 %i.r, 3                          ; 2 uses
  %.not.i23 = icmp eq i32 %i.s, 0
  br i1 %.not.i23, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = invoke noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25 unwind label %.loopexit.split-lp

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25: ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit, %bb.c
  %.0 = phi i32 [ %i.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit ], [ %i.u, %bb.c ]
  %i.v = icmp samesign eq i64 %i.f, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25
  %i.w = load i8, ptr %i.d, align 1, !tbaa !18
  %i.x = icmp eq i8 %i.w, 125
  br i1 %i.x, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25
  %i.y = invoke ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEElTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %4, i64 noundef %1)
          to label %_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit unwind label %bb.h ; 5 uses

_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !3349
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i, %_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit
  %i.ac = phi i64 [ %.pre.i.i.i.i, %_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit ], [ %i.az, %._crit_edge.i.i.i.i ] ; 2 uses
  %.01825.i.i.i.idx.i = phi i64 [ 0, %_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit ], [ %.01825.i.i.i.add.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.01825.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr @.str.92, i64 %.01825.i.i.i.idx.i ; 3 uses
  %gepdiff.i = sub nsw i64 2, %.01825.i.i.i.idx.i ; 2 uses
  %i.ad = add i64 %gepdiff.i, %i.ac               ; 2 uses
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !3348 ; 2 uses
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !3345
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.ad)
          to label %.noexc27 unwind label %.loopexit, !inline_history !3350

.noexc27:                                         ; preds = %bb.g
  %.pre30.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !3348
  %.pre31.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !3349
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc27, %bb.f
  %i.ah = phi i64 [ %i.ac, %bb.f ], [ %.pre31.i.i.i.i, %.noexc27 ] ; 3 uses
  %i.ai = phi i64 [ %i.ae, %bb.f ], [ %.pre30.i.i.i.i, %.noexc27 ]
  %i.aj = sub i64 %i.ai, %i.ah
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aj, i64 %gepdiff.i) ; 11 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !3347
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah ; 3 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %spec.select.i.i.i.i, 128
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i.i.i, 120
  %n.vec = and i64 %spec.select.i.i.i.i, -128     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01825.i.i.i.ptr.i, i64 %index ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %wide.load = load <32 x i8>, ptr %i.am, align 1, !tbaa !18
  %wide.load44 = load <32 x i8>, ptr %i.an, align 1, !tbaa !18
  %wide.load45 = load <32 x i8>, ptr %i.ao, align 1, !tbaa !18
  %wide.load46 = load <32 x i8>, ptr %i.ap, align 1, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %index ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store <32 x i8> %wide.load, ptr %i.aq, align 1, !tbaa !18
  store <32 x i8> %wide.load44, ptr %i.ar, align 1, !tbaa !18
  store <32 x i8> %wide.load45, ptr %i.as, align 1, !tbaa !18
  store <32 x i8> %wide.load46, ptr %i.at, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !3351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3352

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %spec.select.i.i.i.i, -8     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01825.i.i.i.ptr.i, i64 %index49
  %wide.load50 = load <8 x i8>, ptr %i.av, align 1, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %index49
  store <8 x i8> %wide.load50, ptr %i.aw, align 1, !tbaa !18
  %index.next51 = add nuw i64 %index49, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next51, %n.vec48
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3353

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %spec.select.i.i.i.i, %n.vec48
  br i1 %cmp.n52, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !3349
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.ay = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ah, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.az = add i64 %i.ay, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.az, ptr %i.z, align 8, !tbaa !3349
  %.01825.i.i.i.add.i = add nuw nsw i64 %spec.select.i.i.i.i, %.01825.i.i.i.idx.i ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.01825.i.i.i.add.i, 2
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v116detail20format_duration_unitIcSt5ratioILl1ELl1000EENS0_14basic_appenderIcEEEET1_S7_.exit, label %bb.f, !llvm.loop !3354

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01825.i.i.i.ptr.i, i64 %.023.i.i.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %.023.i.i.i.i
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !18
  %i.bd = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bd, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3355

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_ZN3fmt3v116detail20format_duration_unitIcSt5ratioILl1ELl1000EENS0_14basic_appenderIcEEEET1_S7_.exit, %bb.b, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bf, align 8, !tbaa !3092
  store ptr %4, ptr %5, align 8, !tbaa !3356
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %1, ptr %i.bg, align 8, !tbaa !3358
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.bh, align 8, !tbaa !3092
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i8 0, ptr %i.bj, align 8, !tbaa !3363
  %i.bk = icmp slt i64 %1, 0
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = sub i64 0, %1                           ; 2 uses
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !3358
  store i8 1, ptr %i.bj, align 8, !tbaa !3363
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bm = phi i64 [ %i.bl, %bb.j ], [ %1, %bb.i ]
  %i.bn = udiv i64 %i.bm, 1000
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.0, ptr %i.bp, align 8, !tbaa !3364
  %i.bq = load i32, ptr %0, align 8, !tbaa !3336
  %i.br = lshr i32 %i.bq, 14
  %i.bs = trunc i32 %i.br to i8
  %i.bt = and i8 %i.bs, 1
  store i8 %i.bt, ptr %i.bi, align 8, !tbaa !3365
  %i.bu = invoke noundef ptr @_ZN3fmt3v116detail19parse_chrono_formatIcRNS1_18duration_formatterIclSt5ratioILl1ELl1000EEEEEEPKT_SA_SA_OT0_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(49) %5)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN3fmt3v116detail20format_duration_unitIcSt5ratioILl1ELl1000EENS0_14basic_appenderIcEEEET1_S7_.exit

bb.m:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.p

_ZN3fmt3v116detail20format_duration_unitIcSt5ratioILl1ELl1000EENS0_14basic_appenderIcEEEET1_S7_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l
  %.sroa.0.0.copyload.i28 = load ptr, ptr %2, align 8, !tbaa !3356
  %i.bw = load ptr, ptr %4, align 8, !tbaa !3347
  %i.bx = load i64, ptr %i.j, align 8, !tbaa !3349
  %i.by = invoke ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i28, ptr %i.bw, i64 %i.bx, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %_ZN3fmt3v116detail20format_duration_unitIcSt5ratioILl1ELl1000EENS0_14basic_appenderIcEEEET1_S7_.exit
  %i.bz = load ptr, ptr %4, align 8, !tbaa !3347  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, %i.k
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.bz) #28
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %i.by

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %i.be, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ca = load ptr, ptr %4, align 8, !tbaa !3347  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ca, %i.k
  br i1 %.not.i.i29, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit30, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.ca) #28
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit30

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit30: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt3v116detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #4 comdat {
.peel.begin:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = load i8, ptr %0, align 1, !tbaa !18      ; 3 uses
  %i.c = lshr i8 %i.b, 2
  %i.d = and i8 %i.c, 62
  %i.e = zext nneg i8 %i.d to i64
  %i.f = lshr i64 4203265827220226048, %i.e
  %i.g = and i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp slt i64 %i.l, 1
  %spec.select = select i1 %i.m, ptr %0, ptr %i.i ; 5 uses
  %i.n = load i8, ptr %spec.select, align 1, !tbaa !18
  switch i8 %i.n, label %bb.a [
    i8 60, label %.loopexit
    i8 62, label %.loopexit49
    i8 94, label %.loopexit55
  ]

bb.a:                                             ; preds = %.peel.begin
  %i.o = icmp eq ptr %spec.select, %0
  br i1 %i.o, label %.loopexit44, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  switch i8 %i.b, label %.loopexit44 [
    i8 60, label %.loopexit55.thread61
    i8 62, label %.loopexit55.thread65
    i8 94, label %.loopexit55.thread
  ]

.loopexit55.thread65:                             ; preds = %.peel.next
  br label %.loopexit55.thread

.loopexit55.thread61:                             ; preds = %.peel.next
  br label %.loopexit55.thread

.loopexit:                                        ; preds = %.peel.begin
  br label %.loopexit55

.loopexit49:                                      ; preds = %.peel.begin
  br label %.loopexit55

.loopexit55:                                      ; preds = %.peel.begin, %.loopexit49, %.loopexit
  %.132.ph = phi i32 [ 1, %.loopexit ], [ 3, %.peel.begin ], [ 2, %.loopexit49 ] ; 2 uses
  %.not38 = icmp eq ptr %spec.select, %0
  br i1 %.not38, label %.loopexit55.thread, label %bb.b

bb.b:                                             ; preds = %.loopexit55
  switch i8 %i.b, label %bb.d [
    i8 125, label %.critedge
    i8 123, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.78) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %spec.select to i64         ; 4 uses
  %i.q = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.r = sub i64 %i.p, %i.q                       ; 10 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !3336
  %i.t = and i32 %i.s, -229377
  %i.u = trunc i64 %i.r to i32
  %i.v = shl i32 %i.u, 15
  %i.w = or i32 %i.t, %i.v
  store i32 %i.w, ptr %2, align 4, !tbaa !3336
  switch i64 %i.r, label %iter.check [
    i64 1, label %bb.e
    i64 0, label %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit
  ]

iter.check:                                       ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  %i.y = sub i64 %i.q, %i.p
  %i.z = icmp ult i64 %i.y, -4
  %or.cond = or i1 %min.iters.check, %i.z
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = add i64 %i.a, 4
  %i.ab = sub i64 %i.aa, %i.q
  %diff.check = icmp ult i64 %i.ab, 128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.r, 128
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.r, 120
  %n.vec = and i64 %i.r, -128                     ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 100
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %wide.load = load <32 x i8>, ptr %i.af, align 1, !tbaa !18
  %wide.load70 = load <32 x i8>, ptr %i.ag, align 1, !tbaa !18
  %wide.load71 = load <32 x i8>, ptr %i.ah, align 1, !tbaa !18
  %wide.load72 = load <32 x i8>, ptr %i.ai, align 1, !tbaa !18
  store <32 x i8> %wide.load, ptr %i.x, align 4, !tbaa !18
  store <32 x i8> %wide.load70, ptr %i.ac, align 4, !tbaa !18
  store <32 x i8> %wide.load71, ptr %i.ad, align 4, !tbaa !18
  store <32 x i8> %wide.load72, ptr %i.ae, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !3366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
end_hunk_5
begin_hunk_6_@_ZN3fmt3v116detail19parse_chrono_formatIcRNS1_21chrono_format_checkerEEEPKT_S7_S7_OT0_:bb.a
  tail call void @_ZN3fmt3v116detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #42
  unreachable

.split320.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v116detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #42
  unreachable

.split322.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v116detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #42
  unreachable

.split324.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v116detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #42
  unreachable

.split326.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v116detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #42
  unreachable

.split328.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v116detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #42
  unreachable

.split330.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v116detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #42
  unreachable

.split332.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v116detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #42
  unreachable

.split334.us:                                     ; preds = %bb.as, %bb.j
  tail call void @_ZN3fmt3v116detail21chrono_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #42
  unreachable

.split314.us:                                     ; preds = %bb.as, %bb.j
  %i.au = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str.85)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.split314.us
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
  unreachable

bb.au:                                            ; preds = %.split314.us
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.split259.us:                                     ; preds = %bb.y, %bb.h
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.85)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.split259.us
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
  unreachable

bb.aw:                                            ; preds = %.split259.us
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK3fmt3v116detail21chrono_format_checker17on_duration_valueEv.exit: ; preds = %bb.y, %bb.as, %bb.as, %bb.as, %bb.as, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.o
  %.3 = phi ptr [ %i.as, %bb.as ], [ %i.u, %bb.o ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.as, %bb.as ], [ %i.as, %bb.as ], [ %i.as, %bb.as ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ], [ %i.af, %bb.y ] ; 3 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZNK3fmt3v116detail21chrono_format_checker17on_duration_valueEv.exit.thread, label %.lr.ph.split

_ZNK3fmt3v116detail21chrono_format_checker17on_duration_valueEv.exit.thread: ; preds = %.lr.ph.split, %_ZNK3fmt3v116detail21chrono_format_checker17on_duration_valueEv.exit, %.lr.ph.split.us, %_ZNK3fmt3v116detail21chrono_format_checker17on_duration_valueEv.exit.us, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129253.us, %.lr.ph.split.us ], [ %.3.us, %_ZNK3fmt3v116detail21chrono_format_checker17on_duration_valueEv.exit.us ], [ %.0129253, %.lr.ph.split ], [ %.3, %_ZNK3fmt3v116detail21chrono_format_checker17on_duration_valueEv.exit ]
  ret ptr %.0134
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1112report_errorEPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZN3fmt3v116detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3371
  %i.b = load i8, ptr %0, align 1, !tbaa !18      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %scevgep.i = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.d ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  %i.g = zext nneg i8 %i.b to i32
  %i.h = add nsw i32 %i.g, -48                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.i, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.j = mul i32 %i.p, 10
  %i.k = zext nneg i8 %i.q to i32
  %i.l = add nsw i32 %i.k, -48
  %i.m = add i32 %i.l, %i.j                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.n, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !3373

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %i.p = phi i32 [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %.027.i37 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]
  %.028.i36 = phi ptr [ %i.o, %bb.c ], [ %0, %bb.b ]
  %i.q = load i8, ptr %i.o, align 1, !tbaa !18    ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond.i = icmp ult i8 %i.r, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !3373

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !3373

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i37, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.p, %bb.c ]
  %.lcssa = phi i32 [ %i.p, %..critedge.i_crit_edge ], [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  %.028.lcssa.i = phi ptr [ %.028.i36, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.o, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.s = ptrtoint ptr %.lcssa.i to i64
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = icmp slt i64 %i.t, 10
  br i1 %i.u, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = icmp eq i64 %i.t, 10
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.w = zext i32 %.027.i.lcssa to i64
  %i.x = mul nuw nsw i64 %i.w, 10
  %i.y = load i8, ptr %.028.lcssa.i, align 1, !tbaa !18
  %i.z = sext i8 %i.y to i64
  %i.aa = add nsw i64 %i.z, 4294967248
  %i.ab = and i64 %i.aa, 4294967294
  %i.ac = add nuw nsw i64 %i.ab, %i.x
  %i.ad = icmp samesign ugt i64 %i.ac, 2147483647
  %i.ae = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.80) #42
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !7
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.af = icmp eq i8 %i.b, 123
  br i1 %i.af, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.ag, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  switch i8 %i.ah, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !3374 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %_ZN3fmt3v1113parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.82) #42
  unreachable

_ZN3fmt3v1113parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.al = add nuw nsw i32 %i.aj, 1
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !3374
  store i32 %i.aj, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !3371
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %4, ptr %5, align 8, !tbaa !3376
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.am, align 8, !tbaa !3378
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.an, align 8, !tbaa !3092
  %i.ao = call noundef ptr @_ZN3fmt3v116detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.ag, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1113parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.ag, %bb.h ], [ %i.ao, %bb.l ], [ %i.ag, %_ZN3fmt3v1113parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i8, ptr %.0, align 1, !tbaa !18
  %i.aq = icmp eq i8 %i.ap, 125
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !3371
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #42
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.ar, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt3v116detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !18      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.b ; 2 uses
  %i.e = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  %i.f = zext nneg i8 %i.c to i32
  %i.g = add nsw i32 %i.f, -48                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.h, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.i = mul i32 %i.o, 10
  %i.j = zext nneg i8 %i.p to i32
  %i.k = add nsw i32 %i.j, -48
  %i.l = add i32 %i.k, %i.i                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.m, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !3373

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.c ] ; 4 uses
  %i.o = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %.027.i49 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %.028.i48 = phi ptr [ %i.n, %bb.d ], [ %0, %bb.c ]
  %i.p = load i8, ptr %i.n, align 1, !tbaa !18    ; 2 uses
  %i.q = add i8 %i.p, -48
  %or.cond.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !3373

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !3373

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i49, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.o, %bb.d ]
  %.lcssa = phi i32 [ %i.o, %..critedge.i_crit_edge ], [ %i.g, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.028.lcssa.i = phi ptr [ %.028.i48, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.n, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.r = ptrtoint ptr %.lcssa.i to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = icmp slt i64 %i.s, 10
  br i1 %i.t, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.u = icmp eq i64 %i.s, 10
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = zext i32 %.027.i.lcssa to i64
  %i.w = mul nuw nsw i64 %i.v, 10
  %i.x = load i8, ptr %.028.lcssa.i, align 1, !tbaa !18
  %i.y = sext i8 %i.x to i64
  %i.z = add nsw i64 %i.y, 4294967248
  %i.aa = and i64 %i.z, 4294967294
  %i.ab = add nuw nsw i64 %i.aa, %i.w
  %i.ac = icmp samesign ult i64 %i.ab, 2147483648
  br i1 %i.ac, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ad, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ae = icmp eq ptr %.037, %1
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.af = load i8, ptr %.037, align 1, !tbaa !18
  switch i8 %i.af, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #42
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !3380, !nonnull !35, !align !3096
  store i32 %.021, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3382, !nonnull !35, !align !3383
  store i32 1, ptr %i.aj, align 4, !tbaa !3371
  %i.ak = load ptr, ptr %2, align 8, !tbaa !3384, !nonnull !35, !align !3096
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !3374
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.83) #42
  unreachable

_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.al, align 8, !tbaa !3374
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ao = and i8 %i.c, -33
  %i.ap = add i8 %i.ao, -65
  %or.cond10.i = icmp ult i8 %i.ap, 26
  %i.aq = icmp eq i8 %i.c, 95
  %i.ar = or i1 %i.aq, %or.cond10.i
  br i1 %i.ar, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.as = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.as  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.at, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.81) #42
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.au, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !3385

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.av = phi ptr [ %i.au, %.critedge4 ], [ %i.at, %.critedge4.preheader ] ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18  ; 3 uses
  %i.ax = and i8 %i.aw, -33
  %i.ay = add i8 %i.ax, -65
  %or.cond10.i32 = icmp ult i8 %i.ay, 26
  %i.az = icmp eq i8 %i.aw, 95
  %i.ba = or i1 %i.az, %or.cond10.i32
  %i.bb = add i8 %i.aw, -48
  %or.cond31 = icmp ult i8 %i.bb, 10
  %or.cond38 = or i1 %or.cond31, %i.ba
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !3385

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !3385

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.av, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bc = ptrtoint ptr %.lcssa40 to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3380, !nonnull !35, !align !3096 ; 2 uses
  store ptr %0, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3382, !nonnull !35, !align !3383
  store i32 2, ptr %i.bh, align 4, !tbaa !3371
end_hunk_6
begin_hunk_7_@_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl1ELl1000EEE5writeEliNS1_8pad_typeE:bb.a
bb.g:                                             ; preds = %_ZN3fmt3v116detail18to_nonnegative_intIliTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit
  %i.ab = sub nsw i32 %2, %i.z
  %i.ac = icmp eq i32 %3, 1
  br i1 %i.ac, label %_ZN3fmt3v116detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.ad = icmp eq i32 %3, 2
  %i.ae = select i1 %i.ad, i8 32, i8 48
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.aq, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i ]
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !3349 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !3348
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !3345
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.pre, i64 noundef %i.aj), !inline_history !3462
  %.pre.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %.pre2.i.i.i.i, %bb.i ]
  %i.an = phi i64 [ %i.ai, %bb.h ], [ %.pre.i.i.i.i, %bb.i ]
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.pre, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i.i.i, ptr %i.af, align 8, !tbaa !3349
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 %i.ae, ptr %i.ap, align 1, !tbaa !18
  %i.aq = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aq, %i.ab
  br i1 %exitcond.not.i.i, label %_ZN3fmt3v116detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit, label %bb.h, !llvm.loop !3463

_ZN3fmt3v116detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit: ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i, %bb.g
  store ptr %.sroa.0.0.copyload.pre, ptr %0, align 8, !tbaa !3356
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v116detail18to_nonnegative_intIliTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %_ZN3fmt3v116detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit
  %i.ar = tail call ptr @_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.0.0.copyload.pre, i32 noundef %i.q, i32 noundef %i.z)
  store ptr %i.ar, ptr %0, align 8, !tbaa !3356
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3349 ; 2 uses
  %i.e = add i64 %i.d, %i.b                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3348
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3345
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !3452
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !3349 ; 2 uses
  %.pre14.i = load i64, ptr %i.f, align 8, !tbaa !3348
  %.pre15.i = add i64 %.pre.i, %i.b               ; 2 uses
  %i.k = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.k, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %i.l = phi i64 [ %.pre.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ], [ %i.d, %bb.a ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ], [ %i.e, %bb.a ]
  store i64 %.pre-phi19.i, ptr %i.c, align 8, !tbaa !3349
  %i.m = load ptr, ptr %0, align 8, !tbaa !3347   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l ; 3 uses
  %.not.not = icmp eq ptr %i.m, null
  br i1 %.not.not, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %i.o = icmp ugt i32 %1, 99
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.p, %.lr.ph.i ], [ %2, %bb.b ]
  %.01819.i = phi i32 [ %i.x, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.p = add i32 %.020.i, -2                      ; 3 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = urem i32 %.01819.i, 100
  %i.t = shl nuw nsw i32 %i.s, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.r, align 1
  %i.x = udiv i32 %.01819.i, 100                  ; 2 uses
  %i.y = icmp ugt i32 %.01819.i, 9999
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3464

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i32 [ %1, %bb.b ], [ %i.x, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %2, %bb.b ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.z = icmp samesign ugt i32 %.018.lcssa.i, 9
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.aa = add i32 %.0.lcssa.i, -2
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ab
  %i.ad = shl nuw nsw i32 %.018.lcssa.i, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ac, align 1
  br label %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.ah = trunc nuw nsw i32 %.018.lcssa.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = add i32 %.0.lcssa.i, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !18
  br label %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.am = icmp ugt i32 %1, 99
  br i1 %i.am, label %.lr.ph.i16, label %._crit_edge.i12

.lr.ph.i16:                                       ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %.lr.ph.i16
  %.020.i17 = phi i32 [ %i.an, %.lr.ph.i16 ], [ %2, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ]
  %.01819.i18 = phi i32 [ %i.av, %.lr.ph.i16 ], [ %1, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ] ; 3 uses
  %i.an = add i32 %.020.i17, -2                   ; 3 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  %i.aq = urem i32 %.01819.i18, 100
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  store i16 %i.au, ptr %i.ap, align 1
  %i.av = udiv i32 %.01819.i18, 100               ; 2 uses
  %i.aw = icmp ugt i32 %.01819.i18, 9999
  br i1 %i.aw, label %.lr.ph.i16, label %._crit_edge.i12, !llvm.loop !3464

._crit_edge.i12:                                  ; preds = %.lr.ph.i16, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.018.lcssa.i13 = phi i32 [ %1, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %i.av, %.lr.ph.i16 ] ; 3 uses
  %.0.lcssa.i14 = phi i32 [ %2, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %i.an, %.lr.ph.i16 ] ; 2 uses
  %i.ax = icmp samesign ugt i32 %.018.lcssa.i13, 9
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i12
  %i.ay = add i32 %.0.lcssa.i14, -2
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = shl nuw nsw i32 %.018.lcssa.i13, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ba, align 1
  br label %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit19

bb.f:                                             ; preds = %._crit_edge.i12
  %i.bf = trunc nuw nsw i32 %.018.lcssa.i13 to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = add i32 %.0.lcssa.i14, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !18
  br label %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit19

_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit19: ; preds = %bb.e, %bb.f
  %i.bk = sext i32 %2 to i64
  %i.bl = getelementptr inbounds i8, ptr %i.a, i64 %i.bk
  %i.bm = call ptr @_ZN3fmt3v116detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bl, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit

_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.c, %bb.d, %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit19
  %.sroa.010.1 = phi ptr [ %i.bm, %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit19 ], [ %0, %bb.d ], [ %0, %bb.c ]
  ret ptr %.sroa.010.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #29

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v11::detail::locale_ref", align 8 ; 5 uses
  %7 = alloca %"class.fmt::v11::detail::get_locale", align 8 ; 8 uses
  %8 = alloca %"class.fmt::v11::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3365, !range !34, !noundef !35 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !3092
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.02.0.copyload, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !3465
  br i1 %i.c, label %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit, label %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit.thread

_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  br label %bb.b

_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v116detail10locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !3465, !range !34
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  br i1 %i.f, label %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit.thread, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %.body

_ZN3fmt3v116detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467, !nonnull !35, !align !3096
  br label %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v116detail18get_classic_localeEv.exit.i ], [ %7, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !3356
  store ptr %i.m, ptr %8, align 8, !tbaa !3467
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !31

bb.g:                                             ; preds = %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  %.not.i.i15 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i15, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467, !nonnull !35, !align !3096
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #28
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !3469
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !3356
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !3473
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %1, ptr %i.y, align 8, !tbaa !3474
  %i.z = getelementptr inbounds i8, ptr %8, i64 %3 ; 2 uses
  %i.aa = and i64 %2, 1
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ac = getelementptr i8, ptr %i.ab, i64 %2
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load ptr, ptr %i.ad, align 8, !nosanitize !35
  br label %bb.p

bb.m:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.af, %bb.m ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ag = load i8, ptr %i.e, align 8, !tbaa !3465, !range !34, !noundef !35
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %_ZN3fmt3v116detail10get_localeD2Ev.exit

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #28
  br label %_ZN3fmt3v116detail10get_localeD2Ev.exit

_ZN3fmt3v116detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !3356
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !3465, !range !34, !noundef !35
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3469, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3396
  tail call void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.h, i32 noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !3356
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.l = load ptr, ptr %0, align 8, !tbaa !3476, !nonnull !35, !align !3096 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.n, align 8, !tbaa !3345
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !3347
  store i64 500, ptr %i.m, align 8, !tbaa !3348
  invoke void @_ZN3fmt3v116detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext 72, i8 noundef signext 79)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 8, !tbaa !3347
  %i.r = load i64, ptr %i.o, align 8, !tbaa !3349
  %i.s = invoke ptr @_ZN3fmt3v116detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr %i.q, i64 %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %3, align 8, !tbaa !3347   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.t) #28
  br label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8_@_ZN3fmt3v116detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1000EEEEEEvRT0_T1_i:bb.a
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.bp = icmp eq i32 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !3569

middle.block:                                     ; preds = %vector.body
  %i.bq = tail call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %bin.rdx124) ; 3 uses
  %cmp.n = icmp eq i32 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail5pow10Ej.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %tailrecurse.i.preheader, label %vec.epilog.ph, !prof !3266

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bq, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec126 = and i32 %i.bm, -4                   ; 2 uses
  %i.br = and i32 %i.bm, 3
  %i.bs = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ]
  %vec.phi128 = phi <4 x i64> [ %i.bs, %vec.epilog.ph ], [ %i.bt, %vec.epilog.vector.body ]
  %i.bt = mul <4 x i64> %vec.phi128, splat (i64 10) ; 2 uses
  %index.next129 = add nuw i32 %index127, 4       ; 2 uses
  %i.bu = icmp eq i32 %index.next129, %n.vec126
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3570

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bv = tail call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %i.bt) ; 2 uses
  %cmp.n130 = icmp eq i32 %i.bm, %n.vec126
  br i1 %cmp.n130, label %_ZN3fmt3v116detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.tr3.i.ph = phi i32 [ %i.bm, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %accumulator.tr2.i.ph = phi i64 [ 1, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.preheader, %tailrecurse.i
  %.tr3.i = phi i32 [ %i.bw, %tailrecurse.i ], [ %.tr3.i.ph, %tailrecurse.i.preheader ]
  %accumulator.tr2.i = phi i64 [ %i.bx, %tailrecurse.i ], [ %accumulator.tr2.i.ph, %tailrecurse.i.preheader ]
  %i.bw = add i32 %.tr3.i, -1                     ; 2 uses
  %i.bx = mul i64 %accumulator.tr2.i, 10          ; 2 uses
  %i.by = icmp eq i32 %i.bw, 0
  br i1 %i.by, label %_ZN3fmt3v116detail5pow10Ej.exit, label %tailrecurse.i, !llvm.loop !3571

_ZN3fmt3v116detail5pow10Ej.exit:                  ; preds = %tailrecurse.i, %middle.block, %vec.epilog.middle.block, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bv, %vec.epilog.middle.block ], [ %i.bq, %middle.block ], [ %i.bx, %tailrecurse.i ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail5pow10Ej.exit
  %i.bz = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.ca = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bz, i32 noundef %i.az)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !3356
  %i.cc = sub nsw i32 %i.az, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.cb, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.0 = phi i32 [ %i.cc, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.cd = icmp sgt i32 %.0, 0
  br i1 %i.cd, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.cp, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81 ]
  %i.ch = load i64, ptr %i.ce, align 8, !tbaa !3349 ; 2 uses
  %i.ci = add i64 %i.ch, 1                        ; 3 uses
  %i.cj = load i64, ptr %i.cf, align 8, !tbaa !3348
  %i.ck = icmp ugt i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.q, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !3345
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.ci), !inline_history !3568
  %.pre.i.i.i84 = load i64, ptr %i.ce, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.ci, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.cm = phi i64 [ %i.ch, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.cn = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i.i82, ptr %i.ce, align 8, !tbaa !3349
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 48, ptr %i.co, align 1, !tbaa !18
  %i.cp = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.cp, %.0
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !3463

.sink.split:                                      ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.am, %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.ca, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !3356
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v116detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3469, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3399
  tail call void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.g, i32 noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !3356
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.k = load ptr, ptr %0, align 8, !tbaa !3476, !nonnull !35, !align !3096 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.m, align 8, !tbaa !3345
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !3347
  store i64 500, ptr %i.l, align 8, !tbaa !3348
  invoke void @_ZN3fmt3v116detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 83, i8 noundef signext 79)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %3, align 8, !tbaa !3347
  %i.q = load i64, ptr %i.n, align 8, !tbaa !3349
  %i.r = invoke ptr @_ZN3fmt3v116detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr %i.p, i64 %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %3, align 8, !tbaa !3347   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.o
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.s) #28
  br label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !3347   ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.u) #28
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.t

_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr %i.r, ptr %i.h, align 8, !tbaa !3356
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::detail::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v11::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v11::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3365, !range !34, !noundef !35 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !3092
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !3465
  br i1 %i.c, label %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit, label %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit.thread

_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %bb.b

_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v116detail10locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !3465, !range !34
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br i1 %i.f, label %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit.thread, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %.body

_ZN3fmt3v116detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467, !nonnull !35, !align !3096
  br label %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v116detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !3356
  store ptr %i.m, ptr %6, align 8, !tbaa !3467
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !31

bb.g:                                             ; preds = %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  %.not.i.i13 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467, !nonnull !35, !align !3096
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #28
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !3469
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !3356
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !3473
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.y, align 8, !tbaa !3474
  %i.z = getelementptr inbounds i8, ptr %6, i64 %3 ; 2 uses
  %i.aa = and i64 %2, 1
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ac = getelementptr i8, ptr %i.ab, i64 %2
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load ptr, ptr %i.ad, align 8, !nosanitize !35
  br label %bb.p

bb.m:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.af, %bb.m ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ag = load i8, ptr %i.e, align 8, !tbaa !3465, !range !34, !noundef !35
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %_ZN3fmt3v116detail10get_localeD2Ev.exit

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #28
  br label %_ZN3fmt3v116detail10get_localeD2Ev.exit

_ZN3fmt3v116detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !3356
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !3465, !range !34, !noundef !35
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_12_hour_timeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3469, !range !34, !noundef !35
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3475, !nonnull !35, !align !3096 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3396 ; 3 uses
  %i.i = icmp slt i32 %i.h, 12
  %i.j = add nsw i32 %i.h, -12
  %i.k = select i1 %i.i, i32 %i.h, i32 %i.j       ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, i32 12, i32 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3398
  %i.p = load i32, ptr %i.f, align 8, !tbaa !3399
  %i.q = shl i32 %i.o, 24
  %i.r = or i32 %i.m, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = zext i32 %i.p to i64
  %i.u = shl i64 %i.t, 48
  %i.v = or disjoint i64 %i.u, %i.s               ; 2 uses
  %i.w = mul i64 %i.v, 205
  %i.x = lshr i64 %i.w, 11
  %i.y = and i64 %i.x, 4222124902318095
  %i.z = mul nuw nsw i64 %i.y, 6
  %i.aa = add i64 %i.z, %i.v                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = and i64 %i.ab, 4222124902318095
  %i.ad = shl i64 %i.aa, 8
  %i.ae = and i64 %i.ad, 1080863974993432320
  %i.af = or disjoint i64 %i.ac, %i.ae
  %i.ag = or disjoint i64 %i.af, 3472339291344613424
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !3356 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24 ; 2 uses
  %.pre.i.i = load i64, ptr %i.ai, align 8, !tbaa !3349
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %bb.b
  %i.al = phi i64 [ %.pre.i.i, %bb.b ], [ %i.aw, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i.idx = phi i64 [ 0, %bb.b ], [ %.01825.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.01825.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.01825.i.i.idx
end_hunk_8
begin_hunk_9_@llvm.vector.reduce.mul.v4i64
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!2865, !1437, !2628}
!2869 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EE11_S_max_sizeERKS4_", scope: !2207, file: !265, line: 1916, type: !2870, scopeLine: 1916, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!2865, !2872}
!2872 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2614)
!2874 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EE15_M_erase_at_endEPS3_", scope: !2207, file: !265, line: 1933, type: !2875, scopeLine: 1933, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !2624, !2612}
!2877 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE", scope: !2207, file: !265, line: 1946, type: !2878, scopeLine: 1946, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!2692, !2624, !2692}
!2880 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_", scope: !2207, file: !265, line: 1950, type: !2881, scopeLine: 1950, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!2692, !2624, !2692, !2692}
!2883 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE", scope: !2207, file: !265, line: 1959, type: !2884, scopeLine: 1959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2624, !2648, !1379}
!2886 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb0EE", scope: !2207, file: !265, line: 1971, type: !2887, scopeLine: 1971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2624, !2648, !1398}
!2889 = !{!2459, !2890}
!2890 = !DITemplateTypeParameter(name: "_Alloc", type: !2429, defaulted: true)
!2891 = !DISubprogram(name: "~ReadMostlyMainPtrDeleter", linkageName: "_ZN5folly24ReadMostlyMainPtrDeleterINS_10TLRefCountEED4Ev", scope: !260, file: !261, line: 439, type: !2892, scopeLine: 439, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !2894}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2895 = !{!2896}
!2896 = !DITemplateTypeParameter(name: "RefCount", type: !292, defaulted: true)
!2897 = !{!2898}
!2898 = distinct !{!2898, !2899, !"_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE6rbeginEv: argument 0"}
!2899 = distinct !{!2899, !"_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE6rbeginEv"}
!2900 = !{!2901}
!2901 = distinct !{!2901, !2902, !"_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE4rendEv: argument 0"}
!2902 = distinct !{!2902, !"_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE4rendEv"}
!2903 = distinct !{!2903, !170}
!2904 = !DISubprogram(name: "destroyInstance", linkageName: "_ZN5folly6detail19SingletonHolderBase15destroyInstanceEv", scope: !201, file: !200, line: 309, type: !204, scopeLine: 309, containingType: !201, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!2905 = !{!2906}
!2906 = distinct !{!2906, !2907, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!2907 = distinct !{!2907, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5wlockEv"}
!2908 = !DISubprogram(name: "hasLiveInstance", linkageName: "_ZN5folly6detail19SingletonHolderBase15hasLiveInstanceEv", scope: !201, file: !200, line: 305, type: !2909, scopeLine: 305, containingType: !201, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!446, !206}
!2911 = !{!2912}
!2912 = distinct !{!2912, !2913, !"_ZNK5folly6detail19SingletonHolderBase4typeEv: argument 0"}
!2913 = distinct !{!2913, !"_ZNK5folly6detail19SingletonHolderBase4typeEv"}
!2914 = !{!13, !13, i64 0}
!2915 = !{!2916, !232, i64 0}
!2916 = !{!"_ZTSSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !232, i64 0, !154, i64 8}
!2917 = distinct !{!2917, !170}
!2918 = !{!2919}
!2919 = distinct !{!2919, !2920, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2920 = distinct !{!2920, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv"}
!2921 = !{!117, !33, i64 4}
!2922 = !{!2923}
!2923 = distinct !{!2923, !2924, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!2924 = distinct !{!2924, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5wlockEv"}
!2925 = !{!2926, !153, i64 0}
!2926 = !{!"_ZTSSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_19shared_mutex_detail18PolicySuppressTSANEEEE", !153, i64 0, !33, i64 8}
!2927 = !{!2926, !33, i64 8}
!2928 = !{!2929}
!2929 = distinct !{!2929, !2930, !"_ZNK5folly6detail19SingletonHolderBase4typeEv: argument 0"}
!2930 = distinct !{!2930, !"_ZNK5folly6detail19SingletonHolderBase4typeEv"}
!2931 = distinct !{!2931, !170}
!2932 = distinct !{!2932, !170}
!2933 = distinct !{!2933, !170}
!2934 = distinct !{!2934, !170}
!2935 = distinct !{!2935, !170}
!2936 = distinct !{!2936, !170}
!2937 = distinct !{!2937, !170}
!2938 = !{!2939, !181, i64 16}
!2939 = !{!"_ZTSSt4pairIKN5folly6detail14TypeDescriptorEPNS1_19SingletonHolderBaseEE", !2940, i64 0, !181, i64 16}
!2940 = !{!"_ZTSN5folly6detail14TypeDescriptorE", !12, i64 0, !12, i64 8}
!2941 = distinct !{!2941, !170}
!2942 = !{!71, !75, i64 48}
!2943 = distinct !{!2943, !170}
!2944 = !{!2945}
!2945 = distinct !{!2945, !2946, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2946 = distinct !{!2946, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv"}
!2947 = !{!2948}
!2948 = distinct !{!2948, !2949, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2949 = distinct !{!2949, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv"}
!2950 = !{!2951}
!2951 = distinct !{!2951, !2952, !"_ZNK5folly6detail19SingletonHolderBase4typeEv: argument 0"}
!2952 = distinct !{!2952, !"_ZNK5folly6detail19SingletonHolderBase4typeEv"}
!2953 = !{!2954}
!2954 = distinct !{!2954, !2955, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!2955 = distinct !{!2955, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5wlockEv"}
!2956 = !{!2957}
!2957 = distinct !{!2957, !2958, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2958 = distinct !{!2958, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv"}
!2959 = !{!2960}
!2960 = distinct !{!2960, !2961, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2961 = distinct !{!2961, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv"}
!2962 = !{!2963}
!2963 = distinct !{!2963, !2964, !"_ZNK5folly6detail19SingletonHolderBase4typeEv: argument 0"}
!2964 = distinct !{!2964, !"_ZNK5folly6detail19SingletonHolderBase4typeEv"}
!2965 = !{!2966}
!2966 = distinct !{!2966, !2967, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!2967 = distinct !{!2967, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5wlockEv"}
!2968 = distinct !{null}
!2969 = !{!2970}
!2970 = distinct !{!2970, !2971, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!2971 = distinct !{!2971, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5wlockEv"}
!2972 = !{!2973}
!2973 = distinct !{!2973, !2974, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2974 = distinct !{!2974, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv"}
!2975 = distinct !{!2975, !170}
!2976 = distinct !{!2976, !170}
!2977 = distinct !{!2977, !170}
!2978 = distinct !{!2978, !170}
!2979 = distinct !{!2979, !170}
!2980 = !{!2981}
!2981 = distinct !{!2981, !2982, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2982 = distinct !{!2982, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv"}
!2983 = !{!2984}
!2984 = distinct !{!2984, !2985, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2985 = distinct !{!2985, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv"}
!2986 = !DISubprogram(name: "createInstance", linkageName: "_ZN5folly6detail19SingletonHolderBase14createInstanceEv", scope: !201, file: !200, line: 306, type: !204, scopeLine: 306, containingType: !201, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!2987 = !{!2988}
!2988 = distinct !{!2988, !2989, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2989 = distinct !{!2989, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5rlockEv"}
!2990 = !{!2991}
!2991 = distinct !{!2991, !2992, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!2992 = distinct !{!2992, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEELNS3_22SynchronizedMutexLevelE2EE5rlockEv"}
!2993 = !{!2994}
!2994 = distinct !{!2994, !2995, !"_ZSt11make_sharedISt6atomicImEJmEESt10shared_ptrIT_EDpOT0_: argument 0"}
!2995 = distinct !{!2995, !"_ZSt11make_sharedISt6atomicImEJmEESt10shared_ptrIT_EDpOT0_"}
!2996 = !{!2997, !8, i64 8}
!2997 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!2998 = !{!2997, !8, i64 12}
!2999 = !{!3000, !3001, i64 0}
!3000 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !3001, i64 0}
!3001 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!3002 = !{!3003, !3003, i64 0}
!3003 = !{!"p1 _ZTSSt6atomicImE", !14, i64 0}
!3004 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !3006, file: !3005, line: 139, type: !3029, scopeLine: 139, containingType: !3006, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!3005 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!3006 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !266, file: !3005, line: 125, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3007, vtableHolder: !3006, templateParams: !3064, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!3007 = !{!3008, !3019, !3024, !3027, !3028, !3032, !3004, !3033, !3034, !3041, !3042, !3043, !3046, !3047, !3048, !3049, !3050, !3051, !3056, !3060}
!3008 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3006, baseType: !3009, flags: DIFlagPublic, extraData: i32 0)
!3009 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Mutex_base<(__gnu_cxx::_Lock_policy)2>", scope: !266, file: !3005, line: 106, size: 8, flags: DIFlagTypePassByValue, elements: !35, templateParams: !3010, identifier: "_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE")
!3010 = !{!3011}
!3011 = !DITemplateValueParameter(name: "_Lp", type: !3012, value: i32 2)
!3012 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !280, file: !3013, line: 49, baseType: !3014, size: 32, elements: !3015, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!3013 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ext/concurrence.h", directory: "")
!3014 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!3015 = !{!3016, !3017, !3018}
!3016 = !DIEnumerator(name: "_S_single", value: 0, isUnsigned: true)
!3017 = !DIEnumerator(name: "_S_mutex", value: 1, isUnsigned: true)
!3018 = !DIEnumerator(name: "_S_atomic", value: 2, isUnsigned: true)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$_Sp_counted_base", scope: !3005, file: !3005, baseType: !3020, size: 64, flags: DIFlagArtificial)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!577}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_M_use_count", scope: !3006, file: !3005, line: 237, baseType: !3025, size: 32, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !3026, line: 32, baseType: !577)
!3026 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/atomic_word.h", directory: "", checksumkind: CSK_MD5, checksum: "a57b0e58df4838e6bdf466cbd75ee448")
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_M_weak_count", scope: !3006, file: !3005, line: 238, baseType: !3025, size: 32, offset: 96)
!3028 = !DISubprogram(name: "_Sp_counted_base", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC4Ev", scope: !3006, file: !3005, line: 129, type: !3029, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3032 = !DISubprogram(name: "~_Sp_counted_base", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED4Ev", scope: !3006, file: !3005, line: 133, type: !3029, scopeLine: 133, containingType: !3006, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3033 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !3006, file: !3005, line: 143, type: !3029, scopeLine: 143, containingType: !3006, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3034 = !DISubprogram(name: "_M_get_deleter", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info", scope: !3006, file: !3005, line: 147, type: !3035, scopeLine: 147, containingType: !3006, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!2246, !3031, !3037}
!3037 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3039)
!3039 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !266, file: !3040, line: 92, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt9type_info")
!3040 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/typeinfo", directory: "")
!3041 = !DISubprogram(name: "_M_add_ref_copy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv", scope: !3006, file: !3005, line: 151, type: !3029, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3042 = !DISubprogram(name: "_M_add_ref_lock", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_lockEv", scope: !3006, file: !3005, line: 156, type: !3029, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3043 = !DISubprogram(name: "_M_add_ref_lock_nothrow", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv", scope: !3006, file: !3005, line: 269, type: !3044, scopeLine: 269, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!446, !3031}
!3046 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv", scope: !3006, file: !3005, line: 317, type: !3029, scopeLine: 317, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3047 = !DISubprogram(name: "_M_release_last_use", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv", scope: !3006, file: !3005, line: 172, type: !3029, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3048 = !DISubprogram(name: "_M_release_last_use_cold", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv", scope: !3006, file: !3005, line: 198, type: !3029, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3049 = !DISubprogram(name: "_M_weak_add_ref", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv", scope: !3006, file: !3005, line: 203, type: !3029, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3050 = !DISubprogram(name: "_M_weak_release", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_releaseEv", scope: !3006, file: !3005, line: 208, type: !3029, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3051 = !DISubprogram(name: "_M_get_use_count", linkageName: "_ZNKSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv", scope: !3006, file: !3005, line: 226, type: !3052, scopeLine: 226, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!815, !3054}
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3006)
!3056 = !DISubprogram(name: "_Sp_counted_base", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC4ERKS2_", scope: !3006, file: !3005, line: 234, type: !3057, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !3031, !3059}
!3059 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3055, size: 64)
!3060 = !DISubprogram(name: "operator=", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_", scope: !3006, file: !3005, line: 235, type: !3061, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!3063, !3031, !3059}
!3063 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3006, size: 64)
!3064 = !{!3065}
!3065 = !DITemplateValueParameter(name: "_Lp", type: !3012, defaulted: true, value: i32 2)
!3066 = distinct !{ptr @_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3067 = !{!3068, !3003, i64 0}
!3068 = !{!"_ZTSSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EE", !3003, i64 0, !3000, i64 8}
!3069 = !DISubprogram(name: "add", linkageName: "_ZN5folly8Executor3addENS_8FunctionIFvvEEE", scope: !3071, file: !3070, line: 191, type: !3072, scopeLine: 191, containingType: !3071, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!3070 = !DIFile(filename: "_deps/folly-src/folly/Executor.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "e2252a484f750b6d785f8426d640a0b4")
!3071 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !203, file: !3070, line: 185, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8ExecutorE")
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "Func", scope: !203, file: !3070, line: 31, baseType: !2229)
!3076 = distinct !{null, null}
!3077 = !{!3078, !33, i64 0}
!3078 = !{!"_ZTSN5folly6detail18ScopeGuardImplBaseE", !33, i64 0}
!3079 = !{!3080}
!3080 = distinct !{!3080, !3081, !"_ZN5folly6detailplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSD_: argument 0"}
!3081 = distinct !{!3081, !"_ZN5folly6detailplIZZNS_14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSD_"}
!3082 = !{!3083, !3083, i64 0}
!3083 = !{!"p1 _ZTSSt10shared_ptrISt6atomicImEE", !14, i64 0}
!3084 = !{!3085, !3085, i64 0}
!3085 = !{!"p2 _ZTSN5folly5BatonILb1ESt6atomicEE", !73, i64 0}
!3086 = !{!3087, !181, i64 24}
!3087 = !{!"_ZTSZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEE3$_0", !3088, i64 0, !3089, i64 16, !181, i64 24}
!3088 = !{!"_ZTSSt10shared_ptrISt6atomicImEE", !3068, i64 0}
!3089 = !{!"p1 _ZTSN5folly5BatonILb1ESt6atomicEE", !14, i64 0}
!3090 = !DISubprogram(name: "creationStarted", linkageName: "_ZN5folly6detail19SingletonHolderBase15creationStartedEv", scope: !201, file: !200, line: 307, type: !2909, scopeLine: 307, containingType: !201, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!3091 = !{!3089, !3089, i64 0}
!3092 = !{!14, !14, i64 0}
!3093 = distinct !{ptr @"_ZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEEN3$_0D2Ev", ptr @_ZNSt12__shared_ptrISt6atomicImELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3094 = !{!3095, !3083, i64 0}
!3095 = !{!"_ZTSZZN5folly14SingletonVault14doEagerInitViaERNS_8ExecutorEPNS_5BatonILb1ESt6atomicEEENK3$_0clEvEUlvE_", !3083, i64 0, !3085, i64 8}
!3096 = !{i64 8}
!3097 = !{!3095, !3085, i64 8}
!3098 = distinct !{null}
!3099 = !{!3100, !33, i64 8}
!3100 = !{!"_ZTSSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !3101, i64 0, !33, i64 8}
!3101 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !14, i64 0}
!3102 = !{!3100, !3101, i64 0}
!3103 = !{!3104, !3104, i64 0}
!3104 = !{!"p1 _ZTSN5folly8FunctionIFvvEEE", !14, i64 0}
!3105 = !{!3106, !3104, i64 0}
!3106 = !{!"_ZTSNSt12_Vector_baseIN5folly8FunctionIFvvEEESaIS3_EE17_Vector_impl_dataE", !3104, i64 0, !3104, i64 8, !3104, i64 16}
!3107 = !{!3106, !3104, i64 8}
!3108 = distinct !{null, null, null, null, null, null, null}
!3109 = distinct !{!3109, !170}
!3110 = !{!3106, !3104, i64 16}
!3111 = !{!3112, !3113, i64 0}
!3112 = !{!"_ZTSNSt12_Vector_baseIPN5folly10TLRefCountESaIS2_EE17_Vector_impl_dataE", !3113, i64 0, !3113, i64 8, !3113, i64 16}
!3113 = !{!"p2 _ZTSN5folly10TLRefCountE", !73, i64 0}
!3114 = !{!3112, !3113, i64 16}
!3115 = distinct !{null}
!3116 = distinct !{!3116, !170}
!3117 = distinct !{!3117, !170}
!3118 = distinct !{!3118, !170}
!3119 = distinct !{!3119, !170}
!3120 = distinct !{!3120, !170}
!3121 = distinct !{!3121, !170}
!3122 = !{!3113, !3113, i64 0}
!3123 = !{!3124, !3124, i64 0}
!3124 = !{!"p1 _ZTSN5folly10TLRefCountE", !14, i64 0}
!3125 = !{!3126, !3127, i64 8}
!3126 = !{!"_ZTSNSt12_Vector_baseISt11unique_lockISt5mutexESaIS2_EE17_Vector_impl_dataE", !3127, i64 0, !3127, i64 8, !3127, i64 16}
!3127 = !{!"p1 _ZTSSt11unique_lockISt5mutexE", !14, i64 0}
!3128 = !{!3126, !3127, i64 16}
!3129 = !{!3130, !3131, i64 0}
!3130 = !{!"_ZTSSt11unique_lockISt5mutexE", !3131, i64 0, !33, i64 8}
!3131 = !{!"p1 _ZTSSt5mutex", !14, i64 0}
!3132 = !{!3130, !33, i64 8}
!3133 = !{!3126, !3127, i64 0}
!3134 = distinct !{!3134, !170}
!3135 = distinct !{null, null, null, null}
!3136 = !{!3137, !3139}
!3137 = distinct !{!3137, !3138, !"_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE16accessAllThreadsEv: argument 0"}
!3138 = distinct !{!3138, !"_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE16accessAllThreadsEv"}
!3139 = distinct !{!3139, !3140, !"_ZNK5folly11ThreadLocalINS_10TLRefCount13LocalRefCountES1_vE16accessAllThreadsEv: argument 0"}
!3140 = distinct !{!3140, !"_ZNK5folly11ThreadLocalINS_10TLRefCount13LocalRefCountES1_vE16accessAllThreadsEv"}
!3141 = !{!3142}
!3142 = distinct !{!3142, !3143, !"_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor5beginEv: argument 0"}
!3143 = distinct !{!3143, !"_ZNK5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor5beginEv"}
!3144 = !{!3145, !3145, i64 0}
!3145 = !{!"p1 _ZTSN5folly18threadlocal_detail14ThreadEntrySet7ElementE", !14, i64 0}
!3146 = !{!3147, !14, i64 0}
!3147 = !{!"_ZTSN5folly18threadlocal_detail14ThreadEntrySet7ElementE", !3148, i64 0, !3149, i64 16}
!3148 = !{!"_ZTSN5folly18threadlocal_detail14ElementWrapperE", !14, i64 0, !24, i64 8}
!3149 = !{!"p1 _ZTSN5folly18threadlocal_detail11ThreadEntryE", !14, i64 0}
!3150 = distinct !{!3150, !170}
!3151 = !{!3101, !3101, i64 0}
!3152 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!3153 = !{!3154, !3101, i64 0}
!3154 = !{!"_ZTSSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !3101, i64 0, !154, i64 8}
!3155 = !{!3156, !8, i64 40}
!3156 = !{!"_ZTSN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8AccessorE", !3157, i64 0, !3100, i64 8, !3154, i64 24, !8, i64 40, !3158, i64 48}
!3157 = !{!"p1 _ZTSN5folly18threadlocal_detail14StaticMetaBaseE", !14, i64 0}
!3158 = !{!"_ZTSN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEEE", !3100, i64 0}
!3159 = !{!3160, !14, i64 0}
!3160 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0, !3000, i64 8}
!3161 = !{!3162, !24, i64 64}
!3162 = !{!"_ZTSN5folly10TLRefCount13LocalRefCountE", !3163, i64 0, !120, i64 8, !3124, i64 16, !3165, i64 24, !24, i64 64, !3167, i64 72}
!3163 = !{!"_ZTSSt6atomicIlE", !3164, i64 0}
!3164 = !{!"_ZTSSt13__atomic_baseIlE", !24, i64 0}
!3165 = !{!"_ZTSSt5mutex", !3166, i64 0}
!3166 = !{!"_ZTSSt12__mutex_base", !9, i64 0}
!3167 = !{!"_ZTSSt10shared_ptrIvE", !3160, i64 0}
!3168 = !{!3162, !3124, i64 16}
!3169 = distinct !{null, null, null, null, null}
!3170 = !{!3171, !24, i64 0}
!3171 = !{!"_ZTS8timespec", !24, i64 0, !24, i64 8}
!3172 = !{!3171, !24, i64 8}
!3173 = distinct !{!3173, !170}
!3174 = distinct !{!3174, !170}
!3175 = distinct !{null, null, null}
!3176 = !{!3177}
!3177 = distinct !{!3177, !3178, !"_ZSt19__relocate_object_aISt11unique_lockISt5mutexES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!3178 = distinct !{!3178, !"_ZSt19__relocate_object_aISt11unique_lockISt5mutexES2_SaIS2_EEvPT_PT0_RT1_"}
!3179 = !{!3180}
!3180 = distinct !{!3180, !3178, !"_ZSt19__relocate_object_aISt11unique_lockISt5mutexES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!3181 = distinct !{!3181, !170}
!3182 = !{!3183}
!3183 = distinct !{!3183, !3184, !"_ZSt19__relocate_object_aISt11unique_lockISt5mutexES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!3184 = distinct !{!3184, !"_ZSt19__relocate_object_aISt11unique_lockISt5mutexES2_SaIS2_EEvPT_PT0_RT1_"}
!3185 = !{!3186}
!3186 = distinct !{!3186, !3184, !"_ZSt19__relocate_object_aISt11unique_lockISt5mutexES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!3187 = distinct !{null}
!3188 = !{!3157, !3157, i64 0}
!3189 = !{!3156, !3157, i64 0}
!3190 = !{!3191, !3191, i64 0}
!3191 = !{!"p1 _ZTSN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !14, i64 0}
!3192 = !{!3193}
!3193 = distinct !{!3193, !3194, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!3194 = distinct !{!3194, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!3195 = !{!3196, !8, i64 80}
!3196 = !{!"_ZTSN5folly18threadlocal_detail14StaticMetaBaseE", !3197, i64 0, !3200, i64 8, !3165, i64 32, !127, i64 72, !127, i64 76, !8, i64 80, !14, i64 88, !33, i64 96, !3205, i64 104, !3208, i64 112}
!3197 = !{!"_ZTSN5folly14relaxed_atomicIjEE", !3198, i64 0}
!3198 = !{!"_ZTSN5folly6detail28relaxed_atomic_integral_baseIjEE", !3199, i64 0}
!3199 = !{!"_ZTSN5folly6detail19relaxed_atomic_baseIjEE", !107, i64 0}
!3200 = !{!"_ZTSSt6vectorIjSaIjEE", !3201, i64 0}
!3201 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !3202, i64 0}
!3202 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !3203, i64 0}
!3203 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !3204, i64 0, !3204, i64 8, !3204, i64 16}
!3204 = !{!"p1 int", !14, i64 0}
!3205 = !{!"_ZTSN5folly14relaxed_atomicIlEE", !3206, i64 0}
!3206 = !{!"_ZTSN5folly6detail28relaxed_atomic_integral_baseIlEE", !3207, i64 0}
!3207 = !{!"_ZTSN5folly6detail19relaxed_atomic_baseIlEE", !3163, i64 0}
!3208 = !{!"_ZTSN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEEE", !3209, i64 0, !3210, i64 8}
!3209 = !{!"_ZTSSt6atomicImE", !99, i64 0}
!3210 = !{!"_ZTSSt6atomicIPN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvS_NS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS8_S_EEE5arrayEE", !3211, i64 0}
!3211 = !{!"_ZTSSt13__atomic_baseIPN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEE5arrayEE", !3212, i64 0}
!3212 = !{!"p1 _ZTSN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE5arrayE", !14, i64 0}
!3213 = !{!3196, !14, i64 88}
!3214 = !{!3215}
!3215 = distinct !{!3215, !3216, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!3216 = distinct !{!3216, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!3217 = !{!3218, !3145, i64 0}
!3218 = !{!"_ZTSNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_Vector_impl_dataE", !3145, i64 0, !3145, i64 8, !3145, i64 16}
!3219 = !{i64 0, i64 8, !3092, i64 8, i64 8, !30, i64 16, i64 8, !3220}
!3220 = !{!3149, !3149, i64 0}
!3221 = !{!3212, !3212, i64 0}
!3222 = distinct !{!3222, !170}
!3223 = !{!3203, !3204, i64 0}
!3224 = !{!3203, !3204, i64 16}
!3225 = !{i64 0, i64 4, !7, i64 8, i64 8, !3226}
!3226 = !{!3227, !3227, i64 0}
!3227 = !{!"p1 _ZTSNSt3_V214error_categoryE", !14, i64 0}
!3228 = !{!3229}
!3229 = distinct !{!3229, !3230, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!3230 = distinct !{!3230, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!3231 = !DISubprogram(name: "message", linkageName: "_ZNKSt3_V214error_category7messageB5cxx11Ei", scope: !3233, file: !3232, line: 134, type: !3235, scopeLine: 134, containingType: !3233, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!3232 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/system_error", directory: "")
!3233 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "error_category", scope: !3234, file: !3232, line: 106, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3_V214error_categoryE")
!3234 = !DINamespace(name: "_V2", scope: !266, exportSymbols: true)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!3237, !3239, !577}
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !266, file: !3238, line: 77, baseType: !341)
!3238 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stringfwd.h", directory: "")
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3233)
!3241 = distinct !{null}
!3242 = !{!3243}
!3243 = distinct !{!3243, !3244, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!3244 = distinct !{!3244, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!3245 = !{!3246}
!3246 = distinct !{!3246, !3247, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!3247 = distinct !{!3247, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!3248 = distinct !{!3248, !170}
!3249 = distinct !{!3249, !170}
!3250 = distinct !{!3250, !170}
!3251 = distinct !{!3251, !170}
!3252 = distinct !{!3252, !170}
!3253 = distinct !{!3253, !170}
!3254 = !{!3255, !75, i64 16}
!3255 = !{!"_ZTSSt10_HashtableIPN5folly18threadlocal_detail11ThreadEntryESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !72, i64 0, !24, i64 8, !74, i64 16, !24, i64 24, !76, i64 32, !75, i64 48}
!3256 = distinct !{!3256, !170}
!3257 = !{!3255, !72, i64 0}
!3258 = !{!3255, !24, i64 8}
!3259 = !{!3218, !3145, i64 16}
!3260 = distinct !{!3260, !170}
!3261 = distinct !{!3261, !170}
!3262 = distinct !{!3262, !170}
!3263 = distinct !{!3263, !170, !3264, !3265}
!3264 = !{!"llvm.loop.isvectorized", i32 1}
!3265 = !{!"llvm.loop.unroll.runtime.disable"}
!3266 = !{!"branch_weights", i32 4, i32 12}
!3267 = distinct !{!3267, !170, !3264, !3265}
!3268 = distinct !{!3268, !3269}
!3269 = !{!"llvm.loop.unroll.disable"}
!3270 = distinct !{!3270, !170, !3264}
!3271 = !{!3272}
!3272 = distinct !{!3272, !3273, !"_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4makeEv: argument 0"}
!3273 = distinct !{!3273, !"_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4makeEv"}
!3274 = distinct !{!3274, !170}
!3275 = distinct !{null}
!3276 = distinct !{null}
!3277 = !{!3278}
!3278 = distinct !{!3278, !3279}
!3279 = distinct !{!3279, !"LVerDomain"}
!3280 = !{!3281}
!3281 = distinct !{!3281, !3279}
!3282 = distinct !{!3282, !170, !3264, !3265}
!3283 = distinct !{!3283, !170, !3264}
!3284 = !{!3285}
!3285 = distinct !{!3285, !3286}
!3286 = distinct !{!3286, !"LVerDomain"}
!3287 = !{!3288}
!3288 = distinct !{!3288, !3286}
!3289 = distinct !{!3289, !170, !3264, !3265}
!3290 = distinct !{!3290, !170, !3264}
!3291 = !{!3292}
!3292 = distinct !{!3292, !3293, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!3293 = distinct !{!3293, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS2_22SynchronizedMutexLevelE2EE5wlockEv"}
!3294 = !{!3295}
!3295 = distinct !{!3295, !3296, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18CancellationSourceENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!3296 = distinct !{!3296, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18CancellationSourceENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!3297 = !{!3298}
!3298 = distinct !{!3298, !3299, !"_ZN5folly6detail17CancellationState6createEv: argument 0"}
!3299 = distinct !{!3299, !"_ZN5folly6detail17CancellationState6createEv"}
!3300 = distinct !{null, null, null, null, null, null, null, null, null}
!3301 = !{!3302}
!3302 = distinct !{!3302, !3303, !"_ZNK5folly6detail19SingletonHolderBase4typeEv: argument 0"}
!3303 = distinct !{!3303, !"_ZNK5folly6detail19SingletonHolderBase4typeEv"}
!3304 = !{i64 0, i64 4, !3305, i64 8, i64 8, !30}
!3305 = !{!77, !77, i64 0}
!3306 = !{!84, !24, i64 24}
!3307 = !{!84, !75, i64 48}
!3308 = !{!3309, !3309, i64 0}
!3309 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN5folly6detail14TypeDescriptorELb1EEEEEE", !14, i64 0}
!3310 = distinct !{!3310, !170}
!3311 = distinct !{!3311, !170}
!3312 = distinct !{!3312, !170}
!3313 = distinct !{!3313, !170}
!3314 = !{!3315}
!3315 = distinct !{!3315, !3316, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!3316 = distinct !{!3316, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!3317 = !{!3318}
!3318 = distinct !{!3318, !3319, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!3319 = distinct !{!3319, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!3320 = !{!3321}
!3321 = distinct !{!3321, !3322, !"_ZN3fmt3v116formatIJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESD_NS0_7fstringIJDpT_EE1tEDpOSG_: argument 0"}
!3322 = distinct !{!3322, !"_ZN3fmt3v116formatIJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESD_NS0_7fstringIJDpT_EE1tEDpOSG_"}
!3323 = !{!3324}
!3324 = distinct !{!3324, !3325, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!3325 = distinct !{!3325, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!3326 = !{!3327}
!3327 = distinct !{!3327, !3325, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!3328 = !{!3324, !3327}
!3329 = distinct !{!3329, !170}
!3330 = !{!3331}
!3331 = distinct !{!3331, !3332, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!3332 = distinct !{!3332, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!3333 = !{!3334}
!3334 = distinct !{!3334, !3332, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!3335 = !{!3331, !3334}
!3336 = !{!3337, !8, i64 0}
!3337 = !{!"_ZTSN3fmt3v1111basic_specsE", !8, i64 0, !9, i64 4}
!3338 = !{!3339, !8, i64 12}
!3339 = !{!"_ZTSN3fmt3v1112format_specsE", !3337, i64 0, !8, i64 8, !8, i64 12}
!3340 = !{!3341, !17, i64 0}
!3341 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !17, i64 0, !24, i64 8}
!3342 = !{!3341, !24, i64 8}
!3343 = !{!3344, !33, i64 0}
!3344 = !{!"_ZTSN3fmt3v116detail21chrono_format_checkerE", !33, i64 0}
!3345 = !{!3346, !14, i64 24}
!3346 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !17, i64 0, !24, i64 8, !24, i64 16, !14, i64 24}
!3347 = !{!3346, !17, i64 0}
!3348 = !{!3346, !24, i64 16}
!3349 = !{!3346, !24, i64 8}
!3350 = distinct !{null}
!3351 = distinct !{!3351, !170, !3264, !3265}
!3352 = !{!"branch_weights", i32 8, i32 120}
!3353 = distinct !{!3353, !170, !3264, !3265}
!3354 = distinct !{!3354, !170}
!3355 = distinct !{!3355, !170, !3265, !3264}
!3356 = !{!3357, !3357, i64 0}
!3357 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !14, i64 0}
!3358 = !{!3359, !24, i64 8}
!3359 = !{!"_ZTSN3fmt3v116detail18duration_formatterIclSt5ratioILl1ELl1000EEEE", !3360, i64 0, !24, i64 8, !8, i64 16, !3361, i64 24, !33, i64 32, !3362, i64 40, !33, i64 48}
!3360 = !{!"_ZTSN3fmt3v1114basic_appenderIcEE", !3357, i64 0}
!3361 = !{!"_ZTSN3fmt3v116detail10locale_refE", !14, i64 0}
!3362 = !{!"_ZTSNSt6chrono8durationImSt5ratioILl1ELl1EEEE", !24, i64 0}
!3363 = !{!3359, !33, i64 48}
!3364 = !{!3359, !8, i64 16}
!3365 = !{!3359, !33, i64 32}
!3366 = distinct !{!3366, !170, !3264, !3265}
!3367 = distinct !{!3367, !170, !3264, !3265}
!3368 = distinct !{!3368, !3269}
!3369 = distinct !{!3369, !170, !3264}
!3370 = distinct !{!3370, !170}
!3371 = !{!3372, !3372, i64 0}
!3372 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !9, i64 0}
!3373 = distinct !{!3373, !170}
!3374 = !{!3375, !8, i64 16}
!3375 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !3341, i64 0, !8, i64 16}
!3376 = !{!3377, !3377, i64 0}
!3377 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !14, i64 0}
!3378 = !{!3379, !3379, i64 0}
!3379 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !14, i64 0}
!3380 = !{!3381, !3379, i64 8}
!3381 = !{!"_ZTSN3fmt3v116detail20dynamic_spec_handlerIcEE", !3377, i64 0, !3379, i64 8, !14, i64 16}
!3382 = !{!3381, !14, i64 16}
!3383 = !{i64 4}
!3384 = !{!3381, !3377, i64 0}
!3385 = distinct !{!3385, !170}
!3386 = distinct !{!3386, !170}
!3387 = distinct !{null, null, null, null}
!3388 = distinct !{!3388, !170, !3264, !3265}
!3389 = distinct !{!3389, !170, !3264, !3265}
!3390 = distinct !{!3390, !3269}
!3391 = distinct !{!3391, !170, !3264}
!3392 = !{!3362, !24, i64 0}
!3393 = !{!3394}
!3394 = distinct !{!3394, !3395, !"_ZNK3fmt3v116detail18duration_formatterIclSt5ratioILl1ELl1000EEE4timeEv: argument 0"}
!3395 = distinct !{!3395, !"_ZNK3fmt3v116detail18duration_formatterIclSt5ratioILl1ELl1000EEE4timeEv"}
!3396 = !{!3397, !8, i64 8}
!3397 = !{!"_ZTS2tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !24, i64 40, !17, i64 48}
!3398 = !{!3397, !8, i64 4}
!3399 = !{!3397, !8, i64 0}
!3400 = distinct !{null, null, null, null}
!3401 = !{!3402}
!3402 = distinct !{!3402, !3403, !"_ZNK3fmt3v116detail18duration_formatterIclSt5ratioILl1ELl1000EEE4timeEv: argument 0"}
!3403 = distinct !{!3403, !"_ZNK3fmt3v116detail18duration_formatterIclSt5ratioILl1ELl1000EEE4timeEv"}
!3404 = distinct !{null, null, null, null, null, null}
!3405 = distinct !{!3405, !170, !3264, !3265}
!3406 = distinct !{!3406, !170, !3264, !3265}
!3407 = distinct !{!3407, !170, !3265, !3264}
!3408 = distinct !{!3408, !170, !3264, !3265}
!3409 = distinct !{!3409, !170, !3264, !3265}
!3410 = distinct !{!3410, !3269}
!3411 = distinct !{!3411, !170, !3264}
!3412 = !{!3413, !17, i64 0}
!3413 = !{!"_ZTSZN3fmt3v116detail16code_point_indexENS0_17basic_string_viewIcEEmEUljS3_E_", !17, i64 0, !3414, i64 8, !3414, i64 16}
!3414 = !{!"p1 long", !14, i64 0}
!3415 = !{!3414, !3414, i64 0}
!3416 = !{!3417, !24, i64 288}
!3417 = !{!"_ZTSN3fmt3v116detail15counting_bufferIcEE", !3346, i64 0, !9, i64 32, !24, i64 288}
!3418 = !{!3339, !8, i64 8}
!3419 = distinct !{!3419, !170}
end_hunk_9
