inline.NumInlined: 24171
inline.NumDeleted: 6162
begin_hunk_0_@_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.c, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.267) #31
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = load i8, ptr %i.a, align 1
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratordeEv.exit, label %bb.f, !prof !10

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
  %i.e = load i8, ptr %i.d, align 8, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.i = load i8, ptr %i.h, align 1, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.l = load i8, ptr %i.k, align 8, !range !5
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %i.j, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1928
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @_ZN2v88internal17ConcurrentMarking21RescheduleJobIfNeededENS0_16GarbageCollectorENS_12TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(112) %i.p, i32 noundef 1, i8 noundef zeroext 2) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.backedge3861, %bb.c
  %.02349 = phi i64 [ 0, %bb.c ], [ %i.dna, %.backedge3861 ] ; 3 uses
  %.02348 = phi i64 [ 0, %bb.c ], [ %i.dnb, %.backedge3861 ] ; 3 uses
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = call noundef zeroext i1 @_ZN2v88internal16MarkingWorklists5Local3PopEPNS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.w, ptr noundef nonnull %17)
  br i1 %i.x, label %..critedge_crit_edge, label %bb.e

..critedge_crit_edge:                             ; preds = %bb.d
  %.sroa.030.0.copyload.pre = load i64, ptr %17, align 8
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = load i16, ptr %i.ac, align 2            ; 2 uses
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.af, align 8
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.z, align 8, !nonnull !6, !align !53 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = load atomic i64, ptr %i.al monotonic, align 8
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %.not.i.i203 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i203, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE3PopEPPNS7_7SegmentE.exit.i.i, label %bb.j

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE3PopEPPNS7_7SegmentE.exit.i.i: ; preds = %bb.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #31
  br label %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aq = atomicrmw sub ptr %i.al, i64 1 monotonic, align 8 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.ao, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #31
  %i.at = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.au = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.at) #31
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j, %bb.g
  %.sink.i = phi ptr [ %i.ag, %bb.g ], [ %i.ap, %bb.j ], [ %i.ap, %bb.k ] ; 3 uses
  store ptr %.sink.i, ptr %i.aa, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink.i, i64 2
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local9PopOnHoldEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.e, %.sink.split.i
  %i.aw = phi i16 [ %i.ad, %bb.e ], [ %.pre, %.sink.split.i ]
  %i.ax = phi ptr [ %i.ab, %bb.e ], [ %.sink.i, %.sink.split.i ] ; 2 uses
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
  br i1 %i.bl, label %bb.l, label %bb.m, !prof !38

bb.l:                                             ; preds = %.critedge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.266) #34
  unreachable

bb.m:                                             ; preds = %.critedge
  %i.bm = load i64, ptr %i.q, align 8             ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 2
  br i1 %i.bn, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bo = load i64, ptr %i.s, align 8
  %.not.i.i.i = icmp ult i64 %i.bo, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.t, align 8 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.bp = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.sroa.030.0.copyload
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.bp, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit

