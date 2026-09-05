Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/object-stats?download=true
inline.NumInlined: 2047
inline.NumDeleted: 1036
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal24ObjectStatsCollectorImpl28RecordVirtualJSObjectDetailsENS0_6TaggedINS0_8JSObjectEEE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ObjectStatsCollectorImpl34RecordVirtualFeedbackVectorDetailsENS0_6TaggedINS0_14FeedbackVectorEEE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::Tagged.0", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.500", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.630", align 8 ; 4 uses
  %6 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::Tagged.536", align 8 ; 7 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.537", align 8 ; 4 uses
  store i64 %1, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.07.0.i.i, %bb.d ]
  %.sroa.07.0.i.i = load ptr, ptr %.sroa.07.0.in.i.i, align 8 ; 3 uses
  %i.e = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.e, label %_ZN2v88internal11ObjectStats24RecordVirtualObjectStatsENS1_19VirtualInstanceTypeEmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.f, align 8
  %i.g = icmp eq i64 %1, %.sroa.0.0.copyload.i.i.i
  br i1 %i.g, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EE4findERKS4_.exit, label %bb.c, !llvm.loop !1

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = urem i64 %1, %i.i                        ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal11ObjectStats24RecordVirtualObjectStatsENS1_19VirtualInstanceTypeEmm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %1, %i.q
  %.sroa.0.0.copyload.i.i20.i.i.i.i = load i64, ptr %i.o, align 8
  %i.s = icmp eq i64 %1, %.sroa.0.0.copyload.i.i20.i.i.i.i
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.v = icmp eq i64 %1, %i.aa
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %1, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.021.i.i.i.i = phi ptr [ %i.y, %bb.g ], [ %i.n, %bb.f ]
  %i.y = load ptr, ptr %.021.i.i.i.i, align 8     ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i.i.i, label %_ZN2v88internal11ObjectStats24RecordVirtualObjectStatsENS1_19VirtualInstanceTypeEmm.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = urem i64 %i.aa, %i.i
  %.not19.i.i.i.i = icmp eq i64 %i.ab, %i.j
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge22.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge22.i.i.i.i:                   ; preds = %bb.h
  br label %_ZN2v88internal11ObjectStats24RecordVirtualObjectStatsENS1_19VirtualInstanceTypeEmm.exit, !llvm.loop !2

_ZN2v88internal11ObjectStats24RecordVirtualObjectStatsENS1_19VirtualInstanceTypeEmm.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge22.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.a, ptr %6, align 8
  %i.ac = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SJ_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb1EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 17520 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 53376 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 48
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 369848 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 656696 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = load i64, ptr %7, align 8               ; 2 uses
  %i.as = add i64 %i.ar, 23
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8
  %i.av = add i64 %i.au, 31
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %i.aw, align 8            ; 4 uses
  %i.ay = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 10624
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp eq i64 %i.ax, %i.bc
  br i1 %i.bd, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EE4findERKS4_.exit, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit

_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit: ; preds = %_ZN2v88internal11ObjectStats24RecordVirtualObjectStatsENS1_19VirtualInstanceTypeEmm.exit
  %i.be = add i64 %i.ax, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i16, ptr %i.bi monotonic, align 2
  %i.bk = icmp eq i16 %i.bj, 268
  br i1 %i.bk, label %.cont54.preheader, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EE4findERKS4_.exit

.cont54.preheader:                                ; preds = %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit
  %i.bl = add i64 %i.ax, 7
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.cont.lr.ph, label %.cont54._crit_edge

.cont.lr.ph:                                      ; preds = %.cont54.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.cont

.cont54.loopexit:                                 ; preds = %_ZNK2v88internal24FeedbackMetadataIterator10entry_sizeEv.exit30
  %i.br = load i32, ptr %i.bm, align 4
  %i.bs = icmp slt i32 %i.bu, %i.br
  br i1 %i.bs, label %.cont, label %.cont54._crit_edge.loopexit, !llvm.loop !22

