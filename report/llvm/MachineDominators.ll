Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineDominators?download=true
inline.NumInlined: 3558
inline.NumDeleted: 1337
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPS1_S3_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66 ; 2 uses
  store ptr %i.ae, ptr %.0.i.i.i, align 8, !tbaa !68
  %.not11.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not11.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.ad, align 8, !tbaa !66
  br label %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %.0.i.i.i, ptr %i.af, align 8, !tbaa !61
  br label %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i

_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i: ; preds = %bb.h, %bb.g
  store ptr %i.v, ptr %i.x, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !61
  store ptr %i.l, ptr %i.ah, align 8, !tbaa !68
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !61
  tail call void @_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11UpdateLevelEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  br label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit

_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit3, %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE9eraseNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.b = load i32, ptr %i.a, align 4, !tbaa !151
  %i.c = add i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = zext i32 %i.c to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.i, align 8, !tbaa !256
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %i.m = load ptr, ptr %.0.i, align 8, !tbaa !68  ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  br i1 %.not.i, label %bb.d, label %bb.c, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 2 uses
  store ptr %i.p, ptr %.0.i, align 8, !tbaa !68
  %.not11.i = icmp eq ptr %i.p, null
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.o, align 8, !tbaa !66
  br label %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %.0.i, ptr %i.q, align 8, !tbaa !61
  br label %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit

_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit: ; preds = %bb.f, %bb.e, %bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE10splitBlockEPS1_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE5SplitIPS1_EEvNS_11GraphTraitsIT_E7NodeRefE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE5SplitIPS1_EEvNS_11GraphTraitsIT_E7NodeRefE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.39", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !258  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !75   ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.k, align 4, !tbaa !74
  %.idx = shl nuw nsw i64 %i.h, 3
  %i.l = icmp ugt i32 %i.g, 4
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.thread: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.i, i64 noundef %i.h, i64 noundef 8) #19
  %.pre8.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !75
  %i.m = zext i32 %.pre8.pre.i.i to i64
  br label %bb.b

