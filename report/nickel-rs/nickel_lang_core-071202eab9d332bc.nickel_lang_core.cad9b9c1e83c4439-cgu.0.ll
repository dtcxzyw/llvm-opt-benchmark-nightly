Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf8b6ccf63a2f669eE":bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85841
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !noalias !85841
  %i.m = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1673), !inline_history !85837 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85841
  %i.n = icmp eq ptr %i.l, %i.i
  br i1 %i.n, label %_ZN4core3fmt8builders9DebugList7entries17hde73fcbbbdb5b423E.exit.i, label %.lr.ph.i.i

_ZN4core3fmt8builders9DebugList7entries17hde73fcbbbdb5b423E.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  %i.o = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !inline_history !85833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85839
  br label %"_ZN87_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd27f76b38d520218E.exit"

"_ZN87_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd27f76b38d520218E.exit": ; preds = %bb.a, %_ZN4core3fmt8builders9DebugList7entries17hde73fcbbbdb5b423E.exit.i
  %.sroa.0.0.i = phi i1 [ %i.o, %_ZN4core3fmt8builders9DebugList7entries17hde73fcbbbdb5b423E.exit.i ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfaa9d212c068c778E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !145, !align !176, !noundef !145 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85845)
  %i.c = load i32, ptr %i.b, align 4, !range !197, !alias.scope !85845, !noalias !85846, !noundef !145
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85847
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !noalias !85847
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1867, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1664)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85847
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c639d8f805ac7bE.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1866, i64 noundef 4), !noalias !85845
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c639d8f805ac7bE.exit"

"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c639d8f805ac7bE.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfb7ca100b818c389E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %.val = load ptr, ptr %i.b, align 8, !nonnull !145, !align !149, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85854
  store ptr %.val, ptr %i.a, align 8, !noalias !85854
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2044, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2043), !inline_history !85853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85854
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfcbd4327945032ffE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85862
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !85863
  %.idx.i.i = shl nuw nsw i64 %.val1, 3
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %i.g = icmp eq i64 %.val1, 0
  br i1 %i.g, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha9107a17b43f5b6bE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85864
  store ptr %.sroa.0.07.i.i.i, ptr %i.a, align 8, !noalias !85864
  %i.i = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1650) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85864
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha9107a17b43f5b6bE.exit", label %.lr.ph.i.i.i

"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha9107a17b43f5b6bE.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85862
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe0fa0d4da81a8fdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85873)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !85873, !noalias !85874, !nonnull !145, !noundef !145 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !85873, !noalias !85874, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85875
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !85876
  %.idx.i.i = mul nuw nsw i64 %i.g, 20
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he233a4842975f850E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85877
  store ptr %.sroa.0.07.i.i.i, ptr %i.a, align 8, !noalias !85877
  %i.k = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1647), !noalias !85873 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85877
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he233a4842975f850E.exit", label %.lr.ph.i.i.i

"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he233a4842975f850E.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  %i.m = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !85873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85875
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hff5212561855b5e3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !176, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN74_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..fmt..Debug$GT$3fmt17h5e69bf9f90a3b3ffE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hff76274f4cf2f75dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85881)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !85881, !noalias !85882, !nonnull !145, !align !163, !noundef !145
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !85881, !noalias !85882, !noundef !145
  %i.e = tail call noundef zeroext i1 @"_ZN60_$LT$std..ffi..os_str..OsStr$u20$as$u20$core..fmt..Debug$GT$3fmt17h523fedaeaea44e01E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !85881
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h026c188b2425dacaE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85886)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !85886, !noalias !85887, !nonnull !145, !align !149, !noundef !145
  %i.c = tail call noundef zeroext i1 @"_ZN73_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..fmt..Display$GT$3fmt17h61faa17e0ed44c6bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !85886
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h14a301490634b094E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN11malachite_q10conversion6string9to_string70_$LT$impl$u20$core..fmt..Display$u20$for$u20$malachite_q..Rational$GT$3fmt17h984ae9456eb7aad9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h27d65899159f3508E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !176, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h28d4732cf360e190E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85891)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !85891, !noalias !85892, !nonnull !145, !noundef !145
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !85891, !noalias !85892, !noundef !145
  %i.f = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !85891
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3504185061003363E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3d6cfc8b0b401563E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !163, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85913)
  %i.b = load i8, ptr %i.a, align 1, !range !229, !alias.scope !85912, !noalias !85913, !noundef !145
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i = load ptr, ptr %i.c, align 8, !alias.scope !85913, !noalias !85912, !nonnull !145, !noundef !145
  %.val14.i = load ptr, ptr %1, align 8, !alias.scope !85913, !noalias !85912, !nonnull !145, !noundef !145 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val15.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !145, !noalias !85914, !nonnull !145 ; 8 uses
  switch i8 %i.b, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2113, i64 noundef 14), !noalias !85915, !inline_history !85916
  br label %"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2114, i64 noundef 20), !noalias !85917, !inline_history !85916
  br label %"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE.exit"

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2115, i64 noundef 13), !noalias !85918, !inline_history !85916
  br label %"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE.exit"

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2116, i64 noundef 21), !noalias !85919, !inline_history !85916
  br label %"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE.exit"

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2117, i64 noundef 16), !noalias !85920, !inline_history !85916
  br label %"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE.exit"

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2118, i64 noundef 18), !noalias !85921, !inline_history !85916
  br label %"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE.exit"

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2119, i64 noundef 26), !noalias !85922, !inline_history !85916
  br label %"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE.exit"

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val14.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2120, i64 noundef 11), !noalias !85923, !inline_history !85916
  br label %"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE.exit"

"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.d ], [ %i.g, %bb.c ], [ %i.m, %bb.i ], [ %i.l, %bb.h ], [ %i.k, %bb.g ], [ %i.j, %bb.f ], [ %i.i, %bb.e ], [ %i.f, %bb.b ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4f3d76fb2c528164E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN66_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..fmt..Display$GT$3fmt17h435c16c35afa51c9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5e9891f0aee22b93E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !176, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..fmt..Display$GT$3fmt17hb3e33a24e8926132E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h60ae38a6ddffa9f9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN73_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..fmt..Display$GT$3fmt17h61faa17e0ed44c6bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h60b83f3d02976e76E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85927)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !85927, !noalias !85928, !nonnull !145, !align !176, !noundef !145
  %i.c = tail call noundef zeroext i1 @"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..fmt..Display$GT$3fmt17hb3e33a24e8926132E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !85927
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h61c844b331688db3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h65693749f68e8749E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !176, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN76_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..fmt..Display$GT$3fmt17hbc9c1c42002a29c9E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h71df00bd2a383077E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85937)
  %i.h = load i32, ptr %i.g, align 8, !range !197, !alias.scope !85936, !noalias !85937, !noundef !145
  %i.i = trunc nuw i32 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.i, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15.i

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85938
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.d, align 8, !noalias !85938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85938
  store ptr %i.d, ptr %i.c, align 8, !noalias !85938
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h61c844b331688db3E", ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !85938
  %.val9.i = load ptr, ptr %1, align 8, !alias.scope !85937, !noalias !85936, !nonnull !145, !noundef !145
  %.val10.i = load ptr, ptr %i.j, align 8, !alias.scope !85937, !noalias !85936, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85939
  store ptr @2879, ptr %i.b, align 8, !noalias !85938
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !85938
  %.sroa.718.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.718.0..sroa_idx.i, align 8, !noalias !85938
  %.sroa.819.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.819.0..sroa_idx.i, align 8, !noalias !85938
  %.sroa.1020.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1020.0..sroa_idx.i, align 8, !noalias !85938
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !85940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !85938
  br label %"_ZN85_$LT$nickel_lang_core..serialize..NickelPointerElem$u20$as$u20$core..fmt..Display$GT$3fmt17hee0913634ee750fdE.exit"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !85938
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.m, ptr %i.f, align 8, !noalias !85938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !85938
  store ptr %i.f, ptr %i.e, align 8, !noalias !85938
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h65693749f68e8749E", ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !85938
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !85937, !noalias !85936, !nonnull !145, !noundef !145
  %.val8.i = load ptr, ptr %i.j, align 8, !alias.scope !85937, !noalias !85936, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85941
  store ptr @212, ptr %i.a, align 8, !noalias !85938
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !85938
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !85938
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !85938
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !85938
  %i.n = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !85942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !85938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !85938
  br label %"_ZN85_$LT$nickel_lang_core..serialize..NickelPointerElem$u20$as$u20$core..fmt..Display$GT$3fmt17hee0913634ee750fdE.exit"

"_ZN85_$LT$nickel_lang_core..serialize..NickelPointerElem$u20$as$u20$core..fmt..Display$GT$3fmt17hee0913634ee750fdE.exit": ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15.i
  %.sroa.0.0.in.i = phi i1 [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i ], [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15.i ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8ceb3b2435ac6678E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN18nickel_lang_parser3ast3typ128_$LT$impl$u20$core..fmt..Display$u20$for$u20$nickel_lang_parser..typ..EnumRowF$LT$$RF$nickel_lang_parser..ast..typ..Type$GT$$GT$3fmt17ha5c3465094389706E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd6e8f2bd05a3cc2fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85948)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85949
  store ptr %i.c, ptr %i.b, align 8, !noalias !85949
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !85949
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !85948, !noalias !85950, !nonnull !145, !noundef !145
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !85948, !noalias !85950, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85951
  store ptr @212, ptr %i.a, align 8, !noalias !85949
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !85949
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !85949
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !85949
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !85949
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !85952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85949
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd93e21b70810e9a9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he9d751d9e127cf61E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN18nickel_lang_parser3ast3typ130_$LT$impl$u20$core..fmt..Display$u20$for$u20$nickel_lang_parser..typ..RecordRowF$LT$$RF$nickel_lang_parser..ast..typ..Type$GT$$GT$3fmt17hcf16dd53a6f33b13E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf3b870c3f66a8772E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef zeroext i1 @"_ZN70_$LT$nickel_lang_core..term..UnaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0f890df08c868f9aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf87abc5486febb18E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !163, !noundef !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !145
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h6e31edba0d830a8dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hb297480c5db160e7E(i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h1786908d607a9753E"(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 1 captures(address) %1, i64 noundef %2) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85982)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85984)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !alias.scope !85985, !noalias !85986, !noundef !145 ; 3 uses
  %i.d = zext nneg i8 %i.c to i64                 ; 4 uses
  %i.e = icmp ult i8 %i.c, 64
  tail call void @llvm.assume(i1 %i.e)
  %i.f = sub nuw nsw i64 64, %i.d                 ; 4 uses
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.c, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i", %bb.b
  %.sroa.6.0.i.i = phi i64 [ %2, %bb.b ], [ %i.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %1, %bb.b ], [ %i.o, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i" ] ; 2 uses
  %i.i = lshr i64 %.sroa.6.0.i.i, 6               ; 3 uses
  %i.j = and i64 %.sroa.6.0.i.i, -64
  %i.k = and i64 %.sroa.6.0.i.i, 63               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.j
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i": ; preds = %bb.b
  %i.n = sub nuw i64 %2, %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %1, i64 %i.f, i1 false), !alias.scope !85987, !noalias !85988
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !85989, !noalias !85990, !noundef !145
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !alias.scope !85989, !noalias !85990
  tail call fastcc void @_ZN3md58compress4soft8compress17hbeab66e367b3ff69E(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.a, i64 noundef range(i64 1, 0) 1), !noalias !85986
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !85991, !noalias !85992, !noundef !145
  %i.v = add i64 %i.u, %i.i
  store i64 %i.v, ptr %i.t, align 8, !alias.scope !85991, !noalias !85992
  tail call fastcc void @_ZN3md58compress4soft8compress17hbeab66e367b3ff69E(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef range(i64 1, 0) %i.i), !noalias !85993
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.a, ptr nonnull readonly align 1 %i.l, i64 %i.k, i1 false), !alias.scope !85994, !noalias !85995
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h2b391a13fb027fe9E.exit"

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !alias.scope !85996, !noalias !85997
  %i.x = add nuw nsw i64 %2, %i.d
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h2b391a13fb027fe9E.exit"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h2b391a13fb027fe9E.exit": ; preds = %bb.e, %bb.f
  %storemerge.in.i.i = phi i64 [ %i.k, %bb.e ], [ %i.x, %bb.f ]
  %storemerge.i.i = trunc nuw nsw i64 %storemerge.in.i.i to i8
  store i8 %storemerge.i.i, ptr %i.b, align 8, !alias.scope !85985, !noalias !85986
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h85d4629f14fc1b42E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86033)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86035)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !alias.scope !86036, !noalias !86037, !noundef !145 ; 3 uses
  %i.d = zext nneg i8 %i.c to i64                 ; 4 uses
  %i.e = icmp ult i8 %i.c, 64
  tail call void @llvm.assume(i1 %i.e)
  %i.f = sub nuw nsw i64 64, %i.d                 ; 4 uses
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.c, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i", %bb.b
  %.sroa.6.0.i.i = phi i64 [ %2, %bb.b ], [ %i.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %1, %bb.b ], [ %i.o, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i" ] ; 2 uses
  %i.i = lshr i64 %.sroa.6.0.i.i, 6               ; 3 uses
  %i.j = and i64 %.sroa.6.0.i.i, -64
  %i.k = and i64 %.sroa.6.0.i.i, 63               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.j
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17he7edbbd195fa9bfeE.exit.i.i": ; preds = %bb.b
  %i.n = sub nuw i64 %2, %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %1, i64 %i.f, i1 false), !alias.scope !86038, !noalias !86039
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !86040, !noalias !86041, !noundef !145
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !alias.scope !86040, !noalias !86041
  tail call void @_ZN4sha26sha25611compress25617h76ee626fd7734764E(ptr noalias noundef nonnull align 8 dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.a, i64 noundef range(i64 1, 0) 1), !noalias !86037
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !86042, !noalias !86043, !noundef !145
  %i.v = add i64 %i.u, %i.i
  store i64 %i.v, ptr %i.t, align 8, !alias.scope !86042, !noalias !86043
  tail call void @_ZN4sha26sha25611compress25617h76ee626fd7734764E(ptr noalias noundef nonnull align 8 dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef range(i64 1, 0) %i.i), !noalias !86044
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.a, ptr nonnull readonly align 1 %i.l, i64 %i.k, i1 false), !alias.scope !86045, !noalias !86046
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h23f300b964f30fb6E.exit"

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !alias.scope !86047, !noalias !86048
  %i.x = add nuw nsw i64 %2, %i.d
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h23f300b964f30fb6E.exit"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h23f300b964f30fb6E.exit": ; preds = %bb.e, %bb.f
  %storemerge.in.i.i = phi i64 [ %i.k, %bb.e ], [ %i.x, %bb.f ]
  %storemerge.i.i = trunc nuw nsw i64 %storemerge.in.i.i to i8
  store i8 %storemerge.i.i, ptr %i.b, align 8, !alias.scope !86036, !noalias !86037
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17hb64f2812fd8c7d15E"(ptr noalias noundef nonnull align 16 dereferenceable(224) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86084)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86086)
end_hunk_0
begin_hunk_1_@"_ZN69_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Debug$GT$3fmt17h825e9f720fc56b21E":bb.a
bb.e:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 4)
  br label %bb.au

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2062, i64 noundef 3)
  br label %bb.au

bb.g:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2063, i64 noundef 6)
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2064, i64 noundef 13)
  br label %bb.au

bb.i:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2065, i64 noundef 9)
  br label %bb.au

bb.j:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2066, i64 noundef 3)
  br label %bb.au

bb.k:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2067, i64 noundef 12)
  br label %bb.au

bb.l:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2068, i64 noundef 2)
  br label %bb.au

bb.m:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2069, i64 noundef 8)
  br label %bb.au

bb.n:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2070, i64 noundef 8)
  br label %bb.au

bb.o:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2071, i64 noundef 11)
  br label %bb.au

bb.p:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2072, i64 noundef 11)
  br label %bb.au

bb.q:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2073, i64 noundef 13)
  br label %bb.au

bb.r:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2074, i64 noundef 13)
  br label %bb.au

bb.s:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2075, i64 noundef 18)
  br label %bb.au

bb.t:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2076, i64 noundef 6)
  br label %bb.au

bb.u:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2077, i64 noundef 12)
  br label %bb.au

bb.v:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33
  store ptr %i.af, ptr %i.e, align 8
  %i.ag = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2081, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1731, i64 noundef 8, ptr noundef nonnull align 1 %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2078, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2082, i64 noundef 17, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2079, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2083, i64 noundef 8, ptr noundef nonnull align 1 %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2080, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2084, i64 noundef 7, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.au

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.d, align 8
  %i.ai = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2085, i64 noundef 12, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.au

bb.x:                                             ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2086, i64 noundef 9)
  br label %bb.au

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.c, align 8
  %i.al = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2087, i64 noundef 14, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.b, align 8
  %i.an = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2088, i64 noundef 20, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.au

bb.aa:                                            ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2089, i64 noundef 15)
  br label %bb.au

bb.ab:                                            ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2090, i64 noundef 19)
  br label %bb.au

bb.ac:                                            ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2091, i64 noundef 11)
  br label %bb.au

bb.ad:                                            ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2092, i64 noundef 7)
  br label %bb.au

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.a, align 8
  %i.at = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2094, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2093)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.au

bb.af:                                            ; preds = %bb.a
  %i.au = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2095, i64 noundef 4)
  br label %bb.au

bb.ag:                                            ; preds = %bb.a
  %i.av = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2096, i64 noundef 9)
  br label %bb.au

bb.ah:                                            ; preds = %bb.a
  %i.aw = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2097, i64 noundef 11)
  br label %bb.au

bb.ai:                                            ; preds = %bb.a
  %i.ax = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2098, i64 noundef 11)
  br label %bb.au

bb.aj:                                            ; preds = %bb.a
  %i.ay = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2099, i64 noundef 14)
  br label %bb.au

bb.ak:                                            ; preds = %bb.a
  %i.az = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2100, i64 noundef 13)
  br label %bb.au

