inline.NumInlined: 7892
inline.NumDeleted: 3175
begin_hunk_0_@_ZN2v88internal9Scavenger12ScavengePageEPNS0_19MutablePageMetadataE:bb.a
  br label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i"

bb.cx:                                            ; preds = %bb.cv
  %i.pu = icmp samesign ult i64 %.03811.i.i.i60, 63
  br i1 %i.pu, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.pv = shl nuw i64 2, %.03811.i.i.i60
  %i.pw = or i64 %i.pk, %i.pv
  store i64 %i.pw, ptr %i.lu, align 8
  br label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i"

bb.cz:                                            ; preds = %bb.cx
  %i.px = call noundef ptr @_ZN2v88internal21AlignedAllocWithRetryEmm(i64 noundef %i.md, i64 noundef 8) #25 ; 3 uses
  %i.py = load i64, ptr %i.lu, align 8
  %i.pz = lshr i64 %i.py, 1
  store i64 %i.pz, ptr %i.px, align 8
  br i1 %i.me, label %.lr.ph.preheader.i.i.i.i.i.i92, label %_ZN2v88internal20PossiblyEmptyBuckets8AllocateEm.exit.i.i.i.i.i91

.lr.ph.preheader.i.i.i.i.i.i92:                   ; preds = %bb.cz
  %scevgep.i.i.i.i.i.i93 = getelementptr i8, ptr %i.px, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i.i.i.i93, i8 0, i64 %i.mf, i1 false)
  br label %_ZN2v88internal20PossiblyEmptyBuckets8AllocateEm.exit.i.i.i.i.i91

_ZN2v88internal20PossiblyEmptyBuckets8AllocateEm.exit.i.i.i.i.i91: ; preds = %.lr.ph.preheader.i.i.i.i.i.i92, %bb.cz
  %i.qa = ptrtoint ptr %i.px to i64
  %i.qb = add i64 %i.qa, 1                        ; 2 uses
  store i64 %i.qb, ptr %i.lu, align 8
  %i.qc = lshr i64 %.03811.i.i.i60, 6
  %i.qd = and i64 %i.qb, -2
  %i.qe = inttoptr i64 %i.qd to ptr
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qc ; 2 uses
  %i.qg = and i64 %.03811.i.i.i60, 63
  %i.qh = shl nuw i64 1, %i.qg
  %i.qi = load i64, ptr %i.qf, align 8
  %i.qj = or i64 %i.qi, %i.qh
  store i64 %i.qj, ptr %i.qf, align 8
  br label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i"

"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i": ; preds = %bb.cc, %bb.cw, %bb.cy, %_ZN2v88internal20PossiblyEmptyBuckets8AllocateEm.exit.i.i.i.i.i91, %bb.ca
  %i.qk = add nuw nsw i64 %.03811.i.i.i60, 1      ; 2 uses
  %exitcond16.not.i.i.i85 = icmp eq i64 %i.qk, %i.ma
  br i1 %exitcond16.not.i.i.i85, label %"_ZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsE.exit.i", label %bb.ca, !llvm.loop !150

"_ZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsE.exit.i": ; preds = %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i", %bb.bz
  %i.ql = load i64, ptr %i.lu, align 8
  %i.qm = icmp eq i64 %i.ql, 0
  br i1 %i.qm, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEiS7_T_PN4heap4base8WorklistIS7_Lt64EE5LocalE.exit", label %bb.da

bb.da:                                            ; preds = %"_ZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsE.exit.i"
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8            ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 2
  %i.qq = load i16, ptr %i.qp, align 2            ; 2 uses
  %i.qr = load i16, ptr %i.qo, align 2
  %i.qs = icmp eq i16 %i.qq, %i.qr
  br i1 %i.qs, label %bb.db, label %_ZN4heap4base8WorklistIPN2v88internal19MutablePageMetadataELt64EE5Local4PushES5_.exit.i87, !prof !14

