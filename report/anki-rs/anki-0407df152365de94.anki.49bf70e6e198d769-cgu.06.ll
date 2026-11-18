Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.06?download=true
inline.NumInlined: 5983
inline.NumDeleted: 3458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN5prost7message7Message6encode17h155bc01de10d2c0aE:bb.a
  %i.t = add nuw i64 %.val.i, 1
  %i.u = add nuw i64 %i.t, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !8784, !noundef !5 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0                      ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = or i64 %i.w, 1
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add nuw nsw i64 %i.ad, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.02.0.i = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !8784, !noundef !5 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = or i32 %i.ag, 1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = xor i64 %i.ak, 63
  %i.am = mul nuw nsw i64 %i.al, 9
  %i.an = add nuw nsw i64 %i.am, 73
  %i.ao = lshr i64 %i.an, 6
  %i.ap = add nuw nsw i64 %i.ao, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.03.0.i = phi i64 [ %i.ap, %bb.h ], [ 0, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !8, !alias.scope !8784, !noundef !5
  %.not.i = icmp eq i64 %i.ar, -9223372036854775808 ; 2 uses
  br i1 %.not.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h13b3d1b0fc4a395cE.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call fastcc noundef i64 @"_ZN75_$LT$anki_proto..decks..deck..Common$u20$as$u20$prost..message..Message$GT$11encoded_len17h6dd5b4e8bb06781cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) dereferenceable_or_null(48) %i.aq) ; 2 uses
  %i.at = or i64 %i.as, 1
  %i.au = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = xor i64 %i.au, 63
  %i.aw = mul nuw nsw i64 %i.av, 9
  %i.ax = add nuw nsw i64 %i.aw, 73
  %i.ay = lshr i64 %i.ax, 6
  %i.az = add nuw i64 %i.as, 1
  %i.ba = add nuw i64 %i.az, %i.ay
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h13b3d1b0fc4a395cE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h13b3d1b0fc4a395cE.exit.i": ; preds = %bb.j, %bb.i
  %.sroa.02.0.i.i = phi i64 [ %i.ba, %bb.j ], [ 0, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !25, !alias.scope !8784, !noundef !5 ; 2 uses
  switch i64 %i.bc, label %bb.l [
    i64 -9223372036854775807, label %"_ZN67_$LT$anki_proto..decks..Deck$u20$as$u20$prost..message..Message$GT$11encoded_len17he6160bed877837c5E.exit"
    i64 -9223372036854775808, label %bb.k
  ]

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h13b3d1b0fc4a395cE.exit.i"
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.be = tail call fastcc noundef i64 @"_ZN77_$LT$anki_proto..decks..deck..Filtered$u20$as$u20$prost..message..Message$GT$11encoded_len17h87ea3f855b220cf3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bd)
  br label %_ZN4core3ops8function6FnOnce9call_once17h705f8bca4a7c263cE.exit.i.i

bb.l:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h13b3d1b0fc4a395cE.exit.i"
  %i.bf = tail call fastcc noundef i64 @"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len17h732c5cb820999000E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) dereferenceable_or_null(96) %i.bb)
  br label %_ZN4core3ops8function6FnOnce9call_once17h705f8bca4a7c263cE.exit.i.i

_ZN4core3ops8function6FnOnce9call_once17h705f8bca4a7c263cE.exit.i.i: ; preds = %bb.l, %bb.k
  %.sink5.i.i.i.i = phi i64 [ %i.bf, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  %i.bg = or i64 %.sink5.i.i.i.i, 1
  %i.bh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = xor i64 %i.bh, 63
  %i.bj = mul nuw nsw i64 %i.bi, 9
  %i.bk = add nuw nsw i64 %i.bj, 73
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = add i64 %.sink5.i.i.i.i, 1
  %i.bn = add i64 %i.bm, %i.bl
  br label %"_ZN67_$LT$anki_proto..decks..Deck$u20$as$u20$prost..message..Message$GT$11encoded_len17he6160bed877837c5E.exit"

"_ZN67_$LT$anki_proto..decks..Deck$u20$as$u20$prost..message..Message$GT$11encoded_len17he6160bed877837c5E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h13b3d1b0fc4a395cE.exit.i", %_ZN4core3ops8function6FnOnce9call_once17h705f8bca4a7c263cE.exit.i.i
  %.sroa.02.0.i13.i = phi i64 [ %i.bn, %_ZN4core3ops8function6FnOnce9call_once17h705f8bca4a7c263cE.exit.i.i ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h13b3d1b0fc4a395cE.exit.i" ]
  %i.bo = add nuw i64 %.sroa.01.0.i, %.sroa.0.0.i
  %i.bp = add nuw i64 %i.bo, %.sroa.02.0.i
  %i.bq = add nuw i64 %i.bp, %.sroa.03.0.i
  %i.br = add i64 %i.bq, %.sroa.02.0.i.i
  %i.bs = add i64 %i.br, %.sroa.02.0.i13.i        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.bt, align 8, !noundef !5 ; 2 uses
  %i.bu = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.bw = icmp ugt i64 %i.bs, %i.bv
  br i1 %i.bw, label %bb.y, label %bb.m

bb.m:                                             ; preds = %"_ZN67_$LT$anki_proto..decks..Deck$u20$as$u20$prost..message..Message$GT$11encoded_len17he6160bed877837c5E.exit"
  br i1 %i.d, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5prost8encoding5int646encode17hf5ca04a1bdde0678E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not.i.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.x, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5prost8encoding5int646encode17hf5ca04a1bdde0678E(i32 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %i.ah, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN5prost8encoding5int326encode17ha2e6f6ff8203a739E(i32 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8785
  store i8 42, ptr %i.a, align 1, !noalias !8785
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !8786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8785
  %i.bx = call fastcc noundef i64 @"_ZN75_$LT$anki_proto..decks..deck..Common$u20$as$u20$prost..message..Message$GT$11encoded_len17h6dd5b4e8bb06781cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq)
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !8786
  call void @"_ZN75_$LT$anki_proto..decks..deck..Common$u20$as$u20$prost..message..Message$GT$10encode_raw17hbb78805109002c53E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not1.i = icmp eq i64 %i.bc, -9223372036854775807
  br i1 %.not1.i, label %"_ZN67_$LT$anki_proto..decks..Deck$u20$as$u20$prost..message..Message$GT$10encode_raw17hf0ee0200b2b93ac2E.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN10anki_proto5decks4deck4Kind6encode17hdf4c389415c8400cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN67_$LT$anki_proto..decks..Deck$u20$as$u20$prost..message..Message$GT$10encode_raw17hf0ee0200b2b93ac2E.exit"

bb.y:                                             ; preds = %"_ZN67_$LT$anki_proto..decks..Deck$u20$as$u20$prost..message..Message$GT$11encoded_len17he6160bed877837c5E.exit"
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bs, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bv, ptr %i.bz, align 8
  br label %"_ZN67_$LT$anki_proto..decks..Deck$u20$as$u20$prost..message..Message$GT$10encode_raw17hf0ee0200b2b93ac2E.exit"

"_ZN67_$LT$anki_proto..decks..Deck$u20$as$u20$prost..message..Message$GT$10encode_raw17hf0ee0200b2b93ac2E.exit": ; preds = %bb.x, %bb.w, %bb.y
  %storemerge = phi i64 [ 1, %bb.y ], [ 0, %bb.w ], [ 0, %bb.x ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h1c6436b3434bb983E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8787 {
bb.a:
  %i.a = tail call fastcc noundef i64 @"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$11encoded_len17h99d335e4cc563b68E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.e = icmp ugt i64 %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$10encode_raw17h5f1f1f4933c5ef60E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h1cac3cca242e3cbaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8788 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %.not.i.not.i = icmp eq i64 %.val2, 0
  br i1 %.not.i.not.i, label %.thread, label %"_ZN71_$LT$anki_proto..generic..String$u20$as$u20$prost..message..Message$GT$11encoded_len17hf9f5bbf7e15a9152E.exit"

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val5 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val5, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN71_$LT$anki_proto..generic..String$u20$as$u20$prost..message..Message$GT$10encode_raw17h9202cbac55070e80E.exit"

"_ZN71_$LT$anki_proto..generic..String$u20$as$u20$prost..message..Message$GT$11encoded_len17hf9f5bbf7e15a9152E.exit": ; preds = %bb.a
  %i.b = icmp sgt i64 %.val2, -1
  tail call void @llvm.assume(i1 %i.b)
  %i.c = or i64 %.val2, 1
  %i.d = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = mul nuw nsw i64 %i.e, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6
  %i.i = add nuw i64 %.val2, 1
  %i.j = add nuw i64 %i.i, %i.h                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.l = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.n = icmp ugt i64 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN71_$LT$anki_proto..generic..String$u20$as$u20$prost..message..Message$GT$11encoded_len17hf9f5bbf7e15a9152E.exit"
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN71_$LT$anki_proto..generic..String$u20$as$u20$prost..message..Message$GT$10encode_raw17h9202cbac55070e80E.exit"

bb.c:                                             ; preds = %"_ZN71_$LT$anki_proto..generic..String$u20$as$u20$prost..message..Message$GT$11encoded_len17hf9f5bbf7e15a9152E.exit"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.p, align 8
  br label %"_ZN71_$LT$anki_proto..generic..String$u20$as$u20$prost..message..Message$GT$10encode_raw17h9202cbac55070e80E.exit"

"_ZN71_$LT$anki_proto..generic..String$u20$as$u20$prost..message..Message$GT$10encode_raw17h9202cbac55070e80E.exit": ; preds = %bb.b, %.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h29a7577b908ee033E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8789 {
bb.a:
  %.val2 = load i8, ptr %1, align 1, !range !24, !noundef !5 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.val3 = load i8, ptr %i.a, align 1             ; 2 uses
  %i.b = zext nneg i8 %.val2 to i64
  %i.c = zext i8 %.val3 to i64
  %spec.select1.i = add nuw nsw i64 %i.c, %i.b
  %i.d = shl nuw nsw i64 %spec.select1.i, 1       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.f = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.h = icmp samesign ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nuw i8 %.val2 to i1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = trunc nuw i8 %.val3 to i1
  br i1 %i.j, label %bb.e, label %"_ZN101_$LT$anki_proto..scheduler..ScheduleCardsAsNewDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h76f7975e213adbe0E.exit"

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN101_$LT$anki_proto..scheduler..ScheduleCardsAsNewDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h76f7975e213adbe0E.exit"

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.l, align 8
  br label %"_ZN101_$LT$anki_proto..scheduler..ScheduleCardsAsNewDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h76f7975e213adbe0E.exit"

"_ZN101_$LT$anki_proto..scheduler..ScheduleCardsAsNewDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h76f7975e213adbe0E.exit": ; preds = %bb.e, %bb.c, %bb.f
  %storemerge = phi i64 [ 1, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h29f1d191abf1c6c1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8790 {
bb.a:
  %.val2 = load i8, ptr %1, align 1, !range !24, !noundef !5 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.val3 = load i8, ptr %i.a, align 1             ; 2 uses
  %i.b = zext nneg i8 %.val2 to i64
  %i.c = zext i8 %.val3 to i64
  %spec.select1.i = add nuw nsw i64 %i.c, %i.b
  %i.d = shl nuw nsw i64 %spec.select1.i, 1       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.f = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.h = icmp samesign ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nuw i8 %.val2 to i1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = trunc nuw i8 %.val3 to i1
  br i1 %i.j, label %bb.e, label %"_ZN93_$LT$anki_proto..scheduler..RepositionDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h1489bec3ae687011E.exit"

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN93_$LT$anki_proto..scheduler..RepositionDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h1489bec3ae687011E.exit"

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.l, align 8
  br label %"_ZN93_$LT$anki_proto..scheduler..RepositionDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h1489bec3ae687011E.exit"

"_ZN93_$LT$anki_proto..scheduler..RepositionDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h1489bec3ae687011E.exit": ; preds = %bb.e, %bb.c, %bb.f
  %storemerge = phi i64 [ 1, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h2a56b5b027c9442cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8791 {
bb.a:
  %.val = load i32, ptr %1, align 4, !noundef !5  ; 2 uses
  %i.a = icmp eq i32 %.val, 0
  br i1 %i.a, label %.thread, label %"_ZN71_$LT$anki_proto..generic..UInt32$u20$as$u20$prost..message..Message$GT$11encoded_len17h6706ba5381590bb2E.exit"

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val24 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val24, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN71_$LT$anki_proto..generic..UInt32$u20$as$u20$prost..message..Message$GT$10encode_raw17hf940cbc4add2a4b0E.exit"

"_ZN71_$LT$anki_proto..generic..UInt32$u20$as$u20$prost..message..Message$GT$11encoded_len17h6706ba5381590bb2E.exit": ; preds = %bb.a
  %i.b = or i32 %.val, 1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = xor i32 %i.c, 31
  %i.e = mul nuw nsw i32 %i.d, 9
  %i.f = add nuw nsw i32 %i.e, 73
  %i.g = lshr i32 %i.f, 6
  %narrow.i.i = add nuw nsw i32 %i.g, 1
  %i.h = zext nneg i32 %narrow.i.i to i64         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val2 = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.j = icmp sgt i64 %.val2, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %.val2, 9223372036854775807      ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN71_$LT$anki_proto..generic..UInt32$u20$as$u20$prost..message..Message$GT$11encoded_len17h6706ba5381590bb2E.exit"
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN71_$LT$anki_proto..generic..UInt32$u20$as$u20$prost..message..Message$GT$10encode_raw17hf940cbc4add2a4b0E.exit"

bb.c:                                             ; preds = %"_ZN71_$LT$anki_proto..generic..UInt32$u20$as$u20$prost..message..Message$GT$11encoded_len17h6706ba5381590bb2E.exit"
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.n, align 8
  br label %"_ZN71_$LT$anki_proto..generic..UInt32$u20$as$u20$prost..message..Message$GT$10encode_raw17hf940cbc4add2a4b0E.exit"

"_ZN71_$LT$anki_proto..generic..UInt32$u20$as$u20$prost..message..Message$GT$10encode_raw17hf940cbc4add2a4b0E.exit": ; preds = %bb.b, %.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h2b0666c962b32bd5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(440) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8792 {
bb.a:
  %i.a = tail call fastcc noundef i64 @"_ZN83_$LT$anki_proto..scheduler..SchedulingStates$u20$as$u20$prost..message..Message$GT$11encoded_len17he6935fc4139568bfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(440) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.e = icmp ugt i64 %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN83_$LT$anki_proto..scheduler..SchedulingStates$u20$as$u20$prost..message..Message$GT$10encode_raw17h4b16411bf384a55cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(440) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h355fed056c975954E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8793 {
bb.a:
  %i.a = tail call fastcc noundef i64 @"_ZN75_$LT$anki_proto..decks..DeckTreeNode$u20$as$u20$prost..message..Message$GT$11encoded_len17hd541363f65d77ae8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.e = icmp ugt i64 %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN75_$LT$anki_proto..decks..DeckTreeNode$u20$as$u20$prost..message..Message$GT$10encode_raw17he82723f812c40990E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h3db6efc3fba17cf0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8802 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8803)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8803, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %i.b, 2
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = add i64 %i.j, %i.e
  br label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i

_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !8803, !nonnull !5, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !8803, !noundef !5 ; 6 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i
  %xtraiter = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.o, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ak, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.aj, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i32, ptr %i.r, align 4, !alias.scope !8804, !noalias !8803, !noundef !5
  %i.s = or i32 %.val.i.i.i, 1
  %i.t = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.s, i1 true)
  %i.u = xor i32 %i.t, 31
  %i.v = mul nuw nsw i32 %i.u, 9
  %i.w = add nuw nsw i32 %i.v, 73
  %i.x = lshr i32 %i.w, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add i64 %.sroa.02.0.i.i.i, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.04.0.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.val.i.i.i.1 = load i32, ptr %i.ab, align 4, !alias.scope !8804, !noalias !8803, !noundef !5
  %i.ac = or i32 %.val.i.i.i.1, 1
  %i.ad = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ac, i1 true)
  %i.ae = xor i32 %i.ad, 31
  %i.af = mul nuw nsw i32 %i.ae, 9
  %i.ag = add nuw nsw i32 %i.af, 73
  %i.ah = lshr i32 %i.ag, 6
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add i64 %i.z, %i.ai                     ; 3 uses
  %i.ak = add nuw i64 %.sroa.04.0.i.i.i, 2        ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i.unr-lcssa", label %.preheader.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ak, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i.unr-lcssa" ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.aj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i.unr-lcssa" ]
  %lcmp.mod13 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i32, ptr %i.al, align 4, !alias.scope !8804, !noalias !8803, !noundef !5
  %i.am = or i32 %.val.i.i.i.epil, 1
  %i.an = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.am, i1 true)
  %i.ao = xor i32 %i.an, 31
  %i.ap = mul nuw nsw i32 %i.ao, 9
  %i.aq = add nuw nsw i32 %i.ap, 73
  %i.ar = lshr i32 %i.aq, 6
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add i64 %.sroa.02.0.i.i.i.epil.init, %i.as
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa11 = phi i64 [ %i.aj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i.unr-lcssa" ], [ %i.at, %.preheader.i.i.epil.preheader ] ; 2 uses
  %i.au = or i64 %.lcssa11, 1
  %i.av = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = xor i64 %i.av, 63
  %i.ax = mul nuw nsw i64 %i.aw, 9
  %i.ay = add nuw nsw i64 %i.ax, 73
  %i.az = lshr i64 %i.ay, 6
  %i.ba = add i64 %.lcssa11, 1
  %i.bb = add i64 %i.ba, %i.az
  br label %_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E.exit.i

_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E.exit.i: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i", %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i
  %.sroa.0.0.i1.i = phi i64 [ %i.bb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75b19452b6d6532bE.exit.i.i" ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !8803, !nonnull !5, !noundef !5 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !8803, !noundef !5 ; 6 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E.exit8.i, label %.preheader.i2.i.preheader

.preheader.i2.i.preheader:                        ; preds = %_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E.exit.i
  %xtraiter14 = and i64 %i.bf, 1
  %i.bh = icmp eq i64 %i.bf, 1
  br i1 %i.bh, label %.preheader.i2.i.epil.preheader, label %.preheader.i2.i.preheader.new

.preheader.i2.i.preheader.new:                    ; preds = %.preheader.i2.i.preheader
  %unroll_iter18 = and i64 %i.bf, -2
  br label %.preheader.i2.i

.preheader.i2.i:                                  ; preds = %.preheader.i2.i, %.preheader.i2.i.preheader.new
  %.sroa.04.0.i.i3.i = phi i64 [ 0, %.preheader.i2.i.preheader.new ], [ %i.cb, %.preheader.i2.i ] ; 3 uses
  %.sroa.02.0.i.i4.i = phi i64 [ 0, %.preheader.i2.i.preheader.new ], [ %i.ca, %.preheader.i2.i ]
  %niter19 = phi i64 [ 0, %.preheader.i2.i.preheader.new ], [ %niter19.next.1, %.preheader.i2.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.sroa.04.0.i.i3.i
  %.val.i.i5.i = load i32, ptr %i.bi, align 4, !alias.scope !8805, !noalias !8803, !noundef !5
  %i.bj = or i32 %.val.i.i5.i, 1
  %i.bk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bj, i1 true)
  %i.bl = xor i32 %i.bk, 31
  %i.bm = mul nuw nsw i32 %i.bl, 9
  %i.bn = add nuw nsw i32 %i.bm, 73
  %i.bo = lshr i32 %i.bn, 6
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = add i64 %.sroa.02.0.i.i4.i, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.sroa.04.0.i.i3.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.val.i.i5.i.1 = load i32, ptr %i.bs, align 4, !alias.scope !8805, !noalias !8803, !noundef !5
  %i.bt = or i32 %.val.i.i5.i.1, 1
  %i.bu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
end_hunk_0
begin_hunk_1_@_ZN5prost7message7Message6encode17h3f7ca9b36110c5fcE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3 = load i64, ptr %i.b, align 8            ; 4 uses
  %i.c = icmp eq i64 %.val2, 0                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %.val2, 1
  %i.e = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = icmp sgt i64 %.val2, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw i64 %.val2, 1
  %i.l = add nuw i64 %i.k, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %.not.i.not.i = icmp eq i64 %.val3, 0           ; 2 uses
  br i1 %.not.i.not.i, label %"_ZN101_$LT$anki_proto..image_occlusion..GetImageForOcclusionResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h00c9879420fcaa03E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %.val3, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = or i64 %.val3, 1
  %i.o = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = xor i64 %i.o, 63
  %i.q = mul nuw nsw i64 %i.p, 9
  %i.r = add nuw nsw i64 %i.q, 73
  %i.s = lshr i64 %i.r, 6
  %i.t = add nuw i64 %.val3, 1
  %i.u = add nuw i64 %i.t, %i.s
  br label %"_ZN101_$LT$anki_proto..image_occlusion..GetImageForOcclusionResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h00c9879420fcaa03E.exit"

"_ZN101_$LT$anki_proto..image_occlusion..GetImageForOcclusionResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h00c9879420fcaa03E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %i.v = add i64 %.sroa.01.0.i, %.sroa.0.0.i      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.x = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN101_$LT$anki_proto..image_occlusion..GetImageForOcclusionResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h00c9879420fcaa03E.exit"
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %.not.i.not.i, label %"_ZN101_$LT$anki_proto..image_occlusion..GetImageForOcclusionResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hb7dbfc4f617eca0bE.exit", label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN5prost8encoding5bytes6encode17hc97bdaae4a574ff1E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN101_$LT$anki_proto..image_occlusion..GetImageForOcclusionResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hb7dbfc4f617eca0bE.exit"

bb.i:                                             ; preds = %"_ZN101_$LT$anki_proto..image_occlusion..GetImageForOcclusionResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h00c9879420fcaa03E.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.ac, align 8
  br label %"_ZN101_$LT$anki_proto..image_occlusion..GetImageForOcclusionResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hb7dbfc4f617eca0bE.exit"

"_ZN101_$LT$anki_proto..image_occlusion..GetImageForOcclusionResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hb7dbfc4f617eca0bE.exit": ; preds = %bb.h, %bb.f, %bb.i
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h3faf8fed391246baE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8808 {
bb.a:
  %.val2 = load i8, ptr %1, align 1, !range !24, !noundef !5 ; 2 uses
  %i.a = shl nuw nsw i8 %.val2, 1
  %spec.select.i = zext nneg i8 %i.a to i64       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, %spec.select.i
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %.val2 to i1
  br i1 %i.f, label %bb.c, label %"_ZN69_$LT$anki_proto..generic..Bool$u20$as$u20$prost..message..Message$GT$10encode_raw17h543bb9febe6b8907E.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN69_$LT$anki_proto..generic..Bool$u20$as$u20$prost..message..Message$GT$10encode_raw17h543bb9febe6b8907E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.h, align 8
  br label %"_ZN69_$LT$anki_proto..generic..Bool$u20$as$u20$prost..message..Message$GT$10encode_raw17h543bb9febe6b8907E.exit"

"_ZN69_$LT$anki_proto..generic..Bool$u20$as$u20$prost..message..Message$GT$10encode_raw17h543bb9febe6b8907E.exit": ; preds = %bb.c, %bb.b, %bb.d
  %storemerge = phi i64 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h46c2c024be4293b6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8819 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %.val2 = load i64, ptr %1, align 8, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.c, align 8            ; 3 uses
  %i.d = icmp eq i64 %.val2, 0                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or i64 %.val2, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = icmp eq i64 %.val3, 0                    ; 2 uses
  br i1 %i.l, label %"_ZN98_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hac961d6e206ba1c6E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %.val3, 1
  %i.n = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 1
  br label %"_ZN98_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hac961d6e206ba1c6E.exit"

"_ZN98_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hac961d6e206ba1c6E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ]
  %i.t = add nuw nsw i64 %.sroa.01.0.i, %.sroa.0.0.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.u, align 8, !noundef !5 ; 2 uses
  %i.v = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN98_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hac961d6e206ba1c6E.exit"
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8820
  store i8 8, ptr %i.b, align 1, !noalias !8820
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8820
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.val2, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.l, label %"_ZN98_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hda4bbbc3de364888E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8821
  store i8 16, ptr %i.a, align 1, !noalias !8821
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8821
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN98_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hda4bbbc3de364888E.exit"

bb.i:                                             ; preds = %"_ZN98_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hac961d6e206ba1c6E.exit"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.z, align 8
  br label %"_ZN98_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hda4bbbc3de364888E.exit"

"_ZN98_$LT$anki_proto..deck_config..GetIgnoredBeforeCountResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hda4bbbc3de364888E.exit": ; preds = %bb.h, %bb.g, %bb.i
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h47730e418d98911eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8822 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %.thread, label %"_ZN69_$LT$anki_proto..generic..Json$u20$as$u20$prost..message..Message$GT$11encoded_len17hb4525c62cda7fb30E.exit"

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val4, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN69_$LT$anki_proto..generic..Json$u20$as$u20$prost..message..Message$GT$10encode_raw17h3a5d0f05a08ace1eE.exit"

"_ZN69_$LT$anki_proto..generic..Json$u20$as$u20$prost..message..Message$GT$11encoded_len17hb4525c62cda7fb30E.exit": ; preds = %bb.a
  %i.c = or i64 %.val2, 1
  %i.d = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = mul nuw nsw i64 %i.e, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6
  %i.i = icmp sgt i64 %.val2, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw i64 %.val2, 1
  %i.k = add nuw i64 %i.j, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.m = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN69_$LT$anki_proto..generic..Json$u20$as$u20$prost..message..Message$GT$11encoded_len17hb4525c62cda7fb30E.exit"
  tail call void @_ZN5prost8encoding5bytes6encode17hc97bdaae4a574ff1E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN69_$LT$anki_proto..generic..Json$u20$as$u20$prost..message..Message$GT$10encode_raw17h3a5d0f05a08ace1eE.exit"

bb.c:                                             ; preds = %"_ZN69_$LT$anki_proto..generic..Json$u20$as$u20$prost..message..Message$GT$11encoded_len17hb4525c62cda7fb30E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.q, align 8
  br label %"_ZN69_$LT$anki_proto..generic..Json$u20$as$u20$prost..message..Message$GT$10encode_raw17h3a5d0f05a08ace1eE.exit"

"_ZN69_$LT$anki_proto..generic..Json$u20$as$u20$prost..message..Message$GT$10encode_raw17h3a5d0f05a08ace1eE.exit": ; preds = %bb.b, %.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h48f9efe20174c3e6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8825 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.thread", label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %.val3, 1
  %i.d = icmp eq i64 %.val3, 1
  br i1 %i.d, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %.val3, -2
  br label %.preheader.i.i

"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.thread": ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val7, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.thread.a"

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.x, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.w, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i32, ptr %i.e, align 4, !alias.scope !8826, !noundef !5
  %i.f = or i32 %.val.i.i.i, 1
  %i.g = sext i32 %i.f to i64
  %i.h = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = xor i64 %i.h, 63
  %i.j = mul nuw nsw i64 %i.i, 9
  %i.k = add nuw nsw i64 %i.j, 73
  %i.l = lshr i64 %i.k, 6
  %i.m = add i64 %i.l, %.sroa.02.0.i.i.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.val.i.i.i.1 = load i32, ptr %i.o, align 4, !alias.scope !8826, !noundef !5
  %i.p = or i32 %.val.i.i.i.1, 1
  %i.q = sext i32 %i.p to i64
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = mul nuw nsw i64 %i.s, 9
  %i.u = add nuw nsw i64 %i.t, 73
  %i.v = lshr i64 %i.u, 6
  %i.w = add i64 %i.v, %i.m                       ; 3 uses
  %i.x = add nuw i64 %.sroa.04.0.i.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.unr-lcssa", label %.preheader.i.i

"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.x, %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.unr-lcssa" ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.w, %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.unr-lcssa" ]
  %lcmp.mod10 = trunc i64 %.val3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i32, ptr %i.y, align 4, !alias.scope !8826, !noundef !5
  %i.z = or i32 %.val.i.i.i.epil, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 73
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add i64 %i.af, %.sroa.02.0.i.i.i.epil.init
  br label %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit"

"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit": ; preds = %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.w, %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.unr-lcssa" ], [ %i.ag, %.preheader.i.i.epil.preheader ] ; 2 uses
  %i.ah = or i64 %.lcssa, 1
  %i.ai = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.aj = xor i64 %i.ai, 63
  %i.ak = mul nuw nsw i64 %i.aj, 9
  %i.al = add nuw nsw i64 %i.ak, 73
  %i.am = lshr i64 %i.al, 6
  %i.an = add i64 %.lcssa, 1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %i.aq = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.as = icmp ugt i64 %i.ao, %i.ar
  br i1 %i.as, label %bb.b, label %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.thread.a"

"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.thread.a": ; preds = %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.thread", %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit"
  tail call void @_ZN5prost8encoding5int3213encode_packed17h778aec758dc83655E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val2, i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.c

bb.b:                                             ; preds = %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit"
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ar, ptr %i.au, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.thread.a"
  %storemerge = phi i64 [ 0, %"_ZN99_$LT$anki_proto..ankidroid..GetActiveSequenceNumbersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h36f776d93996a724E.exit.thread.a" ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h4db422d6183dc722E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8831 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8832, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %i.b, 2
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = add i64 %i.j, %i.e
  br label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i

_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !8832, !noundef !5 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %"_ZN92_$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he60f7e1a6851e4e4E.exit", label %bb.c

bb.c:                                             ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i
  %i.o = or i32 %i.m, 1
  %i.p = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.o, i1 true)
  %i.q = xor i32 %i.p, 31
  %i.r = mul nuw nsw i32 %i.q, 9
  %i.s = add nuw nsw i32 %i.r, 73
  %i.t = lshr i32 %i.s, 6
  %narrow.i.i = add nuw nsw i32 %i.t, 1
  %i.u = zext nneg i32 %narrow.i.i to i64
  br label %"_ZN92_$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he60f7e1a6851e4e4E.exit"

"_ZN92_$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he60f7e1a6851e4e4E.exit": ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.u, %bb.c ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !range !11, !alias.scope !8832, !noundef !5
  %.not.i = icmp eq i8 %i.w, 2                    ; 2 uses
  %i.x = add i64 %.sroa.0.0.i, %.sroa.0.0.i.i
  %spec.select.i.i = select i1 %.not.i, i64 0, i64 2
  %i.y = add i64 %i.x, %spec.select.i.i           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.aa = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.ac = icmp ugt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.d

bb.d:                                             ; preds = %"_ZN92_$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he60f7e1a6851e4e4E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8833)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !8833, !nonnull !5, !noundef !5
  tail call void @_ZN5prost8encoding5float13encode_packed17h8cafcbb9630722aaE(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ae, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !8833
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not.i, label %"_ZN92_$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h82d74566fc8ed398E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN92_$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h82d74566fc8ed398E.exit"

bb.h:                                             ; preds = %"_ZN92_$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he60f7e1a6851e4e4E.exit"
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %i.ag, align 8
  br label %"_ZN92_$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h82d74566fc8ed398E.exit"

"_ZN92_$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h82d74566fc8ed398E.exit": ; preds = %bb.g, %bb.f, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h4e40ea7149fe3af0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8837 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8838)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !8838, !noundef !5 ; 4 uses
  %.not.i.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.b)
  %i.c = or i64 %.val.i, 1
  %i.d = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = mul nuw nsw i64 %i.e, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6
  %i.i = add nuw i64 %.val.i, 1
  %i.j = add nuw i64 %i.i, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !8838, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8838, !noundef !5 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5cdc1f1440e62c3eE.exit.i", label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.r, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.q, %.preheader.i ], [ 0, %bb.c ]
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %.sroa.04.0.i.i.i
  %i.q = tail call fastcc noundef i64 @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h08b6ec58861b0fe2E"(i64 noundef %.sroa.02.0.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p), !noalias !8838, !inline_history !8836 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.i.i, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.n
  br i1 %i.s, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5cdc1f1440e62c3eE.exit.i", label %.preheader.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5cdc1f1440e62c3eE.exit.i": ; preds = %.preheader.i, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.q, %.preheader.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i32, ptr %i.t, align 8, !alias.scope !8838, !noundef !5 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %"_ZN73_$LT$anki_proto..tags..TagTreeNode$u20$as$u20$prost..message..Message$GT$11encoded_len17h8413118b8b5ef8f2E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5cdc1f1440e62c3eE.exit.i"
  %i.w = or i32 %i.u, 1
  %i.x = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = xor i32 %i.x, 31
  %i.z = mul nuw nsw i32 %i.y, 9
  %i.aa = add nuw nsw i32 %i.z, 73
  %i.ab = lshr i32 %i.aa, 6
  %narrow.i.i = add nuw nsw i32 %i.ab, 1
  %i.ac = zext nneg i32 %narrow.i.i to i64
  br label %"_ZN73_$LT$anki_proto..tags..TagTreeNode$u20$as$u20$prost..message..Message$GT$11encoded_len17h8413118b8b5ef8f2E.exit"

"_ZN73_$LT$anki_proto..tags..TagTreeNode$u20$as$u20$prost..message..Message$GT$11encoded_len17h8413118b8b5ef8f2E.exit": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5cdc1f1440e62c3eE.exit.i", %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ac, %bb.d ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5cdc1f1440e62c3eE.exit.i" ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i8, ptr %i.ad, align 4, !range !24, !alias.scope !8838, !noundef !5
  %i.af = shl nuw nsw i8 %i.ae, 1
  %spec.select.i = zext nneg i8 %i.af to i64
  %i.ag = add i64 %i.n, %.sroa.0.0.i
  %i.ah = add i64 %i.ag, %.sroa.0.0.i.i.i
  %i.ai = add i64 %i.ah, %.sroa.01.0.i
  %i.aj = add i64 %i.ai, %spec.select.i           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ak, align 8, !noundef !5 ; 2 uses
  %i.al = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.an = icmp ugt i64 %i.aj, %i.am
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN73_$LT$anki_proto..tags..TagTreeNode$u20$as$u20$prost..message..Message$GT$11encoded_len17h8413118b8b5ef8f2E.exit"
  tail call fastcc void @"_ZN73_$LT$anki_proto..tags..TagTreeNode$u20$as$u20$prost..message..Message$GT$10encode_raw17h045e4211c6ac724eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  br label %bb.g

bb.f:                                             ; preds = %"_ZN73_$LT$anki_proto..tags..TagTreeNode$u20$as$u20$prost..message..Message$GT$11encoded_len17h8413118b8b5ef8f2E.exit"
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %i.ap, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi i64 [ 0, %bb.e ], [ 1, %bb.f ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h541380635ab3c7d5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !8839 {
bb.a:
  %i.a = tail call fastcc noundef i64 @"_ZN88_$LT$anki_proto..deck_config..deck_config..Config$u20$as$u20$prost..message..Message$GT$11encoded_len17he57b714220354009E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %.val, -1
end_hunk_1
begin_hunk_2_@_ZN5prost7message7Message6encode17h58be0b8af146d42aE:bb.a

bb.be:                                            ; preds = %bb.bd, %bb.bb
  br i1 %.not25.i, label %"_ZN77_$LT$anki_proto..stats..GraphsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hec632a2f4b6186f3E.exit", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !9074)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9075
  store i8 122, ptr %i.e, align 1, !noalias !9075
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !9074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9075
  %i.ks = call fastcc noundef i64 @"_ZN98_$LT$anki_proto..stats..graphs_response..TrueRetentionStats$u20$as$u20$prost..message..Message$GT$11encoded_len17h1751392f677a7728E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(120) %i.gt), !alias.scope !9076
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.ks, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9074
  call void @"_ZN98_$LT$anki_proto..stats..graphs_response..TrueRetentionStats$u20$as$u20$prost..message..Message$GT$10encode_raw17h85c2767231bc1cd5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(120) %i.gt, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN77_$LT$anki_proto..stats..GraphsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hec632a2f4b6186f3E.exit"

bb.bg:                                            ; preds = %"_ZN77_$LT$anki_proto..stats..GraphsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h8125417c36dffe4dE.exit"
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hs, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hv, ptr %i.ku, align 8
  br label %"_ZN77_$LT$anki_proto..stats..GraphsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hec632a2f4b6186f3E.exit"

"_ZN77_$LT$anki_proto..stats..GraphsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hec632a2f4b6186f3E.exit": ; preds = %bb.bf, %bb.be, %bb.bg
  %storemerge = phi i64 [ 1, %bb.bg ], [ 0, %bb.be ], [ 0, %bb.bf ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h648f35dbf12f61fcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9077 {
bb.a:
  %i.a = tail call fastcc noundef i64 @"_ZN93_$LT$anki_proto..notetypes..notetype..template..Config$u20$as$u20$prost..message..Message$GT$11encoded_len17hb8a808f0b4e7198bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.e = icmp ugt i64 %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN93_$LT$anki_proto..notetypes..notetype..template..Config$u20$as$u20$prost..message..Message$GT$10encode_raw17hf2e423a943697aa9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h649b4bc37cc3e90bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9080 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6.i = load i64, ptr %i.a, align 8, !alias.scope !9081, !noundef !5 ; 4 uses
  %.not.i.not.i = icmp eq i64 %.val6.i, 0         ; 2 uses
  br i1 %.not.i.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %.val6.i, -1
  tail call void @llvm.assume(i1 %i.b)
  %i.c = or i64 %.val6.i, 1
  %i.d = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = mul nuw nsw i64 %i.e, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6
  %i.i = add nuw i64 %.val6.i, 1
  %i.j = add nuw i64 %i.i, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i = load i64, ptr %i.k, align 8, !alias.scope !9081, !noundef !5 ; 4 uses
  %.not.i11.not.i = icmp eq i64 %.val5.i, 0       ; 2 uses
  br i1 %.not.i11.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %.val5.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = or i64 %.val5.i, 1
  %i.n = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw i64 %.val5.i, 1
  %i.t = add nuw i64 %i.s, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val4.i = load i64, ptr %i.u, align 8, !alias.scope !9081, !noundef !5 ; 4 uses
  %.not.i12.not.i = icmp eq i64 %.val4.i, 0       ; 2 uses
  br i1 %.not.i12.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp sgt i64 %.val4.i, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = or i64 %.val4.i, 1
  %i.x = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = xor i64 %i.x, 63
  %i.z = mul nuw nsw i64 %i.y, 9
  %i.aa = add nuw nsw i64 %i.z, 73
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = add nuw i64 %.val4.i, 1
  %i.ad = add nuw i64 %i.ac, %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.02.0.i = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i = load i64, ptr %i.ae, align 8, !alias.scope !9081, !noundef !5 ; 4 uses
  %.not.i13.not.i = icmp eq i64 %.val.i, 0        ; 2 uses
  br i1 %.not.i13.not.i, label %"_ZN77_$LT$anki_proto..github..GithubRelease$u20$as$u20$prost..message..Message$GT$11encoded_len17hc7bc83227765c135E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = or i64 %.val.i, 1
  %i.ah = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = xor i64 %i.ah, 63
  %i.aj = mul nuw nsw i64 %i.ai, 9
  %i.ak = add nuw nsw i64 %i.aj, 73
  %i.al = lshr i64 %i.ak, 6
  %i.am = add nuw i64 %.val.i, 1
  %i.an = add nuw i64 %i.am, %i.al
  br label %"_ZN77_$LT$anki_proto..github..GithubRelease$u20$as$u20$prost..message..Message$GT$11encoded_len17hc7bc83227765c135E.exit"

"_ZN77_$LT$anki_proto..github..GithubRelease$u20$as$u20$prost..message..Message$GT$11encoded_len17hc7bc83227765c135E.exit": ; preds = %bb.g, %bb.h
  %.sroa.03.0.i = phi i64 [ %i.an, %bb.h ], [ 0, %bb.g ]
  %i.ao = add i64 %.sroa.01.0.i, %.sroa.0.0.i
  %i.ap = add i64 %i.ao, %.sroa.02.0.i
  %i.aq = add i64 %i.ap, %.sroa.03.0.i            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ar, align 8, !noundef !5 ; 2 uses
  %i.as = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %bb.q, label %bb.i

bb.i:                                             ; preds = %"_ZN77_$LT$anki_proto..github..GithubRelease$u20$as$u20$prost..message..Message$GT$11encoded_len17hc7bc83227765c135E.exit"
  br i1 %.not.i.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not.i11.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not.i12.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not.i13.not.i, label %"_ZN77_$LT$anki_proto..github..GithubRelease$u20$as$u20$prost..message..Message$GT$10encode_raw17h9cc0fe022e10951aE.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN77_$LT$anki_proto..github..GithubRelease$u20$as$u20$prost..message..Message$GT$10encode_raw17h9cc0fe022e10951aE.exit"

bb.q:                                             ; preds = %"_ZN77_$LT$anki_proto..github..GithubRelease$u20$as$u20$prost..message..Message$GT$11encoded_len17hc7bc83227765c135E.exit"
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.az, align 8
  br label %"_ZN77_$LT$anki_proto..github..GithubRelease$u20$as$u20$prost..message..Message$GT$10encode_raw17h9cc0fe022e10951aE.exit"

"_ZN77_$LT$anki_proto..github..GithubRelease$u20$as$u20$prost..message..Message$GT$10encode_raw17h9cc0fe022e10951aE.exit": ; preds = %bb.p, %bb.o, %bb.q
  %storemerge = phi i64 [ 1, %bb.q ], [ 0, %bb.o ], [ 0, %bb.p ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h694ca1b162ad9514E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9082 {
bb.a:
  %.val2 = load i32, ptr %1, align 4, !noundef !5 ; 3 uses
  %i.a = icmp eq i32 %.val2, 0
  br i1 %i.a, label %.thread, label %"_ZN70_$LT$anki_proto..generic..Int32$u20$as$u20$prost..message..Message$GT$11encoded_len17h809bd6882b3d9f4bE.exit"

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val4, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN70_$LT$anki_proto..generic..Int32$u20$as$u20$prost..message..Message$GT$10encode_raw17h3a0b65f94b6358e4E.exit"

"_ZN70_$LT$anki_proto..generic..Int32$u20$as$u20$prost..message..Message$GT$11encoded_len17h809bd6882b3d9f4bE.exit": ; preds = %bb.a
  %i.b = shl i32 %.val2, 1
  %i.c = ashr i32 %.val2, 31
  %i.d = xor i32 %i.b, %i.c
  %i.e = or i32 %i.d, 1
  %i.f = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = xor i32 %i.f, 31
  %i.h = mul nuw nsw i32 %i.g, 9
  %i.i = add nuw nsw i32 %i.h, 73
  %i.j = lshr i32 %i.i, 6
  %narrow.i.i = add nuw nsw i32 %i.j, 1
  %i.k = zext nneg i32 %narrow.i.i to i64         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.m = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.o = icmp samesign ult i64 %i.n, %i.k
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$anki_proto..generic..Int32$u20$as$u20$prost..message..Message$GT$11encoded_len17h809bd6882b3d9f4bE.exit"
  tail call void @_ZN5prost8encoding6sint326encode17ha40a0a2e887465aaE(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN70_$LT$anki_proto..generic..Int32$u20$as$u20$prost..message..Message$GT$10encode_raw17h3a0b65f94b6358e4E.exit"

bb.c:                                             ; preds = %"_ZN70_$LT$anki_proto..generic..Int32$u20$as$u20$prost..message..Message$GT$11encoded_len17h809bd6882b3d9f4bE.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.q, align 8
  br label %"_ZN70_$LT$anki_proto..generic..Int32$u20$as$u20$prost..message..Message$GT$10encode_raw17h3a0b65f94b6358e4E.exit"

"_ZN70_$LT$anki_proto..generic..Int32$u20$as$u20$prost..message..Message$GT$10encode_raw17h3a0b65f94b6358e4E.exit": ; preds = %bb.b, %.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h6cd9f94f02ffe7b9E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9087 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !9088, !noundef !5 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.b, 1
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = xor i32 %i.e, 31
  %i.g = mul nuw nsw i32 %i.f, 9
  %i.h = add nuw nsw i32 %i.g, 73
  %i.i = lshr i32 %i.h, 6
  %narrow.i.i = add nuw nsw i32 %i.i, 1
  %i.j = zext nneg i32 %narrow.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !9088, !noundef !5 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = or i32 %i.l, 1
  %i.o = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = mul nuw nsw i32 %i.p, 9
  %i.r = add nuw nsw i32 %i.q, 73
  %i.s = lshr i32 %i.r, 6
  %narrow.i17.i = add nuw nsw i32 %i.s, 1
  %i.t = zext nneg i32 %narrow.i17.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !alias.scope !9088, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !alias.scope !9088, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !9088, !noundef !5 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = shl i64 %i.z, 2
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %i.ad = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = xor i64 %i.ad, 63
  %i.af = mul nuw nsw i64 %i.ae, 9
  %i.ag = add nuw nsw i64 %i.af, 73
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = add i64 %i.ah, %i.ac
  br label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i

_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.ai, %bb.f ], [ 0, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !9088, !noundef !5 ; 3 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit19.i, label %bb.g

bb.g:                                             ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i
  %i.am = shl i64 %i.ak, 2
  %i.an = or disjoint i64 %i.am, 1                ; 2 uses
  %i.ao = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.ap = xor i64 %i.ao, 63
  %i.aq = mul nuw nsw i64 %i.ap, 9
  %i.ar = add nuw nsw i64 %i.aq, 73
  %i.as = lshr i64 %i.ar, 6
  %i.at = add i64 %i.as, %i.an
  br label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit19.i

_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit19.i: ; preds = %bb.g, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i
  %.sroa.0.0.i18.i = phi i64 [ %i.at, %bb.g ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.av = load float, ptr %i.au, align 8, !alias.scope !9088, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !alias.scope !9088, !noundef !5 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0                    ; 2 uses
  br i1 %i.ay, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit19.i
  %i.az = or i32 %i.ax, 1
  %i.ba = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bb = xor i32 %i.ba, 31
  %i.bc = mul nuw nsw i32 %i.bb, 9
  %i.bd = add nuw nsw i32 %i.bc, 73
  %i.be = lshr i32 %i.bd, 6
  %narrow.i20.i = add nuw nsw i32 %i.be, 1
  %i.bf = zext nneg i32 %narrow.i20.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit19.i
  %.sroa.05.0.i = phi i64 [ %i.bf, %bb.h ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit19.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !alias.scope !9088, !noundef !5 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0                    ; 2 uses
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = or i32 %i.bh, 1
  %i.bk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bj, i1 true)
  %i.bl = xor i32 %i.bk, 31
  %i.bm = mul nuw nsw i32 %i.bl, 9
  %i.bn = add nuw nsw i32 %i.bm, 73
  %i.bo = lshr i32 %i.bn, 6
  %narrow.i21.i = add nuw nsw i32 %i.bo, 1
  %i.bp = zext nneg i32 %narrow.i21.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.06.0.i = phi i64 [ %i.bp, %bb.j ], [ 0, %bb.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !9088, !noundef !5 ; 3 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit23.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = shl i64 %i.br, 2
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = xor i64 %i.bv, 63
  %i.bx = mul nuw nsw i64 %i.bw, 9
  %i.by = add nuw nsw i64 %i.bx, 73
  %i.bz = lshr i64 %i.by, 6
  %i.ca = add i64 %i.bz, %i.bu
  br label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit23.i

_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit23.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i22.i = phi i64 [ %i.ca, %bb.l ], [ 0, %bb.k ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !9088, !noundef !5 ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit25.i, label %bb.m

bb.m:                                             ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit23.i
  %i.ce = shl i64 %i.cc, 2
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = xor i64 %i.cg, 63
  %i.ci = mul nuw nsw i64 %i.ch, 9
  %i.cj = add nuw nsw i64 %i.ci, 73
  %i.ck = lshr i64 %i.cj, 6
  %i.cl = add i64 %i.ck, %i.cf
  br label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit25.i

_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit25.i: ; preds = %bb.m, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit23.i
  %.sroa.0.0.i24.i = phi i64 [ %i.cl, %bb.m ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit23.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !9088, !noundef !5 ; 3 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit27.i, label %bb.n

bb.n:                                             ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit25.i
  %i.cp = shl i64 %i.cn, 2
  %i.cq = or disjoint i64 %i.cp, 1                ; 2 uses
  %i.cr = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = xor i64 %i.cr, 63
  %i.ct = mul nuw nsw i64 %i.cs, 9
  %i.cu = add nuw nsw i64 %i.ct, 73
  %i.cv = lshr i64 %i.cu, 6
  %i.cw = add i64 %i.cv, %i.cq
  br label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit27.i

_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit27.i: ; preds = %bb.n, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit25.i
  %.sroa.0.0.i26.i = phi i64 [ %i.cw, %bb.n ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit25.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !alias.scope !9088, !noundef !5 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0                    ; 2 uses
  br i1 %i.cz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit27.i
  %i.da = or i32 %i.cy, 1
  %i.db = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.da, i1 true)
  %i.dc = xor i32 %i.db, 31
  %i.dd = mul nuw nsw i32 %i.dc, 9
  %i.de = add nuw nsw i32 %i.dd, 73
  %i.df = lshr i32 %i.de, 6
  %narrow.i28.i = add nuw nsw i32 %i.df, 1
  %i.dg = zext nneg i32 %narrow.i28.i to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit27.i
  %.sroa.07.0.i = phi i64 [ %i.dg, %bb.o ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit27.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !alias.scope !9088, !noundef !5 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0                    ; 2 uses
  br i1 %i.dj, label %"_ZN104_$LT$anki_proto..scheduler..GetOptimalRetentionParametersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17haf37cc7c9046e4adE.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = or i32 %i.di, 1
  %i.dl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dk, i1 true)
  %i.dm = xor i32 %i.dl, 31
  %i.dn = mul nuw nsw i32 %i.dm, 9
  %i.do = add nuw nsw i32 %i.dn, 73
  %i.dp = lshr i32 %i.do, 6
  %narrow.i29.i = add nuw nsw i32 %i.dp, 1
  %i.dq = zext nneg i32 %narrow.i29.i to i64
  br label %"_ZN104_$LT$anki_proto..scheduler..GetOptimalRetentionParametersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17haf37cc7c9046e4adE.exit"

"_ZN104_$LT$anki_proto..scheduler..GetOptimalRetentionParametersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17haf37cc7c9046e4adE.exit": ; preds = %bb.p, %bb.q
  %.sroa.08.0.i = phi i64 [ %i.dq, %bb.q ], [ 0, %bb.p ]
  %i.dr = fcmp une float %i.av, 0.000000e+00      ; 2 uses
  %.sroa.04.0.i = select i1 %i.dr, i64 5, i64 0
  %i.ds = fcmp une float %i.x, 0.000000e+00       ; 2 uses
  %.sroa.03.0.i = select i1 %i.ds, i64 5, i64 0
  %i.dt = fcmp une float %i.v, 0.000000e+00       ; 2 uses
  %..i = select i1 %i.dt, i64 5, i64 0
  %i.du = add nuw nsw i64 %.sroa.01.0.i, %.sroa.0.0.i
  %i.dv = add nuw nsw i64 %i.du, %..i
  %i.dw = add nuw nsw i64 %i.dv, %.sroa.03.0.i
  %i.dx = add i64 %i.dw, %.sroa.0.0.i.i
  %i.dy = add i64 %i.dx, %.sroa.0.0.i18.i
  %i.dz = add i64 %i.dy, %.sroa.04.0.i
  %i.ea = add i64 %i.dz, %.sroa.05.0.i
  %i.eb = add i64 %i.ea, %.sroa.06.0.i
  %i.ec = add i64 %i.eb, %.sroa.0.0.i22.i
  %i.ed = add i64 %i.ec, %.sroa.0.0.i24.i
  %i.ee = add i64 %i.ed, %.sroa.0.0.i26.i
  %i.ef = add i64 %i.ee, %.sroa.07.0.i
  %i.eg = add i64 %i.ef, %.sroa.08.0.i            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.eh, align 8, !noundef !5 ; 2 uses
  %i.ei = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.ek = icmp ugt i64 %i.eg, %i.ej
  br i1 %i.ek, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %"_ZN104_$LT$anki_proto..scheduler..GetOptimalRetentionParametersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17haf37cc7c9046e4adE.exit"
  br i1 %i.c, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %i.m, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.dt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN5prost8encoding5float6encode17hfe415d438d0265c6E(i32 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.ds, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5prost8encoding5float6encode17hfe415d438d0265c6E(i32 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !9089, !nonnull !5, !noundef !5
  tail call void @_ZN5prost8encoding5float13encode_packed17h8cafcbb9630722aaE(i32 noundef 5, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.em, i64 noundef %i.z, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !9089, !nonnull !5, !noundef !5
  tail call void @_ZN5prost8encoding5float13encode_packed17h8cafcbb9630722aaE(i32 noundef 6, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eo, i64 noundef %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.dr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN5prost8encoding5float6encode17hfe415d438d0265c6E(i32 noundef 7, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.ay, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 8, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.bi, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 9, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !9089, !nonnull !5, !noundef !5
  tail call void @_ZN5prost8encoding5float13encode_packed17h8cafcbb9630722aaE(i32 noundef 10, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eq, i64 noundef %i.br, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !9089, !nonnull !5, !noundef !5
  tail call void @_ZN5prost8encoding5float13encode_packed17h8cafcbb9630722aaE(i32 noundef 11, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.es, i64 noundef %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !9089, !nonnull !5, !noundef !5
  tail call void @_ZN5prost8encoding5float13encode_packed17h8cafcbb9630722aaE(i32 noundef 12, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eu, i64 noundef %i.cn, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.cz, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 13, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.dj, label %"_ZN104_$LT$anki_proto..scheduler..GetOptimalRetentionParametersResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h3d489b9006385356E.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 14, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN104_$LT$anki_proto..scheduler..GetOptimalRetentionParametersResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h3d489b9006385356E.exit"

bb.aj:                                            ; preds = %"_ZN104_$LT$anki_proto..scheduler..GetOptimalRetentionParametersResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17haf37cc7c9046e4adE.exit"
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eg, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ej, ptr %i.ew, align 8
  br label %"_ZN104_$LT$anki_proto..scheduler..GetOptimalRetentionParametersResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h3d489b9006385356E.exit"

"_ZN104_$LT$anki_proto..scheduler..GetOptimalRetentionParametersResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h3d489b9006385356E.exit": ; preds = %bb.ai, %bb.ah, %bb.aj
  %storemerge = phi i64 [ 1, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.ai ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h79cb955ee343ac96E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9090 {
bb.a:
  %.val2 = load i64, ptr %1, align 8, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val2, 0
  br i1 %i.a, label %.thread, label %"_ZN69_$LT$anki_proto..decks..DeckId$u20$as$u20$prost..message..Message$GT$11encoded_len17hfd045eb926226eb8E.exit"

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val4, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN69_$LT$anki_proto..decks..DeckId$u20$as$u20$prost..message..Message$GT$10encode_raw17hb9790199d2bef778E.exit"

"_ZN69_$LT$anki_proto..decks..DeckId$u20$as$u20$prost..message..Message$GT$11encoded_len17hfd045eb926226eb8E.exit": ; preds = %bb.a
  %i.b = or i64 %.val2, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = mul nuw nsw i64 %i.d, 9
  %i.f = add nuw nsw i64 %i.e, 73
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.i = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %.val, 9223372036854775807       ; 2 uses
  %.not = icmp samesign ult i64 %i.g, %i.j
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN69_$LT$anki_proto..decks..DeckId$u20$as$u20$prost..message..Message$GT$11encoded_len17hfd045eb926226eb8E.exit"
  tail call void @_ZN5prost8encoding5int646encode17hf5ca04a1bdde0678E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN69_$LT$anki_proto..decks..DeckId$u20$as$u20$prost..message..Message$GT$10encode_raw17hb9790199d2bef778E.exit"

bb.c:                                             ; preds = %"_ZN69_$LT$anki_proto..decks..DeckId$u20$as$u20$prost..message..Message$GT$11encoded_len17hfd045eb926226eb8E.exit"
  %i.k = add nuw nsw i64 %i.g, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.m, align 8
  br label %"_ZN69_$LT$anki_proto..decks..DeckId$u20$as$u20$prost..message..Message$GT$10encode_raw17hb9790199d2bef778E.exit"

"_ZN69_$LT$anki_proto..decks..DeckId$u20$as$u20$prost..message..Message$GT$10encode_raw17hb9790199d2bef778E.exit": ; preds = %bb.b, %.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h8c583ee0742e487aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9093 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5prost8encoding8hash_map11encoded_len17hb995d3cc7e86da99E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.c = load float, ptr %i.b, align 8, !alias.scope !9094, !noundef !5
  %i.d = fcmp une float %i.c, 0.000000e+00        ; 2 uses
  %..i = select i1 %i.d, i64 5, i64 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = tail call noundef i64 @_ZN5prost8encoding8hash_map11encoded_len17hb995d3cc7e86da99E(i32 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.h = tail call noundef i64 @_ZN5prost8encoding8hash_map11encoded_len17hb6412f6ac275d371E(i32 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
  %i.i = add i64 %i.f, %i.a
  %i.j = add i64 %i.i, %..i
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.m = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5prost8encoding8hash_map6encode17h15c9e19f5f050471E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.d, label %bb.c, label %"_ZN95_$LT$anki_proto..scheduler..SimulateFsrsWorkloadResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hdad3241fd8123513E.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5prost8encoding5float6encode17hfe415d438d0265c6E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN95_$LT$anki_proto..scheduler..SimulateFsrsWorkloadResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hdad3241fd8123513E.exit"

"_ZN95_$LT$anki_proto..scheduler..SimulateFsrsWorkloadResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hdad3241fd8123513E.exit": ; preds = %bb.b, %bb.c
  tail call void @_ZN5prost8encoding8hash_map6encode17h15c9e19f5f050471E(i32 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  tail call void @_ZN5prost8encoding8hash_map6encode17hfd4d71ad4439660aE(i32 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN95_$LT$anki_proto..scheduler..SimulateFsrsWorkloadResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hdad3241fd8123513E.exit"
  %storemerge = phi i64 [ 0, %"_ZN95_$LT$anki_proto..scheduler..SimulateFsrsWorkloadResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hdad3241fd8123513E.exit" ], [ 1, %bb.d ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h908673822a41746fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9095 {
bb.a:
  %.val2 = load i64, ptr %1, align 8              ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val3 = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp eq i32 %.val3, 0                    ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %.val3, 1
  %i.d = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %i.e = xor i32 %i.d, 31
  %i.f = mul nuw nsw i32 %i.e, 9
  %i.g = add nuw nsw i32 %i.f, 73
  %i.h = lshr i32 %i.g, 6
  %narrow.i.i = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.j = icmp eq i64 %.val2, 0                    ; 2 uses
  br i1 %i.j, label %"_ZN91_$LT$anki_proto..scheduler..SchedTimingTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h979f86f4aba35007E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = or i64 %.val2, 1
  %i.l = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = xor i64 %i.l, 63
  %i.n = mul nuw nsw i64 %i.m, 9
  %i.o = add nuw nsw i64 %i.n, 73
  %i.p = lshr i64 %i.o, 6
  %i.q = add nuw nsw i64 %i.p, 1
  br label %"_ZN91_$LT$anki_proto..scheduler..SchedTimingTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h979f86f4aba35007E.exit"

"_ZN91_$LT$anki_proto..scheduler..SchedTimingTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h979f86f4aba35007E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = add nuw nsw i64 %.sroa.01.0.i, %.sroa.0.0.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.t = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, %i.u
  br i1 %i.v, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN91_$LT$anki_proto..scheduler..SchedTimingTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h979f86f4aba35007E.exit"
  br i1 %i.b, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.j, label %"_ZN91_$LT$anki_proto..scheduler..SchedTimingTodayResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h4548f42db9561004E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5prost8encoding5int646encode17hf5ca04a1bdde0678E(i32 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN91_$LT$anki_proto..scheduler..SchedTimingTodayResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h4548f42db9561004E.exit"

bb.i:                                             ; preds = %"_ZN91_$LT$anki_proto..scheduler..SchedTimingTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h979f86f4aba35007E.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.x, align 8
  br label %"_ZN91_$LT$anki_proto..scheduler..SchedTimingTodayResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h4548f42db9561004E.exit"

"_ZN91_$LT$anki_proto..scheduler..SchedTimingTodayResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h4548f42db9561004E.exit": ; preds = %bb.h, %bb.g, %bb.i
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h9288df8279e8587bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9111 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %.val3, 0
  br i1 %i.d, label %"_ZN73_$LT$anki_proto..stats..ReviewLogs$u20$as$u20$prost..message..Message$GT$10encode_raw17h66e895abac9dadf6E.exit", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.i, %.preheader.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.h, %.preheader.i.i ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.i
  %i.f = tail call fastcc noundef range(i64 0, 64) i64 @"_ZN100_$LT$anki_proto..stats..card_stats_response..StatsRevlogEntry$u20$as$u20$prost..message..Message$GT$11encoded_len17h8ea555e68155e9caE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e), !alias.scope !9112
  %i.g = add i64 %.sroa.02.0.i.i.i.i, 1
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = add nuw i64 %.sroa.04.0.i.i.i.i, 1       ; 2 uses
  %i.j = icmp eq i64 %i.i, %.val3
  br i1 %i.j, label %"_ZN73_$LT$anki_proto..stats..ReviewLogs$u20$as$u20$prost..message..Message$GT$11encoded_len17h4724410ef9ed69b5E.exit.thread", label %.preheader.i.i

"_ZN73_$LT$anki_proto..stats..ReviewLogs$u20$as$u20$prost..message..Message$GT$11encoded_len17h4724410ef9ed69b5E.exit.thread": ; preds = %.preheader.i.i
  %i.k = add i64 %i.h, %.val3                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val8 = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.m = icmp sgt i64 %.val8, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %.val8, 9223372036854775807      ; 2 uses
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %"_ZN73_$LT$anki_proto..stats..ReviewLogs$u20$as$u20$prost..message..Message$GT$11encoded_len17h4724410ef9ed69b5E.exit.thread"
  %.idx.i9 = mul nuw nsw i64 %.val3, 48
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i9
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.01.i = phi ptr [ %i.q, %.lr.ph.i ], [ %.val2, %.lr.ph.i.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9114
  store i8 10, ptr %i.a, align 1, !noalias !9114
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9114
  %i.r = call fastcc noundef i64 @"_ZN100_$LT$anki_proto..stats..card_stats_response..StatsRevlogEntry$u20$as$u20$prost..message..Message$GT$11encoded_len17h8ea555e68155e9caE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.01.i), !alias.scope !9113, !noalias !9115
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9113
  call void @"_ZN100_$LT$anki_proto..stats..card_stats_response..StatsRevlogEntry$u20$as$u20$prost..message..Message$GT$10encode_raw17h9142d41ef67bf57dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.01.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.s = icmp eq ptr %i.q, %i.p
  br i1 %i.s, label %"_ZN73_$LT$anki_proto..stats..ReviewLogs$u20$as$u20$prost..message..Message$GT$10encode_raw17h66e895abac9dadf6E.exit", label %.lr.ph.i

bb.b:                                             ; preds = %"_ZN73_$LT$anki_proto..stats..ReviewLogs$u20$as$u20$prost..message..Message$GT$11encoded_len17h4724410ef9ed69b5E.exit.thread"
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.u, align 8
  br label %"_ZN73_$LT$anki_proto..stats..ReviewLogs$u20$as$u20$prost..message..Message$GT$10encode_raw17h66e895abac9dadf6E.exit"

"_ZN73_$LT$anki_proto..stats..ReviewLogs$u20$as$u20$prost..message..Message$GT$10encode_raw17h66e895abac9dadf6E.exit": ; preds = %.lr.ph.i, %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h9ee2e822262b0e48E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9136 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i32, ptr %1, align 4, !range !6, !alias.scope !9137, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %3

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !9138, !noundef !5 ; 3 uses
  %i.f = icmp eq i32 %i.e, 0                      ; 3 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = or i32 %i.e, 1
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.i = xor i32 %i.h, 31
  %i.j = mul nuw nsw i32 %i.i, 9
  %i.k = add nuw nsw i32 %i.j, 73
  %i.l = lshr i32 %i.k, 6
  %narrow.i.i.i.i = add nuw nsw i32 %i.l, 3
  %i.m = zext nneg i32 %narrow.i.i.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.m, %bb.c ], [ 2, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !9138, !noundef !5 ; 3 uses
  %i.p = icmp eq i32 %i.o, 0                      ; 3 uses
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = or i32 %i.o, 1
  %i.r = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.q, i1 true)
  %i.s = xor i32 %i.r, 31
  %i.t = mul nuw nsw i32 %i.s, 9
  %i.u = add nuw nsw i32 %i.t, 73
  %i.v = lshr i32 %i.u, 6
  %narrow.i7.i.i.i.i.i = add nuw nsw i32 %i.v, 1
  %i.w = zext nneg i32 %narrow.i7.i.i.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.w, %bb.e ], [ 0, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !9138, !noundef !5 ; 3 uses
  %i.z = icmp eq i32 %i.y, 0                      ; 3 uses
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = or i32 %i.y, 1
  %i.ab = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aa, i1 true)
  %i.ac = xor i32 %i.ab, 31
  %i.ad = mul nuw nsw i32 %i.ac, 9
  %i.ae = add nuw nsw i32 %i.ad, 73
  %i.af = lshr i32 %i.ae, 6
  %narrow.i8.i.i.i.i.i = add nuw nsw i32 %i.af, 1
  %i.ag = zext nneg i32 %narrow.i8.i.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.ag, %bb.g ], [ 0, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !9138, !noundef !5 ; 3 uses
  %i.aj = icmp eq i32 %i.ai, 0                    ; 3 uses
  br i1 %i.aj, label %"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h6e41e5ec21604c09E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = or i32 %i.ai, 1
  %i.al = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ak, i1 true)
  %i.am = xor i32 %i.al, 31
  %i.an = mul nuw nsw i32 %i.am, 9
  %i.ao = add nuw nsw i32 %i.an, 73
  %i.ap = lshr i32 %i.ao, 6
  %narrow.i9.i.i.i.i.i = add nuw nsw i32 %i.ap, 1
  %i.aq = zext nneg i32 %narrow.i9.i.i.i.i.i to i64
  br label %"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h6e41e5ec21604c09E.exit"

"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h6e41e5ec21604c09E.exit": ; preds = %bb.h, %bb.i
  %.sroa.03.0.i.i.i.i.i = phi i64 [ %i.aq, %bb.i ], [ 0, %bb.h ]
  %i.ar = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %i.as = add nuw nsw i64 %i.ar, %.sroa.02.0.i.i.i.i.i
  %i.at = add nuw nsw i64 %i.as, %.sroa.03.0.i.i.i.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.au, align 8, !noundef !5 ; 2 uses
  %i.av = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.ax = icmp samesign ugt i64 %i.at, %i.aw
  br i1 %i.ax, label %bb.y, label %bb.j

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %4, align 8, !noundef !5
  %5 = icmp sgt i64 %.val4, -1
  tail call void @llvm.assume(i1 %5)
  br label %"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hd102ca3f02f4f569E.exit"

bb.j:                                             ; preds = %"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h6e41e5ec21604c09E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9139
  store i8 10, ptr %i.a, align 1, !noalias !9139
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !9140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9139
  br i1 %i.f, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = or i32 %i.e, 1
  %i.az = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ay, i1 true)
  %i.ba = xor i32 %i.az, 31
  %i.bb = mul nuw nsw i32 %i.ba, 9
  %i.bc = add nuw nsw i32 %i.bb, 73
  %i.bd = lshr i32 %i.bc, 6
  %narrow.i.i.i.i2 = add nuw nsw i32 %i.bd, 1
  %i.be = zext nneg i32 %narrow.i.i.i.i2 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i = phi i64 [ %i.be, %bb.k ], [ 0, %bb.j ]
  br i1 %i.p, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = or i32 %i.o, 1
  %i.bg = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bf, i1 true)
  %i.bh = xor i32 %i.bg, 31
  %i.bi = mul nuw nsw i32 %i.bh, 9
  %i.bj = add nuw nsw i32 %i.bi, 73
  %i.bk = lshr i32 %i.bj, 6
  %narrow.i7.i.i.i = add nuw nsw i32 %i.bk, 1
  %i.bl = zext nneg i32 %narrow.i7.i.i.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.01.0.i.i.i = phi i64 [ %i.bl, %bb.m ], [ 0, %bb.l ]
  br i1 %i.z, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = or i32 %i.y, 1
  %i.bn = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bm, i1 true)
  %i.bo = xor i32 %i.bn, 31
  %i.bp = mul nuw nsw i32 %i.bo, 9
  %i.bq = add nuw nsw i32 %i.bp, 73
  %i.br = lshr i32 %i.bq, 6
  %narrow.i8.i.i.i = add nuw nsw i32 %i.br, 1
  %i.bs = zext nneg i32 %narrow.i8.i.i.i to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.02.0.i.i.i = phi i64 [ %i.bs, %bb.o ], [ 0, %bb.n ]
  br i1 %i.aj, label %"_ZN99_$LT$anki_proto..image_occlusion..ImageOcclusionFieldIndexes$u20$as$u20$prost..message..Message$GT$11encoded_len17h78240c38f25c4497E.exit.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = or i32 %i.ai, 1
  %i.bu = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %i.bv = xor i32 %i.bu, 31
  %i.bw = mul nuw nsw i32 %i.bv, 9
  %i.bx = add nuw nsw i32 %i.bw, 73
  %i.by = lshr i32 %i.bx, 6
  %narrow.i9.i.i.i = add nuw nsw i32 %i.by, 1
  %i.bz = zext nneg i32 %narrow.i9.i.i.i to i64
  br label %"_ZN99_$LT$anki_proto..image_occlusion..ImageOcclusionFieldIndexes$u20$as$u20$prost..message..Message$GT$11encoded_len17h78240c38f25c4497E.exit.i.i"

"_ZN99_$LT$anki_proto..image_occlusion..ImageOcclusionFieldIndexes$u20$as$u20$prost..message..Message$GT$11encoded_len17h78240c38f25c4497E.exit.i.i": ; preds = %bb.q, %bb.p
  %.sroa.03.0.i.i.i = phi i64 [ %i.bz, %bb.q ], [ 0, %bb.p ]
  %i.ca = add nuw nsw i64 %.sroa.01.0.i.i.i, %.sroa.0.0.i.i.i
  %i.cb = add nuw nsw i64 %i.ca, %.sroa.02.0.i.i.i
  %i.cc = add nuw nsw i64 %i.cb, %.sroa.03.0.i.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9140
  br i1 %i.f, label %bb.s, label %bb.r

bb.r:                                             ; preds = %"_ZN99_$LT$anki_proto..image_occlusion..ImageOcclusionFieldIndexes$u20$as$u20$prost..message..Message$GT$11encoded_len17h78240c38f25c4497E.exit.i.i"
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %"_ZN99_$LT$anki_proto..image_occlusion..ImageOcclusionFieldIndexes$u20$as$u20$prost..message..Message$GT$11encoded_len17h78240c38f25c4497E.exit.i.i"
  br i1 %i.p, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.z, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.aj, label %"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hd102ca3f02f4f569E.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hd102ca3f02f4f569E.exit"

bb.y:                                             ; preds = %"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h6e41e5ec21604c09E.exit"
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %i.ce, align 8
  br label %"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hd102ca3f02f4f569E.exit"

"_ZN104_$LT$anki_proto..image_occlusion..GetImageOcclusionFieldsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hd102ca3f02f4f569E.exit": ; preds = %bb.x, %bb.w, %3, %bb.y
  %storemerge = phi i64 [ 1, %bb.y ], [ 0, %3 ], [ 0, %bb.w ], [ 0, %bb.x ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h9eec66be3c9c945aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9141 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit.thread", label %"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit"

"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit.thread": ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val6, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit.thread.a"

"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit": ; preds = %bb.a
  %i.c = shl i64 %.val2, 2
  %i.d = or disjoint i64 %i.c, 1                  ; 2 uses
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = add i64 %i.i, %i.d                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.l = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.n = icmp ugt i64 %i.j, %i.m
  br i1 %i.n, label %bb.b, label %"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit.thread.a"

"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit.thread.a": ; preds = %"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit.thread", %"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit"
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  tail call void @_ZN5prost8encoding5float13encode_packed17h8cafcbb9630722aaE(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val3, i64 noundef %.val2, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.c

bb.b:                                             ; preds = %"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.q, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit.thread.a"
  %storemerge = phi i64 [ 0, %"_ZN88_$LT$anki_proto..scheduler..FsrsBenchmarkResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc8027c868cd033faE.exit.thread.a" ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17ha016bae73673c611E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9142 {
bb.a:
  %.val2 = load i32, ptr %1, align 4, !noundef !5 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = icmp eq i32 %.val2, 0                    ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %.val2, 1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = icmp eq i32 %.val3, 0                    ; 2 uses
  br i1 %i.k, label %"_ZN93_$LT$anki_proto..scheduler..CountsForDeckTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hf33f3a15272b92c5E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = or i32 %.val3, 1
  %i.m = sext i32 %i.l to i64
  %i.n = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 1
  br label %"_ZN93_$LT$anki_proto..scheduler..CountsForDeckTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hf33f3a15272b92c5E.exit"

"_ZN93_$LT$anki_proto..scheduler..CountsForDeckTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hf33f3a15272b92c5E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ]
  %i.t = add nuw nsw i64 %.sroa.01.0.i, %.sroa.0.0.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.u, align 8, !noundef !5 ; 2 uses
  %i.v = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN93_$LT$anki_proto..scheduler..CountsForDeckTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hf33f3a15272b92c5E.exit"
  br i1 %i.b, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5prost8encoding5int326encode17ha2e6f6ff8203a739E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.k, label %"_ZN93_$LT$anki_proto..scheduler..CountsForDeckTodayResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h2b8498c8397fb2b2E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5prost8encoding5int326encode17ha2e6f6ff8203a739E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN93_$LT$anki_proto..scheduler..CountsForDeckTodayResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h2b8498c8397fb2b2E.exit"

bb.i:                                             ; preds = %"_ZN93_$LT$anki_proto..scheduler..CountsForDeckTodayResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hf33f3a15272b92c5E.exit"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.z, align 8
  br label %"_ZN93_$LT$anki_proto..scheduler..CountsForDeckTodayResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h2b8498c8397fb2b2E.exit"

"_ZN93_$LT$anki_proto..scheduler..CountsForDeckTodayResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h2b8498c8397fb2b2E.exit": ; preds = %bb.h, %bb.g, %bb.i
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17ha1edcc01f2d0caf2E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9145 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !5 ; 7 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit", label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %.val3, 1
  %i.d = icmp eq i64 %.val3, 1
  br i1 %i.d, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %.val3, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.aa, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.z, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !9146, !noundef !5 ; 3 uses
  %i.g = icmp sgt i64 %.val.i.i.i, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = or i64 %.val.i.i.i, 1
  %i.i = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = xor i64 %i.i, 63
  %i.k = mul nuw nsw i64 %i.j, 9
  %i.l = add nuw nsw i64 %i.k, 73
  %i.m = lshr i64 %i.l, 6
  %i.n = add i64 %.val.i.i.i, %.sroa.02.0.i.i.i
  %i.o = add i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 40
  %.val.i.i.i.1 = load i64, ptr %i.q, align 8, !alias.scope !9146, !noundef !5 ; 3 uses
  %i.r = icmp sgt i64 %.val.i.i.i.1, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = or i64 %.val.i.i.i.1, 1
  %i.t = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = xor i64 %i.t, 63
  %i.v = mul nuw nsw i64 %i.u, 9
  %i.w = add nuw nsw i64 %i.v, 73
  %i.x = lshr i64 %i.w, 6
  %i.y = add i64 %.val.i.i.i.1, %i.o
  %i.z = add i64 %i.y, %i.x                       ; 3 uses
  %i.aa = add nuw i64 %.sroa.04.0.i.i.i, 2        ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit.loopexit.unr-lcssa", label %.preheader.i.i

"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit.loopexit.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit.loopexit.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.aa, %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit.loopexit.unr-lcssa" ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.z, %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod8 = trunc i64 %.val3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.epil.init
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %.val.i.i.i.epil = load i64, ptr %i.ac, align 8, !alias.scope !9146, !noundef !5 ; 3 uses
  %i.ad = icmp sgt i64 %.val.i.i.i.epil, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = or i64 %.val.i.i.i.epil, 1
  %i.af = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = xor i64 %i.af, 63
  %i.ah = mul nuw nsw i64 %i.ag, 9
  %i.ai = add nuw nsw i64 %i.ah, 73
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = add i64 %.val.i.i.i.epil, %.sroa.02.0.i.i.i.epil.init
  %i.al = add i64 %i.ak, %i.aj
  br label %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit"

"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit": ; preds = %.preheader.i.i.epil.preheader, %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit.loopexit.unr-lcssa", %bb.a
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.z, %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit.loopexit.unr-lcssa" ], [ %i.al, %.preheader.i.i.epil.preheader ]
  %i.am = add i64 %.sroa.0.0.i.i.i, %.val3        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.an, align 8, !noundef !5 ; 2 uses
  %i.ao = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.aq = icmp ugt i64 %i.am, %i.ap
  br i1 %i.aq, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit"
  tail call void @_ZN5prost8encoding6string15encode_repeated17h84bd5e0374af0676E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2, i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.c:                                             ; preds = %"_ZN81_$LT$anki_proto..tags..CompleteTagResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hfef7e641cc8c2da7E.exit"
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ap, ptr %i.as, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17ha3eb3e4c5ec6111bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9149 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9150, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %i.b, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !9150, !noundef !5 ; 4 uses
  %.not.i.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = or i64 %.val.i, 1
  %i.n = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw i64 %.val.i, 1
  %i.t = add nuw i64 %i.s, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !9150, !noundef !5 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = or i64 %i.v, 1
  %i.y = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = xor i64 %i.y, 63
  %i.aa = mul nuw nsw i64 %i.z, 9
  %i.ab = add nuw nsw i64 %i.aa, 73
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = add nuw nsw i64 %i.ac, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.02.0.i = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !9150, !noundef !5 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = or i32 %i.af, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = xor i64 %i.aj, 63
  %i.al = mul nuw nsw i64 %i.ak, 9
  %i.am = add nuw nsw i64 %i.al, 73
  %i.an = lshr i64 %i.am, 6
  %i.ao = add nuw nsw i64 %i.an, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.h ], [ 0, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !8, !alias.scope !9150, !noundef !5
  %.not.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not.i, label %"_ZN79_$LT$anki_proto..deck_config..DeckConfig$u20$as$u20$prost..message..Message$GT$11encoded_len17h2ba9001dcf05ecadE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call fastcc noundef i64 @"_ZN88_$LT$anki_proto..deck_config..deck_config..Config$u20$as$u20$prost..message..Message$GT$11encoded_len17he57b714220354009E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) dereferenceable_or_null(336) %i.ap) ; 2 uses
  %i.as = or i64 %i.ar, 1
  %i.at = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.as, i1 true)
  %i.au = xor i64 %i.at, 63
  %i.av = mul nuw nsw i64 %i.au, 9
  %i.aw = add nuw nsw i64 %i.av, 73
  %i.ax = lshr i64 %i.aw, 6
  %i.ay = add i64 %i.ar, 1
  %i.az = add i64 %i.ay, %i.ax
  br label %"_ZN79_$LT$anki_proto..deck_config..DeckConfig$u20$as$u20$prost..message..Message$GT$11encoded_len17h2ba9001dcf05ecadE.exit"

"_ZN79_$LT$anki_proto..deck_config..DeckConfig$u20$as$u20$prost..message..Message$GT$11encoded_len17h2ba9001dcf05ecadE.exit": ; preds = %bb.i, %bb.j
  %.sroa.02.0.i.i = phi i64 [ %i.az, %bb.j ], [ 0, %bb.i ]
  %i.ba = add nuw i64 %.sroa.01.0.i, %.sroa.0.0.i
  %i.bb = add nuw i64 %i.ba, %.sroa.02.0.i
  %i.bc = add nuw i64 %i.bb, %.sroa.03.0.i
  %i.bd = add i64 %i.bc, %.sroa.02.0.i.i          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.be, align 8, !noundef !5 ; 2 uses
  %i.bf = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.bh = icmp ugt i64 %i.bd, %i.bg
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN79_$LT$anki_proto..deck_config..DeckConfig$u20$as$u20$prost..message..Message$GT$11encoded_len17h2ba9001dcf05ecadE.exit"
  tail call fastcc void @"_ZN79_$LT$anki_proto..deck_config..DeckConfig$u20$as$u20$prost..message..Message$GT$10encode_raw17hde2531769cd5cd9eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  br label %bb.m

bb.l:                                             ; preds = %"_ZN79_$LT$anki_proto..deck_config..DeckConfig$u20$as$u20$prost..message..Message$GT$11encoded_len17h2ba9001dcf05ecadE.exit"
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bg, ptr %i.bj, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge = phi i64 [ 0, %bb.k ], [ 1, %bb.l ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hada1ccd1b7ae4014E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9151 {
bb.a:
  %.val2 = load i32, ptr %1, align 4, !noundef !5 ; 3 uses
  %i.a = icmp eq i32 %.val2, 0
  br i1 %i.a, label %.thread, label %"_ZN84_$LT$anki_proto..scheduler..FuzzDeltaResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h8e0913eb8324c284E.exit"

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val4, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN84_$LT$anki_proto..scheduler..FuzzDeltaResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17ha6f606ad7fd2844dE.exit"

"_ZN84_$LT$anki_proto..scheduler..FuzzDeltaResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h8e0913eb8324c284E.exit": ; preds = %bb.a
  %i.b = shl i32 %.val2, 1
  %i.c = ashr i32 %.val2, 31
  %i.d = xor i32 %i.b, %i.c
  %i.e = or i32 %i.d, 1
  %i.f = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = xor i32 %i.f, 31
  %i.h = mul nuw nsw i32 %i.g, 9
  %i.i = add nuw nsw i32 %i.h, 73
  %i.j = lshr i32 %i.i, 6
  %narrow.i.i = add nuw nsw i32 %i.j, 1
  %i.k = zext nneg i32 %narrow.i.i to i64         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.m = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.o = icmp samesign ult i64 %i.n, %i.k
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN84_$LT$anki_proto..scheduler..FuzzDeltaResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h8e0913eb8324c284E.exit"
  tail call void @_ZN5prost8encoding6sint326encode17ha40a0a2e887465aaE(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN84_$LT$anki_proto..scheduler..FuzzDeltaResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17ha6f606ad7fd2844dE.exit"

bb.c:                                             ; preds = %"_ZN84_$LT$anki_proto..scheduler..FuzzDeltaResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h8e0913eb8324c284E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.q, align 8
  br label %"_ZN84_$LT$anki_proto..scheduler..FuzzDeltaResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17ha6f606ad7fd2844dE.exit"

"_ZN84_$LT$anki_proto..scheduler..FuzzDeltaResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17ha6f606ad7fd2844dE.exit": ; preds = %bb.b, %.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17haf40c9457a9f3583E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9190 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9191)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9191, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !9191, !noundef !5 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %_ZN5prost8encoding7message20encoded_len_repeated17hc25ac7018ead95dbE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.m, %.preheader.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.l, %.preheader.i.i ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %.sroa.04.0.i.i.i.i
  %i.j = tail call fastcc noundef range(i64 0, 64) i64 @"_ZN100_$LT$anki_proto..stats..card_stats_response..StatsRevlogEntry$u20$as$u20$prost..message..Message$GT$11encoded_len17h8ea555e68155e9caE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i), !alias.scope !9192, !noalias !9191
  %i.k = add i64 %.sroa.02.0.i.i.i.i, 1
  %i.l = add i64 %i.k, %i.j                       ; 2 uses
  %i.m = add nuw i64 %.sroa.04.0.i.i.i.i, 1       ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.g
  br i1 %i.n, label %_ZN5prost8encoding7message20encoded_len_repeated17hc25ac7018ead95dbE.exit.i, label %.preheader.i.i

_ZN5prost8encoding7message20encoded_len_repeated17hc25ac7018ead95dbE.exit.i: ; preds = %.preheader.i.i, %bb.a
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.l, %.preheader.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !9191, !noundef !5 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5prost8encoding7message20encoded_len_repeated17hc25ac7018ead95dbE.exit.i
  %i.r = or i64 %i.p, 1
  %i.s = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = xor i64 %i.s, 63
  %i.u = mul nuw nsw i64 %i.t, 9
  %i.v = add nuw nsw i64 %i.u, 73
  %i.w = lshr i64 %i.v, 6
  %i.x = add nuw nsw i64 %i.w, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5prost8encoding7message20encoded_len_repeated17hc25ac7018ead95dbE.exit.i
  %.sroa.0.0.i = phi i64 [ %i.x, %bb.b ], [ 0, %_ZN5prost8encoding7message20encoded_len_repeated17hc25ac7018ead95dbE.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !9191, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0                     ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i64 %i.z, 1
  %i.ac = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = xor i64 %i.ac, 63
  %i.ae = mul nuw nsw i64 %i.ad, 9
  %i.af = add nuw nsw i64 %i.ae, 73
  %i.ag = lshr i64 %i.af, 6
  %i.ah = add nuw nsw i64 %i.ag, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.ah, %bb.d ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val28.i = load i64, ptr %i.ai, align 8, !alias.scope !9191, !noundef !5 ; 4 uses
  %.not.i.not.i = icmp eq i64 %.val28.i, 0        ; 2 uses
  br i1 %.not.i.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp sgt i64 %.val28.i, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = or i64 %.val28.i, 1
  %i.al = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = xor i64 %i.al, 63
  %i.an = mul nuw nsw i64 %i.am, 9
  %i.ao = add nuw nsw i64 %i.an, 73
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = add nuw i64 %.val28.i, 1
  %i.ar = add nuw i64 %i.aq, %i.ap
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.02.0.i = phi i64 [ %i.ar, %bb.f ], [ 0, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !9191, !noundef !5 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = or i64 %i.at, 1
  %i.aw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = xor i64 %i.aw, 63
  %i.ay = mul nuw nsw i64 %i.ax, 9
  %i.az = add nuw nsw i64 %i.ay, 73
  %i.ba = lshr i64 %i.az, 6
  %i.bb = add nuw nsw i64 %i.ba, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.03.0.i = phi i64 [ %i.bb, %bb.h ], [ 0, %bb.g ]
  %i.bc = load i64, ptr %1, align 8, !range !16, !alias.scope !9191, !noundef !5
  %i.bd = trunc nuw i64 %i.bc to i1               ; 2 uses
  br i1 %i.bd, label %bb.j, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hce4b51b46f18ba56E.exit.i"

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %i.be, align 8, !alias.scope !9193, !noundef !5
  %i.bf = or i64 %.val.i.i, 1
  %i.bg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true)
  %i.bh = xor i64 %i.bg, 63
  %i.bi = mul nuw nsw i64 %i.bh, 9
  %i.bj = add nuw nsw i64 %i.bi, 73
  %i.bk = lshr i64 %i.bj, 6
  %i.bl = add nuw nsw i64 %i.bk, 1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hce4b51b46f18ba56E.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hce4b51b46f18ba56E.exit.i": ; preds = %bb.j, %bb.i
  %.sroa.02.0.i.i = phi i64 [ %i.bl, %bb.j ], [ 0, %bb.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !16, !alias.scope !9191, !noundef !5
  %i.bo = trunc nuw i64 %i.bn to i1               ; 2 uses
  br i1 %i.bo, label %bb.k, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h8b5f0d7763c874d2E.exit.i"

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hce4b51b46f18ba56E.exit.i"
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i43.i = load i64, ptr %i.bp, align 8, !alias.scope !9194, !noundef !5
  %i.bq = or i64 %.val.i43.i, 1
  %i.br = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = xor i64 %i.br, 63
  %i.bt = mul nuw nsw i64 %i.bs, 9
  %i.bu = add nuw nsw i64 %i.bt, 73
  %i.bv = lshr i64 %i.bu, 6
  %i.bw = add nuw nsw i64 %i.bv, 1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h8b5f0d7763c874d2E.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h8b5f0d7763c874d2E.exit.i": ; preds = %bb.k, %"_ZN4core6option15Option$LT$T$GT$6map_or17hce4b51b46f18ba56E.exit.i"
  %.sroa.02.0.i44.i = phi i64 [ %i.bw, %bb.k ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hce4b51b46f18ba56E.exit.i" ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !range !16, !alias.scope !9191, !noundef !5
  %i.bz = trunc nuw i64 %i.by to i1               ; 2 uses
  br i1 %i.bz, label %bb.l, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hebb7892488eba06eE.exit.i"

bb.l:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h8b5f0d7763c874d2E.exit.i"
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i46.i = load i64, ptr %i.ca, align 8, !alias.scope !9195, !noundef !5
  %i.cb = or i64 %.val.i46.i, 1
  %i.cc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = xor i64 %i.cc, 63
  %i.ce = mul nuw nsw i64 %i.cd, 9
  %i.cf = add nuw nsw i64 %i.ce, 73
  %i.cg = lshr i64 %i.cf, 6
  %i.ch = add nuw nsw i64 %i.cg, 1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hebb7892488eba06eE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hebb7892488eba06eE.exit.i": ; preds = %bb.l, %"_ZN4core6option15Option$LT$T$GT$6map_or17h8b5f0d7763c874d2E.exit.i"
  %.sroa.02.0.i47.i = phi i64 [ %i.ch, %bb.l ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h8b5f0d7763c874d2E.exit.i" ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cj = load i32, ptr %i.ci, align 8, !range !6, !alias.scope !9191, !noundef !5
  %i.ck = trunc nuw i32 %i.cj to i1               ; 2 uses
  br i1 %i.ck, label %bb.m, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h090248046f03cc2fE.exit.i"

bb.m:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hebb7892488eba06eE.exit.i"
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 244
  %.val.i49.i = load i32, ptr %i.cl, align 4, !alias.scope !9196, !noundef !5
  %i.cm = or i32 %.val.i49.i, 1
  %i.cn = sext i32 %i.cm to i64
  %i.co = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = xor i64 %i.co, 63
  %i.cq = mul nuw nsw i64 %i.cp, 9
  %i.cr = add nuw nsw i64 %i.cq, 73
  %i.cs = lshr i64 %i.cr, 6
  %i.ct = add nuw nsw i64 %i.cs, 1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h090248046f03cc2fE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h090248046f03cc2fE.exit.i": ; preds = %bb.m, %"_ZN4core6option15Option$LT$T$GT$6map_or17hebb7892488eba06eE.exit.i"
  %.sroa.02.0.i50.i = phi i64 [ %i.ct, %bb.m ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hebb7892488eba06eE.exit.i" ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 300 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !alias.scope !9191, !noundef !5 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0                    ; 2 uses
  br i1 %i.cw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h090248046f03cc2fE.exit.i"
  %i.cx = or i32 %i.cv, 1
  %i.cy = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cx, i1 true)
  %i.cz = xor i32 %i.cy, 31
  %i.da = mul nuw nsw i32 %i.cz, 9
  %i.db = add nuw nsw i32 %i.da, 73
  %i.dc = lshr i32 %i.db, 6
  %narrow.i.i = add nuw nsw i32 %i.dc, 1
  %i.dd = zext nneg i32 %narrow.i.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZN4core6option15Option$LT$T$GT$6map_or17h090248046f03cc2fE.exit.i"
  %.sroa.08.0.i = phi i64 [ %i.dd, %bb.n ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h090248046f03cc2fE.exit.i" ]
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !alias.scope !9191, !noundef !5 ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0                    ; 2 uses
  br i1 %i.dg, label %bb.q, label %bb.p
end_hunk_2
begin_hunk_3_@_ZN5prost7message7Message6encode17hcccb90aebbbb61adE:bb.a
  %i.co = add nuw nsw i32 %i.cn, 73
  %i.cp = lshr i32 %i.co, 6
  %narrow.i15.i = add nuw nsw i32 %i.cp, 1
  %i.cq = zext nneg i32 %narrow.i15.i to i64
  br label %"_ZN94_$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h64b02df8987205b2E.exit"

"_ZN94_$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h64b02df8987205b2E.exit": ; preds = %bb.l, %bb.m
  %.sroa.05.0.i = phi i64 [ %i.cq, %bb.m ], [ 0, %bb.l ]
  %i.cr = add i64 %.sroa.0.0.i.i.i.i, %i.e
  %i.cs = add i64 %i.cr, %.sroa.0.0.i
  %i.ct = add i64 %i.cs, %.sroa.01.0.i
  %i.cu = add i64 %i.ct, %.sroa.02.0.i
  %i.cv = add i64 %i.cu, %.sroa.03.0.i
  %i.cw = add i64 %i.cv, %.sroa.04.0.i
  %i.cx = add i64 %i.cw, %.sroa.05.0.i            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.cy, align 8, !noundef !5 ; 2 uses
  %i.cz = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.db = icmp ugt i64 %i.cx, %i.da
  br i1 %i.db, label %bb.af, label %bb.n

bb.n:                                             ; preds = %"_ZN94_$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h64b02df8987205b2E.exit"
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %_ZN5prost8encoding7message6encode17hd4aa48f7a2a28571E.exit.i
  %.sroa.0.02.i = phi ptr [ %i.dd, %_ZN5prost8encoding7message6encode17hd4aa48f7a2a28571E.exit.i ], [ %i.c, %bb.n ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9382
  store i8 10, ptr %i.a, align 1, !noalias !9382
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !9383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9382
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16
  %.val.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !9384, !noalias !9385, !noundef !5 ; 4 uses
  %.not.i.not.i.i.i = icmp eq i64 %.val.i.i.i, 0  ; 2 uses
  br i1 %.not.i.not.i.i.i, label %"_ZN102_$LT$anki_proto..scheduler..custom_study_defaults_response..Tag$u20$as$u20$prost..message..Message$GT$11encoded_len17hed1dd0146967a7ebE.exit.i.i", label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.df = icmp sgt i64 %.val.i.i.i, -1
  call void @llvm.assume(i1 %i.df)
  %i.dg = or i64 %.val.i.i.i, 1
  %i.dh = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true)
  %i.di = xor i64 %i.dh, 63
  %i.dj = mul nuw nsw i64 %i.di, 9
  %i.dk = add nuw nsw i64 %i.dj, 73
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = add nuw i64 %.val.i.i.i, 1
  %i.dn = add nuw i64 %i.dm, %i.dl
  br label %"_ZN102_$LT$anki_proto..scheduler..custom_study_defaults_response..Tag$u20$as$u20$prost..message..Message$GT$11encoded_len17hed1dd0146967a7ebE.exit.i.i"

"_ZN102_$LT$anki_proto..scheduler..custom_study_defaults_response..Tag$u20$as$u20$prost..message..Message$GT$11encoded_len17hed1dd0146967a7ebE.exit.i.i": ; preds = %bb.o, %.lr.ph.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.dn, %bb.o ], [ 0, %.lr.ph.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 8, !range !24, !alias.scope !9384, !noalias !9385, !noundef !5 ; 2 uses
  %i.dq = shl nuw nsw i8 %i.dp, 1
  %spec.select.i.i.i = zext nneg i8 %i.dq to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 25 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !range !24, !alias.scope !9384, !noalias !9385, !noundef !5 ; 2 uses
  %i.dt = shl nuw nsw i8 %i.ds, 1
  %.sroa.02.0.i.i.i = zext nneg i8 %i.dt to i64
  %i.du = add nuw i64 %.sroa.0.0.i.i.i, %spec.select.i.i.i
  %i.dv = add nuw i64 %i.du, %.sroa.02.0.i.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.dv, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9383
  br i1 %.not.i.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %"_ZN102_$LT$anki_proto..scheduler..custom_study_defaults_response..Tag$u20$as$u20$prost..message..Message$GT$11encoded_len17hed1dd0146967a7ebE.exit.i.i"
  call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.02.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9385
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %"_ZN102_$LT$anki_proto..scheduler..custom_study_defaults_response..Tag$u20$as$u20$prost..message..Message$GT$11encoded_len17hed1dd0146967a7ebE.exit.i.i"
  %i.dw = trunc nuw i8 %i.dp to i1
  br i1 %i.dw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.dx = trunc nuw i8 %i.ds to i1
  br i1 %i.dx, label %bb.t, label %_ZN5prost8encoding7message6encode17hd4aa48f7a2a28571E.exit.i

bb.s:                                             ; preds = %bb.q
  call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.do, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9385
  br label %bb.r

bb.t:                                             ; preds = %bb.r
  call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.dr, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9385
  br label %_ZN5prost8encoding7message6encode17hd4aa48f7a2a28571E.exit.i

_ZN5prost8encoding7message6encode17hd4aa48f7a2a28571E.exit.i: ; preds = %bb.t, %bb.r
  %i.dy = icmp eq ptr %i.dd, %i.dc
  br i1 %i.dy, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN5prost8encoding7message6encode17hd4aa48f7a2a28571E.exit.i, %bb.n
  br i1 %i.al, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  br i1 %i.av, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.bf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.bp, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 5, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bn, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.bz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 6, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.cj, label %"_ZN94_$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h674fe99f487ae9e0E.exit", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 7, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ch, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN94_$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h674fe99f487ae9e0E.exit"

bb.af:                                            ; preds = %"_ZN94_$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h64b02df8987205b2E.exit"
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cx, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.da, ptr %i.ea, align 8
  br label %"_ZN94_$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h674fe99f487ae9e0E.exit"

"_ZN94_$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h674fe99f487ae9e0E.exit": ; preds = %bb.ae, %bb.ad, %bb.af
  %storemerge = phi i64 [ 1, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ae ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hd8876360171a0a57E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9386 {
bb.a:
  %.val2 = load float, ptr %1, align 4, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.val3 = load float, ptr %i.a, align 4, !noundef !5
  %i.b = fcmp une float %.val2, 0.000000e+00      ; 2 uses
  %..i = select i1 %i.b, i64 5, i64 0
  %i.c = fcmp une float %.val3, 0.000000e+00      ; 2 uses
  %.sroa.01.0.i = select i1 %i.c, i64 5, i64 0
  %i.d = add nuw nsw i64 %.sroa.01.0.i, %..i      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.f = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.h = icmp samesign ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5prost8encoding5float6encode17hfe415d438d0265c6E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.c, label %bb.e, label %"_ZN89_$LT$anki_proto..scheduler..EvaluateParamsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h23128edda1a46879E.exit"

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5prost8encoding5float6encode17hfe415d438d0265c6E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN89_$LT$anki_proto..scheduler..EvaluateParamsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h23128edda1a46879E.exit"

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.j, align 8
  br label %"_ZN89_$LT$anki_proto..scheduler..EvaluateParamsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h23128edda1a46879E.exit"

"_ZN89_$LT$anki_proto..scheduler..EvaluateParamsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h23128edda1a46879E.exit": ; preds = %bb.e, %bb.d, %bb.f
  %storemerge = phi i64 [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hd898f3341fadc249E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9387 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %.not.i.not.i = icmp eq i64 %.val2, 0
  br i1 %.not.i.not.i, label %.thread, label %"_ZN78_$LT$anki_proto..ankihub..LoginResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc1f90b76be086fdfE.exit"

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val5 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val5, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN78_$LT$anki_proto..ankihub..LoginResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h82e83cf71d4c131fE.exit"

"_ZN78_$LT$anki_proto..ankihub..LoginResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc1f90b76be086fdfE.exit": ; preds = %bb.a
  %i.b = icmp sgt i64 %.val2, -1
  tail call void @llvm.assume(i1 %i.b)
  %i.c = or i64 %.val2, 1
  %i.d = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = mul nuw nsw i64 %i.e, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6
  %i.i = add nuw i64 %.val2, 1
  %i.j = add nuw i64 %i.i, %i.h                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.l = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.n = icmp ugt i64 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN78_$LT$anki_proto..ankihub..LoginResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc1f90b76be086fdfE.exit"
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN78_$LT$anki_proto..ankihub..LoginResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h82e83cf71d4c131fE.exit"

bb.c:                                             ; preds = %"_ZN78_$LT$anki_proto..ankihub..LoginResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17hc1f90b76be086fdfE.exit"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.p, align 8
  br label %"_ZN78_$LT$anki_proto..ankihub..LoginResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h82e83cf71d4c131fE.exit"

"_ZN78_$LT$anki_proto..ankihub..LoginResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h82e83cf71d4c131fE.exit": ; preds = %bb.b, %.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hde086aa9be57ed1eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9390 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !9391, !noundef !5 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.b, 1
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = xor i32 %i.e, 31
  %i.g = mul nuw nsw i32 %i.f, 9
  %i.h = add nuw nsw i32 %i.g, 73
  %i.i = lshr i32 %i.h, 6
  %narrow.i.i = add nuw nsw i32 %i.i, 1
  %i.j = zext nneg i32 %narrow.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !9391, !noundef !5 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = or i32 %i.l, 1
  %i.o = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = mul nuw nsw i32 %i.p, 9
  %i.r = add nuw nsw i32 %i.q, 73
  %i.s = lshr i32 %i.r, 6
  %narrow.i12.i = add nuw nsw i32 %i.s, 1
  %i.t = zext nneg i32 %narrow.i12.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !24, !alias.scope !9391, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !range !24, !alias.scope !9391, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !range !24, !alias.scope !9391, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 35 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !24, !alias.scope !9391, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !range !24, !alias.scope !9391, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !range !24, !alias.scope !9391, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.ag, align 8, !alias.scope !9391, !noundef !5 ; 4 uses
  %.not.i.not.i = icmp eq i64 %.val.i, 0          ; 2 uses
  br i1 %.not.i.not.i, label %"_ZN87_$LT$anki_proto..scheduler..CongratsInfoResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he8f54ff2a350be30E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = or i64 %.val.i, 1
  %i.aj = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = xor i64 %i.aj, 63
  %i.al = mul nuw nsw i64 %i.ak, 9
  %i.am = add nuw nsw i64 %i.al, 73
  %i.an = lshr i64 %i.am, 6
  %i.ao = add nuw i64 %.val.i, 1
  %i.ap = add nuw i64 %i.ao, %i.an
  br label %"_ZN87_$LT$anki_proto..scheduler..CongratsInfoResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he8f54ff2a350be30E.exit"

"_ZN87_$LT$anki_proto..scheduler..CongratsInfoResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he8f54ff2a350be30E.exit": ; preds = %bb.e, %bb.f
  %.sroa.08.0.i = phi i64 [ %i.ap, %bb.f ], [ 0, %bb.e ]
  %i.aq = shl nuw nsw i8 %i.af, 1
  %.sroa.07.0.i = zext nneg i8 %i.aq to i64
  %i.ar = shl nuw nsw i8 %i.ad, 1
  %.sroa.06.0.i = zext nneg i8 %i.ar to i64
  %i.as = shl nuw nsw i8 %i.ab, 1
  %.sroa.05.0.i = zext nneg i8 %i.as to i64
  %i.at = shl nuw nsw i8 %i.z, 1
  %.sroa.04.0.i = zext nneg i8 %i.at to i64
  %i.au = shl nuw nsw i8 %i.x, 1
  %.sroa.03.0.i = zext nneg i8 %i.au to i64
  %i.av = shl nuw nsw i8 %i.v, 1
  %spec.select.i = zext nneg i8 %i.av to i64
  %i.aw = add nuw nsw i64 %.sroa.01.0.i, %.sroa.0.0.i
  %i.ax = add nuw nsw i64 %i.aw, %spec.select.i
  %i.ay = add nuw nsw i64 %i.ax, %.sroa.03.0.i
  %i.az = add nuw nsw i64 %i.ay, %.sroa.04.0.i
  %i.ba = add nuw nsw i64 %i.az, %.sroa.05.0.i
  %i.bb = add nuw nsw i64 %i.ba, %.sroa.06.0.i
  %i.bc = add nuw nsw i64 %i.bb, %.sroa.07.0.i
  %i.bd = add nuw i64 %i.bc, %.sroa.08.0.i        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.be, align 8, !noundef !5 ; 2 uses
  %i.bf = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.bh = icmp ugt i64 %i.bd, %i.bg
  br i1 %i.bh, label %bb.y, label %bb.g

bb.g:                                             ; preds = %"_ZN87_$LT$anki_proto..scheduler..CongratsInfoResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he8f54ff2a350be30E.exit"
  br i1 %i.c, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.m, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = trunc nuw i8 %i.v to i1
  br i1 %i.bi, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bj = trunc nuw i8 %i.x to i1
  br i1 %i.bj, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.bk = trunc nuw i8 %i.z to i1
  br i1 %i.bk, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.n

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.bl = trunc nuw i8 %i.ab to i1
  br i1 %i.bl, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.p

bb.r:                                             ; preds = %bb.s, %bb.p
  %i.bm = trunc nuw i8 %i.ad to i1
  br i1 %i.bm, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.r

bb.t:                                             ; preds = %bb.u, %bb.r
  %i.bn = trunc nuw i8 %i.af to i1
  br i1 %i.bn, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.r
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.t

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %.not.i.not.i, label %"_ZN87_$LT$anki_proto..scheduler..CongratsInfoResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h6e02a380a26864c7E.exit", label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN87_$LT$anki_proto..scheduler..CongratsInfoResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h6e02a380a26864c7E.exit"

bb.y:                                             ; preds = %"_ZN87_$LT$anki_proto..scheduler..CongratsInfoResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17he8f54ff2a350be30E.exit"
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bg, ptr %i.bp, align 8
  br label %"_ZN87_$LT$anki_proto..scheduler..CongratsInfoResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h6e02a380a26864c7E.exit"

"_ZN87_$LT$anki_proto..scheduler..CongratsInfoResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h6e02a380a26864c7E.exit": ; preds = %bb.x, %bb.v, %bb.y
  %storemerge = phi i64 [ 1, %bb.y ], [ 0, %bb.v ], [ 0, %bb.x ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17he58035e01f205046E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9447 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = load i64, ptr %1, align 8, !range !25, !alias.scope !9448, !noundef !5 ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 -9223372036854775807, label %.thread
    i64 -9223372036854775808, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val4, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h7f5b4d3a09b03d14E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !9449, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %.val.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5f0fb49ede364de4E.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = tail call fastcc noundef i64 @"_ZN126_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionNote$u20$as$u20$prost..message..Message$GT$11encoded_len17h2f0840c885bde09fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) dereferenceable_or_null(152) %1)
  br label %"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5f0fb49ede364de4E.exit"

"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5f0fb49ede364de4E.exit": ; preds = %bb.b, %bb.c
  %.sink5.i.i.i.i = phi i64 [ %i.h, %bb.c ], [ %.val.i.i.i.i, %bb.b ] ; 2 uses
  %i.i = or i64 %.sink5.i.i.i.i, 1
  %i.j = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = mul nuw nsw i64 %i.k, 9
  %i.m = add nuw nsw i64 %i.l, 73
  %i.n = lshr i64 %i.m, 6
  %i.o = add i64 %.sink5.i.i.i.i, 1
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.r = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.t = icmp ugt i64 %i.p, %i.s
  br i1 %i.t, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5f0fb49ede364de4E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9451)
  %i.u = icmp eq i64 %i.e, -9223372036854775808
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h7f5b4d3a09b03d14E.exit"

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9453
  store i8 10, ptr %i.d, align 1, !noalias !9453
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 1), !noalias !9452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9453
  %i.w = call fastcc noundef i64 @"_ZN126_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionNote$u20$as$u20$prost..message..Message$GT$11encoded_len17h2f0840c885bde09fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1)
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9452
  call void @llvm.experimental.noalias.scope.decl(metadata !9454)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !9455, !noundef !5
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !9455, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !9455, !noundef !5 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ad, 5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @_ZN5prost8encoding5bytes6encode17hc97bdaae4a574ff1E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.g

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZN5prost8encoding7message6encode17hbc91d86986fbaa07E.exit.i.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.ag, %_ZN5prost8encoding7message6encode17hbc91d86986fbaa07E.exit.i.i.i.i ], [ %i.ab, %bb.g ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9456)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9457
  store i8 18, ptr %i.c, align 1, !noalias !9457
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9457
  %i.ah = call fastcc noundef i64 @"_ZN122_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusion$u20$as$u20$prost..message..Message$GT$11encoded_len17haf2597f3e218ee44E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.08.i.i.i.i)
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9456
  call void @llvm.experimental.noalias.scope.decl(metadata !9458)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !9459, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !9459, !noundef !5 ; 2 uses
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.al, 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %_ZN5prost8encoding7message6encode17h55a28b43a55da919E.exit.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZN5prost8encoding7message6encode17h55a28b43a55da919E.exit.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9461
  store i8 10, ptr %i.b, align 1, !noalias !9461
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !9462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9461
  call void @llvm.experimental.noalias.scope.decl(metadata !9463)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !9464, !noalias !9459, !noundef !5 ; 4 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aq = icmp sgt i64 %.val.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = or i64 %.val.i.i.i.i.i.i.i.i, 1
  %i.as = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = xor i64 %i.as, 63
  %i.au = mul nuw nsw i64 %i.at, 9
  %i.av = add nuw nsw i64 %i.au, 73
  %i.aw = lshr i64 %i.av, 6
  %i.ax = add nuw i64 %.val.i.i.i.i.i.i.i.i, 1
  %i.ay = add nuw i64 %i.ax, %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.i ], [ 0, %.lr.ph.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !9464, !noalias !9459, !nonnull !5, !noundef !5 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !9464, !noalias !9459, !noundef !5 ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 0                    ; 2 uses
  br i1 %i.bd, label %"_ZN127_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionShape$u20$as$u20$prost..message..Message$GT$11encoded_len17h5bc0701723a6e133E.exit.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.j, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ci, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.j ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ch, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.j ]
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.ba, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !9465, !noalias !9466, !noundef !5 ; 4 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 40
  %.val13.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !9465, !noalias !9466 ; 4 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.bh = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bh)
  %i.bi = or i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.bj = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = xor i64 %i.bj, 63
  %i.bl = mul nuw nsw i64 %i.bk, 9
  %i.bm = add nuw nsw i64 %i.bl, 73
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = add nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.bp = add nuw i64 %i.bo, %i.bn
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %bb.k ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ]
  %.not.i5.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val13.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i5.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = icmp sgt i64 %.val13.i.i.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bq)
  %i.br = or i64 %.val13.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.bs = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = xor i64 %i.bs, 63
  %i.bu = mul nuw nsw i64 %i.bt, 9
  %i.bv = add nuw nsw i64 %i.bu, 73
  %i.bw = lshr i64 %i.bv, 6
  %i.bx = add nuw i64 %.val13.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.by = add nuw i64 %i.bx, %i.bw
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.m, %bb.l
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ 0, %bb.l ]
  %i.bz = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ca = or i64 %i.bz, 1
  %i.cb = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = xor i64 %i.cb, 63
  %i.cd = mul nuw nsw i64 %i.cc, 9
  %i.ce = add nuw nsw i64 %i.cd, 73
  %i.cf = lshr i64 %i.ce, 6
  %i.cg = add i64 %i.bz, %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = add i64 %i.cg, %i.cf                    ; 2 uses
  %i.ci = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, %i.bc
  br i1 %i.cj, label %"_ZN127_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionShape$u20$as$u20$prost..message..Message$GT$11encoded_len17h5bc0701723a6e133E.exit.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i

"_ZN127_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionShape$u20$as$u20$prost..message..Message$GT$11encoded_len17h5bc0701723a6e133E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.j
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.ch, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h842e9edf28503fb0E.exit.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.ck = add i64 %i.bc, %.sroa.0.0.i.i.i.i.i.i.i.i
  %i.cl = add i64 %i.ck, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.cl, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9462
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %"_ZN127_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionShape$u20$as$u20$prost..message..Message$GT$11encoded_len17h5bc0701723a6e133E.exit.i.i.i.i.i.i.i"
  call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.02.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9459
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZN127_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionShape$u20$as$u20$prost..message..Message$GT$11encoded_len17h5bc0701723a6e133E.exit.i.i.i.i.i.i.i"
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.bc, 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i
  br i1 %i.bd, label %_ZN5prost8encoding7message6encode17h55a28b43a55da919E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.o, %_ZN5prost8encoding7message6encode17hfe78d0c5a56b89a8E.exit.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %_ZN5prost8encoding7message6encode17hfe78d0c5a56b89a8E.exit.i.i.i.i.i.i.i.i ], [ %i.ba, %bb.o ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9468
  store i8 18, ptr %i.a, align 1, !noalias !9468
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !9469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9468
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !9467, !noalias !9459, !noundef !5 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 40
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !9467, !noalias !9459 ; 4 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cq = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.cq)
  %i.cr = or i64 %.val.i.i.i.i.i.i.i.i.i, 1
  %i.cs = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = xor i64 %i.cs, 63
  %i.cu = mul nuw nsw i64 %i.ct, 9
  %i.cv = add nuw nsw i64 %i.cu, 73
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = add nuw i64 %.val.i.i.i.i.i.i.i.i.i, 1
  %i.cy = add nuw i64 %i.cx, %i.cw
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cy, %bb.p ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.not.i5.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not.i5.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN130_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionProperty$u20$as$u20$prost..message..Message$GT$11encoded_len17h4128982edef0b86cE.exit.i.i.i.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = icmp sgt i64 %.val1.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.cz)
  %i.da = or i64 %.val1.i.i.i.i.i.i.i.i.i, 1
  %i.db = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = xor i64 %i.db, 63
  %i.dd = mul nuw nsw i64 %i.dc, 9
  %i.de = add nuw nsw i64 %i.dd, 73
  %i.df = lshr i64 %i.de, 6
  %i.dg = add nuw i64 %.val1.i.i.i.i.i.i.i.i.i, 1
  %i.dh = add nuw i64 %i.dg, %i.df
  br label %"_ZN130_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionProperty$u20$as$u20$prost..message..Message$GT$11encoded_len17h4128982edef0b86cE.exit.i.i.i.i.i.i.i.i.i"

"_ZN130_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionProperty$u20$as$u20$prost..message..Message$GT$11encoded_len17h4128982edef0b86cE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.r, %bb.q
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dh, %bb.r ], [ 0, %bb.q ]
  %i.di = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.di, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9469
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %"_ZN130_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionProperty$u20$as$u20$prost..message..Message$GT$11encoded_len17h4128982edef0b86cE.exit.i.i.i.i.i.i.i.i.i"
  call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.02.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9459
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %"_ZN130_$LT$anki_proto..image_occlusion..get_image_occlusion_note_response..ImageOcclusionProperty$u20$as$u20$prost..message..Message$GT$11encoded_len17h4128982edef0b86cE.exit.i.i.i.i.i.i.i.i.i"
  br i1 %.not.i5.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5prost8encoding7message6encode17hfe78d0c5a56b89a8E.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 24
  call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9459
  br label %_ZN5prost8encoding7message6encode17hfe78d0c5a56b89a8E.exit.i.i.i.i.i.i.i.i

_ZN5prost8encoding7message6encode17hfe78d0c5a56b89a8E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %i.dk = icmp eq ptr %i.cn, %i.cm
  br i1 %i.dk, label %_ZN5prost8encoding7message6encode17h55a28b43a55da919E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_ZN5prost8encoding7message6encode17h55a28b43a55da919E.exit.i.i.i.i.i.i: ; preds = %_ZN5prost8encoding7message6encode17hfe78d0c5a56b89a8E.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.dl = icmp eq ptr %i.ao, %i.am
  br i1 %i.dl, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZN5prost8encoding7message6encode17h55a28b43a55da919E.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 24 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !alias.scope !9459, !noundef !5
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN5prost8encoding7message6encode17hbc91d86986fbaa07E.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dm, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5prost8encoding7message6encode17hbc91d86986fbaa07E.exit.i.i.i.i

_ZN5prost8encoding7message6encode17hbc91d86986fbaa07E.exit.i.i.i.i: ; preds = %bb.v, %._crit_edge.i.i.i.i.i.i
  %i.dp = icmp eq ptr %i.ag, %i.ae
  br i1 %i.dp, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN5prost8encoding7message6encode17hbc91d86986fbaa07E.exit.i.i.i.i, %bb.g
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val5.i.i.i.i = load i64, ptr %i.dq, align 8, !alias.scope !9455, !noundef !5
  %.not.i.not.i.i.i.i = icmp eq i64 %.val5.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val4.i.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !9455, !noundef !5
  %.not.i6.not.i.i.i.i = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %.not.i6.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !9455, !nonnull !5, !noundef !5
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !9455, !noundef !5
  call void @_ZN5prost8encoding6string15encode_repeated17h84bd5e0374af0676E(i32 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dv, i64 noundef %i.dx, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i.i.i.i2 = load i64, ptr %i.dy, align 8, !alias.scope !9455, !noundef !5
  %.not.i7.not.i.i.i.i = icmp eq i64 %.val.i.i.i.i2, 0
  br i1 %.not.i7.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !range !24, !alias.scope !9455, !noundef !5
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ac, label %"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h7f5b4d3a09b03d14E.exit"

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.ea, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h7f5b4d3a09b03d14E.exit"

bb.ad:                                            ; preds = %"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5f0fb49ede364de4E.exit"
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.ee, align 8
  br label %"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h7f5b4d3a09b03d14E.exit"

"_ZN102_$LT$anki_proto..image_occlusion..GetImageOcclusionNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h7f5b4d3a09b03d14E.exit": ; preds = %bb.ac, %bb.ab, %bb.e, %.thread, %bb.ad
  %storemerge = phi i64 [ 1, %bb.ad ], [ 0, %.thread ], [ 0, %bb.e ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17he783b1980955b695E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9470 {
bb.a:
  %.val2 = load i64, ptr %1, align 8, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val2, 0
  br i1 %i.a, label %.thread, label %"_ZN81_$LT$anki_proto..deck_config..DeckConfigId$u20$as$u20$prost..message..Message$GT$11encoded_len17h24c86fd45453f744E.exit"

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val4, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN81_$LT$anki_proto..deck_config..DeckConfigId$u20$as$u20$prost..message..Message$GT$10encode_raw17h2ae5b1408161174eE.exit"

"_ZN81_$LT$anki_proto..deck_config..DeckConfigId$u20$as$u20$prost..message..Message$GT$11encoded_len17h24c86fd45453f744E.exit": ; preds = %bb.a
  %i.b = or i64 %.val2, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = mul nuw nsw i64 %i.d, 9
  %i.f = add nuw nsw i64 %i.e, 73
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.i = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %.val, 9223372036854775807       ; 2 uses
  %.not = icmp samesign ult i64 %i.g, %i.j
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN81_$LT$anki_proto..deck_config..DeckConfigId$u20$as$u20$prost..message..Message$GT$11encoded_len17h24c86fd45453f744E.exit"
  tail call void @_ZN5prost8encoding5int646encode17hf5ca04a1bdde0678E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN81_$LT$anki_proto..deck_config..DeckConfigId$u20$as$u20$prost..message..Message$GT$10encode_raw17h2ae5b1408161174eE.exit"

bb.c:                                             ; preds = %"_ZN81_$LT$anki_proto..deck_config..DeckConfigId$u20$as$u20$prost..message..Message$GT$11encoded_len17h24c86fd45453f744E.exit"
  %i.k = add nuw nsw i64 %i.g, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.m, align 8
  br label %"_ZN81_$LT$anki_proto..deck_config..DeckConfigId$u20$as$u20$prost..message..Message$GT$10encode_raw17h2ae5b1408161174eE.exit"

"_ZN81_$LT$anki_proto..deck_config..DeckConfigId$u20$as$u20$prost..message..Message$GT$10encode_raw17h2ae5b1408161174eE.exit": ; preds = %bb.b, %.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hedd0c959e3ddf095E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9482 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %.val3, 0
  br i1 %i.d, label %.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb5ea793d45f37E.exit.i.i.i.i"
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.ah, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb5ea793d45f37E.exit.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.ag, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb5ea793d45f37E.exit.i.i.i.i" ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.i ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !9483 ; 4 uses
  %i.g = getelementptr i8, ptr %i.e, i64 24
  %.val13.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !9483, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %.val13.i.i.i.i, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.i = or i64 %.val13.i.i.i.i, 1
  %i.j = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = mul nuw nsw i64 %i.k, 9
  %i.m = add nuw nsw i64 %i.l, 73
  %i.n = lshr i64 %i.m, 6
  %i.o = add nuw nsw i64 %i.n, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.o, %bb.b ], [ 0, %.preheader.i.i ]
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb5ea793d45f37E.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp sgt i64 %.val.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = or i64 %.val.i.i.i.i, 1
  %i.r = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = mul nuw nsw i64 %i.s, 9
  %i.u = add nuw nsw i64 %i.t, 73
  %i.v = lshr i64 %i.u, 6
  %i.w = add nuw i64 %.val.i.i.i.i, 1
  %i.x = add nuw i64 %i.w, %i.v
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb5ea793d45f37E.exit.i.i.i.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb5ea793d45f37E.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ %i.x, %bb.d ], [ 0, %bb.c ]
  %i.y = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 2 uses
  %i.z = or i64 %i.y, 1
  %i.aa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = xor i64 %i.aa, 63
  %i.ac = mul nuw nsw i64 %i.ab, 9
  %i.ad = add nuw nsw i64 %i.ac, 73
  %i.ae = lshr i64 %i.ad, 6
  %i.af = add i64 %i.y, %.sroa.02.0.i.i.i.i
  %i.ag = add i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %.val3
  br i1 %i.ai, label %"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$11encoded_len17h106a3a82311a3f88E.exit", label %.preheader.i.i

"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$11encoded_len17h106a3a82311a3f88E.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb5ea793d45f37E.exit.i.i.i.i"
  %i.aj = add i64 %i.ag, %.val3                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ak, align 8, !noundef !5 ; 2 uses
  %i.al = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.an = icmp ugt i64 %i.aj, %i.am
  br i1 %i.an, label %bb.l, label %bb.e

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val7, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$10encode_raw17h7388a27380886151E.exit"

bb.e:                                             ; preds = %"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$11encoded_len17h106a3a82311a3f88E.exit"
  %.idx.i = shl nuw nsw i64 %.val3, 5
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZN5prost8encoding7message6encode17h49d6cf674838c265E.exit.i
  %.sroa.0.01.i = phi ptr [ %i.ap, %_ZN5prost8encoding7message6encode17h49d6cf674838c265E.exit.i ], [ %.val2, %bb.e ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9484)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9485
  store i8 10, ptr %i.a, align 1, !noalias !9485
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !9484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9485
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 16
  %.val.i.i = load i64, ptr %i.aq, align 8, !alias.scope !9484, !noalias !9486 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 24 ; 2 uses
  %.val1.i.i = load i64, ptr %i.ar, align 8, !alias.scope !9484, !noalias !9486, !noundef !5 ; 2 uses
  %i.as = icmp eq i64 %.val1.i.i, 0               ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.at = or i64 %.val1.i.i, 1
  %i.au = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = xor i64 %i.au, 63
  %i.aw = mul nuw nsw i64 %i.av, 9
  %i.ax = add nuw nsw i64 %i.aw, 73
  %i.ay = lshr i64 %i.ax, 6
  %i.az = add nuw nsw i64 %i.ay, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.az, %bb.f ], [ 0, %.lr.ph.i ]
  %.not.i.not.i.i.i = icmp eq i64 %.val.i.i, 0    ; 2 uses
  br i1 %.not.i.not.i.i.i, label %"_ZN73_$LT$anki_proto..decks..DeckNameId$u20$as$u20$prost..message..Message$GT$11encoded_len17hd55fb676ade38a86E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp sgt i64 %.val.i.i, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = or i64 %.val.i.i, 1
  %i.bc = call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true)
  %i.bd = xor i64 %i.bc, 63
  %i.be = mul nuw nsw i64 %i.bd, 9
  %i.bf = add nuw nsw i64 %i.be, 73
  %i.bg = lshr i64 %i.bf, 6
  %i.bh = add nuw i64 %.val.i.i, 1
  %i.bi = add nuw i64 %i.bh, %i.bg
  br label %"_ZN73_$LT$anki_proto..decks..DeckNameId$u20$as$u20$prost..message..Message$GT$11encoded_len17hd55fb676ade38a86E.exit.i.i"

"_ZN73_$LT$anki_proto..decks..DeckNameId$u20$as$u20$prost..message..Message$GT$11encoded_len17hd55fb676ade38a86E.exit.i.i": ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i.i = phi i64 [ %i.bi, %bb.h ], [ 0, %bb.g ]
  %i.bj = add nuw i64 %.sroa.01.0.i.i.i, %.sroa.0.0.i.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !9484
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN73_$LT$anki_proto..decks..DeckNameId$u20$as$u20$prost..message..Message$GT$11encoded_len17hd55fb676ade38a86E.exit.i.i"
  call void @_ZN5prost8encoding5int646encode17hf5ca04a1bdde0678E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN73_$LT$anki_proto..decks..DeckNameId$u20$as$u20$prost..message..Message$GT$11encoded_len17hd55fb676ade38a86E.exit.i.i"
  br i1 %.not.i.not.i.i.i, label %_ZN5prost8encoding7message6encode17h49d6cf674838c265E.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5prost8encoding6string6encode17h7895341a049ed767E(i32 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.01.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5prost8encoding7message6encode17h49d6cf674838c265E.exit.i

_ZN5prost8encoding7message6encode17h49d6cf674838c265E.exit.i: ; preds = %bb.k, %bb.j
  %i.bk = icmp eq ptr %i.ap, %i.ao
  br i1 %i.bk, label %"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$10encode_raw17h7388a27380886151E.exit", label %.lr.ph.i

bb.l:                                             ; preds = %"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$11encoded_len17h106a3a82311a3f88E.exit"
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %i.bm, align 8
  br label %"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$10encode_raw17h7388a27380886151E.exit"

"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$10encode_raw17h7388a27380886151E.exit": ; preds = %_ZN5prost8encoding7message6encode17h49d6cf674838c265E.exit.i, %.thread, %bb.l
  %storemerge = phi i64 [ 1, %bb.l ], [ 0, %.thread ], [ 0, %_ZN5prost8encoding7message6encode17h49d6cf674838c265E.exit.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hf1523ec30c98e20cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9489 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !alias.scope !9490, !noundef !5 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$11encoded_len17h0905c4efc75f7a73E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %i.a, 1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw nsw i64 %i.i, 1
  br label %"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$11encoded_len17h0905c4efc75f7a73E.exit"

"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$11encoded_len17h0905c4efc75f7a73E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !range !24, !alias.scope !9490, !noundef !5 ; 2 uses
  %i.m = shl nuw nsw i8 %i.l, 1
  %spec.select.i = zext nneg i8 %i.m to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !range !24, !alias.scope !9490, !noundef !5 ; 2 uses
  %i.p = shl nuw nsw i8 %i.o, 1
  %.sroa.02.0.i = zext nneg i8 %i.p to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !range !24, !alias.scope !9490, !noundef !5 ; 2 uses
  %i.s = shl nuw nsw i8 %i.r, 1
  %.sroa.03.0.i = zext nneg i8 %i.s to i64
  %i.t = add nuw nsw i64 %.sroa.0.0.i, %spec.select.i
  %i.u = add nuw nsw i64 %i.t, %.sroa.02.0.i
  %i.v = add nuw nsw i64 %i.u, %.sroa.03.0.i      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.x = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.z = icmp samesign ugt i64 %i.v, %i.y
  br i1 %i.z, label %bb.k, label %bb.c

bb.c:                                             ; preds = %"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$11encoded_len17h0905c4efc75f7a73E.exit"
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5prost8encoding5int326encode17ha2e6f6ff8203a739E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = trunc nuw i8 %i.l to i1
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ab = trunc nuw i8 %i.o to i1
  br i1 %i.ab, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ac = trunc nuw i8 %i.r to i1
  br i1 %i.ac, label %bb.j, label %"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$10encode_raw17h5839c3a77c900a8dE.exit"

bb.i:                                             ; preds = %bb.f
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN5prost8encoding4bool6encode17h60d3f4001b9039b2E(i32 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$10encode_raw17h5839c3a77c900a8dE.exit"

bb.k:                                             ; preds = %"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$11encoded_len17h0905c4efc75f7a73E.exit"
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.ae, align 8
  br label %"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$10encode_raw17h5839c3a77c900a8dE.exit"

"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$10encode_raw17h5839c3a77c900a8dE.exit": ; preds = %bb.j, %bb.h, %bb.k
  %storemerge = phi i64 [ 1, %bb.k ], [ 0, %bb.h ], [ 0, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hf9cef227875a6876E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !guid !9491 {
bb.a:
  %.val2 = load i64, ptr %1, align 8, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val2, 0
  br i1 %i.a, label %.thread, label %"_ZN70_$LT$anki_proto..generic..Int64$u20$as$u20$prost..message..Message$GT$11encoded_len17h730c3751c06526abE.exit"

.thread:                                          ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %3, align 8, !noundef !5
  %4 = icmp sgt i64 %.val4, -1
  tail call void @llvm.assume(i1 %4)
  br label %"_ZN70_$LT$anki_proto..generic..Int64$u20$as$u20$prost..message..Message$GT$10encode_raw17h92e86e57b4f3afb1E.exit"

"_ZN70_$LT$anki_proto..generic..Int64$u20$as$u20$prost..message..Message$GT$11encoded_len17h730c3751c06526abE.exit": ; preds = %bb.a
  %i.b = or i64 %.val2, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = mul nuw nsw i64 %i.d, 9
  %i.f = add nuw nsw i64 %i.e, 73
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.i = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %.val, 9223372036854775807       ; 2 uses
  %.not = icmp samesign ult i64 %i.g, %i.j
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN70_$LT$anki_proto..generic..Int64$u20$as$u20$prost..message..Message$GT$11encoded_len17h730c3751c06526abE.exit"
  tail call void @_ZN5prost8encoding5int646encode17hf5ca04a1bdde0678E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN70_$LT$anki_proto..generic..Int64$u20$as$u20$prost..message..Message$GT$10encode_raw17h92e86e57b4f3afb1E.exit"

bb.c:                                             ; preds = %"_ZN70_$LT$anki_proto..generic..Int64$u20$as$u20$prost..message..Message$GT$11encoded_len17h730c3751c06526abE.exit"
  %i.k = add nuw nsw i64 %i.g, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.m, align 8
  br label %"_ZN70_$LT$anki_proto..generic..Int64$u20$as$u20$prost..message..Message$GT$10encode_raw17h92e86e57b4f3afb1E.exit"

"_ZN70_$LT$anki_proto..generic..Int64$u20$as$u20$prost..message..Message$GT$10encode_raw17h92e86e57b4f3afb1E.exit": ; preds = %bb.b, %.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_ZN5prost8encoding10merge_loop17h0edd69dcf9d42d59E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9561 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [1 x i8], align 1                 ; 8 uses
  %i.q = alloca [1 x i8], align 1                 ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 8 uses
  %i.z = tail call fastcc { i64, ptr } @_ZN5prost8encoding6varint13decode_varint17h87a786414a068c70E(ptr noalias noundef align 8 dereferenceable(8) %1) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = trunc nuw i64 %i.aa to i1
  br i1 %i.ad, label %"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ae = getelementptr i8, ptr %.val, i64 8
  %.val.i = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %i.af = icmp ult i64 %.val.i, %i.ac
  br i1 %i.af, label %bb.l, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.ag = sub nuw i64 %.val.i, %i.ac              ; 3 uses
  %.val17 = load ptr, ptr %0, align 8             ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.ah, align 8          ; 12 uses
  %i.ai = icmp eq i32 %2, 0
  %i.aj = add i32 %2, -1                          ; 5 uses
  %.sroa.53.0..sroa_idx4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val18, i64 8 ; 3 uses
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br i1 %i.ai, label %.split.us, label %.split, !prof !9

.split.us:                                        ; preds = %bb.c, %"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit.us"
  %.val15.us = load ptr, ptr %1, align 8, !nonnull !5, !align !7, !noundef !5
  %i.al = getelementptr i8, ptr %.val15.us, i64 8
  %.val.i19.us = load i64, ptr %i.al, align 8, !noundef !5 ; 2 uses
  %i.am = icmp ugt i64 %.val.i19.us, %i.ag
  br i1 %i.am, label %bb.d, label %.split114.us

bb.d:                                             ; preds = %.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9563
  %i.an = tail call fastcc { i64, ptr } @_ZN5prost8encoding6varint13decode_varint17h87a786414a068c70E(ptr noalias noundef nonnull align 8 dereferenceable(8) %1), !noalias !9564 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.ar = trunc nuw i64 %i.ao to i1
  br i1 %i.ar, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.aq, ptr %i.y, align 8, !noalias !9563
  %i.as = icmp ugt ptr %i.ap, inttoptr (i64 4294967295 to ptr)
  br i1 %i.as, label %.split117.us, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.at = and i64 %i.aq, 7                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9562
  store i64 %i.at, ptr %i.v, align 8, !noalias !9565
  %switch.i.us = icmp samesign ult i64 %i.at, 6
  br i1 %switch.i.us, label %bb.g, label %.split119.us, !prof !37

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9562
  %i.au = trunc nuw i64 %i.aq to i32
  %i.av = lshr i32 %i.au, 3                       ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.split121.us, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9562
  %.sroa.11.8.extract.trunc.i.us = trunc nuw nsw i64 %i.at to i8 ; 3 uses
  switch i32 %i.av, label %bb.k [
    i32 1, label %bb.j
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9570
  store i8 2, ptr %i.q, align 1, !noalias !9570
  store i8 %.sroa.11.8.extract.trunc.i.us, ptr %i.p, align 1, !noalias !9570
  %.not.i.i.i.i.us = icmp eq i64 %i.at, 2
  br i1 %.not.i.i.i.i.us, label %.split123.us, label %_ZN5prost8encoding9wire_type15check_wire_type17hab53a7b33ce7c252E.exit.i.i.i, !prof !10

.split123.us:                                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9570
  %i.ax = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @218, i64 noundef 23)
  br label %"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit.thread"

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  %i.ay = tail call noundef align 8 ptr @_ZN5prost8encoding6string5merge17h6e6058124d6ec337E(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.us, ptr noalias noundef nonnull align 8 dereferenceable(24) %.val17, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0)
  br label %"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit.us"

bb.k:                                             ; preds = %bb.h
  %i.az = tail call noundef align 8 ptr @_ZN5prost8encoding10skip_field17h8f54248659b417e9E(i8 noundef %.sroa.11.8.extract.trunc.i.us, i32 noundef %i.av, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0)
  br label %"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit.us"

"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit.us": ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.us = phi ptr [ %i.ay, %bb.j ], [ %i.az, %bb.k ] ; 2 uses
  %.not14.us = icmp eq ptr %.sroa.0.0.i.us, null
  br i1 %.not14.us, label %.split.us, label %"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit.thread"

bb.l:                                             ; preds = %bb.b
  %i.ba = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @217, i64 noundef 16)
  br label %"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit.thread"

.split:                                           ; preds = %bb.c, %"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit"
  %.val15 = load ptr, ptr %1, align 8, !nonnull !5, !align !7, !noundef !5
  %i.bb = getelementptr i8, ptr %.val15, i64 8
  %.val.i19 = load i64, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.bc = icmp ugt i64 %.val.i19, %i.ag
  br i1 %i.bc, label %bb.m, label %.split114.us

.split114.us:                                     ; preds = %.split, %.split.us
  %.us-phi = phi i64 [ %.val.i19.us, %.split.us ], [ %.val.i19, %.split ]
  %.not = icmp eq i64 %.us-phi, %i.ag
  br i1 %.not, label %"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE.exit.thread", label %bb.bg, !prof !10

bb.m:                                             ; preds = %.split
  call void @llvm.experimental.noalias.scope.decl(metadata !9562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9563
  %i.bd = call fastcc { i64, ptr } @_ZN5prost8encoding6varint13decode_varint17h87a786414a068c70E(ptr noalias noundef nonnull align 8 dereferenceable(8) %1), !noalias !9564 ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %i.bf = extractvalue { i64, ptr } %i.bd, 1      ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bh = trunc nuw i64 %i.be to i1
  br i1 %i.bh, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bg, ptr %i.y, align 8, !noalias !9563
  %i.bi = icmp ugt ptr %i.bf, inttoptr (i64 4294967295 to ptr)
  br i1 %i.bi, label %.split117.us, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.bj = and i64 %i.bg, 7                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9562
  store i64 %i.bj, ptr %i.v, align 8, !noalias !9565
  %switch.i = icmp samesign ult i64 %i.bj, 6
  br i1 %switch.i, label %bb.p, label %.split119.us, !prof !37

.split117.us:                                     ; preds = %bb.n, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9563
  store ptr %i.y, ptr %i.w, align 8, !noalias !9563
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h55433084d8216725E", ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !9563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9571
  store ptr @215, ptr %i.r, align 8, !noalias !9572
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9572
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !9572
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9572
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !9572
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.r), !noalias !9573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !9563
end_hunk_3