.cont:                                            ; preds = %.cont.lr.ph, %.cont54.loopexit
  %.0114 = phi i64 [ 48, %.cont.lr.ph ], [ %i.dn, %.cont54.loopexit ]
  %.sroa.11.0113 = phi i32 [ 0, %.cont.lr.ph ], [ %i.bu, %.cont54.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 %i.ax, ptr %5, align 8
  %i.bt = call noundef zeroext i8 @_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 %.sroa.11.0113) #21 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  switch i8 %i.bt, label %bb.k [
    i8 20, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 21, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 22, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 17, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 16, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 19, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 25, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 4, label %bb.i
    i8 23, label %bb.i
    i8 5, label %bb.i
    i8 7, label %bb.i
    i8 6, label %bb.i
    i8 8, label %bb.i
    i8 9, label %bb.i
    i8 2, label %bb.i
    i8 11, label %bb.i
    i8 12, label %bb.i
    i8 13, label %bb.i
    i8 1, label %bb.i
    i8 10, label %bb.i
    i8 3, label %bb.i
    i8 14, label %bb.i
    i8 15, label %bb.i
    i8 18, label %bb.i
    i8 24, label %bb.i
    i8 0, label %bb.j
  ]

bb.i:                                             ; preds = %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont
  br label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit

bb.j:                                             ; preds = %.cont
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.443) #22
  unreachable

bb.k:                                             ; preds = %.cont
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.443) #22
  unreachable