bb.al:                                            ; preds = %bb.a
  %i.ba = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2101, i64 noundef 18)
  br label %bb.au

bb.am:                                            ; preds = %bb.a
  %i.bb = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2102, i64 noundef 18)
  br label %bb.au

bb.an:                                            ; preds = %bb.a
  %i.bc = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2103, i64 noundef 4)
  br label %bb.au

bb.ao:                                            ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2104, i64 noundef 20)
  br label %bb.au

bb.ap:                                            ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2105, i64 noundef 21)
  br label %bb.au

bb.aq:                                            ; preds = %bb.a
  %i.bf = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2106, i64 noundef 16)
  br label %bb.au

bb.ar:                                            ; preds = %bb.a
  %i.bg = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2107, i64 noundef 14)
  br label %bb.au

bb.as:                                            ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2108, i64 noundef 15)
  br label %bb.au

bb.at:                                            ; preds = %bb.a
  %i.bi = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2109, i64 noundef 18)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.q, %bb.i ], [ %i.r, %bb.j ], [ %i.s, %bb.k ], [ %i.t, %bb.l ], [ %i.u, %bb.m ], [ %i.v, %bb.n ], [ %i.w, %bb.o ], [ %i.x, %bb.p ], [ %i.y, %bb.q ], [ %i.z, %bb.r ], [ %i.aa, %bb.s ], [ %i.ab, %bb.t ], [ %i.ac, %bb.u ], [ %i.ag, %bb.v ], [ %i.ai, %bb.w ], [ %i.aj, %bb.x ], [ %i.al, %bb.y ], [ %i.an, %bb.z ], [ %i.ao, %bb.aa ], [ %i.ap, %bb.ab ], [ %i.aq, %bb.ac ], [ %i.ar, %bb.ad ], [ %i.at, %bb.ae ], [ %i.au, %bb.af ], [ %i.av, %bb.ag ], [ %i.aw, %bb.ah ], [ %i.ax, %bb.ai ], [ %i.ay, %bb.aj ], [ %i.az, %bb.ak ], [ %i.ba, %bb.al ], [ %i.bb, %bb.am ], [ %i.bc, %bb.an ], [ %i.bd, %bb.ao ], [ %i.be, %bb.ap ], [ %i.bf, %bb.aq ], [ %i.bg, %bb.ar ], [ %i.bh, %bb.as ], [ %i.bi, %bb.at ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !229, !noundef !145
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.b, align 8, !nonnull !145, !noundef !145
  %.val14 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !145, !noalias !145, !nonnull !145 ; 8 uses
  switch i8 %i.a, label %default.unreachable93 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
  ]

default.unreachable93:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2113, i64 noundef 14), !noalias !111633, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2114, i64 noundef 20), !noalias !111634, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2115, i64 noundef 13), !noalias !111635, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2116, i64 noundef 21), !noalias !111636, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2117, i64 noundef 16), !noalias !111637, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2118, i64 noundef 18), !noalias !111638, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.h:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2119, i64 noundef 26), !noalias !111639, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.i:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2120, i64 noundef 11), !noalias !111640, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.l, %bb.i ], [ %i.k, %bb.h ], [ %i.j, %bb.g ], [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$nickel_lang_core..typ..EnumRow$u20$as$u20$core..fmt..Display$GT$3fmt17h9a45e6404cb4e3a1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !111649
  store i64 0, ptr %i.b, align 8, !noalias !111649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111649
  call void @"_ZN16nickel_lang_core6pretty185_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_core..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..typ..EnumRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$$GT$6pretty17h6797bba79abe2b6cE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.b), !noalias !111649
  %i.c = load i8, ptr %i.a, align 8, !range !238, !noalias !111649, !noundef !145
  %.not.i = icmp eq i8 %i.c, 15                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !111649, !nonnull !145 ; 4 uses
  %.sroa.01.0.i = select i1 %.not.i, ptr %i.e, ptr %i.a
  %i.f = invoke fastcc noundef zeroext i1 @_ZN6pretty6render4best17hd8417039552824faE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i, ptr nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_core..pretty..Allocator$GT$$GT$17h701acb1da8c2338bE"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #86
          to label %common.resume.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h9005b908fe8bd02aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #84
          to label %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd9d4d5329071ac73E.exit.i.i.i" unwind label %bb.e, !noalias !111650, !inline_history !299

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #83, !noalias !111650, !inline_history !299
  br label %common.resume.i

"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd9d4d5329071ac73E.exit.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #83, !noalias !111650, !inline_history !299
  br label %_ZN16nickel_lang_core6pretty10fmt_pretty17h7da56535aefa7196E.exit

bb.f:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h9005b908fe8bd02aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_ZN16nickel_lang_core6pretty10fmt_pretty17h7da56535aefa7196E.exit

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

_ZN16nickel_lang_core6pretty10fmt_pretty17h7da56535aefa7196E.exit: ; preds = %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd9d4d5329071ac73E.exit.i.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111649
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b60d23ec6531fe8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !175, !noundef !145
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @275, i64 noundef 4)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2044, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2128, i64 noundef 8, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2129, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2128, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN69_$LT$saphyr_parser..parser..Event$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4a3a6b8591c43978E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #34 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !198, !noundef !145 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775801
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775807
  %i.d = icmp ugt i64 %i.a, -9223372036854775808
  %i.e = select i1 %i.d, i64 %i.c, i64 6          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !198, !noundef !145 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775801
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, 9223372036854775807
  %i.i = icmp ugt i64 %i.f, -9223372036854775808
  %i.j = select i1 %i.i, i64 %i.h, i64 6
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h824c95543346af80E.exit.thread"

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h824c95543346af80E.exit.thread" [
    i64 3, label %bb.c
    i64 5, label %bb.d
    i64 6, label %bb.e
    i64 7, label %bb.j
    i64 9, label %bb.m
  ]

"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h824c95543346af80E.exit.thread": ; preds = %bb.n, %bb.k, %bb.h, %bb.e, %bb.m, %bb.j, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h824c95543346af80E.exit", %bb.f, %bb.g, %bb.b, %bb.a, %bb.o, %bb.l, %bb.i, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.p, %bb.c ], [ %i.u, %bb.d ], [ %i.al, %bb.i ], [ false, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h824c95543346af80E.exit" ], [ false, %bb.g ], [ true, %bb.b ], [ %i.aw, %bb.l ], [ false, %bb.j ], [ %.mux, %bb.h ], [ %.mux11, %bb.n ], [ %i.bh, %bb.o ], [ false, %bb.m ], [ %.mux9, %bb.k ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !153, !noundef !145
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !153, !noundef !145
  %i.p = icmp eq i8 %i.m, %i.o
  br label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h824c95543346af80E.exit.thread"

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !145
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !145
  %i.u = icmp eq i64 %i.r, %i.t
  br label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h824c95543346af80E.exit.thread"

end_hunk_1
begin_hunk_2_@"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..clone..Clone$GT$5clone17h2fb7a3a674f3d1c5E":bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  br label %bb.au

bb.af:                                            ; preds = %bb.a
  store i64 -9223372036854775779, ptr %0, align 8
  br label %bb.au

bb.ag:                                            ; preds = %bb.a
  store i64 -9223372036854775778, ptr %0, align 8
  br label %bb.au

bb.ah:                                            ; preds = %bb.a
  store i64 -9223372036854775777, ptr %0, align 8
  br label %bb.au

bb.ai:                                            ; preds = %bb.a
  store i64 -9223372036854775776, ptr %0, align 8
  br label %bb.au

bb.aj:                                            ; preds = %bb.a
  store i64 -9223372036854775775, ptr %0, align 8
  br label %bb.au

bb.ak:                                            ; preds = %bb.a
  store i64 -9223372036854775774, ptr %0, align 8
  br label %bb.au

bb.al:                                            ; preds = %bb.a
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.au

bb.am:                                            ; preds = %bb.a
  store i64 -9223372036854775772, ptr %0, align 8
  br label %bb.au

bb.an:                                            ; preds = %bb.a
  store i64 -9223372036854775771, ptr %0, align 8
  br label %bb.au

bb.ao:                                            ; preds = %bb.a
  store i64 -9223372036854775770, ptr %0, align 8
  br label %bb.au

bb.ap:                                            ; preds = %bb.a
  store i64 -9223372036854775769, ptr %0, align 8
  br label %bb.au

bb.aq:                                            ; preds = %bb.a
  store i64 -9223372036854775768, ptr %0, align 8
  br label %bb.au

bb.ar:                                            ; preds = %bb.a
  store i64 -9223372036854775767, ptr %0, align 8
  br label %bb.au

bb.as:                                            ; preds = %bb.a
  store i64 -9223372036854775766, ptr %0, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.a
  store i64 -9223372036854775765, ptr %0, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.ba, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void

bb.av:                                            ; preds = %bb.v
  %.val.i = load i64, ptr %i.i, align 8, !noundef !145 ; 2 uses
  %i.j = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.k, ptr %i.i, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.aw, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6d4290412514c436E.exit, !prof !147

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h6d4290412514c436E.exit: ; preds = %bb.av, %bb.v
  store ptr %i.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !145, !noundef !145
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.n, align 8, !noundef !145
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h343175524a56d5c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %.val, i64 %.val2)
          to label %bb.ba unwind label %bb.ax

bb.ax:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6d4290412514c436E.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br i1 %.not, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h1f542e96abee7493E.exit", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.p = load i64, ptr %i.i, align 8, !noalias !113818, !noundef !145
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.i, align 8, !noalias !113818
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.az, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h1f542e96abee7493E.exit"

bb.az:                                            ; preds = %bb.ay
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h1f542e96abee7493E.exit" unwind label %bb.bb, !inline_history !189

bb.ba:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6d4290412514c436E.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !153, !noundef !145
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.v = load i8, ptr %i.u, align 1, !range !153, !noundef !145
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.w, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.t, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.v, ptr %i.y, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.au

bb.bb:                                            ; preds = %bb.az
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h1f542e96abee7493E.exit": ; preds = %bb.ay, %bb.ax, %bb.az
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = load i64, ptr %0, align 8, !range !256, !noundef !145 ; 3 uses
  %i.j = icmp ne i64 %i.i, -9223372036854775789
  tail call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %i.i, -9223372036854775808
  %i.l = icmp slt i64 %i.i, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 19
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
    i64 35, label %bb.al
    i64 36, label %bb.am
    i64 37, label %bb.an
    i64 38, label %bb.ao
    i64 39, label %bb.ap
    i64 40, label %bb.aq
    i64 41, label %bb.ar
    i64 42, label %bb.as
    i64 43, label %bb.at
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val95 = load ptr, ptr %i.n, align 8, !nonnull !145, !noundef !145
  %.val94 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.o = getelementptr inbounds nuw i8, ptr %.val95, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !145, !noalias !113899, !nonnull !145
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val94, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2278, i64 noundef 3), !noalias !113899, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val93 = load ptr, ptr %i.r, align 8, !nonnull !145, !noundef !145
  %.val92 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.s = getelementptr inbounds nuw i8, ptr %.val93, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !145, !noalias !113900, !nonnull !145
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 1 %.val92, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2279, i64 noundef 3), !noalias !113900, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val91 = load ptr, ptr %i.v, align 8, !nonnull !145, !noundef !145
  %.val90 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.w = getelementptr inbounds nuw i8, ptr %.val91, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !145, !noalias !113901, !nonnull !145
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 1 %.val90, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2280, i64 noundef 3), !noalias !113901, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val89 = load ptr, ptr %i.z, align 8, !nonnull !145, !noundef !145
  %.val88 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.aa = getelementptr inbounds nuw i8, ptr %.val89, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !145, !noalias !113902, !nonnull !145
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 1 %.val88, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2281, i64 noundef 3), !noalias !113902, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val87 = load ptr, ptr %i.ad, align 8, !nonnull !145, !noundef !145
  %.val86 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ae = getelementptr inbounds nuw i8, ptr %.val87, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !145, !noalias !113903, !nonnull !145
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull align 1 %.val86, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2282, i64 noundef 3), !noalias !113903, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.h:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val85 = load ptr, ptr %i.ah, align 8, !nonnull !145, !noundef !145
  %.val84 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ai = getelementptr inbounds nuw i8, ptr %.val85, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !145, !noalias !113904, !nonnull !145
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull align 1 %.val84, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2283, i64 noundef 14), !noalias !113904, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.i:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val83 = load ptr, ptr %i.al, align 8, !nonnull !145, !noundef !145
  %.val82 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.am = getelementptr inbounds nuw i8, ptr %.val83, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !145, !noalias !113905, !nonnull !145
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 1 %.val82, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2284, i64 noundef 10), !noalias !113905, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.j:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val81 = load ptr, ptr %i.ap, align 8, !nonnull !145, !noundef !145
  %.val80 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.aq = getelementptr inbounds nuw i8, ptr %.val81, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !145, !noalias !113906, !nonnull !145
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 1 %.val80, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2285, i64 noundef 3), !noalias !113906, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.k:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val79 = load ptr, ptr %i.at, align 8, !nonnull !145, !noundef !145
  %.val78 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.au = getelementptr inbounds nuw i8, ptr %.val79, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !145, !noalias !113907, !nonnull !145
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 1 %.val78, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2286, i64 noundef 13), !noalias !113907, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.l:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val77 = load ptr, ptr %i.ax, align 8, !nonnull !145, !noundef !145
  %.val76 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ay = getelementptr inbounds nuw i8, ptr %.val77, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !145, !noalias !113908, !nonnull !145
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 1 %.val76, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2287, i64 noundef 4), !noalias !113908, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.m:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val75 = load ptr, ptr %i.bb, align 8, !nonnull !145, !noundef !145
  %.val74 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.bc = getelementptr inbounds nuw i8, ptr %.val75, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !145, !noalias !113909, !nonnull !145
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull align 1 %.val74, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2288, i64 noundef 3), !noalias !113909, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.n:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val73 = load ptr, ptr %i.bf, align 8, !nonnull !145, !noundef !145
  %.val72 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.bg = getelementptr inbounds nuw i8, ptr %.val73, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !145, !noalias !113910, !nonnull !145
  %i.bi = tail call noundef zeroext i1 %i.bh(ptr noundef nonnull align 1 %.val72, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2289, i64 noundef 4), !noalias !113910, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.o:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val71 = load ptr, ptr %i.bj, align 8, !nonnull !145, !noundef !145
  %.val70 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.bk = getelementptr inbounds nuw i8, ptr %.val71, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !145, !noalias !113911, !nonnull !145
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 1 %.val70, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2290, i64 noundef 3), !noalias !113911, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.p:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.bn, align 8, !nonnull !145, !noundef !145
  %.val68 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.bo = getelementptr inbounds nuw i8, ptr %.val69, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !145, !noalias !113912, !nonnull !145
  %i.bq = tail call noundef zeroext i1 %i.bp(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2291, i64 noundef 4), !noalias !113912, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.q:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val67 = load ptr, ptr %i.br, align 8, !nonnull !145, !noundef !145
  %.val66 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.bs = getelementptr inbounds nuw i8, ptr %.val67, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !145, !noalias !113913, !nonnull !145
  %i.bu = tail call noundef zeroext i1 %i.bt(ptr noundef nonnull align 1 %.val66, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @864, i64 noundef 14), !noalias !113913, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.r:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val65 = load ptr, ptr %i.bv, align 8, !nonnull !145, !noundef !145
  %.val64 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.bw = getelementptr inbounds nuw i8, ptr %.val65, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !145, !noalias !113914, !nonnull !145
  %i.by = tail call noundef zeroext i1 %i.bx(ptr noundef nonnull align 1 %.val64, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2292, i64 noundef 14), !noalias !113914, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.s:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val63 = load ptr, ptr %i.bz, align 8, !nonnull !145, !noundef !145
  %.val62 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ca = getelementptr inbounds nuw i8, ptr %.val63, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !invariant.load !145, !noalias !113915, !nonnull !145
  %i.cc = tail call noundef zeroext i1 %i.cb(ptr noundef nonnull align 1 %.val62, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2293, i64 noundef 21), !noalias !113915, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.t:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val61 = load ptr, ptr %i.cd, align 8, !nonnull !145, !noundef !145
  %.val60 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ce = getelementptr inbounds nuw i8, ptr %.val61, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !invariant.load !145, !noalias !113916, !nonnull !145
  %i.cg = tail call noundef zeroext i1 %i.cf(ptr noundef nonnull align 1 %.val60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2294, i64 noundef 6), !noalias !113916, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.u:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val59 = load ptr, ptr %i.ch, align 8, !nonnull !145, !noundef !145
  %.val58 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ci = getelementptr inbounds nuw i8, ptr %.val59, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !145, !noalias !113917, !nonnull !145
  %i.ck = tail call noundef zeroext i1 %i.cj(ptr noundef nonnull align 1 %.val58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2295, i64 noundef 14), !noalias !113917, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.v:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.cm = load i8, ptr %i.cl, align 1, !range !153, !noundef !145
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.cn, label %bb.au, label %bb.av

bb.w:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load i8, ptr %i.cp, align 8, !range !153, !noundef !145
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.cr, label %bb.aw, label %bb.ax

bb.x:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val57 = load ptr, ptr %i.ct, align 8, !nonnull !145, !noundef !145
  %.val56 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.cu = getelementptr inbounds nuw i8, ptr %.val57, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !145, !noalias !113918, !nonnull !145
  %i.cw = tail call noundef zeroext i1 %i.cv(ptr noundef nonnull align 1 %.val56, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2303, i64 noundef 10), !noalias !113918, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.y:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i8, ptr %i.cx, align 8, !range !153, !noundef !145
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.cz, label %bb.ay, label %bb.az

bb.z:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load i8, ptr %i.db, align 8, !range !153, !noundef !145
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.dd, label %bb.ba, label %bb.bb

