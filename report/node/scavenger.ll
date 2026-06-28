inline.NumInlined: 7892
inline.NumDeleted: 3175
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN2v88internal9Scavenger7ProcessEPNS_11JobDelegateE:bb.a

.peel.next:                                       ; preds = %.peel.next.outer, %bb.ox
  %i.clv = load ptr, ptr %i.m, align 8            ; 3 uses
  %i.clw = getelementptr inbounds nuw i8, ptr %i.clv, i64 2
  %i.clx = load i16, ptr %i.clw, align 2
  %i.cly = icmp eq i16 %i.clx, 0
  br i1 %i.cly, label %bb.or, label %bb.ox

bb.or:                                            ; preds = %.peel.next
  %i.clz = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.cma = getelementptr inbounds nuw i8, ptr %i.clz, i64 2
  %i.cmb = load i16, ptr %i.cma, align 2
  %i.cmc = icmp eq i16 %i.cmb, 0
  br i1 %i.cmc, label %bb.ot, label %bb.os

bb.os:                                            ; preds = %bb.or
  store ptr %i.clv, ptr %i.i, align 8
  br label %.sink.split2851

bb.ot:                                            ; preds = %bb.or
  %i.cmd = load ptr, ptr %i.n, align 8, !nonnull !13, !align !15 ; 5 uses
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmd, i64 16 ; 2 uses
  %i.cmf = load atomic i64, ptr %i.cme monotonic, align 8
  %i.cmg = icmp eq i64 %i.cmf, 0
  br i1 %i.cmg, label %_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE5Local3PopEPS5_.exit, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cmd) #25
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cmd, i64 8 ; 2 uses
  %i.cmi = load ptr, ptr %i.cmh, align 8          ; 4 uses
  %.not.i762 = icmp eq ptr %i.cmi, null
  br i1 %.not.i762, label %_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE3PopEPPNS6_7SegmentE.exit.i, label %bb.ov

_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE3PopEPPNS6_7SegmentE.exit.i: ; preds = %bb.ou, %bb.ol
  %.lcssa2335 = phi ptr [ %i.cks, %bb.ol ], [ %i.cmd, %bb.ou ]
  %.3.lcssa2332 = phi i64 [ %.1122141, %bb.ol ], [ %.3.ph3085, %bb.ou ]
  %.1.lcssa2330 = phi i1 [ %i.ckj, %bb.ol ], [ true, %bb.ou ]
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %.lcssa2335) #25
  br i1 %.1.lcssa2330, label %.backedge.backedge, label %bb.pa

bb.ov:                                            ; preds = %bb.ou
  %i.cmj = atomicrmw sub ptr %i.cme, i64 1 monotonic, align 8 ; 0 uses
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmi, i64 8
  %i.cml = load ptr, ptr %i.cmk, align 8
  store ptr %i.cml, ptr %i.cmh, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cmd) #25
  %i.cmm = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.cmn = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #25
  %i.cmo = icmp eq ptr %i.cmm, %i.cmn
  br i1 %i.cmo, label %.sink.split2851, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  call void @free(ptr noundef %i.cmm) #25
  br label %.sink.split2851

.sink.split2851:                                  ; preds = %bb.ow, %bb.ov, %bb.os
  %.sink2853 = phi ptr [ %i.clz, %bb.os ], [ %i.cmi, %bb.ov ], [ %i.cmi, %bb.ow ] ; 2 uses
  store ptr %.sink2853, ptr %i.m, align 8
  br label %bb.ox

bb.ox:                                            ; preds = %.sink.split2851, %.peel.next
  %i.cmp = phi ptr [ %i.clv, %.peel.next ], [ %.sink2853, %.sink.split2851 ] ; 2 uses
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.cmp, i64 2 ; 2 uses
  %i.cmr = load i16, ptr %i.cmq, align 2
  %i.cms = add i16 %i.cmr, -1                     ; 2 uses
  store i16 %i.cms, ptr %i.cmq, align 2
  %i.cmt = zext i16 %i.cms to i64
  %i.cmu = getelementptr inbounds nuw i8, ptr %i.cmp, i64 16
  %i.cmv = getelementptr inbounds nuw [24 x i8], ptr %i.cmu, i64 %i.cmt ; 3 uses
  %.sroa.0.0.copyload764 = load i64, ptr %i.cmv, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cmv, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cmv, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_ZN2v88internal9Scavenger32IterateAndScavengePromotedObjectENS0_6TaggedINS0_10HeapObjectEEENS2_INS0_3MapEEENS_4base11StrongAliasINS0_17HeapObjectSizeTagEjEE(ptr noundef nonnull align 8 dereferenceable(2372) %0, i64 %.sroa.0.0.copyload764, i64 %.sroa.5.0.copyload, i32 %.sroa.6.0.copyload)
  br i1 %.not, label %.peel.next, label %bb.oy, !llvm.loop !131

bb.oy:                                            ; preds = %bb.ox
  %i.cmw = add i64 %.3.ph3085, 1                  ; 3 uses
  %i.cmx = and i64 %i.cmw, 127
  %i.cmy = icmp eq i64 %i.cmx, 0
  br i1 %i.cmy, label %bb.oz, label %.peel.next.outer.backedge

