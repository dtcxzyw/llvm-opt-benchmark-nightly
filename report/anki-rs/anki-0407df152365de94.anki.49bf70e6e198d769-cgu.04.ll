Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4752
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN4anki10deckconfig8schema111_101_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..deckconfig..schema11..DeckConfSchema11$GT$9serialize17hed91adbe7ba194bcE":bb.a

bb.af:                                            ; preds = %bb.ae
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.bm = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8070f0b39ed59b28E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 12, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bl) ; 2 uses
  %.not211 = icmp eq ptr %i.bm, null
  br i1 %.not211, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bo = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hce199f0843e3ad62E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @190, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) ; 2 uses
  %.not213 = icmp eq ptr %i.bo, null
  br i1 %.not213, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bq = call noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_map17h0c858bf9b52a175aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bp) ; 2 uses
  %.not215 = icmp eq ptr %i.bq, null
  br i1 %.not215, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3d4573986ab19537E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.sroa.0.0 = phi ptr [ null, %bb.ai ], [ %i.bq, %bb.ah ], [ %i.bo, %bb.ag ], [ %i.d, %bb.a ], [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ], [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ %i.q, %bb.h ], [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.y, %bb.l ], [ %i.aa, %bb.m ], [ %i.ac, %bb.n ], [ %i.ae, %bb.o ], [ %i.ag, %bb.p ], [ %i.ai, %bb.q ], [ %i.ak, %bb.r ], [ %i.am, %bb.s ], [ %i.ao, %bb.t ], [ %i.aq, %bb.u ], [ %i.as, %bb.v ], [ %i.au, %bb.w ], [ %i.aw, %bb.x ], [ %i.ay, %bb.y ], [ %i.ba, %bb.z ], [ %i.bc, %bb.aa ], [ %i.be, %bb.ab ], [ %i.bg, %bb.ac ], [ %i.bi, %bb.ad ], [ %i.bk, %bb.ae ], [ %i.bm, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki10deckconfig8schema111_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..schema11..DeckConfSchema11$GT$11deserialize17hd873dcf52fcf0dfbE"(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 8 captures(address) dereferenceable(544) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17he4058530213d9d85E"(ptr noalias noundef nonnull sret([544 x i8]) align 8 captures(address) dereferenceable(544) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki10deckconfig8schema111_102_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..schema11..DeckConfSchema11$GT$11deserialize17hdc3afdd7e7c3efb2E"(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 8 captures(address) dereferenceable(544) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h7c6be44d6c788f9eE"(ptr noalias noundef nonnull sret([544 x i8]) align 8 captures(address) dereferenceable(544) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN4anki10deckconfig8schema111_102_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..deckconfig..schema11..LapseConfSchema11$GT$9serialize17hbd544d8837f9585bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5471)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !5471, !noalias !5472, !nonnull !5, !align !10, !noundef !5
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @57, i64 noundef 1), !noalias !5473
  store i8 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h0c8e1fa214661adcE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @153, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h47ed03b989d18dfbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @192, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.d) ; 2 uses
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h6783121ecf5dd621E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 10, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f) ; 2 uses
  %.not34 = icmp eq ptr %i.g, null
  br i1 %.not34, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h6783121ecf5dd621E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @194, i64 noundef 6, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h) ; 2 uses
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8070f0b39ed59b28E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j) ; 2 uses
  %.not36 = icmp eq ptr %i.k, null
  br i1 %.not36, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = call noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_map17h0c858bf9b52a175aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l) ; 2 uses
  %.not37 = icmp eq ptr %i.m, null
  br i1 %.not37, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3d4573986ab19537E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.m, %bb.f ], [ %i.k, %bb.e ], [ %i.c, %bb.a ], [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki10deckconfig8schema111_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..schema11..LapseConfSchema11$GT$11deserialize17h0f9e6e2527645300E"(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5478)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %1, align 8, !range !19, !alias.scope !5478, !noalias !5477, !noundef !5
  %i.d = icmp eq i8 %i.c, 5
  br i1 %i.d, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5477
  invoke void @"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17h8267d618fa168dc2E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h7dc4a1e5ac48e3bdE.exit" unwind label %bb.d, !noalias !5478

bb.c:                                             ; preds = %bb.a
  %i.f = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17h2a8de56d0d973523E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
          to label %bb.e unwind label %bb.d, !noalias !5477

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i8, ptr %1, align 8, !range !19, !alias.scope !5478, !noalias !5477, !noundef !5
  %i.i = icmp eq i8 %i.h, 5
  br i1 %i.i, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.j, align 8, !alias.scope !5477, !noalias !5478
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !5477, !noalias !5478
  %.pr = load i8, ptr %1, align 8, !alias.scope !5478, !noalias !5477
  %i.k = icmp eq i8 %.pr, 5
  br i1 %i.k, label %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h7dc4a1e5ac48e3bdE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !5477
  br label %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h7dc4a1e5ac48e3bdE.exit"

bb.g:                                             ; preds = %bb.h, %bb.d
  resume { ptr, i32 } %i.g

bb.h:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1) #39
          to label %bb.g unwind label %bb.i, !noalias !5477

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5477
  unreachable

