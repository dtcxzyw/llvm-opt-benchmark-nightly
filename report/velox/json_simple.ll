Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/json_simple?download=true
inline.NumInlined: 15359
inline.NumDeleted: 6624
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE10ParseArrayILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_15GenericDocumentIS3_NS0_19MemoryPoolAllocatorIS4_EES4_EEEEvRT0_RT1_:bb.a
  %i.an = and i64 %i.am, -281474976710656
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !99
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -12
  store i32 0, ptr %i.aq, align 4, !tbaa !99
  store i32 0, ptr %i.ap, align 8, !tbaa !99
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEbRT_NSA_2ChE.exit19, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit30
  %.037 = phi i32 [ %i.ar, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit30 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEbRT_NSA_2ChE.exit19 ]
  %i.ar = add i32 %.037, 1                        ; 5 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !667, !nonnull !120, !align !276 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !94 ; 5 uses
  %.promoted.i.i21 = load ptr, ptr %i.as, align 8, !tbaa !92 ; 3 uses
  %i.av = icmp eq ptr %.promoted.i.i21, %i.au
  br i1 %i.av, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit24, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i22, !prof !668

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i22: ; preds = %.lr.ph, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i23
  %i.aw = phi ptr [ %i.ay, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i23 ], [ %.promoted.i.i21, %.lr.ph ] ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !99
  switch i8 %i.ax, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit24 [
    i8 32, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i23
    i8 13, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i23
    i8 10, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i23
    i8 9, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i23
  ]

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i23: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i22, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i22, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i22, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 4 uses
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !92
  %i.az = icmp eq ptr %i.ay, %i.au
  br i1 %i.az, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit24, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i22, !prof !669, !llvm.loop !50

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit24: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i23, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i22, %.lr.ph
  %i.ba = phi ptr [ %.promoted.i.i21, %.lr.ph ], [ %i.ay, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i23 ], [ %i.aw, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i22 ] ; 6 uses
  %i.bb = icmp eq ptr %i.ba, %i.au
  br i1 %i.bb, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit31.thread, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit25, !prof !98

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit25: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit24
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !99
  %i.bd = icmp eq i8 %i.bc, 44
  br i1 %i.bd, label %bb.g, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit31, !prof !193

bb.g:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit25
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 3 uses
  store ptr %i.be, ptr %i.as, align 8, !tbaa !92
  %i.bf = icmp eq ptr %i.be, %i.au
  br i1 %i.bf, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit30, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i28, !prof !668

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i28: ; preds = %bb.g, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i29
  %i.bg = phi ptr [ %i.bi, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i29 ], [ %i.be, %bb.g ] ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !99
  switch i8 %i.bh, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit30 [
    i8 32, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i29
    i8 13, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i29
    i8 10, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i29
    i8 9, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i29
  ]

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i29: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i28, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i28, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i28, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 3 uses
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !92
  %i.bj = icmp eq ptr %i.bi, %i.au
  br i1 %i.bj, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit30, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i28, !prof !669, !llvm.loop !50

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit31: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit25
  %i.bk = load i8, ptr %i.ba, align 1, !tbaa !99
  %i.bl = icmp eq i8 %i.bk, 93
  br i1 %i.bl, label %bb.h, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit31.thread, !prof !193

bb.h:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bm, ptr %i.as, align 8, !tbaa !92
  %i.bn = zext i32 %i.ar to i64                   ; 2 uses
  %.neg.i.i = mul nsw i64 %i.bn, -16
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !575
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %.neg.i.i ; 7 uses
  store ptr %i.bp, ptr %i.i, align 8, !tbaa !575
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !89 ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 -2
  store i16 4, ptr %i.bs, align 2, !tbaa !99
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = shl nuw nsw i64 %i.bn, 4                ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !82
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !83 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !118 ; 2 uses
  %i.bz = add i64 %i.by, %i.bt                    ; 2 uses
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !675
  %i.cb = icmp ugt i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.j, label %bb.k, !prof !98

bb.j:                                             ; preds = %bb.i
  %i.cc = load i64, ptr %i.br, align 8, !tbaa !76
  %..i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 %i.bt)
  %i.cd = tail call noundef zeroext i1 @_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %..i.i.i)
  br i1 %i.cd, label %._crit_edge.i.i.i, label %_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.j
  %.pre.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !82
  %.pre11.i.i.i = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !83 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 8
  %.pre12.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !118 ; 2 uses
  %.pre13.i.i.i = add i64 %.pre12.i.i.i, %i.bt
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i, %bb.i
  %.pre-phi.i.i.i = phi i64 [ %.pre13.i.i.i, %._crit_edge.i.i.i ], [ %i.bz, %bb.i ]
  %i.ce = phi i64 [ %.pre12.i.i.i, %._crit_edge.i.i.i ], [ %i.by, %bb.i ]
  %i.cf = phi ptr [ %.pre11.i.i.i, %._crit_edge.i.i.i ], [ %i.bw, %bb.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i64 %.pre-phi.i.i.i, ptr %i.ch, align 8, !tbaa !118
  br label %_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i

_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.ci, %bb.k ], [ null, %bb.j ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.bp, i64 -8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !99
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = and i64 %i.cl, -281474976710656
  %i.cn = ptrtoint ptr %.0.i.i.i to i64
  %i.co = or i64 %i.cm, %i.cn
  %i.cp = inttoptr i64 %i.co to ptr
  store ptr %i.cp, ptr %i.cj, align 8, !tbaa !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr nonnull align 8 %i.bp, i64 %i.bt, i1 false)
  br label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E8EndArrayEj.exit

bb.l:                                             ; preds = %bb.h
  %i.cq = getelementptr inbounds i8, ptr %i.bp, i64 -8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !99
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, -281474976710656
  %i.cu = inttoptr i64 %i.ct to ptr
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E8EndArrayEj.exit

_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E8EndArrayEj.exit: ; preds = %_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i, %bb.l
  %i.cv = getelementptr inbounds i8, ptr %i.bp, i64 -16
  %i.cw = getelementptr inbounds i8, ptr %i.bp, i64 -12
  store i32 %i.ar, ptr %i.cw, align 4, !tbaa !99
  store i32 %i.ar, ptr %i.cv, align 8, !tbaa !99
  br label %.loopexit

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit31.thread: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit24, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !93
  %i.cz = ptrtoint ptr %i.ba to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  store i32 7, ptr %i.ab, align 8, !tbaa !72
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !73
  br label %.loopexit

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit30: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i29, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i28, %bb.g
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE10ParseValueILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_15GenericDocumentIS3_NS0_19MemoryPoolAllocatorIS4_EES4_EEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  %i.dd = load i32, ptr %i.ab, align 8, !tbaa !72
  %.not33 = icmp eq i32 %i.dd, 0
  br i1 %.not33, label %.lr.ph, label %.loopexit, !prof !5938, !llvm.loop !5936

.loopexit:                                        ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit30, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEbRT_NSA_2ChE.exit19, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit31.thread, %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E8EndArrayEj.exit, %bb.f, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseNumberILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_15GenericDocumentIS3_NS0_19MemoryPoolAllocatorIS4_EES4_EEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !667, !nonnull !120, !align !276 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94   ; 19 uses
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit210, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit, !prof !98

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit: ; preds = %bb.a
  %i.k = load i8, ptr %i.b, align 1, !tbaa !99
  %i.l = icmp eq i8 %i.k, 45
  br i1 %i.l, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit210, !prof !193

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !92
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit210

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit210: ; preds = %bb.a, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit
  %i.n = phi ptr [ %i.m, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit ], [ %i.b, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit ], [ %i.b, %bb.a ] ; 14 uses
  %i.o = phi i1 [ true, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit ], [ false, %bb.a ] ; 6 uses
  %i.p = icmp eq ptr %i.n, %i.i
  br i1 %i.p, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit247.thread, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit220, !prof !98

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit220: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit210
  %i.q = load i8, ptr %i.n, align 1, !tbaa !99    ; 5 uses
  %i.r = icmp eq i8 %i.q, 48
  br i1 %i.r, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit221, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit223, !prof !5949

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit221: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit220
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !574
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !575  ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %bb.b, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219, !prof !98

