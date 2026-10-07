Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/futex-emulation?download=true
inline.NumInlined: 1031
inline.NumDeleted: 551
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN2v88internal13FutexWaitList21DeleteNodesForIsolateEPNS0_7IsolateEPPNS0_17FutexWaitListNodeES6_:bb.a
_ZN2v88internal13FutexWaitList21DeleteAsyncWaiterNodeEPNS0_17FutexWaitListNodeE.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIN2v88internal17FutexWaitListNode10AsyncStateEEclEPS3_.exit.i.i.i
  tail call void @_ZN2v84base17ConditionVariableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %.022) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %.022, i64 noundef 48) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.b, %.lr.ph
  %i.o = icmp eq ptr %.01720, null
  %spec.select = select i1 %i.o, ptr %.022, ptr %.01720
  %i.p = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal13FutexWaitList21DeleteAsyncWaiterNodeEPNS0_17FutexWaitListNodeE.exit
  %.2 = phi ptr [ %.01720, %_ZN2v88internal13FutexWaitList21DeleteAsyncWaiterNodeEPNS0_17FutexWaitListNodeE.exit ], [ %spec.select, %bb.h ] ; 2 uses
  %.116 = phi ptr [ %.01521, %_ZN2v88internal13FutexWaitList21DeleteAsyncWaiterNodeEPNS0_17FutexWaitListNodeE.exit ], [ %.022, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %i.h, %_ZN2v88internal13FutexWaitList21DeleteAsyncWaiterNodeEPNS0_17FutexWaitListNodeE.exit ], [ %i.q, %bb.h ] ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14FutexEmulation20NumWaitersForTestingENS0_6TaggedINS0_13JSArrayBufferEEEm(i64 %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i64 %0, 55
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %1 ; 3 uses
  %i.f = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  %.not.i16 = icmp eq i32 %i.h, 0
  br i1 %.not.i16, label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i8 0, i64 520, i1 false)
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(520) @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 8), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 408), align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  br label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit

_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 8), align 8 ; 5 uses
  switch i64 %i.i, label %.lr.ph.i [
    i64 -1, label %_ZN2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE3mapEv.exit.i
    i64 0, label %.critedge.i
  ]

_ZN2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE3mapEv.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 40), align 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i.i, label %bb.f, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE3mapEv.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %_ZN2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE3mapEv.exit.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 32), %_ZN2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE3mapEv.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult ptr %i.l, %i.e                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.m, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 32)
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ult ptr %i.e, %i.p
  %spec.select.i.i.i = select i1 %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 32), ptr %.19.i.i.i.i
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = add nuw i64 %.011.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !3

.lr.ph.i:                                         ; preds = %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit, %bb.e
  %.011.i = phi i64 [ %i.r, %bb.e ], [ 0, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 24), i64 %.011.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.e, %i.t
  br i1 %i.u, label %.split, label %bb.e

.critedge.i:                                      ; preds = %bb.e, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit
  %i.v = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 24), i64 %i.i
  br label %.split

.split:                                           ; preds = %.lr.ph.i, %.critedge.i
  %.sroa.09.0.i = phi ptr [ %i.v, %.critedge.i ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.w = icmp ne i64 %i.i, -1
  %i.x = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 24), i64 %i.i
  %i.y = icmp eq ptr %i.x, %.sroa.09.0.i
  %i.z = select i1 %i.w, i1 %i.y, i1 false
  br i1 %i.z, label %_ZN2v88internal29NoGarbageCollectionMutexGuardD2Ev.exit, label %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratorptEv.exit

bb.f:                                             ; preds = %bb.d, %_ZN2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE3mapEv.exit.i, %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  %.sroa.4.0.i.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 32), %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS2_.exit.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 32), %_ZN2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE3mapEv.exit.i ], [ %spec.select.i.i.i, %bb.d ] ; 2 uses
  %i.aa = icmp eq ptr %.sroa.4.0.i.ph, getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 32)
  br i1 %i.aa, label %_ZN2v88internal29NoGarbageCollectionMutexGuardD2Ev.exit, label %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratoreqERKSL_.exit.thread

_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratoreqERKSL_.exit.thread: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  br label %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratorptEv.exit

