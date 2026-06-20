inline.NumInlined: 13178
inline.NumDeleted: 2935
begin_hunk_0_@_ZN2v88internal10HeapObject16RehashBasedOnMapINS0_7IsolateEEEvPT_:bb.a
  tail call void @_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  call void @_ZN2v88internal19SwissNameDictionary6RehashINS0_7IsolateEEEvPT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9HashTableINS0_20SimpleNameDictionaryENS0_25SimpleNameDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.k:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  call void @_ZN2v88internal15DescriptorArray4SortEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal15TransitionArray4SortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.b) #28
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.m:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 %.sroa.0.0.copyload.i.i, ptr %4, align 8
  call void @_ZN2v88internal5JSMap6RehashEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  call void @_ZN2v88internal5JSSet6RehashEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.p:                                             ; preds = %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load atomic i32, ptr %i.g acquire, align 8 ; 3 uses
  %i.i = and i32 %i.h, 1
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN2v88internal4Name10EnsureHashEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.k = and i32 %i.h, 3
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.r, label %bb.s, !prof !5

bb.r:                                             ; preds = %bb.q
  %i.m = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i32 noundef %i.h) ; 0 uses
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.s:                                             ; preds = %bb.q
  %i.n = tail call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %i.b) #28 ; 0 uses
  br label %_ZN2v88internal4Name10EnsureHashEv.exit

bb.t:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr
  %i.p = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = zext i16 %i.u to i64
  %i.w = inttoptr i64 %i.v to ptr
  tail call void @_ZN2v88internal7Isolate16PushParamsAndDieEPvS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(64320) %1, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.w, ptr noundef null, ptr noundef null, ptr noundef null) #28
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

_ZN2v88internal4Name10EnsureHashEv.exit:          ; preds = %bb.s, %bb.r, %bb.p, %bb.a, %bb.a, %bb.a, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 262144, !noalias !11 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %i.b, i32 noundef %.1.i.i.i) #28
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.k, align 8, !range !16, !noundef !17
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 55464
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, -55464
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %bb.c ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %.fr = freeze i64 %i.w                          ; 2 uses
  %i.x = lshr i64 %.fr, 32                        ; 5 uses
  %.not = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 3 uses
  br i1 %.not, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit, %._crit_edge.us
  %.03591.us = phi i32 [ %i.cj, %._crit_edge.us ], [ 1, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 4 uses
  %.not22.i.us = icmp samesign ugt i32 %.03591.us, 1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.p
  %.190.us = phi i1 [ true, %.preheader.us ], [ %.4.us, %bb.p ] ; 3 uses
  %.sroa.067.088.us = phi i64 [ 0, %.preheader.us ], [ %.sroa.067.2.us, %bb.p ] ; 9 uses
  %i.z = trunc nuw i64 %.sroa.067.088.us to i32
  %i.aa = shl nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [8 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 40
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8 ; 6 uses
  %i.af = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us: ; preds = %bb.e
  %i.ah = load i64, ptr %i.y, align 8
  %.not.us = icmp eq i64 %i.ae, %i.ah
  br i1 %.not.us, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us
  %i.ai = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.ae) ; 2 uses
  %i.aj = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = trunc i64 %i.ae to i1
  br i1 %i.al, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us: ; preds = %bb.g
  %i.am = add nsw i64 %i.ae, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = icmp ugt i16 %i.ar, 299
  br i1 %i.as, label %bb.h, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, !prof !19

bb.h:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i64 %i.ae, ptr %2, align 8
  %i.at = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us: ; preds = %bb.h, %bb.f
  %.sroa.09.0.i.i.i.us = phi i64 [ %i.at, %bb.h ], [ %i.ai, %bb.f ]
  %i.au = lshr i64 %.sroa.09.0.i.i.i.us, 32
  %4 = trunc nuw i64 %i.au to i32
  %i.av = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.aw = lshr i64 %i.av, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  %.sroa.0.0.in20.i.us = and i32 %i.ay, %4        ; 2 uses
  %.sroa.0.021.i.us = zext i32 %.sroa.0.0.in20.i.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i.us, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us

.lr.ph.i.us:                                      ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, %bb.i
  %.sroa.0.025.i.us = phi i64 [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.0.021.i.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.sroa.0.0.in24.i.us = phi i32 [ %.sroa.0.0.in.i.us, %bb.i ], [ %.sroa.0.0.in20.i.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.023.i.us = phi i32 [ %i.ba, %bb.i ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ] ; 2 uses
  %i.az = icmp eq i64 %.sroa.067.088.us, %.sroa.0.025.i.us
  br i1 %i.az, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %5 = add i32 %.023.i.us, %.sroa.0.0.in24.i.us
  %i.ba = add nuw nsw i32 %.023.i.us, 1           ; 2 uses
  %.sroa.0.0.in.i.us = and i32 %5, %i.ay          ; 2 uses
  %.sroa.0.0.i.us = zext i32 %.sroa.0.0.in.i.us to i64 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.ba, %.03591.us
  br i1 %exitcond.not.i.us, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %.lr.ph.i.us, !llvm.loop !20

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us: ; preds = %.lr.ph.i.us, %bb.i, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us
  %spec.select.i.us = phi i64 [ %.sroa.0.021.i.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ], [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.067.088.us, %.lr.ph.i.us ] ; 5 uses
  %i.bb = icmp eq i64 %.sroa.067.088.us, %spec.select.i.us
  br i1 %i.bb, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.bc = trunc nuw i64 %spec.select.i.us to i32
  %i.bd = shl nsw i32 %i.bc, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [8 x i8], ptr %0, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 40
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8 ; 6 uses
  %i.bi = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %.critedge.us, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us: ; preds = %bb.j
  %i.bk = load i64, ptr %i.y, align 8
  %.not83.us = icmp eq i64 %i.bh, %i.bk
  br i1 %.not83.us, label %.critedge.us, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us
  %i.bl = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.bh) ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = trunc i64 %i.bh to i1
  br i1 %i.bo, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i38.us, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i37, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i38.us: ; preds = %bb.l
  %i.bp = add nsw i64 %i.bh, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i64, ptr %i.bq monotonic, align 8
  %i.bs = add i64 %i.br, 11
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i16, ptr %i.bt monotonic, align 2
  %i.bv = icmp ugt i16 %i.bu, 299
  br i1 %i.bv, label %bb.m, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i37, !prof !19

bb.m:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i38.us
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 %i.bh, ptr %1, align 8
  %i.bw = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us: ; preds = %bb.m, %bb.k
  %.sroa.09.0.i.i.i40.us = phi i64 [ %i.bw, %bb.m ], [ %i.bl, %bb.k ]
  %i.bx = lshr i64 %.sroa.09.0.i.i.i40.us, 32
  %6 = trunc nuw i64 %i.bx to i32
  %i.by = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.bz = lshr i64 %i.by, 32
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  %.sroa.0.0.in20.i41.us = and i32 %i.cb, %6      ; 2 uses
  %.sroa.0.021.i42.us = zext i32 %.sroa.0.0.in20.i41.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i45.us, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us

.lr.ph.i45.us:                                    ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us, %bb.n
  %.sroa.0.025.i46.us = phi i64 [ %.sroa.0.0.i50.us, %bb.n ], [ %.sroa.0.021.i42.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us ]
  %.sroa.0.0.in24.i47.us = phi i32 [ %.sroa.0.0.in.i49.us, %bb.n ], [ %.sroa.0.0.in20.i41.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us ]
  %.023.i48.us = phi i32 [ %i.cd, %bb.n ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us ] ; 2 uses
  %i.cc = icmp eq i64 %spec.select.i.us, %.sroa.0.025.i46.us
  br i1 %i.cc, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i45.us
  %7 = add i32 %.023.i48.us, %.sroa.0.0.in24.i47.us
  %i.cd = add nuw nsw i32 %.023.i48.us, 1         ; 2 uses
  %.sroa.0.0.in.i49.us = and i32 %7, %i.cb        ; 2 uses
  %.sroa.0.0.i50.us = zext i32 %.sroa.0.0.in.i49.us to i64 ; 2 uses
  %exitcond.not.i51.us = icmp eq i32 %i.cd, %.03591.us
  br i1 %exitcond.not.i51.us, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us, label %.lr.ph.i45.us, !llvm.loop !20

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us: ; preds = %bb.n, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us
  %spec.select.i44.us = phi i64 [ %.sroa.0.021.i42.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i39.us ], [ %.sroa.0.0.i50.us, %bb.n ]
  %.not84.us = icmp eq i64 %spec.select.i44.us, %spec.select.i.us
  br i1 %.not84.us, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us: ; preds = %.lr.ph.i45.us, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us
  %i.ce = add i64 %.sroa.067.088.us, 1
  br label %bb.p

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.us, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us, %bb.j
  %i.cf = load i32, ptr %3, align 4
  call void @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %.sroa.067.088.us, i64 %spec.select.i.us, i32 noundef %i.cf)
  br label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.cg = add nuw nsw i64 %.sroa.067.088.us, 1
  br label %bb.p, !llvm.loop !21

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.ch = add nuw nsw i64 %.sroa.067.088.us, 1
  br label %bb.p, !llvm.loop !21

bb.p:                                             ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.o, %.critedge.us, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us
  %.sroa.067.2.us = phi i64 [ %i.ch, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.cg, %bb.o ], [ %.sroa.067.088.us, %.critedge.us ], [ %i.ce, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us ] ; 2 uses
  %.4.us = phi i1 [ %.190.us, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.190.us, %bb.o ], [ %.190.us, %.critedge.us ], [ false, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit52.thread.us ] ; 2 uses
  %i.ci = icmp ult i64 %.sroa.067.2.us, %i.x
  br i1 %i.ci, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.p
  %i.cj = add nuw nsw i32 %.03591.us, 1
  br i1 %.4.us, label %.split.us, label %.preheader.us, !llvm.loop !22

.split.us:                                        ; preds = %._crit_edge.us
  %i.ck = load i64, ptr %i.y, align 8             ; 3 uses
  %i.cl = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.cm = icmp eq i64 %i.x, 1
  br i1 %i.cm, label %.lr.ph.epil.preheader, label %.split.us.new

.split.us.new:                                    ; preds = %.split.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %bb.g, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i37: ; preds = %bb.l, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i38.us
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %i.cn = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.cn, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split.us
  %.sroa.055.093.epil.init = phi i64 [ 0, %.split.us ], [ %i.dk, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod100 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod100)
  %i.co = trunc i64 %.sroa.055.093.epil.init to i32
  %i.cp = shl nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [8 x i8], ptr %0, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 40     ; 2 uses
  %i.ct = load atomic volatile i64, ptr %i.cs monotonic, align 8
  %i.cu = icmp eq i64 %i.ct, %i.ck
  br i1 %i.cu, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.cl, ptr %i.cs monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.cv monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

.lr.ph:                                           ; preds = %bb.t, %.split.us.new
  %.sroa.055.093 = phi i64 [ 0, %.split.us.new ], [ %i.dk, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.new ], [ %niter.next.1, %bb.t ]
  %i.cw = trunc i64 %.sroa.055.093 to i32
  %i.cx = shl nsw i32 %i.cw, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr [8 x i8], ptr %0, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 40     ; 2 uses
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = icmp eq i64 %i.db, %i.ck
  br i1 %i.dc, label %bb.r, label %.lr.ph.1

bb.r:                                             ; preds = %.lr.ph
  store atomic volatile i64 %i.cl, ptr %i.da monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.r, %.lr.ph
  %i.dd = trunc i64 %.sroa.055.093 to i32
  %i.de = shl i32 %i.dd, 1
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %0, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 56     ; 2 uses
  %i.di = load atomic volatile i64, ptr %i.dh monotonic, align 8
  %i.dj = icmp eq i64 %i.di, %i.ck
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.1
  store atomic volatile i64 %i.cl, ptr %i.dh monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.1
  %i.dk = add nuw nsw i64 %.sroa.055.093, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 262144, !noalias !23 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %1, i64 %i.b, i32 noundef %.1.i.i.i) #28
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.k, align 8, !range !16, !noundef !17
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.pre = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E) ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 55464
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, -55464
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit: ; preds = %bb.c, %bb.d
  %.pre-phi = phi ptr [ %.pre, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %.fr = freeze i64 %i.w                          ; 2 uses
  %i.x = lshr i64 %.fr, 32                        ; 5 uses
  %.not = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 3 uses
  br i1 %.not, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit, %._crit_edge.us
  %.03597.us = phi i32 [ %i.cy, %._crit_edge.us ], [ 1, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 4 uses
  %.not22.i.us = icmp samesign ugt i32 %.03597.us, 1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.p
  %.196.us = phi i1 [ true, %.preheader.us ], [ %.4.us, %bb.p ] ; 3 uses
  %.sroa.073.094.us = phi i64 [ 0, %.preheader.us ], [ %.sroa.073.2.us, %bb.p ] ; 9 uses
  %i.aa = mul i64 %.sroa.073.094.us, 12884901888
  %sext.i.us = add i64 %i.aa, 25769803776
  %i.ab = ashr exact i64 %sext.i.us, 29
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 3 uses
  %i.ae = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us

_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us: ; preds = %bb.e
  %i.ag = load i64, ptr %i.z, align 8
  %.not.us = icmp eq i64 %i.ad, %i.ag
  br i1 %.not.us, label %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_14NameDictionaryENS0_19NameDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us
  %i.ah = add i64 %i.ad, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load atomic i32, ptr %i.aj acquire, align 4 ; 3 uses
  %i.al = and i32 %i.ak, 1
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN2v88internal23BaseNameDictionaryShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, label %bb.g, !prof !28

end_hunk_0
begin_hunk_1_@_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE15IterateElementsEPNS0_13ObjectVisitorE
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE15IterateElementsEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 40
  %i.f = shl i64 %i.d, 3
  %i.g = and i64 %i.f, -34359738368
  %sext = add i64 %i.g, 68719476736
  %i.h = ashr exact i64 %sext, 32
  %i.i = add i64 %i.h, %i.a
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.e, i64 %i.i) #28, !inline_history !84
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE10FirstProbeEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = and i32 %i.a, %0
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6ObjectEEEi(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = add i32 %i.d, -1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.06.0.in32 = and i32 %3, %i.f             ; 2 uses
  %.sroa.06.033 = zext i32 %.sroa.06.0.in32 to i64 ; 2 uses
  %i.h = shl nuw i64 %.sroa.06.033, 32
  %sext.i34 = add i64 %i.h, 12884901888
  %i.i = ashr exact i64 %sext.i34, 29
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.m = load i64, ptr %2, align 8
  %i.n = tail call noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %i.m, i64 %i.k)
  br i1 %i.n, label %.thread, label %.lr.ph45

.lr.ph:                                           ; preds = %.lr.ph45
  %i.o = add i32 %.03544, 1
  %i.p = load i64, ptr %2, align 8
  %i.q = tail call noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %i.p, i64 %i.v)
  br i1 %i.q, label %.thread, label %.lr.ph45, !llvm.loop !116

