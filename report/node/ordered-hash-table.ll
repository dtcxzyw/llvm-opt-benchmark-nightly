inline.NumInlined: 2106
inline.NumDeleted: 554
begin_hunk_0_@_ZN2v88internal28OrderedNameDictionaryHandler9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS4_INS0_4NameEEE:bb.a
bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.09.in25.i = phi i8 [ %.09.in22.i, %.lr.ph.i ], [ %.09.in.i, %bb.e ] ; 2 uses
  %.0926.i = zext i8 %.09.in25.i to i32           ; 2 uses
  %i.y = mul nuw nsw i32 %.0926.i, 24
  %i.z = add nuw nsw i32 %i.y, 24
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = add i64 %i.a, %i.aa
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ad, %2
  br i1 %i.ae, label %.thread.split.loop.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add nuw nsw i32 %i.x, %.0926.i
  %.pn.i = zext nneg i32 %i.af to i64
  %.09.in.in.in.i = add i64 %i.a, %.pn.i
  %.09.in.in.i = inttoptr i64 %.09.in.in.in.i to ptr
  %.09.in.i = load i8, ptr %.09.in.in.i, align 1  ; 2 uses
  %.not.i = icmp eq i8 %.09.in.i, -1
  br i1 %.not.i, label %_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.d

.thread.split.loop.exit.i:                        ; preds = %bb.d
  %i.ag = zext i8 %.09.in25.i to i64
  br label %_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = icmp ult i64 %i.ai, 4294967296
  br i1 %i.aj, label %_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add i64 %2, -1
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load atomic i32, ptr %i.am acquire, align 4 ; 3 uses
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZNK2v88internal4Name4hashEv.exit.i14, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.al, i32 noundef %i.an)
  br label %_ZNK2v88internal4Name4hashEv.exit.i14

_ZNK2v88internal4Name4hashEv.exit.i14:            ; preds = %bb.h, %bb.g
  %.0.in.i.i15 = phi i32 [ %i.aq, %bb.h ], [ %i.an, %bb.g ]
  %.0.i.i16 = lshr i32 %.0.in.i.i15, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = lshr i64 %i.as, 32
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = add i32 %i.au, 1073741823
  %i.aw = and i32 %i.av, %.0.i.i16
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr [8 x i8], ptr %i.b, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 48
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8 ; 2 uses
  %.08.in17.i = lshr i64 %i.ba, 32                ; 2 uses
  %.not18.i = icmp eq i64 %.08.in17.i, 4294967295
  br i1 %.not18.i, label %_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %_ZNK2v88internal4Name4hashEv.exit.i14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.08.i40 = trunc nuw i64 %.08.in17.i to i32
  %i.bc = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.bd = lshr i64 %i.bc, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = shl nsw i32 %.08.i40, 2
  %i.bg = add i32 %i.bf, 4                        ; 2 uses
  %i.bh = add i32 %i.bg, %i.be
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bi
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %i.bl = icmp eq i64 %i.bk, %2
  br i1 %i.bl, label %.thread.loopexit.split.loop.exit15.i, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %.08.i = trunc nuw i64 %.08.in.i to i32
  %i.bm = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.bn = lshr i64 %i.bm, 32
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = shl nsw i32 %.08.i, 2
  %i.bq = add i32 %i.bp, 4                        ; 2 uses
  %i.br = add i32 %i.bq, %i.bo
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bs
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = icmp eq i64 %i.bu, %2
  br i1 %i.bv, label %.thread.loopexit.split.loop.exit15.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i17, %bb.i
  %i.bw = phi i32 [ %i.bq, %bb.i ], [ %i.bg, %.lr.ph.i17 ]
  %i.bx = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.by = lshr i64 %i.bx, 32
  %i.bz = trunc nuw i64 %i.by to i32
  %i.ca = add i32 %i.bw, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [8 x i8], ptr %i.b, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 40
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8 ; 2 uses
  %.08.in.i = lshr i64 %i.ce, 32                  ; 2 uses
  %.not.i18 = icmp eq i64 %.08.in.i, 4294967295
  br i1 %.not.i18, label %_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.i