bb.p:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.r, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.bq = load i64, ptr %i.s, align 8
  %sext.i = shl i64 %i.bq, 48
  %i.br = ashr exact i64 %sext.i, 48
  %i.bs = xor i64 %i.br, %.sroa.030.0.copyload    ; 2 uses
  %i.bt = lshr i64 %i.bs, 57
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.bv = insertelement <16 x i8> poison, i8 %i.bu, i64 0
  %i.bw = shufflevector <16 x i8> %i.bv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i8.i = phi i64 [ %i.bs, %bb.p ], [ %i.co, %bb.s ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.p ], [ %i.cn, %bb.s ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.bm       ; 4 uses
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  call void @llvm.prefetch.p0(ptr %i.bx, i32 0, i32 3, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.bz = load <16 x i8>, ptr %i.by, align 1      ; 2 uses
  %i.ca = icmp eq <16 x i8> %i.bw, %i.bz
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.017.047.i.i = phi i16 [ %i.ck, %bb.r ], [ %i.cb, %bb.q ] ; 3 uses
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = add i64 %.sroa.6.0.i.i, %i.cd
  %i.cf = and i64 %i.ce, %i.bm                    ; 2 uses
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.cf ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i9.i = load i64, ptr %i.cg, align 8
  %i.ch = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i9.i, %.sroa.030.0.copyload
  br i1 %i.ch, label %.thread33.i.i, label %bb.r, !prof !10

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cj = add i16 %.sroa.017.047.i.i, -1
  %i.ck = and i16 %i.cj, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i206 = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i206, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.r, %bb.q
  %i.cl = icmp eq <16 x i8> %i.bz, splat (i8 -128)
  %i.cm = bitcast <16 x i1> %i.cl to i16
  %.not44.i.i = icmp eq i16 %i.cm, 0
  br i1 %.not44.i.i, label %bb.s, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i, !prof !38

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.cn = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.co = add i64 %i.cn, %.sroa.6.0.i.i
  br label %bb.q, !llvm.loop !295

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ci, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.cg, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit: ; preds = %bb.n, %bb.o, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i ], [ { ptr null, ptr undef }, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %.pn.i, 0     ; 5 uses
  %i.cq = extractvalue { ptr, ptr } %.pn.i, 1     ; 3 uses
  %i.cr = icmp eq ptr %i.cp, null                 ; 2 uses
  %i.cs = icmp eq ptr %i.cp, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i207 = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i.i207, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit
  %i.ct = load i8, ptr %i.cp, align 1
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.t, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit
  br i1 %i.cs, label %bb.v, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorESN_.exit, !prof !38

bb.v:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.275) #31
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.cr, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorESN_.exit
  %i.cv = load i8, ptr %i.cp, align 1
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.267) #31
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit: ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not2665 = icmp eq ptr %i.cy, %i.da
  br i1 %.not2665, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr nonnull %i.cp, ptr %i.cq)
  %.pre2880 = load i64, ptr %17, align 8          ; 2 uses
  %.pre2899 = add i64 %.pre2880, -1
  %.pre2900 = inttoptr i64 %.pre2899 to ptr
  br label %bb.ag

.lr.ph:                                           ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit, %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit
  %.0392667 = phi ptr [ %i.fk, %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit ], [ %i.cy, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit ] ; 2 uses
  %.sroa.023.0.copyload = load i64, ptr %.0392667, align 8 ; 4 uses
  %i.db = load ptr, ptr %0, align 8
  %i.dc = and i64 %.sroa.023.0.copyload, -262144
  %i.dd = inttoptr i64 %i.dc to ptr               ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.dd, align 262144 ; 2 uses
  %i.de = and i64 %.sroa.0.0.copyload.i, 64
  %.not.i = icmp eq i64 %i.de, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit

.critedge.i:                                      ; preds = %.lr.ph
  %i.df = and i64 %.sroa.0.0.copyload.i, 1
  %.not.i209 = icmp eq i64 %i.df, 0
  br i1 %.not.i209, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %_ZN2v88internal13MarkingHelper16ShouldMarkObjectEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !10

_ZN2v88internal13MarkingHelper16ShouldMarkObjectEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %.critedge.i
  %i.dg = ptrtoint ptr %i.db to i64
  %i.dh = add i64 %i.dg, -55464
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 55448
  %i.dk = load i8, ptr %i.dj, align 8, !range !5, !noundef !6
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit

_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit: ; preds = %.critedge.i, %_ZN2v88internal13MarkingHelper16ShouldMarkObjectEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.dm = load ptr, ptr %i.b, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  %i.dq = load atomic ptr, ptr %i.dp seq_cst, align 8
  %.not.i.i210 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i210, label %bb.y, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !38