.lr.ph45:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.03544 = phi i32 [ %i.o, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.06.0.in3743 = phi i32 [ %.sroa.06.0.in, %.lr.ph ], [ %.sroa.06.0.in32, %.lr.ph.preheader ]
  %i.r = add i32 %.03544, %.sroa.06.0.in3743
  %.sroa.06.0.in = and i32 %i.r, %i.f             ; 2 uses
  %.sroa.06.0 = zext i32 %.sroa.06.0.in to i64    ; 2 uses
  %i.s = shl nuw i64 %.sroa.06.0, 32
  %sext.i = add i64 %i.s, 12884901888
  %i.t = ashr exact i64 %sext.i, 29
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 %i.t
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.e
  br i1 %i.w, label %..thread.loopexit_crit_edge, label %.lr.ph, !llvm.loop !116

..thread.loopexit_crit_edge:                      ; preds = %.lr.ph45
  br label %.thread, !llvm.loop !116

.thread:                                          ; preds = %.lr.ph, %.lr.ph.preheader, %..thread.loopexit_crit_edge, %bb.a
  %.sroa.017.131 = phi i64 [ -1, %bb.a ], [ %.sroa.06.033, %.lr.ph.preheader ], [ -1, %..thread.loopexit_crit_edge ], [ %.sroa.06.0, %.lr.ph ]
  ret i64 %.sroa.017.131
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5KeyAtENS0_16PtrComprCageBaseENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = shl i64 %1, 32
  %sext = add i64 %i.b, 12884901888
  %i.c = ashr exact i64 %sext, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 5 uses
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i64, ptr %i.d, align 262144, !noalias !117 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %i.b, i32 noundef %.1.i.i.i) #28
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.k, align 8, !range !16, !noundef !17
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 55464
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, -55464
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %bb.c ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %.fr = freeze i64 %i.w                          ; 2 uses
  %i.x = lshr i64 %.fr, 32                        ; 5 uses
  %.not = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 3 uses
  br i1 %.not, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit, %._crit_edge.us
  %.03594.us = phi i32 [ %i.cz, %._crit_edge.us ], [ 1, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 4 uses
  %.not22.i.us = icmp samesign ugt i32 %.03594.us, 1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us
  %.193.us = phi i1 [ true, %.preheader.us ], [ %.4.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us ] ; 5 uses
  %.sroa.070.091.us = phi i64 [ 0, %.preheader.us ], [ %.sroa.070.2.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us ] ; 10 uses
  %i.aa = shl nuw i64 %.sroa.070.091.us, 32
  %sext.i.us = add i64 %i.aa, 12884901888
  %i.ab = ashr exact i64 %sext.i.us, 29
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 4 uses
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 6 uses
  %i.ae = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us: ; preds = %bb.e
  %i.ag = load i64, ptr %i.z, align 8
  %.not.us = icmp eq i64 %i.ad, %i.ag
  br i1 %.not.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us
  %i.ah = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.ad) ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = trunc i64 %i.ad to i1
  br i1 %i.ak, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us: ; preds = %bb.g
  %i.al = add nsw i64 %i.ad, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = icmp ugt i16 %i.aq, 299
  br i1 %i.ar, label %bb.h, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, !prof !19

