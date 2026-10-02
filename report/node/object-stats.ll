Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/object-stats?download=true
inline.NumInlined: 2047
inline.NumDeleted: 1036
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal24ObjectStatsCollectorImpl23CollectGlobalStatisticsEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1648
  %.sroa.032.036 = load i64, ptr %i.b, align 8    ; 2 uses
  %i.c = trunc i64 %.sroa.032.036 to i1
  br i1 %i.c, label %_ZN2v88internal2IsINS0_14AllocationSiteENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, label %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i._crit_edge

_ZN2v88internal2IsINS0_14AllocationSiteENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i: ; preds = %bb.a, %_ZN2v88internal7TryCastINS0_26AllocationSiteWithWeakNextENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %.sroa.032.037 = phi i64 [ %.sroa.032.0, %_ZN2v88internal7TryCastINS0_26AllocationSiteWithWeakNextENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit ], [ %.sroa.032.036, %bb.a ] ; 2 uses
  %i.d = add nsw i64 %.sroa.032.037, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 259
  br i1 %i.j, label %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, label %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i._crit_edge.loopexit

_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %_ZN2v88internal2IsINS0_14AllocationSiteENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i
  %i.k = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.l = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10624
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8240
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %_ZN2v88internal7TryCastINS0_26AllocationSiteWithWeakNextENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, label %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i._crit_edge.loopexit

_ZN2v88internal7TryCastINS0_26AllocationSiteWithWeakNextENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit: ; preds = %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  tail call void @_ZN2v88internal24ObjectStatsCollectorImpl34RecordVirtualAllocationSiteDetailsENS0_6TaggedINS0_14AllocationSiteEEE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 %.sroa.032.037)
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.032.0 = load i64, ptr %i.r, align 8      ; 2 uses
  %i.s = trunc i64 %.sroa.032.0 to i1
  br i1 %i.s, label %_ZN2v88internal2IsINS0_14AllocationSiteENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, label %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i._crit_edge.loopexit, !llvm.loop !27

_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i._crit_edge.loopexit: ; preds = %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, %_ZN2v88internal2IsINS0_14AllocationSiteENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, %_ZN2v88internal7TryCastINS0_26AllocationSiteWithWeakNextENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i._crit_edge

_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i._crit_edge: ; preds = %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i._crit_edge.loopexit, %bb.a
  %i.t = phi ptr [ %.pre, %_ZN2v88internal2IsINS0_26AllocationSiteWithWeakNextENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = add i64 %i.u, -55464
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 9680
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 %i.y, ptr %6, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %i.ab) #21
  %i.ad = sext i32 %i.ac to i64
  %i.ae = call noundef zeroext i1 @_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 0, i64 %i.y, i32 noundef 73, i64 noundef %i.ad, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.af = load ptr, ptr %0, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = add i64 %i.ag, -55464
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 9608
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 %i.ak, ptr %5, align 8
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 %i.an) #21
  %i.ap = sext i32 %i.ao to i64
  %i.aq = call noundef zeroext i1 @_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 0, i64 %i.ak, i32 noundef 52, i64 noundef %i.ap, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ar = load ptr, ptr %0, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = add i64 %i.as, -55464
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 9616
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 %i.aw, ptr %4, align 8
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %i.az) #21
  %i.bb = sext i32 %i.ba to i64
  %i.bc = call noundef zeroext i1 @_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 0, i64 %i.aw, i32 noundef 52, i64 noundef %i.bb, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.bd = load ptr, ptr %0, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = add i64 %i.be, -55464
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 9248
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i64 %i.bi, ptr %3, align 8
  %i.bj = add i64 %i.bi, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %i.bl) #21
  %i.bn = sext i32 %i.bm to i64
  %i.bo = call noundef zeroext i1 @_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 0, i64 %i.bi, i32 noundef 74, i64 noundef %i.bn, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bp = load ptr, ptr %0, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = add i64 %i.bq, -55464
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 9256
  %i.bu = load i64, ptr %i.bt, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i64 %i.bu, ptr %2, align 8
  %i.bv = add i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %i.by = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %i.bx) #21
  %i.bz = sext i32 %i.by to i64
  %i.ca = call noundef zeroext i1 @_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 0, i64 %i.bu, i32 noundef 64, i64 noundef %i.bz, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.cb = load ptr, ptr %0, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.cc, -55464
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 9648
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i64 %i.cg, ptr %1, align 8
  %i.ch = add i64 %i.cg, -1
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load atomic volatile i64, ptr %i.ci monotonic, align 8
  %i.ck = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.cj) #21
  %i.cl = sext i32 %i.ck to i64
  %i.cm = call noundef zeroext i1 @_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 0, i64 %i.cg, i32 noundef 67, i64 noundef %i.cl, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