bb.y:                                             ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.243) #34
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = add i64 %i.dr, 336
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = lshr i64 %.sroa.023.0.copyload, 3
  %i.dv = and i64 %i.du, 63
  %i.dw = shl nuw i64 1, %i.dv                    ; 2 uses
  %i.dx = lshr i64 %.sroa.023.0.copyload, 9
  %i.dy = and i64 %i.dx, 511
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dy ; 2 uses
  %i.ea = load atomic volatile i64, ptr %i.dz monotonic, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit
  %.013.i.i = phi i64 [ %i.ea, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.ee, %bb.aa ] ; 3 uses
  %i.eb = and i64 %.013.i.i, %i.dw
  %.not16.not.not.i.not.not.not.i = icmp eq i64 %i.eb, 0
  br i1 %.not16.not.not.i.not.not.not.i, label %bb.aa, label %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ec = or i64 %.013.i.i, %i.dw
  %i.ed = cmpxchg volatile ptr %i.dz, i64 %.013.i.i, i64 %i.ec monotonic monotonic, align 8 ; 2 uses
  %i.ee = extractvalue { i64, i1 } %i.ed, 0
  %.not.i.i213 = extractvalue { i64, i1 } %i.ed, 1
  br i1 %.not.i.i213, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit, label %bb.z, !llvm.loop !225

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit: ; preds = %bb.aa
  %i.ef = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8            ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ej = load i16, ptr %i.ei, align 2            ; 2 uses
  %i.ek = load i16, ptr %i.eh, align 2
  %i.el = icmp eq i16 %i.ej, %i.ek
  br i1 %i.el, label %bb.ab, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !38

bb.ab:                                            ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit
  %i.em = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %.not.i911 = icmp eq ptr %i.eh, %i.em
  br i1 %.not.i911, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.en = load ptr, ptr %i.ef, align 8, !nonnull !6, !align !53 ; 4 uses
  %i.eo = load ptr, ptr %i.eg, align 8            ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en) #31
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.eq, ptr %i.er, align 8
  store ptr %i.eo, ptr %i.ep, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.et = atomicrmw add ptr %i.es, i64 1 monotonic, align 8 ; 0 uses
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en) #31
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.ab, %bb.ac
  %i.eu = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !5, !noundef !6
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #37 ; 7 uses
  br i1 %i.ev, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %i.ex = call noundef i64 @malloc_usable_size(ptr noundef %i.ew) #31
  %i.ey = add i64 %i.ex, 524272
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = trunc i64 %i.ez to i16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %.sroa.6.0.i.i909 = phi i16 [ %i.fa, %bb.ad ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit ]
  %.not.i.i910 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i910, label %bb.af, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.265) #34
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit: ; preds = %bb.ae
  store i16 %.sroa.6.0.i.i909, ptr %i.ew, align 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 2 ; 2 uses
  store i16 0, ptr %i.fb, align 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateE:bb.a
  br i1 %.not2.i.i.i.i.i.i.i.i, label %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i", label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.kq, i32 noundef 2) #31
  br label %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i"

"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i": ; preds = %bb.bu, %bb.bt, %bb.bs, %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.kr = icmp eq i32 %.0.i3.i.i.i.i, 0
  br i1 %i.kr, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i"
  %i.ks = add nsw i32 %.12644.i.i.i, 1
  br label %bb.bx

bb.bw:                                            ; preds = %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i"
  store i32 -1073741824, ptr %.sroa.033.043.i.i.i, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %.lr.ph.i.i.i
  %.3.i.i.i = phi i32 [ %.12644.i.i.i, %.lr.ph.i.i.i ], [ %i.ks, %bb.bv ], [ %.12644.i.i.i, %bb.bw ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.033.043.i.i.i, i64 4 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.fm
  br i1 %i.ku, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit": ; preds = %.loopexit.i.i.i
  %i.kv = icmp eq i32 %.126.lcssa.i.i.i, 0
  br i1 %i.kv, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread", label %bb.by

bb.by:                                            ; preds = %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit"
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.z, align 262144
  %i.kw = and i64 %.sroa.0.0.copyload.i18, 24
  %.not64 = icmp eq i64 %i.kw, 0
  br i1 %.not64, label %bb.bz, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread"

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread": ; preds = %bb.an, %bb.am, %bb.by, %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit"
  call void @_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.t, i32 noundef 3) #31
  br label %bb.bz

bb.bz:                                            ; preds = %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread", %bb.by
  %i.kx = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i.i, label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kx) #31
  br label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit

_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit: ; preds = %bb.bz, %bb.ca
  %i.ky = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !5, !noundef !6
  %i.kz = trunc nuw i8 %i.ky to i1
  %.not = xor i1 %i.kz, true
  %i.la = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !5
  %i.lb = trunc nuw i8 %i.la to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.lb
  br i1 %or.cond, label %bb.cb, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.cb:                                            ; preds = %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit
  %i.lc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not65 = icmp eq i32 %i.lc, -1
  br i1 %.not65, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.lc, i32 noundef 2) #31
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit, %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.cd

bb.cd:                                            ; preds = %bb.al, %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit
  %.pr = load ptr, ptr %i.b, align 8
  br label %bb.b

_ZN2v88internal19MemoryChunkIterator7HasNextEv.exit: ; preds = %.preheader
  call void @_ZN2v88internal13SpaceIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

declare void @_ZN2v88internal15ThreadIsolation21LookupWritableJitPageEmm(ptr dead_on_unwind writable sret(%"class.v8::internal::WritableJitPage") align 8, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal12PageMetadata15AbortEvacuationEv(ptr noundef nonnull align 8 dereferenceable(4448)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20MarkCompactCollector48ReportAbortedEvacuationCandidateDueToRunningCodeEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey.2100", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !628 ; 4 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !643
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.e, align 8, !noalias !643
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 800
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.i = load ptr, ptr %i.h, align 8, !noalias !643
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE6insertIS6_Li0EEESt4pairINSD_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !643
  store ptr %i.b, ptr %2, align 8, !noalias !643
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.k, align 8, !noalias !643
  %i.l = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal12PageMetadataEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #31, !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !643
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !643
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.l
  %.pre = load ptr, ptr %i.a, align 8, !noalias !648
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 800
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !649 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !649
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.q = load i64, ptr %i.p, align 8, !noalias !649
  %sext.i = shl i64 %i.q, 48
  %i.r = ashr exact i64 %sext.i, 48
  %i.s = ptrtoint ptr %1 to i64
  %i.t = xor i64 %i.s, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 8779197792823184629 ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64
  %i.z = xor i64 %i.r, %i.y                       ; 3 uses
  %i.aa = lshr i64 %i.z, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ac, align 8, !noalias !649 ; 2 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.z, %bb.f ], [ %i.bc, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.c             ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1), !noalias !649
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !noalias !649 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ae, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.aj, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.as, %.critedge.i ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0.i, %i.al
  %i.an = and i64 %i.am, %i.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !649
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE6insertIS6_Li0EEESt4pairINSD_8iteratorEbERKT_.exit, label %.critedge.i, !prof !10

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ar = add i16 %.sroa.035.066.i, -1
  %i.as = and i16 %i.ar, %.sroa.035.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.at = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.au, 0
  br i1 %.not57.i, label %bb.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread5, !prof !38

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread5: ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.c
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i64 %i.ay, i64 %.sroa.15.0.i) #31, !noalias !649
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ac, align 8, !noalias !649
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.h:                                             ; preds = %.critedge19.i
  %i.bb = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bc = add i64 %i.bb, %.sroa.7.0.i
  br label %bb.g

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.e, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread5
  %i.bd = phi ptr [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread5 ], [ %1, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.4.02 = phi ptr [ %i.ba, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread5 ], [ %i.g, %bb.c ], [ %i.n, %bb.e ]
  store ptr %i.bd, ptr %.sroa.4.02, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE6insertIS6_Li0EEESt4pairINSD_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE6insertIS6_Li0EEESt4pairINSD_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_112ReRecordPageEPNS0_4HeapEmPNS0_12PageMetadataE(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::EvacuateRecordOnlyVisitor", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 9 uses
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 3                         ; 2 uses
  %i.f = and i32 %i.e, 32767                      ; 2 uses
  %i.g = and i64 %1, 262143
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread, label %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit

_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit: ; preds = %bb.a
  %i.i = trunc i64 %1 to i32
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 32767                      ; 2 uses
  %.not.i = icmp samesign ult i32 %i.f, %i.k
  br i1 %.not.i, label %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread, label %_ZN2v88internal13MarkingBitmap10ClearRangeILNS0_10AccessModeE1EEEvjj.exit

_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread: ; preds = %bb.a, %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit
  %.0.i54 = phi i32 [ %i.k, %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit ], [ 32768, %bb.a ]
  %i.l = add nsw i32 %.0.i54, -1                  ; 2 uses
  %i.m = lshr i32 %i.f, 6                         ; 5 uses
  %i.n = and i32 %i.e, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o                      ; 2 uses
  %i.q = lshr i32 %i.l, 6                         ; 4 uses
  %i.r = and i32 %i.l, 63
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %.not23.i = icmp eq i32 %i.m, %i.q
  br i1 %.not23.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread
  %i.t = add i64 %i.p, -1
  %i.u = zext nneg i32 %i.m to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, %i.t
  store i64 %i.x, ptr %i.v, align 8
  %i.y = add nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.z = icmp samesign ult i32 %i.y, %i.q
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE1EEEvjj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.aa = shl nuw nsw i32 %i.y, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %scevgep.i.i = getelementptr i8, ptr %i.a, i64 %i.ab
  %reass.sub = sub nsw i32 %i.q, %i.m
  %i.ac = add nsw i32 %reass.sub, -2
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.af, i1 false)
  %.pre.pre.pre = load i64, ptr %i.b, align 8
  br label %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE1EEEvjj.exit.i

_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE1EEEvjj.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.b
  %.pre.pre = phi i64 [ %.pre.pre.pre, %.lr.ph.preheader.i.i ], [ %i.c, %bb.b ]
  %i.ag = xor i64 %i.s, 63
  %i.ah = lshr i64 -1, %i.ag
  br label %.sink.split.i

bb.c:                                             ; preds = %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread
  %i.ai = shl nuw i64 1, %i.s                     ; 2 uses
  %i.aj = sub i64 %i.ai, %i.p
  %i.ak = or i64 %i.aj, %i.ai
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE1EEEvjj.exit.i
  %.pre = phi i64 [ %.pre.pre, %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE1EEEvjj.exit.i ], [ %i.c, %bb.c ]
  %.sink33.i = phi i64 [ %i.ah, %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE1EEEvjj.exit.i ], [ %i.ak, %bb.c ]
  %.sink.i = phi i32 [ %i.q, %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE1EEEvjj.exit.i ], [ %i.m, %bb.c ]
  %i.al = xor i64 %.sink33.i, -1
  %i.am = zext nneg i32 %.sink.i to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, %i.al
  store i64 %i.ap, ptr %i.an, align 8
  br label %_ZN2v88internal13MarkingBitmap10ClearRangeILNS0_10AccessModeE1EEEvjj.exit

_ZN2v88internal13MarkingBitmap10ClearRangeILNS0_10AccessModeE1EEEvjj.exit: ; preds = %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit, %.sink.split.i
  %i.aq = phi i64 [ %i.c, %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit ], [ %.pre, %.sink.split.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.as = load atomic volatile i64, ptr %i.ar acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE11RemoveRangeEPNS0_19MutablePageMetadataEmmN4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal13MarkingBitmap10ClearRangeILNS0_10AccessModeE1EEEvjj.exit
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.b, align 8
  %i.av = and i64 %i.au, -262144                  ; 2 uses
  %i.aw = sub i64 %i.aq, %i.av
  %i.ax = sub i64 %1, %i.av
  %sext.i.i = shl i64 %i.aw, 32
  %i.ay = ashr exact i64 %sext.i.i, 32
  %sext10.i.i = shl i64 %i.ax, 32
  %i.az = ashr exact i64 %sext10.i.i, 32
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, 8191
  %i.bd = lshr i64 %i.bc, 13
  tail call void @_ZN4heap4base12BasicSlotSetILm8EE11RemoveRangeEmmmNS2_15EmptyBucketModeE(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i64 noundef %i.ay, i64 noundef %i.az, i64 noundef %i.bd, i32 noundef 0)
  br label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE11RemoveRangeEPNS0_19MutablePageMetadataEmmN4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE11RemoveRangeEPNS0_19MutablePageMetadataEmmN4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit: ; preds = %_ZN2v88internal13MarkingBitmap10ClearRangeILNS0_10AccessModeE1EEEvjj.exit, %bb.d
  %i.be = load i64, ptr %i.b, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bg = load atomic volatile i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %.not.i20 = icmp eq i64 %i.bg, 0
  br i1 %.not.i20, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE16RemoveRangeTypedEPNS0_19MutablePageMetadataEmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE11RemoveRangeEPNS0_19MutablePageMetadataEmmN4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not42.i.i = icmp eq ptr %i.bj, null
  br i1 %.not42.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE16RemoveRangeTypedEPNS0_19MutablePageMetadataEmm.exit, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  br label %.lr.ph47.split.i.i

.lr.ph47.split.i.i:                               ; preds = %bb.n, %.lr.ph47.i.i
  %.045.i.i = phi ptr [ %i.cl, %bb.n ], [ %i.bj, %.lr.ph47.i.i ] ; 9 uses
  %.02444.i.i = phi ptr [ %.1.i.i, %bb.n ], [ null, %.lr.ph47.i.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %._crit_edge.thread.i.i, label %.lr.ph.i.outer.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph47.split.i.i
  %i.bq = load ptr, ptr %.045.i.i, align 8
  br label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %i.br = load ptr, ptr %.045.i.i, align 8        ; 2 uses
  br i1 %.02739.i.ph.i, label %bb.i, label %bb.n

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.outer.i, %bb.h
  %.sroa.033.038.i.i = phi ptr [ %i.by, %bb.h ], [ %.sroa.033.038.i.ph.i, %.lr.ph.i.outer.i ] ; 4 uses
  %i.bs = load i32, ptr %.sroa.033.038.i.i, align 4 ; 2 uses
  %.mask.i.i = and i32 %i.bs, -536870912
  %.not32.i.i = icmp eq i32 %.mask.i.i, -1073741824
  br i1 %.not32.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bt = and i32 %i.bs, 536870911
  %i.bu = load i64, ptr %i.bk, align 8
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = add i64 %i.bu, %i.bv                    ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.be, %i.bw
  %i.bx = icmp uge i64 %i.bw, %1
  %narrow.i.not.i.i = or i1 %.not.i.i.i, %i.bx
  br i1 %narrow.i.not.i.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 -1073741824, ptr %.sroa.033.038.i.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.033.038.i.i, i64 4 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bo
  br i1 %i.bz, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.033.038.i.i, i64 4 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bo
  br i1 %i.cb, label %._crit_edge.i.thread.i, label %.lr.ph.i.outer.i

.lr.ph.i.outer.i:                                 ; preds = %.lr.ph47.split.i.i, %.thread.i
  %.02739.i.ph.i = phi i1 [ false, %.thread.i ], [ true, %.lr.ph47.split.i.i ]
  %.sroa.033.038.i.ph.i = phi ptr [ %i.ca, %.thread.i ], [ %i.bm, %.lr.ph47.split.i.i ]
  br label %.lr.ph.i.i

._crit_edge.i.thread.i:                           ; preds = %.thread.i
  %i.cc = load ptr, ptr %.045.i.i, align 8
  br label %bb.n

bb.i:                                             ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.cd = phi ptr [ %i.bq, %._crit_edge.thread.i.i ], [ %i.br, %._crit_edge.i.i ] ; 2 uses
  %.not31.i.i = icmp eq ptr %.02444.i.i, null
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  br i1 %.not31.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic volatile i64 %i.ce, ptr %.02444.i.i monotonic, align 8
  br label %bb.l
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.031, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.031, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !748

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #33
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !749
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !749 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !noalias !749
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %2, align 8, !noalias !749
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @_ZN4absl18container_internal11kSooControlE, ptr %0, align 8, !alias.scope !749
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !749
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !alias.scope !749
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !749
  store ptr %1, ptr %3, align 8, !noalias !749
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.h, align 8, !noalias !749
  %i.i = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v88internal6Object6HasherENS5_6TaggedINS5_10HeapObjectEEELb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #31, !noalias !749 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  store ptr %i.j, ptr %0, align 8, !alias.scope !749
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !749
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.l, align 8, !alias.scope !749
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !749
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i4 = load ptr, ptr %i.m, align 8, !noalias !752 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i4, i32 0, i32 1, i32 1), !noalias !752
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !752
  %sext.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i, 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !noalias !752 ; 2 uses
  %i.q = xor i64 %i.p, %.sroa.0.0.copyload.i.i    ; 3 uses
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.t, align 8, !noalias !752 ; 2 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.q, %bb.f ], [ %i.at, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.as, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 3, i32 1), !noalias !752
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i4, i64 %.sroa.7.0.i
  %i.y = load <16 x i8>, ptr %i.x, align 1, !noalias !752 ; 2 uses
  %i.z = icmp eq <16 x i8> %i.v, %i.y
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not65.i = icmp eq i16 %i.aa, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.036.066.i = phi i16 [ %i.ai, %.critedge.i ], [ %i.aa, %bb.g ] ; 3 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.066.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.7.0.i, %i.ac
  %i.ae = and i64 %i.ad, %i.a                     ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.ae ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i5 = load i64, ptr %i.af, align 8, !noalias !752
  %i.ag = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i5, %.sroa.0.0.copyload.i.i
  br i1 %i.ag, label %.critedge21.i, label %.critedge.i, !prof !10

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ah = add i16 %.sroa.036.066.i, -1
  %i.ai = and i16 %i.ah, %.sroa.036.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.aj = icmp eq <16 x i8> %i.y, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.ak, 0
  br i1 %.not58.i, label %bb.h, label %.thread.i, !prof !38

.thread.i:                                        ; preds = %.critedge19.i
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0.i, %i.am
  %i.ao = and i64 %i.an, %i.a
  %i.ap = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.q, i64 %i.ao, i64 %.sroa.15.0.i) #31, !noalias !752 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i26.i = load ptr, ptr %i.m, align 8, !noalias !752, !nonnull !6, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i26.i, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i2.i27.i = load ptr, ptr %i.t, align 8, !noalias !752
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i27.i, i64 %i.ap
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.as = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.at = add i64 %i.as, %.sroa.7.0.i
  br label %bb.g

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i4, i64 %i.ae
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit: ; preds = %.thread.i, %.critedge21.i
  %.sink84.i = phi ptr [ %i.aq, %.thread.i ], [ %i.au, %.critedge21.i ]
  %.sink82.i = phi ptr [ %i.ar, %.thread.i ], [ %i.af, %.critedge21.i ]
  %.sink.i = phi i8 [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  store ptr %.sink84.i, ptr %0, align 8, !alias.scope !752
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink82.i, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !752
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i, ptr %i.av, align 8, !alias.scope !752
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit
  ret void
}

declare { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v88internal6Object6HasherENS5_6TaggedINS5_10HeapObjectEEELb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !53
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = xor i64 %.sroa.0.0.copyload.i.i.i.i.i, %1
  ret i64 %i.c
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #26

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #17 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.m, label %bb.b, label %bb.e, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 8, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -8
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 56
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.ac, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !755

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.ae, ptr %.08.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !756

_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.278) #31
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.b, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.278) #31
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iterator14assert_is_fullEPKc.exit, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.278) #31
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iterator14assert_is_fullEPKc.exit: ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.f = load i64, ptr %0, align 8
  %i.g = icmp ult i64 %i.f, 2
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext false, i64 noundef 40) #31
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE15erase_meta_onlyENSK_14const_iteratorE.exit

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef 40) #31
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE15erase_meta_onlyENSK_14const_iteratorE.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE15erase_meta_onlyENSK_14const_iteratorE.exit: ; preds = %bb.g, %bb.h
  ret void
}

declare void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(1040) ptr @malloc(i64 noundef 1040) #37 ; 6 uses
end_hunk_2