"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h7dc4a1e5ac48e3bdE.exit": ; preds = %bb.b, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki13import_export7package4apkg6import5decks11DeckContext12import_decks17ha33bac9265611e35E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i = alloca [48 x i8], align 8      ; 6 uses
  %i.h = alloca [96 x i8], align 8                ; 16 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.10.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [192 x i8], align 8               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.0.i.i = alloca [48 x i8], align 8        ; 6 uses
  %i.o = alloca [224 x i8], align 8               ; 13 uses
  %i.p = alloca [112 x i8], align 8               ; 4 uses
  %i.q = alloca [112 x i8], align 8               ; 6 uses
  %i.r = alloca [224 x i8], align 8               ; 14 uses
  %i.s = alloca [192 x i8], align 8               ; 22 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [192 x i8], align 8               ; 14 uses
  %i.v = alloca [112 x i8], align 8               ; 6 uses
  %i.w = alloca [192 x i8], align 8               ; 11 uses
  %.sroa.6.i.sroa.6.i = alloca [104 x i8], align 8 ; 7 uses
  %.sroa.4.i.i = alloca [72 x i8], align 8        ; 6 uses
  %i.x = alloca [192 x i8], align 8               ; 8 uses
  %.sroa.825.i = alloca [104 x i8], align 8       ; 6 uses
  %i.y = alloca [192 x i8], align 8               ; 30 uses
  %i.z = alloca [192 x i8], align 8               ; 10 uses
  %.sroa.6.i = alloca [112 x i8], align 8         ; 7 uses
  %.sroa.4.i = alloca [72 x i8], align 8          ; 6 uses
  %i.aa = alloca [192 x i8], align 8              ; 7 uses
  %i.ab = alloca [112 x i8], align 8              ; 8 uses
  %i.ac = alloca [112 x i8], align 8              ; 12 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [112 x i8], align 8              ; 11 uses
  %.sroa.11 = alloca [80 x i8], align 8           ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5566
  store ptr %i.a, ptr %i.ad, align 8, !noalias !5566
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.e, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp ult i64 %i.ai, 21
  br i1 %i.ak, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17h10abde0f7e7420fcE(ptr noalias noundef nonnull align 8 %i.ag, i64 noundef %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %thread-pre-split unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hdbf9bfd0dc5abccaE(ptr noalias noundef nonnull align 8 %i.ag, i64 noundef %i.ai, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %thread-pre-split unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.f, %bb.i, %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit50.i", %bb.y, %bb.ac, %bb.as, %.noexc.i, %bb.cx, %bb.dc, %bb.df, %bb.dh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.c, %bb.d, %bb.o, %_ZN4anki13import_export7package4apkg6import5decks11DeckContext34ensure_valid_first_existing_parent17h9f30603a989f88acE.exit.thread41.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i.i, %bb.bh, %.body.thread.i.i, %bb.dd, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.da, %bb.k ], [ %.pn3386.i.i, %.body.thread.i.i ], [ %i.da, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn31.i.i, %bb.bh ], [ %lpad.thr_comm.split-lp.i, %bb.dd ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE"(ptr noalias noundef align 8 dereferenceable(24) %2) #39
          to label %common.resume unwind label %bb.dn

thread-pre-split:                                 ; preds = %bb.d, %bb.c
  %.pr229 = load i64, ptr %i.ah, align 8
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.a
  %i.al = phi i64 [ %.pr229, %thread-pre-split ], [ %i.ai, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5566
  %i.am = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.al, 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 69
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 108
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 128 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 132 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 140 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 144 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 116
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %.sroa.510.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %.sroa.0.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 168 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 80 ; 5 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 3 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 132 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 140 ; 2 uses
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 144 ; 3 uses
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 145
  %.sroa.6.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 12 uses
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 11 uses
  %.sroa.57.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.0.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6.i.sroa.6.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.6.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.dj
  %.sroa.0.0188 = phi ptr [ %i.am, %.lr.ph ], [ %i.cv, %bb.dj ] ; 16 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0188, i64 192 ; 2 uses
  %.val = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %.val4 = load i64, ptr %i.aq, align 8, !noundef !5
  invoke fastcc void @_ZN4anki13import_export7package4apkg6import5decks11DeckContext14maybe_reparent17h807e543151f2b234E(ptr nonnull %.val, i64 %.val4, ptr noalias noundef align 8 dereferenceable(192) %.sroa.0.0188)
          to label %bb.i unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.dj, %bb.e
  store i64 -9223372036854775773, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12c088f0ad43116eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit" unwind label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb31842cba13afc6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

common.resume:                                    ; preds = %.body, %bb.dl, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.kr, %bb.dl ], [ %i.cw, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.val5 = load ptr, ptr %i.ar, align 8           ; 2 uses
  %.val6 = load i32, ptr %i.as, align 4           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5567
  invoke void @_ZN4anki5decks4Deck10normal_mut17h6f70618b2659f943E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(192) %.sroa.0.0188)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %bb.i
  %i.cy = load i64, ptr %i.ac, align 8, !range !45, !noalias !5567, !noundef !5
  %.not.i = icmp eq i64 %i.cy, -9223372036854775773
  br i1 %.not.i, label %bb.j, label %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit50.i"

_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit49.i: ; preds = %bb.v, %bb.u, %bb.t, %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i
  %.sroa.65.1.i = phi i32 [ %.sroa.618.0.copyload.i, %bb.t ], [ undef, %bb.u ], [ %.sroa.0.0.i.i.i45.i, %bb.v ], [ undef, %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i ]
  %.sroa.54.1.i = phi i32 [ %.sroa.414.0.copyload.i, %bb.t ], [ undef, %bb.u ], [ %.sroa.414.0.copyload.i, %bb.v ], [ undef, %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i ]
  %.sroa.03.0.i = phi i32 [ 1, %bb.t ], [ 0, %bb.u ], [ 1, %bb.v ], [ 0, %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i ]
  store i32 %.sroa.03.0.i, ptr %i.dm, align 8, !noalias !5568
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 60
  store i32 %.sroa.54.1.i, ptr %.sroa.54.0..sroa_idx.i, align 4, !noalias !5568
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  store i32 %.sroa.65.1.i, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !5568
  %.pr.i = load i64, ptr %i.ac, align 8, !noalias !5567
  %.not42.i = icmp eq i64 %.pr.i, -9223372036854775773
  br i1 %.not42.i, label %bb.y, label %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit50.i"

bb.j:                                             ; preds = %.noexc8
  %i.cz = load ptr, ptr %i.at, align 8, !noalias !5567, !nonnull !5, !align !10, !noundef !5 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5567
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void @"_ZN4anki9scheduler46_$LT$impl$u20$anki..collection..Collection$GT$12timing_today17h0d3ecfc25994d844E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(728) %.val5)
          to label %bb.m unwind label %bb.k, !noalias !5568

bb.k:                                             ; preds = %bb.j
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load i64, ptr %i.ac, align 8, !range !45, !alias.scope !5569, !noalias !5567, !noundef !5
  %i.dc = icmp eq i64 %i.db, -9223372036854775773
  br i1 %i.dc, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ac)
          to label %.body unwind label %bb.w, !noalias !5568

bb.m:                                             ; preds = %bb.j
  %i.dd = load i64, ptr %i.ab, align 8, !range !45, !noalias !5567, !noundef !5 ; 2 uses
  %.not41.i = icmp eq i64 %i.dd, -9223372036854775773
  br i1 %.not41.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.de = load <2 x i64>, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !5567
  %i.df = load <2 x i32>, ptr %.sroa.618.0..sroa_idx.i, align 8, !noalias !5567
  %.sroa.931.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.931.0..sroa_idx.i, i64 80, i1 false), !noalias !5570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5567
  %i.dg = load i64, ptr %i.ac, align 8, !range !45, !alias.scope !5571, !noalias !5567, !noundef !5
  %i.dh = icmp eq i64 %i.dg, -9223372036854775773
  br i1 %i.dh, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ac)
          to label %bb.x unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.m
  %.sroa.618.0.copyload.i = load i32, ptr %.sroa.618.0..sroa_idx.i, align 8, !noalias !5567 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5567
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 68 ; 2 uses
  %.sroa.010.0.copyload.i = load i32, ptr %i.di, align 4, !noalias !5568
  %i.dj = trunc i32 %.sroa.010.0.copyload.i to i1
  br i1 %i.dj, label %bb.q, label %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i