declare noundef i32 @_ZNK2v88internal14ExternalString19ExternalPayloadSizeEv(ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ObjectStatsCollectorImpl52RecordVirtualObjectsForConstantPoolOrEmbeddedObjectsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.500", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 %2, ptr %4, align 8
  %i.a = add i64 %2, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %i.c) #21
  %i.e = sext i32 %i.d to i64
  %i.f = call noundef zeroext i1 @_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 %1, i64 %2, i32 noundef %3, i64 noundef %i.e, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 205
  br i1 %i.k, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.r = phi i64 [ %i.m, %.lr.ph ], [ %i.v, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal24ObjectStatsCollectorImpl52RecordVirtualObjectsForConstantPoolOrEmbeddedObjectsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 %2, i64 %i.t, i32 noundef %3)
  %.pre = load i64, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.v = phi i64 [ %i.r, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = ashr i64 %i.v, 32
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.c, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a, %bb.b
  ret void
}

declare void @_ZN2v88internal13RelocIteratorC1ENS0_6TaggedINS0_4CodeEEEi(ptr noundef nonnull align 8 dereferenceable(56), i64, i32 noundef) unnamed_addr #4

declare void @_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20ObjectStatsCollector7CollectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::CombinedHeapObjectIterator", align 8 ; 12 uses
  %2 = alloca %"class.v8::internal::ObjectStatsCollectorImpl", align 8 ; 32 uses
  %3 = alloca %"class.v8::internal::ObjectStatsCollectorImpl", align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  store ptr %i.a, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2848 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 663376
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 663384
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal19FieldStatsCollectorE, i64 16), ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 192
  store ptr %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.a, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 208
  %4 = getelementptr inbounds nuw i8, ptr %i.c, <4 x i64> <i64 663344, i64 663352, i64 663360, i64 663368>
  store <4 x ptr> %4, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 240
  store ptr %i.t, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 248
  store ptr %i.u, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8            ; 4 uses
  store ptr %i.a, ptr %3, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 663376
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 663384
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal19FieldStatsCollectorE, i64 16), ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.a, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 208
  %5 = getelementptr inbounds nuw i8, ptr %i.ag, <4 x i64> <i64 663344, i64 663352, i64 663360, i64 663368>
  store <4 x ptr> %5, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 240
  store ptr %i.aw, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 248
  store ptr %i.ax, ptr %i.bh, align 8
  call void @_ZN2v88internal24ObjectStatsCollectorImpl23CollectGlobalStatisticsEv(ptr noundef nonnull align 8 dereferenceable(256) %2)
  %i.bi = load ptr, ptr %0, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN2v88internal26CombinedHeapObjectIteratorC1EPNS0_4HeapENS0_18HeapObjectIterator20HeapObjectsFilteringE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %i.bi, i32 noundef 0) #21
  %i.bj = call i64 @_ZN2v88internal26CombinedHeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #21 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZN2v88internal12_GLOBAL__N_111IterateHeapEPNS0_4HeapEPNS0_18ObjectStatsVisitorE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = add i64 %i.bl, -55464
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 55448
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit
  %storemerge5.i = phi i64 [ %i.ck, %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.bj, %.lr.ph.i.preheader ] ; 5 uses
  %i.bp = and i64 %storemerge5.i, -262144
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bq, align 262144 ; 2 uses
  %i.br = and i64 %.sroa.0.0.copyload.i.i, 64
  %.not.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.bs = and i64 %.sroa.0.0.copyload.i.i, 1
  %.not.i6.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i6.i, label %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %.critedge.i.i
  %i.bt = load i8, ptr %i.bo, align 8, !range !11, !noundef !12
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i

