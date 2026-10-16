Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/heap-visitor?download=true
inline.NumInlined: 389
inline.NumDeleted: 200
begin_hunk_0_@_ZN2v88internal13VisitWeakListINS0_7ContextEEENS0_6TaggedINS0_6ObjectEEEPNS0_4HeapES5_PNS0_18WeakObjectRetainerE:bb.a
  %i.am = load ptr, ptr %i.al, align 8            ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load atomic ptr, ptr %i.an seq_cst, align 8
  %.not.i.us = icmp eq ptr %i.ao, null
  br i1 %.not.i.us, label %.split.us, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.us, !prof !9

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.us: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load atomic ptr, ptr %i.ar seq_cst, align 8
  %.not.i36.us = icmp eq ptr %i.as, null
  br i1 %.not.i36.us, label %.split91.us, label %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.us, !prof !9

_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.us: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.au = load i32, ptr %i.at, align 8            ; 3 uses
  %i.av = and i32 %i.au, 16
  %.not79.us = icmp eq i32 %i.av, 0
  br i1 %.not79.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.us
  %i.aw = sub i64 %i.v, %i.y
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.am, i64 noundef %i.aw)
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us

bb.l:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.au, 4096
  %i.ba = and i32 %i.az, %i.ay
  %or.cond.not.us = icmp eq i32 %i.ba, 0
  br i1 %or.cond.not.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = sub i64 %i.v, %i.y
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.am, i64 noundef %i.bb)
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us

bb.n:                                             ; preds = %bb.l
  %i.bc = and i32 %i.au, 8192
  %.not80.us = icmp eq i32 %i.bc, 0
  br i1 %.not80.us, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = add i64 %i.bf, -55464
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 55448
  %i.bj = load i8, ptr %i.bi, align 8, !range !6, !noundef !7
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.p, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = sub i64 %i.v, %i.y
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.am, i64 noundef %i.bl)
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us

_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.i, %_ZN2v88internal15WeakListVisitorINS0_7ContextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us, %bb.b
  %.sroa.062.1.us = phi i64 [ %.sroa.062.088.us, %_ZN2v88internal15WeakListVisitorINS0_7ContextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us ], [ %i.q, %bb.b ], [ %.sroa.062.088.us, %bb.p ], [ %.sroa.062.088.us, %bb.o ], [ %.sroa.062.088.us, %bb.m ], [ %.sroa.062.088.us, %bb.k ], [ %.sroa.062.088.us, %bb.i ]
  tail call void @_ZN2v88internal15WeakListVisitorINS0_7ContextEE15VisitLiveObjectEPNS0_4HeapENS0_6TaggedIS2_EEPNS0_18WeakObjectRetainerE(ptr noundef %0, i64 %i.q, ptr noundef nonnull %2)
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us, %.lr.ph.split.us
  %.sroa.050.1.us = phi i64 [ %i.q, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us ], [ %.sroa.050.087.us, %.lr.ph.split.us ] ; 2 uses
  %.sroa.062.2.us = phi i64 [ %.sroa.062.1.us, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us ], [ %.sroa.062.088.us, %.lr.ph.split.us ] ; 2 uses
  %.not.us = icmp eq i64 %i.t, %i.e
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !11

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.y
  %.sroa.062.088 = phi i64 [ %.sroa.062.2, %bb.y ], [ %i.e, %.lr.ph.split.preheader ] ; 5 uses
  %.sroa.050.087 = phi i64 [ %.sroa.050.1, %bb.y ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %.sroa.059.086 = phi i64 [ %i.bs, %bb.y ], [ %1, %.lr.ph.split.preheader ] ; 2 uses
  %i.bm = load ptr, ptr %2, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.059.086) #6 ; 9 uses
  %i.bq = add i64 %.sroa.059.086, 2415
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i64, ptr %i.br monotonic, align 8 ; 2 uses
  %.not76 = icmp eq i64 %i.bp, 0
  br i1 %.not76, label %bb.y, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split
  %i.bt = icmp eq i64 %.sroa.062.088, %i.e
  br i1 %i.bt, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = add i64 %.sroa.050.087, 2415            ; 3 uses
  %i.bv = inttoptr i64 %i.bu to ptr
  store atomic volatile i64 %i.bp, ptr %i.bv monotonic, align 8
  %i.bw = trunc i64 %i.bp to i1
  br i1 %i.bw, label %bb.t, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit

bb.t:                                             ; preds = %bb.s
  %i.bx = and i64 %.sroa.050.087, -262144
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i64, ptr %i.by, align 262144       ; 2 uses
  %i.ca = and i64 %i.bz, 32
  %.not.i.i.i = icmp eq i64 %i.ca, 0
  %i.cb = and i64 %i.bz, 25
  %.not38.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not38.i.i.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cc = and i64 %i.bp, -262144
  %i.cd = inttoptr i64 %i.cc to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.cd, align 262144
  %i.ce = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not39.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.050.087, i64 noundef %i.bu, i64 %i.bp) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %.not.i.i.i, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.050.087, i64 %i.bu, i64 %i.bp) #6
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit

.split.us:                                        ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  unreachable

.split91.us:                                      ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.us
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  unreachable

_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit: ; preds = %bb.x, %bb.w, %bb.s, %bb.r
  %.sroa.062.1 = phi i64 [ %i.bp, %bb.r ], [ %.sroa.062.088, %bb.s ], [ %.sroa.062.088, %bb.w ], [ %.sroa.062.088, %bb.x ]
  tail call void @_ZN2v88internal15WeakListVisitorINS0_7ContextEE15VisitLiveObjectEPNS0_4HeapENS0_6TaggedIS2_EEPNS0_18WeakObjectRetainerE(ptr noundef %0, i64 %i.bp, ptr noundef nonnull %2)
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph.split, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit
  %.sroa.050.1 = phi i64 [ %i.bp, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit ], [ %.sroa.050.087, %.lr.ph.split ] ; 2 uses
  %.sroa.062.2 = phi i64 [ %.sroa.062.1, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit ], [ %.sroa.062.088, %.lr.ph.split ] ; 2 uses
  %.not = icmp eq i64 %i.bs, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.y, %bb.q
  %.sroa.050.0.lcssa = phi i64 [ %.sroa.050.1.us, %bb.q ], [ %.sroa.050.1, %bb.y ] ; 5 uses
  %.sroa.062.0.lcssa = phi i64 [ %.sroa.062.2.us, %bb.q ], [ %.sroa.062.2, %bb.y ] ; 4 uses
  %i.cf = icmp eq i64 %.sroa.050.0.lcssa, 0
  br i1 %i.cf, label %_ZN2v88internal15WeakListVisitorINS0_7ContextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit41, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.cg = add i64 %.sroa.050.0.lcssa, 2415        ; 3 uses
  %i.ch = inttoptr i64 %i.cg to ptr
  store atomic volatile i64 %i.e, ptr %i.ch monotonic, align 8
  %i.ci = trunc i64 %i.e to i1
  br i1 %i.ci, label %bb.aa, label %_ZN2v88internal15WeakListVisitorINS0_7ContextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit41

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i64 %.sroa.050.0.lcssa, -262144
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 262144       ; 2 uses
  %i.cm = and i64 %i.cl, 32
  %.not.i.i.i37 = icmp eq i64 %i.cm, 0
  %i.cn = and i64 %i.cl, 25
  %.not38.i.i.i38 = icmp eq i64 %i.cn, 0
  br i1 %.not38.i.i.i38, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.co = and i64 %i.e, -262144
  %i.cp = inttoptr i64 %i.co to ptr
  %.sroa.0.0.copyload.i28.i.i.i39 = load i64, ptr %i.cp, align 262144
  %i.cq = and i64 %.sroa.0.0.copyload.i28.i.i.i39, 25
  %.not39.i.i.i40 = icmp eq i64 %i.cq, 0
  br i1 %.not39.i.i.i40, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.050.0.lcssa, i64 noundef %i.cg, i64 %i.e) #6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  br i1 %.not.i.i.i37, label %_ZN2v88internal15WeakListVisitorINS0_7ContextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit41, label %bb.ae, !prof !8

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.050.0.lcssa, i64 %i.cg, i64 %i.e) #6
  br label %_ZN2v88internal15WeakListVisitorINS0_7ContextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit41

