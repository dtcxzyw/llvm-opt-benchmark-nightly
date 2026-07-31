inline.NumInlined: 478
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorE:bb.a
bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.n

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = load i16, ptr %i.i, align 2, !tbaa !23
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
  store i32 %i.al, ptr %i.a, align 4, !tbaa !24
  %i.am = icmp ugt i32 %i.al, 2047
  %i.an = and i32 %i.ak, 16
  %.not.i.i.i20 = icmp eq i32 %i.an, 0
  %or.cond.i.i = or i1 %i.am, %.not.i.i.i20
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.m, !prof !67

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
  %i.aq = load atomic i8, ptr %i.f seq_cst, align 8, !range !75, !noundef !76
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
  %i.au = load i8, ptr %i.at, align 1, !tbaa !77, !range !75, !noundef !76
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.r

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.q
  %.0.in.pre.i.i = load i8, ptr %i.as, align 4, !tbaa !78, !range !75
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.s, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !37 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !38
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr %1, align 8, !tbaa !79    ; 2 uses
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
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !80

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %indvars.iv.i.i115 = phi i64 [ %indvars.iv.next.i.i, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.bh = lshr exact i64 %indvars.iv.i.i115, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !82
  %i.bk = icmp eq i64 %i.bj, -1
  br i1 %i.bk, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !80

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
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !82
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
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !37 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bw
  br i1 %i.bz, label %.lr.ph.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"

.lr.ph.i:                                         ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.y

bb.y:                                             ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", %.lr.ph.i
  %.14 = phi i8 [ 1, %.lr.ph.i ], [ %.15, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ] ; 2 uses
  %.014.i = phi i32 [ %i.by, %.lr.ph.i ], [ %i.db, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ] ; 3 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %.014.i), !inline_history !85
  br i1 %i.cf, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.cg = load ptr, ptr %0, align 8, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 384
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef nonnull align 8 dereferenceable(16) ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %.014.i), !inline_history !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !86
  %i.ck = load i32, ptr %8, align 8, !tbaa !87    ; 3 uses
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
  br i1 %.not.i.i4.i, label %.preheader.i.i, label %.lr.ph133, !llvm.loop !89

.preheader.i.i:                                   ; preds = %bb.aa, %bb.z
  %.not.i.i10 = icmp eq i64 %i.cp, %i.co
  br i1 %.not.i.i10, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, label %.lr.ph.i.i

