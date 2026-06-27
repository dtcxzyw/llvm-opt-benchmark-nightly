inline.NumInlined: 478
inline.NumDeleted: 245
begin_hunk_0_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
  br label %_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv.exit

_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9, !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9, !noalias !72
  %i.r = load ptr, ptr %10, align 8, !tbaa !13    ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.neg.i.i
  %i.t = invoke noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(38) %i.s)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv.exit
  %i.u = load i16, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not.i.i9 = icmp eq i16 %i.u, 0
  br i1 %.not.i.i9, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %10, align 8, !tbaa !13    ; 7 uses
  switch i16 %i.u, label %bb.l [
    i16 1, label %bb.g
    i16 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = load atomic i32, ptr %i.v acquire, align 4
  %i.x = and i32 %i.w, 768
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  br i1 %i.z, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.aa = atomicrmw sub ptr %i.v, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ab = add i32 %i.aa, -2048                    ; 2 uses
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !3
  %i.ac = icmp ugt i32 %i.ab, 2047
  %i.ad = and i32 %i.aa, 16
  %.not.i.i.i.i21 = icmp eq i32 %i.ad, 0
  %or.cond.i.i.i = or i1 %i.ac, %.not.i.i.i.i21
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.j, !prof !65

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = load i16, ptr %i.i, align 2, !tbaa !22
  %i.af = zext i16 %i.ae to i64
  %i.ag = ptrtoint ptr %i.v to i64
  %.idx.i = shl nuw nsw i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.ai = cmpxchg ptr %i.ah, i64 %i.ag, i64 0 seq_cst seq_cst, align 8
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ak = atomicrmw sub ptr %i.v, i32 2048 seq_cst, align 4 ; 2 uses
  %i.al = add i32 %i.ak, -2048                    ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !3
  %i.am = icmp ugt i32 %i.al, 2047
  %i.an = and i32 %i.ak, 16
  %.not.i.i.i20 = icmp eq i32 %i.an, 0
  %or.cond.i.i = or i1 %i.am, %.not.i.i.i20
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.m, !prof !65

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #21
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.k, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br i1 %i.t, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.aq = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  br label %bb.bj

bb.p:                                             ; preds = %_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.bk

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.au = load i8, ptr %i.at, align 1, !tbaa !75, !range !73, !noundef !74
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.r

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.q
  %.0.in.pre.i.i = load i8, ptr %i.as, align 4, !tbaa !76, !range !73
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !23
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.s, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !35 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !36
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ba, 0
  br i1 %.not.i.i.i, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.bf = and i32 %i.ba, 2147483584               ; 3 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %.not37.i.i.not.i.i114.not = icmp eq i32 %i.bf, 0
  br i1 %.not37.i.i.not.i.i114.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i115, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.bg
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !78

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %indvars.iv.i.i115 = phi i64 [ %indvars.iv.next.i.i, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.bh = lshr exact i64 %indvars.iv.i.i115, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !80
  %i.bk = icmp eq i64 %i.bj, -1
  br i1 %i.bk, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !78

.critedge.i.i.i.i:                                ; preds = %bb.v, %bb.u
  %.not38.i.i.i.i = icmp eq i32 %i.ba, %i.bf
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i.i.i
  %i.bl = lshr i32 %i.ba, 6
  %i.bm = and i32 %i.ba, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.bn
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !80
  %.demorgan.i.i = or i64 %i.bq, %notmask.i40.i.i.i.i
  %i.br = icmp eq i64 %.demorgan.i.i, -1
  %i.bs = zext i1 %i.br to i16
  %i.bt = or disjoint i16 %i.bs, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.w, %.critedge.i.i.i.i, %bb.t, %bb.s, %bb.r
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.s ], [ 256, %bb.r ], [ 257, %bb.t ], [ 257, %.critedge.i.i.i.i ], [ %i.bt, %bb.w ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.as, align 4
  %i.bu = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.bu, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !23 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bw
  br i1 %i.bz, label %.lr.ph.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"

.lr.ph.i:                                         ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.y

bb.y:                                             ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", %.lr.ph.i
  %.14 = phi i8 [ 1, %.lr.ph.i ], [ %.15, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ] ; 3 uses
  %.014.i = phi i32 [ %i.by, %.lr.ph.i ], [ %i.cx, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ] ; 3 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !81
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %.014.i), !inline_history !83
  br i1 %i.cf, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.cg = load ptr, ptr %0, align 8, !tbaa !81
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 384
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef nonnull align 8 dereferenceable(16) ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %.014.i), !inline_history !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !84
  %i.ck = load i32, ptr %8, align 8, !tbaa !85    ; 3 uses
  %i.cl = icmp ult i32 %i.ck, 13
  %i.cm = load ptr, ptr %i.cb, align 8
  %i.cn = select i1 %i.cl, ptr %i.ca, ptr %i.cm   ; 2 uses
  %i.co = zext i32 %i.ck to i64                   ; 4 uses
  %i.cp = and i64 %i.co, 4294967264               ; 2 uses
  %.not.i.i4.i131 = icmp ult i32 %i.ck, 32
  br i1 %.not.i.i4.i131, label %.preheader.i.i, label %.lr.ph133