bb.q:                                             ; preds = %bb.p
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 76
  %.sroa.512.0.copyload.i = load i32, ptr %.sroa.512.0..sroa_idx.i, align 4, !noalias !5568 ; 2 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %.sroa.411.0.copyload.i = load i32, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !5568 ; 2 uses
  %i.dk = icmp eq i32 %.sroa.512.0.copyload.i, %.val6
  br i1 %i.dk, label %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %.sroa.618.0.copyload.i, 0
  br i1 %.not.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = add i32 %.sroa.618.0.copyload.i, -1
  %.sroa.0.0.i.i.i.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 range(i32 0, -1) %i.dl, i32 %.sroa.512.0.copyload.i)
  br label %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i

_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.6.1.i = phi i32 [ %.sroa.618.0.copyload.i, %bb.q ], [ undef, %bb.r ], [ %.sroa.0.0.i.i.i.i, %bb.s ], [ undef, %bb.p ]
  %.sroa.5.1.i = phi i32 [ %.sroa.411.0.copyload.i, %bb.q ], [ undef, %bb.r ], [ %.sroa.411.0.copyload.i, %bb.s ], [ undef, %bb.p ]
  %.sroa.02.0.i = phi i32 [ 1, %bb.q ], [ 0, %bb.r ], [ 1, %bb.s ], [ 0, %bb.p ]
  store i32 %.sroa.02.0.i, ptr %i.di, align 4, !noalias !5568
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  store i32 %.sroa.5.1.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5568
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 76
  store i32 %.sroa.6.1.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !5568
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 56 ; 2 uses
  %.sroa.013.0.copyload.i = load i32, ptr %i.dm, align 8, !noalias !5568
  %i.dn = trunc i32 %.sroa.013.0.copyload.i to i1
  br i1 %i.dn, label %bb.t, label %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit49.i

bb.t:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit.i
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %.sroa.515.0.copyload.i = load i32, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !5568 ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 60
  %.sroa.414.0.copyload.i = load i32, ptr %.sroa.414.0..sroa_idx.i, align 4, !noalias !5568 ; 2 uses
  %i.do = icmp eq i32 %.sroa.515.0.copyload.i, %.val6
  br i1 %i.do, label %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit49.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i44.i = icmp eq i32 %.sroa.618.0.copyload.i, 0
  br i1 %.not.i.i44.i, label %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit49.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = add i32 %.sroa.618.0.copyload.i, -1
  %.sroa.0.0.i.i.i45.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 range(i32 0, -1) %i.dp, i32 %.sroa.515.0.copyload.i)
  br label %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit49.i

bb.w:                                             ; preds = %bb.l
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5568
  unreachable

"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit50.i": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0bfb87ce68c8e108E.exit49.i, %.noexc8
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ac)
          to label %bb.y unwind label %.loopexit

bb.x:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5567
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.649.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.11, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %i.dd, ptr %0, align 8
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.de, ptr %.sroa.245.0..sroa_idx, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.df, ptr %.sroa.447.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_ZN4anki13import_export7package4apkg6import5decks11DeckContext12import_decks17ha33bac9265611e35E:bb.a
  br label %bb.ah

"_ZN4core3ptr54drop_in_place$LT$anki..decks..name..NativeDeckName$GT$17h2c3b0a10fe8347c5E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i"
  store i64 %i.en, ptr %i.u, align 8, !noalias !5583
  store ptr %i.ep, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !noalias !5583
  store i64 %i.ek, ptr %.sroa.6.0..sroa_idx12.i.i.i, align 8, !noalias !5583
  invoke fastcc void @_ZN4anki13import_export7package4apkg6import5decks11DeckContext13uniquify_name17hdee8cd14c677299aE(ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(192) %i.u)
          to label %bb.am unwind label %.loopexit65, !noalias !5587