bb.h:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i64 %i.ad, ptr %2, align 8
  %i.as = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us: ; preds = %bb.h, %bb.f
  %.sroa.09.0.i.i.i.us = phi i64 [ %i.as, %bb.h ], [ %i.ah, %bb.f ]
  %i.at = lshr i64 %.sroa.09.0.i.i.i.us, 32
  %4 = trunc nuw i64 %i.at to i32
  %i.au = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  %.sroa.0.0.in20.i.us = and i32 %i.ax, %4        ; 2 uses
  %.sroa.0.021.i.us = zext i32 %.sroa.0.0.in20.i.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us

.lr.ph.i.us:                                      ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, %bb.i
  %.sroa.0.025.i.us = phi i64 [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.0.021.i.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.sroa.0.0.in24.i.us = phi i32 [ %.sroa.0.0.in.i.us, %bb.i ], [ %.sroa.0.0.in20.i.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.023.i.us = phi i32 [ %i.az, %bb.i ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ] ; 2 uses
  %i.ay = icmp eq i64 %.sroa.070.091.us, %.sroa.0.025.i.us
  br i1 %i.ay, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %5 = add i32 %.023.i.us, %.sroa.0.0.in24.i.us
  %i.az = add nuw nsw i32 %.023.i.us, 1           ; 2 uses
  %.sroa.0.0.in.i.us = and i32 %5, %i.ax          ; 2 uses
  %.sroa.0.0.i.us = zext i32 %.sroa.0.0.in.i.us to i64 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.az, %.03594.us
  br i1 %exitcond.not.i.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %.lr.ph.i.us, !llvm.loop !122

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us: ; preds = %.lr.ph.i.us, %bb.i, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us
  %spec.select.i.us = phi i64 [ %.sroa.0.021.i.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ], [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.070.091.us, %.lr.ph.i.us ] ; 4 uses
  %i.ba = icmp eq i64 %.sroa.070.091.us, %spec.select.i.us
  br i1 %i.ba, label %bb.y, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.bb = shl nuw i64 %spec.select.i.us, 32
  %sext.i36.us = add i64 %i.bb, 12884901888
  %i.bc = ashr exact i64 %sext.i36.us, 29
  %i.bd = getelementptr inbounds i8, ptr %i.y, i64 %i.bc ; 4 uses
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8 ; 6 uses
  %i.bf = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %.critedge.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us: ; preds = %bb.j
  %i.bh = load i64, ptr %i.z, align 8
  %.not86.us = icmp eq i64 %i.be, %i.bh
  br i1 %.not86.us, label %.critedge.us, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us
  %i.bi = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.be) ; 2 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = trunc i64 %i.be to i1
  br i1 %i.bl, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i38, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us: ; preds = %bb.l
  %i.bm = add nsw i64 %i.be, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = icmp ugt i16 %i.br, 299
  br i1 %i.bs, label %bb.m, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i38, !prof !19

bb.m:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 %i.be, ptr %1, align 8
  %i.bt = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us: ; preds = %bb.m, %bb.k
  %.sroa.09.0.i.i.i41.us = phi i64 [ %i.bt, %bb.m ], [ %i.bi, %bb.k ]
  %i.bu = lshr i64 %.sroa.09.0.i.i.i41.us, 32
  %6 = trunc nuw i64 %i.bu to i32
  %i.bv = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  %.sroa.0.0.in20.i42.us = and i32 %i.by, %6      ; 2 uses
  %.sroa.0.021.i43.us = zext i32 %.sroa.0.0.in20.i42.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i46.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us

.lr.ph.i46.us:                                    ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us, %bb.n
  %.sroa.0.025.i47.us = phi i64 [ %.sroa.0.0.i51.us, %bb.n ], [ %.sroa.0.021.i43.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ]
  %.sroa.0.0.in24.i48.us = phi i32 [ %.sroa.0.0.in.i50.us, %bb.n ], [ %.sroa.0.0.in20.i42.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ]
  %.023.i49.us = phi i32 [ %i.ca, %bb.n ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ] ; 2 uses
  %i.bz = icmp eq i64 %spec.select.i.us, %.sroa.0.025.i47.us
  br i1 %i.bz, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i46.us
  %7 = add i32 %.023.i49.us, %.sroa.0.0.in24.i48.us
  %i.ca = add nuw nsw i32 %.023.i49.us, 1         ; 2 uses
  %.sroa.0.0.in.i50.us = and i32 %7, %i.by        ; 2 uses
  %.sroa.0.0.i51.us = zext i32 %.sroa.0.0.in.i50.us to i64 ; 2 uses
  %exitcond.not.i52.us = icmp eq i32 %i.ca, %.03594.us
  br i1 %exitcond.not.i52.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us, label %.lr.ph.i46.us, !llvm.loop !122

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us: ; preds = %bb.n, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us
  %spec.select.i45.us = phi i64 [ %.sroa.0.021.i43.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ], [ %.sroa.0.0.i51.us, %bb.n ]
  %.not87.us = icmp eq i64 %spec.select.i45.us, %spec.select.i.us
  br i1 %.not87.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us: ; preds = %.lr.ph.i46.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us
  %i.cb = add i64 %.sroa.070.091.us, 1
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us, %bb.j
  %i.cc = load i32, ptr %3, align 4
  %i.cd = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 5 uses
  %i.ce = load atomic volatile i64, ptr %i.bd monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.ce, ptr %i.ac monotonic, align 8
  %i.cf = icmp sgt i32 %i.cc, 1                   ; 2 uses
  %i.cg = trunc i64 %i.ce to i1
  %or.cond.i.i.i.i.i.i.us = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond.i.i.i.i.i.i.us, label %bb.o, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us

bb.o:                                             ; preds = %.critedge.us
  %i.ch = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ci = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.cj = and i64 %i.ci, 32
  %.not.i.i.i.i.i.i.i.us = icmp eq i64 %i.cj, 0
  %i.ck = and i64 %i.ci, 25
  %.not37.i.i.i.i.i.i.i.us = icmp eq i64 %i.ck, 0
  br i1 %.not37.i.i.i.i.i.i.i.us, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cl = and i64 %i.ce, -262144
  %i.cm = inttoptr i64 %i.cl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us = load i64, ptr %i.cm, align 262144
  %i.cn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.us, 25
  %.not38.i.i.i.i.i.i.i.us = icmp eq i64 %i.cn, 0
  br i1 %.not38.i.i.i.i.i.i.i.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.ch, i64 %i.ce) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i.i.i.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us, label %bb.s, !prof !28

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.ch, i64 %i.ce) #28
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us: ; preds = %bb.s, %bb.r, %.critedge.us
  store atomic volatile i64 %i.cd, ptr %i.bd monotonic, align 8
  %i.co = trunc i64 %i.cd to i1
  %or.cond.i.i.i.i.i35.i.us = select i1 %i.cf, i1 %i.co, i1 false
  br i1 %or.cond.i.i.i.i.i35.i.us, label %bb.t, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