_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit: ; preds = %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %.cont, %bb.i
  %.0.i.i.i = phi i32 [ 2, %bb.i ], [ 1, %.cont ], [ 1, %.cont ], [ 1, %.cont ], [ 1, %.cont ], [ 1, %.cont ], [ 1, %.cont ], [ 1, %.cont ]
  %i.bu = add nuw nsw i32 %.0.i.i.i, %.sroa.11.0113 ; 2 uses
  %i.bv = sext i8 %i.bt to i64
  %i.bw = getelementptr i8, ptr @switch.table._ZN2v88internal24ObjectStatsCollectorImpl34RecordVirtualFeedbackVectorDetailsENS0_6TaggedINS0_14FeedbackVectorEEE, i64 %i.bv
  %switch.gep = getelementptr i8, ptr %i.bw, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.bx = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.by = load i64, ptr %7, align 8
  %i.bz = shl nsw i32 %.sroa.11.0113, 3
  %narrow = add nuw i32 %i.bz, 47
  %i.ca = zext i32 %narrow to i64
  %i.cb = add i64 %i.by, %i.ca
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load atomic volatile i64, ptr %i.cc monotonic, align 8 ; 4 uses
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = add i64 %i.cf, -55464
  %i.ch = inttoptr i64 %i.cg to ptr               ; 3 uses
  %i.ci = and i64 %i.cd, 4294967295
  %i.cj = icmp eq i64 %i.ci, 3
  br i1 %i.cj, label %_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
  %i.ck = and i64 %i.cd, 1
  %i.cl = icmp eq i64 %i.ck, 0
  %i.cm = and i64 %i.cd, -3
  %spec.select.i.i = select i1 %i.cl, i64 %i.cd, i64 %i.cm ; 3 uses
  switch i8 %i.bt, label %bb.p [
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 7, label %bb.n
    i8 6, label %bb.n
    i8 8, label %bb.n
    i8 9, label %bb.n
    i8 2, label %bb.o
    i8 11, label %bb.o
    i8 12, label %bb.o
    i8 1, label %bb.o
    i8 10, label %bb.o
    i8 3, label %bb.o
    i8 14, label %bb.o
    i8 16, label %_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit
    i8 17, label %_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 7864
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = icmp eq i64 %spec.select.i.i, %i.co
  %..i = select i1 %i.cp, i64 32, i64 31
  br label %_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 7864
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp eq i64 %spec.select.i.i, %i.cr
  %.9.i = select i1 %i.cs, i64 35, i64 34
  br label %_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit

bb.o:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 7864
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = icmp eq i64 %spec.select.i.i, %i.cu
  %.10.i = select i1 %i.cv, i64 38, i64 37
  br label %_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit

bb.p:                                             ; preds = %bb.l
  br label %_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit

_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit, %bb.l, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.1.i = phi i64 [ 36, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit ], [ 36, %bb.p ], [ %..i, %bb.m ], [ %.10.i, %bb.o ], [ %.9.i, %bb.n ], [ 33, %bb.l ], [ 33, %bb.l ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cx = add nuw nsw i64 %.1.i, 2159             ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.cy, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.bx, i64 35864
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cx ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = add i64 %i.dd, %switch.ext
  store i64 %i.de, ptr %i.dc, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.bx, i64 89648
  %i.dg = getelementptr inbounds nuw [128 x i8], ptr %i.df, i64 %i.cx ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.dg, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bx, i64 376496
  %i.dk = getelementptr inbounds nuw [128 x i8], ptr %i.dj, i64 %i.cx ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dk, align 8
  %i.dn = add i64 %.0114, %switch.ext             ; 2 uses
  %switch.tableidx148 = add i8 %i.bt, -16         ; 2 uses
  %i.do = icmp ult i8 %switch.tableidx148, 10
  %i.dp = zext nneg i8 %switch.tableidx148 to i64
  %switch.gep149 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal24ObjectStatsCollectorImpl34RecordVirtualFeedbackVectorDetailsENS0_6TaggedINS0_14FeedbackVectorEEE.1, i64 %i.dp
  br label %bb.q

bb.q:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ 0, %_ZN2v88internalL19GetFeedbackSlotTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16FeedbackSlotKindEPNS0_7IsolateE.exit ] ; 3 uses
  br i1 %i.do, label %switch.lookup, label %_ZNK2v88internal24FeedbackMetadataIterator10entry_sizeEv.exit30

switch.lookup:                                    ; preds = %bb.q
  %switch.load150 = load i8, ptr %switch.gep149, align 1
  %switch.ext151 = zext i8 %switch.load150 to i64
  br label %_ZNK2v88internal24FeedbackMetadataIterator10entry_sizeEv.exit30

_ZNK2v88internal24FeedbackMetadataIterator10entry_sizeEv.exit30: ; preds = %bb.q, %switch.lookup
  %.0.i.i29 = phi i64 [ %switch.ext151, %switch.lookup ], [ 2, %bb.q ]
  %i.dq = icmp samesign ult i64 %indvars.iv, %.0.i.i29
  br i1 %i.dq, label %bb.r, label %.cont54.loopexit

bb.r:                                             ; preds = %_ZNK2v88internal24FeedbackMetadataIterator10entry_sizeEv.exit30
  %i.dr = load i64, ptr %7, align 8               ; 5 uses
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  %10 = add i32 %.sroa.11.0113, %9
  %11 = shl nsw i32 %10, 3
  %narrow99 = add nuw i32 %11, 47
  %12 = zext i32 %narrow99 to i64
  %i.ds = add i64 %i.dr, %12
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load atomic volatile i64, ptr %i.dt monotonic, align 8 ; 6 uses
  %i.dv = trunc i64 %i.du to i1
  %i.dw = and i64 %i.du, 4294967295
  %i.dx = icmp ne i64 %i.dw, 3
  %i.dy = and i1 %i.dx, %i.dv
  br i1 %i.dy, label %bb.s, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.s:                                             ; preds = %bb.r
  %i.dz = and i64 %i.du, -3                       ; 13 uses
  %i.ea = add nsw i64 %i.dz, -1
  %i.eb = inttoptr i64 %i.ea to ptr               ; 5 uses
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i16, ptr %i.ee monotonic, align 2
  %i.eg = icmp eq i16 %i.ef, 261
  br i1 %i.eg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ei = add i64 %i.eh, 11
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load atomic volatile i16, ptr %i.ej monotonic, align 2
  %i.el = add i16 %i.ek, -257
  %i.em = icmp ult i16 %i.el, 2
  br i1 %i.em, label %bb.u, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 %i.dz, ptr %4, align 8
  %i.en = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.eo = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %i.en) #21 ; 3 uses
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.dz, ptr %3, align 8
  %.not = icmp eq i32 %i.eo, 0
  br i1 %.not, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.439, ptr noundef nonnull @.str.440) #22
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.eq = icmp eq i64 %i.dr, 0
  br i1 %i.eq, label %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.er = load ptr, ptr %0, align 8               ; 3 uses
  %i.es = and i64 %i.dr, -262144
  %i.et = inttoptr i64 %i.es to ptr               ; 2 uses
  %.sroa.0.0.copyload.i11.i = load i64, ptr %i.et, align 262144 ; 2 uses
  %i.eu = and i64 %.sroa.0.0.copyload.i11.i, 64
  %.not.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit4.i