bb.am:                                            ; preds = %"_ZN4core3ptr54drop_in_place$LT$anki..decks..name..NativeDeckName$GT$17h2c3b0a10fe8347c5E.exit.i.i.i"
  %i.eu = load ptr, ptr %i.ar, align 8, !alias.scope !5589, !noalias !5590, !nonnull !5, !align !10, !noundef !5
  %i.ev = load i32, ptr %i.cq, align 8, !alias.scope !5589, !noalias !5590, !noundef !5
  invoke void @"_ZN4anki5decks9addupdate46_$LT$impl$u20$anki..collection..Collection$GT$14add_deck_inner17haf009f2f2e41378eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.eu, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.u, i32 noundef %i.ev)
          to label %bb.an unwind label %.loopexit65, !noalias !5591

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.u)
          to label %bb.aq unwind label %bb.ap, !noalias !5592

bb.ao:                                            ; preds = %bb.ah
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5587
  unreachable

bb.ap:                                            ; preds = %bb.ar, %bb.an, %bb.af
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ap, %bb.ah
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ex, %bb.ap ], [ %.pn.i.i.i, %bb.ah ]
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.w) #39
          to label %.body unwind label %bb.at, !noalias !5593

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5583
  %i.ey = load i64, ptr %i.v, align 8, !range !45, !noalias !5581, !noundef !5 ; 2 uses
  %.not10.i.i = icmp eq i64 %i.ey, -9223372036854775773
  br i1 %.not10.i.i, label %bb.ar, label %_ZN4anki13import_export7package4apkg6import5decks11DeckContext34ensure_valid_first_existing_parent17h9f30603a989f88acE.exit.thread41.i

_ZN4anki13import_export7package4apkg6import5decks11DeckContext34ensure_valid_first_existing_parent17h9f30603a989f88acE.exit.thread41.i: ; preds = %bb.aq
  %.sroa.825.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.825.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.825.0..sroa_idx26.i, i64 104, i1 false), !noalias !5594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5581
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.w)
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %_ZN4anki13import_export7package4apkg6import5decks11DeckContext34ensure_valid_first_existing_parent17h9f30603a989f88acE.exit.thread41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5581
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %.thread58

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5581
  %.val.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !5595, !noalias !5596, !nonnull !5, !noundef !5
  %.val11.i.i = load i64, ptr %i.aq, align 8, !alias.scope !5595, !noalias !5596, !noundef !5
  invoke fastcc void @_ZN4anki13import_export7package4apkg6import5decks11DeckContext14maybe_reparent17h807e543151f2b234E(ptr nonnull %.val.i.i, i64 %.val11.i.i, ptr noalias noundef nonnull align 8 dereferenceable(192) %.sroa.0.0188)
          to label %bb.as unwind label %bb.ap, !noalias !5593

bb.as:                                            ; preds = %bb.ar, %bb.ae
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.w)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5581
  br label %_ZN4anki13import_export7package4apkg6import5decks11DeckContext34ensure_valid_first_existing_parent17h9f30603a989f88acE.exit.thread.i

bb.at:                                            ; preds = %.body.i.i
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5593
  unreachable

_ZN4anki13import_export7package4apkg6import5decks11DeckContext34ensure_valid_first_existing_parent17h9f30603a989f88acE.exit.thread.i: ; preds = %.noexc15, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %bb.df

_ZN4anki13import_export7package4apkg6import5decks11DeckContext34ensure_valid_first_existing_parent17h9f30603a989f88acE.exit.i: ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.825.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.i.sroa.6.i, i64 104, i1 false), !noalias !5594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %.not11.i = icmp eq i64 %.sroa.6.i.sroa.0.0.copyload37.i, -9223372036854775773
  br i1 %.not11.i, label %bb.df, label %.thread58

bb.au:                                            ; preds = %bb.ab
  invoke fastcc void @_ZN4anki13import_export7package4apkg6import5decks11DeckContext13uniquify_name17hdee8cd14c677299aE(ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(192) %.sroa.0.0188)
          to label %bb.dc unwind label %bb.dd, !noalias !5572

bb.av:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.y, ptr noundef nonnull align 8 dereferenceable(192) %i.z, i64 192, i1 false), !noalias !5575
  call void @llvm.experimental.noalias.scope.decl(metadata !5597)
  call void @llvm.experimental.noalias.scope.decl(metadata !5598)
  call void @llvm.experimental.noalias.scope.decl(metadata !5599)
  call void @llvm.experimental.noalias.scope.decl(metadata !5600)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5601
  call void @llvm.experimental.noalias.scope.decl(metadata !5602)
  call void @llvm.experimental.noalias.scope.decl(metadata !5603)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.fa = load i64, ptr %i.aw, align 8, !alias.scope !5604, !noalias !5605, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5606
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.y)
          to label %.noexc.i14.i unwind label %.body.thread89.i.i, !noalias !5607

.noexc.i14.i:                                     ; preds = %bb.av
  %i.fb = load i64, ptr %i.ax, align 8, !alias.scope !5604, !noalias !5605, !noundef !5
  %i.fc = load i32, ptr %i.ay, align 8, !alias.scope !5604, !noalias !5605, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5606
  %i.fd = load i8, ptr %i.ba, align 4, !range !11, !alias.scope !5604, !noalias !5605, !noundef !5
  %i.fe = load i8, ptr %i.bb, align 1, !range !11, !alias.scope !5604, !noalias !5605, !noundef !5
  %i.ff = load <4 x i32>, ptr %i.bc, align 8, !alias.scope !5604, !noalias !5605
  %i.fg = load i32, ptr %i.bd, align 8, !alias.scope !5604, !noalias !5605, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5606
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2ff4de40dc9149eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.ay unwind label %bb.ax, !noalias !5608

