Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.02?download=true
inline.NumInlined: 5944
inline.NumDeleted: 3301
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbe8b666779393618E":bb.a

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @265, i64 noundef 12), !noalias !3498
  br label %"_ZN60_$LT$mime..parse..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd599f8ad6d00e055E.exit"

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @266, i64 noundef 12), !noalias !3498
  br label %"_ZN60_$LT$mime..parse..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd599f8ad6d00e055E.exit"

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3499
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.h, ptr %i.a, align 8, !noalias !3499
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @268, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @269, i64 noundef 3, ptr noundef nonnull readonly align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @267, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @270, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @246)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3499
  br label %"_ZN60_$LT$mime..parse..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd599f8ad6d00e055E.exit"

"_ZN60_$LT$mime..parse..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd599f8ad6d00e055E.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf0d339ebe2bfe1deE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !14, !align !15, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3503
  store ptr %i.b, ptr %i.a, align 8, !noalias !3503
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @230, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @263)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3503
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfbf1bf27e4dec3f4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !15, !noundef !14
  %i.b = tail call noundef zeroext i1 @"_ZN68_$LT$core..ptr..alignment..Alignment$u20$as$u20$core..fmt..Debug$GT$3fmt17hef79652a21b8f6d6E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h00bfdfb7f6c1b6cbE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !15, !noundef !14
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h92745f978847c59dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !15, !noundef !14
  %.val = load ptr, ptr %i.a, align 8, !nonnull !14, !align !15, !noundef !14 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !3506, !nonnull !14, !noundef !14
  %i.c = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noalias !3506, !noundef !14
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$LP$$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d2ddbc19b164edcE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter3pad17h999b8beec17ba994E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @79, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1658651fe231e547E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @61, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h31a42c2d4f821b7aE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @62, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5e4d6bc7666eba10E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @59, i64 noundef 28)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6b9ac346c392f3d8E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @56, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h9d38f92a5c0bad86E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @60, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hab9c5c866591e954E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @58, i64 noundef 25)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hcaa5bdf79fe07e6fE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @64, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd0669d053dd6f4e0E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @57, i64 noundef 26)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hf48207bbc99c9217E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki10deckconfig10DeckConfig12set_modified17h1b9895cd8dc41abbE(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(384) initializes((368, 380)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { i64, i32 } @_ZN4anki9timestamp7elapsed17h5e8392c400d0fcb1E()
  %i.b = extractvalue { i64, i32 } %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %1, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN4anki10deckconfig1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..DeckConfigId$GT$11deserialize17h0fc4044a0ffe3588E"(ptr noalias noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_i6417h44a975255534aff6E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN4anki10deckconfig1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..DeckConfigId$GT$11deserialize17h5a19517b2e831b60E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$26deserialize_newtype_struct17h8bc88f433fc24ef0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @83, i64 noundef 12)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN4anki10deckconfig1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..DeckConfigId$GT$11deserialize17h9972d1e859837ff1E"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN90_$LT$serde_json..value..de..MapKeyDeserializer$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_i6417he254c687b8b61eddE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki10deckconfig31ensure_deck_config_values_valid17hcbc57507cc646d25E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(336) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [336 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.a, ptr noundef nonnull align 8 dereferenceable(336) @84, i64 336, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !noundef !14
  %i.d = icmp ugt i32 %i.c, 9999
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noundef !14
  %i.g = icmp ugt i32 %i.f, 9999
  br i1 %i.g, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 20, ptr %i.b, align 8
  br label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noundef !14
  %i.j = icmp ugt i32 %i.i, 9999
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  store i32 200, ptr %i.e, align 4
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !noundef !14 ; 3 uses
  %1 = fcmp uno float %i.l, 0.000000e+00
  %2 = fcmp olt float %i.l, 1.310000e+00
  %or.cond = or i1 %1, %2
  %i.m = fcmp ogt float %i.l, 5.000000e+00
  %or.cond18 = or i1 %i.m, %or.cond
  br i1 %or.cond18, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.f, %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !noundef !14 ; 3 uses
  %3 = fcmp uno float %i.o, 0.000000e+00
  %4 = fcmp olt float %i.o, 1.000000e+00
  %or.cond19 = or i1 %3, %4
  %i.p = fcmp ogt float %i.o, 5.000000e+00
  %or.cond20 = or i1 %i.p, %or.cond19
  br i1 %or.cond20, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  store float 2.500000e+00, ptr %i.k, align 4
  br label %bb.h

bb.j:                                             ; preds = %bb.h, %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !noundef !14 ; 3 uses
  %5 = fcmp uno float %i.r, 0.000000e+00
  %6 = fcmp olt float %i.r, 5.000000e-01
  %or.cond21 = or i1 %5, %6
  %i.s = fcmp ogt float %i.r, 1.300000e+00
  %or.cond22 = or i1 %i.s, %or.cond21
  br i1 %or.cond22, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  store float 1.300000e+00, ptr %i.n, align 8
  br label %bb.j

bb.l:                                             ; preds = %bb.j, %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !noundef !14 ; 2 uses
  %or.cond23 = fcmp ult float %i.u, 0.000000e+00
  %i.v = fcmp ogt float %i.u, 1.000000e+00
  %or.cond24 = or i1 %or.cond23, %i.v
  br i1 %or.cond24, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  store float 1.200000e+00, ptr %i.q, align 4
  br label %bb.l

bb.n:                                             ; preds = %bb.l, %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !noundef !14 ; 3 uses
  %7 = fcmp uno float %i.x, 0.000000e+00
  %8 = fcmp olt float %i.x, 5.000000e-01
  %or.cond25 = or i1 %7, %8
  %i.y = fcmp ogt float %i.x, 2.000000e+00
  %or.cond26 = or i1 %i.y, %or.cond25
  br i1 %or.cond26, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  store float 0.000000e+00, ptr %i.t, align 8
  br label %bb.n

bb.p:                                             ; preds = %bb.n, %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !noundef !14
  %i.ab = add i32 %i.aa, -36501
  %or.cond27 = icmp ult i32 %i.ab, -36500
  br i1 %or.cond27, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  store float 1.000000e+00, ptr %i.w, align 4
  br label %bb.p

bb.r:                                             ; preds = %bb.p, %bb.s
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !14
  %i.ae = add i32 %i.ad, -36501
  %or.cond28 = icmp ult i32 %i.ae, -36500
  br i1 %or.cond28, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  store i32 36500, ptr %i.z, align 8
  br label %bb.r

bb.t:                                             ; preds = %bb.r, %bb.u
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !noundef !14
  %i.ah = add i32 %i.ag, -36501
  %or.cond29 = icmp ult i32 %i.ah, -36500
  br i1 %or.cond29, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.r
  store i32 1, ptr %i.ac, align 4
  br label %bb.t

bb.v:                                             ; preds = %bb.t, %bb.w
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !14
  %i.ak = add i32 %i.aj, -36501
  %or.cond30 = icmp ult i32 %i.ak, -36500
  br i1 %or.cond30, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  store i32 1, ptr %i.af, align 8
  br label %bb.v

bb.x:                                             ; preds = %bb.v, %bb.y
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noundef !14
  %i.an = add i32 %i.am, -10000
  %or.cond31 = icmp ult i32 %i.an, -9999
  br i1 %or.cond31, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  store i32 4, ptr %i.ai, align 4
  br label %bb.x

bb.z:                                             ; preds = %bb.x, %bb.aa
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !noundef !14
  %i.aq = add i32 %i.ap, -10000
  %or.cond32 = icmp ult i32 %i.aq, -9999
  br i1 %or.cond32, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  store i32 8, ptr %i.al, align 4
  br label %bb.z

bb.ab:                                            ; preds = %bb.z, %bb.ac
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !noundef !14 ; 3 uses
  %9 = fcmp uno float %i.as, 0.000000e+00
  %10 = fcmp olt float %i.as, f0x3F333333
  %or.cond33 = or i1 %9, %10
  %i.at = fcmp ogt float %i.as, 9.900000e-01
  %or.cond34 = or i1 %i.at, %or.cond33
  br i1 %or.cond34, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.z
  store i32 60, ptr %i.ao, align 8
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ab, %bb.ae
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.av = load float, ptr %i.au, align 8, !noundef !14 ; 3 uses
  %11 = fcmp uno float %i.av, 0.000000e+00
  %12 = fcmp olt float %i.av, f0x3F333333
  %or.cond35 = or i1 %11, %12
  %i.aw = fcmp ogt float %i.av, 9.700000e-01
  %or.cond36 = or i1 %i.aw, %or.cond35
  br i1 %or.cond36, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ab
  store float f0x3F666666, ptr %i.ar, align 4
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad, %bb.ag
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.ag:                                            ; preds = %bb.ad
  store float f0x3F666666, ptr %i.au, align 8
  br label %bb.af
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki10deckconfig8schema11130_$LT$impl$u20$core..convert..From$LT$anki..deckconfig..schema11..DeckConfSchema11$GT$$u20$for$u20$anki..deckconfig..DeckConfig$GT$4from17hff0824fce9e51b98E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 8 captures(none) dereferenceable(384) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(544) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.sroa.0 = alloca [192 x i8], align 8    ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !14
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  invoke void @_ZN10serde_json5value8to_value17h697fefa3ba047ea6E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.w)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.p
  %.sroa.08.0 = phi i8 [ 1, %bb.a ], [ 0, %bb.p ] ; 15 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.af = load i64, ptr %i.ae, align 8, !noundef !14
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.q

bb.d:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %bb.ar, %bb.aq, %.thread113, %bb.ad, %.thread102, %bb.q, %.thread94, %bb.b
  %.sroa.08.2 = phi i8 [ %.sroa.08.0, %bb.ar ], [ %.sroa.08.0, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" ], [ %.sroa.08.0, %.thread113 ], [ %.sroa.08.0, %bb.ad ], [ %.sroa.08.0, %.thread102 ], [ %.sroa.08.0, %bb.q ], [ 0, %.thread94 ], [ 0, %bb.b ], [ %.sroa.08.0, %bb.aq ]
  %.sroa.05.1 = phi i8 [ %.sroa.05.2, %bb.ar ], [ %.sroa.05.2, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" ], [ %.sroa.05.2, %.thread113 ], [ %.sroa.05.2, %bb.ad ], [ 0, %.thread102 ], [ 0, %bb.q ], [ 1, %.thread94 ], [ 1, %bb.b ], [ %.sroa.05.2, %bb.aq ]
  %.sroa.02.1 = phi i8 [ %.sroa.02.2, %bb.ar ], [ %.sroa.02.2, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" ], [ 0, %.thread113 ], [ 0, %bb.ad ], [ 1, %.thread102 ], [ 1, %bb.q ], [ 1, %.thread94 ], [ 1, %bb.b ], [ %.sroa.02.2, %bb.aq ]
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ai = load i8, ptr %i.x, align 8, !range !42, !noundef !14
  %i.aj = icmp eq i8 %i.ai, 6
  br i1 %i.aj, label %.thread94, label %bb.f

.noexc28:                                         ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.pr = load i8, ptr %i.x, align 8
  %i.ak = icmp eq i8 %.pr, 6
  br i1 %i.ak, label %.thread94, label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3534
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  %i.al = load i64, ptr %i.f, align 8, !range !25, !noalias !3534, !noundef !14
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !20, !noalias !3534, !noundef !14 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.i, !prof !18

bb.g:                                             ; preds = %.noexc
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !3534
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ao, i64 %i.aq) #33
          to label %.noexc27 unwind label %bb.m

.noexc27:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.k, %bb.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %.noexc
  %i.ar = load ptr, ptr %i.ap, align 8, !noalias !3534, !nonnull !14, !noundef !14 ; 2 uses
  %i.as = icmp ugt i64 %i.ao, 2
  call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ar, ptr noundef nonnull align 1 dereferenceable(3) @38, i64 3, i1 false), !noalias !3535
  store i64 %i.ao, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2669ba7de2c0cf3aE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.s)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.au = load i8, ptr %i.u, align 8, !range !42, !alias.scope !3536, !noundef !14
  %i.av = icmp eq i8 %i.au, 6
  br i1 %i.av, label %.noexc28, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.noexc28 unwind label %bb.h

bb.l:                                             ; preds = %bb.h, %bb.m
  %lpad.phi99 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.h ] ; 2 uses
  %i.aw = load i8, ptr %i.x, align 8, !range !42, !noundef !14
  %.not = icmp eq i8 %i.aw, 6
  br i1 %.not, label %bb.o, label %bb.bl

bb.m:                                             ; preds = %bb.g, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %i.v) #32
          to label %bb.l unwind label %bb.n