bb.t:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us
  %i.cp = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.cq = load i64, ptr %i.d, align 262144        ; 2 uses
  %i.cr = and i64 %i.cq, 32
  %.not.i.i.i.i.i.i36.i.us = icmp eq i64 %i.cr, 0
  %i.cs = and i64 %i.cq, 25
  %.not37.i.i.i.i.i.i37.i.us = icmp eq i64 %i.cs, 0
  br i1 %.not37.i.i.i.i.i.i37.i.us, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ct = and i64 %i.cd, -262144
  %i.cu = inttoptr i64 %i.ct to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us = load i64, ptr %i.cu, align 262144
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38.i.us, 25
  %.not38.i.i.i.i.i.i39.i.us = icmp eq i64 %i.cv, 0
  br i1 %.not38.i.i.i.i.i.i39.i.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.cp, i64 %i.cd) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %.not.i.i.i.i.i.i36.i.us, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, label %bb.x, !prof !28

bb.x:                                             ; preds = %bb.w
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.cp, i64 %i.cd) #28
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us

bb.y:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.cw = add nuw nsw i64 %.sroa.070.091.us, 1
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !123

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.cx = add nuw nsw i64 %.sroa.070.091.us, 1
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us, !llvm.loop !123

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us: ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.y, %bb.x, %bb.w, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us
  %.sroa.070.2.us = phi i64 [ %i.cx, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.cw, %bb.y ], [ %i.cb, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us ], [ %.sroa.070.091.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.sroa.070.091.us, %bb.w ], [ %.sroa.070.091.us, %bb.x ] ; 2 uses
  %.4.us = phi i1 [ %.193.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.193.us, %bb.y ], [ false, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us ], [ %.193.us, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.us ], [ %.193.us, %bb.w ], [ %.193.us, %bb.x ] ; 2 uses
  %i.cy = icmp ult i64 %.sroa.070.2.us, %i.x
  br i1 %i.cy, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE.exit.us
  %i.cz = add nuw nsw i32 %.03594.us, 1
  br i1 %.4.us, label %.split.us, label %.preheader.us, !llvm.loop !124

.split.us:                                        ; preds = %._crit_edge.us
  %i.da = load i64, ptr %i.z, align 8             ; 3 uses
  %i.db = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.dc = icmp eq i64 %i.x, 1
  br i1 %i.dc, label %.lr.ph.epil.preheader, label %.split.us.new

.split.us.new:                                    ; preds = %.split.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %bb.g, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i38: ; preds = %bb.l, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ac
  %i.dd = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.dd, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split.us
  %.sroa.058.096.epil.init = phi i64 [ 0, %.split.us ], [ %i.du, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod103 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod103)
  %i.de = shl i64 %.sroa.058.096.epil.init, 32
  %sext.i55.epil = add i64 %i.de, 12884901888
  %i.df = ashr exact i64 %sext.i55.epil, 29
  %i.dg = getelementptr inbounds i8, ptr %i.y, i64 %i.df ; 2 uses
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.di = icmp eq i64 %i.dh, %i.da
  br i1 %i.di, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.db, ptr %i.dg monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.z, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.dj monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

.lr.ph:                                           ; preds = %bb.ac, %.split.us.new
  %.sroa.058.096 = phi i64 [ 0, %.split.us.new ], [ %i.du, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.new ], [ %niter.next.1, %bb.ac ]
  %i.dk = shl i64 %.sroa.058.096, 32
  %sext.i55 = add i64 %i.dk, 12884901888
  %i.dl = ashr exact i64 %sext.i55, 29
  %i.dm = getelementptr inbounds i8, ptr %i.y, i64 %i.dl ; 2 uses
  %i.dn = load atomic volatile i64, ptr %i.dm monotonic, align 8
  %i.do = icmp eq i64 %i.dn, %i.da
  br i1 %i.do, label %bb.aa, label %.lr.ph.1

bb.aa:                                            ; preds = %.lr.ph
  store atomic volatile i64 %i.db, ptr %i.dm monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.aa, %.lr.ph
  %i.dp = shl i64 %.sroa.058.096, 32
  %sext.i55.1 = add i64 %i.dp, 17179869184
  %i.dq = ashr exact i64 %sext.i55.1, 29
  %i.dr = getelementptr inbounds i8, ptr %i.y, i64 %i.dq ; 2 uses
  %i.ds = load atomic volatile i64, ptr %i.dr monotonic, align 8
  %i.dt = icmp eq i64 %i.ds, %i.da
  br i1 %i.dt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.1
  store atomic volatile i64 %i.db, ptr %i.dr monotonic, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.1
  %i.du = add nuw nsw i64 %.sroa.058.096, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE(ptr %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %1, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %i.a = tail call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %2) ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.b
  %i.e = add nsw i64 %2, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp ugt i16 %i.j, 299
  br i1 %i.k, label %bb.c, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !19

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %2, ptr %5, align 8
  %i.l = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a, %bb.c
  %.sroa.09.0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.a, %bb.a ]
  %i.m = lshr i64 %.sroa.09.0.i.i, 32
  %6 = trunc nuw i64 %i.m to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %.sroa.0.0.in20 = and i32 %i.r, %6              ; 2 uses
  %.sroa.0.021 = zext i32 %.sroa.0.0.in20 to i64  ; 2 uses
  %.not22 = icmp sgt i32 %3, 1
  br i1 %.not22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.d
  %.sroa.0.025 = phi i64 [ %.sroa.0.0, %bb.d ], [ %.sroa.0.021, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.sroa.0.0.in24 = phi i32 [ %.sroa.0.0.in, %bb.d ], [ %.sroa.0.0.in20, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.023 = phi i32 [ %i.t, %bb.d ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %i.s = icmp eq i64 %4, %.sroa.0.025
  br i1 %i.s, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %7 = add i32 %.023, %.sroa.0.0.in24
  %i.t = add nuw nsw i32 %.023, 1                 ; 2 uses
  %.sroa.0.0.in = and i32 %7, %i.r                ; 2 uses
  %.sroa.0.0 = zext i32 %.sroa.0.0.in to i64      ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %spec.select = phi i64 [ %.sroa.0.021, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %4, %.lr.ph ], [ %.sroa.0.0, %bb.d ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = shl i64 %1, 32
  %sext41 = add i64 %i.b, 12884901888
  %i.c = ashr exact i64 %sext41, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 5 uses
  %i.f = shl i64 %2, 32
  %sext = add i64 %i.f, 12884901888
  %i.g = ashr exact i64 %sext, 29
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 3 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.i, ptr %i.d monotonic, align 8
  %i.j = icmp sgt i32 %3, 1                       ; 2 uses
  %i.k = trunc i64 %i.i to i1
  %or.cond.i.i.i.i.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.a, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.a:                                             ; preds = %.preheader
  %i.l = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.n = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.o = and i64 %i.l, -262144
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 262144         ; 2 uses
  %i.r = and i64 %i.q, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  %i.s = and i64 %i.q, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = and i64 %i.i, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 262144
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.m, i64 noundef %i.n, i64 %i.i) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.m, i64 %i.n, i64 %i.i) #28
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.preheader, %bb.d, %bb.e
  store atomic volatile i64 %i.e, ptr %i.h monotonic, align 8
  %i.w = trunc i64 %i.e to i1
  %or.cond.i.i.i.i.i35 = select i1 %i.j, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i.i35, label %bb.f, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit40

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.x = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %i.z = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.aa = and i64 %i.x, -262144
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 262144       ; 2 uses
  %i.ad = and i64 %i.ac, 32
  %.not.i.i.i.i.i.i36 = icmp eq i64 %i.ad, 0
  %i.ae = and i64 %i.ac, 25
  %.not37.i.i.i.i.i.i37 = icmp eq i64 %i.ae, 0
  br i1 %.not37.i.i.i.i.i.i37, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = and i64 %i.e, -262144
  %i.ag = inttoptr i64 %i.af to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38 = load i64, ptr %i.ag, align 262144
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i38, 25
  %.not38.i.i.i.i.i.i39 = icmp eq i64 %i.ah, 0
  br i1 %.not38.i.i.i.i.i.i39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.y, i64 noundef %i.z, i64 %i.e) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i36, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit40, label %bb.j, !prof !28

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.y, i64 %i.z, i64 %i.e) #28
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit40

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit40: ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.i, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  store atomic volatile i64 %2, ptr %i.c monotonic, align 8
  %i.d = icmp sgt i32 %3, 1
  %i.e = trunc i64 %2 to i1
  %or.cond.i.i.i.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.h = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.i = and i64 %i.f, -262144
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 262144         ; 2 uses
  %i.l = and i64 %i.k, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.l, 0
  %i.m = and i64 %i.k, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not37.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %2, -262144
  %i.o = inttoptr i64 %i.n to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.o, align 262144
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not38.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.g, i64 noundef %i.h, i64 %2) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.g, i64 %i.h, i64 %2) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE12EntryToIndexENS0_13InternalIndexE(i64 %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = add nsw i32 %i.a, 3
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = shl i64 %2, 32
  %sext.i.i = add i64 %i.b, 12884901888
  %i.c = ashr exact i64 %sext.i.i, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 3 uses
  %i.f = load i64, ptr %1, align 8
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.e, %i.i
  br i1 %.not, label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  store i64 %i.e, ptr %3, align 8
  br label %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.b
  %i.j = phi i1 [ true, %bb.b ], [ false, %_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %bb.a ]
  ret i1 %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5KeyAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = shl i64 %1, 32
  %sext.i = add i64 %i.b, 12884901888
  %i.c = ashr exact i64 %sext.i, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  ret i64 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_13ObjectHashSetENS0_18ObjectHashSetShapeEE5ToKeyENS0_16PtrComprCageBaseENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = shl i64 %1, 32
  %sext.i = add i64 %i.b, 12884901888
  %i.c = ashr exact i64 %sext.i, 29
end_hunk_1
begin_hunk_2_@_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE6ShrinkINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS6_IS8_EEEEET_IS2_EPNS0_7IsolateESC_i:bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit: ; preds = %bb.c, %bb.d
  %i.af = phi i8 [ %i.ad, %bb.d ], [ 0, %bb.c ]
  %i.ag = shl nuw nsw i32 %.1.i, 1
  %i.ah = add nuw nsw i32 %i.ag, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.aj = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.ai, i32 noundef %i.ah, i8 noundef zeroext %i.af) #28 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr               ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store atomic volatile i64 0, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store atomic volatile i64 0, ptr %i.ao monotonic, align 8
  %i.ap = zext nneg i32 %.1.i to i64
  %i.aq = shl nuw nsw i64 %i.ap, 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store atomic volatile i64 %i.aq, ptr %i.ar monotonic, align 8
  %i.as = load i64, ptr %1, align 8
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.aj, align 8
  tail call void @_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 %i.av)
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE25ComputeCapacityWithShrinkEjj.exit, %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit
  %.sroa.021.0 = phi ptr [ %i.aj, %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE3NewINS0_7IsolateEEENS0_6HandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE.exit ], [ %1, %_ZN2v88internal9HashTableINS0_21RegisteredSymbolTableENS0_26RegisteredSymbolTableShapeEE25ComputeCapacityWithShrinkEjj.exit ]
  ret ptr %.sroa.021.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE6GetMapERNS0_10RootsTableE(ptr noundef nonnull align 8 dereferenceable(9200) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13IteratePrefixEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b) #28, !inline_history !84
  %i.f = add i64 %i.a, 8
  %i.g = add i64 %i.a, 40
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.f, i64 %i.g) #28, !inline_history !84
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE15IterateElementsEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 40
  %i.f = shl i64 %i.d, 3
  %i.g = and i64 %i.f, -34359738368
  %sext = add i64 %i.g, 68719476736
  %i.h = ashr exact i64 %sext, 32
  %i.i = add i64 %i.h, %i.a
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.e, i64 %i.i) #28, !inline_history !84
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE10FirstProbeEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = and i32 %i.a, %0
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6ObjectEEEi(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = add i32 %i.d, -1                         ; 2 uses
  %.sroa.06.0.in32 = and i32 %3, %i.f             ; 2 uses
  %i.g = shl nsw i32 %.sroa.06.0.in32, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.v, %bb.b ], [ %i.k, %bb.a ]
  %.sroa.06.0.in35 = phi i32 [ %.sroa.06.0.in, %bb.b ], [ %.sroa.06.0.in32, %bb.a ] ; 2 uses
  %.033 = phi i32 [ %i.p, %bb.b ], [ 1, %bb.a ]   ; 2 uses
  %i.n = load i64, ptr %2, align 8
  %i.o = tail call noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %i.n, i64 %i.m)
  br i1 %i.o, label %.thread.loopexit.split.loop.exit40, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = add i32 %.033, 1
  %i.q = add i32 %.033, %.sroa.06.0.in35
  %.sroa.06.0.in = and i32 %i.q, %i.f             ; 2 uses
  %i.r = shl nsw i32 %.sroa.06.0.in, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 40
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.e
  br i1 %i.w, label %.thread, label %.lr.ph, !llvm.loop !145