bb.aw:                                            ; preds = %.body.i.i16.i, %bb.ax
  %.pn.i.i15.i = phi { ptr, i32 } [ %eh.lpad-body.i.i17.i, %.body.i.i16.i ], [ %i.fh, %bb.ax ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..decks..name..NativeDeckName$GT$17h2c3b0a10fe8347c5E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #39
          to label %.body.thread.i.i unwind label %bb.bg, !noalias !5608

bb.ax:                                            ; preds = %.noexc.i14.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ay:                                            ; preds = %.noexc.i14.i
  store i8 %i.fd, ptr %i.be, align 4, !noalias !5606
  store i8 %i.fe, ptr %i.bf, align 1, !noalias !5606
  store <4 x i32> %i.ff, ptr %i.bg, align 8, !noalias !5606
  store i32 %i.fg, ptr %i.bh, align 8, !noalias !5606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !5606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5606
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.10.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  %i.fi = load i64, ptr %i.bi, align 8, !range !8, !alias.scope !5604, !noalias !5605, !noundef !5
  %i.fj = icmp eq i64 %i.fi, -9223372036854775808
  br i1 %i.fj, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !5609)
  %i.fk = load i8, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !range !11, !alias.scope !5610, !noalias !5611, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5612
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdc9f3553434daff8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cd)
          to label %.noexc.i.i20.i unwind label %bb.bd, !noalias !5608

.noexc.i.i20.i:                                   ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5612
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc9c52f58e3e45727E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %bb.bf unwind label %bb.ba, !noalias !5613

bb.ba:                                            ; preds = %.noexc.i.i20.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..decks..deck..filtered..SearchTerm$GT$$GT$17h7ad1dc567626199dE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #39
          to label %.body.i.i16.i unwind label %bb.bb, !noalias !5613

bb.bb:                                            ; preds = %bb.ba
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5613
  unreachable

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5606
  call void @llvm.experimental.noalias.scope.decl(metadata !5614)
  call void @llvm.experimental.noalias.scope.decl(metadata !5615)
  %i.fn = load i64, ptr %i.bj, align 8, !alias.scope !5616, !noalias !5617, !noundef !5
  %i.fo = load <2 x i32>, ptr %i.bk, align 8, !alias.scope !5616, !noalias !5617
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(96) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bi)
          to label %bb.be unwind label %bb.bd, !noalias !5608

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i16.i

.body.i.i16.i:                                    ; preds = %bb.bd, %bb.ba
  %eh.lpad-body.i.i17.i = phi { ptr, i32 } [ %i.fp, %bb.bd ], [ %i.fl, %bb.ba ]
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..deck..Common$GT$17hda4943cee108cc67E"(ptr noalias noundef align 8 dereferenceable(48) %i.j) #39
          to label %bb.aw unwind label %bb.bg, !noalias !5608

bb.be:                                            ; preds = %bb.bc
  %i.fq = load i8, ptr %i.bl, align 8, !range !11, !alias.scope !5616, !noalias !5617, !noundef !5
  %i.fr = load i32, ptr %i.bm, align 8, !range !33, !alias.scope !5616, !noalias !5617, !noundef !5 ; 2 uses
  %i.fs = trunc nuw i32 %i.fr to i1
  %i.ft = load i32, ptr %i.bn, align 4, !alias.scope !5616, !noalias !5617
  %.sroa.5.0.i.i.i.i = select i1 %i.fs, i32 %i.ft, i32 undef
  %i.fu = load i32, ptr %i.bo, align 8, !range !33, !alias.scope !5616, !noalias !5617, !noundef !5 ; 2 uses
  %i.fv = trunc nuw i32 %i.fu to i1
  %i.fw = load i32, ptr %i.bp, align 4, !alias.scope !5616, !noalias !5617
  %.sroa.52.0.i.i.i.i = select i1 %i.fv, i32 %i.fw, i32 undef
  %i.fx = load i32, ptr %i.bq, align 8, !range !33, !alias.scope !5616, !noalias !5617, !noundef !5 ; 2 uses
  %i.fy = trunc nuw i32 %i.fx to i1
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 4, !alias.scope !5616, !noalias !5617
  %.sroa.55.0.i.i.i.i = select i1 %i.fy, i64 %.sroa.55.0.copyload.i.i.i.i, i64 undef
  %i.fz = load i32, ptr %i.br, align 4, !range !33, !alias.scope !5616, !noalias !5617, !noundef !5 ; 2 uses
  %i.ga = trunc nuw i32 %i.fz to i1
  %.sroa.510.0.copyload.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5616, !noalias !5617
  %.sroa.510.0.i.i.i.i = select i1 %i.ga, i64 %.sroa.510.0.copyload.i.i.i.i, i64 undef ; 2 uses
  %i.gb = load i32, ptr %i.bs, align 8, !range !33, !alias.scope !5616, !noalias !5617, !noundef !5 ; 2 uses
  %i.gc = trunc nuw i32 %i.gb to i1
  %i.gd = load float, ptr %i.bt, align 4, !alias.scope !5616, !noalias !5617
  %.sroa.514.0.i.i.i.i = select i1 %i.gc, float %i.gd, float undef
  store i64 %i.fn, ptr %i.bu, align 8, !alias.scope !5614, !noalias !5618
  store <2 x i32> %i.fo, ptr %i.bv, align 8, !alias.scope !5614, !noalias !5618
  store i8 %i.fq, ptr %i.bw, align 8, !alias.scope !5614, !noalias !5618
  store i32 %i.fr, ptr %i.bx, align 8, !alias.scope !5614, !noalias !5618
  store i32 %.sroa.5.0.i.i.i.i, ptr %i.by, align 4, !alias.scope !5614, !noalias !5618
  store i32 %i.fu, ptr %i.bz, align 8, !alias.scope !5614, !noalias !5618
  store i32 %.sroa.52.0.i.i.i.i, ptr %i.ca, align 4, !alias.scope !5614, !noalias !5618
  store i64 %.sroa.510.0.i.i.i.i, ptr %.sroa.510.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !5614, !noalias !5618
  store i32 %i.gb, ptr %i.cb, align 8, !alias.scope !5614, !noalias !5618
  store float %.sroa.514.0.i.i.i.i, ptr %i.cc, align 4, !alias.scope !5614, !noalias !5618
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 8, !noalias !5606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !5606
  %i.ge = trunc i64 %.sroa.510.0.i.i.i.i to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, i64 7, i1 false), !noalias !5606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !noalias !5606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5606
  %3 = bitcast i64 %.sroa.55.0.i.i.i.i to <2 x i32>
  br label %bb.bi