bb.db:                                            ; preds = %bb.da
  call void @_ZN4heap4base8WorklistIPN2v88internal19MutablePageMetadataELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lr)
  %i.qt = call noundef ptr @_ZNK4heap4base8WorklistIPN2v88internal19MutablePageMetadataELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lr) ; 3 uses
  store ptr %i.qt, ptr %i.qn, align 8
  %.phi.trans.insert.i89 = getelementptr inbounds nuw i8, ptr %i.qt, i64 2
  %.pre.i90 = load i16, ptr %.phi.trans.insert.i89, align 2
  br label %_ZN4heap4base8WorklistIPN2v88internal19MutablePageMetadataELt64EE5Local4PushES5_.exit.i87

_ZN4heap4base8WorklistIPN2v88internal19MutablePageMetadataELt64EE5Local4PushES5_.exit.i87: ; preds = %bb.db, %bb.da
  %i.qu = phi i16 [ %i.qq, %bb.da ], [ %.pre.i90, %bb.db ] ; 2 uses
  %i.qv = phi ptr [ %i.qo, %bb.da ], [ %i.qt, %bb.db ] ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 2
  %i.qx = add i16 %i.qu, 1
  store i16 %i.qx, ptr %i.qw, align 2
  %i.qy = zext i16 %i.qu to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.qy
  store ptr %1, ptr %i.ra, align 8
  br label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEiS7_T_PN4heap4base8WorklistIS7_Lt64EE5LocalE.exit"

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEiS7_T_PN4heap4base8WorklistIS7_Lt64EE5LocalE.exit": ; preds = %_ZN4heap4base8WorklistIPN2v88internal19MutablePageMetadataELt64EE5Local4PushES5_.exit.i87, %"_ZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsE.exit.i", %bb.by, %_ZNSt6vectorISt5tupleIJN2v88internal6TaggedINS2_10HeapObjectEEENS2_8SlotTypeEmEESaIS7_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal18ScavengerCollectorC2EPNS0_4HeapE(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, -55464
  %i.c = inttoptr i64 %i.b to ptr
  store ptr %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskC2EPNS0_4HeapEOKSt6vectorINS1_17PinnedObjectEntryESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 16)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1864
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3448
  %i.g = load i32, ptr %i.f, align 4
  %i.h = zext i32 %i.g to i64
  %i.i = xor i64 %i.h, %i.c
  store i64 %i.i, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %2, align 8                ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ugt i64 %i.q, 9223372036854775776
  br i1 %i.r, label %bb.c, label %_ZNSt15__new_allocatorIN2v88internal18ScavengerCollector17PinnedObjectEntryEE8allocateEmPKv.exit.i.i.i.i, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN2v88internal18ScavengerCollector17PinnedObjectEntryEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
  br label %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN2v88internal18ScavengerCollector17PinnedObjectEntryEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.t = phi ptr [ %i.s, %_ZNSt15__new_allocatorIN2v88internal18ScavengerCollector17PinnedObjectEntryEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.t, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt6vectorIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.t, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.07.i.i.i.i.i, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.y
  br i1 %i.ac, label %_ZNSt6vectorIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !151

_ZNSt6vectorIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.u, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask3RunEPNS_11JobDelegateE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %3 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 10 uses
  %6 = alloca %"class.std::function", align 8     ; 6 uses
  %7 = alloca %"class.std::function", align 8     ; 6 uses
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, -55464
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %i.o = load atomic i32, ptr %i.n monotonic, align 4 ; 0 uses
  %i.p = tail call noundef i32 @_ZN2v88internal8ThreadId18GetCurrentThreadIdEv() #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1864
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #25
  %i.v = load atomic volatile i64, ptr @_ZZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask3RunEPNS_11JobDelegateEE28trace_event_unique_atomic703 acquire, align 8 ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str) #25 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  store atomic volatile i64 %i.ac, ptr @_ZZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask3RunEPNS_11JobDelegateEE28trace_event_unique_atomic703 release, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.w, %bb.c ], [ %i.ab, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr null, ptr %4, align 8
  %i.ad = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.ae = and i8 %i.ad, 5
  %.not36 = icmp eq i8 %i.ae, 0
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.q, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1864
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3448
  %i.al = load i32, ptr %i.ak, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 2, ptr %i.b, align 1
  %i.am = zext i32 %i.al to i64
  store i64 %i.am, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.174, ptr noundef null, i64 noundef 0, i64 noundef %i.ag, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %3, i32 noundef 384) #25, !inline_history !5
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.f
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.ax = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.ax, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ar, ptr %i.bd, align 8
  store ptr %i.bb, ptr %4, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %._crit_edge82

