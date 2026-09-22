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

bb.e:                                             ; preds = %.backedge3839, %bb.d
  %.02348 = phi i64 [ 0, %bb.d ], [ %i.dmu, %.backedge3839 ] ; 3 uses
  %.02347 = phi i64 [ 0, %bb.d ], [ %i.dmv, %.backedge3839 ] ; 3 uses
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
  %i.aq = atomicrmw sub ptr %i.al, i64 1 monotonic, align 8 ; 0 uses
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
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.pn.i8.i = phi i64 [ %i.bs, %bb.q ], [ %i.co, %bb.t ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.q ], [ %i.cn, %bb.t ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.bm       ; 4 uses
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  call void @llvm.prefetch.p0(ptr %i.bx, i32 0, i32 3, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.bz = load <16 x i8>, ptr %i.by, align 1      ; 2 uses
  %i.ca = icmp eq <16 x i8> %i.bw, %i.bz
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.s
  %.sroa.017.047.i.i = phi i16 [ %i.ck, %bb.s ], [ %i.cb, %bb.r ] ; 3 uses
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = add i64 %.sroa.6.0.i.i, %i.cd
  %i.cf = and i64 %i.ce, %i.bm                    ; 2 uses
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.cf ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i9.i = load i64, ptr %i.cg, align 8
  %i.ch = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i9.i, %.sroa.030.0.copyload
  br i1 %i.ch, label %.thread33.i.i, label %bb.s, !prof !60

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cj = add i16 %.sroa.017.047.i.i, -1
  %i.ck = and i16 %i.cj, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i204 = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i204, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.s, %bb.r
  %i.cl = icmp eq <16 x i8> %i.bz, splat (i8 -128)
  %i.cm = bitcast <16 x i1> %i.cl to i16
  %.not44.i.i = icmp eq i16 %i.cm, 0
  br i1 %.not44.i.i, label %bb.t, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i, !prof !62

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.cn = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.co = add i64 %i.cn, %.sroa.6.0.i.i
  br label %bb.r, !llvm.loop !357

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ci, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.cg, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit: ; preds = %bb.o, %bb.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i ], [ { ptr null, ptr undef }, %bb.o ], [ %spec.select.i.i, %bb.p ] ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %.pn.i, 0     ; 5 uses
  %i.cq = extractvalue { ptr, ptr } %.pn.i, 1     ; 3 uses
  %i.cr = icmp eq ptr %i.cp, null                 ; 2 uses
  %i.cs = icmp eq ptr %i.cp, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i205 = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i.i205, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit
  %i.ct = load i8, ptr %i.cp, align 1
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.v, !prof !60

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.u, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE4findIS7_EENSK_8iteratorERSH_.exit
  br i1 %i.cs, label %bb.w, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorESN_.exit, !prof !62

bb.w:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.275) #31
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.cr, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorESN_.exit
  %i.cv = load i8, ptr %i.cp, align 1
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit, label %bb.y, !prof !60

bb.y:                                             ; preds = %bb.x
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.267) #31
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit: ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not2656 = icmp eq ptr %i.cy, %i.da
  br i1 %.not2656, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr nonnull %i.cp, ptr %i.cq)
  %.pre2869 = load i64, ptr %17, align 8          ; 2 uses
  %.pre2888 = add i64 %.pre2869, -1
  %.pre2889 = inttoptr i64 %.pre2888 to ptr
  br label %bb.ai

.lr.ph:                                           ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit, %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit
  %.0392657 = phi ptr [ %i.fk, %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit ], [ %i.cy, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv.exit ] ; 2 uses
  %.sroa.023.0.copyload = load i64, ptr %.0392657, align 8 ; 4 uses
  %i.db = load ptr, ptr %0, align 8
  %i.dc = and i64 %.sroa.023.0.copyload, -262144
  %i.dd = inttoptr i64 %i.dc to ptr               ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.dd, align 262144 ; 2 uses
  %i.de = and i64 %.sroa.0.0.copyload.i, 64
  %.not.i = icmp eq i64 %i.de, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit

.critedge.i:                                      ; preds = %.lr.ph
  %i.df = and i64 %.sroa.0.0.copyload.i, 1
  %.not.i207 = icmp eq i64 %i.df, 0
  br i1 %.not.i207, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %bb.z, !prof !60

bb.z:                                             ; preds = %.critedge.i
  %i.dg = ptrtoint ptr %i.db to i64
  %i.dh = add i64 %i.dg, -55464
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 55448
  %i.dk = load i8, ptr %i.dj, align 8, !range !57, !noundef !58
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit

_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit: ; preds = %bb.z, %.critedge.i
  %i.dm = load ptr, ptr %i.b, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  %i.dq = load atomic ptr, ptr %i.dp seq_cst, align 8
  %.not.i.i208 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i208, label %bb.aa, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !62

bb.aa:                                            ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
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
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit
  %.0.i.i211 = phi i64 [ %i.ea, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.ee, %bb.ac ] ; 3 uses
  %i.eb = and i64 %.0.i.i211, %i.dw
  %.not16.not.not.i.not.not.not.i.not.not = icmp eq i64 %i.eb, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not, label %bb.ac, label %_ZN2v88internal20MarkCompactCollector10MarkObjectENS0_6TaggedINS0_10HeapObjectEEES4_NS0_13MarkingHelper14WorklistTargetE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ec = or i64 %.0.i.i211, %i.dw
  %i.ed = cmpxchg volatile ptr %i.dz, i64 %.0.i.i211, i64 %i.ec monotonic monotonic, align 8 ; 2 uses
  %i.ee = extractvalue { i64, i1 } %i.ed, 0
  %.not.i.i212 = extractvalue { i64, i1 } %i.ed, 1
  br i1 %.not.i.i212, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit, label %bb.ab, !llvm.loop !14

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit: ; preds = %bb.ac
  %i.ef = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8            ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ej = load i16, ptr %i.ei, align 2            ; 2 uses
  %i.ek = load i16, ptr %i.eh, align 2
  %i.el = icmp eq i16 %i.ej, %i.ek
  br i1 %i.el, label %bb.ad, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !62

bb.ad:                                            ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit
  %i.em = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %.not.i910 = icmp eq ptr %i.eh, %i.em
  br i1 %.not.i910, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = load ptr, ptr %i.ef, align 8, !nonnull !58, !align !65 ; 4 uses
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

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.ad, %bb.ae
  %i.eu = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !57, !noundef !58
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #37 ; 7 uses
  br i1 %i.ev, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %i.ex = call noundef i64 @malloc_usable_size(ptr noundef %i.ew) #31
  %i.ey = add i64 %i.ex, 524272
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = trunc i64 %i.ez to i16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %.sroa.6.0.i.i908 = phi i16 [ %i.fa, %bb.af ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit ]
  %.not.i.i909 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i909, label %bb.ah, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.265) #34
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit: ; preds = %bb.ag
  store i16 %.sroa.6.0.i.i908, ptr %i.ew, align 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 2 ; 2 uses
  store i16 0, ptr %i.fb, align 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
end_hunk_0