bb.bf:                                            ; preds = %.noexc.i.i20.i
  %i.gf = load i32, ptr %i.bq, align 8, !alias.scope !5610, !noalias !5611, !noundef !5
  %4 = load <2 x i32>, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 4, !alias.scope !5610, !noalias !5611
  %i.gg = load i32, ptr %i.br, align 4, !alias.scope !5610, !noalias !5611, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !5606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5612
  br label %bb.bi

bb.bg:                                            ; preds = %.body.i.i16.i, %bb.aw
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5608
  unreachable

bb.bh:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit.i.i"
  br i1 %.sroa.014.2.i.i, label %.body.thread.i.i, label %.body

.body.thread89.i.i:                               ; preds = %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit59.i.i", %bb.av
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %.sroa.5.sroa.9.0.i.i.i = phi i8 [ %i.fk, %bb.bf ], [ %i.ge, %bb.be ]
  %.sroa.5.sroa.8.0.i.i.i = phi i32 [ %i.gg, %bb.bf ], [ %i.fz, %bb.be ]
  %.sroa.5.sroa.5.0.i.i.i = phi i32 [ %i.gf, %bb.bf ], [ %i.fx, %bb.be ]
  %.sroa.0.0.i.i.i = phi i64 [ -9223372036854775808, %bb.bf ], [ %.sroa.0.0.copyload.i.i.i, %bb.be ]
  %5 = phi <2 x i32> [ %4, %bb.bf ], [ %3, %bb.be ]
  store i64 %i.fa, ptr %i.ce, align 8, !alias.scope !5602, !noalias !5619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !5619
  store i64 %i.fb, ptr %i.cf, align 8, !alias.scope !5602, !noalias !5619
  store i32 %i.fc, ptr %i.cg, align 8, !alias.scope !5602, !noalias !5619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !5619
  store i64 %.sroa.0.0.i.i.i, ptr %i.ci, align 8, !alias.scope !5602, !noalias !5619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx2.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i.i, i64 48, i1 false), !noalias !5619
  store i32 %.sroa.5.sroa.5.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, align 8, !alias.scope !5602, !noalias !5619
  store <2 x i32> %5, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, align 4, !alias.scope !5602, !noalias !5619
  store i32 %.sroa.5.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, align 4, !alias.scope !5602, !noalias !5619
  store i8 %.sroa.5.sroa.9.0.i.i.i, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, align 8, !alias.scope !5602, !noalias !5619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.i.i.i, i64 7, i1 false), !noalias !5619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, i64 16, i1 false), !noalias !5619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.10.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5601
  invoke void @_ZN4anki5decks4Deck10normal_mut17h6f70618b2659f943E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.s)
          to label %bb.bk unwind label %bb.bj, !noalias !5620