bb.b:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit221
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre702 = load ptr, ptr %i.u, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit221, %bb.b
  %i.aa = phi ptr [ %i.v, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit221 ], [ %.pre702, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !575
  store i8 48, ptr %i.aa, align 1, !tbaa !99
  %i.ac = load ptr, ptr %1, align 8, !tbaa !667, !nonnull !120, !align !276 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !92 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %.critedge178, label %bb.c, !prof !98

bb.c:                                             ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !92
  br label %.critedge178

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit223: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit220
  %i.ai = icmp sgt i8 %i.q, 48
  br i1 %i.ai, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit224, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit247.thread, !prof !193

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit224: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit223
  %i.aj = icmp samesign ult i8 %i.q, 58
  br i1 %i.aj, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit225, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit246, !prof !64

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit225: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit224
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !574
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 18 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !575 ; 2 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp slt i64 %i.aq, 1
  br i1 %i.ar, label %bb.d, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit218, !prof !98

bb.d:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit225
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit218

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit218: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit225, %bb.d
  %i.as = phi ptr [ %i.an, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit225 ], [ %.pre, %bb.d ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.am, align 8, !tbaa !575
  store i8 %i.q, ptr %i.as, align 1, !tbaa !99
  %i.au = load ptr, ptr %1, align 8, !tbaa !667, !nonnull !120, !align !276 ; 7 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !94 ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit226, label %bb.e, !prof !98

bb.e:                                             ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit218
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  store ptr %i.az, ptr %i.au, align 8, !tbaa !92
  %i.ba = load i8, ptr %i.av, align 1, !tbaa !99
  %i.bb = sext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48
  br label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit226

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit226: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit218, %bb.e
  %i.bd = phi ptr [ %i.az, %bb.e ], [ %i.av, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit218 ] ; 5 uses
  %i.be = phi i32 [ %i.bc, %bb.e ], [ -48, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit218 ] ; 4 uses
  %i.bf = icmp eq ptr %i.bd, %i.ax                ; 2 uses
  br i1 %i.o, label %.preheader552.a, label %.preheader554

.preheader554:                                    ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit226
  br i1 %i.bf, label %.critedge178, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232.lr.ph, !prof !668

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232.lr.ph: ; preds = %.preheader554
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232

.preheader552.a:                                  ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit226
  br i1 %i.bf, label %.critedge178, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227.lr.ph, !prof !668

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227.lr.ph: ; preds = %.preheader552.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227.lr.ph, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231
  %i.bm = phi ptr [ %i.au, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227.lr.ph ], [ %i.ct, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ] ; 3 uses
  %i.bn = phi ptr [ %i.bd, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227.lr.ph ], [ %i.dc, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ] ; 4 uses
  %.0116584 = phi i32 [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227.lr.ph ], [ %i.df, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ] ; 4 uses
  %.0132583 = phi i32 [ %i.be, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227.lr.ph ], [ %i.de, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ] ; 5 uses
  %.sroa.114.0582 = phi i32 [ 1, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227.lr.ph ], [ %i.cs, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ] ; 4 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !99  ; 3 uses
  %i.bp = add i8 %i.bo, -48
  %or.cond930 = icmp ult i8 %i.bp, 10
  br i1 %or.cond930, label %bb.f, label %.critedge178, !prof !5950

bb.f:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227
  %i.bq = icmp ugt i32 %.0132583, 214748363
  br i1 %i.bq, label %bb.g, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit230, !prof !98

bb.g:                                             ; preds = %bb.f
  %.not151 = icmp eq i32 %.0132583, 214748364
  br i1 %.not151, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit229, label %.loopexit

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit229: ; preds = %bb.g
  %i.br = icmp eq i8 %i.bo, 57
  br i1 %i.br, label %.loopexit, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit230, !prof !64

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit230: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit229, %bb.f
  %i.bs = mul nuw nsw i32 %.0132583, 10
  %i.bt = load ptr, ptr %i.ak, align 8, !tbaa !574
  %i.bu = load ptr, ptr %i.am, align 8, !tbaa !575 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp slt i64 %i.bx, 1
  br i1 %i.by, label %bb.h, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit217, !prof !98

bb.h:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit230
  %i.bz = load ptr, ptr %i.bj, align 8, !tbaa !121 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cb = load ptr, ptr %0, align 8, !tbaa !579
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #31 ; 2 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !579
  store ptr %i.cc, ptr %i.bk, align 8, !tbaa !122
  %.pre.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !121
  %.pre698.pre = load ptr, ptr %i.am, align 8, !tbaa !575
  %.pre735.a = ptrtoint ptr %.pre698.pre to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre726.pre-phi = phi i64 [ %.pre735.a, %bb.j ], [ %i.bw, %bb.i ]
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.cd = load i64, ptr %i.bl, align 8, !tbaa !69
  %.pre9.i = ptrtoint ptr %.pre.i to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ce = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cf = sub i64 %i.bv, %i.ce                    ; 2 uses
  %i.cg = add i64 %i.cf, 1
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = add i64 %i.ch, %i.cf
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi727 = phi i64 [ %i.bw, %bb.l ], [ %.pre726.pre-phi, %bb.k ]
  %.pre-phi.i = phi i64 [ %i.ce, %bb.l ], [ %.pre9.i, %bb.k ]
  %i.cj = phi ptr [ %i.bz, %bb.l ], [ %.pre.i, %bb.k ] ; 2 uses
  %.0.i = phi i64 [ %i.ci, %bb.l ], [ %i.cd, %bb.k ]
  %i.ck = sub i64 %.pre-phi727, %.pre-phi.i       ; 2 uses
  %i.cl = add i64 %i.ck, 1
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.0.i, i64 %i.cl) ; 3 uses
  %i.cm = icmp eq i64 %spec.select.i, 0
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef %i.cj) #30
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit

bb.o:                                             ; preds = %bb.m
  %i.cn = tail call ptr @realloc(ptr noundef %i.cj, i64 noundef %spec.select.i) #36
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit: ; preds = %bb.n, %bb.o
  %.0.i.i.i = phi ptr [ null, %bb.n ], [ %i.cn, %bb.o ] ; 3 uses
  store ptr %.0.i.i.i, ptr %i.bj, align 8, !tbaa !121
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %spec.select.i
end_hunk_0
begin_hunk_1_@_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseNumberILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_15GenericDocumentIS3_NS0_19MemoryPoolAllocatorIS4_EES4_EEEEvRT0_RT1_:bb.a
  %.pre9.i295 = ptrtoint ptr %.pre.i294 to i64
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.kc = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.kd = sub i64 %i.jt, %i.kc                    ; 2 uses
  %i.ke = add i64 %i.kd, 1
  %i.kf = lshr i64 %i.ke, 1
  %i.kg = add i64 %i.kf, %i.kd
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pre-phi725 = phi i64 [ %i.ju, %bb.az ], [ %.pre724.pre-phi, %bb.ay ]
  %.pre-phi.i289 = phi i64 [ %i.kc, %bb.az ], [ %.pre9.i295, %bb.ay ]
  %i.kh = phi ptr [ %i.jx, %bb.az ], [ %.pre.i294, %bb.ay ] ; 2 uses
  %.0.i290 = phi i64 [ %i.kg, %bb.az ], [ %i.kb, %bb.ay ]
  %i.ki = sub i64 %.pre-phi725, %.pre-phi.i289    ; 2 uses
  %i.kj = add i64 %i.ki, 1
  %spec.select.i291 = tail call i64 @llvm.umax.i64(i64 %.0.i290, i64 %i.kj) ; 3 uses
  %i.kk = icmp eq i64 %spec.select.i291, 0
  br i1 %i.kk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @free(ptr noundef %i.kh) #30
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit297

bb.bc:                                            ; preds = %bb.ba
  %i.kl = tail call ptr @realloc(ptr noundef %i.kh, i64 noundef %spec.select.i291) #36
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit297

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit297: ; preds = %bb.bb, %bb.bc
  %.0.i.i.i292 = phi ptr [ null, %bb.bb ], [ %i.kl, %bb.bc ] ; 3 uses
  store ptr %.0.i.i.i292, ptr %i.hi, align 8, !tbaa !121
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i.i292, i64 %i.ki
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i.i.i292, i64 %spec.select.i291
  store ptr %i.kn, ptr %i.ak, align 8, !tbaa !574
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit214

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit214: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit288, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit297
  %i.ko = phi ptr [ %i.js, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit288 ], [ %i.km, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit297 ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  store ptr %i.kp, ptr %i.am, align 8, !tbaa !575
  store i8 %i.jm, ptr %i.ko, align 1, !tbaa !99
  %i.kq = add i32 %.sroa.114.4594, 1              ; 2 uses
  %i.kr = load ptr, ptr %1, align 8, !tbaa !667, !nonnull !120, !align !276 ; 5 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !92 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !94 ; 2 uses
  %i.kv = icmp eq ptr %i.ks, %i.ku
  br i1 %i.kv, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298, label %bb.bd, !prof !98

bb.bd:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit214
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 2 uses
  store ptr %i.kw, ptr %i.kr, align 8, !tbaa !92
  %i.kx = load i8, ptr %i.ks, align 1, !tbaa !99
  %i.ky = sext i8 %i.kx to i64
  %i.kz = add nsw i64 %i.ky, 4294967248
  %i.la = and i64 %i.kz, 4294967295
  br label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit214, %bb.bd
  %i.lb = phi ptr [ %i.kw, %bb.bd ], [ %i.ks, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit214 ] ; 3 uses
  %i.lc = phi i64 [ %i.la, %bb.bd ], [ 4294967248, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit214 ]
  %i.ld = add i64 %i.lc, %i.jq                    ; 2 uses
  %i.le = add nuw nsw i32 %.4120596, 1            ; 2 uses
  %i.lf = icmp eq ptr %i.lb, %i.ku
  br i1 %i.lf, label %.critedge178, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285, !prof !669, !llvm.loop !5942

.critedge170:                                     ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit287, %bb.au, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273, %bb.aj
  %i.lg = phi ptr [ %i.hp, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ], [ %i.hp, %bb.aj ], [ %i.jl, %bb.au ], [ %i.jl, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit287 ] ; 4 uses
  %i.lh = phi ptr [ %i.ho, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ], [ %i.ho, %bb.aj ], [ %i.jk, %bb.au ], [ %i.jk, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit287 ] ; 3 uses
  %.sroa.114.5 = phi i32 [ %.sroa.114.3606, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ], [ %.sroa.114.3606, %bb.aj ], [ %.sroa.114.4594, %bb.au ], [ %.sroa.114.4594, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit287 ] ; 3 uses
  %.3127 = phi i64 [ 922337203685477580, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ], [ %.1125607, %bb.aj ], [ 1844674407370955161, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit287 ], [ %.2126595, %bb.au ] ; 5 uses
  %.5121 = phi i32 [ %.3119608, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ], [ %.3119608, %bb.aj ], [ %.4120596, %bb.au ], [ %.4120596, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit287 ] ; 4 uses
  %.2139 = uitofp i64 %.3127 to double            ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !94
  %i.lk = icmp eq ptr %i.lg, %i.lj
  br i1 %i.lk, label %.critedge178, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph, !prof !668

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph: ; preds = %.critedge170
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lo = load i8, ptr %i.lg, align 1, !tbaa !99  ; 2 uses
  %i.lp = add i8 %i.lo, -48
  %or.cond875996 = icmp ult i8 %i.lp, 10
  br i1 %or.cond875996, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit301, label %.critedge178, !prof !5952

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311
  %i.lq = load i8, ptr %i.nd, align 1, !tbaa !99  ; 2 uses
  %i.lr = add i8 %i.lq, -48
  %or.cond875 = icmp ult i8 %i.lr, 10
  br i1 %or.cond875, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit301, label %.critedge178, !prof !5953, !llvm.loop !5943

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit301: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299
  %i.ls = phi i8 [ %i.lq, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ %i.lo, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ]
  %.sroa.114.6618998 = phi i32 [ %i.ms, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ %.sroa.114.5, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ]
  %.3140619997 = phi double [ %i.nf, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ %.2139, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ]
  %i.lt = load ptr, ptr %i.ak, align 8, !tbaa !574
  %i.lu = load ptr, ptr %i.am, align 8, !tbaa !575 ; 2 uses
  %i.lv = ptrtoint ptr %i.lt to i64               ; 2 uses
  %i.lw = ptrtoint ptr %i.lu to i64               ; 3 uses
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = icmp slt i64 %i.lx, 1
  br i1 %i.ly, label %bb.be, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit213, !prof !98

bb.be:                                            ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit301
  %i.lz = load ptr, ptr %i.ll, align 8, !tbaa !121 ; 3 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.mb = load ptr, ptr %0, align 8, !tbaa !579
  %.not.i306 = icmp eq ptr %i.mb, null
  br i1 %.not.i306, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.mc = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #31 ; 2 uses
  store ptr %i.mc, ptr %0, align 8, !tbaa !579
  store ptr %i.mc, ptr %i.lm, align 8, !tbaa !122
  %.pre.pre.i309 = load ptr, ptr %i.ll, align 8, !tbaa !121
  %.pre701.pre = load ptr, ptr %i.am, align 8, !tbaa !575
  %.pre732 = ptrtoint ptr %.pre701.pre to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pre720.pre-phi.a = phi i64 [ %.pre732, %bb.bg ], [ %i.lw, %bb.bf ]
  %.pre.i307 = phi ptr [ %.pre.pre.i309, %bb.bg ], [ null, %bb.bf ] ; 2 uses
  %i.md = load i64, ptr %i.ln, align 8, !tbaa !69
  %.pre9.i308 = ptrtoint ptr %.pre.i307 to i64
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  %i.me = ptrtoint ptr %i.lz to i64               ; 2 uses
  %i.mf = sub i64 %i.lv, %i.me                    ; 2 uses
  %i.mg = add i64 %i.mf, 1
  %i.mh = lshr i64 %i.mg, 1
  %i.mi = add i64 %i.mh, %i.mf
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pre-phi721 = phi i64 [ %i.lw, %bb.bi ], [ %.pre720.pre-phi.a, %bb.bh ]
  %.pre-phi.i302 = phi i64 [ %i.me, %bb.bi ], [ %.pre9.i308, %bb.bh ]
  %i.mj = phi ptr [ %i.lz, %bb.bi ], [ %.pre.i307, %bb.bh ] ; 2 uses
  %.0.i303 = phi i64 [ %i.mi, %bb.bi ], [ %i.md, %bb.bh ]
  %i.mk = sub i64 %.pre-phi721, %.pre-phi.i302    ; 2 uses
  %i.ml = add i64 %i.mk, 1
  %spec.select.i304 = tail call i64 @llvm.umax.i64(i64 %.0.i303, i64 %i.ml) ; 3 uses
  %i.mm = icmp eq i64 %spec.select.i304, 0
  br i1 %i.mm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef %i.mj) #30
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit310

