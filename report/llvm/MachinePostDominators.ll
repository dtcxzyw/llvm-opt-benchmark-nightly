Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachinePostDominators?download=true
inline.NumInlined: 3623
inline.NumDeleted: 1386
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE9eraseNodeEPS1_:bb.a

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.l
  %i.am = and i32 %i.t, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit
  %.pre-phi56.i.i.i.i = phi i32 [ %i.am, %._crit_edge.loopexit.i.i.i.i ], [ %i.t, %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.r, %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %bb.p [
    i32 3, label %bb.m
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !228
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.n
  %.1.i.i.i.i = phi ptr [ %i.ap, %bb.n ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aq = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !228
  %i.ar = icmp eq ptr %i.aq, %1
  br i1 %i.ar, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.o
  %.2.i.i.i.i = phi ptr [ %i.as, %bb.o ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.at = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !228
  %i.au = icmp eq ptr %i.at, %1
  br i1 %i.au, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit29: ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit31: ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit: ; preds = %bb.h, %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit29, %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit31, %bb.m, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i, %bb.p
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %i.v, %bb.p ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.m ], [ %i.ax, %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit31 ], [ %i.av, %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.aw, %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit.loopexit.split.loop.exit29 ], [ %.02946.i.i.i.i, %bb.h ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u ; 2 uses
  %.not8 = icmp eq ptr %.028.i.i.i.i, %i.ay
  br i1 %.not8, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %.028.i.i.i.i, align 8, !tbaa !228
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !228
  store ptr %i.bb, ptr %.028.i.i.i.i, align 8, !tbaa !228
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !228
  %i.bc = add i32 %i.t, -1
  store i32 %i.bc, ptr %i.s, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4llvm4findIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEES3_EEDaOT_RKT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE10splitBlockEPS1_(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE5SplitINS_7InverseIPS1_EEEEvNS_11GraphTraitsIT_E7NodeRefE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE5SplitINS_7InverseIPS1_EEEEvNS_11GraphTraitsIT_E7NodeRefE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !228  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.k, align 4, !tbaa !215
  %.idx = shl nuw nsw i64 %i.h, 3
  %i.l = icmp ugt i32 %i.g, 4
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.thread: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.i, i64 noundef %i.h, i64 noundef 8) #17
  %.pre8.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !27
  %i.m = zext i32 %.pre8.pre.i.i to i64
  br label %bb.b

_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.thread, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i
  %.pre8.i.i130 = phi i64 [ %i.m, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i ]
  %i.n = load ptr, ptr %2, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre8.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 8 %i.e, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !27
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i, %bb.b
  %i.p = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.q = add i32 %i.p, %i.g                       ; 2 uses
  store i32 %i.q, ptr %i.j, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.u = load i32, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx98 = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx98
  %.not85 = icmp eq i32 %i.u, 0
  br i1 %.not85, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit.thread
  %.03186 = phi ptr [ %i.s, %.lr.ph ], [ %i.ak, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit.thread ] ; 2 uses
  %i.z = load ptr, ptr %.03186, align 8, !tbaa !228 ; 4 uses
  %.not35 = icmp eq ptr %i.z, %1
  br i1 %.not35, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %i.c, ptr noundef %i.z)
  br i1 %i.aa, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i39 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i39, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 220
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !110
  %i.ad = add i32 %i.ac, 1
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i, %bb.e
  %.sroa.0.0.extract.trunc10.i.i = phi i32 [ %i.ad, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !27
  %i.af = icmp ugt i32 %i.ae, %.sroa.0.0.extract.trunc10.i.i
  br i1 %i.af, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i
  %i.ag = zext i32 %.sroa.0.0.extract.trunc10.i.i to i64
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56
  %.not78 = icmp eq ptr %i.aj, null
  br i1 %.not78, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit.thread, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit.thread: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i, %bb.c, %bb.d, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.03186, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.w
  br i1 %.not, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit, label %bb.c

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit.thread
  %.not.lcssa.ph = phi i1 [ true, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit.thread ], [ false, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit ]
  %.pre = load i32, ptr %i.j, align 8, !tbaa !27
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit
  %i.al = phi i32 [ %i.q, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit ], [ %.pre, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit ] ; 4 uses
  %.not.lcssa = phi i1 [ true, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit ], [ %.not.lcssa.ph, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit ]
  %.not99 = icmp eq i32 %i.al, 0
  br i1 %.not99, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %.lr.ph91

.lr.ph91:                                         ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge
  %i.am = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !27 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.trip.count = zext i32 %i.al to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph91, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44.thread ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !228 ; 4 uses
  %.not.i.i.i40 = icmp eq ptr %i.ar, null         ; 2 uses
  br i1 %.not.i.i.i40, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i42, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i41

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i41: ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 220
  %i.at = load i32, ptr %i.as, align 4, !tbaa !110
  %i.au = add i32 %i.at, 1
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i42

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i42: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i41, %bb.f
  %.sroa.0.0.extract.trunc10.i.i43 = phi i32 [ %i.au, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i41 ], [ 0, %bb.f ] ; 2 uses
  %i.av = icmp ugt i32 %i.ao, %.sroa.0.0.extract.trunc10.i.i43
  br i1 %i.av, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44.thread

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i42
  %i.aw = zext i32 %.sroa.0.0.extract.trunc10.i.i43 to i64
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !26 ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !56
  %.not79 = icmp eq ptr %i.az, null
  br i1 %.not79, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44.thread, label %bb.g

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44.thread: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i42, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %bb.f, !llvm.loop !354

bb.g:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44
  br i1 %.not.i.i.i40, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ba = trunc nuw i64 %indvars.iv to i32
  %.12692 = add nuw i32 %i.ba, 1                  ; 2 uses
  %i.bb = icmp ugt i32 %i.al, %.12692
  br i1 %i.bb, label %.lr.ph95, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i55

.lr.ph95:                                         ; preds = %.preheader
  %3 = zext i32 %.12692 to i64
  br label %.lr.ph95.a

.lr.ph95.a:                                       ; preds = %.lr.ph95, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49.thread
  %indvars.iv107 = phi i64 [ %3, %.lr.ph95 ], [ %indvars.iv.next108, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49.thread ] ; 2 uses
  %.12893 = phi ptr [ %i.ar, %.lr.ph95 ], [ %.229, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49.thread ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv107
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.bd, null         ; 2 uses
  br i1 %.not.i.i.i45, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i47, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i46

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i46: ; preds = %.lr.ph95.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 220
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !110
  %i.bg = add i32 %i.bf, 1
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i47

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i47: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i46, %.lr.ph95.a
  %.sroa.0.0.extract.trunc10.i.i48 = phi i32 [ %i.bg, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i46 ], [ 0, %.lr.ph95.a ] ; 2 uses
  %i.bh = icmp ugt i32 %i.ao, %.sroa.0.0.extract.trunc10.i.i48
  br i1 %i.bh, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49.thread

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i47
  %i.bi = zext i32 %.sroa.0.0.extract.trunc10.i.i48 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !56
  %.not80 = icmp eq ptr %i.bk, null
  br i1 %.not80, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49
  %.not.i.i.i50 = icmp eq ptr %.12893, null
  br i1 %.not.i.i.i50, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52.thread, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52: ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.12893, i64 220
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !110
  %i.bn = add i32 %i.bm, 1                        ; 2 uses
  %i.bo = icmp ugt i32 %i.ao, %i.bn
  br i1 %i.bo, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52.thread, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52.thread: ; preds = %bb.h, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52
  %.sroa.0.0.extract.trunc10.i.i5374 = phi i32 [ %i.bn, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52 ], [ 0, %bb.h ]
  %i.bp = zext i32 %.sroa.0.0.extract.trunc10.i.i5374 to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !56
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52.thread, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52
  %i.bs = phi ptr [ %i.br, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52.thread ], [ null, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i52 ] ; 3 uses
  br i1 %.not.i.i.i45, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i.thread, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 220
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !110
  %i.bv = add i32 %i.bu, 1                        ; 2 uses
  %i.bw = icmp ugt i32 %i.ao, %i.bv
  br i1 %i.bw, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i.thread, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i.thread: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i
  %.sroa.0.0.extract.trunc10.i17.i76 = phi i32 [ %i.bv, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i ], [ 0, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i ]
  %i.bx = zext i32 %.sroa.0.0.extract.trunc10.i17.i76 to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !56
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i.thread, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i
  %i.ca = phi ptr [ %i.bz, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i.thread ], [ null, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i ] ; 3 uses
  %.not28.i = icmp eq ptr %i.bs, %i.ca
  br i1 %.not28.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !221
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.cb = phi i32 [ %i.ch, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.030.i = phi ptr [ %spec.select27.i, %.lr.ph.i ], [ %i.ca, %.lr.ph.preheader.i ] ; 2 uses
  %.02529.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.bs, %.lr.ph.preheader.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02529.i, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !221 ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %i.cb               ; 2 uses
  %spec.select.i = select i1 %i.ce, ptr %.030.i, ptr %.02529.i
  %spec.select27.i = select i1 %i.ce, ptr %.02529.i, ptr %.030.i ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !220 ; 3 uses
  %.not.i = icmp eq ptr %i.cg, %spec.select27.i
  %i.ch = call i32 @llvm.umin.i32(i32 %i.cd, i32 %i.cb)
  br i1 %.not.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit: ; preds = %.lr.ph.i, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i
  %.025.lcssa.i = phi ptr [ %i.bs, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i ], [ %i.cg, %.lr.ph.i ]
  %i.ci = load ptr, ptr %.025.lcssa.i, align 8, !tbaa !61
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49.thread

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49.thread: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i47, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit
  %.229 = phi ptr [ %i.ci, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit ], [ %.12893, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49 ], [ %.12893, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i47 ] ; 3 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next108 to i32
  %exitcond110.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond110.not, label %._crit_edge96, label %.lr.ph95.a, !llvm.loop !355

._crit_edge96:                                    ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit49.thread
  %.not.i.i.i54 = icmp eq ptr %.229, null
  br i1 %.not.i.i.i54, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i56, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i55

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i55: ; preds = %.preheader, %._crit_edge96
  %.128.lcssa133 = phi ptr [ %.229, %._crit_edge96 ], [ %i.ar, %.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.128.lcssa133, i64 220
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !110
  %i.cl = add i32 %i.ck, 1
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i56

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i56: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i55, %._crit_edge96
  %.sroa.0.0.extract.trunc10.i.i57 = phi i32 [ %i.cl, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i55 ], [ 0, %._crit_edge96 ] ; 2 uses
  %i.cm = icmp ugt i32 %i.ao, %.sroa.0.0.extract.trunc10.i.i57
  br i1 %i.cm, label %bb.i, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE11addNewBlockEPS1_S3_.exit

bb.i:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i56
  %i.cn = zext i32 %.sroa.0.0.extract.trunc10.i.i57 to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !56
  br label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE11addNewBlockEPS1_S3_.exit

_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE11addNewBlockEPS1_S3_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i56, %bb.i
  %i.cq = phi ptr [ %i.cp, %bb.i ], [ null, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i56 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i8 0, ptr %i.cr, align 8, !tbaa !222
  %i.cs = call noundef ptr @_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE10createNodeEPS1_PNS_15DomTreeNodeBaseIS1_EE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %1, ptr noundef %i.cq) ; 3 uses
  br i1 %.not.lcssa, label %bb.j, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit

bb.j:                                             ; preds = %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE11addNewBlockEPS1_S3_.exit
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i: ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !110
  %i.cv = add i32 %i.cu, 1
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i, %bb.j
  %.sroa.0.0.extract.trunc10.i = phi i32 [ %i.cv, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i ], [ 0, %bb.j ] ; 2 uses
  %i.cw = load i32, ptr %i.an, align 8, !tbaa !27
  %i.cx = icmp ugt i32 %i.cw, %.sroa.0.0.extract.trunc10.i
  call void @llvm.assume(i1 %i.cx)
  %i.cy = zext i32 %.sroa.0.0.extract.trunc10.i to i64
  %i.cz = load ptr, ptr %i.ap, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !56 ; 5 uses
  store i8 0, ptr %i.cr, align 8, !tbaa !222
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !220 ; 3 uses
  %i.de = icmp eq ptr %i.dd, %i.cs
  br i1 %i.de, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ %i.df, %bb.k ], [ %i.dh, %bb.l ] ; 3 uses
  %i.dg = load ptr, ptr %.0.i.i.i, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.dg, %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  br i1 %.not.i.i.i59, label %bb.m, label %bb.l, !llvm.loop !3

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 32 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !219 ; 2 uses
  store ptr %i.dj, ptr %.0.i.i.i, align 8, !tbaa !56
  %.not11.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not11.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.di, align 8, !tbaa !219
  br label %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store ptr %.0.i.i.i, ptr %i.dk, align 8, !tbaa !240
  br label %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i

_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i: ; preds = %bb.o, %bb.n
  store ptr %i.cs, ptr %i.dc, align 8, !tbaa !220
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cs, i64 40 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !240
  store ptr %i.db, ptr %i.dm, align 8, !tbaa !56
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !240
  call void @_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11UpdateLevelEv(ptr noundef nonnull align 8 dereferenceable(56) %i.db)
  br label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit

_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit44.thread, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE20isReachableFromEntryEPKS1_.exit._crit_edge, %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i, %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE11addNewBlockEPS1_S3_.exit, %bb.g
  %i.dn = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.i
  br i1 %i.do, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit
  call void @free(ptr noundef %i.dn) #17
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit: ; preds = %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

end_hunk_0
