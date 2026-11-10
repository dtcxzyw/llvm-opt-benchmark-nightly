Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/AsyncStack?download=true
inline.NumInlined: 205
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEE:bb.a

bb.f:                                             ; preds = %_ZN5folly12_GLOBAL__N_119suspendedLeafFramesEv.exit
  %i.o = or disjoint i32 %i.l, 2048
  %i.p = cmpxchg ptr %i.i, i32 %i.l, i32 %i.o seq_cst seq_cst, align 4, !noalias !60 ; 2 uses
  %i.q = extractvalue { i32, i1 } %i.p, 1
  br i1 %i.q, label %bb.g, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.r = extractvalue { i32, i1 } %i.p, 0
  store i32 %i.r, ptr %i.c, align 4, !noalias !60
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 2, ptr %i.j, align 8, !tbaa !37, !alias.scope !60
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly12_GLOBAL__N_119suspendedLeafFramesEv.exit
  %i.s = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !60
  %i.t = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  %i.u = select i1 %.not.i.i.i, i64 16, i64 -40
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %.val3.i = load ptr, ptr %i.v, align 8, !tbaa !61 ; 2 uses
  %i.w = icmp eq ptr %.val3.i, null
  br i1 %i.w, label %"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.noexc.i
  %.sroa.02.05.i.i.i = phi ptr [ %i.z, %.noexc.i ], [ %.val3.i, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  invoke void %1(ptr noundef %i.y, ptr noundef %0)
          to label %.noexc.i unwind label %bb.s, !inline_history !58

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.z = load ptr, ptr %.sroa.02.05.i.i.i, align 8, !tbaa !63 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i", label %.lr.ph.i.i.i, !llvm.loop !59

"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i": ; preds = %.noexc.i, %bb.i
  %i.ab = load i16, ptr %i.j, align 8, !tbaa !37  ; 2 uses
  %.not.i.i5.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i5.i, label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit", label %bb.j

bb.j:                                             ; preds = %"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i"
  %i.ac = load ptr, ptr %3, align 8, !tbaa !36    ; 7 uses
  switch i16 %i.ab, label %bb.p [
    i16 1, label %bb.k
    i16 3, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = load atomic i32, ptr %i.ac acquire, align 4
  %i.ae = and i32 %i.ad, 768
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.ac)
          to label %.noexc6.i unwind label %bb.r

.noexc6.i:                                        ; preds = %bb.l
  br i1 %i.ag, label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit", label %bb.m

bb.m:                                             ; preds = %.noexc6.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ah = atomicrmw add ptr %i.ac, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.ai = add i32 %i.ah, -2048                    ; 2 uses
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !14
  %i.aj = icmp ugt i32 %i.ai, 2047
  %i.ak = and i32 %i.ah, 16
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  %or.cond.i.i.i.i = or i1 %i.aj, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, label %bb.n, !prof !47

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i unwind label %bb.r

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit"

bb.o:                                             ; preds = %bb.j
  %i.al = load i16, ptr %i.k, align 2, !tbaa !38
  %i.am = zext i16 %i.al to i64
  %i.an = ptrtoint ptr %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i.i
  %i.ap = cmpxchg ptr %i.ao, i64 %i.an, i64 0 seq_cst seq_cst, align 8
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit", label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ar = atomicrmw add ptr %i.ac, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.as = add i32 %i.ar, -2048                    ; 2 uses
  store i32 %i.as, ptr %i.a, align 4, !tbaa !14
  %i.at = icmp ugt i32 %i.as, 2047
  %i.au = and i32 %i.ar, 16
  %.not.i.i.i.i = icmp eq i32 %i.au, 0
  %or.cond.i.i.i = or i1 %i.at, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.q, !prof !47

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.r

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit"

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.l
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #24
  unreachable

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume

"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withRLockIZNS_24sweepSuspendedLeafFramesENS_11FunctionRefIFvS4_EEEE3$_0EEDaOT_.exit": ; preds = %"_ZZN5folly24sweepSuspendedLeafFramesENS_11FunctionRefIFvPNS_15AsyncStackFrameEEEEENK3$_0clIKSt13unordered_setIS2_St4hashIS2_ESt8equal_toIS2_ESaIS2_EEEEDaRT_.exit.i", %.noexc6.i, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, %bb.o, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5folly14IndestructibleISt10unique_ptrINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS5_ESt8equal_toIS5_ESaIS5_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEESt14default_deleteISG_EEEC2IZNS_12_GLOBAL__N_119suspendedLeafFramesEvE3$_0EENS_21factory_constructor_tEOT_"() unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25, !noalias !66 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !noalias !66
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.a, align 16, !tbaa !67, !noalias !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !68, !noalias !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !66
  store float 1.000000e+00, ptr %i.b, align 16, !tbaa !69, !noalias !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false), !noalias !66
  store ptr %i.a, ptr @_ZZN5folly12_GLOBAL__N_119suspendedLeafFramesEvE8instance.0, align 8, !tbaa !30, !alias.scope !66
  store ptr %i.a, ptr @__folly_leaf_frame_store, align 8, !tbaa !71
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: cold
declare noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSH_22SynchronizedMutexLevelE2ELNSH_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !37
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !36
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #26
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
  %i.n = load i32, ptr %1, align 4, !tbaa !14     ; 2 uses
  %i.o = and i32 %i.n, 128
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i64 @llvm.x86.rdtsc()
  %i.q = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !14
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.t = call noundef i64 @llvm.x86.rdtsc()
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ult i64 %i.u, 4000
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !15

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !76
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !14
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !72

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %.lr.ph.i
  %i.z = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 128, i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !14
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
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !75

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !73 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !14
  %i.am = and i32 %i.al, 255
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
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
  %.pre91 = load i32, ptr %1, align 4, !tbaa !14
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %.lcssa = phi i32 [ %i.aq, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit ], [ %i.aw, %bb.i ] ; 2 uses
  store atomic i32 %.lcssa, ptr %i.g monotonic, align 4
  %.pre90 = load i32, ptr %1, align 4, !tbaa !14
  br label %bb.m

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.bc = phi i32 [ %.pre91, %.loopexit.loopexit ], [ %i.aa, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread ] ; 2 uses
  %i.bd = add i32 %i.bc, 2048
  %i.be = cmpxchg ptr %0, i32 %i.bc, i32 %i.bd seq_cst seq_cst, align 4 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.k, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %.loopexit
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  store i32 %i.bg, ptr %1, align 4
  br label %.backedge

