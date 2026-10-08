Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/translated-state?download=true
inline.NumInlined: 2070
inline.NumDeleted: 743
begin_hunk_0_@_ZN2v88internal15TranslatedState24GetFrameFromJSFrameIndexEi:bb.a
bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.k = icmp sgt i32 %.0914, 0
  br i1 %i.k, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %.0914, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.1 = phi i32 [ %i.l, %bb.c ], [ %.0914, %.lr.ph ]
  %i.m = add nuw i64 %.0815, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !350

._crit_edge:                                      ; preds = %bb.b, %bb.d, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.i, %bb.b ]
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal15TranslatedState32GetArgumentsInfoFromJSFrameIndexEiPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(156) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not42 = icmp eq ptr %i.c, %i.d
  br i1 %.not42, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 136
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %.02241 = phi i64 [ %i.bh, %bb.q ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.02340 = phi i32 [ %.124, %bb.q ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [136 x i8], ptr %i.d, i64 %.02241 ; 7 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  switch i32 %i.j, label %bb.q [
    i32 9, label %bb.b
    i32 8, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.k = icmp sgt i32 %.02340, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %.02340, -1
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i64 %.02241, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %.02241, -1                      ; 2 uses
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %i.d, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i32, ptr %i.q, align 8
  br label %.thread.sink.split

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.s = icmp eq i32 %i.j, 8
  br i1 %i.s, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = load i32, ptr %i.t, align 8
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !noalias !354 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !noalias !354
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !354
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 40
  %i.ag = add nsw i64 %i.af, %i.v                 ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp samesign ult i64 %i.ag, 12
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds [40 x i8], ptr %i.x, i64 %i.v
  br label %_ZN2v88internal15TranslatedFrame7ValueAtEi.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = udiv i64 %i.ag, 12
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.al = xor i64 %i.ag, -1
  %i.am = udiv i64 %i.al, 12
  %i.an = xor i64 %i.am, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = phi i64 [ %i.ak, %bb.k ], [ %i.an, %bb.l ] ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !354
  %.idx.i.i.i.i.i = mul i64 %i.ao, -480
  %i.ar = getelementptr i8, ptr %i.aq, i64 %.idx.i.i.i.i.i
  %i.as = getelementptr [40 x i8], ptr %i.ar, i64 %i.ag
  br label %_ZN2v88internal15TranslatedFrame7ValueAtEi.exit

_ZN2v88internal15TranslatedFrame7ValueAtEi.exit:  ; preds = %bb.j, %bb.m
  %storemerge.i.i.i.i.i = phi ptr [ %i.as, %bb.m ], [ %i.aj, %bb.j ]
  %i.at = tail call i64 @_ZNK2v88internal15TranslatedValue11GetRawValueEv(ptr noundef nonnull readonly align 8 dereferenceable(40) %storemerge.i.i.i.i.i) ; 2 uses
  %i.au = and i64 %i.at, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNK2v88internal15TranslatedValue11GetSmiValueEv.exit, label %bb.n, !prof !13

bb.n:                                             ; preds = %_ZN2v88internal15TranslatedFrame7ValueAtEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.119) #19
  unreachable

_ZNK2v88internal15TranslatedValue11GetSmiValueEv.exit: ; preds = %_ZN2v88internal15TranslatedFrame7ValueAtEi.exit
  %i.aw = lshr i64 %i.at, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  br label %.thread.sink.split

bb.o:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %_ZNK2v88internal15TranslatedFrame14bytecode_arrayEv.exit, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.180) #19
  unreachable

_ZNK2v88internal15TranslatedFrame14bytecode_arrayEv.exit: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.0.0.copyload.i25 = load ptr, ptr %i.bb, align 8
  %i.bc = load i64, ptr %.sroa.0.0.copyload.i25, align 8
  %i.bd = add i64 %i.bc, 51
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32
  br label %.thread.sink.split

bb.q:                                             ; preds = %.lr.ph, %bb.c
  %.124 = phi i32 [ %i.l, %bb.c ], [ %.02340, %.lr.ph ]
  %i.bh = add nuw i64 %.02241, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.h
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !353

.thread.sink.split:                               ; preds = %bb.f, %_ZNK2v88internal15TranslatedValue11GetSmiValueEv.exit, %_ZNK2v88internal15TranslatedFrame14bytecode_arrayEv.exit
  %.sink = phi i32 [ %i.bg, %_ZNK2v88internal15TranslatedFrame14bytecode_arrayEv.exit ], [ %i.ax, %_ZNK2v88internal15TranslatedValue11GetSmiValueEv.exit ], [ %i.r, %bb.f ]
  %.02241.lcssa.sink = phi i64 [ %.02241, %_ZNK2v88internal15TranslatedFrame14bytecode_arrayEv.exit ], [ %.02241, %_ZNK2v88internal15TranslatedValue11GetSmiValueEv.exit ], [ %i.m, %bb.f ]
  store i32 %.sink, ptr %2, align 4
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw [136 x i8], ptr %i.bi, i64 %.02241.lcssa.sink
  br label %.thread

.thread:                                          ; preds = %bb.q, %.thread.sink.split, %bb.a
  %i.bk = phi ptr [ %i.bj, %.thread.sink.split ], [ null, %bb.a ], [ null, %bb.q ]
  ret ptr %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15TranslatedState31StoreMaterializedValuesAndDeoptEPNS0_15JavaScriptFrameE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(156) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58784
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call ptr @_ZN2v88internal23MaterializedObjectStore3GetEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.f) #18 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 904 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 3
  %i.t = icmp ne ptr %i.m, null
  %.neg.i.i = sext i1 %i.t to i64
  %i.u = add nsw i64 %i.s, %.neg.i.i
  %i.v = shl i64 %i.u, 6
  %i.w = load ptr, ptr %i.j, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add i64 %i.v, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.k, align 8
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add i64 %i.ad, %i.ak                    ; 3 uses
  %i.am = trunc i64 %i.al to i32                  ; 4 uses
  %i.an = icmp eq ptr %i.g, null                  ; 2 uses
  br i1 %i.an, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.ao = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i32 noundef %i.am, i8 noundef zeroext 1, i8 0) #18 ; 3 uses
  %i.ap = icmp sgt i32 %i.am, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = and i64 %i.al, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, -1                       ; 3 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i64, ptr %i.i, align 8             ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.at, ptr %i.av monotonic, align 8
  %i.aw = trunc i64 %i.at to i1
  br i1 %i.aw, label %bb.c, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ax = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.az = and i64 %i.ar, -262144
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %i.ba, align 262144       ; 2 uses
  %i.bc = and i64 %i.bb, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, 0
  %i.bd = and i64 %i.bb, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not38.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.be = and i64 %i.at, -262144
  %i.bf = inttoptr i64 %i.be to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.bf, align 262144
  %i.bg = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not39.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ax, i64 noundef %i.ay, i64 %i.at) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ax, i64 %i.ay, i64 %i.at) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.lr.ph, %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !355