.critedge.i.i:                                    ; preds = %bb.x
  %i.ev = and i64 %.sroa.0.0.copyload.i11.i, 1
  %.not.i12.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i12.i, label %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i, label %bb.y, !prof !10

bb.y:                                             ; preds = %.critedge.i.i
  %i.ew = ptrtoint ptr %i.er to i64
  %i.ex = add i64 %i.ew, -55464
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 55448
  %i.fa = load i8, ptr %i.ez, align 8, !range !11, !noundef !12
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i, label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit4.i

_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.y, %.critedge.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 80
  %i.ff = load atomic ptr, ptr %i.fe seq_cst, align 8
  %.not.i.i.i38 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i38, label %bb.z, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !13

bb.z:                                             ; preds = %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.439, ptr noundef nonnull @.str.459) #22
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = add i64 %i.fg, 336
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = lshr i64 %i.dr, 3
  %i.fk = and i64 %i.fj, 63
  %i.fl = shl nuw i64 1, %i.fk
  %i.fm = lshr i64 %i.dr, 9
  %i.fn = and i64 %i.fm, 511
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = and i64 %i.fp, %i.fl
  %i.fr = icmp ne i64 %i.fq, 0
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit4.i

_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit4.i: ; preds = %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.y, %bb.x
  %i.fs = phi ptr [ %.pre.i, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.er, %bb.x ], [ %i.er, %bb.y ]
  %i.ft = phi i1 [ %i.fr, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ true, %bb.x ], [ true, %bb.y ] ; 2 uses
  %i.fu = and i64 %i.du, -262144
  %i.fv = inttoptr i64 %i.fu to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i36 = load i64, ptr %i.fv, align 262144 ; 2 uses
  %i.fw = and i64 %.sroa.0.0.copyload.i.i36, 64
  %.not.i5.i = icmp eq i64 %i.fw, 0
  br i1 %.not.i5.i, label %.critedge.i7.i, label %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thr_comm

.critedge.i7.i:                                   ; preds = %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit4.i
  %i.fx = and i64 %.sroa.0.0.copyload.i.i36, 1
  %.not.i13.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i13.i, label %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit10.i, label %bb.aa, !prof !10

bb.aa:                                            ; preds = %.critedge.i7.i
  %i.fy = ptrtoint ptr %i.fs to i64
  %i.fz = add i64 %i.fy, -55464
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 55448
  %i.gc = load i8, ptr %i.gb, align 8, !range !11, !noundef !12
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit10.i, label %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thr_comm

_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit10.i: ; preds = %bb.aa, %.critedge.i7.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8            ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gh = load atomic ptr, ptr %i.gg seq_cst, align 8
  %.not.i.i14.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i14.i, label %bb.ab, label %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit, !prof !13