.lr.ph133:                                        ; preds = %bb.z, %bb.aa
  %i.cr = phi i64 [ %i.cq, %bb.aa ], [ 32, %bb.z ] ; 2 uses
  %.011.i.i.i132 = phi i64 [ %i.cr, %bb.aa ], [ 0, %bb.z ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.011.i.i.i132
  %i.ct = load <4 x i64>, ptr %i.cs, align 1, !tbaa !61
  %i.cu = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ct, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not16.not.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, label %bb.aa, !llvm.loop !89

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.1.i5.i.i = phi i64 [ %i.cx, %.lr.ph.i.i ], [ %i.cp, %.preheader.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.1.i5.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !61
  %.not15.i.i.i = icmp sgt i8 %i.cw, -1           ; 2 uses
  %i.cx = add nuw nsw i64 %.1.i5.i.i, 1           ; 2 uses
  %12 = icmp samesign ult i64 %i.cx, %i.co
  %or.cond.not = select i1 %.not15.i.i.i, i1 %12, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, !llvm.loop !90

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i: ; preds = %.lr.ph133, %.lr.ph.i.i, %.preheader.i.i
  %.2.i.i.i = phi i1 [ true, %.preheader.i.i ], [ %.not15.i.i.i, %.lr.ph.i.i ], [ false, %.lr.ph133 ]
  %i.cy = icmp ne i8 %.14, 0
  %i.cz = and i1 %i.cy, %.2.i.i.i
  %i.da = zext i1 %i.cz to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i, %bb.y
  %.15 = phi i8 [ %.14, %bb.y ], [ %i.da, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i ] ; 2 uses
  %i.db = add i32 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.db, %i.bw
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.y, !llvm.loop !91

bb.ab:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.dc = load ptr, ptr %1, align 8, !tbaa !79    ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !25 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !37 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.de, %i.dg
  br i1 %.not.i.i.i.i, label %bb.ac, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"

bb.ac:                                            ; preds = %bb.ab
  %i.dh = add i32 %i.de, 63                       ; 2 uses
  %i.di = srem i32 %i.dh, 64
  %i.dj = sub nsw i32 %i.dh, %i.di                ; 6 uses
  %i.dk = and i32 %i.dg, -64                      ; 6 uses
  %i.dl = icmp slt i32 %i.dk, %i.dj
  br i1 %i.dl, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.dm = ashr i32 %i.dg, 6
  %i.dn = and i32 %i.dg, 63
  %i.do = zext nneg i32 %i.dn to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.do
  %i.dp = xor i64 %notmask.i.i.i.i.i, -1
  %i.dq = sub nsw i32 %i.dj, %i.de                ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dr
  %i.ds = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.dt = sub nsw i32 64, %i.dq
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl i64 %i.ds, %i.du
  %i.dw = and i64 %i.dv, %i.dp
  %i.dx = sext i32 %i.dm to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !82
  %i.ea = and i64 %i.dw, %i.dz                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ad
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.12 = phi i8 [ 1, %.preheader.i.i.i.i.i ], [ %.13, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %.012.i.i.i.i.i = phi i64 [ %i.ea, %.preheader.i.i.i.i.i ], [ %i.fg, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ] ; 3 uses
  %i.ed = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = or disjoint i32 %i.dk, %i.ee            ; 2 uses
  %i.eg = load ptr, ptr %0, align 8, !tbaa !83
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.ef), !inline_history !92
  br i1 %i.ej, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.ek = load ptr, ptr %0, align 8, !tbaa !83
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 384
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = call noundef nonnull align 8 dereferenceable(16) ptr %i.em(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.ef), !inline_history !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !tbaa.struct !86
  %i.eo = load i32, ptr %7, align 8, !tbaa !87    ; 3 uses
  %i.ep = icmp ult i32 %i.eo, 13
  %i.eq = load ptr, ptr %i.ec, align 8
  %i.er = select i1 %i.ep, ptr %i.eb, ptr %i.eq   ; 2 uses
  %i.es = zext i32 %i.eo to i64                   ; 4 uses
  %i.et = and i64 %i.es, 4294967264               ; 2 uses
  %.not.i.i.i.i.i.i.i128 = icmp ult i32 %i.eo, 32
  br i1 %.not.i.i.i.i.i.i.i128, label %.preheader.i.i.i.i.i.i, label %.lr.ph130

bb.ag:                                            ; preds = %.lr.ph130
  %i.eu = add nuw nsw i64 %i.ev, 32               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.eu, %i.es
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph130, !llvm.loop !89

.preheader.i.i.i.i.i.i:                           ; preds = %bb.ag, %bb.af
  %.not.i.i.i.i.i.i = icmp eq i64 %i.et, %i.es
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph130:                                        ; preds = %bb.af, %bb.ag
  %i.ev = phi i64 [ %i.eu, %bb.ag ], [ 32, %bb.af ] ; 2 uses
  %.011.i.i.i.i.i.i.i129 = phi i64 [ %i.ev, %bb.ag ], [ 0, %bb.af ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 %.011.i.i.i.i.i.i.i129
  %i.ex = load <4 x i64>, ptr %i.ew, align 1, !tbaa !61
  %i.ey = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ex, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i.i.i.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not16.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, label %bb.ag, !llvm.loop !89

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.1.i5.i.i.i.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i.i.i.i ], [ %i.et, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 %.1.i5.i.i.i.i.i.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !61
  %.not15.i.i.i.i.i.i.i = icmp sgt i8 %i.fa, -1   ; 2 uses
  %i.fb = add nuw nsw i64 %.1.i5.i.i.i.i.i.i, 1   ; 2 uses
  %13 = icmp samesign ult i64 %i.fb, %i.es
  %or.cond134.not = select i1 %.not15.i.i.i.i.i.i.i, i1 %13, i1 false
  br i1 %or.cond134.not, label %.lr.ph.i.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, !llvm.loop !90

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i: ; preds = %.lr.ph130, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i = phi i1 [ true, %.preheader.i.i.i.i.i.i ], [ %.not15.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ false, %.lr.ph130 ]
  %i.fc = icmp ne i8 %.12, 0
  %i.fd = and i1 %i.fc, %.2.i.i.i.i.i.i.i
  %i.fe = zext i1 %i.fd to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i, %bb.ae
  %.13 = phi i8 [ %.12, %bb.ae ], [ %i.fe, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ff = add nsw i64 %.012.i.i.i.i.i, -1
  %i.fg = and i64 %i.ff, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.ae, !llvm.loop !93

bb.ah:                                            ; preds = %bb.ac
  %.not32.i.i.i.i = icmp eq i32 %i.de, %i.dj
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = sdiv i32 %i.de, 64                      ; 2 uses
  %i.fi = sub nsw i32 %i.dj, %i.de                ; 2 uses
  %i.fj = zext nneg i32 %i.fi to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.fj
  %i.fk = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.fl = sub nsw i32 64, %i.fi
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl i64 %i.fk, %i.fm
  %i.fo = sext i32 %i.fh to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !82
  %i.fr = and i64 %i.fq, %i.fn                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ai
  %i.fs = shl nsw i32 %i.fh, 6
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i", %.preheader.i37.i.i.i.i
  %.031 = phi i8 [ 1, %.preheader.i37.i.i.i.i ], [ %.1, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 2 uses
  %.012.i38.i.i.i.i = phi i64 [ %i.fr, %.preheader.i37.i.i.i.i ], [ %i.gy, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 3 uses
  %i.fv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i38.i.i.i.i, i1 true)
  %i.fw = trunc nuw nsw i64 %i.fv to i32
  %i.fx = or disjoint i32 %i.fs, %i.fw            ; 2 uses
  %i.fy = load ptr, ptr %0, align 8, !tbaa !83
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef zeroext i1 %i.ga(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.fx), !inline_history !92
  br i1 %i.gb, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.gc = load ptr, ptr %0, align 8, !tbaa !83
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 384
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call noundef nonnull align 8 dereferenceable(16) ptr %i.ge(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.fx), !inline_history !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i64 16, i1 false), !tbaa.struct !86
  %i.gg = load i32, ptr %6, align 8, !tbaa !87    ; 3 uses
  %i.gh = icmp ult i32 %i.gg, 13
  %i.gi = load ptr, ptr %i.fu, align 8
  %i.gj = select i1 %i.gh, ptr %i.ft, ptr %i.gi   ; 2 uses
  %i.gk = zext i32 %i.gg to i64                   ; 4 uses
  %i.gl = and i64 %i.gk, 4294967264               ; 2 uses
  %.not.i.i.i40.i.i.i.i116 = icmp ult i32 %i.gg, 32
  br i1 %.not.i.i.i40.i.i.i.i116, label %.preheader.i.i46.i.i.i.i, label %.lr.ph118

bb.al:                                            ; preds = %.lr.ph118
  %i.gm = add nuw nsw i64 %i.gn, 32               ; 2 uses
  %.not.i.i.i40.i.i.i.i = icmp samesign ugt i64 %i.gm, %i.gk
  br i1 %.not.i.i.i40.i.i.i.i, label %.preheader.i.i46.i.i.i.i, label %.lr.ph118, !llvm.loop !89

.preheader.i.i46.i.i.i.i:                         ; preds = %bb.al, %bb.ak
  %.not.i.i47.i.i.i.i = icmp eq i64 %i.gl, %i.gk
  br i1 %.not.i.i47.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph118:                                        ; preds = %bb.ak, %bb.al
  %i.gn = phi i64 [ %i.gm, %bb.al ], [ 32, %bb.ak ] ; 2 uses
  %.011.i.i.i39.i.i.i.i117 = phi i64 [ %i.gn, %bb.al ], [ 0, %bb.ak ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.011.i.i.i39.i.i.i.i117
  %i.gp = load <4 x i64>, ptr %i.go, align 1, !tbaa !61
  %i.gq = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.gp, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i41.i.i.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not16.not.i.i.i41.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, label %bb.al, !llvm.loop !89

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.preheader.i.i46.i.i.i.i, %.lr.ph.i.i48.i.i.i.i
  %.1.i5.i.i49.i.i.i.i = phi i64 [ %i.gt, %.lr.ph.i.i48.i.i.i.i ], [ %i.gl, %.preheader.i.i46.i.i.i.i ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.1.i5.i.i49.i.i.i.i
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !61
  %.not15.i.i.i50.i.i.i.i = icmp sgt i8 %i.gs, -1 ; 2 uses
  %i.gt = add nuw nsw i64 %.1.i5.i.i49.i.i.i.i, 1 ; 2 uses
  %14 = icmp samesign ult i64 %i.gt, %i.gk
  %or.cond135.not = select i1 %.not15.i.i.i50.i.i.i.i, i1 %14, i1 false
  br i1 %or.cond135.not, label %.lr.ph.i.i48.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, !llvm.loop !90

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i: ; preds = %.lr.ph118, %.lr.ph.i.i48.i.i.i.i, %.preheader.i.i46.i.i.i.i
  %.2.i.i.i43.i.i.i.i = phi i1 [ true, %.preheader.i.i46.i.i.i.i ], [ %.not15.i.i.i50.i.i.i.i, %.lr.ph.i.i48.i.i.i.i ], [ false, %.lr.ph118 ]
  %i.gu = icmp ne i8 %.031, 0
  %i.gv = and i1 %i.gu, %.2.i.i.i43.i.i.i.i
  %i.gw = zext i1 %i.gv to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i, %bb.aj
  %.1 = phi i8 [ %.031, %bb.aj ], [ %i.gw, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i42.i.i.i.i ] ; 2 uses
  %i.gx = add i64 %.012.i38.i.i.i.i, -1
  %i.gy = and i64 %i.gx, %.012.i38.i.i.i.i        ; 2 uses
  %.not10.i45.i.i.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not10.i45.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i", label %bb.aj, !llvm.loop !93

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i", %bb.ai, %bb.ah
  %.2 = phi i8 [ 1, %bb.ah ], [ 1, %bb.ai ], [ %.1, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i44.i.i.i.i" ] ; 2 uses
  %i.gz = add nsw i32 %i.dj, 64                   ; 2 uses
  %.not3391.i.i.i.i = icmp sgt i32 %i.gz, %i.dk
  br i1 %.not3391.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i"
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.am

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i"
  %.5 = phi i8 [ %.2, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUlimE_clEim.exit52.i.i.i.i" ], [ %.4, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %.not34.i.i.i.i = icmp eq i32 %i.dg, %i.dk
  br i1 %.not34.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.au

bb.am:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %.3 = phi i8 [ %.2, %.lr.ph.i.i.i.i ], [ %.4, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i" ] ; 4 uses
  %i.he = phi i32 [ %i.gz, %.lr.ph.i.i.i.i ], [ %i.ju, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.092.i.i.i.i = phi i32 [ %i.dj, %.lr.ph.i.i.i.i ], [ %i.he, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.hf = sdiv i32 %.092.i.i.i.i, 64              ; 3 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !82 ; 2 uses
  switch i64 %i.hi, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.an
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.am
  %i.hj = shl nsw i32 %i.hf, 6
  br label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.hk = shl nsw i32 %i.hf, 6                    ; 2 uses
  %i.hl = add i32 %i.hk, 64
  %i.hm = sext i32 %i.hl to i64
  %.0.off.i.i.i.i = add i32 %.092.i.i.i.i, 127
  %.not35.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not35.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph34.i.i.i.i.i

.lr.ph34.i.i.i.i.i:                               ; preds = %bb.an
  %i.hn = sext i32 %i.hk to i64
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", %.lr.ph34.i.i.i.i.i
  %.8 = phi i8 [ %.3, %.lr.ph34.i.i.i.i.i ], [ %.9, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %.033.i.i.i.i.i = phi i64 [ %i.hn, %.lr.ph34.i.i.i.i.i ], [ %i.io, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %i.ho = trunc i64 %.033.i.i.i.i.i to i32        ; 2 uses
  %i.hp = load ptr, ptr %0, align 8, !tbaa !83
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call noundef zeroext i1 %i.hr(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.ho), !inline_history !94
  br i1 %i.hs, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.ht = load ptr, ptr %0, align 8, !tbaa !83
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 384
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = call noundef nonnull align 8 dereferenceable(16) ptr %i.hv(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.ho), !inline_history !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false), !tbaa.struct !86
  %i.hx = load i32, ptr %5, align 8, !tbaa !87    ; 3 uses
  %i.hy = icmp ult i32 %i.hx, 13
  %i.hz = load ptr, ptr %i.hb, align 8
  %i.ia = select i1 %i.hy, ptr %i.ha, ptr %i.hz   ; 2 uses
  %i.ib = zext i32 %i.hx to i64                   ; 4 uses
  %i.ic = and i64 %i.ib, 4294967264               ; 2 uses
  %.not.i.i.i54.i.i.i.i119 = icmp ult i32 %i.hx, 32
  br i1 %.not.i.i.i54.i.i.i.i119, label %.preheader.i.i58.i.i.i.i, label %.lr.ph121

bb.aq:                                            ; preds = %.lr.ph121
  %i.id = add nuw nsw i64 %i.ie, 32               ; 2 uses
  %.not.i.i.i54.i.i.i.i = icmp samesign ugt i64 %i.id, %i.ib
  br i1 %.not.i.i.i54.i.i.i.i, label %.preheader.i.i58.i.i.i.i, label %.lr.ph121, !llvm.loop !89

.preheader.i.i58.i.i.i.i:                         ; preds = %bb.aq, %bb.ap
  %.not.i.i59.i.i.i.i = icmp eq i64 %i.ic, %i.ib
  br i1 %.not.i.i59.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, label %.lr.ph.i.i60.i.i.i.i

.lr.ph121:                                        ; preds = %bb.ap, %bb.aq
  %i.ie = phi i64 [ %i.id, %bb.aq ], [ 32, %bb.ap ] ; 2 uses
  %.011.i.i.i53.i.i.i.i120 = phi i64 [ %i.ie, %bb.aq ], [ 0, %bb.ap ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.011.i.i.i53.i.i.i.i120
  %i.ig = load <4 x i64>, ptr %i.if, align 1, !tbaa !61
  %i.ih = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ig, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i55.i.i.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not16.not.i.i.i55.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, label %bb.aq, !llvm.loop !89

.lr.ph.i.i60.i.i.i.i:                             ; preds = %.preheader.i.i58.i.i.i.i, %.lr.ph.i.i60.i.i.i.i
  %.1.i5.i.i61.i.i.i.i = phi i64 [ %i.ik, %.lr.ph.i.i60.i.i.i.i ], [ %i.ic, %.preheader.i.i58.i.i.i.i ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.1.i5.i.i61.i.i.i.i
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !61
  %.not15.i.i.i62.i.i.i.i = icmp sgt i8 %i.ij, -1 ; 2 uses
  %i.ik = add nuw nsw i64 %.1.i5.i.i61.i.i.i.i, 1 ; 2 uses
  %15 = icmp samesign ult i64 %i.ik, %i.ib
  %or.cond136.not = select i1 %.not15.i.i.i62.i.i.i.i, i1 %15, i1 false
  br i1 %or.cond136.not, label %.lr.ph.i.i60.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, !llvm.loop !90

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i: ; preds = %.lr.ph121, %.lr.ph.i.i60.i.i.i.i, %.preheader.i.i58.i.i.i.i
  %.2.i.i.i57.i.i.i.i = phi i1 [ true, %.preheader.i.i58.i.i.i.i ], [ %.not15.i.i.i62.i.i.i.i, %.lr.ph.i.i60.i.i.i.i ], [ false, %.lr.ph121 ]
  %i.il = icmp ne i8 %.8, 0
  %i.im = and i1 %i.il, %.2.i.i.i57.i.i.i.i
  %i.in = zext i1 %i.im to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i, %bb.ao
  %.9 = phi i8 [ %.8, %bb.ao ], [ %i.in, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i56.i.i.i.i ] ; 2 uses
  %i.io = add nuw i64 %.033.i.i.i.i.i, 1          ; 2 uses
  %i.ip = icmp ult i64 %i.io, %i.hm
  br i1 %i.ip, label %bb.ao, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !95

bb.ar:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.10 = phi i8 [ %.3, %.lr.ph.i.i.i.i.i ], [ %.11, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ] ; 2 uses
  %.01532.i.i.i.i.i = phi i64 [ %i.hi, %.lr.ph.i.i.i.i.i ], [ %i.jt, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ] ; 3 uses
  %i.iq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01532.i.i.i.i.i, i1 true)
  %i.ir = trunc nuw nsw i64 %i.iq to i32
  %i.is = or disjoint i32 %i.hj, %i.ir            ; 2 uses
  %i.it = load ptr, ptr %0, align 8, !tbaa !83
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call noundef zeroext i1 %i.iv(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.is), !inline_history !96
  br i1 %i.iw, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ix = load ptr, ptr %0, align 8, !tbaa !83
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 384
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = call noundef nonnull align 8 dereferenceable(16) ptr %i.iz(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.is), !inline_history !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i64 16, i1 false), !tbaa.struct !86
  %i.jb = load i32, ptr %4, align 8, !tbaa !87    ; 3 uses
  %i.jc = icmp ult i32 %i.jb, 13
  %i.jd = load ptr, ptr %i.hd, align 8
  %i.je = select i1 %i.jc, ptr %i.hc, ptr %i.jd   ; 2 uses
  %i.jf = zext i32 %i.jb to i64                   ; 4 uses
  %i.jg = and i64 %i.jf, 4294967264               ; 2 uses
  %.not.i.i18.i.i.i.i.i122 = icmp ult i32 %i.jb, 32
  br i1 %.not.i.i18.i.i.i.i.i122, label %.preheader.i22.i.i.i.i.i, label %.lr.ph124

bb.at:                                            ; preds = %.lr.ph124
  %i.jh = add nuw nsw i64 %i.ji, 32               ; 2 uses
  %.not.i.i18.i.i.i.i.i = icmp samesign ugt i64 %i.jh, %i.jf
  br i1 %.not.i.i18.i.i.i.i.i, label %.preheader.i22.i.i.i.i.i, label %.lr.ph124, !llvm.loop !89

.preheader.i22.i.i.i.i.i:                         ; preds = %bb.at, %bb.as
  %.not.i23.i.i.i.i.i = icmp eq i64 %i.jg, %i.jf
  br i1 %.not.i23.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %.lr.ph.i24.i.i.i.i.i

.lr.ph124:                                        ; preds = %bb.as, %bb.at
  %i.ji = phi i64 [ %i.jh, %bb.at ], [ 32, %bb.as ] ; 2 uses
  %.011.i.i17.i.i.i.i.i123 = phi i64 [ %i.ji, %bb.at ], [ 0, %bb.as ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 %.011.i.i17.i.i.i.i.i123
  %i.jk = load <4 x i64>, ptr %i.jj, align 1, !tbaa !61
  %i.jl = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.jk, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i19.i.i.i.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not16.not.i.i19.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, label %bb.at, !llvm.loop !89

.lr.ph.i24.i.i.i.i.i:                             ; preds = %.preheader.i22.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i
  %.1.i5.i25.i.i.i.i.i = phi i64 [ %i.jo, %.lr.ph.i24.i.i.i.i.i ], [ %i.jg, %.preheader.i22.i.i.i.i.i ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 %.1.i5.i25.i.i.i.i.i
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !61
  %.not15.i.i26.i.i.i.i.i = icmp sgt i8 %i.jn, -1 ; 2 uses
  %i.jo = add nuw nsw i64 %.1.i5.i25.i.i.i.i.i, 1 ; 2 uses
  %16 = icmp samesign ult i64 %i.jo, %i.jf
  %or.cond137.not = select i1 %.not15.i.i26.i.i.i.i.i, i1 %16, i1 false
  br i1 %or.cond137.not, label %.lr.ph.i24.i.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, !llvm.loop !90

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i: ; preds = %.lr.ph124, %.lr.ph.i24.i.i.i.i.i, %.preheader.i22.i.i.i.i.i
  %.2.i.i21.i.i.i.i.i = phi i1 [ true, %.preheader.i22.i.i.i.i.i ], [ %.not15.i.i26.i.i.i.i.i, %.lr.ph.i24.i.i.i.i.i ], [ false, %.lr.ph124 ]
  %i.jp = icmp ne i8 %.10, 0
  %i.jq = and i1 %i.jp, %.2.i.i21.i.i.i.i.i
  %i.jr = zext i1 %i.jq to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i, %bb.ar
  %.11 = phi i8 [ %.10, %bb.ar ], [ %i.jr, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i20.i.i.i.i.i ] ; 2 uses
  %i.js = add i64 %.01532.i.i.i.i.i, -1
  %i.jt = and i64 %i.js, %.01532.i.i.i.i.i        ; 2 uses
  %.not.i65.i.i.i.i.a = icmp eq i64 %i.jt, 0
  br i1 %.not.i65.i.i.i.i.a, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i", label %bb.ar, !llvm.loop !97

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKNS0_17SelectivityVectorEE3$_0EEvPKmiibS8_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i", %bb.an, %bb.am
  %.4 = phi i8 [ %.3, %bb.am ], [ %.3, %bb.an ], [ %.11, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i64.i.i.i.i" ], [ %.9, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clImEEDaS6_.exit.i.i.i.i.i" ] ; 2 uses
  %i.ju = add nsw i32 %i.he, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ju, %i.dk
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.am, !llvm.loop !98

bb.au:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jv = ashr i32 %i.dg, 6
  %i.jw = and i32 %i.dg, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %notmask.i66.i.i.i.i = shl nsw i64 -1, %i.jx
  %i.jy = xor i64 %notmask.i66.i.i.i.i, -1
  %i.jz = sext i32 %i.jv to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !82
  %i.kc = and i64 %i.kb, %i.jy                    ; 2 uses
  %.not.i67.i.i.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not.i67.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %.preheader.i68.i.i.i.i

.preheader.i68.i.i.i.i:                           ; preds = %bb.au
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.av

bb.av:                                            ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %.preheader.i68.i.i.i.i
  %.6 = phi i8 [ %.5, %.preheader.i68.i.i.i.i ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 2 uses
  %.012.i69.i.i.i.i = phi i64 [ %i.kc, %.preheader.i68.i.i.i.i ], [ %i.li, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 3 uses
  %i.kf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i69.i.i.i.i, i1 true)
  %i.kg = trunc nuw nsw i64 %i.kf to i32
  %i.kh = or disjoint i32 %i.dk, %i.kg            ; 2 uses
  %i.ki = load ptr, ptr %0, align 8, !tbaa !83
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = call noundef zeroext i1 %i.kk(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.kh), !inline_history !92
  br i1 %i.kl, label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.km = load ptr, ptr %0, align 8, !tbaa !83
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 384
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = call noundef nonnull align 8 dereferenceable(16) ptr %i.ko(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.kh), !inline_history !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.kp, i64 16, i1 false), !tbaa.struct !86
  %i.kq = load i32, ptr %3, align 8, !tbaa !87    ; 3 uses
  %i.kr = icmp ult i32 %i.kq, 13
  %i.ks = load ptr, ptr %i.ke, align 8
  %i.kt = select i1 %i.kr, ptr %i.kd, ptr %i.ks   ; 2 uses
  %i.ku = zext i32 %i.kq to i64                   ; 4 uses
  %i.kv = and i64 %i.ku, 4294967264               ; 2 uses
  %.not.i.i.i71.i.i.i.i125 = icmp ult i32 %i.kq, 32
  br i1 %.not.i.i.i71.i.i.i.i125, label %.preheader.i.i77.i.i.i.i, label %.lr.ph127

bb.ax:                                            ; preds = %.lr.ph127
  %i.kw = add nuw nsw i64 %i.kx, 32               ; 2 uses
  %.not.i.i.i71.i.i.i.i = icmp samesign ugt i64 %i.kw, %i.ku
  br i1 %.not.i.i.i71.i.i.i.i, label %.preheader.i.i77.i.i.i.i, label %.lr.ph127, !llvm.loop !89

.preheader.i.i77.i.i.i.i:                         ; preds = %bb.ax, %bb.aw
  %.not.i.i78.i.i.i.i = icmp eq i64 %i.kv, %i.ku
  br i1 %.not.i.i78.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %.lr.ph.i.i79.i.i.i.i

.lr.ph127:                                        ; preds = %bb.aw, %bb.ax
  %i.kx = phi i64 [ %i.kw, %bb.ax ], [ 32, %bb.aw ] ; 2 uses
  %.011.i.i.i70.i.i.i.i126 = phi i64 [ %i.kx, %bb.ax ], [ 0, %bb.aw ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.011.i.i.i70.i.i.i.i126
  %i.kz = load <4 x i64>, ptr %i.ky, align 1, !tbaa !61
  %i.la = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.kz, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i72.i.i.i.i = icmp eq i32 %i.la, 0
  br i1 %.not16.not.i.i.i72.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, label %bb.ax, !llvm.loop !89

.lr.ph.i.i79.i.i.i.i:                             ; preds = %.preheader.i.i77.i.i.i.i, %.lr.ph.i.i79.i.i.i.i
  %.1.i5.i.i80.i.i.i.i = phi i64 [ %i.ld, %.lr.ph.i.i79.i.i.i.i ], [ %i.kv, %.preheader.i.i77.i.i.i.i ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.1.i5.i.i80.i.i.i.i
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !61
  %.not15.i.i.i81.i.i.i.i = icmp sgt i8 %i.lc, -1 ; 2 uses
  %i.ld = add nuw nsw i64 %.1.i5.i.i80.i.i.i.i, 1 ; 2 uses
  %17 = icmp samesign ult i64 %i.ld, %i.ku
  %or.cond138.not = select i1 %.not15.i.i.i81.i.i.i.i, i1 %17, i1 false
  br i1 %or.cond138.not, label %.lr.ph.i.i79.i.i.i.i, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, !llvm.loop !90

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i: ; preds = %.lr.ph127, %.lr.ph.i.i79.i.i.i.i, %.preheader.i.i77.i.i.i.i
  %.2.i.i.i74.i.i.i.i = phi i1 [ true, %.preheader.i.i77.i.i.i.i ], [ %.not15.i.i.i81.i.i.i.i, %.lr.ph.i.i79.i.i.i.i ], [ false, %.lr.ph127 ]
  %i.le = icmp ne i8 %.6, 0
  %i.lf = and i1 %i.le, %.2.i.i.i74.i.i.i.i
  %i.lg = zext i1 %i.lf to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i"

"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i": ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i, %bb.av
  %.7 = phi i8 [ %.6, %bb.av ], [ %i.lg, %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit.i.i73.i.i.i.i ] ; 2 uses
  %i.lh = add nsw i64 %.012.i69.i.i.i.i, -1
  %i.li = and i64 %i.lh, %.012.i69.i.i.i.i        ; 2 uses
  %.not10.i76.i.i.i.i = icmp eq i64 %i.li, 0
  br i1 %.not10.i76.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit", label %bb.av, !llvm.loop !93

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit": ; preds = %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i", %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i", %bb.x, %bb.ab, %bb.ad, %._crit_edge.i.i.i.i, %bb.au
  %.16 = phi i8 [ 1, %bb.ab ], [ 1, %bb.x ], [ 1, %bb.ad ], [ %.13, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i.i.i.i.i" ], [ %.5, %._crit_edge.i.i.i.i ], [ %.5, %bb.au ], [ %.15, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i" ], [ %.7, %"_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEbE4typeERKNS0_17SelectivityVectorEENK3$_0clIiEEDaS6_.exit.i75.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  store ptr %i.g, ptr %11, align 8, !tbaa !105, !alias.scope !107
  %i.lj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i8 0, ptr %i.lj, align 8, !tbaa !108, !alias.scope !107
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9, !noalias !107
  %i.lk = load atomic i32, ptr %i.g acquire, align 8, !noalias !107 ; 4 uses
  store i32 %i.lk, ptr %i.d, align 4, !tbaa !24, !noalias !107
  %i.ll = and i32 %i.lk, -1312
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.ay, label %.critedge.i.i.i.i.i.i.i, !prof !109

bb.ay:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"
  %i.ln = or disjoint i32 %i.lk, 128
  %i.lo = cmpxchg ptr %i.g, i32 %i.lk, i32 %i.ln seq_cst seq_cst, align 4, !noalias !107 ; 2 uses
  %i.lp = extractvalue { i32, i1 } %i.lo, 1
  br i1 %i.lp, label %bb.az, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11, !prof !110

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11: ; preds = %bb.ay
  %i.lq = extractvalue { i32, i1 } %i.lo, 0
  store i32 %i.lq, ptr %i.d, align 4, !noalias !107
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i11, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_12SimpleVectorINS0_10StringViewEE20computeAndSetIsAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EEbE4typeERKS1_E3$_0EEvS8_.exit"
  %i.lr = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !107 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %.critedge.i.i.i.i.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9, !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9, !noalias !107
  store i8 1, ptr %i.lj, align 8, !tbaa !108, !alias.scope !107
  %i.ls = load ptr, ptr %11, align 8, !tbaa !105  ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.ls, null
  %.neg.i.i13 = select i1 %.not.i.i12, i64 0, i64 -40
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 %.neg.i.i13 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 28
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !25
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !37
  %i.ly = icmp slt i32 %i.lv, %i.lx
  br i1 %i.ly, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store atomic i8 %.16, ptr %i.f seq_cst, align 8
  br label %bb.bd

bb.bb:                                            ; preds = %bb.bd
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.bk

bb.bc:                                            ; preds = %bb.az
  %i.ma = load atomic i8, ptr %i.f seq_cst, align 8, !range !75, !noundef !76
  %.not = icmp eq i8 %.16, 0
  %i.mb = select i1 %.not, i8 0, i8 %i.ma
  store atomic i8 %i.mb, ptr %i.f seq_cst, align 8
  %.pre = load ptr, ptr %11, align 8, !tbaa !105
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  %i.mc = phi ptr [ %i.ls, %bb.ba ], [ %.pre, %bb.bc ] ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.mc, null
  %.neg.i.i15 = select i1 %.not.i.i14, i64 0, i64 -40
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 %.neg.i.i15 ; 3 uses
  invoke void @_ZN8facebook5velox17SelectivityVector6selectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.md, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 28
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !25
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !37
  %i.mi = icmp sge i32 %i.mf, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.mk = zext i1 %i.mi to i8
  store atomic i8 %i.mk, ptr %i.mj seq_cst, align 1
  %i.ml = load atomic i8, ptr %i.f seq_cst, align 8, !range !75, !noundef !76
  %i.mm = load i8, ptr %i.lj, align 8, !tbaa !108, !range !75, !noundef !76
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.bf, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.mo = load ptr, ptr %11, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i18, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.mp = atomicrmw and ptr %i.mo, i32 -401 seq_cst, align 4 ; 2 uses
  %i.mq = and i32 %i.mp, -401
  store i32 %i.mq, ptr %i.c, align 4, !tbaa !24
  %i.mr = and i32 %i.mp, 15
  %.not.i.i.i.i.i19 = icmp eq i32 %i.mr, 0
  br i1 %.not.i.i.i.i.i19, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.bh, !prof !109

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.mo, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.bi

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ms = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0
  call void @__clang_call_terminate(ptr %i.mt) #21
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.be, %bb.bf, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.o
  %.0.in = phi i8 [ %i.aq, %bb.o ], [ %i.ml, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit ]
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0

bb.bk:                                            ; preds = %bb.bb, %bb.p
  %.pn = phi { ptr, i32 } [ %i.lz, %bb.bb ], [ %i.ar, %bb.p ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %.not5 = icmp sgt i32 %i.f, %i.h
  br i1 %.not5, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !79     ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !79     ; 3 uses
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
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !82
  %i.ad = and i64 %i.z, %i.ac
  br label %.loopexit.sink.split.i.i

bb.f:                                             ; preds = %bb.d
end_hunk_0