bb.bl:                                            ; preds = %bb.bj
  %i.mn = tail call ptr @realloc(ptr noundef %i.mj, i64 noundef %spec.select.i304) #36
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit310

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit310: ; preds = %bb.bk, %bb.bl
  %.0.i.i.i305 = phi ptr [ null, %bb.bk ], [ %i.mn, %bb.bl ] ; 3 uses
  store ptr %.0.i.i.i305, ptr %i.ll, align 8, !tbaa !121
  %i.mo = getelementptr inbounds nuw i8, ptr %.0.i.i.i305, i64 %i.mk
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.i.i.i305, i64 %spec.select.i304
  store ptr %i.mp, ptr %i.ak, align 8, !tbaa !574
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit213

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit213: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit301, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit310
  %i.mq = phi ptr [ %i.lu, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit301 ], [ %i.mo, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit310 ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  store ptr %i.mr, ptr %i.am, align 8, !tbaa !575
  store i8 %i.ls, ptr %i.mq, align 1, !tbaa !99
  %i.ms = add i32 %.sroa.114.6618998, 1           ; 3 uses
  %i.mt = load ptr, ptr %1, align 8, !tbaa !667, !nonnull !120, !align !276 ; 5 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !92 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !94 ; 2 uses
  %i.mx = icmp eq ptr %i.mu, %i.mw
  br i1 %i.mx, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311, label %bb.bm, !prof !98

bb.bm:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit213
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 1 ; 2 uses
  store ptr %i.my, ptr %i.mt, align 8, !tbaa !92
  %i.mz = load i8, ptr %i.mu, align 1, !tbaa !99
  %i.na = sext i8 %i.mz to i32
  %i.nb = add nsw i32 %i.na, -48
  %i.nc = sitofp i32 %i.nb to double
  br label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit213, %bb.bm
  %i.nd = phi ptr [ %i.my, %bb.bm ], [ %i.mu, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit213 ] ; 4 uses
  %i.ne = phi double [ %i.nc, %bb.bm ], [ -4.800000e+01, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit213 ]
  %i.nf = tail call double @llvm.fmuladd.f64(double %.3140619997, double 1.000000e+01, double %i.ne) ; 3 uses
  %i.ng = icmp eq ptr %i.nd, %i.mw
  br i1 %i.ng, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299, !prof !669, !llvm.loop !5943

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311
  br label %.critedge178, !llvm.loop !5943

.critedge178:                                     ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge, %.preheader554, %.preheader552.a, %.preheader549, %.preheader547, %.critedge170, %bb.ae, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199, %bb.c, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260, %bb.ac
  %i.nh = phi ptr [ %i.ft, %bb.ae ], [ %i.fk, %bb.ac ], [ %i.ah, %bb.c ], [ %i.ft, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ %i.go, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ %i.bd, %.preheader552.a ], [ %i.lg, %.critedge170 ], [ %i.ad, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ %i.hd, %.preheader547 ], [ %i.hd, %.preheader549 ], [ %i.nd, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ %i.dc, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ %i.bd, %.preheader554 ], [ %i.lb, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ %i.jf, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ %i.lg, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ %i.nd, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ %i.hp, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ %i.jl, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ %i.bn, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ %i.ex, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ %i.di, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ] ; 4 uses
  %i.ni = phi ptr [ %i.a, %bb.ae ], [ %i.a, %bb.ac ], [ %i.ac, %bb.c ], [ %i.a, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ %i.a, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ %i.au, %.preheader552.a ], [ %i.lh, %.critedge170 ], [ %i.ac, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ %i.he, %.preheader547 ], [ %i.he, %.preheader549 ], [ %i.mt, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ %i.ct, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ %i.au, %.preheader554 ], [ %i.kr, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ %i.iv, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ %i.lh, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ %i.mt, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ %i.ho, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ %i.jk, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ %i.bm, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ %i.eo, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ %i.dh, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ] ; 7 uses
  %i.nj = phi i1 [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.c ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ false, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ false, %.preheader552.a ], [ true, %.critedge170 ], [ false, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ false, %.preheader547 ], [ false, %.preheader549 ], [ true, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ false, %.preheader554 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ true, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ true, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ]
  %.0107531 = phi i8 [ 0, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.c ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ 0, %.preheader552.a ], [ 1, %.critedge170 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ 0, %.preheader547 ], [ 0, %.preheader549 ], [ 1, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ 0, %.preheader554 ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ 1, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ 1, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ 0, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ 0, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ 0, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ 0, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ] ; 3 uses
  %.5121530 = phi i32 [ 0, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.c ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ 0, %.preheader552.a ], [ %.5121, %.critedge170 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ %.2118, %.preheader547 ], [ %.2118, %.preheader549 ], [ %.5121, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ %i.df, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ 0, %.preheader554 ], [ %i.le, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ %i.ji, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ %.5121, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ %.5121, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ %.3119608, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ %.4120596, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ %.0116584, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ %i.fa, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ %.1117573, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ] ; 3 uses
  %.3127529 = phi i64 [ 0, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.c ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ 0, %.preheader552.a ], [ %.3127, %.critedge170 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ %.0124, %.preheader547 ], [ %.0124, %.preheader549 ], [ %.3127, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ 0, %.preheader554 ], [ %i.ld, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ %i.jh, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ %.3127, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ %.3127, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ %.1125607, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ %.2126595, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ 0, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ 0, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ] ; 4 uses
  %.1136515528 = phi i1 [ true, %bb.ae ], [ true, %bb.ac ], [ false, %bb.c ], [ true, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ true, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ false, %.preheader552.a ], [ false, %.critedge170 ], [ false, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ false, %.preheader547 ], [ false, %.preheader549 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ false, %.preheader554 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ]
  %.2134516527 = phi i32 [ 0, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.c ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ %i.be, %.preheader552.a ], [ %.2134, %.critedge170 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ %.2134, %.preheader547 ], [ %.2134, %.preheader549 ], [ %.2134, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ %i.de, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ %i.be, %.preheader554 ], [ %.2134, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ %.2134, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ %.2134, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ %.2134, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ %.2134, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ %.2134, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ %.0132583, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ %i.ez, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ %.1133572, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ] ; 5 uses
  %.0123517526 = phi i1 [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.c ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ false, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ false, %.preheader552.a ], [ true, %.critedge170 ], [ false, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ true, %.preheader547 ], [ true, %.preheader549 ], [ true, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ false, %.preheader554 ], [ true, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ true, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ true, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ true, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ true, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ true, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ false, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ] ; 3 uses
  %.sroa.114.7 = phi i32 [ 0, %bb.ae ], [ 0, %bb.ac ], [ 1, %bb.c ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ 0, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ 1, %.preheader552.a ], [ %.sroa.114.5, %.critedge170 ], [ 1, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ %.sroa.114.2, %.preheader547 ], [ %.sroa.114.2, %.preheader549 ], [ %i.ms, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ %i.cs, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ 1, %.preheader554 ], [ %i.kq, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ %i.iu, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ %.sroa.114.5, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ %i.ms, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ %.sroa.114.3606, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ %.sroa.114.4594, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ %.sroa.114.0582, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ %i.en, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ %.sroa.114.1571, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ] ; 6 uses
  %.4141 = phi double [ %i.fu, %bb.ae ], [ +qnan, %bb.ac ], [ 0.000000e+00, %bb.c ], [ %i.fu, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit260 ], [ %i.fu, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit199 ], [ 0.000000e+00, %.preheader552.a ], [ %.2139, %.critedge170 ], [ 0.000000e+00, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit219 ], [ 0.000000e+00, %.preheader547 ], [ 0.000000e+00, %.preheader549 ], [ %i.nf, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299 ], [ 0.000000e+00, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit227 ], [ 0.000000e+00, %.preheader554 ], [ 0.000000e+00, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit285 ], [ 0.000000e+00, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit271 ], [ %.2139, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit299.lr.ph ], [ %i.nf, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit311..critedge178.loopexit_crit_edge ], [ 0.000000e+00, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit284 ], [ 0.000000e+00, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit298 ], [ 0.000000e+00, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit231 ], [ 0.000000e+00, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit245 ], [ 0.000000e+00, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit232 ] ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !94 ; 4 uses
  %i.nm = icmp eq ptr %i.nh, %i.nl
  br i1 %i.nm, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit196.thread, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit312, !prof !98

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit312: ; preds = %.critedge178
  %i.nn = load i8, ptr %i.nh, align 1, !tbaa !99
  %i.no = icmp eq i8 %i.nn, 46
  br i1 %i.no, label %bb.bn, label %.critedge183, !prof !193

bb.bn:                                            ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit312
  %i.np = getelementptr inbounds nuw i8, ptr %i.nh, i64 1 ; 8 uses
  store ptr %i.np, ptr %i.ni, align 8, !tbaa !92
  %i.nq = icmp eq ptr %i.np, %i.nl
  br i1 %i.nq, label %.critedge180, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit314, !prof !98

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit314: ; preds = %bb.bn
  %i.nr = load i8, ptr %i.np, align 1, !tbaa !99
  %i.ns = add i8 %i.nr, -58
  %or.cond934 = icmp ult i8 %i.ns, -10
  br i1 %or.cond934, label %.critedge180, label %bb.bo, !prof !5954

.critedge180:                                     ; preds = %bb.bn, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit314
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !93
  %i.nv = ptrtoint ptr %i.np to i64
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 14, ptr %i.ny, align 8, !tbaa !72
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.nx, ptr %i.nz, align 8, !tbaa !73
  br label %.critedge194

bb.bo:                                            ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit314
  br i1 %i.nj, label %bb.br, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph: ; preds = %bb.bo
  %i.oa = zext i32 %.2134516527 to i64
  %spec.select = select i1 %.0123517526, i64 %.3127529, i64 %i.oa ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.od = load i8, ptr %i.np, align 1, !tbaa !99  ; 2 uses
  %i.oe = icmp sgt i8 %i.od, 47
  br i1 %i.oe, label %.lr.ph, label %.thread533, !prof !5955

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319
  %i.of = load i8, ptr %i.pg, align 1, !tbaa !99  ; 2 uses
  %i.og = icmp sgt i8 %i.of, 47
  br i1 %i.og, label %.lr.ph, label %.thread533, !prof !674, !llvm.loop !5944

.lr.ph:                                           ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316
  %i.oh = phi i8 [ %i.of, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %i.od, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ] ; 2 uses
  %.sroa.114.86261009 = phi i32 [ %i.ov, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %.sroa.114.7, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ] ; 2 uses
  %.51296271008 = phi i64 [ %i.pi, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %spec.select, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ] ; 3 uses
  %.61226281007 = phi i32 [ %spec.select181, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %.5121530, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ] ; 2 uses
  %.01026291006 = phi i32 [ %i.pj, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ] ; 2 uses
  %i.oi = phi ptr [ %i.pg, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %i.np, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ]
  %i.oj = phi ptr [ %i.ow, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %i.ni, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ]
  %i.ok = icmp samesign ugt i8 %i.oh, 57
  %i.ol = icmp ugt i64 %.51296271008, 9007199254740991
  %or.cond = select i1 %i.ok, i1 true, i1 %i.ol, !prof !5956
  br i1 %or.cond, label %.thread533, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit318, !prof !5957

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit318: ; preds = %.lr.ph
  %i.om = mul nuw nsw i64 %.51296271008, 10
  %i.on = load ptr, ptr %i.ob, align 8, !tbaa !574
  %i.oo = load ptr, ptr %i.oc, align 8, !tbaa !575 ; 2 uses
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = sub i64 %i.op, %i.oq
  %i.os = icmp slt i64 %i.or, 1
  br i1 %i.os, label %bb.bp, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit212, !prof !98

bb.bp:                                            ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit318
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre703 = load ptr, ptr %i.oc, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit212

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit212: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit318, %bb.bp
  %i.ot = phi ptr [ %i.oo, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit318 ], [ %.pre703, %bb.bp ] ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  store ptr %i.ou, ptr %i.oc, align 8, !tbaa !575
  store i8 %i.oh, ptr %i.ot, align 1, !tbaa !99
  %i.ov = add i32 %.sroa.114.86261009, 1          ; 3 uses
  %i.ow = load ptr, ptr %1, align 8, !tbaa !667, !nonnull !120, !align !276 ; 6 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !92 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !94 ; 2 uses
  %i.pa = icmp eq ptr %i.ox, %i.oz
  br i1 %i.pa, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319, label %bb.bq, !prof !98

bb.bq:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit212
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 1 ; 2 uses
  store ptr %i.pb, ptr %i.ow, align 8, !tbaa !92
  %i.pc = load i8, ptr %i.ox, align 1, !tbaa !99
  %i.pd = sext i8 %i.pc to i64
  %i.pe = add nsw i64 %i.pd, 4294967248
  %i.pf = and i64 %i.pe, 4294967295
  br label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit212, %bb.bq
  %i.pg = phi ptr [ %i.pb, %bb.bq ], [ %i.ox, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit212 ] ; 5 uses
  %i.ph = phi i64 [ %i.pf, %bb.bq ], [ 4294967248, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit212 ]
  %i.pi = add nuw nsw i64 %i.ph, %i.om            ; 4 uses
  %i.pj = add nsw i32 %.01026291006, -1           ; 3 uses
  %.not154 = icmp ne i64 %i.pi, 0
  %i.pk = zext i1 %.not154 to i32
  %spec.select181 = add nsw i32 %.61226281007, %i.pk ; 3 uses
  %i.pl = icmp eq ptr %i.pg, %i.oz
  br i1 %i.pl, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319..thread533_crit_edge, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316, !prof !669, !llvm.loop !5944

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319..thread533_crit_edge: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319
  br label %.thread533, !llvm.loop !5944

.thread533:                                       ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316, %.lr.ph, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319..thread533_crit_edge, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph
  %i.pm = phi ptr [ %i.np, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ], [ %i.pg, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319..thread533_crit_edge ], [ %i.pg, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %i.oi, %.lr.ph ]
  %i.pn = phi ptr [ %i.ni, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ], [ %i.ow, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319..thread533_crit_edge ], [ %i.ow, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %i.oj, %.lr.ph ] ; 2 uses
  %.sroa.114.8.lcssa.ph = phi i32 [ %.sroa.114.7, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ], [ %i.ov, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319..thread533_crit_edge ], [ %i.ov, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %.sroa.114.86261009, %.lr.ph ]
  %.5129.lcssa.ph = phi i64 [ %spec.select, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ], [ %i.pi, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319..thread533_crit_edge ], [ %i.pi, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %.51296271008, %.lr.ph ] ; 2 uses
  %.6122.lcssa.ph = phi i32 [ %.5121530, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ], [ %spec.select181, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319..thread533_crit_edge ], [ %spec.select181, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %.61226281007, %.lr.ph ]
  %.0102.lcssa.ph = phi i32 [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316.lr.ph ], [ %i.pj, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit319..thread533_crit_edge ], [ %i.pj, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit316 ], [ %.01026291006, %.lr.ph ]
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %.pre704.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !94
  %i.po = uitofp i64 %.5129.lcssa.ph to double
  br label %bb.br

bb.br:                                            ; preds = %.thread533, %bb.bo
  %i.pp = phi ptr [ %i.nl, %bb.bo ], [ %.pre704.pre, %.thread533 ] ; 2 uses
  %i.pq = phi ptr [ %i.np, %bb.bo ], [ %i.pm, %.thread533 ] ; 4 uses
  %i.pr = phi ptr [ %i.ni, %bb.bo ], [ %i.pn, %.thread533 ] ; 2 uses
  %.sroa.114.9 = phi i32 [ %.sroa.114.7, %bb.bo ], [ %.sroa.114.8.lcssa.ph, %.thread533 ] ; 3 uses
  %.5142 = phi double [ %.4141, %bb.bo ], [ %i.po, %.thread533 ] ; 3 uses
  %.6130 = phi i64 [ %.3127529, %bb.bo ], [ %.5129.lcssa.ph, %.thread533 ] ; 2 uses
  %.8 = phi i32 [ %.5121530, %bb.bo ], [ %.6122.lcssa.ph, %.thread533 ]
  %.1108 = phi i8 [ %.0107531, %bb.bo ], [ 1, %.thread533 ] ; 2 uses
  %.1103 = phi i32 [ 0, %bb.bo ], [ %.0102.lcssa.ph, %.thread533 ] ; 3 uses
  %i.ps = icmp eq ptr %i.pq, %i.pp
  br i1 %i.ps, label %.critedge183, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320.lr.ph, !prof !668

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320.lr.ph: ; preds = %bb.br
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.py = load i8, ptr %i.pq, align 1, !tbaa !99  ; 2 uses
  %i.pz = add i8 %i.py, -48
  %or.cond9351028 = icmp ult i8 %i.pz, 10
  br i1 %or.cond9351028, label %.lr.ph1033, label %.critedge183.loopexit, !prof !5952

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit343
  %i.qa = load i8, ptr %i.st, align 1, !tbaa !99  ; 2 uses
  %i.qb = add i8 %i.qa, -48
  %or.cond935 = icmp ult i8 %i.qb, 10
  br i1 %or.cond935, label %.lr.ph1033, label %.critedge183.loopexit, !prof !5953, !llvm.loop !5945

.lr.ph1033:                                       ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320.lr.ph, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320
  %i.qc = phi i8 [ %i.qa, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320 ], [ %i.py, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320.lr.ph ] ; 2 uses
  %.sroa.114.106431032 = phi i32 [ %.sroa.114.11, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320 ], [ %.sroa.114.9, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320.lr.ph ] ; 2 uses
  %.61436441031 = phi double [ %.7144, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320 ], [ %.5142, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320.lr.ph ] ; 3 uses
  %.96451030 = phi i32 [ %.10, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320 ], [ %.8, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320.lr.ph ] ; 3 uses
  %.21046461029 = phi i32 [ %.3105, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320 ], [ %.1103, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit320.lr.ph ] ; 3 uses
  %i.qd = icmp slt i32 %.96451030, 17
  %i.qe = load ptr, ptr %i.pt, align 8, !tbaa !574
  %i.qf = load ptr, ptr %i.pu, align 8, !tbaa !575 ; 3 uses
  %i.qg = ptrtoint ptr %i.qe to i64               ; 3 uses
  %i.qh = ptrtoint ptr %i.qf to i64               ; 5 uses
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = icmp slt i64 %i.qi, 1                   ; 2 uses
  br i1 %i.qd, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit322, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit333

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit322: ; preds = %.lr.ph1033
  br i1 %i.qj, label %bb.bs, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE8TakePushEv.exit211, !prof !98

bb.bs:                                            ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit322
  %i.qk = load ptr, ptr %i.pv, align 8, !tbaa !121 ; 3 uses
  %i.ql = icmp eq ptr %i.qk, null
  br i1 %i.ql, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.qm = load ptr, ptr %0, align 8, !tbaa !579
  %.not.i327 = icmp eq ptr %i.qm, null
  br i1 %.not.i327, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.qn = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #31 ; 2 uses
  store ptr %i.qn, ptr %0, align 8, !tbaa !579
  store ptr %i.qn, ptr %i.pw, align 8, !tbaa !122
  %.pre.pre.i330 = load ptr, ptr %i.pv, align 8, !tbaa !121
  %.pre706.pre = load ptr, ptr %i.pu, align 8, !tbaa !575
  %.pre730 = ptrtoint ptr %.pre706.pre to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pre717.pre-phi = phi i64 [ %.pre730, %bb.bu ], [ %i.qh, %bb.bt ]
  %.pre.i328 = phi ptr [ %.pre.pre.i330, %bb.bu ], [ null, %bb.bt ] ; 2 uses
  %i.qo = load i64, ptr %i.px, align 8, !tbaa !69
  %.pre9.i329 = ptrtoint ptr %.pre.i328 to i64
  br label %bb.bx
end_hunk_1
begin_hunk_2_@_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseNumberILj272ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_15GenericDocumentIS3_NS0_19MemoryPoolAllocatorIS4_EES4_EEEEvRT0_RT1_:bb.a
  %i.td = icmp eq i8 %i.tc, 101
  br i1 %i.td, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit197, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346, !prof !193

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit344
  %i.te = load i8, ptr %i.sz, align 1, !tbaa !99
  %i.tf = icmp eq i8 %i.te, 69
  br i1 %i.tf, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit197, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit196.thread, !prof !193

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit197: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit344
  %storemerge = getelementptr inbounds nuw i8, ptr %i.sz, i64 1 ; 6 uses
  store ptr %storemerge, ptr %i.ta, align 8, !tbaa !92
  %i.tg = trunc nuw i8 %.2109 to i1
  %i.th = zext i32 %.2134516527 to i64
  %i.ti = select i1 %.0123517526, i64 %.7131, i64 %i.th
  %i.tj = uitofp i64 %i.ti to double
  %.9146 = select i1 %i.tg, double %.8145, double %i.tj
  %i.tk = icmp eq ptr %storemerge, %i.sy
  br i1 %i.tk, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit348, !prof !98

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit348: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit197
  %i.tl = load i8, ptr %storemerge, align 1, !tbaa !99
  %i.tm = icmp ne i8 %i.tl, 43                    ; 2 uses
  br i1 %i.tm, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit350, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit.sink.split, !prof !100

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit350: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit348
  %i.tn = load i8, ptr %storemerge, align 1, !tbaa !99
  %i.to = icmp eq i8 %i.tn, 45
  br i1 %i.to, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit.sink.split, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit, !prof !193

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit.sink.split: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit350, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit348
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sz, i64 2 ; 2 uses
  store ptr %i.tp, ptr %i.ta, align 8, !tbaa !92
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit.sink.split, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit197, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit350
  %i.tq = phi ptr [ %storemerge, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit350 ], [ %storemerge, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit197 ], [ %i.tp, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit.sink.split ] ; 5 uses
  %.097 = phi i1 [ false, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit350 ], [ false, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit197 ], [ %i.tm, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit.sink.split ] ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.sy
  br i1 %i.tr, label %.critedge187, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit352, !prof !98

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit352: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit
  %i.ts = load i8, ptr %i.tq, align 1, !tbaa !99
  %i.tt = add i8 %i.ts, -48
  %or.cond936 = icmp ult i8 %i.tt, 10
  br i1 %or.cond936, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit354, label %.critedge187, !prof !5950

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit354: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit352
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 1 ; 5 uses
  store ptr %i.tu, ptr %i.ta, align 8, !tbaa !92
  %i.tv = load i8, ptr %i.tq, align 1, !tbaa !99
  %i.tw = sext i8 %i.tv to i32
  %i.tx = add nsw i32 %i.tw, -48                  ; 4 uses
  br i1 %.097, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit354
  %i.ty = add nsw i32 %.4106, 2147483639
  %i.tz = sdiv i32 %i.ty, 10
  %i.ua = icmp eq ptr %i.tu, %i.sy
  br i1 %i.ua, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355, !prof !668

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355: ; preds = %bb.ck, %.critedge191
  %.098665 = phi i32 [ %i.ui, %.critedge191 ], [ %i.tx, %bb.ck ] ; 2 uses
  %.promoted656658664 = phi ptr [ %.promoted656659, %.critedge191 ], [ %i.tu, %bb.ck ] ; 3 uses
  %i.ub = load i8, ptr %.promoted656658664, align 1, !tbaa !99
  %i.uc = add i8 %i.ub, -48
  %or.cond870 = icmp ult i8 %i.uc, 10
  br i1 %or.cond870, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit357, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread, !prof !5950

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit357: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355
  %i.ud = mul nsw i32 %.098665, 10
  %i.ue = getelementptr inbounds nuw i8, ptr %.promoted656658664, i64 1 ; 5 uses
  store ptr %i.ue, ptr %i.ta, align 8, !tbaa !92
  %i.uf = load i8, ptr %.promoted656658664, align 1, !tbaa !99
  %i.ug = sext i8 %i.uf to i32
  %i.uh = add i32 %i.ud, -48
  %i.ui = add i32 %i.uh, %i.ug                    ; 3 uses
  %i.uj = icmp sgt i32 %i.ui, %i.tz
  br i1 %i.uj, label %.preheader, label %.critedge191, !prof !98

.preheader:                                       ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit357
  %i.uk = icmp eq ptr %i.ue, %i.sy
  br i1 %i.uk, label %.critedge191, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit358, !prof !668

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit358: ; preds = %.preheader, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit360
  %i.ul = phi ptr [ %i.uo, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit360 ], [ %i.ue, %.preheader ] ; 3 uses
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !99
  %i.un = add i8 %i.um, -48
  %or.cond869 = icmp ult i8 %i.un, 10
  br i1 %or.cond869, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit360, label %.critedge191, !prof !5959

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit360: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit358
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 1 ; 4 uses
  store ptr %i.uo, ptr %i.ta, align 8, !tbaa !92
  %i.up = icmp eq ptr %i.uo, %i.sy
  br i1 %i.up, label %.critedge191, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit358, !prof !669, !llvm.loop !5946

.critedge191:                                     ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit358, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit360, %.preheader, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit357
  %.promoted656659 = phi ptr [ %i.ue, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit357 ], [ %i.ue, %.preheader ], [ %i.ul, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit358 ], [ %i.uo, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit360 ] ; 2 uses
  %i.uq = icmp eq ptr %.promoted656659, %i.sy
  br i1 %i.uq, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355, !prof !669, !llvm.loop !5947

bb.cl:                                            ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit354
  %i.ur = sub nsw i32 308, %.4106
  %i.us = icmp eq ptr %i.tu, %i.sy
  br i1 %i.us, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit361, !prof !668

bb.cm:                                            ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit363
  %i.ut = icmp eq ptr %i.uy, %i.sy
  br i1 %i.ut, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit361, !prof !669, !llvm.loop !5948

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit361: ; preds = %bb.cl, %bb.cm
  %.1991044 = phi i32 [ %i.vc, %bb.cm ], [ %i.tx, %bb.cl ] ; 2 uses
  %i.uu = phi ptr [ %i.uy, %bb.cm ], [ %i.tu, %bb.cl ] ; 3 uses
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !99
  %i.uw = add i8 %i.uv, -48
  %or.cond937 = icmp ult i8 %i.uw, 10
  br i1 %or.cond937, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit363, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread, !prof !674

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit363: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit361
  %i.ux = mul nsw i32 %.1991044, 10
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 1 ; 3 uses
  store ptr %i.uy, ptr %i.ta, align 8, !tbaa !92
  %i.uz = load i8, ptr %i.uu, align 1, !tbaa !99
  %i.va = sext i8 %i.uz to i32
  %i.vb = add i32 %i.ux, -48
  %i.vc = add i32 %i.vb, %i.va                    ; 3 uses
  %i.vd = icmp sgt i32 %i.vc, %i.ur
  br i1 %i.vd, label %bb.cn, label %bb.cm, !prof !98, !llvm.loop !5948

bb.cn:                                            ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit363
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 13, ptr %i.ve, align 8, !tbaa !72
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.vf, align 8, !tbaa !73
  br label %.critedge194

.critedge187:                                     ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit352
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !93
  %i.vi = ptrtoint ptr %i.tq to i64
  %i.vj = ptrtoint ptr %i.vh to i64
  %i.vk = sub i64 %i.vi, %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 15, ptr %i.vl, align 8, !tbaa !72
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.vk, ptr %i.vm, align 8, !tbaa !73
  br label %.critedge194

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit361, %bb.cm, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355, %.critedge191, %bb.cl, %bb.ck
  %.3 = phi i32 [ %i.tx, %bb.cl ], [ %i.tx, %bb.ck ], [ %.098665, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355 ], [ %i.ui, %.critedge191 ], [ %i.vc, %bb.cm ], [ %.1991044, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit361 ] ; 2 uses
  %i.vn = sub nsw i32 0, %.3
  %spec.select192 = select i1 %.097, i32 %i.vn, i32 %.3
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit196.thread

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit196.thread: ; preds = %.critedge178, %.critedge183, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread
  %.4106856 = phi i32 [ %.4106, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread ], [ %.4106, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346 ], [ %.4106, %.critedge183 ], [ 0, %.critedge178 ]
  %.7131851 = phi i64 [ %.7131, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread ], [ %.7131, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346 ], [ %.7131, %.critedge183 ], [ %.3127529, %.critedge178 ] ; 5 uses
  %.sroa.114.12845 = phi i32 [ %.sroa.114.12, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread ], [ %.sroa.114.12, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346 ], [ %.sroa.114.12, %.critedge183 ], [ %.sroa.114.7, %.critedge178 ] ; 2 uses
  %.10147 = phi double [ %.9146, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread ], [ %.8145, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346 ], [ %.8145, %.critedge183 ], [ %.4141, %.critedge178 ] ; 2 uses
  %.4111 = phi i8 [ 1, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread ], [ %.2109, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346 ], [ %.2109, %.critedge183 ], [ %.0107531, %.critedge178 ]
  %.6 = phi i32 [ %spec.select192, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit355.thread ], [ 0, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit346 ], [ 0, %.critedge183 ], [ 0, %.critedge178 ] ; 2 uses
  %.0101858 = zext i32 %.sroa.114.7 to i64
  %i.vo = zext i32 %.sroa.114.12845 to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !574
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !575 ; 2 uses
  %i.vt = ptrtoint ptr %i.vq to i64
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = sub i64 %i.vt, %i.vu
  %i.vw = icmp slt i64 %i.vv, 1
  br i1 %i.vw, label %bb.co, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit, !prof !98

bb.co:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit196.thread
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre.i364 = load ptr, ptr %i.vr, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit196.thread, %bb.co
  %i.vx = phi ptr [ %i.vs, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit196.thread ], [ %.pre.i364, %bb.co ] ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 1
  store ptr %i.vy, ptr %i.vr, align 8, !tbaa !575
  store i8 0, ptr %i.vx, align 1, !tbaa !99
  %i.vz = add i32 %.sroa.114.12845, 1
  %i.wa = zext i32 %i.vz to i64
  %i.wb = load ptr, ptr %i.vr, align 8, !tbaa !575
  %i.wc = sub nsw i64 0, %i.wa
  %i.wd = getelementptr inbounds i8, ptr %i.wb, i64 %i.wc ; 2 uses
  store ptr %i.wd, ptr %i.vr, align 8, !tbaa !575
  %i.we = trunc nuw i8 %.4111 to i1
  br i1 %i.we, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit
  %i.wf = add nsw i32 %.6, %.4106856
  %i.wg = tail call noundef double @_ZN5arrow9rapidjson8internal19StrtodFullPrecisionIcEEddiPKT_mmi(double noundef %.10147, i32 noundef %i.wf, ptr noundef %i.wd, i64 noundef %i.vo, i64 noundef %.0101858, i32 noundef %.6) ; 3 uses
  %i.wh = fcmp ogt double %i.wg, f0x7FEFFFFFFFFFFFFF
  br i1 %i.wh, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.wi = fneg double %i.wg
  %i.wj = select i1 %i.o, double %i.wi, double %i.wg
  %i.wk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !574
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !575 ; 2 uses
  %i.wo = ptrtoint ptr %i.wl to i64
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = sub i64 %i.wo, %i.wp
  %i.wr = icmp slt i64 %i.wq, 16
  br i1 %i.wr, label %bb.cr, label %.thread544, !prof !98

bb.cr:                                            ; preds = %bb.cq
  %i.ws = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ws, i64 noundef 1)
  %.pre.i365 = load ptr, ptr %i.wm, align 8, !tbaa !575
  br label %.thread544