_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratorptEv.exit: ; preds = %.split, %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratoreqERKSL_.exit.thread
  %i.ac = phi ptr [ %i.ab, %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratoreqERKSL_.exit.thread ], [ %.sroa.09.0.i, %.split ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.036 = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not37 = icmp eq ptr %.036, null
  br i1 %.not37, label %_ZN2v88internal29NoGarbageCollectionMutexGuardD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratorptEv.exit, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread
  %.039 = phi ptr [ %.0, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread ], [ %.036, %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratorptEv.exit ] ; 3 uses
  %.01338 = phi i32 [ %.1, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread ], [ 0, %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratorptEv.exit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.039, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !range !19, !noundef !20
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread

bb.g:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.039, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i19, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit

_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load atomic i32, ptr %i.al monotonic, align 8
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit, %bb.g
  %i.ao = add nsw i32 %.01338, 1
  br label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread

_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread: ; preds = %bb.h, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit, %.lr.ph, %bb.i
  %.1 = phi i32 [ %.01338, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit ], [ %i.ao, %bb.i ], [ %.01338, %.lr.ph ], [ %.01338, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.039, i64 16
  %.0 = load ptr, ptr %i.ap, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %_ZN2v88internal29NoGarbageCollectionMutexGuardD2Ev.exit, label %.lr.ph, !llvm.loop !51

_ZN2v88internal29NoGarbageCollectionMutexGuardD2Ev.exit: ; preds = %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratorptEv.exit, %bb.f, %.split
  %.014 = phi i32 [ 0, %bb.f ], [ 0, %.split ], [ 0, %_ZNK2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE8iteratorptEv.exit ], [ %.1, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  ret i32 %.014
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14FutexEmulation36NumUnresolvedAsyncPromisesForTestingENS0_6TaggedINS0_13JSArrayBufferEEEm(i64 %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i64 %0, 55
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %1 ; 2 uses
  %i.f = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  %.not.i19 = icmp eq i32 %i.h, 0
  br i1 %.not.i19, label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i8 0, i64 520, i1 false)
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(520) @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 8), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 408), align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  br label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit

_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 408), align 8
  %.fr41 = freeze i64 %i.i                        ; 2 uses
  %i.j = icmp eq i64 %.fr41, -1                   ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 424), i64 %.fr41
  %.sroa.01.0.i21 = select i1 %i.j, ptr null, ptr %i.k
  br i1 %i.j, label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.preheader, label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us.outer

_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.preheader: ; preds = %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 448), align 8
  br label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.outer

_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us: ; preds = %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us.outer, %bb.g
  %.sroa.026.0.us = phi ptr [ %i.ad, %bb.g ], [ %.sroa.026.0.us.ph, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us.outer ] ; 4 uses
  %.015.us = phi i32 [ %.1.lcssa.us, %bb.g ], [ %.015.us.ph, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us.outer ] ; 3 uses
  %.not.i.us = icmp eq ptr %.sroa.026.0.us, null  ; 2 uses
  br i1 %.not.i.us, label %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratordeEv.exit.us, label %.split.us

.split.us:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us
  %i.m = icmp eq ptr %.sroa.026.0.us, %.sroa.01.0.i21
  br i1 %i.m, label %_ZN2v88internal29NoGarbageCollectionMutexGuardD2Ev.exit, label %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratordeEv.exit.us

