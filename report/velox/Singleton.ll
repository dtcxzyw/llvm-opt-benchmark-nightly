inline.NumInlined: 3368
inline.NumDeleted: 1576
begin_hunk_0_@"_ZN5folly6detail8function5call_IZNS_14SingletonVaultC1ENS3_4TypeEE3$_0Lb1ELb0EbJEEET2_DpT3_RNS1_4DataE":bb.a
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #46
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #46
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.l
  %.pn10.i = phi { ptr, i32 } [ %i.az, %bb.p ], [ %i.ax, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aa

._crit_edge.i:                                    ; preds = %bb.z, %bb.j
  %i.bb = load i16, ptr %i.r, align 8, !tbaa !157
  %.not.i.i20.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i20.i, label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.bc = load ptr, ptr %5, align 8, !tbaa !151
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef nonnull align 2 dereferenceable(4) %i.r)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit.i: ; preds = %bb.s, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bf = load i16, ptr %i.g, align 8, !tbaa !157
  %.not.i.i21.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i21.i, label %"_ZZN5folly14SingletonVaultC1ENS0_4TypeEENK3$_0clEv.exit", label %bb.u

bb.u:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit.i
  %i.bg = load ptr, ptr %4, align 8, !tbaa !151
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.bg, ptr noundef nonnull align 2 dereferenceable(4) %i.g)
          to label %"_ZZN5folly14SingletonVaultC1ENS0_4TypeEENK3$_0clEv.exit" unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #46
  unreachable

bb.w:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.028.032.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.bo, %bb.z ] ; 2 uses
  %i.bj = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %.not.i.i22.i = icmp eq ptr %i.bj, null
  %.neg.i.i23.i = select i1 %.not.i.i22.i, i64 0, i64 -56
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.neg.i.i23.i
  %i.bl = invoke ptr @_ZNKSt10_HashtableIN5folly6detail14TypeDescriptorESt4pairIKS2_PNS1_19SingletonHolderBaseEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.028.032.i)
          to label %.noexc25.i unwind label %.loopexit.i ; 2 uses

.noexc25.i:                                       ; preds = %bb.w
  %.not.i.i24.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i24.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc25.i
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.56) #42
          to label %.noexc26.i unwind label %.loopexit.split-lp.i

.noexc26.i:                                       ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %.noexc25.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %i.av, ptr %1, align 8, !tbaa !166
  %i.bn = invoke { ptr, i8 } @_ZNSt10_HashtableIPN5folly6detail19SingletonHolderBaseES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.z unwind label %.loopexit.i ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.028.032.i, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.at
  br i1 %i.bp, label %._crit_edge.i, label %bb.w

