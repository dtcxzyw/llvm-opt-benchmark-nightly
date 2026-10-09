Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/marking-barrier?download=true
inline.NumInlined: 810
inline.NumDeleted: 507
begin_hunk_0_@_ZN2v88internal14MarkingBarrier14MarkValueLocalENS0_6TaggedINS0_10HeapObjectEEE:bb.a
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load atomic ptr, ptr %i.ax seq_cst, align 8
  %.not.i.i13 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i13, label %bb.k, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit16, !prof !11

bb.k:                                             ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #20
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit16: ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = add i64 %i.az, 336
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = lshr i64 %1, 3
  %i.bd = and i64 %i.bc, 63
  %i.be = shl nuw i64 1, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %1, 9
  %i.bg = and i64 %i.bf, 511
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bg ; 2 uses
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit16
  %.0.i.i17 = phi i64 [ %i.bi, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit16 ], [ %i.bm, %bb.m ] ; 3 uses
  %i.bj = and i64 %.0.i.i17, %i.be
  %.not16.not.not.i.not.not.not.i18.not.not = icmp eq i64 %i.bj, 0
  br i1 %.not16.not.not.i.not.not.not.i18.not.not, label %bb.m, label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9

bb.m:                                             ; preds = %bb.l
  %i.bk = or i64 %.0.i.i17, %i.be
  %i.bl = cmpxchg volatile ptr %i.bh, i64 %.0.i.i17, i64 %i.bk monotonic monotonic, align 8 ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 0
  %.not.i.i19 = extractvalue { i64, i1 } %i.bl, 1
  br i1 %.not.i.i19, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit20, label %bb.l, !llvm.loop !1

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit20: ; preds = %bb.m
  %i.bn = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.br = load i16, ptr %i.bq, align 2            ; 2 uses
  %i.bs = load i16, ptr %i.bp, align 2
  %i.bt = icmp eq i16 %i.br, %i.bs
  br i1 %i.bt, label %bb.n, label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9.sink.split, !prof !11

bb.n:                                             ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit20
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
  %i.bu = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn) ; 2 uses
  store ptr %i.bu, ptr %i.bo, align 8
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9.sink.split.sink.split

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9.sink.split.sink.split: ; preds = %bb.h, %bb.n
  %.sink = phi ptr [ %i.bu, %bb.n ], [ %i.ah, %bb.h ] ; 2 uses
  %.phi.trans.insert.i21 = getelementptr inbounds nuw i8, ptr %.sink, i64 2
  %.pre.i22 = load i16, ptr %.phi.trans.insert.i21, align 2
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9.sink.split

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9.sink.split: ; preds = %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9.sink.split.sink.split, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit20, %bb.g
  %.sink58 = phi ptr [ %i.bp, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit20 ], [ %i.ac, %bb.g ], [ %.sink, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9.sink.split.sink.split ] ; 2 uses
  %.sink57 = phi i16 [ %i.br, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit20 ], [ %i.ae, %bb.g ], [ %.pre.i22, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9.sink.split.sink.split ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sink58, i64 2
  %i.bw = add i16 %.sink57, 1
  store i16 %i.bw, ptr %i.bv, align 2
  %i.bx = zext i16 %.sink57 to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.sink58, i64 16
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store i64 %1, ptr %i.bz, align 8
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9: ; preds = %bb.l, %bb.e, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit9.sink.split, %bb.i, %bb.j, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MarkingBarrier5WriteENS0_6TaggedINS0_17InstructionStreamEEEPNS0_9RelocInfoENS2_INS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(260) %0, i64 %1, ptr noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %3, -262144
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 262144         ; 2 uses
  %i.d = and i64 %i.c, 64
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal14MarkingBarrier9MarkValueENS0_6TaggedINS0_10HeapObjectEEES4_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 251
  %i.f = load i8, ptr %i.e, align 1, !range !8, !noundef !9
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.h, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.i = load i8, ptr %i.h, align 4, !range !8, !noundef !9
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %1, -262144
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 262144         ; 2 uses
  %i.n = and i64 %i.m, 32
  %.not24.i = icmp eq i64 %i.n, 0
  br i1 %.not24.i, label %_ZN2v88internal14MarkingBarrier9MarkValueENS0_6TaggedINS0_10HeapObjectEEES4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i64 %i.m, 1
  %.not25.i = icmp eq i64 %i.o, 0
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal14MarkingBarrier15MarkValueSharedENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(260) %0, i64 %3)
  br label %_ZN2v88internal14MarkingBarrier9MarkValueENS0_6TaggedINS0_10HeapObjectEEES4_.exit

