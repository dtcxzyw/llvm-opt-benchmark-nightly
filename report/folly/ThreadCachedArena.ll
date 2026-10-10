Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ThreadCachedArena?download=true
inline.NumInlined: 844
inline.NumDeleted: 495
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8AccessorC2Ej:bb.a
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i9, %bb.h
  %i.ak = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %bb.t       ; 0 uses

bb.j:                                             ; preds = %bb.i, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store i8 1, ptr %i.j, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.al = load ptr, ptr %0, align 8, !tbaa !1158, !nonnull !103, !align !1159 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  %i.an = load i32, ptr %i.o, align 8, !tbaa !142
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = load atomic i64, ptr %i.am acquire, align 8
  %i.aq = icmp ugt i64 %i.ap, %i.ao
  br i1 %i.aq, label %bb.k, label %bb.l, !prof !86

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
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 4 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !94, !alias.scope !1160
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 0, ptr %i.az, align 8, !tbaa !95, !alias.scope !1160
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !1160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !1160
  %i.ba = load atomic i32, ptr %i.ay acquire, align 4, !noalias !1160 ; 4 uses
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !87, !noalias !1160
  %i.bb = and i32 %i.ba, -1312
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %.critedge.i.i.i.i.i.i, !prof !86

bb.n:                                             ; preds = %bb.m
  %i.bd = or disjoint i32 %i.ba, 128
  %i.be = cmpxchg ptr %i.ay, i32 %i.ba, i32 %i.bd seq_cst seq_cst, align 4, !noalias !1160 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.o, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !88

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  store i32 %i.bg, ptr %i.b, align 4, !noalias !1160
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %bb.m
  %i.bh = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.o unwind label %bb.u       ; 0 uses

bb.o:                                             ; preds = %bb.n, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !1160
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !1160
  store i8 1, ptr %i.az, align 8, !tbaa !95, !alias.scope !1160
  %i.bi = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %5) #20 ; 0 uses
  %i.bj = load i8, ptr %i.az, align 8, !tbaa !95, !range !105, !noundef !103
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.p, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %5, align 8, !tbaa !94    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bm = atomicrmw and ptr %i.bl, i32 -401 seq_cst, align 4 ; 2 uses
  %i.bn = and i32 %i.bm, -401
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !87
  %i.bo = and i32 %i.bm, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.r, !prof !86

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.s

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #33
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.o, %bb.p, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.t:                                             ; preds = %.invoke, %.critedge.i.i.i, %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.br, %bb.t ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.p) #20
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.k) #20
  call void @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.h) #20
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE7at_slowEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !100
  %.not.i.i = icmp eq i64 %1, -1
  br i1 %.not.i.i, label %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false)
  %i.e = sub nuw nsw i64 64, %i.d
  %i.f = shl nuw i64 1, %i.e
  br label %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit

