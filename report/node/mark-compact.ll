Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/mark-compact?download=true
inline.NumInlined: 24171
inline.NumDeleted: 6162
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv:bb.a
bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.c, label %bb.d, label %bb.e, !prof !62

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.267) #31
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = load i8, ptr %i.a, align 1
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratordeEv.exit, label %bb.f, !prof !60

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.267) #31
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratordeEv.exit: ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE1EEESt4pairImmENS_4base9TimeDeltaEm(ptr noundef nonnull align 8 dereferenceable(912) %0, i64 %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::RelocIterator", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1254", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1254", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1254", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1254", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1254", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1254", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1254", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1254", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1271", align 8 ; 8 uses
  %13 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1949", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::Tagged.338", align 8 ; 6 uses
  %15 = alloca %"class.absl::container_internal::raw_hash_set<absl::container_internal::FlatHashMapPolicy<v8::internal::Tagged<v8::internal::HeapObject>, v8::base::SmallVector<v8::internal::Tagged<v8::internal::HeapObject>, 1>>, v8::internal::Object::Hasher, v8::internal::Object::KeyEqualSafe, std::allocator<std::pair<const v8::internal::Tagged<v8::internal::HeapObject>, v8::base::SmallVector<v8::internal::Tagged<v8::internal::HeapObject>, 1>>>>::iterator", align 8 ; 4 uses
  %16 = alloca %"struct.std::pair.1119", align 8  ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.v8::internal::Tagged.338", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store i64 0, ptr %17, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i8, ptr %i.d, align 8, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.i = load i8, ptr %i.h, align 1, !range !57, !noundef !58
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.l = load i8, ptr %i.k, align 8, !range !57, !noundef !58
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1928
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @_ZN2v88internal17ConcurrentMarking21RescheduleJobIfNeededENS0_16GarbageCollectorENS_12TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(112) %i.p, i32 noundef 1, i8 noundef zeroext 2) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge3836, %bb.d
  %.02347 = phi i64 [ 0, %bb.d ], [ %i.dmx, %.backedge3836 ] ; 3 uses
  %.02346 = phi i64 [ 0, %bb.d ], [ %i.dmy, %.backedge3836 ] ; 3 uses
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = call noundef zeroext i1 @_ZN2v88internal16MarkingWorklists5Local3PopEPNS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.w, ptr noundef nonnull %17)
  br i1 %i.x, label %..critedge_crit_edge, label %bb.f

