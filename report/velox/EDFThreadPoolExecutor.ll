inline.NumInlined: 1767
inline.NumDeleted: 901
begin_hunk_0_@_ZN5folly21EDFThreadPoolExecutor9TaskQueue3popEv:bb.a
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dd, %bb.ad ], [ %i.dn, %bb.ae ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.do, label %bb.af, label %bb.ah, !prof !4688

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #18
  br label %bb.ah

bb.ag:                                            ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.be, ptr %0, align 8
  call void @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %i.dp

bb.ah:                                            ; preds = %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5folly21EDFThreadPoolExecutor4TaskEESt6vectorIS6_SaIS6_EEEENS4_9TaskQueue6Bucket7CompareEEvT_SF_T0_.exit.i, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.af
  %i.dq = load ptr, ptr %i.aj, align 8, !tbaa !5772
  %i.dr = load ptr, ptr %i.al, align 8, !tbaa !5772
  %i.ds = icmp eq ptr %i.dq, %i.dr
  %i.dt = zext i1 %i.ds to i8
  store atomic i8 %i.dt, ptr %.lcssa81 monotonic, align 8
  %.pre = load i8, ptr %i.j, align 8, !tbaa !5769, !range !5579
  %i.du = trunc nuw i8 %.pre to i1
  br i1 %i.du, label %.thread, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

.thread:                                          ; preds = %bb.x, %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, %bb.ah
  %spec.select61 = phi i32 [ 0, %bb.ah ], [ 0, %bb.x ], [ 3, %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit ] ; 2 uses
  %i.dv = load ptr, ptr %6, align 8, !tbaa !5766  ; 3 uses
  %.not.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.dw = atomicrmw and ptr %i.dv, i32 -401 seq_cst, align 4 ; 2 uses
  %i.dx = and i32 %i.dw, -401
  store i32 %i.dx, ptr %i.c, align 4, !tbaa !7
  %i.dy = and i32 %i.dw, 15
  %.not.i.i.i.i25 = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i25, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.aj, !prof !5606

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.ak

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.be, ptr %0, align 8
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #30
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.ah, %.thread, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  %spec.select60 = phi i32 [ 0, %bb.ah ], [ %spec.select61, %.thread ], [ %spec.select61, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit: ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit
  %.3 = phi i32 [ %spec.select60, %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit ], [ %.122, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit ]
  %.1 = phi i1 [ %i.cl, %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit ], [ false, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit ]
  switch i32 %.3, label %bb.al [
    i32 0, label %.backedge.outer.backedge
    i32 3, label %.backedge.outer.backedge
  ]

.backedge.outer.backedge:                         ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit
  br label %.backedge.outer, !llvm.loop !5875

bb.al:                                            ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_order.exit
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.be, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5folly21EDFThreadPoolExecutor12fillTaskInfoERKNS0_4TaskERNS_18ThreadPoolExecutor8TaskInfoE(ptr nofree noundef nonnull readnone align 64 captures(none) dereferenceable(572) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(144) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (16, 32)) %2) local_unnamed_addr #25 align 2 {
bb.a:
  store i8 0, ptr %2, align 8, !tbaa !4636
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !4640 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !4643
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !4657
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.f, align 16, !tbaa !4658
  store i64 %i.h, ptr %i.g, align 8, !tbaa !4658
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.j = load i64, ptr %i.i, align 8, !tbaa !5783
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.j, ptr %i.k, align 8, !tbaa !4680
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly21ExecutorBlockingGuardD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly21EDFThreadPoolExecutor9TaskQueue16findNextDeadlineEm(ptr noundef nonnull align 8 dereferenceable(3592) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.std::shared_lock", align 8  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3584
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %.059 = phi i64 [ undef, %bb.a ], [ %.247, %.thread ] ; 3 uses
  %.02458 = phi i64 [ -1, %bb.a ], [ %.32746, %.thread ] ; 4 uses
  %.02957 = phi i64 [ 0, %bb.a ], [ %i.bb, %.thread ] ; 2 uses
  %i.g = add i64 %.02957, %1
  %i.h = and i64 %i.g, 63
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.h ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load atomic i8, ptr %i.j monotonic, align 8, !range !5579, !noundef !108
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.i, ptr %3, align 8, !tbaa !5868
  store i16 0, ptr %i.d, align 8, !tbaa !5873
  store i16 0, ptr %i.e, align 2, !tbaa !5874
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.m = load atomic i32, ptr %i.i monotonic, align 8 ; 4 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !7
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.i, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i.i.i: ; preds = %bb.d
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.c, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.d, align 8, !tbaa !5873
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i.i.i, %bb.c
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.u = load atomic i64, ptr %i.f monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %1, %i.u
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !5772 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !5772
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !4685
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !5765 ; 3 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.ac, i64 %.02458)
  %.not38 = icmp ule i64 %i.ac, %1
  %i.ad = sub nuw i64 %i.ac, %1
  %i.ae = icmp ult i64 %i.ad, 64
  %or.cond = select i1 %.not38, i1 true, i1 %i.ae
  %.030 = select i1 %or.cond, i32 2, i32 0
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, %bb.h
  %.131 = phi i32 [ %.030, %bb.h ], [ 1, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit ], [ 4, %bb.g ]
  %.226 = phi i64 [ %spec.select, %bb.h ], [ %.02458, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit ], [ %.02458, %bb.g ] ; 3 uses
  %.1 = phi i64 [ %.059, %bb.h ], [ %i.u, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit ], [ %.059, %bb.g ] ; 3 uses
  %i.af = load i16, ptr %i.d, align 8, !tbaa !5873 ; 2 uses
  %.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !5868  ; 7 uses
  switch i16 %i.af, label %bb.p [
    i16 1, label %bb.k
    i16 3, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = load atomic i32, ptr %i.ag acquire, align 4
  %i.ai = and i32 %i.ah, 768
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.ag)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.l
  br i1 %i.ak, label %bb.s, label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.al = atomicrmw sub ptr %i.ag, i32 2048 seq_cst, align 4 ; 2 uses
  %i.am = add i32 %i.al, -2048                    ; 2 uses
  store i32 %i.am, ptr %i.b, align 4, !tbaa !7
  %i.an = icmp ugt i32 %i.am, 2047
  %i.ao = and i32 %i.al, 16
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  %or.cond.i.i.i = or i1 %i.an, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.n, !prof !5876

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.r

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.ap = load i16, ptr %i.e, align 2, !tbaa !5874
  %i.aq = zext i16 %i.ap to i64
  %i.ar = ptrtoint ptr %i.ag to i64
  %.idx.i = shl nuw nsw i64 %i.aq, 5
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.at = cmpxchg ptr %i.as, i64 %i.ar, i64 0 seq_cst seq_cst, align 8
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.av = atomicrmw sub ptr %i.ag, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aw = add i32 %i.av, -2048                    ; 2 uses
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !7
  %i.ax = icmp ugt i32 %i.aw, 2047
  %i.ay = and i32 %i.av, 16
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  %or.cond.i.i = or i1 %i.ax, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.q, !prof !5876

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.r

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.l
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #30
  unreachable

bb.s:                                             ; preds = %bb.i, %.noexc, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %bb.o, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  switch i32 %.131, label %.thread48 [
    i32 0, label %.thread
    i32 4, label %.thread
    i32 2, label %.thread48.loopexit
  ]

.thread:                                          ; preds = %bb.s, %bb.s, %bb.b
  %.247 = phi i64 [ %.1, %bb.s ], [ %.1, %bb.s ], [ %.059, %bb.b ]
  %.32746 = phi i64 [ %.226, %bb.s ], [ %.226, %bb.s ], [ %.02458, %bb.b ] ; 2 uses
  %i.bb = add nuw nsw i64 %.02957, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, 64
  br i1 %exitcond.not, label %.thread48, label %bb.b, !llvm.loop !5878

.thread48.loopexit:                               ; preds = %bb.s
  br label %.thread48

.thread48:                                        ; preds = %.thread, %bb.s, %.thread48.loopexit
  %i.bc = phi i64 [ %.1, %bb.s ], [ %.32746, %.thread ], [ %.226, %.thread48.loopexit ]
  ret i64 %i.bc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !4688

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #35
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
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !5606

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
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !5606

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !5622
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !7
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !5785

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
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !4688

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !5879 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %i.am = and i32 %i.al, 255                      ; 2 uses
  store i32 %i.am, ptr %i.c, align 4, !tbaa !7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
end_hunk_0