_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit: ; preds = %bb.a, %.noexc.i
  %i.g = phi i64 [ %i.f, %.noexc.i ], [ 1, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit
  %i.h = phi ptr [ %.pre, %bb.h ], [ %i.c, %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit ] ; 3 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60
  %i.k = icmp ult i64 %1, %i.j
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = call noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9new_arrayEmRPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = cmpxchg ptr %i.b, ptr %i.m, ptr %i.l acq_rel acquire, align 8 ; 2 uses
  %i.o = extractvalue { ptr, i1 } %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store atomic i64 %i.g, ptr %0 release, align 8
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.p = extractvalue { ptr, i1 } %i.n, 0
  store ptr %i.p, ptr %i.a, align 8
  call void @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !100
  br label %bb.b, !llvm.loop !1161

.loopexit:                                        ; preds = %bb.c, %bb.f
  %.0 = phi ptr [ %i.l, %bb.f ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9new_arrayEmRPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 12 uses
  %i.e = shl i64 %1, 3                            ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 0, i64 8
  %i.i = add i64 %i.h, %i.f
  %i.j = and i64 %i.i, -16
  %i.k = sub i64 %1, %i.d
  %i.l = mul i64 %i.k, 56                         ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 0, i64 8
  %i.o = add i64 %i.n, %i.l
  %i.p = and i64 %i.o, -16
  %i.q = add i64 %i.p, %i.j
  %i.r = tail call noalias noundef nonnull align 16 ptr @_ZnwmSt11align_val_t(i64 noundef %i.q, i64 noundef 16) #36 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %1, ptr %i.s, align 8, !tbaa !60
  %i.t = load ptr, ptr %2, align 8, !tbaa !100    ; 3 uses
  store ptr %i.t, ptr %i.r, align 16, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 8 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %1
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 8
  %i.y = and i64 %i.x, -16
  %i.z = inttoptr i64 %i.y to ptr
  %.not65 = icmp eq i64 %i.d, 0
  br i1 %.not65, label %.preheader58, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %3 = ptrtoaddr ptr %i.t to i64
  %4 = ptrtoaddr ptr %i.r to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  %5 = sub i64 %3, %4
  %diff.check = icmp ugt i64 %5, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !91
  %wide.load78 = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x ptr> %wide.load, ptr %i.ad, align 16, !tbaa !91
  store <2 x ptr> %wide.load78, ptr %i.ae, align 16, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.preheader58, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.03759.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.03759.prol = phi i64 [ %9, %scalar.ph.prol ], [ %.03759.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03759.prol
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03759.prol
  store ptr %7, ptr %8, align 8, !tbaa !91
  %9 = add nuw i64 %.03759.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1163

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03759.unr = phi i64 [ %.03759.ph, %scalar.ph.preheader ], [ %9, %scalar.ph.prol ]
  %10 = sub i64 %.03759.ph, %i.d
  %11 = icmp ugt i64 %10, -4
  br i1 %11, label %.preheader58, label %scalar.ph

.preheader58:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %i.ag = icmp ult i64 %i.d, %1
  br i1 %i.ag, label %.lr.ph64, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03759 = phi i64 [ %i.ak, %scalar.ph ], [ %.03759.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.03759
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03759
  store ptr %13, ptr %14, align 8, !tbaa !91
  %15 = add nuw i64 %.03759, 1                    ; 2 uses
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %15
  store ptr %17, ptr %18, align 8, !tbaa !91
  %19 = add nuw i64 %.03759, 2                    ; 2 uses
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %19
  store ptr %21, ptr %22, align 8, !tbaa !91
  %23 = add nuw i64 %.03759, 3                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %23
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !91
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %23
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !91
  %i.ak = add nuw i64 %.03759, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ak, %i.d
  br i1 %exitcond.not.3, label %.preheader58, label %scalar.ph, !llvm.loop !1164

.lr.ph64:                                         ; preds = %.preheader58
  %i.al = shl i64 %i.d, 3                         ; 2 uses
  %i.am = getelementptr i8, ptr %i.r, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.am, i64 16
  %i.an = sub i64 %i.e, %i.al
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.an, i1 false), !tbaa !91
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph64, %.critedge
  %.03563 = phi i64 [ %i.d, %.lr.ph64 ], [ %i.aw, %.critedge ] ; 3 uses
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !100
  %.not44 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not44, label %.critedge, label %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i

.critedge:                                        ; preds = %bb.d
  %i.ar = sub nuw i64 %.03563, %i.d
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, i8 0, i64 56, i1 false), !alias.scope !1173
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.at, align 8, !tbaa !111, !alias.scope !1173
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false), !alias.scope !1173
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03563
  store ptr %i.as, ptr %i.av, align 8, !tbaa !91
  %i.aw = add i64 %.03563, 1                      ; 2 uses
  %exitcond67.not = icmp eq i64 %i.aw, %1
  br i1 %exitcond67.not, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit, label %bb.d, !llvm.loop !1167

_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i: ; preds = %bb.d
  store ptr %i.ap, ptr %2, align 8, !tbaa !100
  invoke void @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.r)
          to label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit unwind label %bb.e, !inline_history !1168