bb.aa:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val55 = load ptr, ptr %i.df, align 8, !nonnull !145, !noundef !145
  %.val54 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.dg = getelementptr inbounds nuw i8, ptr %.val55, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !invariant.load !145, !noalias !113919, !nonnull !145
  %i.di = tail call noundef zeroext i1 %i.dh(ptr noundef nonnull align 1 %.val54, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2312, i64 noundef 17), !noalias !113919, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ab:                                            ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val53 = load ptr, ptr %i.dj, align 8, !nonnull !145, !noundef !145
  %.val52 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.dk = getelementptr inbounds nuw i8, ptr %.val53, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !invariant.load !145, !noalias !113920, !nonnull !145
  %i.dm = tail call noundef zeroext i1 %i.dl(ptr noundef nonnull align 1 %.val52, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2313, i64 noundef 21), !noalias !113920, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ac:                                            ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val51 = load ptr, ptr %i.dn, align 8, !nonnull !145, !noundef !145
  %.val50 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.do = getelementptr inbounds nuw i8, ptr %.val51, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !invariant.load !145, !noalias !113921, !nonnull !145
  %i.dq = tail call noundef zeroext i1 %i.dp(ptr noundef nonnull align 1 %.val50, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2314, i64 noundef 3), !noalias !113921, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ad:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val49 = load ptr, ptr %i.dr, align 8, !nonnull !145, !noundef !145
  %.val48 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ds = getelementptr inbounds nuw i8, ptr %.val49, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !invariant.load !145, !noalias !113922, !nonnull !145
  %i.du = tail call noundef zeroext i1 %i.dt(ptr noundef nonnull align 1 %.val48, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2315, i64 noundef 8), !noalias !113922, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ae:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val47 = load ptr, ptr %i.dv, align 8, !nonnull !145, !noundef !145
  %.val46 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.dw = getelementptr inbounds nuw i8, ptr %.val47, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !145, !noalias !113923, !nonnull !145
  %i.dy = tail call noundef zeroext i1 %i.dx(ptr noundef nonnull align 1 %.val46, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2316, i64 noundef 3), !noalias !113923, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.af:                                            ; preds = %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val45 = load ptr, ptr %i.dz, align 8, !nonnull !145, !noundef !145
  %.val44 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ea = getelementptr inbounds nuw i8, ptr %.val45, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !145, !noalias !113924, !nonnull !145
  %i.ec = tail call noundef zeroext i1 %i.eb(ptr noundef nonnull align 1 %.val44, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2317, i64 noundef 4), !noalias !113924, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ag:                                            ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val43 = load ptr, ptr %i.ed, align 8, !nonnull !145, !noundef !145
  %.val42 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ee = getelementptr inbounds nuw i8, ptr %.val43, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !invariant.load !145, !noalias !113925, !nonnull !145
  %i.eg = tail call noundef zeroext i1 %i.ef(ptr noundef nonnull align 1 %.val42, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2318, i64 noundef 9), !noalias !113925, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ah:                                            ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val41 = load ptr, ptr %i.eh, align 8, !nonnull !145, !noundef !145
  %.val40 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ei = getelementptr inbounds nuw i8, ptr %.val41, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !invariant.load !145, !noalias !113926, !nonnull !145
  %i.ek = tail call noundef zeroext i1 %i.ej(ptr noundef nonnull align 1 %.val40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2319, i64 noundef 11), !noalias !113926, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ai:                                            ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val39 = load ptr, ptr %i.el, align 8, !nonnull !145, !noundef !145
  %.val38 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.em = getelementptr inbounds nuw i8, ptr %.val39, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !invariant.load !145, !noalias !113927, !nonnull !145
  %i.eo = tail call noundef zeroext i1 %i.en(ptr noundef nonnull align 1 %.val38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2320, i64 noundef 12), !noalias !113927, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.aj:                                            ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val37 = load ptr, ptr %i.ep, align 8, !nonnull !145, !noundef !145
  %.val36 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.eq = getelementptr inbounds nuw i8, ptr %.val37, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !invariant.load !145, !noalias !113928, !nonnull !145
  %i.es = tail call noundef zeroext i1 %i.er(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2321, i64 noundef 15), !noalias !113928, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ak:                                            ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val35 = load ptr, ptr %i.et, align 8, !nonnull !145, !noundef !145
  %.val34 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.eu = getelementptr inbounds nuw i8, ptr %.val35, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !invariant.load !145, !noalias !113929, !nonnull !145
  %i.ew = tail call noundef zeroext i1 %i.ev(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2322, i64 noundef 14), !noalias !113929, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.al:                                            ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val33 = load ptr, ptr %i.ex, align 8, !nonnull !145, !noundef !145
  %.val32 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ey = getelementptr inbounds nuw i8, ptr %.val33, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !invariant.load !145, !noalias !113930, !nonnull !145
  %i.fa = tail call noundef zeroext i1 %i.ez(ptr noundef nonnull align 1 %.val32, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2323, i64 noundef 20), !noalias !113930, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.am:                                            ; preds = %bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.fb, align 8, !nonnull !145, !noundef !145
  %.val30 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.fc = getelementptr inbounds nuw i8, ptr %.val31, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !invariant.load !145, !noalias !113931, !nonnull !145
  %i.fe = tail call noundef zeroext i1 %i.fd(ptr noundef nonnull align 1 %.val30, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2324, i64 noundef 20), !noalias !113931, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.an:                                            ; preds = %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val29 = load ptr, ptr %i.ff, align 8, !nonnull !145, !noundef !145
  %.val28 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.fg = getelementptr inbounds nuw i8, ptr %.val29, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !invariant.load !145, !noalias !113932, !nonnull !145
  %i.fi = tail call noundef zeroext i1 %i.fh(ptr noundef nonnull align 1 %.val28, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2325, i64 noundef 4), !noalias !113932, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ao:                                            ; preds = %bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val27 = load ptr, ptr %i.fj, align 8, !nonnull !145, !noundef !145
  %.val26 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.fk = getelementptr inbounds nuw i8, ptr %.val27, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !invariant.load !145, !noalias !113933, !nonnull !145
  %i.fm = tail call noundef zeroext i1 %i.fl(ptr noundef nonnull align 1 %.val26, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2326, i64 noundef 25), !noalias !113933, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ap:                                            ; preds = %bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val25 = load ptr, ptr %i.fn, align 8, !nonnull !145, !noundef !145
  %.val24 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.fo = getelementptr inbounds nuw i8, ptr %.val25, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !invariant.load !145, !noalias !113934, !nonnull !145
  %i.fq = tail call noundef zeroext i1 %i.fp(ptr noundef nonnull align 1 %.val24, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2327, i64 noundef 26), !noalias !113934, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.aq:                                            ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val23 = load ptr, ptr %i.fr, align 8, !nonnull !145, !noundef !145
  %.val22 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.fs = getelementptr inbounds nuw i8, ptr %.val23, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !invariant.load !145, !noalias !113935, !nonnull !145
  %i.fu = tail call noundef zeroext i1 %i.ft(ptr noundef nonnull align 1 %.val22, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2328, i64 noundef 18), !noalias !113935, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ar:                                            ; preds = %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val21 = load ptr, ptr %i.fv, align 8, !nonnull !145, !noundef !145
  %.val20 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.fw = getelementptr inbounds nuw i8, ptr %.val21, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !invariant.load !145, !noalias !113936, !nonnull !145
  %i.fy = tail call noundef zeroext i1 %i.fx(ptr noundef nonnull align 1 %.val20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2329, i64 noundef 16), !noalias !113936, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.as:                                            ; preds = %bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val19 = load ptr, ptr %i.fz, align 8, !nonnull !145, !noundef !145
  %.val18 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ga = getelementptr inbounds nuw i8, ptr %.val19, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !invariant.load !145, !noalias !113937, !nonnull !145
  %i.gc = tail call noundef zeroext i1 %i.gb(ptr noundef nonnull align 1 %.val18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2330, i64 noundef 17), !noalias !113937, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.at:                                            ; preds = %bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17 = load ptr, ptr %i.gd, align 8, !nonnull !145, !noundef !145
  %.val16 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ge = getelementptr inbounds nuw i8, ptr %.val17, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !invariant.load !145, !noalias !113938, !nonnull !145
  %i.gg = tail call noundef zeroext i1 %i.gf(ptr noundef nonnull align 1 %.val16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2331, i64 noundef 26), !noalias !113938, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au
  %.sroa.0.0.in = phi i1 [ %i.y, %bb.e ], [ %i.u, %bb.d ], [ %i.gg, %bb.at ], [ %i.gc, %bb.as ], [ %i.fy, %bb.ar ], [ %i.fu, %bb.aq ], [ %i.fq, %bb.ap ], [ %i.fm, %bb.ao ], [ %i.fi, %bb.an ], [ %i.fe, %bb.am ], [ %i.fa, %bb.al ], [ %i.ew, %bb.ak ], [ %i.es, %bb.aj ], [ %i.eo, %bb.ai ], [ %i.ek, %bb.ah ], [ %i.eg, %bb.ag ], [ %i.ec, %bb.af ], [ %i.dy, %bb.ae ], [ %i.du, %bb.ad ], [ %i.gl, %bb.au ], [ %i.gq, %bb.av ], [ %i.gv, %bb.aw ], [ %i.ha, %bb.ax ], [ %i.dq, %bb.ac ], [ %i.hf, %bb.ay ], [ %i.hk, %bb.az ], [ %i.hp, %bb.ba ], [ %i.hu, %bb.bb ], [ %i.dm, %bb.ab ], [ %i.di, %bb.aa ], [ %i.cw, %bb.x ], [ %i.ck, %bb.u ], [ %i.cg, %bb.t ], [ %i.cc, %bb.s ], [ %i.by, %bb.r ], [ %i.bu, %bb.q ], [ %i.bq, %bb.p ], [ %i.bm, %bb.o ], [ %i.bi, %bb.n ], [ %i.be, %bb.m ], [ %i.ba, %bb.l ], [ %i.aw, %bb.k ], [ %i.as, %bb.j ], [ %i.ao, %bb.i ], [ %i.ak, %bb.h ], [ %i.ag, %bb.g ], [ %i.ac, %bb.f ], [ %i.q, %bb.c ]
  ret i1 %.sroa.0.0.in

bb.au:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @2299, ptr %i.g, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.gk, align 8
  %.val14 = load ptr, ptr %1, align 8
  %.val15 = load ptr, ptr %i.co, align 8
  %i.gl = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.val14, ptr %.val15, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.av:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @2297, ptr %i.h, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.gp, align 8
  %.val12 = load ptr, ptr %1, align 8
  %.val13 = load ptr, ptr %i.co, align 8
  %i.gq = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.val12, ptr %.val13, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.aw:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @2302, ptr %i.e, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.gu, align 8
  %.val10 = load ptr, ptr %1, align 8
  %.val11 = load ptr, ptr %i.cs, align 8
  %i.gv = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.val10, ptr %.val11, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ax:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @2300, ptr %i.f, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.gz, align 8
  %.val8 = load ptr, ptr %1, align 8
  %.val9 = load ptr, ptr %i.cs, align 8
  %i.ha = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.val8, ptr %.val9, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ay:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @2307, ptr %i.c, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.he, align 8
  %.val6 = load ptr, ptr %1, align 8
  %.val7 = load ptr, ptr %i.da, align 8
  %i.hf = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.val6, ptr %.val7, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.az:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @2305, ptr %i.d, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.hj, align 8
  %.val4 = load ptr, ptr %1, align 8
  %.val5 = load ptr, ptr %i.da, align 8
  %i.hk = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.val4, ptr %.val5, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.ba:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @2311, ptr %i.a, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ho, align 8
  %.val2 = load ptr, ptr %1, align 8
  %.val3 = load ptr, ptr %i.de, align 8
  %i.hp = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.val2, ptr %.val3, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.bb:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2309, ptr %i.b, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ht, align 8
  %.val = load ptr, ptr %1, align 8
  %.val1 = load ptr, ptr %i.de, align 8
  %i.hu = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.val, ptr %.val1, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..Import$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7f6377594f6f44c6E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #38 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !168, !noundef !145
  %i.b = icmp eq i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !168, !noundef !145
  %i.d = icmp eq i64 %i.c, -9223372036854775808   ; 3 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit.thread": ; preds = %bb.d, %"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit", %bb.a, %bb.e, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.j, %bb.c ], [ %i.u, %bb.e ], [ false, %bb.a ], [ false, %"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit" ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noundef !145
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !noundef !145
  %i.j = icmp eq i32 %i.g, %i.i
  br label %"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit.thread"

bb.d:                                             ; preds = %bb.b
  %i.k = xor i1 %i.d, true
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.l, align 8, !noundef !145 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load i64, ptr %i.m, align 8, !noundef !145
  %.not.i = icmp eq i64 %.val2, %.val4
  br i1 %.not.i, label %"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit", label %"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit.thread"

"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit": ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.n, align 8, !nonnull !145, !noundef !145
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !145, !noundef !145
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val3, i64 %.val2)
  %i.p = icmp eq i32 %bcmp.i, 0
  br i1 %i.p, label %bb.e, label %"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit.thread"

bb.e:                                             ; preds = %"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !167, !noundef !145
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i8, ptr %i.s, align 8, !range !167, !noundef !145
  %i.u = icmp eq i8 %i.r, %i.t
  br label %"_ZN67_$LT$std..ffi..os_str..OsString$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd0fb7033d3e7b35dE.exit.thread"
}

end_hunk_2
begin_hunk_3_@"_ZN76_$LT$nickel_lang_core..package..PackageMap$u20$as$u20$core..fmt..Display$GT$3fmt17h3344f7e786294277E":bb.a
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 16 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !range !153, !noalias !114536, !noundef !145
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i", !prof !154

._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.v, align 8, !noalias !114537
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !114537
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i": ; preds = %bb.a
  %i.z = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !114538 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !114538
  store i8 1, ptr %i.w, align 8, !noalias !114538
  br label %bb.b

.thread409.loopexit:                              ; preds = %.noexc94, %.noexc, %.lr.ph.i.i91
  %lpad.loopexit498 = landingpad { ptr, i32 }
          cleanup
  br label %.thread406

.thread409.loopexit.split-lp.loopexit:            ; preds = %bb.h, %bb.bz
  %lpad.loopexit502 = landingpad { ptr, i32 }
          cleanup
  br label %.thread406

.thread409.loopexit.split-lp.loopexit.split-lp:   ; preds = %bb.i, %bb.j, %bb.l
  %lpad.loopexit.split-lp503 = landingpad { ptr, i32 }
          cleanup
  br label %.thread406

bb.b:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i", %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i
  %.pre-phi629 = phi i64 [ %i.ab, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i" ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.aa, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i" ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ] ; 2 uses
  %i.ad = add i64 %.pre-phi, 1
  store i64 %i.ad, ptr %i.v, align 8, !noalias !114537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  store i64 %.pre-phi, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  store i64 %.pre-phi629, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114539)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !114539, !noalias !114540, !noundef !145 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !114539, !noalias !114540, !nonnull !145, !noundef !145 ; 3 uses
  %.val3.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !114541
  %i.aj = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ca
  %.sroa.0.0556 = phi ptr [ %i.ai, %.lr.ph ], [ %.sroa.0.1397, %bb.ca ] ; 2 uses
  %.sroa.6.0555 = phi ptr [ %i.al, %.lr.ph ], [ %.sroa.6.1, %bb.ca ] ; 2 uses
  %.sroa.8242.0554 = phi i16 [ %i.ak, %.lr.ph ], [ %i.ax, %bb.ca ] ; 2 uses
  %.sroa.10243.0553 = phi i64 [ %i.af, %.lr.ph ], [ %i.ba, %bb.ca ]
  %.not13.i.i = icmp eq i16 %.sroa.8242.0554, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit501

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.ap = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.sroa.6.0555, %bb.c ] ; 2 uses
  %i.aq = phi ptr [ %i.as, %.lr.ph.i.i ], [ %.sroa.0.0556, %bb.c ]
  %.val11.i.i = load <16 x i8>, ptr %i.ap, align 16, !noalias !114542
  %i.ar = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -896 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ar to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit501

.loopexit501:                                     ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.6.1 = phi ptr [ %.sroa.6.0555, %bb.c ], [ %i.at, %.lr.ph.i.i ]
  %.sroa.0.1397 = phi ptr [ %.sroa.0.0556, %bb.c ], [ %i.as, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.8242.0554, %bb.c ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.au = add i16 %.lcssa.i.i, -1
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = and i16 %i.au, %.lcssa.i.i
  %i.ay = sub nsw i64 0, %i.aw
  %i.az = getelementptr inbounds [56 x i8], ptr %.sroa.0.1397, i64 %i.ay ; 5 uses
  %i.ba = add i64 %.sroa.10243.0553, -1           ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -48
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !145, !noundef !145 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -40
  %i.be = load i64, ptr %i.bd, align 8, !noundef !145 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.bc, ptr %i.j, align 8, !noalias !114544
  store i64 %i.be, ptr %i.am, align 8, !noalias !114544
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !114543, !noalias !114545, !noundef !145
  %.val6.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !114543, !noalias !114545, !noundef !145
  %i.bf = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h7f617eca1b66291cE(i64 %.val.i, i64 %.val6.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !noalias !114546 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114547)
  call void @llvm.experimental.noalias.scope.decl(metadata !114548)
  %i.bg = lshr i64 %i.bf, 57
  %i.bh = trunc nuw nsw i64 %i.bg to i8           ; 3 uses
  %i.bi = load i64, ptr %i.an, align 8, !alias.scope !114549, !noalias !114550, !noundef !145 ; 2 uses
  %i.bj = load ptr, ptr %i.u, align 8, !alias.scope !114549, !noalias !114550, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.bh, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.loopexit501
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.loopexit501 ], [ %i.cb, %bb.f ]
  %.pn.i.i = phi i64 [ %i.bf, %.loopexit501 ], [ %i.cc, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.bi     ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !114551 ; 2 uses
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i92, label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ca, %bb.e ], [ %i.bm, %bb.d ] ; 3 uses
  %i.bn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.01.0.i.i.i, %i.bo
  %i.bq = and i64 %i.bp, %i.bi
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [40 x i8], ptr %i.bj, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -40
  %.val3.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !114552, !nonnull !145, !align !163, !noundef !145
  %i.bu = getelementptr i8, ptr %i.bs, i64 -32
  %.val4.i.i.i = load i64, ptr %i.bu, align 8, !noalias !114552, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !114553
  invoke void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val3.i.i.i, i64 noundef %.val4.i.i.i)
          to label %.noexc unwind label %.thread409.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !114553
  invoke void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bc, i64 noundef %i.be)
          to label %.noexc94 unwind label %.thread409.loopexit