..critedge_crit_edge:                             ; preds = %bb.e
  %.sroa.030.0.copyload.pre = load i64, ptr %17, align 8
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = load i16, ptr %i.ac, align 2            ; 2 uses
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ab, ptr %i.af, align 8
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.z, align 8, !nonnull !58, !align !65 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = load atomic i64, ptr %i.al monotonic, align 8
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %.not.i.i201 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i201, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE3PopEPPNS7_7SegmentE.exit.i.i, label %bb.k

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE3PopEPPNS7_7SegmentE.exit.i.i: ; preds = %bb.j
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #31
  br label %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aq = atomicrmw add ptr %i.al, i64 -1 monotonic, align 8 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.ao, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #31
  %i.at = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.au = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.at) #31
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.k, %bb.h
  %.sink.i = phi ptr [ %i.ag, %bb.h ], [ %i.ap, %bb.k ], [ %i.ap, %bb.l ] ; 3 uses
  store ptr %.sink.i, ptr %i.aa, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink.i, i64 2
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.f, %.sink.split.i
  %i.aw = phi i16 [ %i.ad, %bb.f ], [ %.pre, %.sink.split.i ]
  %i.ax = phi ptr [ %i.ab, %bb.f ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = add i16 %i.aw, -1                       ; 2 uses
  store i16 %i.az, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  store i64 %i.bd, ptr %17, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %.sroa.030.0.copyload = phi i64 [ %.sroa.030.0.copyload.pre, %..critedge_crit_edge ], [ %i.bd, %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 5 uses
  %i.be = add i64 %.sroa.030.0.copyload, -1
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i16, ptr %i.bi monotonic, align 2
  %i.bk = and i16 %i.bj, -2
  %i.bl = icmp eq i16 %i.bk, 270
  br i1 %i.bl, label %bb.m, label %bb.n, !prof !62

bb.m:                                             ; preds = %.critedge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.266) #34
  unreachable

bb.n:                                             ; preds = %.critedge
  %i.bm = load i64, ptr %i.q, align 8             ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 2
  br i1 %i.bn, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.s, align 8
  %.not.i.i.i = icmp ult i64 %i.bo, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.t, align 8 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.bp = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.sroa.030.0.copyload
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.bp, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit

bb.q:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.r, align 8 ; 3 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.bq = load i64, ptr %i.s, align 8
  %i.br = shl i64 %i.bq, 48
  %i.bs = ashr exact i64 %i.br, 48
  %i.bt = xor i64 %i.bs, %.sroa.030.0.copyload    ; 2 uses
  %i.bu = lshr i64 %i.bt, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.bw = insertelement <16 x i8> poison, i8 %i.bv, i64 0
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.pn.i8.i = phi i64 [ %i.bt, %bb.q ], [ %i.cp, %bb.t ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.q ], [ %i.co, %bb.t ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.bm       ; 4 uses
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  call void @llvm.prefetch.p0(ptr %i.by, i32 0, i32 3, i32 1)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ca = load <16 x i8>, ptr %i.bz, align 1      ; 2 uses
  %i.cb = icmp eq <16 x i8> %i.bx, %i.ca
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.s
  %.sroa.017.047.i.i = phi i16 [ %i.cl, %bb.s ], [ %i.cc, %bb.r ] ; 3 uses
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = add i64 %.sroa.6.0.i.i, %i.ce
  %i.cg = and i64 %i.cf, %i.bm                    ; 2 uses
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.cg ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i9.i = load i64, ptr %i.ch, align 8
  %i.ci = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i9.i, %.sroa.030.0.copyload
  br i1 %i.ci, label %.thread33.i.i, label %bb.s, !prof !60

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.cg
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ck = add i16 %.sroa.017.047.i.i, -1
  %i.cl = and i16 %i.ck, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i204 = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i204, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.s, %bb.r
  %i.cm = icmp eq <16 x i8> %i.ca, splat (i8 -128)
  %i.cn = bitcast <16 x i1> %i.cm to i16
  %.not44.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not44.i.i, label %bb.t, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i, !prof !62

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.co = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.cp = add i64 %i.co, %.sroa.6.0.i.i
  br label %bb.r, !llvm.loop !361

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.cj, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ch, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit: ; preds = %bb.o, %bb.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i ], [ { ptr null, ptr undef }, %bb.o ], [ %spec.select.i.i, %bb.p ] ; 2 uses
  %i.cq = extractvalue { ptr, ptr } %.pn.i, 0     ; 5 uses
  %i.cr = extractvalue { ptr, ptr } %.pn.i, 1     ; 3 uses
  %i.cs = icmp eq ptr %i.cq, null                 ; 2 uses
  %i.ct = icmp eq ptr %i.cq, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i205 = or i1 %i.cs, %i.ct
  br i1 %or.cond.i.i.i205, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit
  %i.cu = load i8, ptr %i.cq, align 1
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.v, !prof !60

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.u, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit
  br i1 %i.ct, label %bb.w, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorESN_.exit, !prof !62

bb.w:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.275) #31
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.cs, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorESN_.exit
  %i.cw = load i8, ptr %i.cq, align 1
  %i.cx = icmp sgt i8 %i.cw, -1
  br i1 %i.cx, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit, label %bb.y, !prof !60

bb.y:                                             ; preds = %bb.x
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.267) #31
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit: ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not2653 = icmp eq ptr %i.cz, %i.db
  br i1 %.not2653, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr nonnull %i.cq, ptr %i.cr)
  %.pre2866 = load i64, ptr %17, align 8          ; 2 uses
  %.pre2885 = add i64 %.pre2866, -1
  %.pre2886 = inttoptr i64 %.pre2885 to ptr
  br label %bb.ai