.thread544:                                       ; preds = %bb.cr, %bb.cq
  %i.wt = phi ptr [ %i.wn, %bb.cq ], [ %.pre.i365, %bb.cr ] ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  store ptr %i.wu, ptr %i.wm, align 8, !tbaa !575
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store i64 150307637563490304, ptr %i.wv, align 8
  store double %i.wj, ptr %i.wt, align 8, !tbaa !99
  br label %.critedge194

bb.cs:                                            ; preds = %bb.cp
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 13, ptr %i.ww, align 8, !tbaa !72
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.wx, align 8, !tbaa !73
  br label %.critedge194

bb.ct:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit
  br i1 %.1136515528, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.wy = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !574
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !575 ; 2 uses
  %i.xc = ptrtoint ptr %i.wz to i64
  %i.xd = ptrtoint ptr %i.xb to i64
  %i.xe = sub i64 %i.xc, %i.xd
  %i.xf = icmp slt i64 %i.xe, 16
  br i1 %i.xf, label %bb.cv, label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6DoubleEd.exit367, !prof !98

bb.cv:                                            ; preds = %bb.cu
  %i.xg = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.xg, i64 noundef 1)
  %.pre.i366 = load ptr, ptr %i.xa, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6DoubleEd.exit367

_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6DoubleEd.exit367: ; preds = %bb.cu, %bb.cv
  %i.xh = phi ptr [ %i.xb, %bb.cu ], [ %.pre.i366, %bb.cv ] ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  store ptr %i.xi, ptr %i.xa, align 8, !tbaa !575
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  store i64 150307637563490304, ptr %i.xj, align 8
  store double %.10147, ptr %i.xh, align 8, !tbaa !99
  br label %.critedge194