bb.k:                                             ; preds = %.loopexit
  br i1 %i.j, label %.thread81, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 2, ptr %2, align 2, !tbaa !37
  br label %.thread81

bb.m:                                             ; preds = %bb.f, %bb.j
  %i.bh = phi i32 [ %.pre90, %bb.j ], [ %i.aa, %bb.f ] ; 3 uses
  %.2.ph = phi i32 [ %.lcssa, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
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
  %i.bp = shl i32 %.2.ph, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bq ; 3 uses
  br i1 %i.j, label %bb.p, label %.thread77

bb.p:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bs = cmpxchg ptr %i.br, i64 0, i64 %i.l seq_cst seq_cst, align 8
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %.thread79, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread77:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bu = cmpxchg ptr %i.br, i64 0, i64 %i.k seq_cst seq_cst, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %bb.q, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %.thread77, %bb.p
  %i.bw = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bw, ptr %1, align 4, !tbaa !14
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, %.thread82, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, %bb.o
  br label %bb.c, !llvm.loop !74

bb.q:                                             ; preds = %.thread77
  %i.bx = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.bx, ptr %1, align 4, !tbaa !14
  %i.by = and i32 %i.bx, 512
  %.not53 = icmp eq i32 %i.by, 0
  br i1 %.not53, label %bb.u, label %bb.r

.thread79:                                        ; preds = %bb.p
  %i.bz = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bz, ptr %1, align 4, !tbaa !14
  store atomic i32 %.2.ph, ptr %i.m monotonic, align 4
  %i.ca = load i32, ptr %1, align 4, !tbaa !14
  %i.cb = and i32 %i.ca, 512
  %.not5380 = icmp eq i32 %i.cb, 0
  br i1 %.not5380, label %.thread82, label %.thread81

bb.r:                                             ; preds = %bb.q
  store i16 3, ptr %2, align 2, !tbaa !37
  %i.cc = trunc i32 %.2.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !38
  br label %.thread81

.thread82:                                        ; preds = %.thread79
  %i.ce = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ce, label %.backedge, label %bb.s

bb.s:                                             ; preds = %.thread82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cf = atomicrmw add ptr %0, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.cg = add i32 %i.cf, -2048                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !14
  %i.ch = icmp ugt i32 %i.cg, 2047
  %i.ci = and i32 %i.cf, 16
  %.not.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i = or i1 %i.ch, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !47

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  %i.cj = cmpxchg ptr %i.br, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cl = atomicrmw add ptr %0, i32 -2048 seq_cst, align 4 ; 2 uses
  %i.cm = add i32 %i.cl, -2048                    ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !14
  %i.cn = icmp ugt i32 %i.cm, 2047
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !47

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.backedge

.thread81:                                        ; preds = %.thread79, %bb.k, %bb.l, %bb.r
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @sched_yield() #20 ; 0 uses
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !14
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @sched_yield() #20 ; 0 uses
  %i.f = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.f, ptr %1, align 4, !tbaa !14
  %i.g = and i32 %i.f, %2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  %i.j = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !14
  %i.k = and i32 %i.j, %2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.m = load atomic i32, ptr %0 acquire, align 4 ; 4 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !14
  %i.n = and i32 %i.m, %2
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.p = icmp eq i32 %3, 12
  br i1 %i.p, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.f
  %i.q = phi i32 [ %i.y, %bb.f ], [ %i.m, %.lr.ph.i ] ; 6 uses
  %i.r = and i32 %i.q, 4
  %.not.us.i = icmp eq i32 %i.r, 0
  br i1 %.not.us.i, label %.thread.us.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.i
  %i.s = or i32 %i.q, 8                           ; 2 uses
  %.not22.us.i = icmp eq i32 %i.s, %i.q
  br i1 %.not22.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %bb.e

.thread.us.i:                                     ; preds = %.lr.ph.split.us.i
  %i.t = or disjoint i32 %i.q, 4
  br label %bb.e

bb.e:                                             ; preds = %.thread.us.i, %bb.d
  %.01925.us.i = phi i32 [ %i.t, %.thread.us.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.u = cmpxchg ptr %0, i32 %i.q, i32 %.01925.us.i seq_cst seq_cst, align 4 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i: ; preds = %bb.e
  %i.w = extractvalue { i32, i1 } %i.u, 0
  store i32 %i.w, ptr %1, align 4
  br label %bb.f, !llvm.loop !77

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i: ; preds = %bb.e, %bb.d
  %.01926.us.i = phi i32 [ %i.q, %bb.d ], [ %.01925.us.i, %bb.e ]
  %i.x = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %.01926.us.i, ptr noundef null, ptr noundef null, i32 noundef 12) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i
  %i.y = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.y, ptr %1, align 4, !tbaa !14
  %i.z = and i32 %i.y, %2
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.h
  %i.ab = phi i32 [ %i.ah, %bb.h ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %i.ac = or i32 %i.ab, %3                        ; 3 uses
  %.not22.i = icmp eq i32 %i.ac, %i.ab
  br i1 %.not22.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.ad = cmpxchg ptr %0, i32 %i.ab, i32 %i.ac seq_cst seq_cst, align 4 ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1
  br i1 %i.ae, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.g
  %i.af = extractvalue { i32, i1 } %i.ad, 0
  store i32 %i.af, ptr %1, align 4
  br label %bb.h, !llvm.loop !77

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %bb.g, %.lr.ph.split.i
  %i.ag = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %i.ac, ptr noundef null, ptr noundef null, i32 noundef %3) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i
  %i.ah = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.ah, ptr %1, align 4, !tbaa !14
  %i.ai = and i32 %i.ah, %2
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %bb.h, %bb.f, %bb.a, %bb.b, %bb.c, %.critedge
  ret i1 true
}