.loopexit:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.b, %bb.a
  %.sroa.099.0 = phi ptr [ %i.g, %bb.a ], [ %i.ao, %bb.b ], [ %i.ao, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 4 uses
  %i.bh = load i64, ptr %.sroa.099.0, align 8
  %i.bi = add i64 %i.bh, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = icmp eq i32 %i.am, %i.bn
  br i1 %i.bo, label %.preheader, label %bb.h, !prof !13

.preheader:                                       ; preds = %.loopexit
  %i.bp = icmp sgt i32 %i.am, 0
  br i1 %i.bp, label %.lr.ph141, label %._crit_edge.thread

.lr.ph141:                                        ; preds = %.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count145 = and i64 %i.al, 2147483647
  br label %bb.i

bb.h:                                             ; preds = %.loopexit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.139) #19
  unreachable

._crit_edge:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit66
  %or.cond = select i1 %i.an, i1 %.2, i1 false
  br i1 %or.cond, label %bb.ai, label %._crit_edge.thread

bb.i:                                             ; preds = %.lr.ph141, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit66
  %indvars.iv143 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next144, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit66 ] ; 6 uses
  %.049140 = phi i1 [ false, %.lr.ph141 ], [ %.2, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit66 ] ; 5 uses
  %i.bs = load ptr, ptr %i.k, align 8, !noalias !363 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !noalias !363
  %i.bu = load ptr, ptr %i.n, align 8, !noalias !363
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = add nsw i64 %i.by, %indvars.iv143       ; 5 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  br i1 %i.ca, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp samesign ult i64 %i.bz, 64
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv143
  br label %_ZNSt5dequeIN2v88internal15TranslatedState14ObjectPositionESaIS3_EEixEm.exit

bb.l:                                             ; preds = %bb.j
  %i.cd = lshr i64 %i.bz, 6
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ce = ashr i64 %i.bz, 6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cf = phi i64 [ %i.cd, %bb.l ], [ %i.ce, %bb.m ] ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !363
  %i.ci = shl nsw i64 %i.cf, 6
  %i.cj = sub nsw i64 %i.bz, %i.ci
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cj
  br label %_ZNSt5dequeIN2v88internal15TranslatedState14ObjectPositionESaIS3_EEixEm.exit

_ZNSt5dequeIN2v88internal15TranslatedState14ObjectPositionESaIS3_EEixEm.exit: ; preds = %bb.k, %bb.n
  %storemerge.i.i.i.i = phi ptr [ %i.ck, %bb.n ], [ %i.cc, %bb.k ] ; 2 uses
  %.sroa.022.0.copyload = load i32, ptr %storemerge.i.i.i.i, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %i.cl = sext i32 %.sroa.022.0.copyload to i64
  %i.cm = load ptr, ptr %i.br, align 8
  %i.cn = getelementptr inbounds nuw [136 x i8], ptr %i.cm, i64 %i.cl ; 3 uses
  %i.co = sext i32 %.sroa.4.0.copyload to i64     ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !364 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !364
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !364
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 40
  %i.cz = add nsw i64 %i.cy, %i.co                ; 5 uses
  %i.da = icmp sgt i64 %i.cz, -1
  br i1 %i.da, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZNSt5dequeIN2v88internal15TranslatedState14ObjectPositionESaIS3_EEixEm.exit
  %i.db = icmp samesign ult i64 %i.cz, 12
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds [40 x i8], ptr %i.cq, i64 %i.co
  br label %_ZNSt5dequeIN2v88internal15TranslatedValueESaIS2_EEixEm.exit