bb.cw:                                            ; preds = %bb.ct
  br i1 %.0123517526, label %bb.cx, label %bb.de

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.o, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.xk = sub i64 0, %.7131851                    ; 5 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !574
  %i.xn = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !575 ; 2 uses
  %i.xp = ptrtoint ptr %i.xm to i64
  %i.xq = ptrtoint ptr %i.xo to i64
  %i.xr = sub i64 %i.xp, %i.xq
  %i.xs = icmp slt i64 %i.xr, 16
  br i1 %i.xs, label %bb.cz, label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit.i, !prof !98

bb.cz:                                            ; preds = %bb.cy
  %i.xt = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.xt, i64 noundef 1)
  %.pre.i368 = load ptr, ptr %i.xn, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit.i

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit.i: ; preds = %bb.cz, %bb.cy
  %i.xu = phi ptr [ %i.xo, %bb.cy ], [ %.pre.i368, %bb.cz ] ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store ptr %i.xv, ptr %i.xn, align 8, !tbaa !575
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store i64 42221246506598400, ptr %i.xw, align 8
  store i64 %i.xk, ptr %i.xu, align 8, !tbaa !99
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xu, i64 14
  %i.xy = icmp sgt i64 %i.xk, -1
  br i1 %i.xy, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit.i
  %i.xz = icmp samesign ugt i64 %i.xk, 4294967295
  %spec.select.i.i = select i1 %i.xz, i16 406, i16 470
  %i.ya = icmp samesign ugt i64 %i.xk, 2147483647
  %spec.store.select.i.i = select i1 %i.ya, i16 %spec.select.i.i, i16 502
  br label %.sink.split.i.i