._crit_edge82:                                    ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRKmRKjEEERS1_DpOT_.exit, %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bo, ptr %i.bp, align 8
  br label %bb.m

.lr.ph:                                           ; preds = %bb.h, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRKmRKjEEERS1_DpOT_.exit
  %.sroa.061.078 = phi ptr [ %i.da, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRKmRKjEEERS1_DpOT_.exit ], [ %i.bj, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.bq = load i64, ptr %.sroa.061.078, align 8
  %i.br = and i64 %i.bq, -262144
  %i.bs = inttoptr i64 %i.br to ptr
  store ptr %i.bs, ptr %i.d, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIPN2v88internal11MemoryChunkESt4pairIKS4_St6vectorIS5_ImmESaIS8_EEESaISB_ENS_10_Select1stESt8equal_toIS4_ENS1_4base4hashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.061.078, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %.not.i43 = icmp eq ptr %i.bw, %i.by
  br i1 %.not.i43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bz = load i64, ptr %.sroa.061.078, align 8
  store i64 %i.bz, ptr %i.bw, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load i32, ptr %i.bu, align 8
  %i.cc = zext i32 %i.cb to i64
  store i64 %i.cc, ptr %i.ca, align 8
  %i.cd = load ptr, ptr %i.bv, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.ce, ptr %i.bv, align 8
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRKmRKjEEERS1_DpOT_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.cf = load ptr, ptr %i.bt, align 8            ; 5 uses
  %i.cg = ptrtoint ptr %i.bw to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 4 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775792
  br i1 %i.cj, label %bb.k, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.177) #26
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ck = ashr exact i64 %i.ci, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 576460752303423487)
  %i.co = select i1 %i.cm, i64 576460752303423487, i64 %i.cn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cp = shl nuw nsw i64 %i.co, 4
  %i.cq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #28 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci ; 2 uses
  %i.cs = load i64, ptr %.sroa.061.078, align 8
  store i64 %i.cs, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load i32, ptr %i.bu, align 8
  %i.cv = zext i32 %i.cu to i64
  store i64 %i.cv, ptr %i.ct, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.cf, %i.bw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i ], [ %i.cq, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %i.cf, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !152
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cw, %i.bw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !156

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cq, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cx, %.lr.ph.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i24.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKmRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ci) #29
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKmRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKmRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  store ptr %i.cq, ptr %i.bt, align 8
  store ptr %i.cy, ptr %i.bv, align 8
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.cz, ptr %i.bx, align 8
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRKmRKjEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRKmRKjEEERS1_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRKmRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.061.078, i64 32 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bl
  br i1 %i.db, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %._crit_edge82, %._crit_edge
  %i.dc = phi ptr [ %.pre, %._crit_edge82 ], [ %i.bo, %._crit_edge ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.de = icmp eq ptr %i.dc, null
  br i1 %i.de, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph80, %_ZNSt14_Function_baseD2Ev.exit
  %i.dj = load ptr, ptr %1, align 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  br i1 %i.dl, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.dm = load atomic volatile i64, ptr @_ZZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask3RunEPNS_11JobDelegateEE28trace_event_unique_atomic727 acquire, align 8 ; 2 uses
  %i.dn = inttoptr i64 %i.dm to ptr
  %.not37 = icmp eq i64 %i.dm, 0
  br i1 %.not37, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.do = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call noundef ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str) #25 ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  store atomic volatile i64 %i.dt, ptr @_ZZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask3RunEPNS_11JobDelegateEE28trace_event_unique_atomic727 release, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.033 = phi ptr [ %i.dn, %bb.o ], [ %i.ds, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr null, ptr %5, align 8
  %i.du = load atomic volatile i8, ptr %.033 monotonic, align 1
  %i.dv = and i8 %i.du, 5
  %.not38 = icmp eq i8 %i.dv, 0
  br i1 %.not38, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.dw = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef i64 %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i8 noundef signext 88, ptr noundef nonnull %.033, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, i32 noundef 0) #25, !inline_history !5
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8            ; 3 uses
  %.not.i44 = icmp eq ptr %i.ec, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit46, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i45

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i45: ; preds = %bb.r
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ec) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit46

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit46: ; preds = %bb.r, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i45
  %i.eg = load ptr, ptr %2, align 16              ; 3 uses
  %.not.i44.1 = icmp eq ptr %i.eg, null
  br i1 %.not.i44.1, label %bb.s, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i45.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i45.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit46
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eg) #25, !inline_history !6
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit46, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i45.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.033, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.3, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.ea, ptr %i.em, align 8
  store ptr %i.ek, ptr %5, align 8
  %i.en = load atomic volatile i8, ptr %.033 monotonic, align 1
  %.not1.i = icmp eq i8 %i.en, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ep = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.eq = load ptr, ptr %i.eo, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = load ptr, ptr %i.ep, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef %i.eq, ptr noundef %i.es, i64 noundef %i.eu) #25, !inline_history !7
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.q, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EE5clearEv.exit