bb.q:                                             ; preds = %bb.o
  %i.dd = udiv i64 %i.cz, 12
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt5dequeIN2v88internal15TranslatedState14ObjectPositionESaIS3_EEixEm.exit
  %i.de = xor i64 %i.cz, -1
  %i.df = udiv i64 %i.de, 12
  %i.dg = xor i64 %i.df, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dh = phi i64 [ %i.dd, %bb.q ], [ %i.dg, %bb.r ] ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !364
  %.idx.i.i.i.i = mul i64 %i.dh, -480
  %i.dk = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i
  %i.dl = getelementptr [40 x i8], ptr %i.dk, i64 %i.cz
  br label %_ZNSt5dequeIN2v88internal15TranslatedValueESaIS2_EEixEm.exit

_ZNSt5dequeIN2v88internal15TranslatedValueESaIS2_EEixEm.exit: ; preds = %bb.p, %bb.s
  %storemerge.i.i.i.i61 = phi ptr [ %i.dl, %bb.s ], [ %i.dc, %bb.p ] ; 3 uses
  %i.dm = load i8, ptr %storemerge.i.i.i.i61, align 8
  %.off.i = add i8 %i.dm, -13
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.u, label %bb.t, !prof !13

bb.t:                                             ; preds = %_ZNSt5dequeIN2v88internal15TranslatedValueESaIS2_EEixEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.140) #19
  unreachable

bb.u:                                             ; preds = %_ZNSt5dequeIN2v88internal15TranslatedValueESaIS2_EEixEm.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i61, i64 24
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = zext i32 %i.do to i64
  %.not = icmp eq i64 %indvars.iv143, %i.dp
  br i1 %.not, label %bb.v, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit66

bb.v:                                             ; preds = %bb.u
  %i.dq = load i64, ptr %.sroa.099.0, align 8
  %i.dr = add i64 %i.dq, -1
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv143
  %i.dv = load atomic volatile i64, ptr %i.du monotonic, align 8
  %i.dw = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 560 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 568
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = icmp eq ptr %i.dy, %i.ea
  br i1 %i.eb, label %bb.w, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit60, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.ec = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.dw) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit60

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit60: ; preds = %bb.v, %bb.w
  %.0.i59 = phi ptr [ %i.ec, %bb.w ], [ %i.dy, %bb.v ] ; 3 uses
  %i.ed = ptrtoint ptr %.0.i59 to i64
  %i.ee = add i64 %i.ed, 8
  %i.ef = inttoptr i64 %i.ee to ptr
  store ptr %i.ef, ptr %i.dx, align 8
  store i64 %i.dv, ptr %.0.i59, align 8
  %i.eg = tail call i64 @_ZNK2v88internal15TranslatedValue11GetRawValueEv(ptr noundef nonnull align 8 dereferenceable(40) %storemerge.i.i.i.i61) ; 8 uses
  %i.eh = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 560 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 568
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = icmp eq ptr %i.ej, %i.el
  br i1 %i.em, label %bb.x, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !12

bb.x:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit60
  %i.en = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.eh) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit60, %bb.x
  %.0.i58 = phi ptr [ %i.en, %bb.x ], [ %i.ej, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit60 ] ; 3 uses
  %i.eo = ptrtoint ptr %.0.i58 to i64
  %i.ep = add i64 %i.eo, 8
  %i.eq = inttoptr i64 %i.ep to ptr
  store ptr %i.eq, ptr %i.ei, align 8
  store i64 %i.eg, ptr %.0.i58, align 8
  %i.er = icmp eq ptr %.0.i58, %i.i
  br i1 %i.er, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit66, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.es = load i64, ptr %i.i, align 8             ; 2 uses
  %i.et = icmp eq i64 %i.eg, %i.es
  br i1 %i.et, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit66, label %bb.y

bb.y:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %i.eu = load i64, ptr %.0.i59, align 8          ; 4 uses
  %i.ev = icmp eq i64 %i.eu, %i.es
  br i1 %i.ev, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.ew = and i64 %i.eg, 1
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, label %bb.aa

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.z
  %i.ey = load ptr, ptr %i.a, align 8
  %i.ez = lshr i64 %i.eg, 32
  %i.fa = trunc nuw i64 %i.ez to i32
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ey) #18 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = add i64 %i.fd, -1
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store double %i.fb, ptr %i.fg, align 1
  %.pre = load i64, ptr %i.fc, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, %bb.z
  %i.fh = phi i64 [ %.pre, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ], [ %i.eg, %bb.z ] ; 5 uses
  %i.fi = load i64, ptr %.sroa.099.0, align 8
  %i.fj = add i64 %i.fi, -1                       ; 3 uses
  %i.fk = inttoptr i64 %i.fj to ptr
end_hunk_0