bb.oz:                                            ; preds = %bb.oy
  %i.cmz = load ptr, ptr %i.n, align 8, !nonnull !13, !align !15
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmz, i64 16
  %i.cnb = load atomic i64, ptr %i.cna monotonic, align 8
  %i.cnc = icmp eq i64 %i.cnb, 0
  br i1 %i.cnc, label %.peel.next.outer.backedge, label %.peel.next.sink.split, !llvm.loop !131

.peel.next.outer.backedge:                        ; preds = %bb.oz, %bb.oy
  br label %.peel.next.outer, !llvm.loop !131

_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE5Local3PopEPS5_.exit: ; preds = %bb.ot, %bb.ok
  %.32333 = phi i64 [ %.1122141, %bb.ok ], [ %.3.ph3085, %bb.ot ]
  %.12331 = phi i1 [ %i.ckj, %bb.ok ], [ true, %bb.ot ]
  br i1 %.12331, label %.backedge.backedge, label %bb.pa

.backedge.backedge:                               ; preds = %_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE5Local3PopEPS5_.exit, %_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE3PopEPPNS6_7SegmentE.exit.i
  %.011.be = phi i64 [ %.32333, %_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE5Local3PopEPS5_.exit ], [ %.3.lcssa2332, %_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE3PopEPPNS6_7SegmentE.exit.i ]
  br label %.backedge, !llvm.loop !132

bb.pa:                                            ; preds = %_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE3PopEPPNS6_7SegmentE.exit.i, %_ZN4heap4base8WorklistIN2v88internal9Scavenger17PromotedListEntryELt256EE5Local3PopEPS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void
}

declare void @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare { i64, i8 } @_ZN2v88internal14IndexGenerator7GetNextEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Scavenger12ScavengePageEPNS0_19MutablePageMetadataE(ptr noundef nonnull align 8 dereferenceable(2372) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::WritableRelocInfo", align 8 ; 7 uses
  %3 = alloca %"class.v8::internal::Tagged.517", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::WritableJitPage", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::WritableJitAllocation", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, -55464
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64088
  %i.g = load i8, ptr %i.f, align 8, !range !12, !noundef !13
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK2v88internal7Isolate16has_shared_spaceEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNK2v88internal7Isolate16has_shared_spaceEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64080
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ne ptr %i.j, null                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, -262144                    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEiS7_T_PN4heap4base8WorklistIS7_Lt64EE5LocalE.exit", label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal7Isolate16has_shared_spaceEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load atomic volatile i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEiS7_T_PN4heap4base8WorklistIS7_Lt64EE5LocalE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 5 uses
  %i.u = load i64, ptr %i.l, align 8
  %i.v = and i64 %i.u, -262144
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 8191                       ; 2 uses
  %i.z = lshr i64 %i.y, 13                        ; 3 uses
  %.not14.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not14.i.i.i, label %"_ZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.aa = add nuw nsw i64 %i.z, 63
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 562949953421304          ; 2 uses
  %i.ad = icmp ugt i64 %i.y, 532479
  %i.ae = add nsw i64 %i.ac, -8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %bb.e

bb.e:                                             ; preds = %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i", %.lr.ph.i.i.i
  %.03811.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ej, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i" ] ; 9 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.03811.i.i.i
  %i.ah = load atomic volatile i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = shl i64 %.03811.i.i.i, 10
  br label %bb.h

bb.g:                                             ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i
  %i.ak = icmp eq i64 %.3.i.i.i, 0
  br i1 %i.ak, label %bb.z, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i"

bb.h:                                             ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i, %bb.f
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i.i, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i ] ; 2 uses
  %.03910.i.i.i = phi i64 [ 0, %bb.f ], [ %.3.i.i.i, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i ] ; 2 uses
  %.0439.i.i.i = phi i64 [ %i.aj, %bb.f ], [ %i.di, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i ; 3 uses
  %i.am = load atomic volatile i32, ptr %i.al acquire, align 4 ; 3 uses
  %.not48.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not48.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"
  %.1407.i.i.i = phi i64 [ %.2.i.i.i, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i" ], [ %.03910.i.i.i, %bb.h ]
  %.0416.i.i.i = phi i32 [ %.142.i.i.i, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i" ], [ 0, %bb.h ]
  %.0445.i.i.i = phi i32 [ %i.da, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i" ], [ %i.am, %bb.h ] ; 3 uses
  %i.an = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0445.i.i.i, i1 true) ; 2 uses
  %i.ao = shl nuw i32 1, %i.an                    ; 3 uses
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = or disjoint i64 %.0439.i.i.i, %i.ap
  %i.ar = shl i64 %i.aq, 3                        ; 3 uses
  %i.as = add i64 %i.ar, %i.v                     ; 3 uses
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 4 uses
  %i.av = trunc i64 %i.au to i1
  %i.aw = and i64 %i.au, 4294967295
  %i.ax = icmp ne i64 %i.aw, 3
  %i.ay = and i1 %i.ax, %i.av
  br i1 %i.ay, label %_ZN2v88internal4Heap10InFromPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i, label %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i

_ZN2v88internal4Heap10InFromPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i: ; preds = %.preheader.i.i.i
  %i.az = and i64 %i.au, -262144
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %i.ba, align 262144
  %.fr11.i.i.i.i.i.i = freeze i64 %i.bb           ; 2 uses
  %i.bc = and i64 %.fr11.i.i.i.i.i.i, 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal4Heap8InToPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal4Heap10InFromPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i
  %i.bd = and i64 %i.au, -3
  %i.be = tail call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %0, i64 %i.as, i64 %i.bd)
  br label %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i

_ZN2v88internal4Heap8InToPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i: ; preds = %_ZN2v88internal4Heap10InFromPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i
  %i.bf = and i64 %.fr11.i.i.i.i.i.i, 16
  %.not12.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  %spec.select.i.i.i.i.i.i = zext i1 %.not12.i.i.i.i.i.i to i32
  br label %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i

_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i: ; preds = %_ZN2v88internal4Heap8InToPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i, %bb.i, %.preheader.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.be, %bb.i ], [ 1, %.preheader.i.i.i ], [ %spec.select.i.i.i.i.i.i, %_ZN2v88internal4Heap8InToPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  %or.cond.i.i.i.i.i = select i1 %i.bg, i1 %i.k, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"

bb.j:                                             ; preds = %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i
  %i.bh = load i64, ptr %i.at, align 8            ; 3 uses
  %i.bi = trunc i64 %i.bh to i1
  %i.bj = and i64 %i.bh, 4294967295
  %i.bk = icmp ne i64 %i.bj, 3
  %i.bl = and i1 %i.bk, %i.bi
  br i1 %i.bl, label %bb.k, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"

bb.k:                                             ; preds = %bb.j
  %i.bm = and i64 %i.bh, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i64, ptr %i.bn, align 262144
  %i.bp = and i64 %i.bo, 1
  %.not.i7.i.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i7.i.i.i.i.i, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = sub i64 %i.as, %i.n
  %i.br = load atomic volatile i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = icmp eq i64 %i.br, 0
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = tail call noundef ptr @_ZN2v88internal19MutablePageMetadata15AllocateSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %1, i32 noundef 3) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi ptr [ %i.bu, %bb.m ], [ %i.bs, %bb.l ] ; 2 uses
  %i.bv = lshr i64 %i.bq, 13                      ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bv, %i.bx
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i, label %bb.o, !prof !133

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.189) #26
  unreachable