bb.u:                                             ; preds = %bb.n
  %i.ey = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8            ; 5 uses
  %i.fd = load i64, ptr %i.fa, align 8
  %i.fe = and i64 %i.fd, 16
  %.not77 = icmp eq i64 %i.fe, 0
  br i1 %.not77, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.dg, align 8
  store ptr @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask28CreateFillerFreeSpaceHandlerEPNS0_4HeapEmmb, ptr %6, align 8
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvPN2v88internal4HeapEmmbEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvPN2v88internal4HeapEmmbEPS4_E9_M_invokeERKSt9_Any_dataOS3_OmSB_Ob>, ptr %i.df, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fg = call noundef i64 @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask9SweepPageESt8functionIFvPNS0_4HeapEmmbEEPNS0_11MemoryChunkEPNS0_12PageMetadataERSt6vectorISt4pairImmESaISF_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %6, ptr nonnull poison, ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.ff) ; 0 uses
  %i.fh = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not.i48 = icmp eq ptr %i.fh, null
  br i1 %.not.i48, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = call noundef zeroext i1 %i.fh(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #25, !inline_history !157 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.x:                                             ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 4432 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj) #25
  store i64 0, ptr %i.di, align 8
  store ptr @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask29AddToFreeListFreeSpaceHandlerEPNS0_4HeapEmmb, ptr %7, align 8
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvPN2v88internal4HeapEmmbEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvPN2v88internal4HeapEmmbEPS4_E9_M_invokeERKSt9_Any_dataOS3_OmSB_Ob>, ptr %i.dh, align 8
  %i.fk = load ptr, ptr %i.dd, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = call noundef i64 @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask9SweepPageESt8functionIFvPNS0_4HeapEmmbEEPNS0_11MemoryChunkEPNS0_12PageMetadataERSt6vectorISt4pairImmESaISF_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %7, ptr nonnull poison, ptr noundef nonnull %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.fl)
  %i.fn = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not.i49 = icmp eq ptr %i.fn, null
  br i1 %.not.i49, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fo = call noundef zeroext i1 %i.fn(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #25, !inline_history !157 ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.x, %bb.y
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.fq = load atomic ptr, ptr %i.fp seq_cst, align 8
  call void @_ZN2v88internal8OldSpace29RelinkQuarantinedPageFreeListEPNS0_12PageMetadataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.fq, ptr noundef nonnull %i.fc, i64 noundef %i.fm) #25
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.w, %bb.v, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %i.dd, align 8
  %i.fr = load ptr, ptr %.sroa.0.0.copyload.i, align 8 ; 2 uses
  store ptr %i.fr, ptr %i.dd, align 8
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %._crit_edge81, label %bb.n, !llvm.loop !158