.lr.ph:                                           ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit, %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit
  %.0392654 = phi ptr [ %i.fl, %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit ], [ %i.cz, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit ] ; 2 uses
  %.sroa.023.0.copyload = load i64, ptr %.0392654, align 8 ; 4 uses
  %i.dc = load ptr, ptr %0, align 8
  %i.dd = and i64 %.sroa.023.0.copyload, -262144
  %i.de = inttoptr i64 %i.dd to ptr               ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.de, align 262144 ; 2 uses
  %i.df = and i64 %.sroa.0.0.copyload.i, 64
  %.not.i = icmp eq i64 %i.df, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit

.critedge.i:                                      ; preds = %.lr.ph
  %i.dg = and i64 %.sroa.0.0.copyload.i, 1
  %.not.i207 = icmp eq i64 %i.dg, 0
  br i1 %.not.i207, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %bb.z, !prof !60

bb.z:                                             ; preds = %.critedge.i
  %i.dh = ptrtoint ptr %i.dc to i64
  %i.di = add i64 %i.dh, -55464
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 55448
  %i.dl = load i8, ptr %i.dk, align 8, !range !57, !noundef !58
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit

_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit: ; preds = %bb.z, %.critedge.i
  %i.dn = load ptr, ptr %i.b, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.dr = load atomic ptr, ptr %i.dq seq_cst, align 8
  %.not.i.i208 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i208, label %bb.aa, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !62

bb.aa:                                            ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.243) #34
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = add i64 %i.ds, 336
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = lshr i64 %.sroa.023.0.copyload, 3
  %i.dw = and i64 %i.dv, 63
  %i.dx = shl nuw i64 1, %i.dw                    ; 2 uses
  %i.dy = lshr i64 %.sroa.023.0.copyload, 9
  %i.dz = and i64 %i.dy, 511
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dz ; 2 uses
  %i.eb = load atomic volatile i64, ptr %i.ea monotonic, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit
  %.0.i.i211 = phi i64 [ %i.eb, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.ef, %bb.ac ] ; 3 uses
  %i.ec = and i64 %.0.i.i211, %i.dx
  %.not16.not.not.i.not.not.not.i.not.not = icmp eq i64 %i.ec, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not, label %bb.ac, label %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ed = or i64 %.0.i.i211, %i.dx
  %i.ee = cmpxchg volatile ptr %i.ea, i64 %.0.i.i211, i64 %i.ed monotonic monotonic, align 8 ; 2 uses
  %i.ef = extractvalue { i64, i1 } %i.ee, 0
  %.not.i.i212 = extractvalue { i64, i1 } %i.ee, 1
  br i1 %.not.i.i212, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit, label %bb.ab, !llvm.loop !14

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit: ; preds = %bb.ac
  %i.eg = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8            ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.ek = load i16, ptr %i.ej, align 2            ; 2 uses
  %i.el = load i16, ptr %i.ei, align 2
  %i.em = icmp eq i16 %i.ek, %i.el
  br i1 %i.em, label %bb.ad, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !62

bb.ad:                                            ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit
  %i.en = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %.not.i909 = icmp eq ptr %i.ei, %i.en
  br i1 %.not.i909, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eo = load ptr, ptr %i.eg, align 8, !nonnull !58, !align !65 ; 4 uses
  %i.ep = load ptr, ptr %i.eh, align 8            ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eo) #31
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.er, ptr %i.es, align 8
  store ptr %i.ep, ptr %i.eq, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eu = atomicrmw add ptr %i.et, i64 1 monotonic, align 8 ; 0 uses
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eo) #31
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.ad, %bb.ae
  %i.ev = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !57, !noundef !58
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #37 ; 7 uses
  br i1 %i.ew, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %i.ey = call noundef i64 @malloc_usable_size(ptr noundef %i.ex) #31
  %i.ez = add i64 %i.ey, 524272
  %i.fa = lshr i64 %i.ez, 3
  %i.fb = trunc i64 %i.fa to i16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %.sroa.6.0.i.i907 = phi i16 [ %i.fb, %bb.af ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit ]
  %.not.i.i908 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i908, label %bb.ah, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.265) #34
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit: ; preds = %bb.ag
  store i16 %.sroa.6.0.i.i907, ptr %i.ex, align 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 2 ; 2 uses
  store i16 0, ptr %i.fc, align 2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
end_hunk_0