_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.by = trunc i64 %i.ar to i32
  %i.bz = lshr i64 %i.ar, 8
  %i.ca = and i64 %i.bz, 31
  %i.cb = lshr exact i32 %i.by, 3
  %i.cc = and i32 %i.cb, 31
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.bv ; 3 uses
  %i.ce = load atomic volatile i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = icmp eq i64 %i.ce, 0
  br i1 %i.cg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i
  %i.ch = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #28 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ch, i8 0, i64 128, i1 false)
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = cmpxchg volatile ptr %i.cd, i64 0, i64 %i.ci release monotonic, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 128) #29
  %i.cl = load atomic volatile i64, ptr %i.cd acquire, align 8
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i
  %.0.i.i.i53.i.i.i = phi ptr [ %i.ch, %bb.p ], [ %i.cm, %bb.q ], [ %i.cf, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i ]
  %i.cn = shl nuw i32 1, %i.cc                    ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i53.i.i.i, i64 %i.ca ; 3 uses
  %i.cp = load atomic volatile i32, ptr %i.co acquire, align 4
  %i.cq = and i32 %i.cp, %i.cn
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.s, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"

bb.s:                                             ; preds = %bb.r
  %i.cs = load atomic volatile i32, ptr %i.co monotonic, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.013.i.i.i.i.i.i.i.i = phi i32 [ %i.cs, %bb.s ], [ %i.cw, %bb.u ] ; 3 uses
  %i.ct = and i32 %.013.i.i.i.i.i.i.i.i, %i.cn
  %.not16.not.not.i.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not16.not.not.i.not.i.not.i.i.i.i.i.i, label %bb.u, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"

bb.u:                                             ; preds = %bb.t
  %i.cu = or i32 %.013.i.i.i.i.i.i.i.i, %i.cn
  %i.cv = cmpxchg volatile ptr %i.co, i32 %.013.i.i.i.i.i.i.i.i, i32 %i.cu release monotonic, align 4 ; 2 uses
  %i.cw = extractvalue { i32, i1 } %i.cv, 0
  %.not.i.i.i.i.i.i.i.i = extractvalue { i32, i1 } %i.cv, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i", label %bb.t, !llvm.loop !134

"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i": ; preds = %bb.u, %bb.t, %bb.r, %bb.k, %bb.j, %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %i.cy = select i1 %i.cx, i32 0, i32 %i.ao
  %.142.i.i.i = or i32 %i.cy, %.0416.i.i.i        ; 4 uses
  %i.cz = zext i1 %i.cx to i64
  %.2.i.i.i = add i64 %.1407.i.i.i, %i.cz         ; 4 uses
  %i.da = xor i32 %i.ao, %.0445.i.i.i
  %.not49.i.i.i = icmp eq i32 %i.ao, %.0445.i.i.i
  br i1 %.not49.i.i.i, label %bb.v, label %.preheader.i.i.i, !llvm.loop !135