_ZN2v88internal15WeakListVisitorINS0_7ContextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit41: ; preds = %_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit.thread, %_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit, %bb.ae, %bb.ad, %bb.z, %._crit_edge
  %.sroa.062.0.lcssa107 = phi i64 [ %.sroa.062.0.lcssa, %._crit_edge ], [ %.sroa.062.0.lcssa, %bb.ae ], [ %.sroa.062.0.lcssa, %bb.ad ], [ %.sroa.062.0.lcssa, %bb.z ], [ %1, %_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit ], [ %1, %_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit.thread ]
  ret i64 %.sroa.062.0.lcssa107
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15WeakListVisitorINS0_7ContextEE15VisitLiveObjectEPNS0_4HeapENS0_6TaggedIS2_EEPNS0_18WeakObjectRetainerE(ptr noundef %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = add i64 %1, 2415                         ; 4 uses
  %i.e = and i64 %1, -262144                      ; 4 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 262144
  %i.g = and i64 %.sroa.0.0.copyload.i.i, 536
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.h = inttoptr i64 %i.d to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, -262144
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load i64, ptr %i.k, align 262144
  %i.m = and i64 %i.l, 512
  %.not22 = icmp eq i64 %i.m, 0
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %3, align 8                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o seq_cst, align 8
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load atomic ptr, ptr %i.s seq_cst, align 8
  %.not.i7 = icmp eq ptr %i.t, null
  br i1 %.not.i7, label %bb.e, label %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit, !prof !9

bb.e:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.v = load i32, ptr %i.u, align 8              ; 3 uses
  %i.w = and i32 %i.v, 16
  %.not23 = icmp eq i32 %i.w, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit
  %4 = sub i64 %i.d, %i.e
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.n, i64 noundef %4)
  br label %.loopexit

bb.g:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.v, 4096
  %i.aa = and i32 %i.z, %i.y
  %or.cond.not = icmp eq i32 %i.aa, 0
  br i1 %or.cond.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %5 = sub i64 %i.d, %i.e
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.n, i64 noundef %5)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ab = and i32 %i.v, 8192
  %.not24 = icmp eq i32 %i.ab, 0
  br i1 %.not24, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add i64 %i.ae, -55464
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 55448
  %i.ai = load i8, ptr %i.ah, align 8, !range !6, !noundef !7
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  %6 = sub i64 %i.d, %i.e
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.n, i64 noundef %6)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.f, %bb.h, %bb.j, %bb.k, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal13VisitWeakListINS0_26AllocationSiteWithWeakNextEEENS0_6TaggedINS0_6ObjectEEEPNS0_4HeapES5_PNS0_18WeakObjectRetainerE(ptr noundef %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -55464
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  %i.e = load i64, ptr %i.d, align 8              ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = icmp eq i32 %i.g, 2
  %.not87 = icmp eq i64 %1, %i.e                  ; 2 uses
  br i1 %i.h, label %_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit, label %_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit.thread

_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit: ; preds = %bb.a
  br i1 %.not87, label %_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit41, label %.lr.ph

_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit.thread: ; preds = %bb.a
  br i1 %.not87, label %_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit41, label %.lr.ph.split.preheader

.lr.ph:                                           ; preds = %_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  %i.l = load i8, ptr %i.k, align 2, !range !6, !noundef !7
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %_ZN2v88internalL15MustRecordSlotsEPNS0_4HeapE.exit.thread, %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us
  %.sroa.064.090.us = phi i64 [ %.sroa.064.2.us, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us ], [ %i.e, %.lr.ph ] ; 8 uses
  %.sroa.061.089.us = phi i64 [ %i.u, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us ], [ %1, %.lr.ph ] ; 2 uses
  %.sroa.052.088.us = phi i64 [ %.sroa.052.1.us, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i64 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.061.089.us) #6 ; 15 uses
  %i.r = add i64 %.sroa.061.089.us, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.not78.us = icmp eq i64 %i.q, 0
  br i1 %.not78.us, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.v = icmp eq i64 %.sroa.064.090.us, %i.e
  br i1 %i.v, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add i64 %.sroa.052.088.us, -1            ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  store atomic volatile i64 %i.q, ptr %i.y monotonic, align 8
  %i.z = trunc i64 %i.q to i1
  br i1 %i.z, label %bb.d, label %_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us

bb.d:                                             ; preds = %bb.c
  %i.aa = or disjoint i64 %i.w, 1                 ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ac = and i64 %i.w, -262144
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 262144       ; 2 uses
  %i.af = and i64 %i.ae, 32
  %.not.i.i.i.i.i.i.us = icmp eq i64 %i.af, 0
  %i.ag = and i64 %i.ae, 25
  %.not38.i.i.i.i.i.i.us = icmp eq i64 %i.ag, 0
  br i1 %.not38.i.i.i.i.i.i.us, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ah = and i64 %i.q, -262144
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i.us = load i64, ptr %i.ai, align 262144
  %i.aj = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i.us, 25
  %.not39.i.i.i.i.i.i.us = icmp eq i64 %i.aj, 0
  br i1 %.not39.i.i.i.i.i.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.aa, i64 noundef %i.ab, i64 %i.q) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i.i.i.i.us, label %_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.aa, i64 %i.ab, i64 %i.q) #6
  br label %_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us