bb.e:                                             ; preds = %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = tail call ptr @__cxa_begin_catch(ptr %i.ay) #20 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #20, !inline_history !1169
  unreachable

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit: ; preds = %.critedge, %.preheader58, %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i
  %.375 = phi ptr [ null, %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i ], [ %i.r, %.preheader58 ], [ %i.r, %.critedge ]
  ret ptr %.375
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !95, !range !105, !noundef !103
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !94     ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.g = atomicrmw and ptr %i.f, i32 -401 seq_cst, align 4 ; 2 uses
  %i.h = and i32 %i.g, -401
  store i32 %i.h, ptr %i.b, align 4, !tbaa !87
  %i.i = and i32 %i.g, 15
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.d, !prof !86

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i unwind label %bb.h

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.c, align 8, !tbaa !95
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, %bb.b, %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !95, !range !105, !noundef !103
  store ptr null, ptr %1, align 8, !tbaa !94
  store i8 0, ptr %i.k, align 8, !tbaa !95
  %i.m = load ptr, ptr %0, align 8, !tbaa !1174   ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !1174
  %i.n = load i8, ptr %i.c, align 8, !tbaa !138, !range !105, !noundef !103
  store i8 %i.l, ptr %i.c, align 8, !tbaa !138
  %i.o = trunc nuw i8 %i.n to i1
  %.not.i.i = icmp ne ptr %i.m, null
  %or.cond.not = select i1 %i.o, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %bb.e, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.p = atomicrmw and ptr %i.m, i32 -401 seq_cst, align 4 ; 2 uses
  %i.q = and i32 %i.p, -401
  store i32 %i.q, ptr %i.a, align 4, !tbaa !87
  %i.r = and i32 %i.p, 15
  %.not.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.f, !prof !86

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.g

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #33
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  store ptr null, ptr %1, align 8, !tbaa !94
  store i8 0, ptr %i.k, align 8, !tbaa !95
  ret ptr %0

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !95, !range !105, !noundef !103
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !95
  %i.i = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %1) #20 ; 0 uses
  %i.j = load i8, ptr %i.h, align 8, !tbaa !95, !range !105, !noundef !103
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.m = atomicrmw and ptr %i.l, i32 -401 seq_cst, align 4 ; 2 uses
  %i.n = and i32 %i.m, -401
  store i32 %i.n, ptr %i.b, align 4, !tbaa !87
  %i.o = and i32 %i.m, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.e, !prof !86

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.f

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit: ; preds = %bb.b, %bb.c, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.r = load i8, ptr %i.d, align 8, !tbaa !95, !range !105, !noundef !103
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit
  call void @_ZSt20__throw_system_errori(i32 noundef 1) #35
  unreachable

bb.h:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEE6unlockEv.exit
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !94   ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.u = atomicrmw and ptr %i.t, i32 -401 seq_cst, align 4 ; 2 uses
  %i.v = and i32 %i.u, -401
  store i32 %i.v, ptr %i.a, align 4, !tbaa !87
  %i.w = and i32 %i.u, 15
  %.not.i.i.i1 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i1, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.j, !prof !86

bb.j:                                             ; preds = %bb.i
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.d, align 8, !tbaa !95
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !125
  %.not.i2 = icmp eq i16 %i.y, 0
  br i1 %.not.i2, label %bb.k, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, !prof !45

bb.k:                                             ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  call void @_ZN5folly19shared_mutex_detail26throwOperationNotPermittedEv() #35
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !124
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 2 dereferenceable(4) %i.x)
  store i32 0, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ab, align 8, !tbaa !142
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #31 section ".text.startup" comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE6uniqueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE6uniqueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_17ThreadCachedArena17ThreadLocalPtrTagEvE6uniqueE, align 8
  tail call void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_17ThreadCachedArena17ThreadLocalPtrTagEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS7_IJSA_EEENS7_IJSC_EEEE3arg) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_() #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!962 = !{!961, !954, !238}