"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit.i.i": ; preds = %bb.da, %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit69.i.i", %bb.cw, %bb.cv, %bb.ck, %bb.cj, %bb.bm, %bb.bl, %bb.bj
  %.pn31.i.i = phi { ptr, i32 } [ %i.gi, %bb.bj ], [ %i.jg, %bb.cj ], [ %i.kb, %bb.cv ], [ %i.gj, %bb.bl ], [ %i.gj, %bb.bm ], [ %i.jg, %bb.ck ], [ %i.kb, %bb.cw ], [ %.pn28.i.i, %bb.da ], [ %.pn28.i.i, %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit69.i.i" ] ; 2 uses
  %.sroa.014.2.i.i = phi i1 [ %.sroa.014.3.i.i, %bb.bj ], [ true, %bb.cj ], [ true, %bb.cv ], [ true, %bb.bl ], [ true, %bb.bm ], [ true, %bb.ck ], [ true, %bb.cw ], [ true, %bb.da ], [ true, %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit69.i.i" ]
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.s) #39
          to label %bb.bh unwind label %bb.cm, !noalias !5621

bb.bj:                                            ; preds = %bb.cu, %bb.cl, %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit.i.i", %bb.ci, %bb.bi
  %.sroa.014.3.i.i = phi i1 [ true, %bb.cu ], [ false, %bb.cl ], [ true, %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit.i.i" ], [ true, %bb.ci ], [ true, %bb.bi ]
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit.i.i"

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5601
  invoke void @_ZN4anki5decks4Deck6normal17ha0f56b77db7e46acE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.0.0188)
          to label %bb.bn unwind label %bb.bl, !noalias !5620

bb.bl:                                            ; preds = %bb.bk
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load i64, ptr %i.q, align 8, !range !45, !alias.scope !5622, !noalias !5601, !noundef !5
  %i.gl = icmp eq i64 %i.gk, -9223372036854775773
  br i1 %i.gl, label %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit.i.i", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.q)
          to label %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit.i.i" unwind label %bb.cm, !noalias !5620

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.r, ptr noundef nonnull align 8 dereferenceable(112) %i.q, i64 112, i1 false), !noalias !5601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cj, ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 112, i1 false), !noalias !5601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5601
  %i.gm = load i64, ptr %i.r, align 8, !range !45, !noalias !5601, !noundef !5
  %.not.i18.i = icmp eq i64 %i.gm, -9223372036854775773
  %i.gn = load i64, ptr %i.cj, align 8, !range !45, !noalias !5601
  %.not22.i.i = icmp eq i64 %i.gn, -9223372036854775773
  %or.cond.i.i = select i1 %.not.i18.i, i1 %.not22.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5601
  %i.go = load i64, ptr %i.ci, align 8, !range !8, !noalias !5601, !noundef !5
  %i.gp = icmp eq i64 %i.go, -9223372036854775808 ; 3 uses
  %.sroa.5.0.i.i = select i1 %i.gp, ptr %.sroa.5.0..sroa_idx2.i.i.i, ptr inttoptr (i64 3 to ptr)
  %.sroa.0.0.i.i = select i1 %i.gp, i64 -9223372036854775773, i64 -9223372036854775792
  %i.gq = load i64, ptr %i.dy, align 8, !range !8, !alias.scope !5623, !noalias !5624, !noundef !5
  %i.gr = icmp eq i64 %i.gq, -9223372036854775808 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0188, i64 80 ; 2 uses
  %.sroa.57.0.i.i = select i1 %i.gr, ptr %i.gs, ptr inttoptr (i64 3 to ptr)
  %.sroa.05.0.i.i = select i1 %i.gr, i64 -9223372036854775773, i64 -9223372036854775792
  store i64 %.sroa.0.0.i.i, ptr %i.o, align 8, !noalias !5601
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !5601
  store i64 %.sroa.05.0.i.i, ptr %i.ck, align 8, !noalias !5601
  store ptr %.sroa.57.0.i.i, ptr %.sroa.57.0..sroa_idx8.i.i, align 8, !noalias !5601
  %or.cond35.i.i = and i1 %i.gp, %i.gr
  br i1 %or.cond35.i.i, label %bb.bw, label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  %i.gt = load ptr, ptr %i.cn, align 8, !noalias !5601, !nonnull !5, !align !10, !noundef !5 ; 11 uses
  %i.gu = load ptr, ptr %i.co, align 8, !noalias !5601, !nonnull !5, !align !10, !noundef !5 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5625)
  call void @llvm.experimental.noalias.scope.decl(metadata !5626)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !5626, !noalias !5627, !noundef !5 ; 2 uses
  %i.gx = icmp sgt i64 %i.gw, -1
  call void @llvm.assume(i1 %i.gx)
  %i.gy = icmp eq i64 %i.gw, 0
  br i1 %i.gy, label %.noexc38.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 88
  %i.ha = load i8, ptr %i.gz, align 8, !range !11, !alias.scope !5626, !noalias !5627, !noundef !5
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  store i8 %i.ha, ptr %i.hb, align 8, !alias.scope !5625, !noalias !5628
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$10clone_from17he353992a3923d9abE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.gt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.gu)
          to label %.noexc38.i.i unwind label %bb.bs, !noalias !5620

.noexc38.i.i:                                     ; preds = %bb.bq, %bb.bp
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !5626, !noalias !5627, !noundef !5 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 1
  br i1 %i.he, label %_ZN4anki13import_export7package4apkg6import5decks24update_normal_with_other17he020a3f76e1f139bE.exit.i.i, label %bb.br

bb.br:                                            ; preds = %.noexc38.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  store i64 %i.hd, ptr %i.hf, align 8, !alias.scope !5625, !noalias !5628
  br label %_ZN4anki13import_export7package4apkg6import5decks24update_normal_with_other17he020a3f76e1f139bE.exit.i.i