._crit_edge81:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.m
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 1, ptr %i.ft monotonic, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIPN2v88internal11MemoryChunkESt6vectorISt4pairImmESaIS6_EENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS5_IKS3_S8_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge81, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal11MemoryChunkESt6vectorIS2_ImmESaIS9_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.fw, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal11MemoryChunkESt6vectorIS2_ImmESaIS9_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i ], [ %i.fv, %._crit_edge81 ] ; 4 uses
  %i.fw = load ptr, ptr %.06.i.i.i, align 8       ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal11MemoryChunkESt6vectorIS2_ImmESaIS9_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fy to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gd) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal11MemoryChunkESt6vectorIS2_ImmESaIS9_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal11MemoryChunkESt6vectorIS2_ImmESaIS9_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 48) #29
  %.not.i.i.i52 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i52, label %_ZNSt13unordered_mapIPN2v88internal11MemoryChunkESt6vectorISt4pairImmESaIS6_EENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS5_IKS3_S8_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !159

_ZNSt13unordered_mapIPN2v88internal11MemoryChunkESt6vectorISt4pairImmESaIS6_EENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS5_IKS3_S8_EEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal11MemoryChunkESt6vectorIS2_ImmESaIS9_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, %._crit_edge81
  %i.ge = load ptr, ptr %i.be, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = shl i64 %i.gg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ge, i8 0, i64 %i.gh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i8 0, i64 16, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8
  %.not.i.i53 = icmp eq ptr %i.gl, %i.gj
  br i1 %.not.i.i53, label %_ZNSt6vectorIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EE5clearEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt13unordered_mapIPN2v88internal11MemoryChunkESt6vectorISt4pairImmESaIS6_EENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS5_IKS3_S8_EEE5clearEv.exit
  store ptr %i.gj, ptr %i.gk, align 8
  br label %_ZNSt6vectorIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EE5clearEv.exit

_ZNSt6vectorIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EE5clearEv.exit: ; preds = %bb.aa, %_ZNSt13unordered_mapIPN2v88internal11MemoryChunkESt6vectorISt4pairImmESaIS6_EENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS5_IKS3_S8_EEE5clearEv.exit, %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.gm = load ptr, ptr %4, align 8
  %.not.i54 = icmp eq ptr %i.gm, null
  br i1 %.not.i54, label %_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EE5clearEv.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = load atomic volatile i8, ptr %i.go monotonic, align 1
  %.not1.i55 = icmp eq i8 %i.gp, 0
  br i1 %.not1.i55, label %_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.gr = load ptr, ptr %i.gn, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = load ptr, ptr %i.gq, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef %i.gr, ptr noundef %i.gt, i64 noundef %i.gv) #25, !inline_history !7
  br label %_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit

_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit: ; preds = %bb.ac, %bb.ab, %_ZNSt6vectorIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.gz = call i64 @_ZN2v84base9TimeTicks3NowEv() #25
end_hunk_0
begin_hunk_1_@_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask9SweepPageESt8functionIFvPNS0_4HeapEmmbEEPNS0_11MemoryChunkEPNS0_12PageMetadataERSt6vectorISt4pairImmESaISF_EE:bb.a
  br i1 %i.ao, label %._crit_edge, label %bb.b

bb.f:                                             ; preds = %._crit_edge
  %i.ap = sub i64 %i.ab, %.0.lcssa                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i8, ptr %i.as, align 8, !range !12, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ar, ptr %i.a, align 8
  store i64 %.0.lcssa, ptr %i.b, align 8
  store i64 %i.ap, ptr %i.c, align 8
  store i8 %i.at, ptr %i.d, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %.not.i.i33 = icmp eq ptr %i.av, null
  br i1 %.not.i.i33, label %bb.g, label %_ZNKSt8functionIFvPN2v88internal4HeapEmmbEEclES3_mmb.exit34