bb.ab:                                            ; preds = %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit10.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.439, ptr noundef nonnull @.str.459) #22
  unreachable

_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thr_comm: ; preds = %bb.aa, %_ZN2v88internal13MarkingHelper20IsMarkedOrAlwaysLiveINS0_21NonAtomicMarkingStateEEEbPNS0_4HeapEPT_NS0_6TaggedINS0_10HeapObjectEEE.exit4.i
  br i1 %i.ft, label %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thread, label %_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE.exit

_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit: ; preds = %_ZN2v88internal13MarkingHelper15GetLivenessModeEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit10.i
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = add i64 %i.gi, 336
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = lshr i64 %i.du, 3
  %i.gm = and i64 %i.gl, 63
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = lshr i64 %i.du, 9
  %i.gp = and i64 %i.go, 511
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = and i64 %i.gr, %i.gn
  %i.gt = icmp ne i64 %i.gs, 0
  %i.gu = xor i1 %i.ft, %i.gt
  br i1 %i.gu, label %_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE.exit, label %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thread

_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thread: ; preds = %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thr_comm, %bb.w, %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit
  %i.gv = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.gw = add i64 %i.gv, 11
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = load atomic volatile i16, ptr %i.gx monotonic, align 2
  %i.gz = icmp eq i16 %i.gy, 205
  br i1 %i.gz, label %bb.ac, label %.split.i

bb.ac:                                            ; preds = %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thread
  %i.ha = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.hb = load ptr, ptr %0, align 8
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = add i64 %i.hc, -55464
  %i.he = inttoptr i64 %i.hd to ptr               ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 736
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = icmp ne i64 %i.ha, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 864
  %i.hj = load i64, ptr %i.hi, align 8
  %.not.i.i.i = icmp eq i64 %i.dz, %i.hj
  br i1 %.not.i.i.i, label %_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 1856
  %i.hl = load i64, ptr %i.hk, align 8
  %.not15.i.i.i = icmp eq i64 %i.dz, %i.hl
  br i1 %.not15.i.i.i, label %_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE.exit, label %_ZN2v88internal24ObjectStatsCollectorImpl18ShouldRecordObjectENS0_6TaggedINS0_10HeapObjectEEENS1_7CowModeE.exit.i

.split.i:                                         ; preds = %_ZN2v88internal24ObjectStatsCollectorImpl12SameLivenessENS0_6TaggedINS0_10HeapObjectEEES4_.exit.thread
  %i.hm = load ptr, ptr %0, align 8
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = add i64 %i.hn, -55464
  %i.hp = inttoptr i64 %i.ho to ptr
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 856
  %i.hr = load i64, ptr %i.hq, align 8
  %.not.i = icmp eq i64 %i.dz, %i.hr
  br i1 %.not.i, label %_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE.exit, label %bb.ae

_ZN2v88internal24ObjectStatsCollectorImpl18ShouldRecordObjectENS0_6TaggedINS0_10HeapObjectEEENS1_7CowModeE.exit.i: ; preds = %bb.ad
  %i.hs = getelementptr inbounds nuw i8, ptr %i.he, i64 1888
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = icmp ne i64 %i.dz, %i.ht
  %i.hv = and i1 %i.hh, %i.hu
  br i1 %i.hv, label %bb.ae, label %_ZN2v88internal24ObjectStatsCollectorImpl24RecordVirtualObjectStatsENS0_6TaggedINS0_10HeapObjectEEES4_NS0_11ObjectStats19VirtualInstanceTypeEmmNS1_7CowModeE.exit

bb.ae:                                            ; preds = %_ZN2v88internal24ObjectStatsCollectorImpl18ShouldRecordObjectENS0_6TaggedINS0_10HeapObjectEEENS1_7CowModeE.exit.i, %.split.i
end_hunk_0