_ZN4anki13import_export7package4apkg6import5decks24update_normal_with_other17he020a3f76e1f139bE.exit.i.i: ; preds = %bb.br, %.noexc38.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.hh = load i32, ptr %i.hg, align 8, !range !33, !alias.scope !5626, !noalias !5627, !noundef !5 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gt, i64 24 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !range !33, !alias.scope !5625, !noalias !5628, !noundef !5
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gt, i64 28 ; 2 uses
  %i.hl = trunc nuw i32 %i.hh to i1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gu, i64 28
  %spec.select.i.i.i = select i1 %i.hl, ptr %i.hm, ptr %i.hk
  %spec.select22.i.i.i = or i32 %i.hj, %i.hh
  %.sroa.3.0.i.i.i = load i32, ptr %spec.select.i.i.i, align 4, !alias.scope !5629, !noalias !5620
  store i32 %spec.select22.i.i.i, ptr %i.hi, align 8, !alias.scope !5625, !noalias !5628
  store i32 %.sroa.3.0.i.i.i, ptr %i.hk, align 4, !alias.scope !5625, !noalias !5628
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.ho = load i32, ptr %i.hn, align 8, !range !33, !alias.scope !5626, !noalias !5627, !noundef !5 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 8, !range !33, !alias.scope !5625, !noalias !5628, !noundef !5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gt, i64 36 ; 2 uses
  %i.hs = trunc nuw i32 %i.ho to i1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gu, i64 36
  %.sroa.32.0.in.i.i.i = select i1 %i.hs, ptr %i.ht, ptr %i.hr
  %.sroa.01.0.i.i.i = or i32 %i.hq, %i.ho
  %.sroa.32.0.i.i.i = load i32, ptr %.sroa.32.0.in.i.i.i, align 4, !alias.scope !5629, !noalias !5620
  store i32 %.sroa.01.0.i.i.i, ptr %i.hp, align 8, !alias.scope !5625, !noalias !5628
  store i32 %.sroa.32.0.i.i.i, ptr %i.hr, align 4, !alias.scope !5625, !noalias !5628
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gu, i64 56
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.hu, align 8, !alias.scope !5626, !noalias !5627 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gt, i64 56 ; 2 uses
  %.sroa.07.0.copyload.i.i.i = load i32, ptr %i.hv, align 8, !alias.scope !5625, !noalias !5628
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 60 ; 2 uses
  %i.hw = trunc i32 %.sroa.03.0.copyload.i.i.i to i1 ; 2 uses
  %.sroa.5.0..sroa_idx.i37.i.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 60
  %.sroa.39.0.in.i.i.i = select i1 %i.hw, ptr %.sroa.5.0..sroa_idx.i37.i.i, ptr %.sroa.39.0..sroa_idx.i.i.i
  %.sroa.07.0.i.i.i = select i1 %i.hw, i32 %.sroa.03.0.copyload.i.i.i, i32 %.sroa.07.0.copyload.i.i.i
  %.sroa.39.0.i.i.i = load i64, ptr %.sroa.39.0.in.i.i.i, align 4, !alias.scope !5629, !noalias !5620
  store i32 %.sroa.07.0.i.i.i, ptr %i.hv, align 8, !alias.scope !5625, !noalias !5628
  store i64 %.sroa.39.0.i.i.i, ptr %.sroa.39.0..sroa_idx.i.i.i, align 4, !alias.scope !5625, !noalias !5628
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gu, i64 68
  %.sroa.012.0.copyload.i.i.i = load i32, ptr %i.hx, align 4, !alias.scope !5626, !noalias !5627 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gt, i64 68 ; 2 uses
  %.sroa.017.0.copyload.i.i.i = load i32, ptr %i.hy, align 4, !alias.scope !5625, !noalias !5628
  %.sroa.319.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 72 ; 2 uses
  %i.hz = trunc i32 %.sroa.012.0.copyload.i.i.i to i1 ; 2 uses
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 72
  %.sroa.319.0.in.i.i.i = select i1 %i.hz, ptr %.sroa.514.0..sroa_idx.i.i.i, ptr %.sroa.319.0..sroa_idx.i.i.i
  %.sroa.017.0.i.i.i = select i1 %i.hz, i32 %.sroa.012.0.copyload.i.i.i, i32 %.sroa.017.0.copyload.i.i.i
  %.sroa.319.0.i.i.i = load i64, ptr %.sroa.319.0.in.i.i.i, align 8, !alias.scope !5629, !noalias !5620
  store i32 %.sroa.017.0.i.i.i, ptr %i.hy, align 4, !alias.scope !5625, !noalias !5628
  store i64 %.sroa.319.0.i.i.i, ptr %.sroa.319.0..sroa_idx.i.i.i, align 8, !alias.scope !5625, !noalias !5628
  br label %bb.bt

.body45.i.i:                                      ; preds = %bb.cy, %"_ZN4core3ptr119drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Filtered$C$anki..error..AnkiError$GT$$GT$17h7edf19100c7bac3cE.exit65.i.i", %bb.cs, %bb.cr, %bb.ce, %bb.cd, %bb.bs
  %.pn28.i.i = phi { ptr, i32 } [ %i.jv, %bb.cr ], [ %i.iy, %bb.cd ], [ %i.ic, %bb.bs ], [ %i.iy, %bb.ce ], [ %i.jv, %bb.cs ], [ %.pn.i.i, %bb.cy ], [ %.pn.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Filtered$C$anki..error..AnkiError$GT$$GT$17h7edf19100c7bac3cE.exit65.i.i" ] ; 2 uses
  %i.ia = load i64, ptr %i.r, align 8, !range !45, !noalias !5601, !noundef !5
  %i.ib = icmp eq i64 %i.ia, -9223372036854775773
  br i1 %i.ib, label %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit69.i.i", label %bb.db

bb.bs:                                            ; preds = %bb.cq, %bb.cf, %bb.bq
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i.i

bb.bt:                                            ; preds = %"_ZN4core3ptr220drop_in_place$LT$$LP$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Filtered$C$anki..error..AnkiError$GT$$C$core..result..Result$LT$$RF$anki_proto..decks..deck..Filtered$C$anki..error..AnkiError$GT$$RP$$GT$17h3bb5b632e338373cE.exit.i.i", %_ZN4anki13import_export7package4apkg6import5decks24update_normal_with_other17he020a3f76e1f139bE.exit.i.i
  %i.id = load i64, ptr %i.r, align 8, !range !45, !noalias !5601, !noundef !5
  %.not25.i.i = icmp eq i64 %i.id, -9223372036854775773
  br i1 %.not25.i.i, label %"_ZN4core3ptr117drop_in_place$LT$core..result..Result$LT$$RF$mut$u20$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17h1793dcbb6b2616daE.exit48.i.i", label %bb.ch

bb.bu:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5601
  call void @llvm.experimental.noalias.scope.decl(metadata !5630)
  call void @llvm.experimental.noalias.scope.decl(metadata !5631)
  call void @llvm.experimental.noalias.scope.decl(metadata !5632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5633
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc39.i.i unwind label %.loopexit60, !noalias !5620

.noexc39.i.i:                                     ; preds = %bb.bu
  %i.ie = load i64, ptr %i.e, align 8, !range !7, !noalias !5633, !noundef !5
  %i.if = trunc nuw i64 %i.ie to i1
  %i.ig = load i64, ptr %i.cl, align 8, !range !8, !noalias !5633, !noundef !5 ; 3 uses
  br i1 %i.if, label %bb.bv, label %bb.cn, !prof !9

bb.bv:                                            ; preds = %.noexc39.i.i
  %i.ih = load i64, ptr %i.cm, align 8, !noalias !5633
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ig, i64 %i.ih) #38
          to label %.noexc40.i.i unwind label %.loopexit.split-lp61, !noalias !5620

.noexc40.i.i:                                     ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5634)
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.0188, i64 144
  %i.ij = load i8, ptr %i.ii, align 8, !range !11, !alias.scope !5635, !noalias !5636, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5637
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdc9f3553434daff8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gs)
end_hunk_1