.loopexit.i:                                      ; preds = %bb.y, %bb.w
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %bb.x
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.r
  %.pn10.pn.i = phi { ptr, i32 } [ %.pn10.i, %bb.r ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.k
  %.pn10.pn.pn.i = phi { ptr, i32 } [ %.pn10.pn.i, %bb.aa ], [ %i.aw, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn10.pn.pn.i

"_ZZN5folly14SingletonVaultC1ENS0_4TypeEENK3$_0clEv.exit": ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 true
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
  tail call void @abort() #46
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #27

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE2ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

; Function Attrs: noreturn
declare void @_ZN5folly19shared_mutex_detail26throwOperationNotPermittedEv() local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE14lockSharedImplINS4_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #50
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE26tls_lastDeferredReaderSlotEvE2tl) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.f, i32 256)
  %.sroa.speculated.i = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 %.sroa.speculated.i
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.l = or disjoint i64 %i.k, 1                  ; 3 uses
  %i.m = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE21tls_lastTokenlessSlotEvE2tl) ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit
  %i.n = load i32, ptr %1, align 4, !tbaa !7      ; 2 uses
  %i.o = and i32 %i.n, 128
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i64 @llvm.x86.rdtsc()
  %i.q = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !7
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.t = call noundef i64 @llvm.x86.rdtsc()
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ult i64 %i.u, 4000
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit, !prof !55

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !168
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !169

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit: ; preds = %.lr.ph.i
  %i.z = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE20yieldWaitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 128, i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !7
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit.thread

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit.thread: ; preds = %bb.e, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit, %bb.d, %bb.c
  %i.aa = phi i32 [ %i.n, %bb.c ], [ %.pre, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit ], [ %i.q, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %i.ac = and i32 %i.aa, -1536
  %or.cond = icmp eq i32 %i.ac, 0
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.ad = shl i32 %i.ab, 2
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.ae
  %i.ag = load atomic i64, ptr %i.af monotonic, align 32
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i59 = icmp eq ptr %i.ah, null
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !171 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %i.am = and i32 %i.al, 255                      ; 2 uses
  store i32 %i.am, ptr %i.c, align 4, !tbaa !7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = shl nuw nsw i32 %i.aq, 2
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.as
  %i.au = load atomic i64, ptr %i.at monotonic, align 32
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %i.aw = xor i32 %i.aq, 1                        ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.ay
  %i.ba = load atomic i64, ptr %i.az monotonic, align 32
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  %.pre97 = load i32, ptr %1, align 4, !tbaa !7
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %.lcssa = phi i32 [ %i.aq, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit ], [ %i.aw, %bb.i ] ; 2 uses
  store atomic i32 %.lcssa, ptr %i.g monotonic, align 4
  %.pre96 = load i32, ptr %1, align 4, !tbaa !7
  br label %bb.m

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.bc = phi i32 [ %.pre97, %.loopexit.loopexit ], [ %i.aa, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15waitForZeroBitsINS4_11WaitForeverEEEbRjjjRT_.exit.thread ] ; 2 uses
  %i.bd = add i32 %i.bc, 2048
  %i.be = cmpxchg ptr %0, i32 %i.bc, i32 %i.bd seq_cst seq_cst, align 4 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.k, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %.loopexit
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  store i32 %i.bg, ptr %1, align 4
  br label %.backedge

bb.k:                                             ; preds = %.loopexit
  br i1 %i.j, label %.thread82, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 2, ptr %2, align 2, !tbaa !157
  br label %.thread82

bb.m:                                             ; preds = %bb.f, %bb.j
  %i.bh = phi i32 [ %.pre96, %bb.j ], [ %i.aa, %bb.f ] ; 3 uses
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
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.bq ; 3 uses
  br i1 %i.j, label %bb.p, label %.thread78

bb.p:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bs = cmpxchg ptr %i.br, i64 0, i64 %i.l seq_cst seq_cst, align 8
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %.thread80, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread78:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bu = cmpxchg ptr %i.br, i64 0, i64 %i.k seq_cst seq_cst, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %bb.q, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %.thread78, %bb.p
  %i.bw = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bw, ptr %1, align 4, !tbaa !7
  br label %.backedge

bb.q:                                             ; preds = %.thread78
  %i.bx = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.bx, ptr %1, align 4, !tbaa !7
  %i.by = and i32 %i.bx, 512
  %.not53 = icmp eq i32 %i.by, 0
  br i1 %.not53, label %bb.x, label %bb.r

.thread80:                                        ; preds = %bb.p
  %i.bz = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bz, ptr %1, align 4, !tbaa !7
  store atomic i32 %.246.ph, ptr %i.m monotonic, align 4
  %i.ca = load i32, ptr %1, align 4, !tbaa !7
  %i.cb = and i32 %i.ca, 512
  %.not5381 = icmp eq i32 %i.cb, 0
  br i1 %.not5381, label %.thread83, label %.thread82

bb.r:                                             ; preds = %bb.q
  store i16 3, ptr %2, align 2, !tbaa !157
  %i.cc = trunc i32 %.246.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !158
  br label %.thread82

.thread83:                                        ; preds = %.thread80
  %i.ce = load atomic i32, ptr %i.m monotonic, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit.i, %.thread83
  %.011.i = phi i32 [ 0, %.thread83 ], [ %i.cn, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit.i ] ; 2 uses
  %i.cf = xor i32 %.011.i, %i.ce                  ; 2 uses
  %i.cg = shl i32 %i.cf, 2
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE15deferredReadersE, i64 %i.ch ; 2 uses
  %i.cj = load atomic i64, ptr %i.ci monotonic, align 32
  %i.ck = icmp eq i64 %i.cj, %i.l
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = cmpxchg ptr %i.ci, i64 %i.l, i64 0 seq_cst seq_cst, align 8
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cm, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE32tryUnlockTokenlessSharedDeferredEv.exit.thread, label %bb.u

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE32tryUnlockTokenlessSharedDeferredEv.exit.thread: ; preds = %bb.t
  store atomic i32 %i.cf, ptr %i.m monotonic, align 4
  br label %.backedge

.backedge:                                        ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE32tryUnlockTokenlessSharedDeferredEv.exit.thread, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.x, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE18unlockSharedInlineEv.exit65, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE18unlockSharedInlineEv.exit, %bb.o
  br label %bb.c, !llvm.loop !172

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cn = add nuw i32 %.011.i, 1                  ; 2 uses
  %i.co = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i, label %bb.v, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit.i, !prof !21

bb.v:                                             ; preds = %bb.u
  %i.cp = call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #50
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit.i

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit.i: ; preds = %bb.v, %bb.u
  %i.cq = phi i32 [ %i.cp, %bb.v ], [ %i.co, %bb.u ]
  %i.cr = icmp ult i32 %i.cn, %i.cq
  br i1 %i.cr, label %bb.s, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE32tryUnlockTokenlessSharedDeferredEv.exit, !llvm.loop !173

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE32tryUnlockTokenlessSharedDeferredEv.exit: ; preds = %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cs = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ct = add i32 %i.cs, -2048                    ; 2 uses
  store i32 %i.ct, ptr %i.b, align 4, !tbaa !7
  %i.cu = icmp ugt i32 %i.ct, 2047
  %i.cv = and i32 %i.cs, 16
  %.not.i.i61 = icmp eq i32 %i.cv, 0
  %or.cond.i = or i1 %i.cu, %.not.i.i61
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE18unlockSharedInlineEv.exit, label %bb.w, !prof !174

bb.w:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE32tryUnlockTokenlessSharedDeferredEv.exit
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE18unlockSharedInlineEv.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE32tryUnlockTokenlessSharedDeferredEv.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.backedge

bb.x:                                             ; preds = %bb.q
  %i.cw = cmpxchg ptr %i.br, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  br i1 %i.cx, label %.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.cy = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cz = add i32 %i.cy, -2048                    ; 2 uses
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !7
  %i.da = icmp ugt i32 %i.cz, 2047
  %i.db = and i32 %i.cy, 16
  %.not.i.i62 = icmp eq i32 %i.db, 0
  %or.cond.i63 = or i1 %i.da, %.not.i.i62
  br i1 %or.cond.i63, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE18unlockSharedInlineEv.exit65, label %bb.z, !prof !174

bb.z:                                             ; preds = %bb.y
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE18unlockSharedInlineEv.exit65

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE18unlockSharedInlineEv.exit65: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.backedge

.thread82:                                        ; preds = %.thread80, %bb.k, %bb.l, %bb.r
  ret i1 true
end_hunk_0
begin_hunk_1_@_ZN5folly14SingletonVault17registerSingletonEPNS_6detail19SingletonHolderBaseE:bb.a

bb.u:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.v:                                             ; preds = %_ZNSt13unordered_mapIN5folly6detail14TypeDescriptorEPNS1_19SingletonHolderBaseENS1_20TypeDescriptorHasherESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJS2_RS4_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb1EEEbEDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.az = atomicrmw and ptr %i.ap, i32 -401 seq_cst, align 4 ; 2 uses
  %i.ba = and i32 %i.az, -401
  store i32 %i.ba, ptr %i.c, align 4, !tbaa !7
  %i.bb = and i32 %i.az, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.w, !prof !55

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.be = load i16, ptr %i.h, align 8, !tbaa !157 ; 2 uses
  %.not.i.i24 = icmp eq i16 %i.be, 0
  br i1 %.not.i.i24, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.bf = load ptr, ptr %4, align 8, !tbaa !2915  ; 7 uses
  switch i16 %i.be, label %bb.ae [
    i16 1, label %bb.z
    i16 3, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.bg = load atomic i32, ptr %i.bf acquire, align 4
  %i.bh = and i32 %i.bg, 768
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bf)
          to label %.noexc26 unwind label %bb.ag

.noexc26:                                         ; preds = %bb.aa
  br i1 %i.bj, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.noexc26, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bk = atomicrmw sub ptr %i.bf, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bl = add i32 %i.bk, -2048                    ; 2 uses
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !7
  %i.bm = icmp ugt i32 %i.bl, 2047
  %i.bn = and i32 %i.bk, 16
  %.not.i.i.i.i = icmp eq i32 %i.bn, 0
  %or.cond.i.i.i = or i1 %i.bm, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.ac, !prof !174

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.ag

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ad:                                            ; preds = %bb.y
  %i.bo = load i16, ptr %i.i, align 2, !tbaa !158
  %i.bp = zext i16 %i.bo to i64
  %i.bq = ptrtoint ptr %i.bf to i64
  %.idx.i = shl nuw nsw i64 %i.bp, 5
  %i.br = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.bs = cmpxchg ptr %i.br, i64 %i.bq, i64 0 seq_cst seq_cst, align 8
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bu = atomicrmw sub ptr %i.bf, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bv = add i32 %i.bu, -2048                    ; 2 uses
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !7
  %i.bw = icmp ugt i32 %i.bv, 2047
  %i.bx = and i32 %i.bu, 16
  %.not.i.i.i25 = icmp eq i32 %i.bx, 0
  %or.cond.i.i = or i1 %i.bw, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.af, !prof !174

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ag

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ag:                                            ; preds = %bb.af, %bb.ac, %bb.aa
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.ad, %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc26, %_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.ah:                                            ; preds = %bb.t, %bb.u
  %.pn11 = phi { ptr, i32 } [ %i.ay, %bb.u ], [ %i.ax, %bb.t ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.s
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.ah ], [ %i.aw, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.n, %bb.k
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.ai ], [ %.pn, %bb.n ], [ %i.ac, %bb.k ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS3_19SingletonHolderBaseENS3_20TypeDescriptorHasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEENS3_22SynchronizedLockPolicyILNS3_22SynchronizedMutexLevelE1ELNS3_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2927, !range !34, !noundef !35
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_19shared_mutex_detail18PolicySuppressTSANEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2925   ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_19shared_mutex_detail18PolicySuppressTSANEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !7
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE6unlockEv.exit.i.i, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_19shared_mutex_detail18PolicySuppressTSANEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #46
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_19shared_mutex_detail18PolicySuppressTSANEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE2ELNS2_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !157
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !2915
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #46
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #50
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
  br i1 %.not50, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !55

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
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !55

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !168
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !2931

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
  br i1 %.not.i60, label %bb.i, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.al = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.am = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.an = call noundef i32 %i.am(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !171 ; 0 uses
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !7
  %i.ap = and i32 %i.ao, 255                      ; 2 uses
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !7
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aq
  %i.as = load atomic i8, ptr %i.ar monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
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
  store i16 2, ptr %2, align 2, !tbaa !157
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
  br label %bb.c, !llvm.loop !2932

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
  store i16 3, ptr %2, align 2, !tbaa !157
  %i.cf = trunc i32 %.247.ph to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !158
  br label %.thread81

.thread82:                                        ; preds = %.thread79
  %i.ch = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ch, label %.backedge, label %bb.t

bb.t:                                             ; preds = %.thread82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ci = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cj = add i32 %i.ci, -2048                    ; 2 uses
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !7
  %i.ck = icmp ugt i32 %i.cj, 2047
  %i.cl = and i32 %i.ci, 16
  %.not.i.i = icmp eq i32 %i.cl, 0
  %or.cond.i = or i1 %i.ck, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.u, !prof !174

bb.u:                                             ; preds = %bb.t
  call void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.backedge

bb.v:                                             ; preds = %bb.r
  %i.cm = cmpxchg ptr %i.bu, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %.backedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.co = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cp = add i32 %i.co, -2048                    ; 2 uses
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !7
  %i.cq = icmp ugt i32 %i.cp, 2047
  %i.cr = and i32 %i.co, 16
  %.not.i.i61 = icmp eq i32 %i.cr, 0
  %or.cond.i62 = or i1 %i.cq, %.not.i.i61
  br i1 %or.cond.i62, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64, label %bb.x, !prof !174

bb.x:                                             ; preds = %bb.w
  call void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.backedge

.thread81:                                        ; preds = %.thread79, %bb.l, %bb.m, %bb.s
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @llvm.x86.rdtsc()
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !7
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i64 @llvm.x86.rdtsc()
  %i.f = sub i64 %i.e, %i.a
  %i.g = icmp ult i64 %i.f, 4000
  br i1 %i.g, label %bb.b, label %.thread, !prof !55

.thread:                                          ; preds = %.lr.ph
  %i.h = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !168
  %i.i = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !7
  %i.j = and i32 %i.i, %2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph, !llvm.loop !2931

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %.2 = phi i1 [ %i.h, %.thread ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.2
}
end_hunk_1
begin_hunk_2_@_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev:bb.a
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
  %i.b = load i16, ptr %i.a, align 8, !tbaa !157
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !3153
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #46
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #50
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
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !55

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
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !55

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !168
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !3116

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
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !171 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %i.am = and i32 %i.al, 255                      ; 2 uses
  store i32 %i.am, ptr %i.c, align 4, !tbaa !7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
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
  store i16 2, ptr %2, align 2, !tbaa !157
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
  br label %bb.c, !llvm.loop !3261

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
  store i16 3, ptr %2, align 2, !tbaa !157
  %i.cc = trunc i32 %.246.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !158
  br label %.thread80

.thread81:                                        ; preds = %.thread78
  %i.ce = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ce, label %.backedge, label %bb.s

bb.s:                                             ; preds = %.thread81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cf = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cg = add i32 %i.cf, -2048                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !7
  %i.ch = icmp ugt i32 %i.cg, 2047
  %i.ci = and i32 %i.cf, 16
  %.not.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i = or i1 %i.ch, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !174

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  %i.cj = cmpxchg ptr %i.br, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.cl = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cm = add i32 %i.cl, -2048                    ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !7
  %i.cn = icmp ugt i32 %i.cm, 2047
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !174

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.backedge

.thread80:                                        ; preds = %.thread78, %bb.k, %bb.l, %bb.r
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE7at_slowEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !3221
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false)
  %i.e = sub nsw i64 0, %i.d
  %i.f = and i64 %i.e, 63
  %i.g = shl nuw i64 1, %i.f                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.h = phi ptr [ %.pre, %bb.h ], [ %i.c, %bb.a ] ; 3 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult i64 %1, %i.j
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = call noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9new_arrayEmRPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.h, label %bb.e

end_hunk_2