bb.g:                                             ; preds = %bb.e
  %i.p = and i64 %i.c, 1
  %.not26.i = icmp eq i64 %i.p, 0
  br i1 %.not26.i, label %bb.h, label %_ZN2v88internal14MarkingBarrier9MarkValueENS0_6TaggedINS0_10HeapObjectEEES4_.exit

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.b
  tail call void @_ZN2v88internal14MarkingBarrier14MarkValueLocalENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(260) %0, i64 %3)
  br label %_ZN2v88internal14MarkingBarrier9MarkValueENS0_6TaggedINS0_10HeapObjectEEES4_.exit

_ZN2v88internal14MarkingBarrier9MarkValueENS0_6TaggedINS0_10HeapObjectEEES4_.exit: ; preds = %bb.a, %bb.d, %bb.f, %bb.g, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = load i8, ptr %i.q, align 8, !range !8, !noundef !9
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN2v88internal14MarkingBarrier9MarkValueENS0_6TaggedINS0_10HeapObjectEEES4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 250
  %i.u = load i8, ptr %i.t, align 2, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal20MarkCompactCollector15RecordRelocSlotENS0_6TaggedINS0_17InstructionStreamEEEPNS0_9RelocInfoENS2_INS0_10HeapObjectEEE(i64 %1, ptr noundef %2, i64 %3) #18
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal14MarkingBarrier15RecordRelocSlotENS0_6TaggedINS0_17InstructionStreamEEEPNS0_9RelocInfoENS2_INS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(260) %0, i64 %1, ptr noundef %2, i64 %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %_ZN2v88internal14MarkingBarrier9MarkValueENS0_6TaggedINS0_10HeapObjectEEES4_.exit
  ret void
}