.thread.loopexit.split.loop.exit40:               ; preds = %.lr.ph
  %.sroa.06.0.le = zext i32 %.sroa.06.0.in35 to i64
  br label %.thread

.thread:                                          ; preds = %bb.b, %.thread.loopexit.split.loop.exit40, %bb.a
  %.sroa.017.131 = phi i64 [ -1, %bb.a ], [ %.sroa.06.0.le, %.thread.loopexit.split.loop.exit40 ], [ -1, %bb.b ]
  ret i64 %.sroa.017.131
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5KeyAtENS0_16PtrComprCageBaseENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = shl nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 40
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  ret i64 %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE(ptr %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %1, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %i.a = tail call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %2) ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.b
  %i.e = add nsw i64 %2, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp ugt i16 %i.j, 299
  br i1 %i.k, label %bb.c, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !19

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %2, ptr %5, align 8
  %i.l = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a, %bb.c
  %.sroa.09.0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.a, %bb.a ]
  %i.m = lshr i64 %.sroa.09.0.i.i, 32
  %6 = trunc nuw i64 %i.m to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %.sroa.0.0.in20 = and i32 %i.r, %6              ; 2 uses
  %.sroa.0.021 = zext i32 %.sroa.0.0.in20 to i64  ; 2 uses
  %.not22 = icmp sgt i32 %3, 1
  br i1 %.not22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.d
  %.sroa.0.025 = phi i64 [ %.sroa.0.0, %bb.d ], [ %.sroa.0.021, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.sroa.0.0.in24 = phi i32 [ %.sroa.0.0.in, %bb.d ], [ %.sroa.0.0.in20, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.023 = phi i32 [ %i.t, %bb.d ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %i.s = icmp eq i64 %4, %.sroa.0.025
  br i1 %i.s, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %7 = add i32 %.023, %.sroa.0.0.in24
  %i.t = add nuw nsw i32 %.023, 1                 ; 2 uses
  %.sroa.0.0.in = and i32 %7, %i.r                ; 2 uses
  %.sroa.0.0 = zext i32 %.sroa.0.0.in to i64      ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %spec.select = phi i64 [ %.sroa.0.021, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %4, %.lr.ph ], [ %.sroa.0.0, %bb.d ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
.preheader:
  %i.a = trunc i64 %1 to i32
  %i.b = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.c = add nsw i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 6 uses
  %i.h = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %.sroa.0.0.copyload.fr71 = freeze i64 %i.j      ; 6 uses
  %i.k = trunc i64 %2 to i32
  %i.l = shl nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [8 x i8], ptr %i.d, i64 %i.m ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 24       ; 4 uses
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.p, ptr %i.f monotonic, align 8
  %i.q = icmp sgt i32 %3, 1                       ; 3 uses
  %i.r = trunc i64 %i.p to i1
  %or.cond.i.i.i.i.i = select i1 %i.q, i1 %i.r, i1 false
  %i.s = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.t = or disjoint i64 %i.s, 1                  ; 8 uses
  br i1 %or.cond.i.i.i.i.i, label %bb.a, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.a:                                             ; preds = %.preheader
  %i.u = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.v = and i64 %i.s, -262144
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 262144         ; 2 uses
  %i.y = and i64 %i.x, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  %i.z = and i64 %i.x, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.aa = and i64 %i.p, -262144
  %i.ab = inttoptr i64 %i.aa to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 262144
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.t, i64 noundef %i.u, i64 %i.p) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.t, i64 %i.u, i64 %i.p) #28
  br label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread: ; preds = %bb.d, %bb.e
  %i.ad = getelementptr i8, ptr %i.n, i64 32
  %i.ae = sext i32 %i.b to i64
  %i.af = getelementptr [8 x i8], ptr %i.d, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  br label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.preheader
  %.pre54 = and i64 %i.s, -262144
  %.pre56 = inttoptr i64 %.pre54 to ptr
  %i.ah = getelementptr i8, ptr %i.n, i64 32      ; 3 uses
  %i.ai = sext i32 %i.b to i64
  %i.aj = getelementptr [8 x i8], ptr %i.d, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 32     ; 2 uses
  br i1 %i.q, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.thread

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.thread: ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.al = load atomic volatile i64, ptr %i.ah monotonic, align 8
  store atomic volatile i64 %i.al, ptr %i.ak monotonic, align 8
  store atomic volatile i64 %i.g, ptr %i.o monotonic, align 8
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.s, %bb.r, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split
  store atomic volatile i64 %i.g, ptr %i.o monotonic, align 8
  %i.am = trunc i64 %i.g to i1
  br i1 %i.am, label %bb.f, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41

bb.f:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.an = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.ao = load i64, ptr %.pre-phi5761, align 8    ; 2 uses
  %i.ap = and i64 %i.ao, 32
  %.not.i.i.i.i.i.i37 = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ao, 25
  %.not37.i.i.i.i.i.i38 = icmp eq i64 %i.aq, 0
  br i1 %.not37.i.i.i.i.i.i38, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ar = and i64 %i.g, -262144
  %i.as = inttoptr i64 %i.ar to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i39 = load i64, ptr %i.as, align 262144
  %i.at = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i39, 25
  %.not38.i.i.i.i.i.i40 = icmp eq i64 %i.at, 0
  br i1 %.not38.i.i.i.i.i.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.t, i64 noundef %i.an, i64 %i.g) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i37, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41, label %bb.j, !prof !28

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.t, i64 %i.an, i64 %i.g) #28
  br label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.i, %bb.j
  %i.au = trunc i64 %.sroa.0.0.copyload.fr71 to i1
  %or.cond.i.i.i.i42 = and i1 %i.q, %i.au
  %i.av = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.aw = and i64 %.sroa.0.0.copyload.fr71, -262144
  %i.ax = inttoptr i64 %i.aw to ptr
  br i1 %or.cond.i.i.i.i42, label %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.us, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.us: ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41
  store atomic volatile i64 %.sroa.0.0.copyload.fr71, ptr %i.bd monotonic, align 8
  %i.ay = load i64, ptr %.pre-phi5761, align 8    ; 2 uses
  %i.az = and i64 %i.ay, 32
  %.not.i.i.i.i.i43.us = icmp eq i64 %i.az, 0
  %i.ba = and i64 %i.ay, 25
  %.not37.i.i.i.i.i44.us = icmp eq i64 %i.ba, 0
  br i1 %.not37.i.i.i.i.i44.us, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.us
  %.sroa.0.0.copyload.i.i.i.i.i.i.i45.us = load i64, ptr %i.ax, align 262144
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i45.us, 25
  %.not38.i.i.i.i.i46.us = icmp eq i64 %i.bb, 0
  br i1 %.not38.i.i.i.i.i46.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.t, i64 noundef %i.av, i64 %.sroa.0.0.copyload.fr71) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.us
  br i1 %.not.i.i.i.i.i43.us, label %.split50.us, label %bb.n, !prof !28

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.t, i64 %i.av, i64 %.sroa.0.0.copyload.fr71) #28
  br label %.split50.us