bb.g:                                             ; preds = %bb.f
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFvPN2v88internal4HeapEmmbEEclES3_mmb.exit34: ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d) #25, !inline_history !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ay = add i64 %i.ap, %.029.lcssa
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal4HeapEmmbEEclES3_mmb.exit34, %._crit_edge
  %.2 = phi i64 [ %i.ay, %_ZNKSt8functionIFvPN2v88internal4HeapEmmbEEclES3_mmb.exit34 ], [ %.029.lcssa, %._crit_edge ]
  ret i64 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask28CreateFillerFreeSpaceHandlerEPNS0_4HeapEmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) #0 align 2 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1268), align 4, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = select i1 %i.b, i64 0, i64 -2401053098003022097
  tail call void @_ZN2v88internal4heap8ZapBlockEmmm(i64 noundef %1, i64 noundef %2, i64 noundef %i.c) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = trunc i64 %2 to i32
  tail call void @_ZN2v88internal4Heap20CreateFillerObjectAtEmiNS0_20ClearFreedMemoryModeESt8optionalINS0_14AllocationTypeEE(ptr noundef nonnull align 8 dereferenceable(2992) %0, i64 noundef %1, i32 noundef %i.d, i32 noundef 1, i16 0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask29AddToFreeListFreeSpaceHandlerEPNS0_4HeapEmmb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::WritableJitPage", align 8 ; 3 uses
  %5 = alloca %"class.v8::internal::WritableFreeSpace", align 8 ; 7 uses
  %6 = alloca %"class.v8::internal::WritableFreeSpace", align 8 ; 7 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1268), align 4, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = select i1 %i.b, i64 0, i64 -2401053098003022097
  tail call void @_ZN2v88internal4heap8ZapBlockEmmm(i64 noundef %1, i64 noundef %2, i64 noundef %i.c) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %_ZN2v88internal14PagedSpaceBase12FreeInternalILb1EEEmmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.h = load i32, ptr %i.g, align 8
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !12, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  %.not = xor i1 %i.j, true
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !12
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.f, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not10 = icmp eq i32 %i.m, -1
  br i1 %.not10, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.m, i32 noundef 0) #25
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit:  ; preds = %bb.e, %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @_ZN2v88internal15ThreadIsolation13LookupJitPageEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::ThreadIsolation::JitPageReference") align 8 %i.n, i64 noundef %1, i64 noundef %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN2v88internal15ThreadIsolation16JitPageReference15UnregisterRangeEmm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %1, i64 noundef %2) #25, !noalias !161
  store i64 %1, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = trunc i64 %2 to i32
  store i32 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN2v88internal4Heap30CreateFillerObjectAtBackgroundERKNS0_17WritableFreeSpaceE(ptr noundef nonnull align 8 dereferenceable(2992) %i.s, ptr noundef nonnull align 8 dereferenceable(13) %5) #25
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, -55464
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(13) %5, i32 noundef 1) #25, !inline_history !164 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ad = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #25
  br label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit

_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit: ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, %bb.h
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !12, !noundef !13
  %i.af = trunc nuw i8 %i.ae to i1
  %.not7 = xor i1 %i.af, true
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !12
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond9 = select i1 %.not7, i1 true, i1 %i.ah
  br i1 %or.cond9, label %bb.i, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.i:                                             ; preds = %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not11 = icmp eq i32 %i.ai, -1
  br i1 %.not11, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.ai, i32 noundef 2) #25
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN2v88internal14PagedSpaceBase12FreeInternalILb1EEEmmm.exit

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 %1, ptr %6, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = trunc i64 %2 to i32
  store i32 %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  call void @_ZN2v88internal4Heap30CreateFillerObjectAtBackgroundERKNS0_17WritableFreeSpaceE(ptr noundef nonnull align 8 dereferenceable(2992) %i.an, ptr noundef nonnull align 8 dereferenceable(13) %6) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %i.ar, -55464
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.ap, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef %i.at, ptr noundef nonnull align 8 dereferenceable(13) %6, i32 noundef 1) #25, !inline_history !164 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN2v88internal14PagedSpaceBase12FreeInternalILb1EEEmmm.exit

_ZN2v88internal14PagedSpaceBase12FreeInternalILb1EEEmmm.exit: ; preds = %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, %bb.k, %bb.c
  ret void
}