_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us: ; preds = %bb.h, %bb.g, %bb.c
  %i.ak = add i64 %.sroa.052.088.us, 39           ; 3 uses
  %i.al = and i64 %.sroa.052.088.us, -262144      ; 4 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.us = load i64, ptr %i.am, align 262144
  %i.an = and i64 %.sroa.0.0.copyload.i.i.us, 536
  %.not79.us = icmp eq i64 %i.an, 0
  br i1 %.not79.us, label %bb.i, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us

bb.i:                                             ; preds = %_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us
  %i.ao = and i64 %i.q, -262144
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 262144
  %i.ar = and i64 %i.aq, 512
  %.not80.us = icmp eq i64 %i.ar, 0
  br i1 %.not80.us, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load atomic ptr, ptr %i.au seq_cst, align 8
  %.not.i.us = icmp eq ptr %i.av, null
  br i1 %.not.i.us, label %.split.us, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.us, !prof !9

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.us: ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load atomic ptr, ptr %i.ay seq_cst, align 8
  %.not.i36.us = icmp eq ptr %i.az, null
  br i1 %.not.i36.us, label %.split93.us, label %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.us, !prof !9

_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.us: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.bb = load i32, ptr %i.ba, align 8            ; 3 uses
  %i.bc = and i32 %i.bb, 16
  %.not81.us = icmp eq i32 %i.bc, 0
  br i1 %.not81.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.us
  %i.bd = sub i64 %i.ak, %i.al
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.at, i64 noundef %i.bd)
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us

bb.l:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.us
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = and i32 %i.bb, 4096
  %i.bh = and i32 %i.bg, %i.bf
  %or.cond.not.us = icmp eq i32 %i.bh, 0
  br i1 %or.cond.not.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = sub i64 %i.ak, %i.al
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.at, i64 noundef %i.bi)
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us

bb.n:                                             ; preds = %bb.l
  %i.bj = and i32 %i.bb, 8192
  %.not82.us = icmp eq i32 %i.bj, 0
  br i1 %.not82.us, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = add i64 %i.bm, -55464
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 55448
  %i.bq = load i8, ptr %i.bp, align 8, !range !6, !noundef !7
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.p, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = sub i64 %i.ak, %i.al
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.at, i64 noundef %i.bs)
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us

_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit.us: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.i, %_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us, %bb.b, %.lr.ph.split.us
  %.sroa.052.1.us = phi i64 [ %.sroa.052.088.us, %.lr.ph.split.us ], [ %i.q, %_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us ], [ %i.q, %bb.i ], [ %i.q, %bb.k ], [ %i.q, %bb.m ], [ %i.q, %bb.o ], [ %i.q, %bb.p ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.064.2.us = phi i64 [ %.sroa.064.090.us, %.lr.ph.split.us ], [ %.sroa.064.090.us, %_ZN2v88internal15WeakListVisitorINS0_26AllocationSiteWithWeakNextEE11SetWeakNextENS0_6TaggedIS2_EENS4_INS0_10HeapObjectEEE.exit.us ], [ %.sroa.064.090.us, %bb.i ], [ %.sroa.064.090.us, %bb.k ], [ %.sroa.064.090.us, %bb.m ], [ %.sroa.064.090.us, %bb.o ], [ %.sroa.064.090.us, %bb.p ], [ %i.q, %bb.b ] ; 2 uses
  %.not.us = icmp eq i64 %i.u, %i.e
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !12

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit
  %.sroa.064.090 = phi i64 [ %.sroa.064.2, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit ], [ %i.e, %.lr.ph.split.preheader ] ; 5 uses
  %.sroa.061.089 = phi i64 [ %i.ca, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit ], [ %1, %.lr.ph.split.preheader ] ; 2 uses
  %.sroa.052.088 = phi i64 [ %.sroa.052.1, %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %i.bt = load ptr, ptr %2, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call i64 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.061.089) #6 ; 11 uses
  %i.bx = add i64 %.sroa.061.089, -1
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i64, ptr %i.bz, align 8            ; 2 uses
  %.not78 = icmp eq i64 %i.bw, 0
  br i1 %.not78, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split
  %i.cb = icmp eq i64 %.sroa.064.090, %i.e
  br i1 %i.cb, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = add i64 %.sroa.052.088, -1              ; 3 uses
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 2 uses
end_hunk_0