_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.b, %.critedge.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.by = load atomic ptr, ptr %i.bx seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %.loopexit, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !13

.loopexit:                                        ; preds = %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i.1
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.439, ptr noundef nonnull @.str.459) #22
  unreachable

_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = add i64 %i.bz, 336
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = lshr i64 %storemerge5.i, 3
  %i.cd = and i64 %i.cc, 63
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = lshr i64 %storemerge5.i, 9
  %i.cg = and i64 %i.cf, 511
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = and i64 %i.ci, %i.ce
  %.not.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i

_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.b, %.lr.ph.i
  call void @_ZN2v88internal24ObjectStatsCollectorImpl17CollectStatisticsENS0_6TaggedINS0_10HeapObjectEEENS1_5PhaseENS1_17CollectFieldStatsE(ptr noundef nonnull align 8 dereferenceable(256) %2, i64 %storemerge5.i, i32 noundef 0, i32 noundef 1)
  br label %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.i
  call void @_ZN2v88internal24ObjectStatsCollectorImpl17CollectStatisticsENS0_6TaggedINS0_10HeapObjectEEENS1_5PhaseENS1_17CollectFieldStatsE(ptr noundef nonnull align 8 dereferenceable(256) %3, i64 %storemerge5.i, i32 noundef 0, i32 noundef 0)
  br label %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i, %bb.c
  %i.ck = call i64 @_ZN2v88internal26CombinedHeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #21 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZN2v88internal12_GLOBAL__N_111IterateHeapEPNS0_4HeapEPNS0_18ObjectStatsVisitorE.exit, label %.lr.ph.i, !llvm.loop !29

_ZN2v88internal12_GLOBAL__N_111IterateHeapEPNS0_4HeapEPNS0_18ObjectStatsVisitorE.exit: ; preds = %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.a
  call void @_ZN2v88internal18HeapObjectIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(96) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.cm = load ptr, ptr %0, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN2v88internal26CombinedHeapObjectIteratorC1EPNS0_4HeapENS0_18HeapObjectIterator20HeapObjectsFilteringE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %i.cm, i32 noundef 0) #21
  %i.cn = call i64 @_ZN2v88internal26CombinedHeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #21 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_ZN2v88internal12_GLOBAL__N_111IterateHeapEPNS0_4HeapEPNS0_18ObjectStatsVisitorE.exit.1, label %.lr.ph.i.preheader.1

.lr.ph.i.preheader.1:                             ; preds = %_ZN2v88internal12_GLOBAL__N_111IterateHeapEPNS0_4HeapEPNS0_18ObjectStatsVisitorE.exit
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = add i64 %i.cp, -55464
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 55448
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit.1, %.lr.ph.i.preheader.1
  %storemerge5.i.1 = phi i64 [ %i.do, %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit.1 ], [ %i.cn, %.lr.ph.i.preheader.1 ] ; 5 uses
  %i.ct = and i64 %storemerge5.i.1, -262144
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.cu, align 262144 ; 2 uses
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.1, 64
  %.not.i.i.1 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.1, label %.critedge.i.i.1, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i.1

.critedge.i.i.1:                                  ; preds = %.lr.ph.i.1
  %i.cw = and i64 %.sroa.0.0.copyload.i.i.1, 1
  %.not.i6.i.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.i6.i.1, label %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i.1, label %bb.d, !prof !10