.thread.loopexit.split.loop.exit15.i:             ; preds = %bb.i, %.lr.ph.i17
  %.08.in.in19.i.lcssa = phi i64 [ %i.ba, %.lr.ph.i17 ], [ %i.ce, %bb.i ]
  %i.cf = ashr i64 %.08.in.in19.i.lcssa, 32
  br label %_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal21SmallOrderedHashTableINS0_26SmallOrderedNameDictionaryEE9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %.lr.ph, %bb.e, %.thread.loopexit.split.loop.exit15.i, %_ZNK2v88internal4Name4hashEv.exit.i14, %bb.f, %.thread.split.loop.exit.i, %_ZNK2v88internal4Name4hashEv.exit.i
  %.sroa.013.0 = phi i64 [ -1, %bb.e ], [ %i.ag, %.thread.split.loop.exit.i ], [ -1, %_ZNK2v88internal4Name4hashEv.exit.i ], [ -1, %bb.f ], [ %i.cf, %.thread.loopexit.split.loop.exit15.i ], [ -1, %_ZNK2v88internal4Name4hashEv.exit.i14 ], [ -1, %.lr.ph ]
  ret i64 %.sroa.013.0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZN2v88internal28OrderedNameDictionaryHandler7ValueAtENS0_6TaggedINS0_10HeapObjectEEENS0_13InternalIndexE(i64 %0, i64 %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = add i64 %0, -1                           ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 247
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = mul i64 %1, 103079215104
  %sext.i = add i64 %i.h, 137438953472
  %i.i = ashr exact i64 %sext.i, 32
  %i.j = add i64 %i.a, %i.i
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = trunc i64 %1 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = shl nsw i32 %i.m, 2
  %i.s = add i32 %i.r, 4
  %i.t = add i32 %i.s, %i.q
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr %i.b, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.012.0 = phi i64 [ %i.l, %bb.b ], [ %i.x, %bb.c ]
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal28OrderedNameDictionaryHandler10ValueAtPutENS0_6TaggedINS0_10HeapObjectEEENS0_13InternalIndexENS2_INS0_6ObjectEEE(i64 %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i64 %0, -1                           ; 4 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 247
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = mul i64 %1, 103079215104
  %sext.i = add i64 %i.h, 137438953472
  %i.i = ashr exact i64 %sext.i, 32
  %i.j = add i64 %i.a, %i.i                       ; 3 uses
  %i.k = inttoptr i64 %i.j to ptr
  store atomic volatile i64 %2, ptr %i.k monotonic, align 8
  %i.l = trunc i64 %2 to i1
  br i1 %i.l, label %bb.c, label %_ZN2v88internal26SmallOrderedNameDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %0, -262144
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 262144         ; 2 uses
  %i.p = and i64 %i.o, 32
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  %i.q = and i64 %i.o, 25
  %.not37.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not37.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = and i64 %2, -262144
  %i.s = inttoptr i64 %i.r to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.s, align 262144
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not38.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %0, i64 noundef %i.j, i64 %2) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i, label %_ZN2v88internal26SmallOrderedNameDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %3, !prof !8

3:                                                ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %0, i64 %i.j, i64 %2) #13
  br label %_ZN2v88internal26SmallOrderedNameDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.g:                                             ; preds = %bb.a
  %i.u = trunc i64 %1 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = lshr i64 %i.w, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = shl nsw i32 %i.u, 2
  %i.aa = add i32 %i.z, 4
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 24     ; 2 uses
  store atomic volatile i64 %2, ptr %i.ae monotonic, align 8
  %i.af = trunc i64 %2 to i1
  br i1 %i.af, label %bb.h, label %_ZN2v88internal26SmallOrderedNameDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = or disjoint i64 %i.a, 1                 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ai = and i64 %i.a, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 262144       ; 2 uses
  %i.al = and i64 %i.ak, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  %i.am = and i64 %i.ak, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = and i64 %2, -262144
  %i.ao = inttoptr i64 %i.an to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 262144
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ag, i64 noundef %i.ah, i64 %2) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal26SmallOrderedNameDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ag, i64 %i.ah, i64 %2) #13
  br label %_ZN2v88internal26SmallOrderedNameDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal26SmallOrderedNameDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l, %bb.k, %bb.g, %3, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i32 @_ZN2v88internal28OrderedNameDictionaryHandler9DetailsAtENS0_6TaggedINS0_10HeapObjectEEENS0_13InternalIndexE(i64 %0, i64 %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = add i64 %0, -1                           ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 247
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = mul i64 %1, 103079215104
  %sext.i = add i64 %i.h, 171798691840
  %i.i = ashr exact i64 %sext.i, 32
  %i.j = add i64 %i.a, %i.i
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = trunc i64 %1 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = shl nsw i32 %i.m, 2
  %i.s = add i32 %i.r, 4
  %i.t = add i32 %i.s, %i.q
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr %i.b, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.012.0.in.in = phi i64 [ %i.l, %bb.b ], [ %i.x, %bb.c ]
  %.sroa.012.0.in = lshr i64 %.sroa.012.0.in.in, 32
  %.sroa.012.0 = trunc nuw i64 %.sroa.012.0.in to i32
  ret i32 %.sroa.012.0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal28OrderedNameDictionaryHandler12DetailsAtPutENS0_6TaggedINS0_10HeapObjectEEENS0_13InternalIndexENS0_15PropertyDetailsE(i64 %0, i64 %1, i32 %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = add i64 %0, -1                           ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 247
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %2, 1
  %i.i = ashr exact i32 %i.h, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 32
  %i.l = mul i64 %1, 103079215104
  %sext.i = add i64 %i.l, 171798691840
  %i.m = ashr exact i64 %sext.i, 32
  %i.n = add i64 %i.a, %i.m
  %i.o = inttoptr i64 %i.n to ptr
  store atomic volatile i64 %i.k, ptr %i.o monotonic, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = trunc i64 %1 to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = shl nsw i32 %i.p, 2
  %i.v = add i32 %i.u, 4
  %i.w = add i32 %i.v, %i.t
  %i.x = shl i32 %2, 1
  %i.y = ashr exact i32 %i.x, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 32
  %i.ab = sext i32 %i.w to i64
  %i.ac = getelementptr [8 x i8], ptr %i.b, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  store atomic volatile i64 %i.aa, ptr %i.ad monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZN2v88internal28OrderedNameDictionaryHandler4HashENS0_6TaggedINS0_10HeapObjectEEE(i64 %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = add i64 %0, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 247
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %0, 7
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i32, ptr %i.i, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.n, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal28OrderedNameDictionaryHandler7SetHashENS0_6TaggedINS0_10HeapObjectEEEi(i64 %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = add i64 %0, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 247
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %0, 7
  %i.i = inttoptr i64 %i.h to ptr
  store i32 %1, ptr %i.i, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = sext i32 %1 to i64
  %i.k = shl nsw i64 %i.j, 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store atomic volatile i64 %i.k, ptr %i.l monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden i64 @_ZN2v88internal28OrderedNameDictionaryHandler5KeyAtENS0_6TaggedINS0_10HeapObjectEEENS0_13InternalIndexE(i64 %0, i64 %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = add i64 %0, -1                           ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 247
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = mul i64 %1, 103079215104
  %sext = add i64 %i.h, 103079215104
  %i.i = ashr exact i64 %sext, 32
  %i.j = add i64 %i.i, %i.a
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = trunc i64 %1 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = shl nsw i32 %i.m, 2
  %i.s = add i32 %i.r, 4
  %i.t = add i32 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.016.0 = phi i64 [ %i.l, %bb.b ], [ %i.x, %bb.c ]
  ret i64 %.sroa.016.0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZN2v88internal28OrderedNameDictionaryHandler16NumberOfElementsENS0_6TaggedINS0_10HeapObjectEEE(i64 %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = add i64 %0, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
end_hunk_0