_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.thread, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i
  %.pre8.i.i108 = phi i64 [ %i.m, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i ]
  %i.n = load ptr, ptr %2, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre8.i.i108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 8 %i.e, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !75
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i, %bb.b
  %i.p = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.q = add i32 %i.p, %i.g                       ; 2 uses
  store i32 %i.q, ptr %i.j, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !75   ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx77 = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx77
  %.not64 = icmp eq i32 %i.u, 0
  br i1 %.not64, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread
  %.03165 = phi ptr [ %i.s, %.lr.ph ], [ %i.ak, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread ] ; 2 uses
  %i.z = load ptr, ptr %.03165, align 8, !tbaa !258 ; 3 uses
  %.not35 = icmp eq ptr %i.z, %1
  br i1 %.not35, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %i.c, ptr noundef %i.z)
  br i1 %i.aa, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 220
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !151
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !75
  %i.af = icmp ugt i32 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit: ; preds = %bb.e
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68
  %.not57 = icmp eq ptr %i.aj, null
  br i1 %.not57, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread: ; preds = %bb.e, %bb.c, %bb.d, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.03165, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.w
  br i1 %.not, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit, label %bb.c

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread
  %.not.lcssa.ph = phi i1 [ true, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread ], [ false, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit ]
  %.pre = load i32, ptr %i.j, align 8, !tbaa !75
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit
  %i.al = phi i32 [ %i.q, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit ], [ %.pre, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit ] ; 4 uses
  %.not.lcssa = phi i1 [ true, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit ], [ %.not.lcssa.ph, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge.loopexit ]
  %.not78 = icmp eq i32 %i.al, 0
  br i1 %.not78, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge
  %i.am = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !75 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %wide.trip.count = zext i32 %i.al to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph70, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39.thread
  %indvars.iv83 = phi i64 [ 1, %.lr.ph70 ], [ %indvars.iv.next84, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39.thread ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !258 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 220
  %i.at = load i32, ptr %i.as, align 4, !tbaa !151
  %i.au = add i32 %i.at, 1                        ; 3 uses
  %i.av = icmp ugt i32 %i.ao, %i.au
  br i1 %i.av, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39.thread

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39: ; preds = %bb.f
  %i.aw = zext i32 %i.au to i64
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !53 ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !68
  %.not58 = icmp eq ptr %i.az, null
  br i1 %.not58, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39
  %i.ba = trunc nuw i64 %indvars.iv to i32
  %.12671 = add nuw i32 %i.ba, 1
  %i.bb = icmp ugt i32 %i.al, %.12671
  br i1 %i.bb, label %.lr.ph74.a, label %._crit_edge75

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39.thread: ; preds = %bb.f, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br i1 %exitcond.not, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %bb.f, !llvm.loop !377

.lr.ph74.a:                                       ; preds = %.preheader, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit ], [ %indvars.iv83, %.preheader ] ; 2 uses
  %.12872 = phi ptr [ %.229, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit ], [ %i.ar, %.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv86
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !258 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 220
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !151
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  %i.bh = icmp ugt i32 %i.ao, %i.bg
  br i1 %i.bh, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit40, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit40: ; preds = %.lr.ph74.a
  %i.bi = zext i32 %i.bg to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68
  %.not59 = icmp eq ptr %i.bk, null
  br i1 %.not59, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit40
  %i.bl = getelementptr inbounds nuw i8, ptr %.12872, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !259
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 304
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !260 ; 3 uses
  %i.bp = icmp ne ptr %.12872, %i.bo
  %i.bq = icmp ne ptr %i.bd, %i.bo
  %or.cond.not.i = and i1 %i.bp, %i.bq
  br i1 %or.cond.not.i, label %bb.h, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %.12872, i64 220
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !151
  %i.bt = add i32 %i.bs, 1                        ; 2 uses
  %i.bu = icmp ugt i32 %i.ao, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i

bb.i:                                             ; preds = %bb.h
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !68
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i: ; preds = %bb.i, %bb.h
  %i.by = phi ptr [ %i.bx, %bb.i ], [ null, %bb.h ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bi
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %.not26.i = icmp eq ptr %i.by, %i.ca
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.cb = phi i32 [ %i.ch, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.028.i = phi ptr [ %spec.select23.i, %.lr.ph.i ], [ %i.ca, %.lr.ph.preheader.i ] ; 2 uses
  %.02127.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.by, %.lr.ph.preheader.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02127.i, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !60 ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %i.cb               ; 2 uses
  %spec.select.i = select i1 %i.ce, ptr %.028.i, ptr %.02127.i
  %spec.select23.i = select i1 %i.ce, ptr %.02127.i, ptr %.028.i ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !59 ; 3 uses
  %.not.i = icmp eq ptr %i.cg, %spec.select23.i
  %i.ch = call i32 @llvm.umin.i32(i32 %i.cd, i32 %i.cb)
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i
  %.021.lcssa.i = phi ptr [ %i.by, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i ], [ %i.cg, %.lr.ph.i ]
  %i.ci = load ptr, ptr %.021.lcssa.i, align 8, !tbaa !58
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit: ; preds = %.lr.ph74.a, %._crit_edge.i, %bb.g, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit40
  %.229 = phi ptr [ %i.bo, %bb.g ], [ %.12872, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit40 ], [ %i.ci, %._crit_edge.i ], [ %.12872, %.lr.ph74.a ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next87 to i32
  %exitcond89.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond89.not, label %._crit_edge75.loopexit, label %.lr.ph74.a, !llvm.loop !378

._crit_edge75.loopexit:                           ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.229, i64 220
  %.pre90 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !151
  %.pre91 = add i32 %.pre90, 1
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge75.loopexit, %.preheader
  %.pre-phi = phi i32 [ %.pre91, %._crit_edge75.loopexit ], [ %i.au, %.preheader ] ; 2 uses
  %i.cj = icmp ugt i32 %i.ao, %.pre-phi
  br i1 %i.cj, label %bb.j, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE11addNewBlockEPS1_S3_.exit

bb.j:                                             ; preds = %._crit_edge75
  %i.ck = zext i32 %.pre-phi to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !68
  br label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE11addNewBlockEPS1_S3_.exit

_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE11addNewBlockEPS1_S3_.exit: ; preds = %._crit_edge75, %bb.j
  %i.cn = phi ptr [ %i.cm, %bb.j ], [ null, %._crit_edge75 ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store i8 0, ptr %i.co, align 8, !tbaa !256
  %i.cp = call noundef ptr @_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE10createNodeEPS1_PNS_15DomTreeNodeBaseIS1_EE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, ptr noundef %i.cn) ; 3 uses
  br i1 %.not.lcssa, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit: ; preds = %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE11addNewBlockEPS1_S3_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !151
  %i.cs = add i32 %i.cr, 1                        ; 2 uses
  %i.ct = load i32, ptr %i.an, align 8, !tbaa !75
  %i.cu = icmp ugt i32 %i.ct, %i.cs
  call void @llvm.assume(i1 %i.cu)
  %i.cv = zext i32 %i.cs to i64
  %i.cw = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !68 ; 5 uses
  store i8 0, ptr %i.co, align 8, !tbaa !256
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !59 ; 3 uses
  %i.db = icmp eq ptr %i.da, %i.cp
  br i1 %i.db, label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ %i.dc, %bb.k ], [ %i.de, %bb.l ] ; 3 uses
  %i.dd = load ptr, ptr %.0.i.i.i, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.dd, %i.cy
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  br i1 %.not.i.i.i42, label %bb.m, label %bb.l, !llvm.loop !0

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !66 ; 2 uses
  store ptr %i.dg, ptr %.0.i.i.i, align 8, !tbaa !68
  %.not11.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not11.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.df, align 8, !tbaa !66
  br label %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store ptr %.0.i.i.i, ptr %i.dh, align 8, !tbaa !61
  br label %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i

_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i: ; preds = %bb.o, %bb.n
  store ptr %i.cp, ptr %i.cz, align 8, !tbaa !59
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !61
  store ptr %i.cy, ptr %i.dj, align 8, !tbaa !68
  store ptr %i.df, ptr %i.di, align 8, !tbaa !61
  call void @_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11UpdateLevelEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cy)
  br label %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit

_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit39.thread, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE20isReachableFromEntryEPKS1_.exit._crit_edge, %_ZN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEE11removeChildEPS2_.exit.i.i, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit, %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE11addNewBlockEPS1_S3_.exit
  %i.dk = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.i
  br i1 %i.dl, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit
  call void @free(ptr noundef %i.dk) #19
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit: ; preds = %_ZN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE24changeImmediateDominatorEPNS_15DomTreeNodeBaseIS1_EES5_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 21 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 62
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.2, i64 noundef 62) #19 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !276
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.d, ptr noundef nonnull align 1 dereferenceable(62) @.str.2, i64 62, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !276
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 62 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !276
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !275
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, 24
end_hunk_0