declare void @_ZN2v88internal8OldSpace29RelinkQuarantinedPageFreeListEPNS0_12PageMetadataEm(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal4heap8ZapBlockEmmm(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal4Heap20CreateFillerObjectAtEmiNS0_20ClearFreedMemoryModeESt8optionalINS0_14AllocationTypeEE(ptr noundef nonnull align 8 dereferenceable(2992), i64 noundef, i32 noundef, i32 noundef, i16) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper13StartSweepingEOKSt6vectorINS1_17PinnedObjectEntryESaIS4_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.496", align 8 ; 5 uses
  %4 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %5 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #28, !noalias !165 ; 17 uses
  %i.b = load ptr, ptr %0, align 8, !noalias !165 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskE, i64 16), ptr %i.a, align 8, !noalias !165
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !noalias !165
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1864
  %i.g = load ptr, ptr %i.f, align 8, !noalias !165
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3448
  %i.i = load i32, ptr %i.h, align 4, !noalias !165
  %i.j = zext i32 %i.i to i64
  %i.k = xor i64 %i.j, %i.e
  store i64 %i.k, ptr %i.d, align 8, !noalias !165
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.l, align 8, !noalias !165
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !165 ; 3 uses
  %i.p = load ptr, ptr %1, align 8, !noalias !165 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false), !noalias !165
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.thread.i, label %bb.b

_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.thread.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr null, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !165
  store ptr %i.u, ptr %i.v, align 8, !noalias !165
  br label %_ZSt11make_uniqueIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskEJRKPNS1_4HeapEKSt6vectorINS2_17PinnedObjectEntryESaISA_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.w = icmp ugt i64 %i.s, 9223372036854775776
  br i1 %i.w, label %bb.c, label %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.i, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26, !noalias !165
  unreachable

_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.i: ; preds = %bb.b
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28, !noalias !165 ; 4 uses
  store ptr %i.x, ptr %i.m, align 8, !noalias !165
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !noalias !165
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.z, ptr %i.aa, align 8, !noalias !165
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.x, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.07.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !165
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.o
  br i1 %i.ad, label %_ZSt11make_uniqueIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskEJRKPNS1_4HeapEKSt6vectorINS2_17PinnedObjectEntryESaISA_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !151

_ZSt11make_uniqueIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskEJRKPNS1_4HeapEKSt6vectorINS2_17PinnedObjectEntryESaISA_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.thread.i
  %i.ae = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.thread.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2v88internal18ScavengerCollector17PinnedObjectEntryESaIS3_EEC2EmRKS4_.exit.i.i.thread.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ae, align 8, !noalias !165
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.af, align 8, !noalias !165
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.ah, ptr %i.ag, align 8, !noalias !165
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 1, ptr %i.ai, align 8, !noalias !165
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !noalias !165
  store float 1.000000e+00, ptr %i.ak, align 8, !noalias !165
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !noalias !165
  %i.am = load atomic volatile i64, ptr @_ZZN2v88internal18ScavengerCollector22QuarantinedPageSweeper13StartSweepingEOKSt6vectorINS1_17PinnedObjectEntryESaIS4_EEE28trace_event_unique_atomic814 acquire, align 8 ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSt11make_uniqueIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskEJRKPNS1_4HeapEKSt6vectorINS2_17PinnedObjectEntryESaISA_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ao = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str) #25 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  store atomic volatile i64 %i.at, ptr @_ZZN2v88internal18ScavengerCollector22QuarantinedPageSweeper13StartSweepingEOKSt6vectorINS1_17PinnedObjectEntryESaIS4_EEE28trace_event_unique_atomic814 release, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSt11make_uniqueIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskEJRKPNS1_4HeapEKSt6vectorINS2_17PinnedObjectEntryESaISA_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZSt11make_uniqueIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskEJRKPNS1_4HeapEKSt6vectorINS2_17PinnedObjectEntryESaISA_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ %i.as, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr null, ptr %5, align 8
  %i.au = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.av = and i8 %i.au, 5
  %.not8 = icmp eq i8 %i.av, 0
  br i1 %.not8, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ax = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.4, ptr noundef null, i64 noundef 0, i64 noundef %i.aw, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, i32 noundef 256) #25, !inline_history !5
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.f
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.bh = load ptr, ptr %4, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.bh, null
  br i1 %.not.i.1, label %bb.g, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #25, !inline_history !6
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.4, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.bb, ptr %i.bn, align 8
  store ptr %i.bl, ptr %5, align 8
  %i.bo = load atomic volatile i8, ptr %.0 monotonic, align 1
  %.not1.i = icmp eq i8 %i.bo, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #25 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bq, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef %i.br, ptr noundef %i.bt, i64 noundef %i.bv) #25, !inline_history !7
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.e, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bz = call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #25 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !168
  store ptr @.constant, ptr %2, align 8, !noalias !171
  store i64 %i.e, ptr %3, align 8, !noalias !171
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !171
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 136
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !171
  call void %i.cc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #25, !inline_history !174
  %i.cd = load ptr, ptr %3, align 8, !noalias !171 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit, label %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cd) #25, !inline_history !175
  br label %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit

_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit: ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !168
  %i.ch = load ptr, ptr %6, align 8, !alias.scope !168 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #25, !inline_history !176
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %6, align 8
  store ptr null, ptr %6, align 8
  %i.cn = load ptr, ptr %i.cl, align 8            ; 3 uses
  store ptr %i.cm, ptr %i.cl, align 8
  %.not.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskESt14default_deleteIS4_EED2Ev.exit, label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #25, !inline_history !177
  %.pr19 = load ptr, ptr %6, align 8              ; 3 uses
  %.not.i10 = icmp eq ptr %.pr19, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit
  %i.cr = load ptr, ptr %.pr19, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr19) #25, !inline_history !178
  br label %_ZNSt10unique_ptrIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTaskESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit, %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

declare noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper14FinishSweepingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  %i.f = load ptr, ptr %i.a, align 8              ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #25, !inline_history !179
  br label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18ScavengerCollector14CollectGarbageEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.496", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::OldGenerationMemoryChunkIterator", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %7 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %8 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %9 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %10 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %11 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %12 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %13 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %14 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %15 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %16 = alloca [2 x %"class.std::unique_ptr.886"], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %17 = alloca %"class.heap::base::Worklist.511", align 8 ; 10 uses
  %18 = alloca %"class.heap::base::Worklist", align 8 ; 8 uses
  %19 = alloca %"class.heap::base::Worklist.5", align 8 ; 8 uses
  %20 = alloca %"class.heap::base::Worklist.6", align 8 ; 8 uses
  %21 = alloca %"class.heap::base::Worklist.512", align 8 ; 8 uses
  %22 = alloca %"class.std::vector.440", align 8  ; 11 uses
  %23 = alloca %"class.std::vector.307", align 8  ; 13 uses
  %24 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %25 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %26 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %27 = alloca %"class.v8::internal::(anonymous namespace)::ConservativeObjectPinningVisitor", align 8 ; 7 uses
  %28 = alloca %"class.v8::internal::(anonymous namespace)::YoungGenerationConservativeStackVisitor", align 8 ; 8 uses
  %29 = alloca %"class.v8::internal::(anonymous namespace)::TreatConservativelyVisitor", align 8 ; 7 uses
  %30 = alloca %"class.v8::internal::(anonymous namespace)::PreciseObjectPinningVisitor", align 8 ; 7 uses
  %31 = alloca %"class.v8::internal::ClearStaleLeftTrimmedPointerVisitor", align 8 ; 4 uses
  %32 = alloca %"class.v8::internal::RootScavengeVisitor", align 8 ; 7 uses
  %33 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %34 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 10 uses
  %35 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %36 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %37 = alloca %"class.v8::internal::(anonymous namespace)::GlobalHandlesWeakRootsUpdatingVisitor", align 8 ; 5 uses
  %38 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %39 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %40 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %41 = alloca %"class.std::function.775", align 8 ; 8 uses
end_hunk_1