bb.aa:                                            ; preds = %.lr.ph133
  %i.cq = add nuw nsw i64 %i.cr, 32               ; 2 uses
  %.not.i.i4.i = icmp samesign ugt i64 %i.cq, %i.co
  br i1 %.not.i.i4.i, label %.preheader.i.i, label %.lr.ph133, !llvm.loop !87

.preheader.i.i:                                   ; preds = %bb.aa, %bb.z
  %.not.i.i10 = icmp eq i64 %i.cp, %i.co
  br i1 %.not.i.i10, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, label %.lr.ph.i.i

.lr.ph133:                                        ; preds = %bb.z, %bb.aa
  %i.cr = phi i64 [ %i.cq, %bb.aa ], [ 32, %bb.z ] ; 2 uses
  %.011.i.i.i132 = phi i64 [ %i.cr, %bb.aa ], [ 0, %bb.z ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.011.i.i.i132
  %i.ct = load <4 x i64>, ptr %i.cs, align 1, !tbaa !59, !noalias !88
  %i.cu = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ct, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not16.not.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, label %bb.aa, !llvm.loop !87

12:                                               ; preds = %.lr.ph.i.i
  %13 = add nuw nsw i64 %.1.i6.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %13, %i.co
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, label %.lr.ph.i.i, !llvm.loop !95

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %12
  %.1.i6.i.i = phi i64 [ %13, %12 ], [ %i.cp, %.preheader.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.1.i6.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !59
  %.not15.i.i.i = icmp sgt i8 %i.cw, -1
  br i1 %.not15.i.i.i, label %12, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i: ; preds = %.lr.ph133, %12, %.lr.ph.i.i, %.preheader.i.i
  %14 = phi i8 [ 0, %.lr.ph.i.i ], [ %.14, %.preheader.i.i ], [ %.14, %12 ], [ 0, %.lr.ph133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, %bb.y
  %.15 = phi i8 [ %.14, %bb.y ], [ %14, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i ] ; 2 uses
  %i.cx = add i32 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cx, %i.bw
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.y, !llvm.loop !96

bb.ab:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cy = load ptr, ptr %1, align 8, !tbaa !77    ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !23 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !35 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.da, %i.dc
  br i1 %.not.i.i.i.i, label %bb.ac, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"

bb.ac:                                            ; preds = %bb.ab
  %i.dd = add i32 %i.da, 63                       ; 2 uses
  %i.de = srem i32 %i.dd, 64
  %i.df = sub nsw i32 %i.dd, %i.de                ; 6 uses
  %i.dg = and i32 %i.dc, -64                      ; 6 uses
  %i.dh = icmp slt i32 %i.dg, %i.df
  br i1 %i.dh, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.di = ashr i32 %i.dc, 6
  %i.dj = and i32 %i.dc, 63
  %i.dk = zext nneg i32 %i.dj to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dk
  %i.dl = xor i64 %notmask.i.i.i.i.i, -1
  %i.dm = sub nsw i32 %i.df, %i.da                ; 2 uses
  %i.dn = zext nneg i32 %i.dm to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dn
  %i.do = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.dp = sub nsw i32 64, %i.dm
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl i64 %i.do, %i.dq
  %i.ds = and i64 %i.dr, %i.dl
  %i.dt = sext i32 %i.di to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !80
  %i.dw = and i64 %i.ds, %i.dv                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.12 = phi i8 [ 1, %.preheader.i.i.i.i.i ], [ %.13, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ] ; 3 uses
  %.012.i.i.i.i.i = phi i64 [ %i.dw, %.preheader.i.i.i.i.i ], [ %i.ey, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ] ; 3 uses
  %i.dz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = or disjoint i32 %i.dg, %i.ea            ; 2 uses
  %i.ec = load ptr, ptr %0, align 8, !tbaa !81
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.eb), !inline_history !97
  br i1 %i.ef, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.eg = load ptr, ptr %0, align 8, !tbaa !81
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 384
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call noundef nonnull align 8 dereferenceable(16) ptr %i.ei(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.eb), !inline_history !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false), !tbaa.struct !84
  %i.ek = load i32, ptr %7, align 8, !tbaa !85    ; 3 uses
  %i.el = icmp ult i32 %i.ek, 13
  %i.em = load ptr, ptr %i.dy, align 8
  %i.en = select i1 %i.el, ptr %i.dx, ptr %i.em   ; 2 uses
  %i.eo = zext i32 %i.ek to i64                   ; 4 uses
  %i.ep = and i64 %i.eo, 4294967264               ; 2 uses
  %.not.i.i.i.i.i.i.i128 = icmp ult i32 %i.ek, 32
  br i1 %.not.i.i.i.i.i.i.i128, label %.preheader.i.i.i.i.i.i, label %.lr.ph130

bb.ag:                                            ; preds = %.lr.ph130
  %i.eq = add nuw nsw i64 %i.er, 32               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.eq, %i.eo
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph130, !llvm.loop !87

.preheader.i.i.i.i.i.i:                           ; preds = %bb.ag, %bb.af
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ep, %i.eo
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph130:                                        ; preds = %bb.af, %bb.ag
  %i.er = phi i64 [ %i.eq, %bb.ag ], [ 32, %bb.af ] ; 2 uses
  %.011.i.i.i.i.i.i.i129 = phi i64 [ %i.er, %bb.ag ], [ 0, %bb.af ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 %.011.i.i.i.i.i.i.i129
  %i.et = load <4 x i64>, ptr %i.es, align 1, !tbaa !59, !noalias !98
  %i.eu = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.et, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i.i.i.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not16.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, label %bb.ag, !llvm.loop !87

15:                                               ; preds = %.lr.ph.i.i.i.i.i.i
  %16 = add nuw nsw i64 %.1.i6.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %16, %i.eo
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !95

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %15
  %.1.i6.i.i.i.i.i.i = phi i64 [ %16, %15 ], [ %i.ep, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 %.1.i6.i.i.i.i.i.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !59
  %.not15.i.i.i.i.i.i.i = icmp sgt i8 %i.ew, -1
  br i1 %.not15.i.i.i.i.i.i.i, label %15, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i: ; preds = %.lr.ph130, %15, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %17 = phi i8 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.12, %.preheader.i.i.i.i.i.i ], [ %.12, %15 ], [ 0, %.lr.ph130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, %bb.ae
  %.13 = phi i8 [ %.12, %bb.ae ], [ %17, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ex = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ey = and i64 %i.ex, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.ae, !llvm.loop !105

bb.ah:                                            ; preds = %bb.ac
  %.not32.i.i.i.i = icmp eq i32 %i.da, %i.df
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ez = sdiv i32 %i.da, 64                      ; 2 uses
  %i.fa = sub nsw i32 %i.df, %i.da                ; 2 uses
  %i.fb = zext nneg i32 %i.fa to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.fb
  %i.fc = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.fd = sub nsw i32 64, %i.fa
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl i64 %i.fc, %i.fe
  %i.fg = sext i32 %i.ez to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !80
  %i.fj = and i64 %i.fi, %i.ff                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ai
  %i.fk = shl nsw i32 %i.ez, 6
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i", %.preheader.i37.i.i.i.i
  %.031 = phi i8 [ 1, %.preheader.i37.i.i.i.i ], [ %.1, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 3 uses
  %.012.i38.i.i.i.i = phi i64 [ %i.fj, %.preheader.i37.i.i.i.i ], [ %i.gm, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 3 uses
  %i.fn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i38.i.i.i.i, i1 true)
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = or disjoint i32 %i.fk, %i.fo            ; 2 uses
  %i.fq = load ptr, ptr %0, align 8, !tbaa !81
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call noundef zeroext i1 %i.fs(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.fp), !inline_history !97
  br i1 %i.ft, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.fu = load ptr, ptr %0, align 8, !tbaa !81
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 384
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = call noundef nonnull align 8 dereferenceable(16) ptr %i.fw(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.fp), !inline_history !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !tbaa.struct !84
  %i.fy = load i32, ptr %6, align 8, !tbaa !85    ; 3 uses
  %i.fz = icmp ult i32 %i.fy, 13
  %i.ga = load ptr, ptr %i.fm, align 8
  %i.gb = select i1 %i.fz, ptr %i.fl, ptr %i.ga   ; 2 uses
  %i.gc = zext i32 %i.fy to i64                   ; 4 uses
  %i.gd = and i64 %i.gc, 4294967264               ; 2 uses
  %.not.i.i.i40.i.i.i.i116 = icmp ult i32 %i.fy, 32
  br i1 %.not.i.i.i40.i.i.i.i116, label %.preheader.i.i46.i.i.i.i, label %.lr.ph118

bb.al:                                            ; preds = %.lr.ph118
  %i.ge = add nuw nsw i64 %i.gf, 32               ; 2 uses
  %.not.i.i.i40.i.i.i.i = icmp samesign ugt i64 %i.ge, %i.gc
  br i1 %.not.i.i.i40.i.i.i.i, label %.preheader.i.i46.i.i.i.i, label %.lr.ph118, !llvm.loop !87

.preheader.i.i46.i.i.i.i:                         ; preds = %bb.al, %bb.ak
  %.not.i.i47.i.i.i.i = icmp eq i64 %i.gd, %i.gc
  br i1 %.not.i.i47.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph118:                                        ; preds = %bb.ak, %bb.al
  %i.gf = phi i64 [ %i.ge, %bb.al ], [ 32, %bb.ak ] ; 2 uses
  %.011.i.i.i39.i.i.i.i117 = phi i64 [ %i.gf, %bb.al ], [ 0, %bb.ak ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.011.i.i.i39.i.i.i.i117
  %i.gh = load <4 x i64>, ptr %i.gg, align 1, !tbaa !59, !noalias !106
  %i.gi = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.gh, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i41.i.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not16.not.i.i.i41.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, label %bb.al, !llvm.loop !87

18:                                               ; preds = %.lr.ph.i.i48.i.i.i.i
  %19 = add nuw nsw i64 %.1.i6.i.i49.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i50.i.i.i.i = icmp eq i64 %19, %i.gc
  br i1 %exitcond.not.i.i50.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i, !llvm.loop !95

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.preheader.i.i46.i.i.i.i, %18
  %.1.i6.i.i49.i.i.i.i = phi i64 [ %19, %18 ], [ %i.gd, %.preheader.i.i46.i.i.i.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.1.i6.i.i49.i.i.i.i
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !59
  %.not15.i.i.i50.i.i.i.i = icmp sgt i8 %i.gk, -1
  br i1 %.not15.i.i.i50.i.i.i.i, label %18, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i: ; preds = %.lr.ph118, %18, %.lr.ph.i.i48.i.i.i.i, %.preheader.i.i46.i.i.i.i
  %20 = phi i8 [ 0, %.lr.ph.i.i48.i.i.i.i ], [ %.031, %.preheader.i.i46.i.i.i.i ], [ %.031, %18 ], [ 0, %.lr.ph118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, %bb.aj
  %.1 = phi i8 [ %.031, %bb.aj ], [ %20, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i ] ; 2 uses
  %i.gl = add i64 %.012.i38.i.i.i.i, -1
  %i.gm = and i64 %i.gl, %.012.i38.i.i.i.i        ; 2 uses
  %.not10.i45.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not10.i45.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i", label %bb.aj, !llvm.loop !105

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i", %bb.ai, %bb.ah
  %.2 = phi i8 [ 1, %bb.ah ], [ 1, %bb.ai ], [ %.1, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 2 uses
  %i.gn = add nsw i32 %i.df, 64                   ; 2 uses
  %.not3391.i.i.i.i = icmp sgt i32 %i.gn, %i.dg
  br i1 %.not3391.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i"
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.am

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i"
  %.5 = phi i8 [ %.2, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i" ], [ %.4, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %.not34.i.i.i.i = icmp eq i32 %i.dc, %i.dg
  br i1 %.not34.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.au

bb.am:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %.3 = phi i8 [ %.2, %.lr.ph.i.i.i.i ], [ %.4, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i" ] ; 4 uses
  %i.gs = phi i32 [ %i.gn, %.lr.ph.i.i.i.i ], [ %i.ja, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.092.i.i.i.i = phi i32 [ %i.df, %.lr.ph.i.i.i.i ], [ %i.gs, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.gt = sdiv i32 %.092.i.i.i.i, 64              ; 3 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !80 ; 2 uses
  switch i64 %i.gw, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.an
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.am
  %i.gx = shl nsw i32 %i.gt, 6
  br label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.gy = shl nsw i32 %i.gt, 6                    ; 2 uses
  %i.gz = add i32 %i.gy, 64
  %i.ha = sext i32 %i.gz to i64
  %.0.off.i.i.i.i = add i32 %.092.i.i.i.i, 127
  %.not35.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not35.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph34.i.i.i.i.i

.lr.ph34.i.i.i.i.i:                               ; preds = %bb.an
  %i.hb = sext i32 %i.gy to i64
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", %.lr.ph34.i.i.i.i.i
  %.8 = phi i8 [ %.3, %.lr.ph34.i.i.i.i.i ], [ %.9, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 3 uses
  %.033.i.i.i.i.i = phi i64 [ %i.hb, %.lr.ph34.i.i.i.i.i ], [ %i.hy, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %i.hc = trunc i64 %.033.i.i.i.i.i to i32        ; 2 uses
  %i.hd = load ptr, ptr %0, align 8, !tbaa !81
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = call noundef zeroext i1 %i.hf(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.hc), !inline_history !113
  br i1 %i.hg, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.hh = load ptr, ptr %0, align 8, !tbaa !81
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 384
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = call noundef nonnull align 8 dereferenceable(16) ptr %i.hj(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.hc), !inline_history !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !tbaa.struct !84
  %i.hl = load i32, ptr %5, align 8, !tbaa !85    ; 3 uses
  %i.hm = icmp ult i32 %i.hl, 13
  %i.hn = load ptr, ptr %i.gp, align 8
  %i.ho = select i1 %i.hm, ptr %i.go, ptr %i.hn   ; 2 uses
  %i.hp = zext i32 %i.hl to i64                   ; 4 uses
  %i.hq = and i64 %i.hp, 4294967264               ; 2 uses
  %.not.i.i.i54.i.i.i.i119 = icmp ult i32 %i.hl, 32
  br i1 %.not.i.i.i54.i.i.i.i119, label %.preheader.i.i58.i.i.i.i, label %.lr.ph121

bb.aq:                                            ; preds = %.lr.ph121
  %i.hr = add nuw nsw i64 %i.hs, 32               ; 2 uses
  %.not.i.i.i54.i.i.i.i = icmp samesign ugt i64 %i.hr, %i.hp
  br i1 %.not.i.i.i54.i.i.i.i, label %.preheader.i.i58.i.i.i.i, label %.lr.ph121, !llvm.loop !87

.preheader.i.i58.i.i.i.i:                         ; preds = %bb.aq, %bb.ap
  %.not.i.i59.i.i.i.i = icmp eq i64 %i.hq, %i.hp
  br i1 %.not.i.i59.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, label %.lr.ph.i.i60.i.i.i.i

.lr.ph121:                                        ; preds = %bb.ap, %bb.aq
  %i.hs = phi i64 [ %i.hr, %bb.aq ], [ 32, %bb.ap ] ; 2 uses
  %.011.i.i.i53.i.i.i.i120 = phi i64 [ %i.hs, %bb.aq ], [ 0, %bb.ap ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.011.i.i.i53.i.i.i.i120
  %i.hu = load <4 x i64>, ptr %i.ht, align 1, !tbaa !59, !noalias !114
  %i.hv = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.hu, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i55.i.i.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not16.not.i.i.i55.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, label %bb.aq, !llvm.loop !87

21:                                               ; preds = %.lr.ph.i.i60.i.i.i.i
  %22 = add nuw nsw i64 %.1.i6.i.i61.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i62.i.i.i.i = icmp eq i64 %22, %i.hp
  br i1 %exitcond.not.i.i62.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, label %.lr.ph.i.i60.i.i.i.i, !llvm.loop !95

.lr.ph.i.i60.i.i.i.i:                             ; preds = %.preheader.i.i58.i.i.i.i, %21
  %.1.i6.i.i61.i.i.i.i = phi i64 [ %22, %21 ], [ %i.hq, %.preheader.i.i58.i.i.i.i ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.1.i6.i.i61.i.i.i.i
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !59
  %.not15.i.i.i62.i.i.i.i = icmp sgt i8 %i.hx, -1
  br i1 %.not15.i.i.i62.i.i.i.i, label %21, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i: ; preds = %.lr.ph121, %21, %.lr.ph.i.i60.i.i.i.i, %.preheader.i.i58.i.i.i.i
  %23 = phi i8 [ 0, %.lr.ph.i.i60.i.i.i.i ], [ %.8, %.preheader.i.i58.i.i.i.i ], [ %.8, %21 ], [ 0, %.lr.ph121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, %bb.ao
  %.9 = phi i8 [ %.8, %bb.ao ], [ %23, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i ] ; 2 uses
  %i.hy = add nuw i64 %.033.i.i.i.i.i, 1          ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.ha
  br i1 %i.hz, label %bb.ao, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !121

bb.ar:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.10 = phi i8 [ %.3, %.lr.ph.i.i.i.i.i ], [ %.11, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ] ; 3 uses
  %.01532.i.i.i.i.i = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i ], [ %i.iz, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ] ; 3 uses
  %i.ia = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01532.i.i.i.i.i, i1 true)
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = or disjoint i32 %i.gx, %i.ib            ; 2 uses
  %i.id = load ptr, ptr %0, align 8, !tbaa !81
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call noundef zeroext i1 %i.if(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.ic), !inline_history !122
  br i1 %i.ig, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ih = load ptr, ptr %0, align 8, !tbaa !81
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 384
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = call noundef nonnull align 8 dereferenceable(16) ptr %i.ij(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.ic), !inline_history !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 16, i1 false), !tbaa.struct !84
  %i.il = load i32, ptr %4, align 8, !tbaa !85    ; 3 uses
  %i.im = icmp ult i32 %i.il, 13
  %i.in = load ptr, ptr %i.gr, align 8
  %i.io = select i1 %i.im, ptr %i.gq, ptr %i.in   ; 2 uses
  %i.ip = zext i32 %i.il to i64                   ; 4 uses
  %i.iq = and i64 %i.ip, 4294967264               ; 2 uses
  %.not.i.i18.i.i.i.i.i122 = icmp ult i32 %i.il, 32
  br i1 %.not.i.i18.i.i.i.i.i122, label %.preheader.i22.i.i.i.i.i, label %.lr.ph124

bb.at:                                            ; preds = %.lr.ph124
  %i.ir = add nuw nsw i64 %i.is, 32               ; 2 uses
  %.not.i.i18.i.i.i.i.i = icmp samesign ugt i64 %i.ir, %i.ip
  br i1 %.not.i.i18.i.i.i.i.i, label %.preheader.i22.i.i.i.i.i, label %.lr.ph124, !llvm.loop !87

.preheader.i22.i.i.i.i.i:                         ; preds = %bb.at, %bb.as
  %.not.i23.i.i.i.i.i = icmp eq i64 %i.iq, %i.ip
  br i1 %.not.i23.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i

.lr.ph124:                                        ; preds = %bb.as, %bb.at
  %i.is = phi i64 [ %i.ir, %bb.at ], [ 32, %bb.as ] ; 2 uses
  %.011.i.i17.i.i.i.i.i123 = phi i64 [ %i.is, %bb.at ], [ 0, %bb.as ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 %.011.i.i17.i.i.i.i.i123
  %i.iu = load <4 x i64>, ptr %i.it, align 1, !tbaa !59, !noalias !123
  %i.iv = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.iu, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i19.i.i.i.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not16.not.i.i19.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %bb.at, !llvm.loop !87

24:                                               ; preds = %.lr.ph.i24.i.i.i.i.i
  %25 = add nuw nsw i64 %.1.i6.i25.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i26.i.i.i.i.i = icmp eq i64 %25, %i.ip
  br i1 %exitcond.not.i26.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i, !llvm.loop !95

.lr.ph.i24.i.i.i.i.i:                             ; preds = %.preheader.i22.i.i.i.i.i, %24
  %.1.i6.i25.i.i.i.i.i = phi i64 [ %25, %24 ], [ %i.iq, %.preheader.i22.i.i.i.i.i ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 %.1.i6.i25.i.i.i.i.i
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !59
  %.not15.i.i26.i.i.i.i.i = icmp sgt i8 %i.ix, -1
  br i1 %.not15.i.i26.i.i.i.i.i, label %24, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i: ; preds = %.lr.ph124, %24, %.lr.ph.i24.i.i.i.i.i, %.preheader.i22.i.i.i.i.i
  %26 = phi i8 [ 0, %.lr.ph.i24.i.i.i.i.i ], [ %.10, %.preheader.i22.i.i.i.i.i ], [ %.10, %24 ], [ 0, %.lr.ph124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, %bb.ar
  %.11 = phi i8 [ %.10, %bb.ar ], [ %26, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i ] ; 2 uses
  %i.iy = add i64 %.01532.i.i.i.i.i, -1
  %i.iz = and i64 %i.iy, %.01532.i.i.i.i.i        ; 2 uses
  %.not.i65.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not.i65.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", label %bb.ar, !llvm.loop !130

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", %bb.an, %bb.am
  %.4 = phi i8 [ %.3, %bb.am ], [ %.3, %bb.an ], [ %.11, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ], [ %.9, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %i.ja = add nsw i32 %i.gs, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ja, %i.dg
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.am, !llvm.loop !131

bb.au:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jb = ashr i32 %i.dc, 6
  %i.jc = and i32 %i.dc, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %notmask.i66.i.i.i.i = shl nsw i64 -1, %i.jd
  %i.je = xor i64 %notmask.i66.i.i.i.i, -1
  %i.jf = sext i32 %i.jb to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !80
  %i.ji = and i64 %i.jh, %i.je                    ; 2 uses
  %.not.i67.i.i.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not.i67.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %.preheader.i68.i.i.i.i

.preheader.i68.i.i.i.i:                           ; preds = %bb.au
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.av

bb.av:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %.preheader.i68.i.i.i.i
  %.6 = phi i8 [ %.5, %.preheader.i68.i.i.i.i ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 3 uses
  %.012.i69.i.i.i.i = phi i64 [ %i.ji, %.preheader.i68.i.i.i.i ], [ %i.kk, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 3 uses
  %i.jl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i69.i.i.i.i, i1 true)
  %i.jm = trunc nuw nsw i64 %i.jl to i32
  %i.jn = or disjoint i32 %i.dg, %i.jm            ; 2 uses
  %i.jo = load ptr, ptr %0, align 8, !tbaa !81
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = call noundef zeroext i1 %i.jq(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.jn), !inline_history !97
  br i1 %i.jr, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.js = load ptr, ptr %0, align 8, !tbaa !81
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 384
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = call noundef nonnull align 8 dereferenceable(16) ptr %i.ju(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.jn), !inline_history !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.jv, i64 16, i1 false), !tbaa.struct !84
  %i.jw = load i32, ptr %3, align 8, !tbaa !85    ; 3 uses
  %i.jx = icmp ult i32 %i.jw, 13
  %i.jy = load ptr, ptr %i.jk, align 8
  %i.jz = select i1 %i.jx, ptr %i.jj, ptr %i.jy   ; 2 uses
  %i.ka = zext i32 %i.jw to i64                   ; 4 uses
  %i.kb = and i64 %i.ka, 4294967264               ; 2 uses
  %.not.i.i.i71.i.i.i.i125 = icmp ult i32 %i.jw, 32
  br i1 %.not.i.i.i71.i.i.i.i125, label %.preheader.i.i77.i.i.i.i, label %.lr.ph127

bb.ax:                                            ; preds = %.lr.ph127
  %i.kc = add nuw nsw i64 %i.kd, 32               ; 2 uses
  %.not.i.i.i71.i.i.i.i = icmp samesign ugt i64 %i.kc, %i.ka
  br i1 %.not.i.i.i71.i.i.i.i, label %.preheader.i.i77.i.i.i.i, label %.lr.ph127, !llvm.loop !87

.preheader.i.i77.i.i.i.i:                         ; preds = %bb.ax, %bb.aw
  %.not.i.i78.i.i.i.i = icmp eq i64 %i.kb, %i.ka
  br i1 %.not.i.i78.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %.lr.ph.i.i79.i.i.i.i

.lr.ph127:                                        ; preds = %bb.aw, %bb.ax
  %i.kd = phi i64 [ %i.kc, %bb.ax ], [ 32, %bb.aw ] ; 2 uses
  %.011.i.i.i70.i.i.i.i126 = phi i64 [ %i.kd, %bb.ax ], [ 0, %bb.aw ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.011.i.i.i70.i.i.i.i126
  %i.kf = load <4 x i64>, ptr %i.ke, align 1, !tbaa !59, !noalias !132
  %i.kg = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.kf, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i72.i.i.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not16.not.i.i.i72.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %bb.ax, !llvm.loop !87

27:                                               ; preds = %.lr.ph.i.i79.i.i.i.i
  %28 = add nuw nsw i64 %.1.i6.i.i80.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i81.i.i.i.i = icmp eq i64 %28, %i.ka
  br i1 %exitcond.not.i.i81.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %.lr.ph.i.i79.i.i.i.i, !llvm.loop !95

.lr.ph.i.i79.i.i.i.i:                             ; preds = %.preheader.i.i77.i.i.i.i, %27
  %.1.i6.i.i80.i.i.i.i = phi i64 [ %28, %27 ], [ %i.kb, %.preheader.i.i77.i.i.i.i ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.1.i6.i.i80.i.i.i.i
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !59
  %.not15.i.i.i81.i.i.i.i = icmp sgt i8 %i.ki, -1
  br i1 %.not15.i.i.i81.i.i.i.i, label %27, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i: ; preds = %.lr.ph127, %27, %.lr.ph.i.i79.i.i.i.i, %.preheader.i.i77.i.i.i.i
  %29 = phi i8 [ 0, %.lr.ph.i.i79.i.i.i.i ], [ %.6, %.preheader.i.i77.i.i.i.i ], [ %.6, %27 ], [ 0, %.lr.ph127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, %bb.av
  %.7 = phi i8 [ %.6, %bb.av ], [ %29, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i ] ; 2 uses
  %i.kj = add nsw i64 %.012.i69.i.i.i.i, -1
  %i.kk = and i64 %i.kj, %.012.i69.i.i.i.i        ; 2 uses
  %.not10.i76.i.i.i.i = icmp eq i64 %i.kk, 0
  br i1 %.not10.i76.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.av, !llvm.loop !105

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", %bb.x, %bb.ab, %bb.ad, %._crit_edge.i.i.i.i, %bb.au
  %.16 = phi i8 [ 1, %bb.ab ], [ 1, %bb.x ], [ 1, %bb.ad ], [ %.13, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ], [ %.5, %._crit_edge.i.i.i.i ], [ %.5, %bb.au ], [ %.15, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  store ptr %i.g, ptr %11, align 8, !tbaa !145, !alias.scope !147
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i8 0, ptr %i.kl, align 8, !tbaa !148, !alias.scope !147
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9, !noalias !147
  %i.km = load atomic i32, ptr %i.g acquire, align 8, !noalias !147 ; 4 uses
  store i32 %i.km, ptr %i.d, align 4, !tbaa !3, !noalias !147
  %i.kn = and i32 %i.km, -1312
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %bb.ay, label %.critedge.i.i.i.i.i.i.i, !prof !149

bb.ay:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"
  %i.kp = or disjoint i32 %i.km, 128
  %i.kq = cmpxchg ptr %i.g, i32 %i.km, i32 %i.kp seq_cst seq_cst, align 4, !noalias !147 ; 2 uses
  %i.kr = extractvalue { i32, i1 } %i.kq, 1
  br i1 %i.kr, label %bb.az, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11, !prof !150

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11: ; preds = %bb.ay
  %i.ks = extractvalue { i32, i1 } %i.kq, 0
  store i32 %i.ks, ptr %i.d, align 4, !noalias !147
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"
  %i.kt = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !147 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %.critedge.i.i.i.i.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9, !noalias !147
  store i8 1, ptr %i.kl, align 8, !tbaa !148, !alias.scope !147
  %i.ku = load ptr, ptr %11, align 8, !tbaa !145  ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.ku, null
  %.neg.i.i13 = select i1 %.not.i.i12, i64 0, i64 -40
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 %.neg.i.i13 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 28
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !23
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !35
  %i.la = icmp slt i32 %i.kx, %i.kz
  br i1 %i.la, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store atomic i8 %.16, ptr %i.f seq_cst, align 8
  br label %bb.bd

bb.bb:                                            ; preds = %bb.bd
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.bk

bb.bc:                                            ; preds = %bb.az
  %i.lc = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  %30 = and i8 %i.lc, %.16
  store atomic i8 %30, ptr %i.f seq_cst, align 8
  %.pre = load ptr, ptr %11, align 8, !tbaa !145
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  %i.ld = phi ptr [ %i.ku, %bb.ba ], [ %.pre, %bb.bc ] ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.ld, null
  %.neg.i.i15 = select i1 %.not.i.i14, i64 0, i64 -40
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 %.neg.i.i15 ; 3 uses
  invoke void @_ZN8facebook5velox17SelectivityVector6selectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.le, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 28
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !23
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !35
  %i.lj = icmp sge i32 %i.lg, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.ll = zext i1 %i.lj to i8
  store atomic i8 %i.ll, ptr %i.lk seq_cst, align 1
  %i.lm = load atomic i8, ptr %i.f seq_cst, align 8, !range !73, !noundef !74
  %i.ln = load i8, ptr %i.kl, align 8, !tbaa !148, !range !73, !noundef !74
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.bf, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.lp = load ptr, ptr %11, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i18, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.lq = atomicrmw and ptr %i.lp, i32 -401 seq_cst, align 4 ; 2 uses
  %i.lr = and i32 %i.lq, -401
  store i32 %i.lr, ptr %i.c, align 4, !tbaa !3
  %i.ls = and i32 %i.lq, 15
  %.not.i.i.i.i.i19 = icmp eq i32 %i.ls, 0
  br i1 %.not.i.i.i.i.i19, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.bh, !prof !149

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.lp, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.bi

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.bi:                                            ; preds = %bb.bh
  %i.lt = landingpad { ptr, i32 }
          catch ptr null
  %i.lu = extractvalue { ptr, i32 } %i.lt, 0
  call void @__clang_call_terminate(ptr %i.lu) #21
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.be, %bb.bf, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.o
  %.0.in = phi i8 [ %i.aq, %bb.o ], [ %i.lm, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit ]
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0

bb.bk:                                            ; preds = %bb.bb, %bb.p
  %.pn = phi { ptr, i32 } [ %i.lb, %bb.bb ], [ %i.ar, %bb.p ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %.not5 = icmp sgt i32 %i.f, %i.h
  br i1 %.not5, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !77     ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %.not.i.i = icmp slt i32 %i.b, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.b, 63                         ; 2 uses
  %i.l = srem i32 %i.k, 64
  %i.m = sub nsw i32 %i.k, %i.l                   ; 5 uses
  %i.n = and i32 %i.f, -64                        ; 3 uses
  %i.o = icmp slt i32 %i.n, %i.m
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = ashr i32 %i.f, 6
  %i.q = and i32 %i.f, 63
  %i.r = zext nneg i32 %i.q to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.i.i.i, -1
  %i.t = sub nsw i32 %i.m, %i.b                   ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask.i.i.i.i, -1
  %i.w = sub nsw i32 64, %i.t
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %i.v, %i.x
  %i.z = and i64 %i.y, %i.s
  %i.aa = sext i32 %i.p to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !80
  %i.ad = and i64 %i.z, %i.ac
  br label %.loopexit.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %.not36.i.i = icmp eq i32 %i.b, %i.m
  br i1 %.not36.i.i, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = sdiv i32 %i.b, 64
  %i.af = sub nsw i32 %i.m, %i.b                  ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %notmask.i.i39.i.i = shl nsw i64 -1, %i.ag
  %i.ah = xor i64 %notmask.i.i39.i.i, -1
  %i.ai = sub nsw i32 64, %i.af
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl i64 %i.ah, %i.aj
  %i.al = sext i32 %i.ae to i64                   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !80
  %i.ao = and i64 %i.an, %i.ak                    ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.al
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !80
  %i.ar = and i64 %i.aq, %i.ao
  %i.as = icmp eq i64 %i.ar, %i.ao
  br i1 %i.as, label %.preheader, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

.preheader:                                       ; preds = %bb.g, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.i
  %.0.i.i = phi i32 [ %i.at, %bb.i ], [ %i.m, %.preheader ] ; 2 uses
  %i.at = add nsw i32 %.0.i.i, 64                 ; 2 uses
  %.not37.i.i = icmp sgt i32 %i.at, %i.n
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = sdiv i32 %.0.i.i, 64
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.av
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !80
  %i.ba = and i64 %i.az, %i.ax
  %i.bb = icmp eq i64 %i.ba, %i.ax
  br i1 %i.bb, label %bb.h, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, !llvm.loop !151

.critedge.i.i:                                    ; preds = %bb.h
  %.not38.i.i = icmp eq i32 %i.f, %i.n
  br i1 %.not38.i.i, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.bc = ashr i32 %i.f, 6
  %i.bd = and i32 %i.f, 63
  %i.be = zext nneg i32 %i.bd to i64
  %notmask.i40.i.i = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask.i40.i.i, -1
  %i.bg = sext i32 %i.bc to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !80
  %i.bj = and i64 %i.bi, %i.bf
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %bb.j, %bb.e
  %.sink54.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.bg, %bb.j ]
  %.sink53.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sink54.i.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !80
  %i.bm = and i64 %i.bl, %.sink53.i.i
  %i.bn = icmp eq i64 %i.bm, %.sink53.i.i
  br label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit:   ; preds = %bb.i, %.loopexit.sink.split.i.i, %.critedge.i.i, %bb.g, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %.critedge.i.i ], [ %i.bn, %.loopexit.sink.split.i.i ], [ false, %bb.g ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
end_hunk_0