bb.db:                                            ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit.i
  %i.yb = icmp samesign ugt i64 %i.xk, -2147483649
  br i1 %i.yb, label %.sink.split.i.i, label %.critedge194

.sink.split.i.i:                                  ; preds = %bb.db, %bb.da
  %spec.store.select.sink.i.i = phi i16 [ %spec.store.select.i.i, %bb.da ], [ 182, %bb.db ]
  store i16 %spec.store.select.sink.i.i, ptr %i.xx, align 2, !tbaa !99
  br label %.critedge194

bb.dc:                                            ; preds = %bb.cx
  %i.yc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !574
  %i.ye = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !575 ; 2 uses
  %i.yg = ptrtoint ptr %i.yd to i64
  %i.yh = ptrtoint ptr %i.yf to i64
  %i.yi = sub i64 %i.yg, %i.yh
  %i.yj = icmp slt i64 %i.yi, 16
  br i1 %i.yj, label %bb.dd, label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6Uint64Em.exit, !prof !98

bb.dd:                                            ; preds = %bb.dc
  %i.yk = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.yk, i64 noundef 1)
  %.pre.i372 = load ptr, ptr %i.ye, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6Uint64Em.exit

_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6Uint64Em.exit: ; preds = %bb.dc, %bb.dd
  %i.yl = phi ptr [ %i.yf, %bb.dc ], [ %.pre.i372, %bb.dd ] ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  store ptr %i.ym, ptr %i.ye, align 8, !tbaa !575
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  store i64 0, ptr %i.yn, align 8
  store i64 %.7131851, ptr %i.yl, align 8, !tbaa !99
  %.not.i.i = icmp sgt i64 %.7131851, -1
  %spec.select.i.i370 = select i1 %.not.i.i, i16 406, i16 278
  %.not4.i.i = icmp ult i64 %.7131851, 4294967296
  %.not5.i.i = icmp samesign ult i64 %.7131851, 2147483648
  %spec.store.select.i.i371 = select i1 %.not5.i.i, i16 502, i16 470
  %storemerge.i.i = select i1 %.not4.i.i, i16 %spec.store.select.i.i371, i16 %spec.select.i.i370
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yl, i64 14
  store i16 %storemerge.i.i, ptr %i.yo, align 2, !tbaa !99
  br label %.critedge194

bb.de:                                            ; preds = %bb.cw
  br i1 %i.o, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.yp = sub i32 0, %.2134516527                 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !574
  %i.ys = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !575 ; 2 uses
  %i.yu = ptrtoint ptr %i.yr to i64
  %i.yv = ptrtoint ptr %i.yt to i64
  %i.yw = sub i64 %i.yu, %i.yv
  %i.yx = icmp slt i64 %i.yw, 16
  br i1 %i.yx, label %bb.dg, label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E3IntEi.exit, !prof !98

bb.dg:                                            ; preds = %bb.df
  %i.yy = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.yy, i64 noundef 1)
  %.pre.i374 = load ptr, ptr %i.ys, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E3IntEi.exit

_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E3IntEi.exit: ; preds = %bb.df, %bb.dg
  %i.yz = phi ptr [ %i.yt, %bb.df ], [ %.pre.i374, %bb.dg ] ; 4 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  store ptr %i.za, ptr %i.ys, align 8, !tbaa !575
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  store i64 0, ptr %i.zb, align 8
  %i.zc = sext i32 %i.yp to i64
  store i64 %i.zc, ptr %i.yz, align 8, !tbaa !99
  %i.zd = icmp sgt i32 %i.yp, -1
  %i.ze = select i1 %i.zd, i16 502, i16 182
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yz, i64 14
  store i16 %i.ze, ptr %i.zf, align 2, !tbaa !99
  br label %.critedge194