_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split: ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.bc = phi ptr [ %i.ag, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread ], [ %i.ak, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.bd = phi ptr [ %i.ad, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread ], [ %i.ah, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 4 uses
  %.pre-phi5761 = phi ptr [ %i.w, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread ], [ %.pre56, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = load atomic volatile i64, ptr %i.bd monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.bf, ptr %i.bc monotonic, align 8
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.o:                                             ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split
  %i.bh = load i64, ptr %.pre-phi5761, align 8    ; 2 uses
  %i.bi = and i64 %i.bh, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bi, 0
  %i.bj = and i64 %i.bh, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not37.i.i.i.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bk = and i64 %i.bf, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 262144
  %i.bm = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not38.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.t, i64 noundef %i.be, i64 %i.bf) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.s, !prof !28

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.t, i64 %i.be, i64 %i.bf) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

.split50.us:                                      ; preds = %bb.n, %bb.m, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47
  ret void

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47: ; preds = %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.thread, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41
  %i.bn = phi ptr [ %i.ah, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.thread ], [ %i.bd, %_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41 ]
  store atomic volatile i64 %.sroa.0.0.copyload.fr71, ptr %i.bn monotonic, align 8
  br label %.split50.us
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
begin_hunk_3_@_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE15IterateElementsEPNS0_13ObjectVisitorE
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE15IterateElementsEPNS0_13ObjectVisitorE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 40
  %i.f = shl i64 %i.d, 3
  %i.g = and i64 %i.f, -34359738368
  %sext = add i64 %i.g, 68719476736
  %i.h = ashr exact i64 %sext, 32
  %i.i = add i64 %i.h, %i.a
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.b, i64 %i.e, i64 %i.i) #28, !inline_history !84
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE10FirstProbeEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = and i32 %i.a, %0
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE9FindEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsENS0_12DirectHandleINS0_6ObjectEEEi(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = add i32 %i.d, -1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.06.0.in32 = and i32 %3, %i.f             ; 2 uses
  %.sroa.06.033 = zext i32 %.sroa.06.0.in32 to i64 ; 2 uses
  %i.h = mul i64 %.sroa.06.033, 12884901888
  %sext.i34 = add i64 %i.h, 12884901888
  %i.i = ashr exact i64 %sext.i34, 29
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.m = load i64, ptr %2, align 8
  %i.n = tail call noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %i.m, i64 %i.k)
  br i1 %i.n, label %.thread, label %.lr.ph45

.lr.ph:                                           ; preds = %.lr.ph45
  %i.o = add i32 %.03544, 1
  %i.p = load i64, ptr %2, align 8
  %i.q = tail call noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64 %i.p, i64 %i.v)
  br i1 %i.q, label %.thread, label %.lr.ph45, !llvm.loop !172