bb.n:                                             ; preds = %bb.bw, %bb.bq, %bb.bo, %bb.bn, %bb.bk, %bb.bj, %"_ZN4core3ptr113drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hf1d80cc60eb61d57E.exit53", %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %"_ZN4core3ptr113drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hf1d80cc60eb61d57E.exit59", %"_ZN4core3ptr113drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hf1d80cc60eb61d57E.exit57", %bb.bm, %bb.bl, %bb.ao, %bb.an, %bb.ab, %bb.aa, %bb.o, %bb.m
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..result..Result$LT$serde_json..value..Value$C$serde_json..error..Error$GT$$GT$17he7afbb618e2401eaE"(ptr noalias noundef align 8 dereferenceable(32) %i.x) #32
          to label %bb.bl unwind label %bb.n

.thread94:                                        ; preds = %bb.e, %.noexc28
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..result..Result$LT$serde_json..value..Value$C$serde_json..error..Error$GT$$GT$17he7afbb618e2401eaE"(ptr noalias noundef align 8 dereferenceable(32) %i.x)
          to label %bb.p unwind label %bb.d

bb.p:                                             ; preds = %.thread94, %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.c

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  invoke void @_ZN10serde_json5value8to_value17h697fefa3ba047ea6E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q)
          to label %bb.s unwind label %bb.d

bb.r:                                             ; preds = %bb.c, %bb.ac
  %.sroa.05.2 = phi i8 [ 1, %bb.c ], [ 0, %bb.ac ] ; 12 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !14
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.ae, label %bb.ad

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bd = load i8, ptr %i.r, align 8, !range !42, !noundef !14
  %i.be = icmp eq i8 %i.bd, 6
  br i1 %i.be, label %.thread102, label %bb.t

.noexc32:                                         ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
end_hunk_0