declare void @_ZN2v88internal20MarkCompactCollector15RecordRelocSlotENS0_6TaggedINS0_17InstructionStreamEEEPNS0_9RelocInfoENS2_INS0_10HeapObjectEEE(i64, ptr noundef, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MarkingBarrier15RecordRelocSlotENS0_6TaggedINS0_17InstructionStreamEEEPNS0_9RelocInfoENS2_INS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(260) %0, i64 %1, ptr noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::MarkCompactCollector::RecordRelocSlotInfo", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal20MarkCompactCollector21ShouldRecordRelocSlotENS0_6TaggedINS0_17InstructionStreamEEEPNS0_9RelocInfoENS2_INS0_10HeapObjectEEE(i64 %1, ptr noundef %2, i64 %3) #18
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = tail call { ptr, i64 } @_ZN2v88internal20MarkCompactCollector16ProcessRelocInfoENS0_6TaggedINS0_17InstructionStreamEEEPNS0_9RelocInfoENS2_INS0_10HeapObjectEEE(i64 %1, ptr noundef %2, i64 %3) #18 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  store ptr %i.c, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.b, 1
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPN2v88internal19MutablePageMetadataESt4pairIKS4_St10unique_ptrINS2_10TypedSlotsESt14default_deleteIS8_EEESaISC_ENS_10_Select1stESt8equal_toIS4_ENS1_4base4hashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EE5resetEPS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal10TypedSlotsE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.g, align 8              ; 3 uses
  store ptr %i.i, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #18, !inline_history !14
  %.pre = load ptr, ptr %i.g, align 8
  br label %_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i, %bb.c, %bb.b
  %i.o = phi ptr [ %.pre, %_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i ], [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.p = load i8, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i32, ptr %i.q, align 4
  call void @_ZN2v88internal10TypedSlots6InsertENS0_8SlotTypeEj(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 noundef zeroext %i.p, i32 noundef %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EE5resetEPS2_.exit
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal14MarkingBarrier5WriteENS0_6TaggedINS0_13JSArrayBufferEEEPNS0_20ArrayBufferExtensionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(260) %0, i64 %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %1, -262144
  %i.e = inttoptr i64 %i.d to ptr
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 262144
  %i.f = and i64 %.sroa.0.0.copyload.i.i, 24
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink6 = phi i64 [ 33, %bb.b ], [ 32, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.sink6
  store atomic i8 1, ptr %i.g monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MarkingBarrier5WriteENS0_6TaggedINS0_15DescriptorArrayEEEi(ptr noundef nonnull align 8 dereferenceable(260) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 254
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN2v88internal14MarkingBarrier14MarkValueLocalENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(260) %0, i64 %1)
  br label %_ZN2v88internal27DescriptorArrayMarkingState22TryUpdateIndicesToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEEt.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 251
  %i.l = load i8, ptr %i.k, align 1, !range !8, !noundef !9
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = and i64 %1, -262144
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %i.m, label %3, label %._crit_edge, !prof !11

3:                                                ; preds = %bb.d
  %4 = load i64, ptr %i.o, align 262144
  %5 = and i64 %4, 1
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.q = load i8, ptr %i.p, align 4, !range !8, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, -55464
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64088
  %i.x = load i8, ptr %i.w, align 8, !range !8, !noundef !9
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #17
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64080
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 57344
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.h

._crit_edge:                                      ; preds = %bb.d, %bb.e, %3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit, %._crit_edge
  %.018 = phi ptr [ %i.ac, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit ], [ %i.af, %._crit_edge ]
  %.pn.in = phi ptr [ %i.ab, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit ], [ %i.ad, %._crit_edge ]
  %.pn = load ptr, ptr %.pn.in, align 8
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 872
  %.0 = load i32, ptr %.0.in, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load atomic ptr, ptr %i.ai seq_cst, align 8
  %.not.i.i22 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i22, label %bb.i, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit25, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #20
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit25: ; preds = %bb.h
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = add i64 %i.ak, 336
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = lshr i64 %1, 3
  %i.ao = and i64 %i.an, 63
  %i.ap = shl nuw i64 1, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %1, 9
  %i.ar = and i64 %i.aq, 511
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ar ; 2 uses
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit25
  %.0.i.i26 = phi i64 [ %i.at, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit25 ], [ %i.ax, %bb.k ] ; 3 uses
  %i.au = and i64 %.0.i.i26, %i.ap
  %.not16.not.not.i.not.not.not.i27.not.not = icmp eq i64 %i.au, 0
  br i1 %.not16.not.not.i.not.not.not.i27.not.not, label %bb.k, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit29

bb.k:                                             ; preds = %bb.j
  %i.av = or i64 %.0.i.i26, %i.ap
  %i.aw = cmpxchg volatile ptr %i.as, i64 %.0.i.i26, i64 %i.av monotonic monotonic, align 8 ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 0
  %.not.i.i28 = extractvalue { i64, i1 } %i.aw, 1
  br i1 %.not.i.i28, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit29, label %bb.j, !llvm.loop !1

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit29: ; preds = %bb.k, %bb.j
  %i.ay = trunc i32 %2 to i16
  %i.az = and i32 %.0, 3                          ; 2 uses
  %i.ba = add i64 %1, 11
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = and i32 %2, 65535                       ; 2 uses
  %i.bd = shl nuw i32 %i.bc, 16
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit29
  %i.be = load atomic volatile i32, ptr %i.bb monotonic, align 4 ; 4 uses
  %i.bf = and i32 %i.be, 3
  %.not.i30 = icmp eq i32 %i.az, %i.bf
  br i1 %.not.i30, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = trunc i32 %i.be to i16
  %i.bh = lshr i16 %i.bg, 2                       ; 2 uses
  %i.bi = lshr i32 %i.be, 16
  %i.bj = zext nneg i16 %i.bh to i32              ; 2 uses
  %i.bk = add nuw nsw i32 %i.bi, %i.bj
  %.not27.i = icmp samesign ult i32 %i.bk, %i.bc
  br i1 %.not27.i, label %.thread.i, label %_ZN2v88internal27DescriptorArrayMarkingState22TryUpdateIndicesToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEEt.exit

.thread.i:                                        ; preds = %bb.m
  %i.bl = sub nuw i16 %i.ay, %i.bh
  %i.bm = shl nuw nsw i32 %i.bj, 2
  %i.bn = zext i16 %i.bl to i32
  %i.bo = shl nuw i32 %i.bn, 16
  %i.bp = or disjoint i32 %i.bo, %i.bm
  br label %bb.n

bb.n:                                             ; preds = %.thread.i, %bb.l
  %.pn.i = phi i32 [ %i.bp, %.thread.i ], [ %i.bd, %bb.l ]
  %.123.i = or disjoint i32 %.pn.i, %i.az
  %i.bq = cmpxchg volatile ptr %i.bb, i32 %i.be, i32 %.123.i acq_rel acquire, align 4
  %i.br = extractvalue { i32, i1 } %i.bq, 1
  br i1 %i.br, label %bb.o, label %bb.l, !llvm.loop !15

bb.o:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %.018, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i16, ptr %i.bv, align 2            ; 2 uses
  %i.bx = load i16, ptr %i.bu, align 2
  %i.by = icmp eq i16 %i.bw, %i.bx
  br i1 %i.by, label %bb.p, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !11

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bs)
  %i.bz = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bs) ; 3 uses
  store ptr %i.bz, ptr %i.bt, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.o, %bb.p
  %i.ca = phi i16 [ %i.bw, %bb.o ], [ %.pre.i, %bb.p ] ; 2 uses
  %i.cb = phi ptr [ %i.bu, %bb.o ], [ %i.bz, %bb.p ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cd = add i16 %i.ca, 1
  store i16 %i.cd, ptr %i.cc, align 2
  %i.ce = zext i16 %i.ca to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  store i64 %1, ptr %i.cg, align 8
  br label %_ZN2v88internal27DescriptorArrayMarkingState22TryUpdateIndicesToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEEt.exit

_ZN2v88internal27DescriptorArrayMarkingState22TryUpdateIndicesToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEEt.exit: ; preds = %bb.m, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare noundef zeroext i1 @_ZN2v88internal20MarkCompactCollector21ShouldRecordRelocSlotENS0_6TaggedINS0_17InstructionStreamEEEPNS0_9RelocInfoENS2_INS0_10HeapObjectEEE(i64, ptr noundef, i64) local_unnamed_addr #5

declare { ptr, i64 } @_ZN2v88internal20MarkCompactCollector16ProcessRelocInfoENS0_6TaggedINS0_17InstructionStreamEEEPNS0_9RelocInfoENS2_INS0_10HeapObjectEEE(i64, ptr noundef, i64) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZN2v88internal10TypedSlots6InsertENS0_8SlotTypeEj(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MarkingBarrier11ActivateAllEPNS0_4HeapEb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.3", align 8 ; 5 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114ActivateSpacesEPNS0_4HeapENS0_11MarkingModeE(ptr noundef %0, i32 noundef 2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.04.i = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %"_ZN2v88internal16IsolateSafepoint17IterateLocalHeapsIZNS0_14MarkingBarrier11ActivateAllEPNS0_4HeapEbE3$_0EEvT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.04.i, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %.06.i, i64 64
  %.0.val.i = load ptr, ptr %i.d, align 8
  tail call void @_ZN2v88internal14MarkingBarrier8ActivateEbNS0_11MarkingModeE(ptr noundef nonnull align 8 dereferenceable(260) %.0.val.i, i1 noundef zeroext %1, i32 noundef 2)
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %.0.i = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %"_ZN2v88internal16IsolateSafepoint17IterateLocalHeapsIZNS0_14MarkingBarrier11ActivateAllEPNS0_4HeapEbE3$_0EEvT_.exit", label %.lr.ph.i, !llvm.loop !16

"_ZN2v88internal16IsolateSafepoint17IterateLocalHeapsIZNS0_14MarkingBarrier11ActivateAllEPNS0_4HeapEbE3$_0EEvT_.exit": ; preds = %.lr.ph.i, %bb.a
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -55464
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 55448
  %i.j = load i8, ptr %i.i, align 8, !range !8, !noundef !9
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %"_ZN2v88internal15GlobalSafepoint21IterateClientIsolatesIZNS0_14MarkingBarrier11ActivateAllEPNS0_4HeapEbE3$_1EEvT_.exit"

bb.b:                                             ; preds = %"_ZN2v88internal16IsolateSafepoint17IterateLocalHeapsIZNS0_14MarkingBarrier11ActivateAllEPNS0_4HeapEbE3$_0EEvT_.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64088
  %i.m = load i8, ptr %i.l, align 8, !range !8, !noundef !9
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #17
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 64080
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64128
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.030.i = load ptr, ptr %i.s, align 8           ; 2 uses
  %.not31.i = icmp eq ptr %.030.i, null
  br i1 %.not31.i, label %"_ZN2v88internal15GlobalSafepoint21IterateClientIsolatesIZNS0_14MarkingBarrier11ActivateAllEPNS0_4HeapEbE3$_1EEvT_.exit", label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  br label %bb.d

bb.d:                                             ; preds = %"_ZZN2v88internal14MarkingBarrier11ActivateAllEPNS0_4HeapEbENK3$_1clEPNS0_7IsolateE.exit.i", %.lr.ph.i4
  %.032.i = phi ptr [ %.030.i, %.lr.ph.i4 ], [ %.0.i5, %"_ZZN2v88internal14MarkingBarrier11ActivateAllEPNS0_4HeapEbENK3$_1clEPNS0_7IsolateE.exit.i" ] ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8
  call void @_ZN2v88internal7Isolate10SetCurrentEPS1_(ptr noundef nonnull %.032.i) #18
  %i.v = getelementptr inbounds nuw i8, ptr %.032.i, i64 55464
  call void @_ZN2v88internal4Heap16SetIsMarkingFlagEb(ptr noundef nonnull align 8 dereferenceable(2992) %i.v, i1 noundef zeroext true) #18
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_Map_baseIPN2v88internal19MutablePageMetadataESt4pairIKS4_St10unique_ptrINS2_10TypedSlotsESt14default_deleteIS8_EEESaISC_ENS_10_Select1stESt8equal_toIS4_ENS1_4base4hashIS4_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_:bb.a

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.ab = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %1, align 8
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 noundef %i.ag, i64 noundef %i.ai, i64 noundef 1) #18 ; 2 uses
  %i.ak = extractvalue { i8, i64 } %i.aj, 0
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.am = extractvalue { i8, i64 } %i.aj, 1
  tail call void @_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.am)
  %i.an = load i64, ptr %i.e, align 8
  %i.ao = urem i64 %i.d, %i.an
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.ao, %bb.e ], [ %i.g, %.loopexit ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.d, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %0, align 8               ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.0.i19
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.at, ptr %i.ab, align 8
  store ptr %i.ab, ptr %i.as, align 8
  br label %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  store ptr %i.av, ptr %i.ab, align 8
  store ptr %i.ab, ptr %i.au, align 8
  %.not11.i.i = icmp eq ptr %i.av, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %i.e, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = urem i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.az
  store ptr %i.ab, ptr %i.ba, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = phi ptr [ %.pre, %bb.i ], [ %i.aq, %bb.h ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0.i19
  store ptr %i.au, ptr %i.bc, align 8
  br label %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.bd = load i64, ptr %i.ah, align 8
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.ah, align 8
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.ab, %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS9_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS9_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS9_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS9_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.02530, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.02530, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #19
  br label %_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPN2v88internal19MutablePageMetadataESt4pairIKS3_St10unique_ptrINS1_10TypedSlotsESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS3_ENS0_4base4hashIS3_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

declare void @_ZN2v88internal7Isolate10SetCurrentEPS1_(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

declare void @_ZN2v88internal4Heap16SetIsMarkingFlagEb(ptr noundef nonnull align 8 dereferenceable(2992), i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN2v88internal19MutablePageMetadata20AllocateTypedSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448), i32 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal10TypedSlots5MergeEPS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = distinct !{!2, !10}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{null, null, null, null, null, null, null, null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{null, ptr @_ZN2v88internal16MarkingWorklists5LocalD2Ev, null, null, null, null, null}
!18 = distinct !{null, null, null, null, ptr @_ZN2v88internal14MarkingBarrier14ActivateSharedEv, null, null, null, null, null, null, null, null, null}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{null, null, null}
!22 = distinct !{null, null, null}
!23 = distinct !{null, null}
!24 = distinct !{null, null, null}
!25 = distinct !{null, null, null}
!26 = distinct !{null, null, null}
!27 = distinct !{null, null, null}
!28 = distinct !{null, null, null}
!29 = distinct !{null, null, null}
!30 = distinct !{null, null, null}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, i1 false, !"_ZSt11make_uniqueIN2v88internal16MarkingWorklists5LocalEJPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!33 = distinct !{!33, !32, !"_ZSt11make_uniqueIN2v88internal16MarkingWorklists5LocalEJPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!34 = distinct !{null, null, null, null, null, null}
!35 = !{!33}
!36 = distinct !{null, null, null, null, null, null, null, null, null}
!37 = distinct !{!37, !10}
!38 = distinct !{null, ptr @_ZN2v88internal16MarkingWorklists5LocalD2Ev, null, null, null, null, null}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{null, null, null}
!42 = distinct !{null, null, null}
!43 = distinct !{null, null}
!44 = distinct !{null, null, null}
!45 = distinct !{null, null, null}
!46 = distinct !{null, null, null}
!47 = distinct !{null, null, null}
!48 = distinct !{null, null, null}
!49 = distinct !{null, null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{null, null, null, null, null, null, null, null}
!57 = distinct !{null, null}
!58 = distinct !{null, null, null, null, null}
!59 = !{i64 8}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
end_hunk_1