.lr.ph45:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.03544 = phi i32 [ %i.o, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.06.0.in3743 = phi i32 [ %.sroa.06.0.in, %.lr.ph ], [ %.sroa.06.0.in32, %.lr.ph.preheader ]
  %i.r = add i32 %.03544, %.sroa.06.0.in3743
  %.sroa.06.0.in = and i32 %i.r, %i.f             ; 2 uses
  %.sroa.06.0 = zext i32 %.sroa.06.0.in to i64    ; 2 uses
  %i.s = mul i64 %.sroa.06.0, 12884901888
  %sext.i = add i64 %i.s, 12884901888
  %i.t = ashr exact i64 %sext.i, 29
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 %i.t
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.e
  br i1 %i.w, label %..thread.loopexit_crit_edge, label %.lr.ph, !llvm.loop !172

..thread.loopexit_crit_edge:                      ; preds = %.lr.ph45
  br label %.thread, !llvm.loop !172

.thread:                                          ; preds = %.lr.ph, %.lr.ph.preheader, %..thread.loopexit_crit_edge, %bb.a
  %.sroa.017.131 = phi i64 [ -1, %bb.a ], [ %.sroa.06.033, %.lr.ph.preheader ], [ -1, %..thread.loopexit_crit_edge ], [ %.sroa.06.0, %.lr.ph ]
  ret i64 %.sroa.017.131
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5KeyAtENS0_16PtrComprCageBaseENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = mul i64 %1, 12884901888
  %sext = add i64 %i.b, 12884901888
  %i.c = ashr exact i64 %sext, 29
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE6RehashENS0_16PtrComprCageBaseE(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = or disjoint i64 %i.a, 1
  %i.c = and i64 %i.a, -262144
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 262144, !noalias !173 ; 2 uses
  %i.f = and i64 %i.e, 32
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %i.e, 24
  %.not7.i.i.i = icmp ne i64 %i.g, 0
  %i.h = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.h, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %i.b, i32 noundef %.1.i.i.i) #28
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10624
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.k, align 8, !range !16, !noundef !17
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 55464
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, -55464
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %bb.c ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %.fr = freeze i64 %i.w                          ; 2 uses
  %i.x = lshr i64 %.fr, 32                        ; 5 uses
  %.not = icmp eq i64 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 3 uses
  br i1 %.not, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit, %._crit_edge.us
  %.03593.us = phi i32 [ %i.cg, %._crit_edge.us ], [ 1, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 4 uses
  %.not22.i.us = icmp samesign ugt i32 %.03593.us, 1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.p
  %.192.us = phi i1 [ true, %.preheader.us ], [ %.4.us, %bb.p ] ; 3 uses
  %.sroa.069.090.us = phi i64 [ 0, %.preheader.us ], [ %.sroa.069.2.us, %bb.p ] ; 9 uses
  %i.aa = mul i64 %.sroa.069.090.us, 12884901888
  %sext.i.us = add i64 %i.aa, 12884901888
  %i.ab = ashr exact i64 %sext.i.us, 29
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 6 uses
  %i.ae = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us

_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us: ; preds = %bb.e
  %i.ag = load i64, ptr %i.z, align 8
  %.not.us = icmp eq i64 %i.ad, %i.ag
  br i1 %.not.us, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us
  %i.ah = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.ad) ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = trunc i64 %i.ad to i1
  br i1 %i.ak, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us: ; preds = %bb.g
  %i.al = add nsw i64 %i.ad, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = icmp ugt i16 %i.aq, 299
  br i1 %i.ar, label %bb.h, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, !prof !19

bb.h:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i64 %i.ad, ptr %2, align 8
  %i.as = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us: ; preds = %bb.h, %bb.f
  %.sroa.09.0.i.i.i.us = phi i64 [ %i.as, %bb.h ], [ %i.ah, %bb.f ]
  %i.at = lshr i64 %.sroa.09.0.i.i.i.us, 32
  %4 = trunc nuw i64 %i.at to i32
  %i.au = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  %.sroa.0.0.in20.i.us = and i32 %i.ax, %4        ; 2 uses
  %.sroa.0.021.i.us = zext i32 %.sroa.0.0.in20.i.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i.us, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us

.lr.ph.i.us:                                      ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us, %bb.i
  %.sroa.0.025.i.us = phi i64 [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.0.021.i.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.sroa.0.0.in24.i.us = phi i32 [ %.sroa.0.0.in.i.us, %bb.i ], [ %.sroa.0.0.in20.i.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ]
  %.023.i.us = phi i32 [ %i.az, %bb.i ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ] ; 2 uses
  %i.ay = icmp eq i64 %.sroa.069.090.us, %.sroa.0.025.i.us
  br i1 %i.ay, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %5 = add i32 %.023.i.us, %.sroa.0.0.in24.i.us
  %i.az = add nuw nsw i32 %.023.i.us, 1           ; 2 uses
  %.sroa.0.0.in.i.us = and i32 %5, %i.ax          ; 2 uses
  %.sroa.0.0.i.us = zext i32 %.sroa.0.0.in.i.us to i64 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.az, %.03593.us
  br i1 %exitcond.not.i.us, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %.lr.ph.i.us, !llvm.loop !178

_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us: ; preds = %.lr.ph.i.us, %bb.i, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us
  %spec.select.i.us = phi i64 [ %.sroa.0.021.i.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ], [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.069.090.us, %.lr.ph.i.us ] ; 5 uses
  %i.ba = icmp eq i64 %.sroa.069.090.us, %spec.select.i.us
  br i1 %i.ba, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.bb = mul i64 %spec.select.i.us, 12884901888
  %sext.i36.us = add i64 %i.bb, 12884901888
  %i.bc = ashr exact i64 %sext.i36.us, 29
  %i.bd = getelementptr inbounds i8, ptr %i.y, i64 %i.bc
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8 ; 6 uses
  %i.bf = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %.critedge.us, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us

_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us: ; preds = %bb.j
  %i.bh = load i64, ptr %i.z, align 8
  %.not85.us = icmp eq i64 %i.be, %i.bh
  br i1 %.not85.us, label %.critedge.us, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us
  %i.bi = call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %i.be) ; 2 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = trunc i64 %i.be to i1
  br i1 %i.bl, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i38, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us: ; preds = %bb.l
  %i.bm = add nsw i64 %i.be, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = icmp ugt i16 %i.br, 299
  br i1 %i.bs, label %bb.m, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i38, !prof !19

bb.m:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 %i.be, ptr %1, align 8
  %i.bt = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us: ; preds = %bb.m, %bb.k
  %.sroa.09.0.i.i.i41.us = phi i64 [ %i.bt, %bb.m ], [ %i.bi, %bb.k ]
  %i.bu = lshr i64 %.sroa.09.0.i.i.i41.us, 32
  %6 = trunc nuw i64 %i.bu to i32
  %i.bv = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  %.sroa.0.0.in20.i42.us = and i32 %i.by, %6      ; 2 uses
  %.sroa.0.021.i43.us = zext i32 %.sroa.0.0.in20.i42.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i46.us, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us

.lr.ph.i46.us:                                    ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us, %bb.n
  %.sroa.0.025.i47.us = phi i64 [ %.sroa.0.0.i51.us, %bb.n ], [ %.sroa.0.021.i43.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ]
  %.sroa.0.0.in24.i48.us = phi i32 [ %.sroa.0.0.in.i50.us, %bb.n ], [ %.sroa.0.0.in20.i42.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ]
  %.023.i49.us = phi i32 [ %i.ca, %bb.n ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ] ; 2 uses
  %i.bz = icmp eq i64 %spec.select.i.us, %.sroa.0.025.i47.us
  br i1 %i.bz, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i46.us
  %7 = add i32 %.023.i49.us, %.sroa.0.0.in24.i48.us
  %i.ca = add nuw nsw i32 %.023.i49.us, 1         ; 2 uses
  %.sroa.0.0.in.i50.us = and i32 %7, %i.by        ; 2 uses
  %.sroa.0.0.i51.us = zext i32 %.sroa.0.0.in.i50.us to i64 ; 2 uses
  %exitcond.not.i52.us = icmp eq i32 %i.ca, %.03593.us
  br i1 %exitcond.not.i52.us, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us, label %.lr.ph.i46.us, !llvm.loop !178

_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us: ; preds = %bb.n, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us
  %spec.select.i45.us = phi i64 [ %.sroa.0.021.i43.us, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i40.us ], [ %.sroa.0.0.i51.us, %bb.n ]
  %.not86.us = icmp eq i64 %spec.select.i45.us, %spec.select.i.us
  br i1 %.not86.us, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us: ; preds = %.lr.ph.i46.us, %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us
  %i.cb = add i64 %.sroa.069.090.us, 1
  br label %bb.p

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.us, %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit37.us, %bb.j
  %i.cc = load i32, ptr %3, align 4
  call void @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE4SwapENS0_13InternalIndexES6_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %.sroa.069.090.us, i64 %spec.select.i.us, i32 noundef %i.cc)
  br label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.cd = add nuw nsw i64 %.sroa.069.090.us, 1
  br label %bb.p, !llvm.loop !179

_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.ce = add nuw nsw i64 %.sroa.069.090.us, 1
  br label %bb.p, !llvm.loop !179

bb.p:                                             ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.o, %.critedge.us, %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us
  %.sroa.069.2.us = phi i64 [ %i.ce, %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.cd, %bb.o ], [ %.sroa.069.090.us, %.critedge.us ], [ %i.cb, %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us ] ; 2 uses
  %.4.us = phi i1 [ %.192.us, %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.192.us, %bb.o ], [ %.192.us, %.critedge.us ], [ false, %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit53.thread.us ] ; 2 uses
  %i.cf = icmp ult i64 %.sroa.069.2.us, %i.x
  br i1 %i.cf, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.p
  %i.cg = add nuw nsw i32 %.03593.us, 1
  br i1 %.4.us, label %.split.us, label %.preheader.us, !llvm.loop !180

.split.us:                                        ; preds = %._crit_edge.us
  %i.ch = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ci = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.cj = icmp eq i64 %i.x, 1
  br i1 %i.cj, label %.lr.ph.epil.preheader, label %.split.us.new

.split.us.new:                                    ; preds = %.split.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %bb.g, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.us
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i38: ; preds = %bb.l, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i39.us
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %i.ck = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.ck, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split.us
  %.sroa.057.095.epil.init = phi i64 [ 0, %.split.us ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod102)
  %i.cl = mul i64 %.sroa.057.095.epil.init, 12884901888
  %sext.i54.epil = add i64 %i.cl, 12884901888
  %i.cm = ashr exact i64 %sext.i54.epil, 29
  %i.cn = getelementptr inbounds i8, ptr %i.y, i64 %i.cm ; 2 uses
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8
  %i.cp = icmp eq i64 %i.co, %i.ch
  br i1 %i.cp, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.ci, ptr %i.cn monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.cq monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

.lr.ph:                                           ; preds = %bb.t, %.split.us.new
  %.sroa.057.095 = phi i64 [ 0, %.split.us.new ], [ %i.db, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.new ], [ %niter.next.1, %bb.t ]
  %i.cr = mul i64 %.sroa.057.095, 12884901888
  %sext.i54 = add i64 %i.cr, 12884901888
  %i.cs = ashr exact i64 %sext.i54, 29
  %i.ct = getelementptr inbounds i8, ptr %i.y, i64 %i.cs ; 2 uses
  %i.cu = load atomic volatile i64, ptr %i.ct monotonic, align 8
  %i.cv = icmp eq i64 %i.cu, %i.ch
  br i1 %i.cv, label %bb.r, label %.lr.ph.1