bb.v:                                             ; preds = %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"
  %i.db = and i32 %.142.i.i.i, %i.am
  %.not50.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not50.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = load atomic volatile i32, ptr %i.al monotonic, align 4
  %i.dd = xor i32 %.142.i.i.i, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.013.i.i.i.i.i = phi i32 [ %i.dc, %bb.w ], [ %i.dh, %bb.y ] ; 3 uses
  %i.de = and i32 %.013.i.i.i.i.i, %.142.i.i.i
  %.not16.not.not.i.not.i.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not16.not.not.i.not.i.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = and i32 %.013.i.i.i.i.i, %i.dd
  %i.dg = cmpxchg volatile ptr %i.al, i32 %.013.i.i.i.i.i, i32 %i.df release monotonic, align 4 ; 2 uses
  %i.dh = extractvalue { i32, i1 } %i.dg, 0
  %.not.i.i.i.i.i = extractvalue { i32, i1 } %i.dg, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i, label %bb.x, !llvm.loop !134

_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.v, %bb.h
  %.3.i.i.i = phi i64 [ %.03910.i.i.i, %bb.h ], [ %.2.i.i.i, %bb.v ], [ %.2.i.i.i, %bb.x ], [ %.2.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.di = add nuw nsw i64 %.0439.i.i.i, 32
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %bb.g, label %bb.h, !llvm.loop !136

bb.z:                                             ; preds = %bb.g
  %i.dj = load i64, ptr %i.t, align 8             ; 3 uses
  %i.dk = trunc i64 %i.dj to i1
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dl = lshr i64 %.03811.i.i.i, 6
  %i.dm = and i64 %i.dj, -2
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl ; 2 uses
  %i.dp = and i64 %.03811.i.i.i, 63
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = load i64, ptr %i.do, align 8
  %i.ds = or i64 %i.dr, %i.dq
  store i64 %i.ds, ptr %i.do, align 8
  br label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i"

bb.ab:                                            ; preds = %bb.z
  %i.dt = icmp samesign ult i64 %.03811.i.i.i, 63
  br i1 %i.dt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.du = shl nuw i64 2, %.03811.i.i.i
  %i.dv = or i64 %i.dj, %i.du
  store i64 %i.dv, ptr %i.t, align 8
  br label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i"

bb.ad:                                            ; preds = %bb.ab
  %i.dw = tail call noundef ptr @_ZN2v88internal21AlignedAllocWithRetryEmm(i64 noundef %i.ac, i64 noundef 8) #25 ; 3 uses
  %i.dx = load i64, ptr %i.t, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal9Scavenger12ScavengePageEPNS0_19MutablePageMetadataE:bb.a
  ]

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 %i.kb, ptr %2, align 8
  store i8 1, ptr %i.jl, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store ptr %5, ptr %i.jn, align 8
  %i.ki = inttoptr i64 %i.kb to ptr
  %.0.copyload.i.i.i.i = load i32, ptr %i.ki, align 1
  %i.kj = sext i32 %.0.copyload.i.i.i.i to i64
  %i.kk = add i64 %i.kb, 4
  %i.kl = add i64 %i.kk, %i.kj                    ; 3 uses
  %i.km = call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() #25
  %i.kn = ptrtoint ptr %i.km to i64               ; 2 uses
  %i.ko = call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() #25
  %i.kp = zext i32 %i.ko to i64
  %i.kq = add i64 %i.kp, %i.kn
  %i.kr = icmp uge i64 %i.kl, %i.kn
  %i.ks = icmp ult i64 %i.kl, %i.kq
  %.not9.i.i.i = and i1 %i.kr, %i.ks
  br i1 %.not9.i.i.i, label %bb.bk, label %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i, !prof !14

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.195) #26
  unreachable

_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i: ; preds = %bb.bj
  %i.kt = add i64 %i.kl, -31
  %.not.i.i45 = icmp eq i64 %.sroa.03.0.copyload, %i.kt
  br i1 %.not.i.i45, label %"_ZN2v88internal21UpdateTypedSlotHelper16UpdateCodeTargetIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultEPNS0_17WritableRelocInfoET_.exit.i", label %bb.bl

bb.bl:                                            ; preds = %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i
  %i.ku = add i64 %.sroa.03.0.copyload, 31
  call void @_ZN2v88internal17WritableRelocInfo18set_target_addressEmNS0_15ICacheFlushModeE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %i.ku, i32 noundef 0) #25
  br label %"_ZN2v88internal21UpdateTypedSlotHelper16UpdateCodeTargetIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultEPNS0_17WritableRelocInfoET_.exit.i"

"_ZN2v88internal21UpdateTypedSlotHelper16UpdateCodeTargetIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultEPNS0_17WritableRelocInfoET_.exit.i": ; preds = %bb.bl, %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit"