_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratordeEv.exit.us: ; preds = %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us, %.split.us
  %i.n = phi ptr [ %.sroa.026.0.us, %.split.us ], [ %i.af, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.036.us = load ptr, ptr %i.o, align 8          ; 2 uses
  %.not37.us = icmp eq ptr %.036.us, null
  br i1 %.not37.us, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratordeEv.exit.us, %bb.f
  %.039.us = phi ptr [ %.0.us, %bb.f ], [ %.036.us, %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratordeEv.exit.us ] ; 4 uses
  %.138.us = phi i32 [ %.2.us, %bb.f ], [ %.015.us, %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratordeEv.exit.us ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.039.us, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !19, !noundef !20
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us
  %i.s = getelementptr inbounds nuw i8, ptr %.039.us, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %.not16.us = icmp eq ptr %i.e, %i.t
  br i1 %.not16.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.039.us, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i24.us = icmp eq ptr %i.x, null
  br i1 %.not.i.i24.us, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread.us, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.us

_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.us: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load atomic i32, ptr %i.y monotonic, align 8
  %.fr.us = freeze i32 %i.z
  %i.aa = icmp eq i32 %.fr.us, 0
  %i.ab = add nsw i32 %.138.us, 1
  br i1 %i.aa, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread.us, label %bb.f

_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread.us: ; preds = %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.us, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread.us, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.us, %bb.d, %.lr.ph.us
  %.2.us = phi i32 [ %.138.us, %.lr.ph.us ], [ %.138.us, %bb.d ], [ %.138.us, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread.us ], [ %i.ab, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.us ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.039.us, i64 16
  %.0.us = load ptr, ptr %i.ac, align 8           ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !52

._crit_edge.us:                                   ; preds = %bb.f, %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratordeEv.exit.us
  %.1.lcssa.us = phi i32 [ %.015.us, %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratordeEv.exit.us ], [ %.2.us, %bb.f ] ; 2 uses
  br i1 %.not.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.026.0.us, i64 24
  br label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us

bb.h:                                             ; preds = %._crit_edge.us
  %i.ae = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.7.0.us.ph) #19
  br label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us.outer

_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us.outer: ; preds = %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit, %bb.h
  %.sroa.7.0.us.ph = phi ptr [ %i.ae, %bb.h ], [ null, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit ] ; 2 uses
  %.sroa.026.0.us.ph = phi ptr [ null, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 424), %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit ]
  %.015.us.ph = phi i32 [ %.1.lcssa.us, %bb.h ], [ 0, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us.ph, i64 32
  br label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.us

_ZN2v88internal29NoGarbageCollectionMutexGuardD2Ev.exit: ; preds = %.split.us, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.outer
  %.us-phi = phi i32 [ %.015.ph, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.outer ], [ %.015.us, %.split.us ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object) #17
  ret i32 %.us-phi

_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratoreqERKSM_.exit.thread: ; preds = %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.outer
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.7.0.ph, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.036 = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not37 = icmp eq ptr %.036, null
  br i1 %.not37, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratoreqERKSM_.exit.thread, %bb.k
  %.1.lcssa = phi i32 [ %.015.ph, %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratoreqERKSM_.exit.thread ], [ %.2, %bb.k ]
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.7.0.ph) #19
  br label %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.outer

_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.outer: ; preds = %._crit_edge, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.preheader
  %.sroa.7.0.ph = phi ptr [ %3, %._crit_edge ], [ %i.l, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.preheader ] ; 3 uses
  %.015.ph = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %_ZN2v88internal12_GLOBAL__N_111GetWaitListEv.exit.split.preheader ] ; 3 uses
  %i.ah = icmp eq ptr %.sroa.7.0.ph, getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_111GetWaitListEvE6object, i64 432)
  br i1 %i.ah, label %_ZN2v88internal29NoGarbageCollectionMutexGuardD2Ev.exit, label %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratoreqERKSM_.exit.thread

.lr.ph:                                           ; preds = %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratoreqERKSM_.exit.thread, %bb.k
  %.039 = phi ptr [ %.0, %bb.k ], [ %.036, %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratoreqERKSM_.exit.thread ] ; 4 uses
  %.138 = phi i32 [ %.2, %bb.k ], [ %.015.ph, %_ZNK2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE8iteratoreqERKSM_.exit.thread ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.039, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !19, !noundef !20
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.039, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %.not16 = icmp eq ptr %i.e, %i.am
  br i1 %.not16, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.039, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i24, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit

_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit: ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load atomic i32, ptr %i.ar monotonic, align 8
  %.fr = freeze i32 %i.as
  %i.at = icmp eq i32 %.fr, 0
  %i.au = add nsw i32 %.138, 1
  br i1 %i.at, label %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, label %bb.k

_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread: ; preds = %bb.j, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit, %bb.i, %.lr.ph
  %.2 = phi i32 [ %.138, %.lr.ph ], [ %.138, %bb.i ], [ %.138, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit.thread ], [ %i.au, %_ZNKSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.039, i64 16
  %.0 = load ptr, ptr %i.av, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13FutexWaitList12NodeIsOnListEPNS0_17FutexWaitListNodeES3_(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not9 = icmp ne ptr %1, null                   ; 2 uses
  %i.a = icmp ne ptr %1, %0
  %or.cond11.not = and i1 %i.a, %.not9
  br i1 %or.cond11.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0612 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0612, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  %i.d = icmp ne ptr %i.c, %0
  %or.cond.not = and i1 %i.d, %.not
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ %.not9, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #9

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !54
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v84base17ConditionVariableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17FutexWaitListNode10AsyncStateD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v814PersistentBaseINS_7ContextEE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.b) #17
  store ptr null, ptr %i.a, align 8
  br label %_ZN2v814PersistentBaseINS_7ContextEE5ResetEv.exit

_ZN2v814PersistentBaseINS_7ContextEE5ResetEv.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v814PersistentBaseINS_7ContextEE5ResetEv.exit
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.e) #17
  store ptr null, ptr %i.d, align 8
  br label %_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit

_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit: ; preds = %_ZN2v814PersistentBaseINS_7ContextEE5ResetEv.exit, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 4              ; 2 uses
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.i, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.m, %bb.f ]
  %i.n = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.n, label %bb.g, label %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #17, !inline_history !7
  br label %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !inline_history !6
  %i.ab = load ptr, ptr %i.s, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !inline_history !6
  br label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
  br label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2
end_hunk_0