bb.r:                                             ; preds = %.lr.ph
  store atomic volatile i64 %i.ci, ptr %i.ct monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.r, %.lr.ph
  %i.cw = mul i64 %.sroa.057.095, 12884901888
  %sext.i54.1 = add i64 %i.cw, 25769803776
  %i.cx = ashr exact i64 %sext.i54.1, 29
  %i.cy = getelementptr inbounds i8, ptr %i.y, i64 %i.cx ; 2 uses
  %i.cz = load atomic volatile i64, ptr %i.cy monotonic, align 8
  %i.da = icmp eq i64 %i.cz, %i.ch
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.1
  store atomic volatile i64 %i.ci, ptr %i.cy monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.1
  %i.db = add nuw nsw i64 %.sroa.057.095, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE(ptr %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %1, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.756", align 8 ; 4 uses
  %i.a = tail call i64 @_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE(i64 %2) ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !18

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.b
  %i.e = add nsw i64 %2, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp ugt i16 %i.j, 299
  br i1 %i.k, label %bb.c, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, !prof !19

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.395) #29
  unreachable

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %2, ptr %5, align 8
  %i.l = call i64 @_ZN2v88internal10JSReceiver15GetIdentityHashEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a, %bb.c
  %.sroa.09.0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.a, %bb.a ]
  %i.m = lshr i64 %.sroa.09.0.i.i, 32
  %6 = trunc nuw i64 %i.m to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %.sroa.0.0.in20 = and i32 %i.r, %6              ; 2 uses
  %.sroa.0.021 = zext i32 %.sroa.0.0.in20 to i64  ; 2 uses
  %.not22 = icmp sgt i32 %3, 1
  br i1 %.not22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit, %bb.d
  %.sroa.0.025 = phi i64 [ %.sroa.0.0, %bb.d ], [ %.sroa.0.021, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.sroa.0.0.in24 = phi i32 [ %.sroa.0.0.in, %bb.d ], [ %.sroa.0.0.in20, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ]
  %.023 = phi i32 [ %i.t, %bb.d ], [ 1, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %i.s = icmp eq i64 %4, %.sroa.0.025
  br i1 %i.s, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %7 = add i32 %.023, %.sroa.0.0.in24
  %i.t = add nuw nsw i32 %.023, 1                 ; 2 uses
  %.sroa.0.0.in = and i32 %7, %i.r                ; 2 uses
  %.sroa.0.0 = zext i32 %.sroa.0.0.in to i64      ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !178

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %spec.select = phi i64 [ %.sroa.0.021, %_ZN2v88internal24ObjectHashTableShapeBase13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit ], [ %4, %.lr.ph ], [ %.sroa.0.0, %bb.d ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE4SwapENS0_13InternalIndexES6_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.b = mul i64 %1, 12884901888
  %sext = add i64 %i.b, 12884901888
  %i.c = ashr exact i64 %sext, 32                 ; 3 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 6 uses
  %i.f = getelementptr [8 x i8], ptr %i.a, i64 %i.c
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 4 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 6 uses
  %i.i = getelementptr [8 x i8], ptr %i.a, i64 %i.c
  %i.j = getelementptr i8, ptr %i.i, i64 16       ; 4 uses
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8 ; 6 uses
  %i.l = mul i64 %2, 12884901888
  %sext68 = add i64 %i.l, 12884901888
  %i.m = ashr exact i64 %sext68, 32               ; 9 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.m ; 4 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.o, ptr %i.d monotonic, align 8
  %i.p = icmp sgt i32 %3, 1                       ; 2 uses
  %i.q = trunc i64 %i.o to i1
  %or.cond.i.i.i.i.i = select i1 %i.p, i1 %i.q, i1 false
  %i.r = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 12 uses
  br i1 %or.cond.i.i.i.i.i, label %bb.a, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.a:                                             ; preds = %.preheader
  %i.t = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.u = and i64 %i.r, -262144
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load i64, ptr %i.v, align 262144         ; 2 uses
  %i.x = and i64 %i.w, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = and i64 %i.w, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.z = and i64 %i.o, -262144
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 262144
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.s, i64 noundef %i.t, i64 %i.o) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.s, i64 %i.t, i64 %i.o) #28
  br label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader

_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.preheader
  %.pre64 = and i64 %i.r, -262144
  %.pre66 = inttoptr i64 %.pre64 to ptr
  br i1 %i.p, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47.us.preheader

_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader: ; preds = %bb.e, %bb.d, %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %.pre-phi6772 = phi ptr [ %.pre66, %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %i.v, %bb.d ], [ %i.v, %bb.e ] ; 5 uses
  %i.ac = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.ae, ptr %i.g monotonic, align 8
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.k, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

.split.us:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.s, %bb.t
  store atomic volatile i64 %i.e, ptr %i.n monotonic, align 8
  %i.ag = trunc i64 %i.e to i1
  br i1 %i.ag, label %bb.f, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.preheader

bb.f:                                             ; preds = %.split.us
  %i.ah = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ai = load i64, ptr %.pre-phi6772, align 8    ; 2 uses
  %i.aj = and i64 %i.ai, 32
  %.not.i.i.i.i.i.i37 = icmp eq i64 %i.aj, 0
  %i.ak = and i64 %i.ai, 25
  %.not37.i.i.i.i.i.i38 = icmp eq i64 %i.ak, 0
  br i1 %.not37.i.i.i.i.i.i38, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = and i64 %i.e, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i39 = load i64, ptr %i.am, align 262144
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i39, 25
  %.not38.i.i.i.i.i.i40 = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i.i.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.s, i64 noundef %i.ah, i64 %i.e) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i37, label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.preheader, label %bb.j, !prof !28

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.s, i64 %i.ah, i64 %i.e) #28
  br label %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.preheader

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47.us.preheader: ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.ao = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  store atomic volatile i64 %i.aq, ptr %i.g monotonic, align 8
  %i.ar = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8
  store atomic volatile i64 %i.at, ptr %i.j monotonic, align 8
  store atomic volatile i64 %i.e, ptr %i.n monotonic, align 8
  %i.au = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store atomic volatile i64 %i.h, ptr %i.av monotonic, align 8
  %i.aw = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store atomic volatile i64 %i.k, ptr %i.ax monotonic, align 8
  br label %.split52.us

_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit41.split.preheader: ; preds = %.split.us, %bb.i, %bb.j
  %i.ay = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.az = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  store atomic volatile i64 %i.h, ptr %i.az monotonic, align 8
  %i.ba = trunc i64 %i.h to i1
  br i1 %i.ba, label %bb.u, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader
  %i.bb = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bc = load i64, ptr %.pre-phi6772, align 8    ; 2 uses
  %i.bd = and i64 %i.bc, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bd, 0
  %i.be = and i64 %i.bc, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bf = and i64 %i.ae, -262144
  %i.bg = inttoptr i64 %i.bf to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 262144
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.s, i64 noundef %i.bb, i64 %i.ae) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.o, !prof !28

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.s, i64 %i.bb, i64 %i.ae) #28
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal9HashTableINS0_18ObjectTwoHashTableENS0_25ObjectMultiHashTableShapeILi2EEEE7set_keyEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.split.preheader, %bb.n, %bb.o
  %i.bi = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8 ; 5 uses
  store atomic volatile i64 %i.bk, ptr %i.j monotonic, align 8
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %bb.p, label %.split.us

bb.p:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.bm = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.bn = load i64, ptr %.pre-phi6772, align 8    ; 2 uses
  %i.bo = and i64 %i.bn, 32
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.bo, 0
  %i.bp = and i64 %i.bn, 25
  %.not37.i.i.i.i.i.1 = icmp eq i64 %i.bp, 0
  br i1 %.not37.i.i.i.i.i.1, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bq = and i64 %i.bk, -262144
  %i.br = inttoptr i64 %i.bq to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.br, align 262144
  %i.bs = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, 25
  %.not38.i.i.i.i.i.1 = icmp eq i64 %i.bs, 0
  br i1 %.not38.i.i.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.s, i64 noundef %i.bm, i64 %i.bk) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  br i1 %.not.i.i.i.i.i.1, label %.split.us, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.s, i64 %i.bm, i64 %i.bk) #28
  br label %.split.us

.split52.us:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47, %bb.ac, %bb.ad, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit47.us.preheader
  ret void

end_hunk_3