bb.bm:                                            ; preds = %bb.bi
  %i.kv = inttoptr i64 %i.kb to ptr               ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = add i64 %i.kw, -31
  %.not.i28.i = icmp eq i64 %.sroa.03.0.copyload, %i.kx
  br i1 %.not.i28.i, label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ky = add i64 %.sroa.03.0.copyload, 31
  store i64 %i.ky, ptr %i.kv, align 8
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit"

bb.bo:                                            ; preds = %bb.bi
  %i.kz = inttoptr i64 %i.kb to ptr               ; 3 uses
  %.0.copyload.i7.i.i = load i64, ptr %i.kz, align 1
  %.not.i29.i = icmp eq i64 %.sroa.03.0.copyload, %.0.copyload.i7.i.i
  br i1 %.not.i29.i, label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit", label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.bo
  store i64 %.sroa.03.0.copyload, ptr %i.kz, align 1
  call void @_ZN2v88internal21FlushInstructionCacheEPvm(ptr noundef nonnull %i.kz, i64 noundef 8) #25
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit"

bb.bp:                                            ; preds = %bb.bi
  %i.la = inttoptr i64 %i.kb to ptr               ; 3 uses
  %.0.copyload.i7.i30.i = load i64, ptr %i.la, align 1
  %.not.i31.i = icmp eq i64 %.sroa.03.0.copyload, %.0.copyload.i7.i30.i
  br i1 %.not.i31.i, label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit", label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i32.i

_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i32.i: ; preds = %bb.bp
  store i64 %.sroa.03.0.copyload, ptr %i.la, align 1
  call void @_ZN2v88internal21FlushInstructionCacheEPvm(ptr noundef nonnull %i.la, i64 noundef 8) #25
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit"

bb.bq:                                            ; preds = %bb.bi
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.182) #26
  unreachable

bb.br:                                            ; preds = %bb.bi
  %i.lb = inttoptr i64 %i.kb to ptr               ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8
  %.not.i44 = icmp eq i64 %.sroa.03.0.copyload, %i.lc
  br i1 %.not.i44, label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit", label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i: ; preds = %bb.br
  store i64 %.sroa.03.0.copyload, ptr %i.lb, align 8
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit"

bb.bs:                                            ; preds = %bb.bi
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.182) #26
  unreachable

"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit": ; preds = %"_ZN2v88internal21UpdateTypedSlotHelper16UpdateCodeTargetIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultEPNS0_17WritableRelocInfoET_.exit.i", %bb.bm, %bb.bn, %bb.bo, %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i, %bb.bp, %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i32.i, %bb.br, %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i
  %i.ld = load i8, ptr %i.jh, align 8, !range !12, !noundef !13
  %i.le = trunc nuw i8 %i.ld to i1
  store i8 0, ptr %i.jh, align 8
  br i1 %i.le, label %bb.bt, label %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit

bb.bt:                                            ; preds = %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit"
  %i.lf = load ptr, ptr %i.jg, align 8            ; 2 uses
  %.not.i.i.i.i.i.i46 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i.i.i.i46, label %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lf) #25
  br label %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit: ; preds = %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_2EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapENS0_8SlotTypeEmT_.exit", %bb.bt, %bb.bu
  %i.lg = load i8, ptr %i.jf, align 1, !range !12, !noundef !13
  %i.lh = trunc nuw i8 %i.lg to i1
  store i8 0, ptr %i.jf, align 1
  br i1 %i.lh, label %bb.bv, label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit

bb.bv:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit
  %i.li = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !12, !noundef !13
  %i.lj = trunc nuw i8 %i.li to i1
  %.not.i.i.i.i47 = xor i1 %i.lj, true
  %i.lk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !12
  %i.ll = trunc nuw i8 %i.lk to i1
  %or.cond.i.i.i.i48 = select i1 %.not.i.i.i.i47, i1 true, i1 %i.ll
  br i1 %or.cond.i.i.i.i48, label %bb.bw, label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit

bb.bw:                                            ; preds = %bb.bv
  %i.lm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not2.i.i.i.i = icmp eq i32 %i.lm, -1
  br i1 %.not2.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.lm, i32 noundef 2) #25
  br label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit, %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0109.0154, i64 24 ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %.sroa.7.5146
  br i1 %i.lo, label %._crit_edge, label %bb.bi

_ZNSt6vectorISt5tupleIJN2v88internal6TaggedINS2_10HeapObjectEEENS2_8SlotTypeEmEESaIS7_EED2Ev.exit: ; preds = %bb.bh, %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_0EEiS7_T_PN4heap4base8WorklistIS7_Lt64EE5LocalE.exit"
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.lq = load atomic volatile i64, ptr %i.lp acquire, align 8
  %.not29 = icmp eq i64 %i.lq, 0
  br i1 %.not29, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEiS7_T_PN4heap4base8WorklistIS7_Lt64EE5LocalE.exit", label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorISt5tupleIJN2v88internal6TaggedINS2_10HeapObjectEEENS2_8SlotTypeEmEESaIS7_EED2Ev.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ls = load atomic volatile i64, ptr %i.lp acquire, align 8 ; 2 uses
  %i.lt = inttoptr i64 %i.ls to ptr
  %.not.i49 = icmp eq i64 %i.ls, 0
  br i1 %.not.i49, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEiS7_T_PN4heap4base8WorklistIS7_Lt64EE5LocalE.exit", label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 5 uses
  %i.lv = load i64, ptr %i.l, align 8
  %i.lw = and i64 %i.lv, -262144
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = add i64 %i.ly, 8191                     ; 2 uses
  %i.ma = lshr i64 %i.lz, 13                      ; 3 uses
  %.not14.i.i.i53 = icmp eq i64 %i.ma, 0
  br i1 %.not14.i.i.i53, label %"_ZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsE.exit.i", label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %bb.bz
  %i.mb = add nuw nsw i64 %i.ma, 63
  %i.mc = lshr i64 %i.mb, 3
  %i.md = and i64 %i.mc, 562949953421304          ; 2 uses
  %i.me = icmp ugt i64 %i.lz, 532479
  %i.mf = add nsw i64 %i.md, -8
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %bb.ca