.noexc94:                                         ; preds = %.noexc
  %i.bv = invoke fastcc noundef zeroext i1 @"_ZN62_$LT$std..path..Components$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd73b6a885411943fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h)
          to label %.noexc95 unwind label %.thread409.loopexit

.noexc95:                                         ; preds = %.noexc94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !114553
  br i1 %i.bv, label %bb.bx, label %bb.e, !prof !154

._crit_edge.i.i92:                                ; preds = %bb.e, %bb.d
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = icmp eq i16 %i.bx, 0
  br i1 %i.by, label %bb.f, label %bb.g, !prof !147

bb.e:                                             ; preds = %.noexc95
  %i.bz = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ca = and i16 %i.bz, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i92, label %.lr.ph.i.i91

bb.f:                                             ; preds = %._crit_edge.i.i92
  %i.cb = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.cc = add i64 %.sroa.01.0.i.i.i, %i.cb
  br label %bb.d

bb.g:                                             ; preds = %._crit_edge.i.i92
  %i.cd = load i64, ptr %i.ao, align 8, !alias.scope !114554, !noalias !114555, !noundef !145
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %.noexc96, !prof !147

bb.h:                                             ; preds = %bb.g
  %i.cf = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h853138571138eff3E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx, i1 noundef zeroext true)
          to label %.noexc96 unwind label %.thread409.loopexit.split-lp.loopexit ; 0 uses

._crit_edge:                                      ; preds = %bb.ca, %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !145 ; 8 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val71 = load ptr, ptr %i.cj, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %.val70 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val71, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !145, !noalias !114556, !nonnull !145
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 1 %.val70, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2618, i64 noundef 26)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit unwind label %.thread409.loopexit.split-lp.loopexit.split-lp, !inline_history !363

bb.j:                                             ; preds = %._crit_edge
  %.val68 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.cn, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val69, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !invariant.load !145, !noalias !114557, !nonnull !145
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2619, i64 noundef 24)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit105 unwind label %.thread409.loopexit.split-lp.loopexit.split-lp, !inline_history !363

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  br i1 %i.cm, label %.critedge58, label %"_ZN4core3ptr134drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$nickel_lang_parser..identifier..Ident$C$$RF$std..path..PathBuf$RP$$GT$$GT$17h7a6b6717b330b032E.exit134"

"_ZN4core3ptr134drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$nickel_lang_parser..identifier..Ident$C$$RF$std..path..PathBuf$RP$$GT$$GT$17h7a6b6717b330b032E.exit134": ; preds = %._crit_edge560, %bb.u, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.val65 = phi ptr [ %.val69, %._crit_edge560 ], [ %.val69, %bb.u ], [ %.val71, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ] ; 4 uses
  %.val64 = phi ptr [ %.val68, %._crit_edge560 ], [ %.val68, %bb.u ], [ %.val70, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.0394.0.copyload = load ptr, ptr %i.u, align 8, !nonnull !145, !noundef !145 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.3395.0.copyload = load i64, ptr %.sroa.3395.0..sroa_idx, align 8 ; 4 uses
  %.val3.i.i.i106 = load <16 x i8>, ptr %.sroa.0394.0.copyload, align 16, !noalias !114558
  %i.cr = icmp eq i64 %.sroa.2.0.copyload, 0      ; 4 uses
  br i1 %i.cr, label %bb.v, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %"_ZN4core3ptr134drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$nickel_lang_parser..identifier..Ident$C$$RF$std..path..PathBuf$RP$$GT$$GT$17h7a6b6717b330b032E.exit134"
  %i.cs = mul i64 %.sroa.2.0.copyload, 40         ; 2 uses
  %i.ct = add i64 %i.cs, 40
  %i.cu = icmp ult i64 %i.ct, -15
  call void @llvm.assume(i1 %i.cu)
  %i.cv = and i64 %i.cs, -16                      ; 2 uses
  %i.cw = add i64 %i.cv, 48                       ; 2 uses
  %i.cx = add i64 %.sroa.2.0.copyload, 17
  %i.cy = add i64 %i.cx, %i.cw                    ; 3 uses
  %i.cz = icmp uge i64 %i.cy, %i.cw
  call void @llvm.assume(i1 %i.cz)
  %i.da = icmp ult i64 %i.cy, 9223372036854775793
  call void @llvm.assume(i1 %i.da)
  %i.db = sub i64 -48, %i.cv
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0394.0.copyload, i64 %i.db
  br label %bb.v

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit105: ; preds = %bb.j
  br i1 %i.cq, label %.critedge58, label %bb.k

bb.k:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit105
  call void @llvm.experimental.noalias.scope.decl(metadata !114559)
  %i.dd = load ptr, ptr %0, align 8, !alias.scope !114559, !noalias !114560, !nonnull !145, !noundef !145 ; 4 uses
  %.val3.i.i110 = load <16 x i8>, ptr %i.dd, align 16, !noalias !114561
  %i.de = icmp sgt <16 x i8> %.val3.i.i110, splat (i8 -1)
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dg = bitcast <16 x i1> %i.de to i16          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !114562
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %i.dh = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.df, %bb.k ] ; 2 uses
  %i.di = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dd, %bb.k ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dh, align 16, !noalias !114563
  %i.dj = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -512 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.dj to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.k
  %.sroa.5.0.i.i = phi ptr [ %i.df, %bb.k ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i = phi ptr [ %i.dd, %bb.k ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.dg, %bb.k ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.dm = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = and i16 %i.dm, %.lcssa.i.i.i.i.i.i.i
  %i.dq = sub nsw i64 0, %i.do
  %i.dr = getelementptr inbounds [32 x i8], ptr %.sroa.01.0.copyload.i.i.i.i, i64 %i.dq ; 2 uses
  %i.ds = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -32
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 -24
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ch, i64 4) ; 3 uses
  %i.dv = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 3 uses
  %i.dw = icmp ugt i64 %i.ch, 1152921504606846975
  %i.dx = icmp ugt i64 %i.dv, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.dw, %i.dx
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !114564
  %i.dy = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dv, i64 noundef range(i64 1, 9) 8) #83, !noalias !114564 ; 6 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.l, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i"

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %._crit_edge20.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %._crit_edge20.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc116 unwind label %.thread409.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.l
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store ptr %i.dt, ptr %i.dy, align 8, !noalias !114562
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.du, ptr %i.ea, align 8, !noalias !114562
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.g, align 8, !noalias !114562
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.dy, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !114562
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !114562
  call void @llvm.experimental.noalias.scope.decl(metadata !114565)
  call void @llvm.experimental.noalias.scope.decl(metadata !114566)
  %i.eb = icmp eq i64 %i.ds, 0
  br i1 %i.eb, label %.thread420, label %.lr.ph.i.i.i.i.i.i

.thread420:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114562
  br label %.lr.ph559

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i", %.noexc.i.i.i.i
  %i.ec = phi ptr [ %i.ew, %.noexc.i.i.i.i ], [ %i.dy, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ]
  %i.ed = phi i64 [ %i.ez, %.noexc.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 6 uses
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %i.ee = phi i16 [ %i.en, %.noexc.i.i.i.i ], [ %i.dp, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.val510.i.i.i.i.i.i = phi i64 [ %i.eq, %.noexc.i.i.i.i ], [ %i.ds, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i89.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i7.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ee, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ef = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.eg = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ef, align 16, !noalias !114567
  %i.eh = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -512 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.eh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i7.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ee, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ek = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.el = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = and i16 %i.ek, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.eo = sub nsw i64 0, %i.em
  %i.ep = getelementptr inbounds [32 x i8], ptr %.pre.i.i.i7.i.i.i.i.i.i, i64 %i.eo ; 2 uses
  %i.eq = add i64 %.val510.i.i.i.i.i.i, -1        ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 -32
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 -24
  %i.et = icmp samesign ult i64 %i.ed, 576460752303423488
  call void @llvm.assume(i1 %i.et)
  %i.eu = load i64, ptr %i.g, align 8, !range !146, !alias.scope !114568, !noalias !114569, !noundef !145
  %i.ev = icmp eq i64 %i.ed, %i.eu
  br i1 %i.ev, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i", label %.noexc.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ed, i64 noundef range(i64 1, 0) %.val510.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i" unwind label %bb.m, !noalias !114562

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !114568, !noalias !114569
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.ew = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i" ], [ %i.ec, %._crit_edge20.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.ed ; 2 uses
  store ptr %i.er, ptr %i.ex, align 8, !noalias !114570
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.es, ptr %i.ey, align 8, !noalias !114570
  %i.ez = add nuw nsw i64 %i.ed, 1                ; 2 uses
  store i64 %i.ez, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !114568, !noalias !114569
  %i.fa = icmp eq i64 %i.eq, 0
  br i1 %i.fa, label %bb.o, label %.lr.ph.i.i.i.i.i.i

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i"
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !114562 ; 2 uses
  %i.fc = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fc, label %.thread406, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !114562, !nonnull !145, !noundef !145
  %i.fd = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !114562
  br label %.thread406

bb.o:                                             ; preds = %.noexc.i.i.i.i
  %.sroa.0268.0.copyload269 = load i64, ptr %i.g, align 8, !noalias !114571 ; 4 uses
  %.sroa.7270.0.copyload272 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !114571 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114562
end_hunk_3
begin_hunk_4_@"_ZN78_$LT$Iter$u20$as$u20$nickel_lang_core..eval..operation..MapValuesClosurize$GT$20map_values_closurize17hbbce00b2822936c3E":bb.a
.lr.ph322:                                        ; preds = %bb.by, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit7.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.i.i.i321 = phi i64 [ %i.id, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit7.i.i.i.i.i.i.i" ], [ %i.ic, %bb.by ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [72 x i8], ptr %i.hx, i64 %.sroa.0.1.i.i.i.i.i.i.i321
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h7982ac6aa15750d5E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ih) #84
          to label %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit7.i.i.i.i.i.i.i" unwind label %bb.bz, !noalias !115306, !inline_history !51

bb.bz:                                            ; preds = %.lr.ph322
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !115306, !inline_history !52
  unreachable

.body.i.i.i.i.i.i:                                ; preds = %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit7.i.i.i.i.i.i.i", %bb.by
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !range !146, !alias.scope !115303, !noalias !115305, !noundef !145 ; 2 uses
  %i.ij = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.ij, label %.body.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ik = mul nuw i64 %.val2.i.i.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hx, i64 noundef %i.ik, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !115306, !inline_history !285
  br label %.body.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb86f1054c288a6dE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr142drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h81998bad0aec1052E.exit.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !range !146, !alias.scope !115303, !noalias !115305, !noundef !145 ; 2 uses
  %i.il = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.il, label %.body.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb86f1054c288a6dE.exit.i.i.i.i.i.i"
  %i.im = mul nuw i64 %.val.i.i.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hx, i64 noundef %i.im, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !115306, !inline_history !285
  br label %.body.i.i.i

bb.cc:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.cc, %bb.ca, %.body.i.i.i.i.i.i
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !115213
  unreachable

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i.i.i.i.i.i.i"
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc07e1726eb022ea2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ac)
          to label %.body.i.i.i unwind label %bb.cc, !noalias !115307

.body.i.i.i:                                      ; preds = %.thread.i.i.i.i.i.i, %bb.cb, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb86f1054c288a6dE.exit.i.i.i.i.i.i"
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body6.i.i.i.i.i.i, %bb.cb ], [ %i.io, %.thread.i.i.i.i.i.i ], [ %eh.lpad-body6.i.i.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb86f1054c288a6dE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ip = load ptr, ptr %i.ad, align 8, !noalias !115211, !align !149, !noundef !145 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i, label %.body.thread.i.i.i, label %bb.ck

bb.cd:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1de5326a319c2995E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !115218
  %.sroa.0.0.copyload160.i.i.i = load i64, ptr %i.ab, align 8, !noalias !115308 ; 5 uses
  %.sroa.6.0.copyload162.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !115308 ; 6 uses
  %.sroa.7.0.copyload164.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !115308 ; 5 uses
  %.sroa.8.0.copyload166.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !115308 ; 3 uses
  %.sroa.9.0..sroa_idx167.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.9.0.copyload168.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx167.i.i.i, align 8, !noalias !115308 ; 5 uses
  %.sroa.10.0..sroa_idx169.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx169.i.i.i, i64 32, i1 false), !noalias !115308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !115213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !115211
  %i.iq = load ptr, ptr %i.ad, align 8, !noalias !115211, !align !149, !noundef !145 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.not.i.i.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.sroa.8173.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8173.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i, i64 32, i1 false), !noalias !115309
  store i64 %.sroa.0.0.copyload160.i.i.i, ptr %0, align 8, !alias.scope !115310, !noalias !115309
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload162.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !115310, !noalias !115309
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.copyload164.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !115310, !noalias !115309
  %.sroa.6171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload166.i.i.i, ptr %.sroa.6171.0..sroa_idx.i.i.i, align 8, !alias.scope !115310, !noalias !115309
  %.sroa.7172.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0.copyload168.i.i.i, ptr %.sroa.7172.0..sroa_idx.i.i.i, align 8, !alias.scope !115310, !noalias !115309
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h73926e051d22cf00E.exit

bb.cf:                                            ; preds = %bb.cd
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iq, ptr %i.ir, align 8, !alias.scope !115311, !noalias !115312
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !115311, !noalias !115312
  %i.is = icmp eq i64 %.sroa.9.0.copyload168.i.i.i, 0
  br i1 %i.is, label %"_ZN4core3ptr142drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h81998bad0aec1052E.exit.i.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload166.i.i.i) ]
  %i.it = shl i64 %.sroa.9.0.copyload168.i.i.i, 3
  %i.iu = icmp slt i64 %.sroa.9.0.copyload168.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.iu), !noalias !115313
  %i.iv = and i64 %i.it, -16                      ; 2 uses
  %i.iw = add i64 %i.iv, 16                       ; 2 uses
  %i.ix = add nsw i64 %.sroa.9.0.copyload168.i.i.i, 17
  %i.iy = add i64 %i.ix, %i.iw                    ; 3 uses
  %i.iz = icmp uge i64 %i.iy, %i.iw
  call void @llvm.assume(i1 %i.iz), !noalias !115313
  %i.ja = icmp ult i64 %i.iy, 9223372036854775793
  call void @llvm.assume(i1 %i.ja), !noalias !115313
  %i.jb = sub nuw nsw i64 -16, %i.iv
  %i.jc = getelementptr inbounds i8, ptr %.sroa.8.0.copyload166.i.i.i, i64 %i.jb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jc, i64 noundef %i.iy, i64 noundef range(i64 1, -9223372036854775807) 16) #83, !noalias !115314, !inline_history !245
  br label %"_ZN4core3ptr142drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h81998bad0aec1052E.exit.i.i.i.i"

"_ZN4core3ptr142drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h81998bad0aec1052E.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i.i, %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload162.i.i.i) ]
  %i.jd = icmp eq i64 %.sroa.7.0.copyload164.i.i.i, 0
  br i1 %i.jd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb86f1054c288a6dE.exit.i.i.i.i", label %.lr.ph324

"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit.i.i.i.i.i": ; preds = %.lr.ph324
  %i.je = icmp eq i64 %i.jg, %.sroa.7.0.copyload164.i.i.i
  br i1 %i.je, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb86f1054c288a6dE.exit.i.i.i.i", label %.lr.ph324

.lr.ph324:                                        ; preds = %"_ZN4core3ptr142drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h81998bad0aec1052E.exit.i.i.i.i", %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i323 = phi i64 [ %i.jg, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr142drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h81998bad0aec1052E.exit.i.i.i.i" ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [72 x i8], ptr %.sroa.6.0.copyload162.i.i.i, i64 %.sroa.0.0.i.i.i.i.i323
  %i.jg = add i64 %.sroa.0.0.i.i.i.i.i323, 1      ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h7982ac6aa15750d5E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.jf) #84
          to label %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit.i.i.i.i.i" unwind label %bb.cg, !noalias !115315, !inline_history !51

"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit7.i.i.i.i.i": ; preds = %.lr.ph326
  %i.jh = add i64 %.sroa.0.1.i.i.i.i.i325, 1      ; 2 uses
  %i.ji = icmp eq i64 %i.jh, %.sroa.7.0.copyload164.i.i.i
  br i1 %i.ji, label %.body.i.i.i.i, label %.lr.ph326

bb.cg:                                            ; preds = %.lr.ph324
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jk = icmp eq i64 %i.jg, %.sroa.7.0.copyload164.i.i.i
  br i1 %i.jk, label %.body.i.i.i.i, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.cg, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit7.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.i325 = phi i64 [ %i.jh, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit7.i.i.i.i.i" ], [ %i.jg, %bb.cg ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [72 x i8], ptr %.sroa.6.0.copyload162.i.i.i, i64 %.sroa.0.1.i.i.i.i.i325
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h7982ac6aa15750d5E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.jl) #84
          to label %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit7.i.i.i.i.i" unwind label %bb.ch, !noalias !115315, !inline_history !51