!963 = !DISubroutineType(types: !962)
!964 = !DISubprogram(name: "operator=", linkageName: "_ZNSaIcEaSERKS_", scope: !181, file: !950, line: 172, type: !963, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DISubprogram(name: "~allocator", linkageName: "_ZNSaIcED4Ev", scope: !181, file: !950, line: 184, type: !956, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !{!221, !954, !211}
!967 = !DISubroutineType(types: !966)
!968 = !DISubprogram(name: "allocate", linkageName: "_ZNSaIcE8allocateEm", scope: !181, file: !950, line: 189, type: !967, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !{null, !954, !221, !211}
!970 = !DISubroutineType(types: !969)
!971 = !DISubprogram(name: "deallocate", linkageName: "_ZNSaIcE10deallocateEPcm", scope: !181, file: !950, line: 203, type: !970, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!972 = !{!953, !957, !960, !964, !965, !968, !971}
!973 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "c7892ebb1170c1f49c5be98396a83230")
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!975 = !{null, !974}
!976 = !DISubroutineType(types: !975)
!977 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIcEC4Ev", scope: !180, file: !973, line: 88, type: !976, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!979 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !978, size: 64)
!980 = !{null, !974, !979}
!981 = !DISubroutineType(types: !980)
!982 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIcEC4ERKS0_", scope: !180, file: !973, line: 92, type: !981, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !180, size: 64)
!984 = !{!983, !974, !979}
!985 = !DISubroutineType(types: !984)
!986 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__new_allocatorIcEaSERKS0_", scope: !180, file: !973, line: 100, type: !985, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !180, file: !973, line: 67, baseType: !211, flags: DIFlagPublic)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!990 = !{!221, !974, !987, !989}
!991 = !DISubroutineType(types: !990)
!992 = !DISubprogram(name: "allocate", linkageName: "_ZNSt15__new_allocatorIcE8allocateEmPKv", scope: !180, file: !973, line: 126, type: !991, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !{null, !974, !221, !987}
!994 = !DISubroutineType(types: !993)
!995 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt15__new_allocatorIcE10deallocateEPcm", scope: !180, file: !973, line: 156, type: !994, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!997 = !{!987, !996}
!998 = !DISubroutineType(types: !997)
!999 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNKSt15__new_allocatorIcE11_M_max_sizeEv", scope: !180, file: !973, line: 230, type: !998, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !{!977, !982, !986, !992, !995, !999}
!1001 = !DITemplateTypeParameter(name: "_Tp", type: !220)
!1002 = !{!1001}
!1003 = !DISubrange(count: 16)
!1004 = !{!1003}
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !1004)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_M_local_buf", scope: !183, file: !205, line: 206, baseType: !1005, size: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_M_allocated_capacity", scope: !183, file: !205, line: 207, baseType: !214, size: 64)
!1008 = !{!1006, !1007}
!1009 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !184, baseType: !282, extraData: i32 0)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_M_p", scope: !184, file: !205, line: 196, baseType: !224, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1012 = !{null, !1011, !224, !238}
!1013 = !DISubroutineType(types: !1012)
!1014 = !DISubprogram(name: "_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC4EPcRKS3_", scope: !184, file: !205, line: 188, type: !1013, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !181, size: 64)
!1016 = !{null, !1011, !224, !1015}
!1017 = !DISubroutineType(types: !1016)
!1018 = !DISubprogram(name: "_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC4EPcOS3_", scope: !184, file: !205, line: 192, type: !1017, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1019 = !{!1009, !1010, !1014, !1018}
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !185, file: !208, line: 431, baseType: !181)
!1021 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1020, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !208, line: 452, baseType: !211)
!1023 = !{!222, !1021, !1022}
!1024 = !DISubroutineType(types: !1023)
!1025 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_m", scope: !185, file: !208, line: 481, type: !1024, scopeLine: 481, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !208, line: 446, baseType: !989)
!1027 = !{!222, !1021, !1022, !1026}
!1028 = !DISubroutineType(types: !1027)
!1029 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_mPKv", scope: !185, file: !208, line: 496, type: !1028, scopeLine: 496, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1030 = !{null, !1021, !222, !1022}
!1031 = !DISubroutineType(types: !1030)
!1032 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm", scope: !185, file: !208, line: 516, type: !1031, scopeLine: 516, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1034 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1033, size: 64)
!1035 = !{!212, !1034}
!1036 = !DISubroutineType(types: !1035)
!1037 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_", scope: !185, file: !208, line: 571, type: !1036, scopeLine: 571, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1038 = !{!1020, !1034}
!1039 = !DISubroutineType(types: !1038)
!1040 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_", scope: !185, file: !208, line: 587, type: !1039, scopeLine: 587, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1041 = !{!1025, !1029, !1032, !1037, !1040}
!1042 = !DITemplateTypeParameter(name: "_Alloc", type: !181)
!1043 = !{!1042}
!1044 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !186, baseType: !185, extraData: i32 0)
!1045 = !{!181, !238}
!1046 = !DISubroutineType(types: !1045)
!1047 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_", scope: !186, file: !207, line: 97, type: !1046, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1048 = !{null, !961, !961}
!1049 = !DISubroutineType(types: !1048)
!1050 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE10_S_on_swapERS1_S3_", scope: !186, file: !207, line: 101, type: !1049, scopeLine: 101, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1051 = !{!266}
!1052 = !DISubroutineType(types: !1051)
!1053 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv", scope: !186, file: !207, line: 105, type: !1052, scopeLine: 105, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1054 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_move_assignEv", scope: !186, file: !207, line: 109, type: !1052, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1055 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE20_S_propagate_on_swapEv", scope: !186, file: !207, line: 113, type: !1052, scopeLine: 113, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1056 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv", scope: !186, file: !207, line: 117, type: !1052, scopeLine: 117, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1057 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_nothrow_moveEv", scope: !186, file: !207, line: 121, type: !1052, scopeLine: 121, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1058 = !{!1044, !1047, !1050, !1053, !1054, !1055, !1056, !1057}
!1059 = !DITemplateTypeParameter(type: !220, defaulted: true)
!1060 = !{!1042, !1059}
!1061 = !DITemplateTypeParameter(name: "_Alloc", type: !181, defaulted: true)
!1062 = !{!897, !898, !1061}
!1063 = !DINamespace(name: "_V2", scope: !197, exportSymbols: true)
!1064 = !{!191}
!1065 = !{!193}
!1066 = distinct !{!1066, !53}
!1067 = distinct !{!1067, !53}
!1068 = distinct !{!1068, !53}
!1069 = distinct !{!1069, !53}
!1070 = distinct !{!1070, !53}
!1071 = distinct !{!1071, !53}
!1072 = distinct !{!1072, !53}
!1073 = distinct !{!1073, !53}
!1074 = distinct !{!1074, !53}
!1075 = distinct !{!1075, !53}
!1076 = distinct !{!1076, !53}
!1077 = distinct !{!1077, !53}
!1078 = !{!"_ZTSSt5arrayIhLm15EE", !12, i64 0}
!1079 = !{!"_ZTSN5folly3f146detail17F14EmptyTagVectorE", !1078, i64 0, !12, i64 15}
!1080 = !{!1079, !12, i64 15}
!1081 = !{!107, !16, i64 0}
!1082 = !{!97, !96, i64 16}
!1083 = distinct !{!1083, i1 false, !"_ZN5folly9makeGuardIZNS_14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE5resetIZNS3_24allocateThreadLocalArenaEvE3$_0EEvPS2_RKT_EUlvE_EENS_6detail14ScopeGuardImplINSt5decayIS9_E4typeELb1EEEOS9_"}
!1084 = distinct !{!1084, !1083, !"_ZN5folly9makeGuardIZNS_14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE5resetIZNS3_24allocateThreadLocalArenaEvE3$_0EEvPS2_RKT_EUlvE_EENS_6detail14ScopeGuardImplINSt5decayIS9_E4typeELb1EEEOS9_: argument 0"}
!1085 = distinct !{!1085, i1 false, !"_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE12getForkGuardEv"}
!1086 = distinct !{!1086, !1085, !"_ZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE12getForkGuardEv: argument 0"}
!1087 = distinct !{!1087, i1 false, !"_ZN5folly9makeGuardIZNS_18threadlocal_detail14ElementWrapper3setIPNS_8SysArenaEZNS_17ThreadCachedArena24allocateThreadLocalArenaEvE3$_0EEvT_RKT0_EUlvE_EENS_6detail14ScopeGuardImplINSt5decayIS8_E4typeELb1EEEOS8_"}
!1088 = distinct !{!1088, !1087, !"_ZN5folly9makeGuardIZNS_18threadlocal_detail14ElementWrapper3setIPNS_8SysArenaEZNS_17ThreadCachedArena24allocateThreadLocalArenaEvE3$_0EEvT_RKT0_EUlvE_EENS_6detail14ScopeGuardImplINSt5decayIS8_E4typeELb1EEEOS8_: argument 0"}
!1089 = !{!1084}
!1090 = !{!120, !120, i64 0}
!1091 = !{!1086}
!1092 = !{!1088}
!1093 = !{!"_ZTSSt14_Function_base", !12, i64 0, !22, i64 16}
!1094 = !{!"_ZTSSt8functionIFvPvN5folly18TLPDestructionModeEEE", !1093, i64 0, !22, i64 24}
!1095 = !{!1094, !22, i64 24}
!1096 = !{!1093, !22, i64 16}
!1097 = !{!131, !16, i64 8}
!1098 = !{!131, !22, i64 0}
!1099 = distinct !{null, null}
!1100 = !{!"_ZTSZN5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE5resetIZNS2_24allocateThreadLocalArenaEvE3$_0EEvPS1_RKT_EUlvE_", !120, i64 0, !22, i64 8}
!1101 = !{!1100, !120, i64 0}
!1102 = distinct !{null}
!1103 = distinct !{!1103, !53}
!1104 = distinct !{null}
!1105 = !{!"_ZTSZN5folly18threadlocal_detail14ElementWrapper3setIPNS_8SysArenaEZNS_17ThreadCachedArena24allocateThreadLocalArenaEvE3$_0EEvT_RKT0_EUlvE_", !22, i64 0, !120, i64 8}
!1106 = !{!1105, !22, i64 0}
!1107 = !{!1105, !120, i64 8}
!1108 = !{!"_ZTSN5folly18TLPDestructionModeE", !12, i64 0}
!1109 = !{!1108, !1108, i64 0}
!1110 = !{!"p1 _ZTSSt9type_info", !22, i64 0}
!1111 = !{!1110, !1110, i64 0}
!1112 = distinct !{!1112, i1 false, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!1113 = distinct !{!1113, !1112, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!1114 = !{!1113}
!1115 = distinct !{!1115, !53}
!1116 = !{!133, !133, i64 0}
!1117 = !{!"_ZTSN5boost9intrusive6detail18ebo_functor_holderIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_vLb0EEE", !134, i64 0}
!1118 = !{!"p1 _ZTSN5boost9intrusive8mhtraitsIN5folly5ArenaINS2_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS7_4linkEEEEE", !22, i64 0}
!1119 = !{!"_ZTSN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEE", !1117, i64 0, !1118, i64 8}
!1120 = !{!1119, !1118, i64 8}
!1121 = !{!"_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE1ENS0_17slist_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE1ELNS0_14base_hook_typeE0EEE", !24, i64 0}
!1122 = !{!"_ZTSN5boost9intrusive17slist_member_hookIJEEE", !1121, i64 0}
!1123 = !{!"_ZTSN5folly5ArenaINS_12SysAllocatorIcEEE10LargeBlockE", !1122, i64 0, !16, i64 8}
!1124 = !{!1123, !16, i64 8}
!1125 = distinct !{!1125, !53}
!1126 = !{!134, !133, i64 0}
!1127 = distinct !{!1127, i1 false, !"_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb0EEE"}
!1128 = distinct !{!1128, !1127, !"_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb0EEE: argument 0"}
!1129 = distinct !{!1129, i1 false, !"_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb1EEENSD_ISB_Lb0EEE"}
!1130 = distinct !{!1130, !1129, !"_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb1EEENSD_ISB_Lb0EEE: argument 0"}
!1131 = distinct !{!1131, i1 false, !"_ZNK5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb1EEESE_"}
!1132 = distinct !{!1132, !1131, !"_ZNK5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb1EEESE_: argument 0"}
!1133 = distinct !{!1133, i1 false, !"_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb0EEE"}
!1134 = distinct !{!1134, !1133, !"_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb0EEE: argument 0"}
!1135 = distinct !{!1135, i1 false, !"_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb1EEENSD_ISB_Lb0EEE"}
!1136 = distinct !{!1136, !1135, !"_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb1EEENSD_ISB_Lb0EEE: argument 0"}
!1137 = distinct !{!1137, i1 false, !"_ZNK5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb1EEESE_"}
!1138 = distinct !{!1138, !1137, !"_ZNK5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE8previousENS0_14slist_iteratorISB_Lb1EEESE_: argument 0"}
!1139 = !{!1132, !1130, !1128}
!1140 = !{!1138, !1136, !1134}
!1141 = !{!38, !16, i64 72}
!1142 = distinct !{!1142, i1 false, !"_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv"}
!1143 = distinct !{!1143, !1142, !"_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE16accessAllThreadsEv: argument 0"}
!1144 = distinct !{!1144, i1 false, !"_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv"}
!1145 = distinct !{!1145, !1144, !"_ZNK5folly14ThreadLocalPtrINS_8SysArenaENS_17ThreadCachedArena17ThreadLocalPtrTagEvE8Accessor5beginEv: argument 0"}
!1146 = distinct !{!1146, !53}
!1147 = distinct !{!1147, i1 false, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv"}
!1148 = distinct !{!1148, !1147, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedINS_8SysArenaENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!1149 = !{!1143}
!1150 = !{!1145}
!1151 = !{!96, !96, i64 0}
!1152 = !{!"_ZTSN5folly18threadlocal_detail14ThreadEntrySet7ElementE", !131, i64 0, !99, i64 16}
!1153 = !{!1152, !22, i64 0}
!1154 = !{!1148}
!1155 = distinct !{!1155, i1 false, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!1156 = distinct !{!1156, !1155, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!1157 = !{!139, !139, i64 0}
!1158 = !{!141, !139, i64 0}
!1159 = !{i64 8}
!1160 = !{!1156}
!1161 = distinct !{!1161, !53}
!1162 = distinct !{!1162, !53, !1170, !1171}
!1163 = distinct !{!1163, !1172}
!1164 = distinct !{!1164, !53, !1170}
!1165 = distinct !{!1165, i1 false, !"_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4makeEv"}
!1166 = distinct !{!1166, !1165, !"_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4makeEv: argument 0"}
!1167 = distinct !{!1167, !53}
!1168 = distinct !{null}
!1169 = distinct !{null, null}
!1170 = !{!"llvm.loop.isvectorized", i32 1}
!1171 = !{!"llvm.loop.unroll.runtime.disable"}
!1172 = !{!"llvm.loop.unroll.disable"}
!1173 = !{!1166}
!1174 = !{!92, !92, i64 0}
end_hunk_1