bb.ca:                                            ; preds = %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i", %.lr.ph.i.i.i54
  %.03811.i.i.i60 = phi i64 [ 0, %.lr.ph.i.i.i54 ], [ %i.qk, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i" ] ; 9 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.03811.i.i.i60
  %i.mi = load atomic volatile i64, ptr %i.mh acquire, align 8 ; 2 uses
  %i.mj = inttoptr i64 %i.mi to ptr
  %.not.i.i.i61 = icmp eq i64 %i.mi, 0
  br i1 %.not.i.i.i61, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mk = shl i64 %.03811.i.i.i60, 10
  br label %bb.cd

bb.cc:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80
  %i.ml = icmp eq i64 %.3.i.i.i81, 0
  br i1 %i.ml, label %bb.cv, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE0_clEm.exit.i.i.i"

bb.cd:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80, %bb.cb
  %indvars.iv.i.i.i62 = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next.i.i.i82, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80 ] ; 2 uses
  %.03910.i.i.i63 = phi i64 [ 0, %bb.cb ], [ %.3.i.i.i81, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80 ] ; 2 uses
  %.0439.i.i.i64 = phi i64 [ %i.mk, %bb.cb ], [ %i.pj, %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80 ] ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.i.i.i62 ; 3 uses
  %i.mn = load atomic volatile i32, ptr %i.mm acquire, align 4 ; 3 uses
  %.not48.i.i.i65 = icmp eq i32 %i.mn, 0
  br i1 %.not48.i.i.i65, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80, label %.preheader.i.i.i66

.preheader.i.i.i66:                               ; preds = %bb.cd, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"
  %.1407.i.i.i67 = phi i64 [ %.2.i.i.i74, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i" ], [ %.03910.i.i.i63, %bb.cd ]
  %.0416.i.i.i68 = phi i32 [ %.142.i.i.i73, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i" ], [ 0, %bb.cd ]
  %.0445.i.i.i69 = phi i32 [ %i.pb, %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i" ], [ %i.mn, %bb.cd ] ; 3 uses
  %i.mo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0445.i.i.i69, i1 true) ; 2 uses
  %i.mp = shl nuw i32 1, %i.mo                    ; 3 uses
  %i.mq = zext nneg i32 %i.mo to i64
  %i.mr = or disjoint i64 %.0439.i.i.i64, %i.mq
  %i.ms = shl i64 %i.mr, 3                        ; 3 uses
  %i.mt = add i64 %i.ms, %i.lw                    ; 3 uses
  %i.mu = inttoptr i64 %i.mt to ptr               ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 8            ; 4 uses
  %i.mw = trunc i64 %i.mv to i1
  %i.mx = and i64 %i.mv, 4294967295
  %i.my = icmp ne i64 %i.mx, 3
  %i.mz = and i1 %i.my, %i.mw
  br i1 %i.mz, label %_ZN2v88internal4Heap10InFromPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i102, label %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i70

_ZN2v88internal4Heap10InFromPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i102: ; preds = %.preheader.i.i.i66
  %i.na = and i64 %i.mv, -262144
  %i.nb = inttoptr i64 %i.na to ptr
  %i.nc = load i64, ptr %i.nb, align 262144
  %.fr11.i.i.i.i.i.i103 = freeze i64 %i.nc        ; 2 uses
  %i.nd = and i64 %.fr11.i.i.i.i.i.i103, 8
  %.not.i.i.i.i.i.i104 = icmp eq i64 %i.nd, 0
  br i1 %.not.i.i.i.i.i.i104, label %_ZN2v88internal4Heap8InToPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i105, label %bb.ce

bb.ce:                                            ; preds = %_ZN2v88internal4Heap10InFromPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i102
  %i.ne = and i64 %i.mv, -3
  %i.nf = call noundef i32 @_ZN2v88internal9Scavenger14ScavengeObjectINS0_18FullHeapObjectSlotEEEN4heap4base18SlotCallbackResultET_NS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2372) %0, i64 %i.mt, i64 %i.ne)
  br label %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i70