bb.ch:                                            ; preds = %.lr.ph326
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !115315, !inline_history !52
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit7.i.i.i.i.i", %bb.cg
  %i.jn = icmp eq i64 %.sroa.0.0.copyload160.i.i.i, 0
  br i1 %i.jn, label %.body.thread.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.body.i.i.i.i
  %i.jo = mul nuw i64 %.sroa.0.0.copyload160.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload162.i.i.i, i64 noundef %i.jo, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !115315, !inline_history !285
  br label %.body.thread.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb86f1054c288a6dE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h90a6aa362e444694E.exit.i.i.i.i.i", %"_ZN4core3ptr142drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h81998bad0aec1052E.exit.i.i.i.i"
  %i.jp = icmp eq i64 %.sroa.0.0.copyload160.i.i.i, 0
  br i1 %i.jp, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73926e051d22cf00E.exit, label %bb.cj

bb.cj:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb86f1054c288a6dE.exit.i.i.i.i"
  %i.jq = mul nuw i64 %.sroa.0.0.copyload160.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload162.i.i.i, i64 noundef %i.jq, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !115315, !inline_history !285
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h73926e051d22cf00E.exit

.body.thread.i.i.i:                               ; preds = %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h34fa66332857a944E.exit.i.i", %bb.ci, %.body.i.i.i.i, %.body.i.i.i
  %.pn11.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %.pn.i.i.i, %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h34fa66332857a944E.exit.i.i" ], [ %i.jj, %.body.i.i.i.i ], [ %i.jj, %bb.ci ]
  resume { ptr, i32 } %.pn11.i.i.i

bb.ck:                                            ; preds = %.body.i.i.i
  invoke void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17he0b159e82c9c0ee1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(384) %i.ip)
          to label %"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h34fa66332857a944E.exit.i.i" unwind label %.body.i.i, !noalias !115211

.body.i.i:                                        ; preds = %bb.ck
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ip, i64 noundef 384, i64 noundef 8) #83, !noalias !115211
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !115211
  unreachable

"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17h34fa66332857a944E.exit.i.i": ; preds = %bb.ck
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ip, i64 noundef 384, i64 noundef 8) #83, !noalias !115211
  br label %.body.thread.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h73926e051d22cf00E.exit: ; preds = %bb.ce, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb86f1054c288a6dE.exit.i.i.i.i", %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !115211
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN78_$LT$arraydeque..error..CapacityError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h89e7a70055d23135E"(ptr noalias readonly align 4 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2667, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf87abc5486febb18E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !145, !noundef !145
  %.val = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115318
  store ptr @2669, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !115318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$nickel_lang_core..cache..FileCloseError$u20$as$u20$core..fmt..Display$GT$3fmt17hdd777c1d5f682616E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !153, !noundef !145
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !145, !noundef !145
  %.val2 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !145, !noalias !145, !nonnull !145 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2671, i64 noundef 54), !noalias !115323, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2670, i64 noundef 57), !noalias !115324, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$nickel_lang_core..program..BuilderError$u20$as$u20$core..fmt..Display$GT$3fmt17ha49be28445c836c7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = load i64, ptr %0, align 8, !range !200, !noundef !145 ; 2 uses
  %.not = icmp eq i64 %i.e, -9223372036854775807
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8
  %.not8 = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not8, label %bb.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit16

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.g, align 8, !nonnull !145, !noundef !145
  %.val10 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.h = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !145, !noalias !115329, !nonnull !145
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @337, i64 noundef 43), !noalias !115329, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit16, %bb.d
  %.sroa.0.0.in = phi i1 [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit16 ], [ %i.s, %bb.d ], [ %i.j, %bb.c ]
  ret i1 %.sroa.0.0.in

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit16: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !145, !noundef !145
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !145
  store ptr %i.l, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.n, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.43.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.p, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3504185061003363E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.q, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115330
  store ptr @2672, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val9, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !115330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.b
  %i.s = tail call noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN78_$LT$nickel_lang_core..serialize..ExportFormat$u20$as$u20$core..fmt..Debug$GT$3fmt17hc90b698d52c95838E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !167, !noundef !145 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN78_$LT$nickel_lang_core..serialize..ExportFormat$u20$as$u20$core..fmt..Debug$GT$3fmt17hc90b698d52c95838E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN78_$LT$nickel_lang_core..serialize..ExportFormat$u20$as$u20$core..fmt..Debug$GT$3fmt17hc90b698d52c95838E.5904", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_core..term..AnnotatedData$u20$as$u20$core..cmp..PartialEq$GT$2eq17hebc1ad32d1ebf638E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !noundef !145 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115360)
  %i.e = load i64, ptr %i.b, align 8, !range !148, !alias.scope !115359, !noalias !115360, !noundef !145
  %.not.i = icmp eq i64 %i.e, 18
  %i.f = load i64, ptr %i.d, align 8, !range !148, !alias.scope !115360, !noalias !115359, !noundef !145
  %i.g = icmp eq i64 %i.f, 18                     ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread", label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.k, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115362)
  %i.h = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6adac61bdb47acc9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.d), !inline_history !115337
  br i1 %i.h, label %bb.e, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115364)
  %i.k = load i32, ptr %i.i, align 8, !range !186, !alias.scope !115365, !noalias !115366, !noundef !145 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !range !186, !alias.scope !115366, !noalias !115365, !noundef !145
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

bb.f:                                             ; preds = %bb.e
  switch i32 %i.k, label %default.unreachable [
    i32 0, label %bb.g
    i32 1, label %bb.i
    i32 2, label %"_ZN76_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6e71b39f0655fc20E.exit.i"
  ]

default.unreachable:                              ; preds = %bb.n, %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !115365, !noalias !115366, !noundef !145
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !115366, !noalias !115365, !noundef !145
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.h, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.t = load i32, ptr %i.s, align 8, !alias.scope !115365, !noalias !115366, !noundef !145
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !115366, !noalias !115365, !noundef !145
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit", label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !115365, !noalias !115366, !noundef !145
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !115366, !noalias !115365, !noundef !145
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.j, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !115365, !noalias !115366, !noundef !145
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !115366, !noalias !115365, !noundef !145
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %.split, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

.split:                                           ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !115365, !noalias !115366, !noundef !145
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !115366, !noalias !115365, !noundef !145
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %"_ZN76_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6e71b39f0655fc20E.exit.i", label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit": ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !115365, !noalias !115366, !noundef !145
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !115366, !noalias !115365, !noundef !145
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %"_ZN76_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6e71b39f0655fc20E.exit.i", label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

"_ZN76_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6e71b39f0655fc20E.exit.i": ; preds = %bb.f, %"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit", %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.at = tail call fastcc noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..label..Label$u20$as$u20$core..cmp..PartialEq$GT$2eq17h14e28397bd642f07E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.as), !inline_history !115341
  br i1 %i.at, label %bb.k, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

bb.k:                                             ; preds = %"_ZN76_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6e71b39f0655fc20E.exit.i", %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115368)
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !115369, !noalias !115370, !nonnull !145, !noundef !145
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !115369, !noalias !115370, !noundef !145 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !115370, !noalias !115369, !nonnull !145, !noundef !145
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !115370, !noalias !115369, !noundef !145
  %.not.i1 = icmp eq i64 %i.ax, %i.bb
  br i1 %.not.i1, label %.preheader.split, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

.preheader.split:                                 ; preds = %bb.k
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit", label %.lr.ph

bb.l:                                             ; preds = %"_ZN76_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6e71b39f0655fc20E.exit.i3"
  %i.bc = add nuw i64 %.sroa.01.0.i19, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.ax
  br i1 %exitcond.not, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split, %bb.l
  %.sroa.01.0.i19 = phi i64 [ %i.bc, %bb.l ], [ 0, %.preheader.split ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [256 x i8], ptr %i.av, i64 %.sroa.01.0.i19 ; 9 uses
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %i.az, i64 %.sroa.01.0.i19 ; 9 uses
  %i.bf = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6adac61bdb47acc9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.be), !noalias !115371, !inline_history !115345
  br i1 %i.bf, label %bb.m, label %"_ZN79_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7c9826ac93c61573E.exit.thread"

bb.m:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115372)
end_hunk_4
begin_hunk_5_@"_ZN80_$LT$nickel_lang_core..error..TypecheckErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17h698d3848e8ae04a5E":bb.a
    i8 16, label %bb.r
    i8 17, label %bb.s
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.t, ptr %i.r, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2499, i64 noundef 17, ptr noundef nonnull align 1 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1647)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.q, align 8
  %i.aa = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17hdf1a0dbaab5abae2E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2742, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1954, i64 noundef 2, ptr noundef nonnull align 1 %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1892, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2347, i64 noundef 4, ptr noundef nonnull align 1 %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2740, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ad, ptr %i.p, align 8
  %i.ae = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2744, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ai, ptr %i.o, align 8
  %i.aj = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2745, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1954, i64 noundef 2, ptr noundef nonnull align 1 %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1892, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.t

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.am, ptr %i.n, align 8
  %i.an = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2746, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ar, ptr %i.m, align 8
  %i.as = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2748, i64 noundef 28, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2347, i64 noundef 4, ptr noundef nonnull align 1 %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2747, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2749, i64 noundef 4, ptr noundef nonnull align 1 %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2750, i64 noundef 14, ptr noundef nonnull align 1 %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.at, ptr %i.l, align 8
  %i.au = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2751, i64 noundef 19, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1647)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ax, ptr %i.k, align 8
  %i.ay = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2752, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bd, ptr %i.j, align 8
  %i.be = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17hdf1a0dbaab5abae2E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2754, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1954, i64 noundef 2, ptr noundef nonnull align 1 %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1892, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2424, i64 noundef 5, ptr noundef nonnull align 1 %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2753, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bj, ptr %i.i, align 8
  %i.bk = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17hdf1a0dbaab5abae2E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2756, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1954, i64 noundef 2, ptr noundef nonnull align 1 %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1892, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2424, i64 noundef 5, ptr noundef nonnull align 1 %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2755, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.t

bb.l:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bo, ptr %i.h, align 8
  %i.bp = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2758, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1811, i64 noundef 3, ptr noundef nonnull align 1 %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2757, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bt, ptr %i.g, align 8
  %i.bu = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2760, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1811, i64 noundef 3, ptr noundef nonnull align 1 %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2759, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bz, ptr %i.f, align 8
  %i.ca = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17hdf1a0dbaab5abae2E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2761, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2743, i64 noundef 8, ptr noundef nonnull align 1 %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2762, i64 noundef 9, ptr noundef nonnull align 1 %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1939, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2424, i64 noundef 5, ptr noundef nonnull align 1 %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2753, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.cc, ptr %i.e, align 8
  %i.cd = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2764, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @718, i64 noundef 8, ptr noundef nonnull align 1 %i.cb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2763, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2765, i64 noundef 8, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.p:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cf, ptr %i.d, align 8
  %i.cg = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2766, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2767, i64 noundef 8, ptr noundef nonnull align 1 %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1892, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.t

bb.q:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.cj, ptr %i.c, align 8
  %i.ck = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2768, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2769, i64 noundef 5, ptr noundef nonnull align 1 %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2770, i64 noundef 5, ptr noundef nonnull align 1 %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2741, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cm, ptr %i.b, align 8
  %i.cn = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2771, i64 noundef 21, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2772, i64 noundef 3, ptr noundef nonnull align 1 %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1892, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1808, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1806)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.a, align 8
  %i.cp = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1927, i64 noundef 11, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2773)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.u, %bb.b ], [ %i.aa, %bb.c ], [ %i.ae, %bb.d ], [ %i.aj, %bb.e ], [ %i.an, %bb.f ], [ %i.as, %bb.g ], [ %i.au, %bb.h ], [ %i.ay, %bb.i ], [ %i.be, %bb.j ], [ %i.bk, %bb.k ], [ %i.bp, %bb.l ], [ %i.bu, %bb.m ], [ %i.ca, %bb.n ], [ %i.cd, %bb.o ], [ %i.cg, %bb.p ], [ %i.ck, %bb.q ], [ %i.cn, %bb.r ], [ %i.cp, %bb.s ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$nickel_lang_core..serialize..ExportFormat$u20$as$u20$core..fmt..Display$GT$3fmt17he75337eeb9f7329cE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !167, !noundef !145
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.b, align 8, !nonnull !145, !noundef !145
  %.val8 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val9, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !145, !noalias !145, !nonnull !145 ; 5 uses
  switch i8 %i.a, label %default.unreachable54 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable54:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @995, i64 noundef 4), !noalias !116105, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @53, i64 noundef 4), !noalias !116106, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @54, i64 noundef 4), !noalias !116107, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2776, i64 noundef 14), !noalias !116108, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @55, i64 noundef 4), !noalias !116109, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN80_$LT$nickel_lang_core..term..record..RecordAttrs$u20$as$u20$core..fmt..Debug$GT$3fmt17hb3123394928e66faE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2777, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2635, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1780, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2778, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1850)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN80_$LT$nickel_lang_core..typecheck..UnifEnumRows$u20$as$u20$core..clone..Clone$GT$5clone17h19f0b909a3828e5cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !159, !noundef !145 ; 6 uses
  %i.c = icmp samesign ugt i32 %i.b, 5
  %i.d = zext nneg i32 %i.b to i64
  %i.e = add nsw i64 %i.d, -5
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.g = icmp ne i32 %i.b, 4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i32 %i.b, -3
  %i.i = icmp samesign ugt i32 %i.b, 2
  %narrow.i = select i1 %i.i, i32 %i.h, i32 1
  switch i32 %narrow.i, label %bb.d [
    i32 0, label %"_ZN91_$LT$nickel_lang_parser..typ..EnumRowsF$LT$Ty$C$ERows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab339dfdd4673e0E.exit"
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load ptr, ptr %1, align 8, !alias.scope !116113, !noalias !116114, !align !149, !noundef !145
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.l, i64 20, i1 false), !noalias !145
  br label %"_ZN91_$LT$nickel_lang_parser..typ..EnumRowsF$LT$Ty$C$ERows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab339dfdd4673e0E.exit"

bb.g:                                             ; preds = %bb.e
  %i.m = tail call fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h58e2e0a5d09563fbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !116114, !inline_history !116115
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.m, %bb.g ], [ null, %bb.e ] ; 2 uses
  %i.n = invoke fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h326f31a82f993e1cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.j unwind label %bb.i, !noalias !116114, !inline_history !116115

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$nickel_lang_parser..typ..EnumRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17h62728ed761cdba13E"(ptr %.sroa.0.0.i) #86
          to label %bb.l unwind label %bb.k, !noalias !116114, !inline_history !116115

bb.j:                                             ; preds = %bb.h
  %i.p = ptrtoint ptr %.sroa.0.0.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.48.0..sroa_idx, i64 16, i1 false)
  br label %"_ZN91_$LT$nickel_lang_parser..typ..EnumRowsF$LT$Ty$C$ERows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab339dfdd4673e0E.exit"

bb.k:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !116114, !inline_history !116115
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.o

"_ZN91_$LT$nickel_lang_parser..typ..EnumRowsF$LT$Ty$C$ERows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab339dfdd4673e0E.exit": ; preds = %bb.c, %bb.f, %bb.j
  %.sroa.7.0 = phi ptr [ undef, %bb.f ], [ %i.n, %bb.j ], [ undef, %bb.c ]
  %.sroa.4.0 = phi i32 [ 5, %bb.f ], [ %i.b, %bb.j ], [ 3, %bb.c ]
  %.sroa.0.0 = phi i64 [ undef, %bb.f ], [ %i.p, %bb.j ], [ undef, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6, i64 20, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load <2 x i16>, ptr %i.r, align 8
  store <2 x i16> %i.t, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %"_ZN91_$LT$nickel_lang_parser..typ..EnumRowsF$LT$Ty$C$ERows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab339dfdd4673e0E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN80_$LT$nickel_lang_core..typecheck..error..RowKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hc208d1b8e972057cE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !153, !noundef !145
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 4, i64 6
  %.1 = select i1 %i.b, ptr @268, ptr @272
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN80_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$core..clone..Clone$GT$5clone17hb57ff880ad338284E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.4.i = alloca [96 x i8], align 8          ; 5 uses
  %.sroa.7.i = alloca [48 x i8], align 8          ; 2 uses
  %i.c = alloca [120 x i8], align 8               ; 8 uses
  %.sroa.22 = alloca [23 x i8], align 1           ; 19 uses
  %.sroa.5.sroa.0 = alloca [12 x i8], align 4     ; 4 uses
  %.sroa.0 = alloca [120 x i8], align 8           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !145, !align !149, !noundef !145
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.g = load i64, ptr %i.f, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116122)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !116122, !noalias !116123, !align !163, !noundef !145 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !116122, !noalias !116123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !116124
  %i.l = load i64, ptr %1, align 8, !range !148, !alias.scope !116122, !noalias !116123, !noundef !145
  %.not11.i = icmp eq i64 %i.l, 18
  br i1 %.not11.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !116124
  call fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e6751ae9cf57e40E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1), !noalias !116123
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.4.88..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.88..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !116123
end_hunk_5
begin_hunk_6_@"_ZN81_$LT$nickel_lang_core..error..ExportErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6def1f06d6e59e31E":bb.a
  %i.f = load i64, ptr %1, align 8, !range !166, !noundef !145 ; 4 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775803
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, 9223372036854775807
  %i.i = icmp ugt i64 %i.f, -9223372036854775808
  %i.j = select i1 %i.i, i64 %i.h, i64 4
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
  ]

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit": ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcb89f23df902ace9E.exit.i", %.split.i, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.d, %bb.a, %bb.l, %bb.i, %bb.g, %bb.f, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.am, %bb.l ], [ false, %bb.a ], [ %i.s, %bb.e ], [ %i.v, %bb.f ], [ %i.y, %bb.g ], [ false, %bb.j ], [ false, %bb.d ], [ %i.ae, %bb.i ], [ false, %bb.h ], [ %i.aj, %bb.k ], [ false, %.split.i ], [ %i.bx, %bb.u ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcb89f23df902ace9E.exit.i" ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.q ], [ false, %bb.s ], [ %i.bs, %bb.t ], [ false, %bb.p ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !167, !noundef !145
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !167, !noundef !145
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %bb.l, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = tail call noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha722721ec038c411E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = tail call noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha722721ec038c411E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = tail call noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha722721ec038c411E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.h:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = tail call noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha722721ec038c411E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br i1 %i.ab, label %bb.m, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.i:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = tail call noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha722721ec038c411E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.j:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i64, ptr %i.af, align 8, !noundef !145 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4 = load i64, ptr %i.ag, align 8, !noundef !145
  %.not.i.i = icmp eq i64 %.val2, %.val4
  br i1 %.not.i.i, label %bb.k, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load ptr, ptr %i.ah, align 8, !nonnull !145, !noundef !145
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.ai, align 8, !nonnull !145, !noundef !145
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val3, i64 %.val2), !alias.scope !116181
  %i.aj = icmp eq i32 %bcmp.i.i, 0
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.l:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = tail call noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha722721ec038c411E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.m:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116183)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i8, ptr %i.an, align 8, !range !153, !alias.scope !116182, !noalias !116183, !noundef !145
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !range !153, !alias.scope !116183, !noalias !116182, !noundef !145
  %i.ar = icmp eq i8 %i.ao, %i.aq
  br i1 %i.ar, label %bb.n, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.n:                                             ; preds = %bb.m
  %i.as = icmp ne i64 %i.a, -9223372036854775808  ; 2 uses
  %i.at = icmp eq i64 %i.f, -9223372036854775808  ; 3 uses
  %not..i = xor i1 %i.at, true
  %i.au = xor i1 %i.as, %i.at
  br i1 %i.au, label %bb.o, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.o:                                             ; preds = %bb.n
  br i1 %i.as, label %bb.p, label %.split.i

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val11.i = load i64, ptr %i.av, align 8, !alias.scope !116182, !noalias !116183, !noundef !145 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13.i = load i64, ptr %i.aw, align 8, !alias.scope !116183, !noalias !116182, !noundef !145
  %.not.i.i.i = icmp eq i64 %.val11.i, %.val13.i
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcb89f23df902ace9E.exit.i", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