bb.d:                                             ; preds = %.critedge.i.i.1
  %i.cx = load i8, ptr %i.cs, align 8, !range !11, !noundef !12
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i.1, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i.1

_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i.1: ; preds = %bb.d, %.critedge.i.i.1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load atomic ptr, ptr %i.db seq_cst, align 8
  %.not.i.i.i.1 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.1, label %.loopexit, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.1, !prof !13

_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.1: ; preds = %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i.1
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = add i64 %i.dd, 336
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = lshr i64 %storemerge5.i.1, 3
  %i.dh = and i64 %i.dg, 63
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = lshr i64 %storemerge5.i.1, 9
  %i.dk = and i64 %i.dj, 511
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = and i64 %i.dm, %i.di
  %.not.i.1 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.1, label %bb.e, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i.1

_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i.1: ; preds = %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.1, %bb.d, %.lr.ph.i.1
  call void @_ZN2v88internal24ObjectStatsCollectorImpl17CollectStatisticsENS0_6TaggedINS0_10HeapObjectEEENS1_5PhaseENS1_17CollectFieldStatsE(ptr noundef nonnull align 8 dereferenceable(256) %2, i64 %storemerge5.i.1, i32 noundef 1, i32 noundef 1)
  br label %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit.1

bb.e:                                             ; preds = %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.1
  call void @_ZN2v88internal24ObjectStatsCollectorImpl17CollectStatisticsENS0_6TaggedINS0_10HeapObjectEEENS1_5PhaseENS1_17CollectFieldStatsE(ptr noundef nonnull align 8 dereferenceable(256) %3, i64 %storemerge5.i.1, i32 noundef 1, i32 noundef 0)
  br label %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit.1

_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit.1: ; preds = %bb.e, %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i.1
  %i.do = call i64 @_ZN2v88internal26CombinedHeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #21 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_ZN2v88internal12_GLOBAL__N_111IterateHeapEPNS0_4HeapEPNS0_18ObjectStatsVisitorE.exit.1, label %.lr.ph.i.1, !llvm.loop !29

_ZN2v88internal12_GLOBAL__N_111IterateHeapEPNS0_4HeapEPNS0_18ObjectStatsVisitorE.exit.1: ; preds = %_ZN2v88internal18ObjectStatsVisitor5VisitENS0_6TaggedINS0_10HeapObjectEEE.exit.1, %_ZN2v88internal12_GLOBAL__N_111IterateHeapEPNS0_4HeapEPNS0_18ObjectStatsVisitorE.exit
  call void @_ZN2v88internal18HeapObjectIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(96) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @_ZN2v88internal24ObjectStatsCollectorImplD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN2v88internal24ObjectStatsCollectorImplD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal24ObjectStatsCollectorImplD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal19FieldStatsCollectorE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_3MapEEESt4pairIKS4_NS1_19FieldStatsCollector18JSObjectFieldStatsEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.06.i.i.i.i.i, align 8    ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 32) #23, !inline_history !14
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_3MapEEESt4pairIKS4_NS1_19FieldStatsCollector18JSObjectFieldStatsEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt10_HashtableIN2v88internal6TaggedINS1_3MapEEESt4pairIKS4_NS1_19FieldStatsCollector18JSObjectFieldStatsEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN2v88internal19FieldStatsCollectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_3MapEEESt4pairIKS4_NS1_19FieldStatsCollector18JSObjectFieldStatsEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.m = load i64, ptr %i.g, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23, !inline_history !14
  br label %_ZN2v88internal19FieldStatsCollectorD2Ev.exit

_ZN2v88internal19FieldStatsCollectorD2Ev.exit:    ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_3MapEEESt4pairIKS4_NS1_19FieldStatsCollector18JSObjectFieldStatsEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
end_hunk_0