_ZN2v88internal4Heap8InToPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i105: ; preds = %_ZN2v88internal4Heap10InFromPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i102
  %i.ng = and i64 %.fr11.i.i.i.i.i.i103, 16
  %.not12.i.i.i.i.i.i106 = icmp eq i64 %i.ng, 0
  %spec.select.i.i.i.i.i.i107 = zext i1 %.not12.i.i.i.i.i.i106 to i32
  br label %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i70

_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i70: ; preds = %_ZN2v88internal4Heap8InToPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i105, %bb.ce, %.preheader.i.i.i66
  %.0.i.i.i.i.i.i71 = phi i32 [ %i.nf, %bb.ce ], [ 1, %.preheader.i.i.i66 ], [ %spec.select.i.i.i.i.i.i107, %_ZN2v88internal4Heap8InToPageENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit.i.i.i.i.i.i105 ] ; 2 uses
  %i.nh = icmp eq i32 %.0.i.i.i.i.i.i71, 1
  %or.cond.i.i.i.i.i72 = select i1 %i.nh, i1 %i.k, i1 false
  br i1 %or.cond.i.i.i.i.i72, label %bb.cf, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"

bb.cf:                                            ; preds = %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i70
  %i.ni = load i64, ptr %i.mu, align 8            ; 3 uses
  %i.nj = trunc i64 %i.ni to i1
  %i.nk = and i64 %i.ni, 4294967295
  %i.nl = icmp ne i64 %i.nk, 3
  %i.nm = and i1 %i.nl, %i.nj
  br i1 %i.nm, label %bb.cg, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"

bb.cg:                                            ; preds = %bb.cf
  %i.nn = and i64 %i.ni, -262144
  %i.no = inttoptr i64 %i.nn to ptr
  %i.np = load i64, ptr %i.no, align 262144
  %i.nq = and i64 %i.np, 1
  %.not.i7.i.i.i.i.i94 = icmp eq i64 %i.nq, 0
  br i1 %.not.i7.i.i.i.i.i94, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i", label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nr = sub i64 %i.mt, %i.n
  %i.ns = load atomic volatile i64, ptr %i.mg acquire, align 8 ; 2 uses
  %i.nt = inttoptr i64 %i.ns to ptr
  %i.nu = icmp eq i64 %i.ns, 0
  br i1 %i.nu, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.nv = call noundef ptr @_ZN2v88internal19MutablePageMetadata15AllocateSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %1, i32 noundef 3) #25
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i95 = phi ptr [ %i.nv, %bb.ci ], [ %i.nt, %bb.ch ] ; 2 uses
  %i.nw = lshr i64 %i.nr, 13                      ; 2 uses
  %i.nx = getelementptr inbounds i8, ptr %.0.i.i.i.i95, i64 -8
  %i.ny = load i64, ptr %i.nx, align 8
  %.not.i.i.i.i.i.i.i96 = icmp ult i64 %i.nw, %i.ny
  br i1 %.not.i.i.i.i.i.i.i96, label %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i97, label %bb.ck, !prof !133

bb.ck:                                            ; preds = %bb.cj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.189) #26
  unreachable

_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i97: ; preds = %bb.cj
  %i.nz = trunc i64 %i.ms to i32
  %i.oa = lshr i64 %i.ms, 8
  %i.ob = and i64 %i.oa, 31
  %i.oc = lshr exact i32 %i.nz, 3
  %i.od = and i32 %i.oc, 31
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i95, i64 %i.nw ; 3 uses
  %i.of = load atomic volatile i64, ptr %i.oe acquire, align 8 ; 2 uses
  %i.og = inttoptr i64 %i.of to ptr
  %i.oh = icmp eq i64 %i.of, 0
  br i1 %i.oh, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i97
  %i.oi = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #28 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.oi, i8 0, i64 128, i1 false)
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = cmpxchg volatile ptr %i.oe, i64 0, i64 %i.oj release monotonic, align 8
  %i.ol = extractvalue { i64, i1 } %i.ok, 1
  br i1 %i.ol, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.oi, i64 noundef 128) #29
  %i.om = load atomic volatile i64, ptr %i.oe acquire, align 8
  %i.on = inttoptr i64 %i.om to ptr
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i97
  %.0.i.i.i53.i.i.i98 = phi ptr [ %i.oi, %bb.cl ], [ %i.on, %bb.cm ], [ %i.og, %_ZN4heap4base12BasicSlotSetILm8EE13SlotToIndicesEmPmPiS4_.exit.i.i.i.i.i.i97 ]
  %i.oo = shl nuw i32 1, %i.od                    ; 3 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i53.i.i.i98, i64 %i.ob ; 3 uses
  %i.oq = load atomic volatile i32, ptr %i.op acquire, align 4
  %i.or = and i32 %i.oq, %i.oo
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %bb.co, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"

bb.co:                                            ; preds = %bb.cn
  %i.ot = load atomic volatile i32, ptr %i.op monotonic, align 4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cq, %bb.co
  %.013.i.i.i.i.i.i.i.i99 = phi i32 [ %i.ot, %bb.co ], [ %i.ox, %bb.cq ] ; 3 uses
  %i.ou = and i32 %.013.i.i.i.i.i.i.i.i99, %i.oo
  %.not16.not.not.i.not.i.not.i.i.i.i.i.i100 = icmp eq i32 %i.ou, 0
  br i1 %.not16.not.not.i.not.i.not.i.i.i.i.i.i100, label %bb.cq, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"