.split.i:                                         ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.at)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !116182, !noalias !116183, !noundef !145
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !116183, !noalias !116182, !noundef !145
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.q, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcb89f23df902ace9E.exit.i": ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.i = load ptr, ptr %i.bc, align 8, !alias.scope !116183, !noalias !116182, !nonnull !145, !noundef !145
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i = load ptr, ptr %i.bd, align 8, !alias.scope !116182, !noalias !116183, !nonnull !145, !noundef !145
  %i.be = shl nuw nsw i64 %.val11.i, 3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 8 %.val10.i, ptr nonnull readonly align 8 %.val12.i, i64 %i.be), !alias.scope !116184, !noalias !116185
  %i.bf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bf, label %bb.q, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.q:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcb89f23df902ace9E.exit.i", %.split.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !range !168, !alias.scope !116182, !noalias !116183, !noundef !145
  %i.bi = icmp ne i64 %i.bh, -9223372036854775808 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !range !168, !alias.scope !116183, !noalias !116182, !noundef !145
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808 ; 3 uses
  %not.6.i = xor i1 %i.bl, true
  %i.bm = xor i1 %i.bi, %i.bl
  br i1 %i.bm, label %bb.r, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.r:                                             ; preds = %bb.q
  br i1 %i.bi, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.assume(i1 %not.6.i)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7.i = load i64, ptr %i.bn, align 8, !alias.scope !116182, !noalias !116183, !noundef !145 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val9.i = load i64, ptr %i.bo, align 8, !alias.scope !116183, !noalias !116182, !noundef !145
  %.not.i.i14.i = icmp eq i64 %.val7.i, %.val9.i
  br i1 %.not.i.i14.i, label %bb.t, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8.i = load ptr, ptr %i.bp, align 8, !alias.scope !116183, !noalias !116182, !nonnull !145, !noundef !145
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.bq, align 8, !alias.scope !116182, !noalias !116183, !nonnull !145, !noundef !145
  %i.br = shl nuw nsw i64 %.val7.i, 3
  %bcmp.i.i16.i = tail call i32 @bcmp(ptr nonnull readonly align 8 %.val.i, ptr nonnull readonly align 8 %.val8.i, i64 %i.br), !alias.scope !116186, !noalias !116185
  %i.bs = icmp eq i32 %bcmp.i.i16.i, 0
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.assume(i1 %i.bl)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !116182, !noalias !116183, !noundef !145
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !116183, !noalias !116182, !noundef !145
  %i.bx = icmp eq i64 %i.bu, %i.bw
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h9296195d06e158dcE.exit"
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$nickel_lang_core..eval..cache..lazy..Thunk$u20$as$u20$core..fmt..Pointer$GT$3fmt17h741bd2ccc1e62b8fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116193)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !116192, !noalias !116193, !nonnull !145, !noundef !145
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 2)
  switch i64 %..i, label %bb.c [
    i64 2, label %bb.b
    i64 0, label %bb.d
  ], !prof !150

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82, !noalias !116194
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i = load ptr, ptr %i.e, align 8, !alias.scope !116193, !noalias !116192, !nonnull !145, !noundef !145
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !116193, !noalias !116192, !nonnull !145, !noundef !145
  %i.f = getelementptr inbounds nuw i8, ptr %.val4.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !145, !noalias !116195, !nonnull !145
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2798, i64 noundef 8), !noalias !116195, !inline_history !116196
  br label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..fmt..Pointer$GT$3fmt17h7dbe59665dc0fe2eE.exit"

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hb297480c5db160e7E(i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !116192
  br label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..fmt..Pointer$GT$3fmt17h7dbe59665dc0fe2eE.exit"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..fmt..Pointer$GT$3fmt17h7dbe59665dc0fe2eE.exit": ; preds = %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$nickel_lang_core..eval..callstack..CallStack$u20$as$u20$core..fmt..Debug$GT$3fmt17h6cd178aa0d5526cdE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2793, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2792)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E"(ptr returned %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.d, i64 2)
  switch i64 %., label %bb.e [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !150

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %.0.val, align 8, !noundef !145 ; 3 uses
  %i.f = and i64 %i.e, 72057594037927935          ; 3 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  %i.i = and i64 %i.e, 1080863910568919040
  %i.j = icmp ult i64 %i.e, 864691128455135232
  tail call void @llvm.assume(i1 %i.j)
  %i.k = or i64 %i.h, %i.i
  store i64 %i.k, ptr %.0.val, align 8
  %i.l = icmp eq i64 %i.f, 72057594037927935
  br i1 %i.l, label %bb.d, label %bb.e, !prof !147

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2796, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.p, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  ret ptr %.0.val
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..fmt..Display$GT$3fmt17hd0487fe9b226cdadE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !116205
  store i64 0, ptr %i.b, align 8, !noalias !116205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116205
  call void @"_ZN16nickel_lang_core6pretty134_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_core..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_core..eval..value..NickelValue$GT$6pretty17h29e8bce513bf371aE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 %i.b), !noalias !116205
  %i.c = load i8, ptr %i.a, align 8, !range !238, !noalias !116205, !noundef !145
  %.not.i = icmp eq i8 %i.c, 15                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !116205, !nonnull !145 ; 4 uses
  %.sroa.01.0.i = select i1 %.not.i, ptr %i.e, ptr %i.a
  %i.f = invoke fastcc noundef zeroext i1 @_ZN6pretty6render4best17hd8417039552824faE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i, ptr nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_core..pretty..Allocator$GT$$GT$17h701acb1da8c2338bE"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #86
          to label %common.resume.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h9005b908fe8bd02aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #84
          to label %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd9d4d5329071ac73E.exit.i.i.i" unwind label %bb.e, !noalias !116206, !inline_history !299

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #83, !noalias !116206, !inline_history !299
  br label %common.resume.i

"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd9d4d5329071ac73E.exit.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #83, !noalias !116206, !inline_history !299
  br label %_ZN16nickel_lang_core6pretty10fmt_pretty17h9d02a6d59f2e3e09E.exit

bb.f:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h9005b908fe8bd02aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_ZN16nickel_lang_core6pretty10fmt_pretty17h9d02a6d59f2e3e09E.exit

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

_ZN16nickel_lang_core6pretty10fmt_pretty17h9d02a6d59f2e3e09E.exit: ; preds = %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd9d4d5329071ac73E.exit.i.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !116205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !116205
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..fmt..Pointer$GT$3fmt17h7dbe59665dc0fe2eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load ptr, ptr %0, align 8, !nonnull !145, !noundef !145
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.d, i64 2)
  switch i64 %., label %bb.c [
    i64 2, label %bb.b
    i64 0, label %bb.d
  ], !prof !150

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !145, !noundef !145
  %.val = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.f = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !145, !noalias !116209, !nonnull !145
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2798, i64 noundef 8), !noalias !116209, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hb297480c5db160e7E(i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$nickel_lang_core..repl..command..CommandType$u20$as$u20$core..fmt..Debug$GT$3fmt17h91c119e431a143dfE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !275, !noundef !145 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN81_$LT$nickel_lang_core..repl..command..CommandType$u20$as$u20$core..fmt..Debug$GT$3fmt17h91c119e431a143dfE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN81_$LT$nickel_lang_core..repl..command..CommandType$u20$as$u20$core..fmt..Debug$GT$3fmt17h91c119e431a143dfE.5905", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$nickel_lang_core..serialize..NickelPointer$u20$as$u20$core..fmt..Display$GT$3fmt17h75a487152170a291E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !145, !noundef !145 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !145 ; 3 uses
  %.idx = shl nuw nsw i64 %i.l, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.f, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h71df00bd2a383077E", ptr %.sroa.48.0..sroa_idx, align 8
  %.val24 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val25 = load ptr, ptr %i.n, align 8, !nonnull !145, !noundef !145 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !116216
  store ptr @212, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val25, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !116216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !116216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.o, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %i.p = icmp eq i64 %i.l, 1
  br i1 %i.p, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.017.050 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.1046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.017.051 = phi ptr [ %.sroa.017.050, %.lr.ph ], [ %.sroa.017.0, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.017.051, ptr %i.f, align 8
  %i.q = load i32, ptr %.sroa.017.051, align 8, !range !197, !noundef !145
  %i.r = trunc nuw i32 %i.q to i1
  br i1 %i.r, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h71df00bd2a383077E", ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !116217
  store ptr @212, ptr %i.b, align 8
  store i64 1, ptr %.sroa.543.0..sroa_idx, align 8
  store ptr %i.d, ptr %.sroa.744.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.845.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1046.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val25, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !116217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !116217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.s, label %bb.e, label %bb.d

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h71df00bd2a383077E", ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116218
  store ptr @2804, ptr %i.a, align 8
  store i64 1, ptr %.sroa.537.0..sroa_idx, align 8
  store ptr %i.e, ptr %.sroa.738.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.839.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1040.0..sroa_idx, align 8
  %i.t = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val25, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !116218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !116218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.017.0 = getelementptr inbounds nuw i8, ptr %.sroa.017.051, i64 16 ; 2 uses
  %i.u = icmp eq ptr %.sroa.017.0, %i.m
  br i1 %i.u, label %.sink.split, label %bb.c

bb.e:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.2.ph = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.2 = phi i1 [ false, %bb.a ], [ %.sroa.0.2.ph, %.sink.split ]
  ret i1 %.sroa.0.2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN81_$LT$nickel_lang_core..term..record..RecordData$u20$as$u20$core..clone..Clone$GT$5clone17h27f40e35c70720ccE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5ea63a84fcfd7816E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load i8, ptr %i.b, align 8, !range !153, !noundef !145
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.e = load i8, ptr %i.d, align 1, !range !153, !noundef !145
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !noundef !145 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hada9f7a23c545d27E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.g, align 8, !noundef !145 ; 2 uses
  %i.h = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hada9f7a23c545d27E.exit, !prof !147

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hada9f7a23c545d27E.exit: ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %i.e, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.g, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN81_$LT$nickel_lang_core..term..record..RecordDeps$u20$as$u20$core..clone..Clone$GT$5clone17h0f6d770c95613469E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 14 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116298
end_hunk_6
begin_hunk_7_@"_ZN83_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha722721ec038c411E":bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8
  br label %tailrecurse.backedge

bb.ck:                                            ; preds = %bb.ca
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8
  %i.gk = tail call fastcc noundef zeroext i1 @"_ZN72_$LT$nickel_lang_core..term..Op1Data$u20$as$u20$core..cmp..PartialEq$GT$2eq17h01052de09eeba9d3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gj), !inline_history !117107
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cl:                                            ; preds = %bb.ca
  %i.gl = tail call fastcc noundef zeroext i1 @"_ZN72_$LT$nickel_lang_core..term..Op2Data$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1d7abc2089806d53E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.5.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.18.0), !inline_history !117107
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cm:                                            ; preds = %bb.ca
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 32
  %i.gn = load i8, ptr %i.gm, align 8, !range !229, !alias.scope !117135, !noalias !117136, !noundef !145
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 32
  %i.gp = load i8, ptr %i.go, align 8, !range !229, !alias.scope !117136, !noalias !117135, !noundef !145
  %i.gq = icmp eq i8 %i.gn, %i.gp
  br i1 %i.gq, label %bb.ct, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cn:                                            ; preds = %bb.ca
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8
  %i.gt = tail call fastcc noundef zeroext i1 @"_ZN75_$LT$nickel_lang_core..term..SealedData$u20$as$u20$core..cmp..PartialEq$GT$2eq17h92295c4e2c9f4483E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gs), !inline_history !117107
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.co:                                            ; preds = %bb.ca
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8
  %i.gw = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_core..term..AnnotatedData$u20$as$u20$core..cmp..PartialEq$GT$2eq17hebc1ad32d1ebf638E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gv), !inline_history !117107
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cp:                                            ; preds = %bb.ca
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8
  %i.gz = tail call fastcc noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..Import$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7f6377594f6f44c6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gy), !inline_history !117107
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cq:                                            ; preds = %bb.ca
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !alias.scope !117135, !noalias !117136, !noundef !145
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !alias.scope !117136, !noalias !117135, !noundef !145
  %i.he = icmp eq i32 %i.hb, %i.hd
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cr:                                            ; preds = %bb.ca
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !117135, !noalias !117136, !nonnull !145, !noundef !145
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !alias.scope !117136, !noalias !117135, !nonnull !145, !noundef !145
  %i.hj = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..error..ParseError$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7100ca73bd994574E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hi), !noalias !117139, !inline_history !117107
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cs:                                            ; preds = %bb.ca
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !117135, !noalias !117136, !nonnull !145, !noundef !145
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !117136, !noalias !117135, !nonnull !145, !noundef !145
  %i.ho = tail call fastcc noundef zeroext i1 @"_ZN79_$LT$nickel_lang_core..error..EvalErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5cafd5dd347365c5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.hl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.hn), !noalias !117139, !inline_history !117107
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.ct:                                            ; preds = %bb.cm
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8
  %i.hr = tail call fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hc1409e2230e2ddd9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hp), !inline_history !117107
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cu:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0) ]
  %i.hs = tail call fastcc noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..label..Label$u20$as$u20$core..cmp..PartialEq$GT$2eq17h14e28397bd642f07E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.5.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.18.0)
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cv:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117141)
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !alias.scope !117140, !noalias !117141, !noundef !145
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 24
  %i.hw = load i32, ptr %i.hv, align 8, !alias.scope !117141, !noalias !117140, !noundef !145
  %i.hx = icmp eq i32 %i.hu, %i.hw
  br i1 %i.hx, label %bb.cw, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cw:                                            ; preds = %bb.cv
  %i.hy = load ptr, ptr %.sroa.5.0, align 8, !alias.scope !117140, !noalias !117141, !noundef !145
  %.not.i30 = icmp eq ptr %i.hy, null             ; 2 uses
  %i.hz = load ptr, ptr %.sroa.18.0, align 8, !alias.scope !117141, !noalias !117140, !noundef !145
  %i.ia = icmp eq ptr %i.hz, null                 ; 2 uses
  %brmerge = or i1 %.not.i30, %i.ia
  br i1 %brmerge, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit.loopexit.split.loop.exit2257", label %tailrecurse.backedge

bb.cx:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0) ]
  %i.ib = load i64, ptr %.sroa.5.0, align 8, !noundef !145
  %i.ic = load i64, ptr %.sroa.18.0, align 8, !noundef !145
  %i.id = icmp eq i64 %i.ib, %i.ic
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cy:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0) ]
  %i.ie = load i32, ptr %.sroa.5.0, align 4, !noundef !145
  %i.if = load i32, ptr %.sroa.18.0, align 4, !noundef !145
  %i.ig = icmp eq i32 %i.ie, %i.if
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.cz:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0) ]
  br label %tailrecurse.backedge