; Function Attrs: nounwind
declare i64 @llvm.x86.rdtsc() #20

declare noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #5

declare noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

declare noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800), ptr noundef nonnull, ptr noundef nonnull) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv() #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %i.a
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v() #1

declare noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly18SequentialThreadId3getEv() ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %0, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %1, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

declare noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #16 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #16 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #16 align 2

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_AsyncStack.cpp() #4 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull @_ZTSN12_GLOBAL__N_117SuspendedFrameTagE, i64 noundef 35, i64 noundef 3339675911)
          to label %__cxx_global_var_init.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #24
  unreachable

__cxx_global_var_init.exit:                       ; preds = %bb.a
  store volatile i64 %i.a, ptr @__folly_suspended_frame_cookie, align 8, !tbaa !28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN5folly14AsyncStackRootE", !12, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 1, i32 1023}
!17 = !{!"branch_weights", i32 -2147483648, i32 0}
!18 = !{!"p1 _ZTSN5folly15AsyncStackFrameE", !12, i64 0}
!19 = !{!"_ZTSSt13__atomic_baseIPN5folly15AsyncStackFrameEE", !18, i64 0}
!20 = !{!"_ZTSSt6atomicIPN5folly15AsyncStackFrameEE", !19, i64 0}
!21 = !{!"_ZTSN5folly14AsyncStackRootE", !20, i64 0, !13, i64 8, !12, i64 16, !12, i64 24}
!22 = !{!"_ZTSN5folly6detail20ScopedAsyncStackRootE", !21, i64 0}
!23 = !{!22, !13, i64 8}
!24 = !{!"_ZTSN5folly15AsyncStackFrameE", !18, i64 0, !12, i64 8, !13, i64 16}
!25 = !{!"branch_weights", i32 1, i32 1048575}
!26 = !{!24, !13, i64 16}
!27 = !{!"long", !8, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTSN5folly12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS3_ESt8equal_toIS3_ESaIS3_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !12, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !12, i64 0}
!32 = !{!"_ZTSN5folly16SharedMutexToken5StateE", !8, i64 0}
!33 = !{!"short", !8, i64 0}
!34 = !{!"_ZTSN5folly16SharedMutexTokenE", !32, i64 0, !33, i64 2}
!35 = !{!"_ZTSSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !31, i64 0, !34, i64 8}
!36 = !{!35, !31, i64 0}
!37 = !{!34, !32, i64 0}
!38 = !{!34, !33, i64 2}
!39 = !{!"any p2 pointer", !12, i64 0}
!40 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !39, i64 0}
!41 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!42 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !41, i64 0}
!43 = !{!"float", !8, i64 0}
!44 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !43, i64 0, !27, i64 8}
!45 = !{!"_ZTSSt10_HashtableIPN5folly15AsyncStackFrameES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE", !40, i64 0, !27, i64 8, !42, i64 16, !27, i64 24, !44, i64 32, !41, i64 48}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"branch_weights", i32 4001, i32 1}
!48 = !{!"_ZTSSt13__atomic_baseIPN5folly14AsyncStackRootEE", !13, i64 0}
!49 = !{!48, !13, i64 0}
!50 = !{!21, !12, i64 16}
!51 = !{!21, !12, i64 24}
!52 = !{!24, !12, i64 8}
!53 = !{!12, !12, i64 0}
!54 = !{i64 6349239}
!55 = distinct !{null}
!56 = distinct !{!56, i1 true, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv"}
!57 = distinct !{!57, !56, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedISt13unordered_setIPNS_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!58 = distinct !{null}
!59 = distinct !{!59, !46}
!60 = !{!57}
!61 = !{!45, !41, i64 16}
!62 = !{!18, !18, i64 0}
!63 = !{!42, !41, i64 0}
!64 = distinct !{!64, i1 true, !"_ZSt11make_uniqueIN5folly12SynchronizedISt13unordered_setIPNS0_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!65 = distinct !{!65, !64, !"_ZSt11make_uniqueIN5folly12SynchronizedISt13unordered_setIPNS0_15AsyncStackFrameESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!66 = !{!65}
!67 = !{!45, !40, i64 0}
!68 = !{!45, !27, i64 8}
!69 = !{!44, !43, i64 0}
!70 = !{!"p1 _ZTSSt13unordered_setIPN5folly15AsyncStackFrameESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE", !12, i64 0}
!71 = !{!70, !70, i64 0}
!72 = distinct !{!72, !46}
!73 = distinct !{null}
!74 = distinct !{!74, !46}
!75 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!76 = !{i64 8355069}
!77 = distinct !{!77, !46}
end_hunk_0
