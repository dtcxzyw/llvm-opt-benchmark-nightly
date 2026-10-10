Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/heap-snapshot-generator?download=true
inline.NumInlined: 7020
inline.NumDeleted: 3466
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal14V8HeapExplorer22SetNativeBindReferenceEPNS0_9HeapEntryEPKcNS0_6TaggedINS0_6ObjectEEE:bb.a
bb.e:                                             ; preds = %bb.a, %_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer16SetWeakReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i32 noundef %2, i64 %3, i64 %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = trunc i64 %3 to i1
  br i1 %i.e, label %bb.b, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %3, -262144
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 4112
  %or.cond.not.i = icmp eq i32 %i.l, 0
  br i1 %or.cond.not.i, label %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread7

_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, -55464
  %i.q = inttoptr i64 %i.p to ptr                 ; 11 uses
  %i.r = add nsw i64 %3, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 272
  br i1 %i.x, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i: ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.y = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 131
  br i1 %i.ac, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 1824
  %i.ae = load i64, ptr %i.ad, align 8
  %.not.i = icmp eq i64 %3, %i.ae
  br i1 %.not.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 864
  %i.ag = load i64, ptr %i.af, align 8
  %.not85.i = icmp eq i64 %3, %i.ag
  br i1 %.not85.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 1928
  %i.ai = load i64, ptr %i.ah, align 8
  %.not86.i = icmp eq i64 %3, %i.ai
  br i1 %.not86.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 872
  %i.ak = load i64, ptr %i.aj, align 8
  %.not87.i = icmp eq i64 %3, %i.ak
  br i1 %.not87.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 728
  %i.am = load i64, ptr %i.al, align 8
  %.not88.i = icmp eq i64 %3, %i.am
  br i1 %.not88.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 792
  %i.ao = load i64, ptr %i.an, align 8
  %.not89.i = icmp eq i64 %3, %i.ao
  br i1 %.not89.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 800
  %i.aq = load i64, ptr %i.ap, align 8
  %.not90.i = icmp eq i64 %3, %i.aq
  br i1 %.not90.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 784
  %i.as = load i64, ptr %i.ar, align 8
  %.not91.i = icmp eq i64 %3, %i.as
  br i1 %.not91.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 984
  %i.au = load i64, ptr %i.at, align 8
  %.not92.i = icmp eq i64 %3, %i.au
  br i1 %.not92.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 992
  %i.aw = load i64, ptr %i.av, align 8
  %.not93.i = icmp eq i64 %3, %i.aw
  br i1 %.not93.i, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 1000
  %i.ay = load i64, ptr %i.ax, align 8
  %.not9 = icmp eq i64 %3, %i.ay
  br i1 %.not9, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread7

_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread7: ; preds = %bb.b, %_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.az = tail call noundef ptr @_ZN2v88internal14V8HeapExplorer8GetEntryENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %3) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef ptr (ptr, ptr, ...) @_ZN2v88internal14StringsStorage12GetFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull @.str.9, i32 noundef %2) #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 6, ptr %i.a, align 4
  store ptr %i.bc, ptr %i.b, align 8
  store ptr %i.az, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store ptr %1, ptr %i.d, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 368 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -24
  %.not.i.i = icmp eq ptr %i.bj, %i.bm
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread7
  %i.bn = load i32, ptr %1, align 8
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = and i32 %i.bo, 2147483640
  %i.bq = or disjoint i32 %i.bp, 6
  store i32 %i.bq, ptr %i.bj, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.az, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bc, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.bi, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.bu, ptr %i.bi, align 8
  br label %_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit

bb.n:                                             ; preds = %_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 320
  call void @_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE16_M_push_back_auxIJRNS2_4TypeERPKcPNS1_9HeapEntryERSC_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit

_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bw = and i64 %4, 6442450944
  %or.cond.not = icmp eq i64 %i.bw, 4294967296
  br i1 %or.cond.not, label %bb.o, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit

bb.o:                                             ; preds = %_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit
  %i.bx = lshr i64 %4, 3
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = lshr i64 %4, 9
  %.zext.i = and i64 %i.ca, 4194303
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.zext.i ; 2 uses
  %i.cc = and i64 %i.bx, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = load i64, ptr %i.cb, align 8
  %i.cf = or i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.cb, align 8
  br label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit

_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit: ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.a, %bb.o, %_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit, %_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal14V8HeapExplorer8GetEntryENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = trunc i64 %1 to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = inttoptr i64 %1 to ptr
  %i.g = tail call noundef ptr @_ZN2v88internal21HeapSnapshotGenerator14FindOrAddEntryEPvPNS0_20HeapEntriesAllocatorE(ptr noundef nonnull align 8 dereferenceable(504) %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %0)
  br label %_ZN2v88internal21HeapSnapshotGenerator14FindOrAddEntryENS0_6TaggedINS0_3SmiEEEPNS0_20HeapEntriesAllocatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZN2v88internal21HeapSnapshotGenerator14FindOrAddEntryENS0_6TaggedINS0_3SmiEEEPNS0_20HeapEntriesAllocatorE.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = lshr i64 %1, 32
  %i.p = trunc nuw i64 %i.o to i32                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 392
  %i.r = load i64, ptr %i.q, align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.not.i.i.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %.sroa.06.0.i.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 4 uses
  %i.t = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %i.t, label %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, %i.p
  br i1 %i.w, label %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.i, label %bb.f, !llvm.loop !164

bb.h:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 368
  %i.y = ashr i64 %1, 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 376
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = urem i64 %i.y, %i.aa                    ; 2 uses
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, %i.p
  br i1 %i.ai, label %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.i, label %.lr.ph.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.aj = icmp eq i32 %i.am, %i.p
  br i1 %i.aj, label %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.j ], [ %i.af, %bb.i ]
  %i.ak = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = urem i64 %i.an, %i.aa
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ao, %i.ab
  br i1 %.not19.i.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !12

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.k
  br label %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.thread.i, !llvm.loop !12

_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.i: ; preds = %bb.j, %bb.g, %bb.i
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.g ], [ %i.af, %bb.i ], [ %i.ak, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.thread.i, label %_ZN2v88internal21HeapSnapshotGenerator14FindOrAddEntryENS0_6TaggedINS0_3SmiEEEPNS0_20HeapEntriesAllocatorE.exit

_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f, %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 %i.p, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1) #29, !inline_history !165
  store ptr %i.av, ptr %i.b, align 8
  %i.aw = call { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJiS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN2v88internal21HeapSnapshotGenerator14FindOrAddEntryENS0_6TaggedINS0_3SmiEEEPNS0_20HeapEntriesAllocatorE.exit

_ZN2v88internal21HeapSnapshotGenerator14FindOrAddEntryENS0_6TaggedINS0_3SmiEEEPNS0_20HeapEntriesAllocatorE.exit: ; preds = %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.thread.i, %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.i, %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.c ], [ %i.ay, %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.thread.i ], [ %i.aq, %_ZN2v88internal21HeapSnapshotGenerator9FindEntryENS0_6TaggedINS0_3SmiEEE.exit.i ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZNK2v88internal7Context22is_declaration_contextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK2v88internal9ScopeInfo19ContextHeaderLengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14V8HeapExplorer19SetContextReferenceEPNS0_9HeapEntryENS0_6TaggedINS0_6StringEEENS4_INS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = tail call noundef ptr @_ZN2v88internal14V8HeapExplorer8GetEntryENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %3) ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr @_ZN2v88internal14StringsStorage7GetNameENS0_6TaggedINS0_4NameEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 %2) #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.a, align 4
  store ptr %i.i, ptr %i.b, align 8
  store ptr %i.e, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store ptr %1, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 368 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -24
  %.not.i.i = icmp eq ptr %i.p, %i.s
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %1, align 8
  %i.u = lshr i32 %i.t, 1
  %i.v = and i32 %i.u, 2147483640
  store i32 %i.v, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.e, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.i, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.z, ptr %i.o, align 8
  br label %_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  call void @_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE16_M_push_back_auxIJRNS2_4TypeERPKcPNS1_9HeapEntryERSC_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit

_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = icmp slt i32 %4, 0
  br i1 %i.ab, label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit
  %i.ac = lshr i32 %4, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = lshr i32 %4, 9
  %.zext.i = zext nneg i32 %i.af to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.zext.i ; 2 uses
  %i.ah = and i32 %i.ac, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = load i64, ptr %i.ag, align 8
  %i.al = or i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.ag, align 8
  br label %_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit

_ZN2v88internal14V8HeapExplorer16MarkVisitedFieldEi.exit: ; preds = %bb.e, %_ZN2v88internal9HeapEntry17SetNamedReferenceENS0_13HeapGraphEdge4TypeEPKcPS1_PNS0_21HeapSnapshotGeneratorENS1_21ReferenceVerificationE.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo31HasContextAllocatedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK2v88internal9ScopeInfo24FunctionContextSlotIndexENS0_6TaggedINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