bb.dh:                                            ; preds = %bb.de
  %i.zg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !574
  %i.zi = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !575 ; 2 uses
  %i.zk = ptrtoint ptr %i.zh to i64
  %i.zl = ptrtoint ptr %i.zj to i64
  %i.zm = sub i64 %i.zk, %i.zl
  %i.zn = icmp slt i64 %i.zm, 16
  br i1 %i.zn, label %bb.di, label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E4UintEj.exit, !prof !98

bb.di:                                            ; preds = %bb.dh
  %i.zo = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.zo, i64 noundef 1)
  %.pre.i377 = load ptr, ptr %i.zi, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E4UintEj.exit

_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E4UintEj.exit: ; preds = %bb.dh, %bb.di
  %i.zp = phi ptr [ %i.zj, %bb.dh ], [ %.pre.i377, %bb.di ] ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  store ptr %i.zq, ptr %i.zi, align 8, !tbaa !575
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  store i64 0, ptr %i.zr, align 8
  %i.zs = zext i32 %.2134516527 to i64
  store i64 %i.zs, ptr %i.zp, align 8, !tbaa !99
  %.not.i.i376 = icmp sgt i32 %.2134516527, -1
  %i.zt = select i1 %.not.i.i376, i16 502, i16 470
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zp, i64 14
  store i16 %i.zt, ptr %i.zu, align 2, !tbaa !99
  br label %.critedge194