bb.cq:                                            ; preds = %bb.cp
  %i.ov = or i32 %.013.i.i.i.i.i.i.i.i99, %i.oo
  %i.ow = cmpxchg volatile ptr %i.op, i32 %.013.i.i.i.i.i.i.i.i99, i32 %i.ov release monotonic, align 4 ; 2 uses
  %i.ox = extractvalue { i32, i1 } %i.ow, 0
  %.not.i.i.i.i.i.i.i.i101 = extractvalue { i32, i1 } %i.ow, 1
  br i1 %.not.i.i.i.i.i.i.i.i101, label %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i", label %bb.cp, !llvm.loop !134

"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i": ; preds = %bb.cq, %bb.cp, %bb.cn, %bb.cg, %bb.cf, %_ZN2v88internal9Scavenger22CheckAndScavengeObjectINS0_19FullMaybeObjectSlotEEEN4heap4base18SlotCallbackResultEPNS0_4HeapET_.exit.i.i.i.i.i70
  %i.oy = icmp eq i32 %.0.i.i.i.i.i.i71, 0        ; 2 uses
  %i.oz = select i1 %i.oy, i32 0, i32 %i.mp
  %.142.i.i.i73 = or i32 %i.oz, %.0416.i.i.i68    ; 4 uses
  %i.pa = zext i1 %i.oy to i64
  %.2.i.i.i74 = add i64 %.1407.i.i.i67, %i.pa     ; 4 uses
  %i.pb = xor i32 %i.mp, %.0445.i.i.i69
  %.not49.i.i.i75 = icmp eq i32 %i.mp, %.0445.i.i.i69
  br i1 %.not49.i.i.i75, label %bb.cr, label %.preheader.i.i.i66, !llvm.loop !148

bb.cr:                                            ; preds = %"_ZZN2v88internal7SlotSet27IterateAndTrackEmptyBucketsIZNS0_9Scavenger12ScavengePageEPNS0_19MutablePageMetadataEE3$_3EEmmmmT_PNS0_20PossiblyEmptyBucketsEENKUlmE_clEm.exit.i.i.i"
  %i.pc = and i32 %.142.i.i.i73, %i.mn
  %.not50.i.i.i76 = icmp eq i32 %i.pc, 0
  br i1 %.not50.i.i.i76, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pd = load atomic volatile i32, ptr %i.mm monotonic, align 4
  %i.pe = xor i32 %.142.i.i.i73, -1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cu, %bb.cs
  %.013.i.i.i.i.i77 = phi i32 [ %i.pd, %bb.cs ], [ %i.pi, %bb.cu ] ; 3 uses
  %i.pf = and i32 %.013.i.i.i.i.i77, %.142.i.i.i73
  %.not16.not.not.i.not.i.i.i.i78 = icmp eq i32 %i.pf, 0
  br i1 %.not16.not.not.i.not.i.i.i.i78, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pg = and i32 %.013.i.i.i.i.i77, %i.pe
  %i.ph = cmpxchg volatile ptr %i.mm, i32 %.013.i.i.i.i.i77, i32 %i.pg release monotonic, align 4 ; 2 uses
  %i.pi = extractvalue { i32, i1 } %i.ph, 0
  %.not.i.i.i.i.i79 = extractvalue { i32, i1 } %i.ph, 1
  br i1 %.not.i.i.i.i.i79, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80, label %bb.ct, !llvm.loop !134

_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i80: ; preds = %bb.cu, %bb.ct, %bb.cr, %bb.cd
  %.3.i.i.i81 = phi i64 [ %.03910.i.i.i63, %bb.cd ], [ %.2.i.i.i74, %bb.cr ], [ %.2.i.i.i74, %bb.ct ], [ %.2.i.i.i74, %bb.cu ] ; 2 uses
  %indvars.iv.next.i.i.i82 = add nuw nsw i64 %indvars.iv.i.i.i62, 1 ; 2 uses
  %i.pj = add nuw nsw i64 %.0439.i.i.i64, 32
  %exitcond.not.i.i.i83 = icmp eq i64 %indvars.iv.next.i.i.i82, 32
  br i1 %exitcond.not.i.i.i83, label %bb.cc, label %bb.cd, !llvm.loop !149

bb.cv:                                            ; preds = %bb.cc
  %i.pk = load i64, ptr %i.lu, align 8            ; 3 uses
  %i.pl = trunc i64 %i.pk to i1
  br i1 %i.pl, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.pm = lshr i64 %.03811.i.i.i60, 6
  %i.pn = and i64 %i.pk, -2
  %i.po = inttoptr i64 %i.pn to ptr
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.pm ; 2 uses
  %i.pq = and i64 %.03811.i.i.i60, 63
  %i.pr = shl nuw i64 1, %i.pq
  %i.ps = load i64, ptr %i.pp, align 8
  %i.pt = or i64 %i.ps, %i.pr
  store i64 %i.pt, ptr %i.pp, align 8
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
end_hunk_1