bb.da:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117143)
  %i.ih = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6adac61bdb47acc9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.5.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.18.0), !inline_history !117117
  br i1 %i.ih, label %bb.db, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.db:                                            ; preds = %bb.da
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 88
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117145)
  %i.ik = load i32, ptr %i.ii, align 4, !range !186, !alias.scope !117146, !noalias !117147, !noundef !145 ; 2 uses
  %i.il = load i32, ptr %i.ij, align 4, !range !186, !alias.scope !117147, !noalias !117146, !noundef !145
  %i.im = icmp eq i32 %i.ik, %i.il
  br i1 %i.im, label %bb.dc, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.dc:                                            ; preds = %bb.db
  switch i32 %i.ik, label %default.unreachable840 [
    i32 0, label %bb.dd
    i32 1, label %bb.df
    i32 2, label %"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit.thread74"
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 92
  %i.io = load i32, ptr %i.in, align 4, !alias.scope !117146, !noalias !117147, !noundef !145
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 92
  %i.iq = load i32, ptr %i.ip, align 4, !alias.scope !117147, !noalias !117146, !noundef !145
  %i.ir = icmp eq i32 %i.io, %i.iq
  br i1 %i.ir, label %bb.de, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.de:                                            ; preds = %bb.dd
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 96
  %i.it = load i32, ptr %i.is, align 4, !alias.scope !117146, !noalias !117147, !noundef !145
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 96
  %i.iv = load i32, ptr %i.iu, align 4, !alias.scope !117147, !noalias !117146, !noundef !145
  %i.iw = icmp eq i32 %i.it, %i.iv
  br i1 %i.iw, label %"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit", label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.df:                                            ; preds = %bb.dc
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 92
  %i.iy = load i32, ptr %i.ix, align 4, !alias.scope !117146, !noalias !117147, !noundef !145
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 92
  %i.ja = load i32, ptr %i.iz, align 4, !alias.scope !117147, !noalias !117146, !noundef !145
  %i.jb = icmp eq i32 %i.iy, %i.ja
  br i1 %i.jb, label %bb.dg, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

bb.dg:                                            ; preds = %bb.df
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 96
  %i.jd = load i32, ptr %i.jc, align 4, !alias.scope !117146, !noalias !117147, !noundef !145
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 96
  %i.jf = load i32, ptr %i.je, align 4, !alias.scope !117147, !noalias !117146, !noundef !145
  %i.jg = icmp eq i32 %i.jd, %i.jf
  br i1 %i.jg, label %.split, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

.split:                                           ; preds = %bb.dg
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 100
  %i.ji = load i32, ptr %i.jh, align 4, !alias.scope !117146, !noalias !117147, !noundef !145
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 100
  %i.jk = load i32, ptr %i.jj, align 4, !alias.scope !117147, !noalias !117146, !noundef !145
  %i.jl = icmp eq i32 %i.ji, %i.jk
  br i1 %i.jl, label %"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit.thread74", label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit": ; preds = %bb.de
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 100
  %i.jn = load i32, ptr %i.jm, align 4, !alias.scope !117146, !noalias !117147, !noundef !145
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 100
  %i.jp = load i32, ptr %i.jo, align 4, !alias.scope !117147, !noalias !117146, !noundef !145
  %i.jq = icmp eq i32 %i.jn, %i.jp
  br i1 %i.jq, label %"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit.thread74", label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit"

"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit.thread74": ; preds = %bb.dc, %.split, %"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE.exit"
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 104
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 104
  br label %tailrecurse.backedge
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..repl..command..CommandType$u20$as$u20$core..fmt..Display$GT$3fmt17h38398f279d1e87abE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !275, !noundef !145
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.b, align 8, !nonnull !145, !noundef !145
  %.val10 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !145, !noalias !145, !nonnull !145 ; 6 uses
  switch i8 %i.a, label %default.unreachable67 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable67:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1039, i64 noundef 4), !noalias !117160, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1040, i64 noundef 9), !noalias !117161, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1041, i64 noundef 5), !noalias !117162, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1042, i64 noundef 5), !noalias !117163, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1043, i64 noundef 4), !noalias !117164, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1044, i64 noundef 4), !noalias !117165, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.j, %bb.g ], [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..term..record..SharedMetadata$u20$as$u20$core..fmt..Debug$GT$3fmt17hb942ec8b58f2ad9dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2845, i64 noundef 14, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2844)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..term..string..NickelString$u20$as$u20$core..fmt..Display$GT$3fmt17he6b2c349d91ec91fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !145, !noundef !145
  %.val = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117168
  store ptr @212, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !117168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17hf63bcdbcdc2b30c7E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %3, ptr noalias noundef nonnull align 1 %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 12 uses
  %i.d = alloca [192 x i8], align 8               ; 17 uses
  %.sroa.0.i.i = alloca [88 x i8], align 8        ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 9 uses
  %i.j = alloca [96 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [96 x i8], align 8                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5417 = alloca [88 x i8], align 8         ; 5 uses
  %i.o = alloca [64 x i8], align 8                ; 12 uses
  %i.p = alloca [96 x i8], align 8                ; 4 uses
  %i.q = alloca [96 x i8], align 8                ; 11 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [96 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [96 x i8], align 8                ; 4 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [96 x i8], align 8                ; 5 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5415 = alloca [88 x i8], align 8         ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 13 uses
  %i.aa = alloca [96 x i8], align 8               ; 8 uses
  %i.ab = alloca [120 x i8], align 8              ; 8 uses
  %i.ac = alloca [96 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [96 x i8], align 8               ; 8 uses
  %i.af = alloca [96 x i8], align 8               ; 7 uses
  %i.ag = alloca [96 x i8], align 8               ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !203, !noundef !145
  switch i8 %i.ai, label %bb.b [
    i8 7, label %bb.d
    i8 8, label %bb.k
    i8 14, label %bb.l
    i8 15, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !145, !align !149, !noundef !145 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load i16, ptr %i.al, align 8, !range !172, !noundef !145 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117305)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !117306, !noalias !117307, !noundef !145 ; 9 uses
  %i.ap = icmp ult i64 %i.ao, 88686269585142076
  tail call void @llvm.assume(i1 %i.ap)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117308)
  %i.aq = load i64, ptr %i.ak, align 8, !range !146, !alias.scope !117309, !noalias !117310, !noundef !145
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.c, label %bb.dl

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6af2fe93b5a9a32cE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1451)
          to label %bb.dl unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit184.thread459"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117312)
  %.val2.i = load ptr, ptr %3, align 8, !alias.scope !117312, !noalias !117311, !nonnull !145, !noundef !145 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val3.i = load ptr, ptr %i.au, align 8, !alias.scope !117312, !noalias !117311 ; 4 uses
  %.val.i.i.i = load i64, ptr %.val2.i, align 8, !noalias !117313, !noundef !145 ; 2 uses
  %i.av = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.aw, ptr %.val2.i, align 8, !noalias !117313
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.e, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i, !prof !147

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i", label %bb.f

bb.f:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val3.i, align 8, !noalias !117313, !noundef !145 ; 2 uses
  %i.ay = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.az, ptr %.val3.i, align 8, !noalias !117313
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.g, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i", !prof !147

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i": ; preds = %bb.f, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.val.i = load ptr, ptr %i.bb, align 8, !alias.scope !117312, !noalias !117311, !nonnull !145, !noundef !145 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.val1.i = load ptr, ptr %i.bc, align 8, !alias.scope !117312, !noalias !117311 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val.i, align 8, !noalias !117313, !noundef !145 ; 2 uses
  %i.bd = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.be, ptr %.val.i, align 8, !noalias !117313
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.h, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i, !prof !147

bb.h:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i"
  %.not.i5.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i5.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val1.i, align 8, !noalias !117313, !noundef !145 ; 2 uses
  %i.bg = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.bh, ptr %.val1.i, align 8, !noalias !117313
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %bb.n, !prof !147

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 20
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.bj)
          to label %bb.bt unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit184.thread459"

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !145, !align !176, !noundef !145
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bn = load i16, ptr %i.bm, align 8, !range !172, !noundef !145 ; 2 uses
  invoke void @"_ZN110_$LT$nickel_lang_parser..ast..primop..PrimOp$u20$as$u20$nickel_lang_core..typecheck..operation..PrimOpType$GT$11primop_type17h234669c19ab25f16E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.ab, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, i16 noundef %i.bn)
          to label %bb.ce unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit184.thread459"

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !145, !align !149, !noundef !145
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !145, !align !149, !noundef !145
  call fastcc void @_ZN16nickel_lang_core9typecheck16infer_with_annot17h16b9f77c0a033850E(ptr noalias noundef align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 1 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.dk

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit184.thread459": ; preds = %bb.l, %bb.c, %bb.q, %bb.n, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bt = load i16, ptr %i.bs, align 8, !range !172, !alias.scope !117312, !noalias !117311, !noundef !145
  store ptr %.val2.i, ptr %i.v, align 8, !alias.scope !117311, !noalias !117312
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.val3.i, ptr %i.bu, align 8, !alias.scope !117311, !noalias !117312
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %.val.i, ptr %i.bv, align 8, !alias.scope !117311, !noalias !117312
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %.val1.i, ptr %i.bw, align 8, !alias.scope !117311, !noalias !117312
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
end_hunk_7
begin_hunk_8_@"_ZN84_$LT$nickel_lang_core..error..TypecheckErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h475189584baf339dE":bb.a
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.oo = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1e2785f43ec06b69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.om, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.on)
  br i1 %i.oo, label %bb.db, label %.critedge28

bb.db:                                            ; preds = %bb.da
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.or = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.op, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.oq)
  br i1 %i.or, label %bb.dc, label %.critedge28

bb.dc:                                            ; preds = %bb.db
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ou = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1e2785f43ec06b69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.os, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ot)
  br i1 %i.ou, label %bb.dd, label %.critedge28

bb.dd:                                            ; preds = %bb.dc
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ox = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ov, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ow)
  br i1 %i.ox, label %bb.de, label %.critedge28

bb.de:                                            ; preds = %bb.dd
  %i.oy = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bn, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bo)
  br label %.critedge28

bb.df:                                            ; preds = %bb.n
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !align !149, !noundef !145 ; 2 uses
  %.not21 = icmp eq ptr %i.pb, null
  %i.pc = load ptr, ptr %i.oz, align 8, !align !149, !noundef !145 ; 2 uses
  %i.pd = icmp eq ptr %i.pc, null                 ; 2 uses
  br i1 %.not21, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  br i1 %i.pd, label %bb.di, label %.critedge28

bb.dh:                                            ; preds = %bb.df
  br i1 %i.pd, label %.critedge28, label %.split55

.split55:                                         ; preds = %bb.dh
  %i.pe = tail call fastcc noundef zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h7cf3e61edd0fd126E"(ptr %i.pb, ptr %i.pc)
  br i1 %i.pe, label %bb.di, label %.critedge28

bb.di:                                            ; preds = %.split55, %bb.dg
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ph = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1e2785f43ec06b69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.pf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.pg)
  br i1 %i.ph, label %bb.dj, label %.critedge28

bb.dj:                                            ; preds = %bb.di
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.pk = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.pi, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.pj)
  br i1 %i.pk, label %bb.dk, label %.critedge28

bb.dk:                                            ; preds = %bb.dj
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.pn = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1e2785f43ec06b69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.pl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.pm)
  br i1 %i.pn, label %bb.dl, label %.critedge28

bb.dl:                                            ; preds = %bb.dk
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.pq = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.po, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.pp)
  br i1 %i.pq, label %bb.dm, label %.critedge28

bb.dm:                                            ; preds = %bb.dl
  %i.pr = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bu, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bv)
  br label %.critedge28

bb.dn:                                            ; preds = %bb.o
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.pu = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ps, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.pt)
  br i1 %i.pu, label %bb.do, label %.critedge28

bb.do:                                            ; preds = %bb.dn
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.px = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1e2785f43ec06b69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.pv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.pw)
  br i1 %i.px, label %bb.dp, label %.critedge28

bb.dp:                                            ; preds = %bb.do
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.qa = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.py, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.pz)
  br i1 %i.qa, label %bb.dq, label %.critedge28

bb.dq:                                            ; preds = %bb.dp
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qc = load i8, ptr %i.qb, align 8, !noundef !145
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qe = load i8, ptr %i.qd, align 8, !noundef !145
  %i.qf = icmp eq i8 %i.qc, %i.qe
  br i1 %i.qf, label %bb.dr, label %.critedge28

bb.dr:                                            ; preds = %bb.dq
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !noundef !145 ; 3 uses
  %.not = icmp eq ptr %i.qi, null
  %i.qj = load ptr, ptr %i.qg, align 8, !noundef !145 ; 3 uses
  %i.qk = icmp eq ptr %i.qj, null                 ; 2 uses
  br i1 %.not, label %.split56, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.qk, label %.critedge28, label %bb.du

.split56:                                         ; preds = %bb.dr
  br i1 %i.qk, label %.critedge43, label %.critedge28

bb.dt:                                            ; preds = %bb.du
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.qn = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$nickel_lang_vector..vector..Node$LT$T$C$_$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h55c276afd99c12f6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ql, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.qm)
  br i1 %i.qn, label %.critedge43, label %.critedge28

bb.du:                                            ; preds = %bb.ds
  %i.qo = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qo, label %.critedge43, label %bb.dt

.critedge43:                                      ; preds = %.split56, %bb.du, %bb.dt
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qq = load i64, ptr %i.qp, align 8, !noundef !145
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qs = load i64, ptr %i.qr, align 8, !noundef !145
  %i.qt = icmp eq i64 %i.qq, %i.qs
  br i1 %i.qt, label %bb.dv, label %.critedge28

bb.dv:                                            ; preds = %.critedge43
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qv = load ptr, ptr %i.qu, align 8, !nonnull !145, !noundef !145
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qx = load ptr, ptr %i.qw, align 8, !nonnull !145, !noundef !145
  %i.qy = tail call fastcc noundef zeroext i1 @"_ZN84_$LT$nickel_lang_core..error..TypecheckErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h475189584baf339dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.qv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.qx)
  br i1 %i.qy, label %bb.dw, label %.critedge28

bb.dw:                                            ; preds = %bb.dv
  %i.qz = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cb, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cc)
  br label %.critedge28

bb.dx:                                            ; preds = %bb.p
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rc = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.rb, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ra)
  br i1 %i.rc, label %bb.dy, label %.critedge28

bb.dy:                                            ; preds = %bb.dx
  %i.rd = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cg, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ch)
  br label %.critedge28

bb.dz:                                            ; preds = %bb.q
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rg = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.rf, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.re)
  br label %.critedge28

bb.ea:                                            ; preds = %bb.r
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.rj = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.rh, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ri)
  br i1 %i.rj, label %bb.eb, label %.critedge28

bb.eb:                                            ; preds = %bb.ea
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.rm = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1e2785f43ec06b69E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.rk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.rl)
  br i1 %i.rm, label %bb.ec, label %.critedge28

bb.ec:                                            ; preds = %bb.eb
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.rp = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.rn, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ro)
  br i1 %i.rp, label %bb.ed, label %.critedge28

bb.ed:                                            ; preds = %bb.ec
  %i.rq = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cq, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cr)
  br label %.critedge28

bb.ee:                                            ; preds = %bb.s
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rt = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.rs, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.rr)
  br label %.critedge28
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN84_$LT$nickel_lang_core..serialize..ParseFormatError$u20$as$u20$core..fmt..Display$GT$3fmt17h62fa443b920adcaeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !145, !noundef !145
  %.val = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117493
  store ptr @2865, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !117493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN84_$LT$nickel_lang_core..term..record..FieldMetadata$u20$as$u20$core..clone..Clone$GT$5clone17hf594023765471878E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(360) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 4 uses
  %i.b = alloca [280 x i8], align 8               ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !noundef !145 ; 7 uses
  %.not = icmp eq ptr %i.e, null                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.g = load i64, ptr %i.f, align 8, !noundef !145 ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !noundef !145 ; 2 uses
  %i.h = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.i, ptr %i.e, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h5665d0c724edde1cE.exit, !prof !147

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h5665d0c724edde1cE.exit: ; preds = %bb.b
  store ptr %i.e, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.g, ptr %i.k, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h5665d0c724edde1cE.exit
  %i.l = phi i64 [ undef, %bb.d ], [ %i.g, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h5665d0c724edde1cE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN77_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..clone..Clone$GT$5clone17h96dd221ec2afded8E"(ptr noalias noundef align 8 captures(address) dereferenceable(280) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.p, %bb.i
  %.pn = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.p, %bb.i ]
  br i1 %.not, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h3daf05cac9c65f32E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i64, ptr %i.e, align 8, !noalias !117500, !noundef !145
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !noalias !117500
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h3daf05cac9c65f32E.exit"

bb.h:                                             ; preds = %bb.g
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h887672c85bbbd88bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.c)
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h3daf05cac9c65f32E.exit"

bb.i:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.j:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.r = load i8, ptr %i.q, align 8, !range !153, !noundef !145
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 353
  %i.t = load i8, ptr %i.s, align 1, !range !153, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !215, !noundef !145 ; 3 uses
  %i.w = icmp ne i64 %i.v, -9223372036854775805
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nsw i64 %i.v, 9223372036854775807
  %i.y = icmp ugt i64 %i.v, -9223372036854775808
  %i.z = select i1 %i.y, i64 %i.x, i64 2
  switch i64 %i.z, label %bb.k [
    i64 0, label %bb.o
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u)
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %bb.j
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.q, %bb.n, %bb.l
  %.sroa.0.0 = phi i64 [ -9223372036854775804, %bb.n ], [ -9223372036854775806, %bb.l ], [ %.sroa.0.0.copyload1, %bb.q ], [ -9223372036854775807, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.e, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.l, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.b, i64 280, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 %i.r, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 %i.t, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.sroa.0.0, ptr %i.ae, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.p:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..term..TypeAnnotation$GT$17h3726bb710e7b178cE"(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.b) #86
          to label %bb.f unwind label %bb.r

bb.q:                                             ; preds = %bb.m
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx2, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.r:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h3daf05cac9c65f32E.exit": ; preds = %bb.h, %bb.g, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN84_$LT$nickel_lang_core..typ..UnboundTypeVariableError$u20$as$u20$core..fmt..Debug$GT$3fmt17h50756e02a2bdac0aE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2866, i64 noundef 24, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1647)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN84_$LT$nickel_lang_vector..vector..Node$LT$T$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4f666f3d49706d46E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [272 x i8], align 8               ; 7 uses
  %i.d = alloca [272 x i8], align 8               ; 8 uses
  %i.e = load i64, ptr %1, align 8, !range !164, !noundef !145
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117511)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !117512
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 264 ; 4 uses
  %i.l = load i64, ptr %i.h, align 8, !alias.scope !117511, !noalias !117513, !noundef !145 ; 9 uses
  store i64 %i.l, ptr %i.j, align 8, !noalias !117512
  store i64 %i.l, ptr %i.k, align 8, !noalias !117512
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !117511, !noalias !117513, !noundef !145 ; 4 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.i.preheader, label %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0aabebe4d7ef6e1fE.exit"

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.o = sub nuw i64 %i.m, %i.l
  %.neg = add i64 %i.l, 1
  %xtraiter = and i64 %i.o, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol
end_hunk_8
begin_hunk_9_@"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5flush17h4e06f2d8dc6113bbE":bb.a
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN58_$LT$wasm_bindgen..JsValue$u20$as$u20$core..fmt..Debug$GT$3fmt17hb26012027be9a7fdE", ptr %.sroa.42.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !119224
  store ptr @212, ptr %i.a, align 8, !noalias !119225
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !119225
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !119225
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !119225
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !119225
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.o, %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.aj, %bb.n ], [ %i.aj, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119226)
  %.val.i.i = load i32, ptr %i.d, align 4, !alias.scope !119226, !noundef !145 ; 2 uses
  %i.ag = icmp ugt i32 %.val.i.i, 131
  br i1 %i.ag, label %bb.j, label %"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit17"

bb.j:                                             ; preds = %.body.i
  call void @_ZN12wasm_bindgen26__wbindgen_object_drop_ref17h61378889d3666a0cE(i32 noundef %.val.i.i) #83, !noalias !119226
  br label %"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit17"

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.09.0.copyload.i = load i64, ptr %i.c, align 8 ; 3 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.511.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.614.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx.i, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !119227
  %i.ah = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !119227 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.o, !prof !155

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #82
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.09.0.copyload.i, 0
  br i1 %i.ak, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.copyload.i, i64 noundef %.sroa.09.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !119228
  br label %.body.i

bb.o:                                             ; preds = %bb.k
  store i64 %.sroa.09.0.copyload.i, ptr %i.ah, align 8
  %.sroa.511.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.511.0.copyload.i, ptr %.sroa.511.0..sroa_idx12.i, align 8
  %.sroa.614.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.614.0.copyload.i, ptr %.sroa.614.0..sroa_idx15.i, align 8
  %i.al = invoke noundef nonnull ptr @_ZN3std2io5error5Error4_new17h6d8eca976092d069E(i8 noundef 40, ptr noundef nonnull align 1 %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @982)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !119229)
  %.val.i7.i = load i32, ptr %i.d, align 4, !alias.scope !119229, !noundef !145 ; 2 uses
  %i.am = icmp ugt i32 %.val.i7.i, 131
  br i1 %i.am, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @_ZN12wasm_bindgen26__wbindgen_object_drop_ref17h61378889d3666a0cE(i32 noundef %.val.i7.i) #83, !noalias !119229
  br label %bb.v

bb.r:                                             ; preds = %bb.g
  %i.an = icmp ugt i32 %i.ad, 131
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN12wasm_bindgen26__wbindgen_object_drop_ref17h61378889d3666a0cE(i32 noundef %i.ad) #83, !noalias !119230
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ao = icmp ugt i32 %i.x, 131
  br i1 %i.ao, label %bb.u, label %"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit23"

bb.u:                                             ; preds = %bb.t
  call void @_ZN12wasm_bindgen26__wbindgen_object_drop_ref17h61378889d3666a0cE(i32 noundef %i.x) #83, !noalias !119231
  br label %"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit23"

"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit23": ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.c

bb.v:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ap = icmp ugt i32 %i.x, 131
  br i1 %i.ap, label %bb.w, label %"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit27"

bb.w:                                             ; preds = %bb.v
  call void @_ZN12wasm_bindgen26__wbindgen_object_drop_ref17h61378889d3666a0cE(i32 noundef %i.x) #83, !noalias !119232
  br label %"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit27"

"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit27": ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit27", %bb.c
  %.sroa.0.0 = phi ptr [ %i.al, %"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit27" ], [ null, %bb.c ]
  ret ptr %.sroa.0.0

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit": ; preds = %bb.e, %"_ZN4core3ptr42drop_in_place$LT$wasm_bindgen..JsValue$GT$17h6145c36546065e33E.exit17"
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5write17h31e1de18b12f7213E"(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119242)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !119243, !noundef !145 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !146, !alias.scope !119243, !noundef !145
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit", !prof !147

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !119244
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit": ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ] ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !119244, !nonnull !145, !noundef !145
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !119244
  %i.k = add i64 %i.f, %2
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !119244
  %i.l = icmp ult i64 %2, 16
  br i1 %i.l, label %.preheader.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit

.preheader.i:                                     ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit"
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.sroa.01.05.i = phi i64 [ %i.p, %bb.c ], [ 0, %.preheader.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !119245, !noundef !145
  %i.o = icmp eq i8 %i.n, 10
  br i1 %i.o, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread, label %.lr.ph.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit: ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit"
  %i.q = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6: ; preds = %.lr.ph.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit
  %i.t = tail call noundef ptr @"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5flush17h4e06f2d8dc6113bbE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread, label %bb.d

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread: ; preds = %bb.c, %.preheader.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit
  %i.u = inttoptr i64 %2 to ptr
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread
  %.sroa.3.0 = phi ptr [ %i.u, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread ], [ %i.t, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6 ]
  %.sroa.0.0 = phi i64 [ 0, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread ], [ 1, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6 ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.w
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN88_$LT$nickel_lang_core..serialize..MetadataExportFormat$u20$as$u20$core..fmt..Display$GT$3fmt17h8189563bbce100b9E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !173, !noundef !145
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.b, align 8, !nonnull !145, !noundef !145
  %.val6 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val7, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !145, !noalias !145, !nonnull !145 ; 4 uses
  switch i8 %i.a, label %default.unreachable41 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable41:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 8), !noalias !119254, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @53, i64 noundef 4), !noalias !119255, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @54, i64 noundef 4), !noalias !119256, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @55, i64 noundef 4), !noalias !119257, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$nickel_lang_core..typ..RecordRows$u20$as$u20$nickel_lang_core..typ..Subcontract$GT$11subcontract17h9b51defde176f616E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull %3, ptr noundef %4, i1 noundef zeroext %5, ptr noalias nofree noundef align 4 captures(none) dereferenceable(4) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 4                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [20 x i8], align 4                ; 5 uses
  %i.r = alloca [72 x i8], align 8                ; 15 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  store ptr %3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  store ptr %4, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !range !153, !noalias !119326, !noundef !145
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i", !prof !154

._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.u, align 8, !noalias !119327
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !119327
  br label %bb.c

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i": ; preds = %bb.a
  %i.y = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i"
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !119328
  store i8 1, ptr %i.v, align 8, !noalias !119328
  br label %bb.c

.body:                                            ; preds = %bb.ay, %bb.at, %.thread79, %bb.s, %bb.t, %bb.b, %bb.bl
  %.pn46 = phi { ptr, i32 } [ %i.cm, %bb.s ], [ %lpad.phi, %bb.bl ], [ %i.ac, %bb.b ], [ %i.cm, %bb.t ], [ %.pn.pn74, %.thread79 ], [ %i.ei, %bb.at ], [ %i.eu, %bb.ay ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h754f447bf7209a01E"(ptr noalias noundef align 8 dereferenceable(16) %i.s) #86
          to label %common.resume unwind label %bb.bj

bb.b:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i"
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i
  %.pre-phi113 = phi i64 [ %i.aa, %.noexc ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.z, %.noexc ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ] ; 2 uses
  %i.ad = add i64 %.pre-phi, 1
  store i64 %i.ad, ptr %i.u, align 8, !noalias !119327
  store i64 0, ptr %i.r, align 8, !alias.scope !119329
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !119329
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !119329
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 %.pre-phi, ptr %i.ae, align 8, !alias.scope !119329
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i64 %.pre-phi113, ptr %i.af, align 8, !alias.scope !119329
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !range !162, !noundef !145 ; 3 uses
  %i.ai = icmp ne i32 %i.ah, 4
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nsw i32 %i.ah, -3                   ; 2 uses
  %i.ak = icmp samesign ult i32 %i.ah, 3
  %i.al = icmp eq i32 %i.aj, 1
  %i.am = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %4, null
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h1c97732375bf62bbE.exit"
  %i.ao = phi ptr [ %i.ag, %.lr.ph ], [ %i.bt, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h1c97732375bf62bbE.exit" ]
  %.sroa.0.0108 = phi ptr [ %1, %.lr.ph ], [ %i.bs, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h1c97732375bf62bbE.exit" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, ptr noundef nonnull align 8 dereferenceable(20) %i.ao, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ap = load ptr, ptr %.sroa.0.0108, align 8, !nonnull !145, !align !149, !noundef !145
  %.val.i.i = load i64, ptr %3, align 8, !noundef !145 ; 2 uses
  %i.aq = icmp ne i64 %.val.i.i, 0
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.ar, ptr %3, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.e, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hb1e86e21417c3e8eE.exit.i, !prof !147

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hb1e86e21417c3e8eE.exit.i: ; preds = %bb.d
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hb1e86e21417c3e8eE.exit.i
  %.val.i2.i = load i64, ptr %4, align 8, !noundef !145 ; 2 uses
  %i.at = icmp ne i64 %.val.i2.i, 0
  call void @llvm.assume(i1 %i.at)
  %i.au = add i64 %.val.i2.i, 1                   ; 2 uses
  store i64 %i.au, ptr %4, align 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.g, label %bb.h, !prof !147

bb.g:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

._crit_edge:                                      ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h1c97732375bf62bbE.exit", %bb.c
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.c ], [ %i.bs, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h1c97732375bf62bbE.exit" ] ; 2 uses
  %.lcssa = phi i32 [ %i.aj, %bb.c ], [ %i.bw, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h1c97732375bf62bbE.exit" ] ; 2 uses
  %.not = icmp eq i32 %.lcssa, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  switch i32 %.lcssa, label %bb.v [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
  ], !prof !119330

bb.h:                                             ; preds = %bb.f, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hb1e86e21417c3e8eE.exit.i
  invoke void @"_ZN82_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_core..typ..Subcontract$GT$11subcontract17h7acfcd55024c188cE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %3, ptr noundef %4, i1 noundef zeroext %5, ptr noalias noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.p, align 8, !range !197, !noundef !145
  %i.ax = trunc nuw i32 %i.aw to i1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.027.0.copyload = load i32, ptr %i.ay, align 4
  %.sroa.528.0.copyload = load ptr, ptr %i.an, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.027.0.copyload, ptr %i.az, align 4
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.528.0.copyload, ptr %.sroa.230.0..sroa_idx, align 8
  %.sroa.331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.331.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.an, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
end_hunk_9
begin_hunk_10_@"_ZN93_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb196c36c572e639aE":bb.a
  %i.d = icmp ne i32 %i.c, 4
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add nsw i32 %i.c, -3
  %i.f = icmp samesign ugt i32 %i.c, 2
  %narrow = select i1 %i.f, i32 %i.e, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.g, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122049)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !122049, !inline_history !157
  %i.i = tail call noalias noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !122049, !inline_history !157 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit.i", !prof !147

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #82, !noalias !122049, !inline_history !157
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit.i": ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !alias.scope !122049, !nonnull !145, !align !149, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122050
  invoke fastcc void @"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.k)
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h58e2e0a5d09563fbE.exit" unwind label %bb.f, !noalias !122049, !inline_history !141

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 96, i64 noundef 8) #83, !noalias !122049, !inline_history !157
  br label %common.resume

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h58e2e0a5d09563fbE.exit": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !122050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122050
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122051)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.m = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #83 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %.noexc, !prof !147

bb.g:                                             ; preds = %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h58e2e0a5d09563fbE.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #82
          to label %.noexc2 unwind label %bb.l

.noexc2:                                          ; preds = %bb.g
  unreachable

.noexc:                                           ; preds = %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h58e2e0a5d09563fbE.exit"
  %i.o = load ptr, ptr %i.h, align 8, !alias.scope !122051, !nonnull !145, !align !149, !noundef !145
  invoke fastcc void @"_ZN51_$LT$T$u20$as$u20$core..clone..uninit..CopySpec$GT$9clone_one17hb9bc84e2acd08e0fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef %i.m)
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf036d0d49fe68e49E.exit" unwind label %bb.h, !noalias !122051, !inline_history !122052

bb.h:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 48, i64 noundef 8) #83, !noalias !122051
  br label %.body

bb.i:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, ptr noundef nonnull align 4 dereferenceable(20) %i.q, i64 20, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.s, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 6, ptr %i.t, align 8
  br label %bb.k

bb.k:                                             ; preds = %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf036d0d49fe68e49E.exit", %bb.j, %bb.i, %bb.c
  ret void

bb.l:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.p, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17haf3319aa1114778eE"(ptr nonnull %i.i) #86
          to label %common.resume unwind label %bb.m

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf036d0d49fe68e49E.exit": ; preds = %.noexc
  store ptr %i.i, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i64 20, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %i.v, align 8
  br label %bb.k

bb.m:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i64 } @"_ZN94_$LT$nickel_lang_core..deserialize..ArrayDeserializer$u20$as$u20$serde_core..de..SeqAccess$GT$9size_hint17h5a8831e39dee343fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(304) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val = load i64, ptr %i.a, align 8, !noundef !145 ; 2 uses
  %i.b = icmp eq i64 %.val, 0
  %spec.select2 = zext i1 %i.b to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %spec.select2, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.val, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN94_$LT$nickel_lang_core..deserialize..RustDeserializationError$u20$as$u20$core..fmt..Display$GT$3fmt17he747156dd2bcbee4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = load i64, ptr %0, align 8, !range !211, !noundef !145 ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  %i.s = add i64 %i.q, -9223372036854775807
  %i.t = select i1 %i.r, i64 %i.s, i64 0
  switch i64 %i.t, label %bb.b [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit51
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit56
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit61
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit66
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h28d4732cf360e190E", ptr %.sroa.419.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.v, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h28d4732cf360e190E", ptr %.sroa.423.0..sroa_idx, align 8
  %.val35 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val36 = load ptr, ptr %i.w, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !122067
  store ptr @2986, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.n, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val36, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !122067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !122067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.y, align 8, !nonnull !145, !noundef !145
  %.val33 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.z = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !145, !noalias !122068, !nonnull !145
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 1 %.val33, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2987, i64 noundef 13), !noalias !122068, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.ac, align 8, !nonnull !145, !noundef !145
  %.val31 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ad = getelementptr inbounds nuw i8, ptr %.val32, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !145, !noalias !122069, !nonnull !145
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 1 %.val31, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2988, i64 noundef 15), !noalias !122069, !inline_history !363
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit51: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h28d4732cf360e190E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val29 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.ah, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !122070
  store ptr @2990, ptr %i.d, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.592.0..sroa_idx, align 8
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %.sroa.793.0..sroa_idx, align 8
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.894.0..sroa_idx, align 8
  %.sroa.1095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.1095.0..sroa_idx, align 8
  %i.ai = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !122070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !122070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit56: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h61c844b331688db3E", ptr %.sroa.415.0..sroa_idx, align 8
  %.val27 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.ak, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !122071
  store ptr @2992, ptr %i.c, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.580.0..sroa_idx, align 8
  %.sroa.781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.781.0..sroa_idx, align 8
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.882.0..sroa_idx, align 8
  %.sroa.1083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1083.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !122071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !122071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit61: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h61c844b331688db3E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val25 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.an, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !122072
  store ptr @2994, ptr %i.b, align 8
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.586.0..sroa_idx, align 8
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %.sroa.787.0..sroa_idx, align 8
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.888.0..sroa_idx, align 8
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1089.0..sroa_idx, align 8
  %i.ao = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val26, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !122072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !122072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit66: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h28d4732cf360e190E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.aq, align 8, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122073
  store ptr @212, ptr %i.a, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.598.0..sroa_idx, align 8
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.799.0..sroa_idx, align 8
  %.sroa.8100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8100.0..sroa_idx, align 8
  %.sroa.10101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10101.0..sroa_idx, align 8
  %i.ar = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val24, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !122073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41: ; preds = %bb.d, %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit66, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit61, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit56, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit51, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.x, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.ar, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit66 ], [ %i.af, %bb.d ], [ %i.ai, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit51 ], [ %i.al, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit56 ], [ %i.ao, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit61 ], [ %i.ab, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN94_$LT$toml..ser..value..array..SerializeValueArray$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h3d11cb0923667e01E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.c = load i8, ptr %i.b, align 1, !range !153, !noundef !145
  %i.d = trunc nuw i8 %i.c to i1                  ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !range !164, !noundef !145
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ult i64 %i.h, 2
  %.sroa.07.0.not = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.sroa.07.0.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !153, !noundef !145
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 8 uses
  br i1 %i.l, label %bb.f, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !145, !align !149, !noundef !145 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122153)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !122154, !noalias !122155, !noundef !145 ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !range !146, !alias.scope !122154, !noalias !122155, !noundef !145
  %i.t = icmp eq i64 %i.s, %i.r
  br i1 %i.t, label %bb.e, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h985b43dbdacd6090E.exit.thread", !prof !147

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.r, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !122155, !inline_history !296
  %.pre.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !122156, !noalias !122155
  br label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h985b43dbdacd6090E.exit.thread"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h985b43dbdacd6090E.exit.thread": ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !122156, !noalias !122155, !nonnull !145, !noundef !145
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  store i8 10, ptr %i.y, align 1, !noalias !122157
  %i.z = add nuw i64 %i.u, 1                      ; 4 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !122156, !noalias !122155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122162)
  %i.aa = load i64, ptr %i.p, align 8, !range !146, !alias.scope !122163, !noalias !122164, !noundef !145
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = icmp ult i64 %i.ab, 4
  br i1 %i.ac, label %bb.i, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h985b43dbdacd6090E.exit42.thread", !prof !147

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122169)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !122170, !noalias !122171, !noundef !145 ; 3 uses
  %i.af = load i64, ptr %i.n, align 8, !range !146, !alias.scope !122170, !noalias !122171, !noundef !145
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.g, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h985b43dbdacd6090E.exit28.thread", !prof !147

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ae, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !122171, !inline_history !296
  %.pre.i.i.i.i.i27 = load i64, ptr %i.ad, align 8, !alias.scope !122172, !noalias !122171
  br label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h985b43dbdacd6090E.exit28.thread"

end_hunk_10