.critedge194:                                     ; preds = %.critedge187, %bb.cn, %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6Uint64Em.exit, %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E4UintEj.exit, %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E3IntEi.exit, %_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6DoubleEd.exit367, %.thread544, %bb.db, %.sink.split.i.i, %bb.cs, %.critedge180, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit247.thread, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EEEEEbRT_NSC_2ChE.exit208.thread, %.critedge168
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !579
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #31 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !579
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !122
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !121
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre = phi ptr [ %.pre.pre, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69
  %.pre9 = ptrtoint ptr %.pre to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !574
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, 1
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %i.l, %bb.e ], [ %.pre9, %bb.d ]
  %i.q = phi ptr [ %i.b, %bb.e ], [ %.pre, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !575
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %.pre-phi                  ; 2 uses
  %i.v = shl i64 %1, 4
  %i.w = add i64 %i.u, %i.v
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.w) ; 3 uses
  %i.x = icmp eq i64 %spec.select, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.q) #30
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ResizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @realloc(ptr noundef %i.q, i64 noundef %spec.select) #36
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ResizeEm.exit

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ResizeEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.g ], [ %i.y, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !121
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.u
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !575
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %spec.select
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !574
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6StringEPKcjb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !575  ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 16                    ; 2 uses
  br i1 %3, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef 1)
  %.pre7 = load ptr, ptr %i.c, align 8, !tbaa !575
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.d, %bb.b ], [ %.pre7, %bb.c ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.c, align 8, !tbaa !575
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.n = icmp ult i32 %2, 14
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 14 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit
  store i16 7173, ptr %i.o, align 2, !tbaa !99
  %i.p = trunc nuw nsw i32 %2 to i8
  %i.q = sub nuw nsw i8 13, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  store i8 %i.q, ptr %i.r, align 1, !tbaa !99
  br label %_ZN5arrow9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEC2EPKcjRS6_.exit

bb.e:                                             ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit
  store i16 3077, ptr %i.o, align 2, !tbaa !99
  store i32 %2, ptr %i.j, align 8, !tbaa !99
  %i.s = add i32 %2, 1                            ; 2 uses
  %.not.i.i3.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i3.i, label %_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 7
  %i.v = and i64 %i.u, 8589934584                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !118 ; 2 uses
  %i.ab = add i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !675
  %i.ad = icmp ugt i64 %i.ab, %i.ac
end_hunk_2
begin_hunk_3_@llvm.smin.i32
!5749 = distinct !{!5749, !5748, !"_ZN5arrow18TypedBufferBuilderIbvE16FinishWithLengthElb: argument 0"}
!5750 = distinct !{!5750, i1 true, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb"}
!5751 = distinct !{!5751, !5750, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb: argument 0"}
!5752 = distinct !{!5752, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!5753 = distinct !{!5753, !5752, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!5754 = distinct !{!5754, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!5755 = distinct !{!5755, !5754, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!5756 = distinct !{!5756, i1 true, !"_ZN5arrow18TypedBufferBuilderINS_19DayTimeIntervalType15DayMillisecondsEvE16FinishWithLengthElb"}
!5757 = distinct !{!5757, !5756, !"_ZN5arrow18TypedBufferBuilderINS_19DayTimeIntervalType15DayMillisecondsEvE16FinishWithLengthElb: argument 0"}
!5758 = distinct !{!5758, i1 true, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb"}
!5759 = distinct !{!5759, !5758, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb: argument 0"}
!5760 = distinct !{!5760, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!5761 = distinct !{!5761, !5760, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!5762 = distinct !{!5762, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!5763 = distinct !{!5763, !5762, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!5764 = distinct !{!5764, i1 true, !"_ZN5arrow6Status2OKEv"}
!5765 = distinct !{!5765, !5764, !"_ZN5arrow6Status2OKEv: argument 0"}
!5766 = !{!5749}
!5767 = !{!5751, !5749}
!5768 = !{!5753}
!5769 = !{!5755}
!5770 = !{!5755, !5753}
!5771 = !{!5759, !5757}
!5772 = !{!5761}
!5773 = !{!5763}
!5774 = !{!5763, !5761}
!5775 = !{!5765}
!5776 = distinct !{!5776, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!5777 = distinct !{!5777, !5776, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!5778 = distinct !{!5778, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5779 = distinct !{!5779, !5778, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5780 = distinct !{!5780, i1 true, !"_ZN5arrow6Status2OKEv"}
!5781 = distinct !{!5781, !5780, !"_ZN5arrow6Status2OKEv: argument 0"}
!5782 = !{!5777}
!5783 = !{!5779}
!5784 = !{!5781}
!5785 = distinct !{!5785, i1 true, !"_ZN5arrow4util13StringBuilderIJRA60_KcjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!5786 = distinct !{!5786, !5785, !"_ZN5arrow4util13StringBuilderIJRA60_KcjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!5787 = !{!5786}
!5788 = distinct !{null, ptr @_ZN5arrow3ipc8internal4json12_GLOBAL__N_129MonthDayNanoIntervalConverterD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow27MonthDayNanoIntervalBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!5789 = distinct !{null, ptr @_ZN5arrow3ipc8internal4json12_GLOBAL__N_129MonthDayNanoIntervalConverterD2Ev, ptr @_ZN5arrow3ipc8internal4json12_GLOBAL__N_19ConverterD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!5790 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow27MonthDayNanoIntervalBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!5791 = distinct !{ptr @_ZN5arrow3ipc8internal4json12_GLOBAL__N_129MonthDayNanoIntervalConverterD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow27MonthDayNanoIntervalBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!5792 = distinct !{ptr @_ZN5arrow3ipc8internal4json12_GLOBAL__N_129MonthDayNanoIntervalConverterD2Ev, ptr @_ZN5arrow3ipc8internal4json12_GLOBAL__N_19ConverterD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!5793 = distinct !{!5793, i1 true, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_19Converter10AppendNullEv"}
!5794 = distinct !{!5794, !5793, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_19Converter10AppendNullEv: argument 0"}
!5795 = distinct !{!5795, i1 true, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_113JSONTypeErrorEPKcNS_9rapidjson4TypeE"}
!5796 = distinct !{!5796, !5795, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_113JSONTypeErrorEPKcNS_9rapidjson4TypeE: argument 0"}
!5797 = distinct !{!5797, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5798 = distinct !{!5798, !5797, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5799 = distinct !{!5799, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5800 = distinct !{!5800, !5799, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5801 = distinct !{!5801, i1 true, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_113ConvertNumberINS_9Int64TypeEEENSt9enable_ifIXsr31is_physical_signed_integer_typeIT_EE5valueENS_6StatusEE4typeERKNS_9rapidjson12GenericValueINSB_4UTF8IcEENSB_19MemoryPoolAllocatorINSB_12CrtAllocatorEEEEERKNS_8DataTypeEPNS7_6c_typeE"}
!5802 = distinct !{!5802, !5801, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_113ConvertNumberINS_9Int64TypeEEENSt9enable_ifIXsr31is_physical_signed_integer_typeIT_EE5valueENS_6StatusEE4typeERKNS_9rapidjson12GenericValueINSB_4UTF8IcEENSB_19MemoryPoolAllocatorINSB_12CrtAllocatorEEEEERKNS_8DataTypeEPNS7_6c_typeE: argument 0"}
!5803 = distinct !{!5803, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5804 = distinct !{!5804, !5803, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!5805 = distinct !{!5805, i1 true, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_113JSONTypeErrorEPKcNS_9rapidjson4TypeE"}
!5806 = distinct !{!5806, !5805, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_113JSONTypeErrorEPKcNS_9rapidjson4TypeE: argument 0"}
!5807 = distinct !{!5807, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5808 = distinct !{!5808, !5807, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5809 = !{!5794}
!5810 = !{!5796}
!5811 = !{!5798}
!5812 = !{!5800}
!5813 = !{!5802}
!5814 = !{!5804}
!5815 = !{!5806, !5802}
!5816 = !{!5808}
!5817 = !{!"_ZTSSt12__shared_ptrIN5arrow27MonthDayNanoIntervalBuilderELN9__gnu_cxx12_Lock_policyE2EE", !244, i64 0, !105, i64 8}
!5818 = !{!5817, !244, i64 0}
!5819 = distinct !{!5819, i1 true, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_117ConcreteConverterINS3_29MonthDayNanoIntervalConverterEE15SizeOfJSONArrayERKNS_9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEE"}
!5820 = distinct !{!5820, !5819, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_117ConcreteConverterINS3_29MonthDayNanoIntervalConverterEE15SizeOfJSONArrayERKNS_9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEE: argument 0"}
!5821 = distinct !{!5821, i1 true, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_113JSONTypeErrorEPKcNS_9rapidjson4TypeE"}
!5822 = distinct !{!5822, !5821, !"_ZN5arrow3ipc8internal4json12_GLOBAL__N_113JSONTypeErrorEPKcNS_9rapidjson4TypeE: argument 0"}
!5823 = distinct !{!5823, !190}
!5824 = distinct !{!5824, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5825 = distinct !{!5825, !5824, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5826 = distinct !{!5826, i1 true, !"_ZN5arrow6Status2OKEv"}
!5827 = distinct !{!5827, !5826, !"_ZN5arrow6Status2OKEv: argument 0"}
!5828 = !{!5820}
!5829 = !{!5822, !5820}
!5830 = !{!5825}
!5831 = !{!5827}
!5832 = distinct !{null}
!5833 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!5834 = distinct !{!5834, i1 true, !"_ZN5arrow12ArrayBuilder13CheckCapacityEl"}
!5835 = distinct !{!5835, !5834, !"_ZN5arrow12ArrayBuilder13CheckCapacityEl: argument 0"}
!5836 = distinct !{!5836, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5837 = distinct !{!5837, !5836, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5838 = distinct !{!5838, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5839 = distinct !{!5839, !5838, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5840 = !{!5835}
!5841 = !{!5837}
!5842 = !{!5839}
!5843 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!5844 = distinct !{!5844, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!5845 = distinct !{!5845, !5844, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!5846 = distinct !{!5846, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5847 = distinct !{!5847, !5846, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5848 = distinct !{!5848, i1 true, !"_ZN5arrow6Status2OKEv"}
!5849 = distinct !{!5849, !5848, !"_ZN5arrow6Status2OKEv: argument 0"}
!5850 = !{!5845}
!5851 = !{!5847}
!5852 = !{!5849}
!5853 = distinct !{!5853, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!5854 = distinct !{!5854, !5853, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!5855 = distinct !{!5855, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5856 = distinct !{!5856, !5855, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5857 = distinct !{!5857, i1 true, !"_ZN5arrow6Status2OKEv"}
!5858 = distinct !{!5858, !5857, !"_ZN5arrow6Status2OKEv: argument 0"}
!5859 = !{!5854}
!5860 = !{!5856}
!5861 = !{!5858}
!5862 = distinct !{!5862, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!5863 = distinct !{!5863, !5862, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!5864 = distinct !{!5864, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5865 = distinct !{!5865, !5864, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5866 = distinct !{!5866, i1 true, !"_ZN5arrow6Status2OKEv"}
!5867 = distinct !{!5867, !5866, !"_ZN5arrow6Status2OKEv: argument 0"}
!5868 = !{!5863}
!5869 = !{!5865}
!5870 = !{!5867}
!5871 = distinct !{!5871, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!5872 = distinct !{!5872, !5871, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!5873 = distinct !{!5873, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5874 = distinct !{!5874, !5873, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5875 = distinct !{!5875, i1 true, !"_ZN5arrow6Status2OKEv"}
!5876 = distinct !{!5876, !5875, !"_ZN5arrow6Status2OKEv: argument 0"}
!5877 = !{!5872}
!5878 = !{!5874}
!5879 = !{!5876}
!5880 = distinct !{!5880, i1 true, !"_ZN5arrow18TypedBufferBuilderIbvE16FinishWithLengthElb"}
!5881 = distinct !{!5881, !5880, !"_ZN5arrow18TypedBufferBuilderIbvE16FinishWithLengthElb: argument 0"}
!5882 = distinct !{!5882, i1 true, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb"}
!5883 = distinct !{!5883, !5882, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb: argument 0"}
!5884 = distinct !{!5884, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!5885 = distinct !{!5885, !5884, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!5886 = distinct !{!5886, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!5887 = distinct !{!5887, !5886, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!5888 = distinct !{!5888, i1 true, !"_ZN5arrow18TypedBufferBuilderINS_24MonthDayNanoIntervalType13MonthDayNanosEvE16FinishWithLengthElb"}
!5889 = distinct !{!5889, !5888, !"_ZN5arrow18TypedBufferBuilderINS_24MonthDayNanoIntervalType13MonthDayNanosEvE16FinishWithLengthElb: argument 0"}
!5890 = distinct !{!5890, i1 true, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb"}
!5891 = distinct !{!5891, !5890, !"_ZN5arrow13BufferBuilder16FinishWithLengthElb: argument 0"}
!5892 = distinct !{!5892, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!5893 = distinct !{!5893, !5892, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!5894 = distinct !{!5894, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!5895 = distinct !{!5895, !5894, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!5896 = distinct !{!5896, i1 true, !"_ZN5arrow6Status2OKEv"}
!5897 = distinct !{!5897, !5896, !"_ZN5arrow6Status2OKEv: argument 0"}
!5898 = !{!5881}
!5899 = !{!5883, !5881}
!5900 = !{!5885}
!5901 = !{!5887}
!5902 = !{!5887, !5885}
!5903 = !{!5891, !5889}
!5904 = !{!5893}
!5905 = !{!5895}
!5906 = !{!5895, !5893}
!5907 = !{!5897}
!5908 = distinct !{!5908, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!5909 = distinct !{!5909, !5908, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!5910 = distinct !{!5910, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5911 = distinct !{!5911, !5910, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5912 = distinct !{!5912, i1 true, !"_ZN5arrow6Status2OKEv"}
!5913 = distinct !{!5913, !5912, !"_ZN5arrow6Status2OKEv: argument 0"}
!5914 = !{!5909}
!5915 = !{!5911}
!5916 = !{!5913}
!5917 = distinct !{!5917, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!5918 = distinct !{!5918, !5917, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!5919 = distinct !{!5919, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!5920 = distinct !{!5920, !5919, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!5921 = distinct !{!5921, i1 true, !"_ZN5arrow6Status2OKEv"}
!5922 = distinct !{!5922, !5921, !"_ZN5arrow6Status2OKEv: argument 0"}
!5923 = !{!5918}
!5924 = !{!5920}
!5925 = !{!5922}
!5926 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!5927 = !{!"_ZTSN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE21IterativeParsingStateE", !56, i64 0}
!5928 = !{!"_ZTSN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEEE", !68, i64 0, !71, i64 48, !5927, i64 64}
!5929 = !{!5928, !5927, i64 64}
!5930 = !{!"branch_weights", !"expected", i32 2146409907, i32 1073741}
!5931 = !{!670, !670, i64 0}
!5932 = !{!"branch_weights", i32 2145336702, i32 1073741, i32 1073205}
!5933 = !{!"branch_weights", i32 4001, i32 1}
!5934 = distinct !{!5934, !190}
!5935 = !{!"branch_weights", i32 0, i32 -2147483648, i32 0}
!5936 = distinct !{!5936, !190}
!5937 = !{!"branch_weights", i32 127, i32 1}
!5938 = !{!"branch_weights", i32 255873, i32 127}
!5939 = distinct !{!5939, !190}
!5940 = distinct !{!5940, !190}
!5941 = distinct !{!5941, !190}
!5942 = distinct !{!5942, !190}
!5943 = distinct !{!5943, !190}
!5944 = distinct !{!5944, !190}
!5945 = distinct !{!5945, !190}
!5946 = distinct !{!5946, !190}
!5947 = distinct !{!5947, !190}
!5948 = distinct !{!5948, !190}
!5949 = !{!"branch_weights", !"expected", i32 1073741, i32 2146409907}
!5950 = !{!"branch_weights", i32 -100663296, i32 2097152}
!5951 = !{!"branch_weights", i32 1073741824, i32 -2147483648, i32 1073741824}
!5952 = !{!"branch_weights", i32 2097151, i32 1}
!5953 = !{!"branch_weights", i32 -102760447, i32 2097151}
!5954 = !{!"branch_weights", i32 2097152, i32 -100663296}
!5955 = !{!"branch_weights", i32 1, i32 0}
!5956 = !{!"branch_weights", i32 2002, i32 2000}
!5957 = !{!"branch_weights", i32 1073741825, i32 1073741823}
!5958 = !{!"branch_weights", i32 528883, i32 2146954765}
!5959 = !{!"branch_weights", i32 1, i32 4001}
!5960 = distinct !{!5960, !190}
!5961 = distinct !{!5961, !190}
!5962 = distinct !{!5962, !190}
!5963 = distinct !{!5963, !190}
!5964 = !{!"branch_weights", i32 1, i32 1048575}
!5965 = distinct !{!5965, !657}
!5966 = distinct !{!5966, !657}
!5967 = distinct !{!5967, !657}
!5968 = distinct !{!5968, !190}
!5969 = distinct !{!5969, !190}
!5970 = distinct !{!5970, !190}
!5971 = distinct !{!5971, !657}
!5972 = distinct !{!5972, !657}
!5973 = distinct !{!5973, !190}
!5974 = distinct !{!5974, !190}
!5975 = distinct !{!5975, !190}
!5976 = distinct !{!5976, !190}
!5977 = distinct !{!5977, !190}
!5978 = distinct !{!5978, i1 true, !"_ZN5arrow4util13StringBuilderIJRA28_KcmRA3_S2_PS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!5979 = distinct !{!5979, !5978, !"_ZN5arrow4util13StringBuilderIJRA28_KcmRA3_S2_PS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!5980 = !{!5979}
!5981 = distinct !{!5981, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_"}
!5982 = distinct !{!5982, !5981, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!5983 = distinct !{!5983, !5981, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!5984 = distinct !{!5984, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_"}
!5985 = distinct !{!5985, !5984, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!5986 = distinct !{!5986, !5984, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!5987 = !{!5982}
!5988 = !{!5983}
!5989 = !{!5985}
!5990 = !{!5986}
!5991 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !536, i64 0, !536, i64 8, !536, i64 16}
!5992 = !{!5991, !536, i64 0}
!5993 = !{!5991, !536, i64 16}
!5994 = distinct !{!5994, i1 true, !"_ZN5arrow4util13StringBuilderIJRA49_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!5995 = distinct !{!5995, !5994, !"_ZN5arrow4util13StringBuilderIJRA49_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!5996 = !{!5995}
!5997 = distinct !{!5997, i1 true, !"_ZN5arrow4util13StringBuilderIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!5998 = distinct !{!5998, !5997, !"_ZN5arrow4util13StringBuilderIJRA50_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!5999 = !{!5998}
end_hunk_3
