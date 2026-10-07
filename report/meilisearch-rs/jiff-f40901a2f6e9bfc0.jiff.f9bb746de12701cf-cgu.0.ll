Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4036
inline.NumDeleted: 1352
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17heb03b25bafb2e3a0E":bb.a
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !885
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hee280ec5b62de6f4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %.val = load i8, ptr %i.a, align 1, !range !30, !noundef !11 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hee280ec5b62de6f4E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hee280ec5b62de6f4E.621", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf344332cb6557bd9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %.val = load i8, ptr %i.a, align 1, !range !22, !noundef !11 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf344332cb6557bd9E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf344332cb6557bd9E.622", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf3eb36cbed21c010E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.c = load i8, ptr %i.b, align 1, !range !18, !alias.scope !889, !noalias !890, !noundef !11
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 5), !noalias !889
  br label %"_ZN69_$LT$jiff..shared..posix..SecondError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf4e5ec96efd0e185E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !891
  store ptr %i.b, ptr %i.a, align 8, !noalias !891
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @959, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @958)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !891
  br label %"_ZN69_$LT$jiff..shared..posix..SecondError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf4e5ec96efd0e185E.exit"

"_ZN69_$LT$jiff..shared..posix..SecondError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf4e5ec96efd0e185E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6a861507b597b6aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !19, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !895
  store ptr %i.b, ptr %i.a, align 8, !noalias !895
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @857, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @461, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @856)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !895
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc104083d11958c0E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !898
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1754, i64 noundef 14)
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1756, i64 noundef 4, ptr noundef nonnull align 1 @1786, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !898
  store i8 1, ptr %i.b, align 1, !noalias !898
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1757, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1764)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !898
  store i8 12, ptr %i.a, align 1, !noalias !898
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1758, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1764)
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !898
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe25418cc58e9bf2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %.val = load i8, ptr %i.a, align 1, !range !21, !noundef !11
  %i.b = trunc nuw i8 %.val to i1
  %..i = select i1 %i.b, ptr @252, ptr @251
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %..i, i64 noundef 2)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hff37fbd5abc7626fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.d = load i8, ptr %i.c, align 1, !range !22, !alias.scope !902, !noalias !903, !noundef !11
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !904
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.e, ptr %i.b, align 8, !noalias !904
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1573, i64 noundef 11, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1572)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !904
  br label %"_ZN72_$LT$jiff..shared..posix..PosixRuleError$u20$as$u20$core..fmt..Debug$GT$3fmt17h233372dccb797ab9E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !904
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.g, ptr %i.a, align 8, !noalias !904
  %i.h = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1574, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1572)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !904
  br label %"_ZN72_$LT$jiff..shared..posix..PosixRuleError$u20$as$u20$core..fmt..Debug$GT$3fmt17h233372dccb797ab9E.exit"

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1575, i64 noundef 11), !noalias !902
  br label %"_ZN72_$LT$jiff..shared..posix..PosixRuleError$u20$as$u20$core..fmt..Debug$GT$3fmt17h233372dccb797ab9E.exit"

"_ZN72_$LT$jiff..shared..posix..PosixRuleError$u20$as$u20$core..fmt..Debug$GT$3fmt17h233372dccb797ab9E.exit": ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h05773bf37ecd02fcE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  %i.b = tail call fastcc noundef zeroext i1 @"_ZN4jiff6shared5posix90_$LT$impl$u20$core..fmt..Display$u20$for$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$3fmt17h6730636a83689674E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1224d959ad91f1d2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.b = tail call noundef zeroext i1 @"_ZN68_$LT$jiff..shared..tzif..CountKind$u20$as$u20$core..fmt..Display$GT$3fmt17h5949c181efb458cbE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1ccec5baee4d50acE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !align !13, !noundef !11
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h86a74548b47b7896E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !909
  store ptr @1588, ptr %i.b, align 8, !noalias !909
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !909
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !909
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !910
  store ptr @1590, ptr %i.a, align 8, !noalias !909
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !909
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !909
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !909
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !909
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !909
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h905fc6d6d7913bc8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !19, !noundef !11
  %i.b = tail call noundef zeroext i1 @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i8$GT$3fmt17he67a9a27fb434c67E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hbc5c80a0899e469bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h6f85577362b4b089E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h6c6a42330d76a63bE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i16$GT$3fmt17h7592aefdd616e2d0E"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h87b09c28c51da36cE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17h807783f8c7bd8a88E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h27e1f960e92162ceE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h50c0f8c81bb6c463E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hd7ec11e909e70495E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i64$GT$3fmt17h778b5cc29539c6d9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h2d622e356fdc0336E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17ha6e643308d5a4d96E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f
end_hunk_0
begin_hunk_1_@"_ZN61_$LT$jiff..error..ErrorKind$u20$as$u20$core..fmt..Display$GT$3fmt17h6a3e35b3af105e84E"
define noundef zeroext i1 @"_ZN61_$LT$jiff..error..ErrorKind$u20$as$u20$core..fmt..Display$GT$3fmt17h6a3e35b3af105e84E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = load i8, ptr %0, align 8, !range !51, !noundef !11 ; 3 uses
  %i.k = icmp ne i8 %i.j, 10
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i8 %i.j, -4
  %i.m = icmp samesign ugt i8 %i.j, 3
  %narrow = select i1 %i.m, i8 %i.l, i8 6
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.h
    i8 5, label %bb.k
    i8 6, label %bb.l
    i8 7, label %bb.m
    i8 8, label %bb.n
    i8 9, label %bb.o
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.ab
    i8 21, label %bb.ac
    i8 22, label %bb.ad
    i8 23, label %bb.ae
    i8 24, label %bb.af
    i8 25, label %bb.ag
    i8 26, label %bb.ah
    i8 27, label %bb.ai
    i8 28, label %bb.al
    i8 29, label %bb.am
    i8 30, label %bb.an
    i8 31, label %bb.ao
    i8 32, label %bb.ap
    i8 34, label %bb.as
    i8 36, label %bb.au
    i8 37, label %bb.av
    i8 38, label %bb.aw
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12031)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !12031, !noalias !12032, !nonnull !11, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !12031, !noalias !12032, !noundef !11
  %i.r = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !12031
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = tail call noundef zeroext i1 @"_ZN65_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Display$GT$3fmt17hae395bb18b528f3aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = tail call noundef zeroext i1 @"_ZN64_$LT$jiff..error..civil..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h6de1374f45efc782E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12033)
  %i.w = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @994, i64 noundef 45), !noalias !12033
  br i1 %i.w, label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit", label %switch.lookup

switch.lookup:                                    ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !range !22, !alias.scope !12033, !noalias !12034, !noundef !11 ; 2 uses
  %i.z = zext nneg i8 %i.y to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE", i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.aa = zext nneg i8 %i.y to i64
  %switch.gep13 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.681", i64 %i.aa
  %switch.load14 = load ptr, ptr %switch.gep13, align 8
  %i.ab = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load14, i64 noundef %switch.ext, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !12033
  br i1 %i.ab, label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit", label %bb.g

default.unreachable:                              ; preds = %bb.y
  unreachable

bb.g:                                             ; preds = %switch.lookup
  %i.ac = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @998, i64 noundef 16), !noalias !12033
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12035)
  %i.ae = load i8, ptr %i.ad, align 1, !range !21, !alias.scope !12035, !noalias !12036, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @867, i64 noundef 39), !noalias !12035
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.j:                                             ; preds = %bb.h
  %i.ah = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @866, i64 noundef 34), !noalias !12035
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12038
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !12037, !noalias !12039, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !12037, !noalias !12039, !noundef !11
  store ptr %i.aj, ptr %i.i, align 8, !noalias !12038
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.al, ptr %i.am, align 8, !noalias !12038
  %i.an = call noundef zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !12037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12038
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.l:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @"_ZN62_$LT$jiff..error..fmt..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h24367f7c7b6f4abbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.m:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aq = tail call noundef zeroext i1 @"_ZN72_$LT$jiff..error..fmt..friendly..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h43a9f35b46fa77b2E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.n:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.as = tail call noundef zeroext i1 @"_ZN70_$LT$jiff..error..fmt..offset..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hbe86c25a20796303E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.o:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.au = tail call noundef zeroext i1 @"_ZN71_$LT$jiff..error..fmt..rfc2822..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf09732ed8c1b5e38E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(3) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.p:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aw = tail call noundef zeroext i1 @"_ZN71_$LT$jiff..error..fmt..rfc9557..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h8f3dd05cbdd4861fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.q:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = tail call noundef zeroext i1 @"_ZN72_$LT$jiff..error..fmt..temporal..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf71d012ccec1c06bE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.r:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ba = tail call noundef zeroext i1 @"_ZN68_$LT$jiff..error..fmt..util..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h32bfa56c4b6d3aafE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.s:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = tail call noundef zeroext i1 @"_ZN71_$LT$jiff..error..fmt..strtime..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h29d13180ae1e5d92E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.t:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.be = tail call noundef zeroext i1 @"_ZN77_$LT$jiff..error..fmt..strtime..FormatError$u20$as$u20$core..fmt..Display$GT$3fmt17h5052cf3a96912db6E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.u:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = tail call noundef zeroext i1 @"_ZN76_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h188e427a3f9e07b6E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.v:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = tail call noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.w:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = tail call noundef zeroext i1 @"_ZN76_$LT$jiff..shared..util..itime..RangeError$u20$as$u20$core..fmt..Display$GT$3fmt17h0f8570c9850b0770E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.x:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12040)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12041
  store ptr %i.bl, ptr %i.h, align 8, !noalias !12041
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f5eabe1a22f526cE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12041
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.bm, align 8, !alias.scope !12040, !noalias !12042
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !12040, !noalias !12042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12043
  store ptr @1562, ptr %i.g, align 8, !noalias !12041
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12041
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12041
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !12041
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !12041
  %i.bn = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !12044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12041
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.y:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12046)
  %i.bp = load i8, ptr %i.bo, align 1, !range !22, !alias.scope !12045, !noalias !12046, !noundef !11
  switch i8 %i.bp, label %default.unreachable [
    i8 0, label %bb.z
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13.i
    i8 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.bq, align 8, !alias.scope !12046, !noalias !12045
  %.val7.i = load ptr, ptr %1, align 8, !alias.scope !12046, !noalias !12045
  %i.br = getelementptr inbounds nuw i8, ptr %.val8.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !11, !noalias !12047, !nonnull !11
  %i.bt = tail call noundef zeroext i1 %i.bs(ptr noundef nonnull align 1 %.val7.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12047, !inline_history !12048
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13.i: ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 2, !alias.scope !12045, !noalias !12046, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12049
  store i8 %i.bv, ptr %i.e, align 1, !noalias !12049
  store ptr %i.e, ptr %i.f, align 8, !noalias !12049
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !12049
  %.val5.i = load ptr, ptr %1, align 8, !alias.scope !12046, !noalias !12045, !nonnull !11, !noundef !11
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6.i = load ptr, ptr %i.bw, align 8, !alias.scope !12046, !noalias !12045, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12050
  store ptr @1424, ptr %i.d, align 8, !noalias !12049
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !12049
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.721.0..sroa_idx.i, align 8, !noalias !12049
  %.sroa.822.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.822.0..sroa_idx.i, align 8, !noalias !12049
  %.sroa.1023.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.1023.0..sroa_idx.i, align 8, !noalias !12049
  %i.bx = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val5.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val6.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !12050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12049
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i = load ptr, ptr %i.by, align 8, !alias.scope !12046, !noalias !12045
  %.val.i1 = load ptr, ptr %1, align 8, !alias.scope !12046, !noalias !12045
  %i.bz = getelementptr inbounds nuw i8, ptr %.val4.i, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !11, !noalias !12051, !nonnull !11
  %i.cb = tail call noundef zeroext i1 %i.ca(ptr noundef nonnull align 1 %.val.i1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1425, i64 noundef 43), !noalias !12051, !inline_history !12048
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ab:                                            ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cd = tail call noundef zeroext i1 @"_ZN76_$LT$jiff..error..util..ParseFractionError$u20$as$u20$core..fmt..Display$GT$3fmt17h5680375a439f48e8E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ac:                                            ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cf = tail call noundef zeroext i1 @"_ZN78_$LT$jiff..shared..posix..PosixTimeZoneError$u20$as$u20$core..fmt..Display$GT$3fmt17ha68b1b52aecb0a1bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ad:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ch = tail call noundef zeroext i1 @"_ZN80_$LT$jiff..error..util..RoundingIncrementError$u20$as$u20$core..fmt..Display$GT$3fmt17he607232d54640d03E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ae:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cj = tail call noundef zeroext i1 @"_ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.af:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cl = tail call noundef zeroext i1 @"_ZN63_$LT$jiff..error..span..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h6703f9d836e4ff3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ag:                                            ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cn = tail call noundef zeroext i1 @"_ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(3) %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ah:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cp = tail call noundef zeroext i1 @"_ZN72_$LT$jiff..util..b..SpecialBoundsError$u20$as$u20$core..fmt..Display$GT$3fmt17h1321e7223a7e301fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.co, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ai:                                            ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12052)
  %i.cr = load i8, ptr %i.cq, align 1, !range !21, !alias.scope !12052, !noalias !12053, !noundef !11
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ct = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @955, i64 noundef 32), !noalias !12052
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ak:                                            ; preds = %bb.ai
  %i.cu = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @954, i64 noundef 36), !noalias !12052
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.al:                                            ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = tail call noundef zeroext i1 @"_ZN72_$LT$jiff..error..tz..ambiguous..Error$u20$as$u20$core..fmt..Display$GT$3fmt17ha634e5e5b964d8eaE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cv, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.am:                                            ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = tail call noundef zeroext i1 @"_ZN65_$LT$jiff..error..tz..db..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h5db28743ac315beaE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.an:                                            ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.da = tail call noundef zeroext i1 @"_ZN75_$LT$jiff..error..tz..concatenated..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h8ae8bcaa5d4ee2afE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.cz, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ao:                                            ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = tail call noundef zeroext i1 @"_ZN69_$LT$jiff..error..tz..offset..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h93b21f8cdfc01738E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ap:                                            ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12054)
  %i.de = load i8, ptr %i.dd, align 1, !range !21, !alias.scope !12054, !noalias !12055, !noundef !11
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dg = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @957, i64 noundef 30), !noalias !12054
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ar:                                            ; preds = %bb.ap
  %i.dh = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @956, i64 noundef 63), !noalias !12054
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.as:                                            ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12057)
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !12056, !noalias !12057, !align !13, !noundef !11 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.at, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i

bb.at:                                            ; preds = %bb.as
  %i.dl = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1407, i64 noundef 30), !noalias !12056
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i: ; preds = %bb.as
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12058
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !12056, !noalias !12057, !noundef !11
  store ptr %i.dj, ptr %i.c, align 8, !noalias !12058
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !noalias !12058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12058
  store ptr %i.c, ptr %i.b, align 8, !noalias !12058
  %.sroa.43.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.43.0..sroa_idx.i5, align 8, !noalias !12058
  %.val.i6 = load ptr, ptr %1, align 8, !alias.scope !12057, !noalias !12056, !nonnull !11, !noundef !11
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i7 = load ptr, ptr %i.dp, align 8, !alias.scope !12057, !noalias !12056, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12059
  store ptr @1406, ptr %i.a, align 8, !noalias !12058
  %.sroa.5.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx.i8, align 8, !noalias !12058
  %.sroa.7.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i9, align 8, !noalias !12058
  %.sroa.8.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i10, align 8, !noalias !12058
  %.sroa.10.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i11, align 8, !noalias !12058
  %i.dq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4.i7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12058
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.au:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ds = tail call noundef zeroext i1 @"_ZN68_$LT$jiff..shared..tzif..TzifError$u20$as$u20$core..fmt..Display$GT$3fmt17hbf41e9acb7913402E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dr, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.av:                                            ; preds = %bb.a
  %i.dt = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @558, i64 noundef 18)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.aw:                                            ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dv = tail call noundef zeroext i1 @"_ZN64_$LT$jiff..error..zoned..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf248ac896a375958E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.du, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit": ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i, %bb.at, %bb.ar, %bb.aq, %bb.ak, %bb.aj, %bb.aa, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13.i, %bb.z, %bb.j, %bb.i, %bb.g, %switch.lookup, %bb.f, %bb.aw, %bb.av, %bb.au, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.r, %bb.c ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.dv, %bb.aw ], [ true, %switch.lookup ], [ %i.an, %bb.k ], [ %i.ao, %bb.l ], [ %i.aq, %bb.m ], [ %i.as, %bb.n ], [ %i.au, %bb.o ], [ %i.aw, %bb.p ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bc, %bb.s ], [ %i.be, %bb.t ], [ %i.bg, %bb.u ], [ %i.bi, %bb.v ], [ %i.bk, %bb.w ], [ %i.bn, %bb.x ], [ %i.ah, %bb.j ], [ %i.cd, %bb.ab ], [ %i.cf, %bb.ac ], [ %i.ch, %bb.ad ], [ %i.cj, %bb.ae ], [ %i.cl, %bb.af ], [ %i.cn, %bb.ag ], [ %i.cp, %bb.ah ], [ %i.bt, %bb.z ], [ %i.cw, %bb.al ], [ %i.cy, %bb.am ], [ %i.da, %bb.an ], [ %i.dc, %bb.ao ], [ %i.cu, %bb.ak ], [ %i.dh, %bb.ar ], [ %i.ds, %bb.au ], [ %i.dt, %bb.av ], [ %i.ac, %bb.g ], [ true, %bb.f ], [ %i.ag, %bb.i ], [ %i.cb, %bb.aa ], [ %i.bx, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13.i ], [ %i.ct, %bb.aj ], [ %i.dg, %bb.aq ], [ %i.dl, %bb.at ], [ %i.dq, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN61_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe69cc420421680fE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = load i32, ptr %0, align 4, !noundef !11  ; 5 uses
  %i.h = icmp slt i32 %i.g, 0
  %spec.select = select i1 %i.h, ptr @190, ptr inttoptr (i64 1 to ptr)
  %.lobit = lshr i32 %i.g, 31
  %spec.select24 = zext nneg i32 %.lobit to i64
  store ptr %spec.select, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select24, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = sdiv i32 %i.g, 3600
  %i.k = trunc i32 %i.j to i8
  %.sroa.0.0 = tail call i8 @llvm.abs.i8(i8 %i.k, i1 false)
  store i8 %.sroa.0.0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = sdiv i32 %i.g, 60
  %i.m = srem i32 %i.l, 60                        ; 2 uses
  %i.n = trunc nsw i32 %i.m to i8                 ; 2 uses
  %i.o = icmp slt i32 %i.m, 0
  %i.p = sub nsw i8 0, %i.n
  %.sroa.01.0 = select i1 %i.o, i8 %i.p, i8 %i.n
  store i8 %.sroa.01.0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = srem i32 %i.g, 60                        ; 2 uses
  %i.r = trunc nsw i32 %i.q to i8                 ; 2 uses
  %i.s = icmp slt i32 %i.q, 0
  %i.t = sub nsw i8 0, %i.r
  %.sroa.02.0 = select i1 %i.s, i8 %i.t, i8 %i.r
  store i8 %.sroa.02.0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.45.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.u, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E", ptr %.sroa.49.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.v, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_1
begin_hunk_2_@"_ZN71_$LT$jiff..error..fmt..rfc2822..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf09732ed8c1b5e38E":bb.a

bb.b:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1280, i64 noundef 73)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.c:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1281, i64 noundef 73)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.d:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1282, i64 noundef 44)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.e:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1283, i64 noundef 44)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.f:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1284, i64 noundef 48)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.g:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1285, i64 noundef 82)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.h:                                             ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1286, i64 noundef 88)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.i:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1287, i64 noundef 47)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.j:                                             ; preds = %bb.a
  %i.ag = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1288, i64 noundef 49)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.k:                                             ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1289, i64 noundef 55)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.l:                                             ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1290, i64 noundef 101)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.m:                                             ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1291, i64 noundef 49)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.n:                                             ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1292, i64 noundef 54)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.o:                                             ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1293, i64 noundef 53)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.p:                                             ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1294, i64 noundef 58)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !41, !noundef !11
  store i8 %i.ao, ptr %i.w, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !range !41, !noundef !11
  store i8 %i.aq, ptr %i.v, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.w, ptr %i.u, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE", ptr %.sroa.427.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.ar, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @"_ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val49 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val50 = load ptr, ptr %i.as, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12413
  store ptr @1297, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.at = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val50, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !12413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.q:                                             ; preds = %bb.a
  %i.au = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1298, i64 noundef 12)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.r:                                             ; preds = %bb.a
  %i.av = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1299, i64 noundef 85)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.s:                                             ; preds = %bb.a
  %i.aw = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1300, i64 noundef 93)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit55: ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.ay, ptr %i.s, align 1
  store ptr %i.s, ptr %i.t, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.423.0..sroa_idx, align 8
  %.val47 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48 = load ptr, ptr %i.az, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12414
  store ptr @1303, ptr %i.f, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.587.0..sroa_idx, align 8
  %.sroa.788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.t, ptr %.sroa.788.0..sroa_idx, align 8
  %.sroa.889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.889.0..sroa_idx, align 8
  %.sroa.1090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.1090.0..sroa_idx, align 8
  %i.ba = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val47, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val48, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !12414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.t:                                             ; preds = %bb.a
  %i.bb = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1304, i64 noundef 67)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.u:                                             ; preds = %bb.a
  %i.bc = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1305, i64 noundef 19)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.v:                                             ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1306, i64 noundef 50)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.w:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1307, i64 noundef 52)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.x:                                             ; preds = %bb.a
  %i.bf = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1308, i64 noundef 43)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.y:                                             ; preds = %bb.a
  %i.bg = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1309, i64 noundef 45)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.z:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1310, i64 noundef 52)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.aa:                                            ; preds = %bb.a
  %i.bi = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1311, i64 noundef 65)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit60: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !11
  store i8 %i.bk, ptr %i.r, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E", ptr %.sroa.419.0..sroa_idx, align 8
  %.val45 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val46 = load ptr, ptr %i.bl, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12415
  store ptr @1313, ptr %i.e, align 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.593.0..sroa_idx, align 8
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.q, ptr %.sroa.794.0..sroa_idx, align 8
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.895.0..sroa_idx, align 8
  %.sroa.1096.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.1096.0..sroa_idx, align 8
  %i.bm = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val45, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val46, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !12415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.ab:                                            ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val44 = load ptr, ptr %i.bn, align 8
  %.val43 = load ptr, ptr %1, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val44, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !11, !noalias !12416, !nonnull !11
  %i.bq = tail call noundef zeroext i1 %i.bp(ptr noundef nonnull align 1 %.val43, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1314, i64 noundef 104), !noalias !12416, !inline_history !79
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit70: ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !11
  store i8 %i.bu, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 %i.bs, ptr %i.o, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.415.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.bv, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E", ptr %.sroa.435.0..sroa_idx, align 8
  %.val41 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val42 = load ptr, ptr %i.bw, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12417
  store ptr @1316, ptr %i.d, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 3, ptr %.sroa.5105.0..sroa_idx, align 8
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.n, ptr %.sroa.7106.0..sroa_idx, align 8
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 2, ptr %.sroa.8107.0..sroa_idx, align 8
  %.sroa.10108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10108.0..sroa_idx, align 8
  %i.bx = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val42, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !12417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit75: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !noundef !11
  store i8 %i.bz, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val39 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val40 = load ptr, ptr %i.ca, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12418
  store ptr @1318, ptr %i.c, align 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.5111.0..sroa_idx, align 8
  %.sroa.7112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.7112.0..sroa_idx, align 8
  %.sroa.8113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8113.0..sroa_idx, align 8
  %.sroa.10114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10114.0..sroa_idx, align 8
  %i.cb = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val40, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit80: ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %i.cd, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val37 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.ce, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12419
  store ptr @1321, ptr %i.b, align 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.5117.0..sroa_idx, align 8
  %.sroa.7118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.7118.0..sroa_idx, align 8
  %.sroa.8119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8119.0..sroa_idx, align 8
  %.sroa.10120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10120.0..sroa_idx, align 8
  %i.cf = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val38, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit85: ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.ch, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val36 = load ptr, ptr %i.ci, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12420
  store ptr @1323, ptr %i.a, align 8
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5123.0..sroa_idx, align 8
  %.sroa.7124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %.sroa.7124.0..sroa_idx, align 8
  %.sroa.8125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8125.0..sroa_idx, align 8
  %.sroa.10126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10126.0..sroa_idx, align 8
  %i.cj = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val36, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.ac:                                            ; preds = %bb.a
  %i.ck = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1324, i64 noundef 37)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.ad:                                            ; preds = %bb.a
  %i.cl = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1325, i64 noundef 56)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.ae:                                            ; preds = %bb.a
  %i.cm = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1326, i64 noundef 113)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.af:                                            ; preds = %bb.a
  %i.cn = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1327, i64 noundef 110)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

bb.ag:                                            ; preds = %bb.a
  %i.co = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1328, i64 noundef 38)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit65: ; preds = %bb.ab, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit85, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit80, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit75, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit70, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit60, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit55, %bb.s, %bb.r, %bb.q, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.y, %bb.b ], [ %i.z, %bb.c ], [ %i.aa, %bb.d ], [ %i.ab, %bb.e ], [ %i.ac, %bb.f ], [ %i.ad, %bb.g ], [ %i.ae, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ], [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.aj, %bb.m ], [ %i.ak, %bb.n ], [ %i.al, %bb.o ], [ %i.am, %bb.p ], [ %i.at, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.au, %bb.q ], [ %i.av, %bb.r ], [ %i.aw, %bb.s ], [ %i.ba, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit55 ], [ %i.bb, %bb.t ], [ %i.bc, %bb.u ], [ %i.bd, %bb.v ], [ %i.be, %bb.w ], [ %i.bf, %bb.x ], [ %i.bg, %bb.y ], [ %i.bh, %bb.z ], [ %i.bi, %bb.aa ], [ %i.bm, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit60 ], [ %i.co, %bb.ag ], [ %i.bx, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit70 ], [ %i.cb, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit75 ], [ %i.cf, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit80 ], [ %i.cj, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit85 ], [ %i.ck, %bb.ac ], [ %i.cl, %bb.ad ], [ %i.cm, %bb.ae ], [ %i.cn, %bb.af ], [ %i.bq, %bb.ab ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..error..fmt..rfc9557..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h8f3dd05cbdd4861fE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = load i8, ptr %0, align 1, !range !45, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  switch i8 %i.s, label %default.unreachable90 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i8 7, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39
    i8 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44
    i8 9, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49
    i8 10, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit54
    i8 11, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit59
    i8 12, label %bb.h
    i8 13, label %bb.i
  ]

default.unreachable90:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1329, i64 noundef 109)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1330, i64 noundef 98)
end_hunk_2
begin_hunk_3_@"_ZN71_$LT$jiff..error..fmt..strtime..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h29d13180ae1e5d92E":bb.a
bb.p:                                             ; preds = %bb.a
  %i.ct = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1387, i64 noundef 31)
  br label %bb.z

bb.q:                                             ; preds = %bb.a
  %i.cu = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1388, i64 noundef 36)
  br label %bb.z

bb.r:                                             ; preds = %bb.a
  %i.cv = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 41)
  br label %bb.z

bb.s:                                             ; preds = %bb.a
  %i.cw = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1390, i64 noundef 34)
  br label %bb.z

bb.t:                                             ; preds = %bb.a
  %i.cx = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1391, i64 noundef 91)
  br label %bb.z

bb.u:                                             ; preds = %bb.a
  %i.cy = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1392, i64 noundef 31)
  br label %bb.z

bb.v:                                             ; preds = %bb.a
  %i.cz = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1393, i64 noundef 27)
  br label %bb.z

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit127: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !11, !align !13, !noundef !11
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !11
  store ptr %i.db, ptr %i.q, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.dd, ptr %i.de, align 8
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN64_$LT$jiff..util..escape..Bytes$u20$as$u20$core..fmt..Display$GT$3fmt17h52b264184d91b88dE", ptr %.sroa.411.0..sroa_idx, align 8
  %.val63 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val64 = load ptr, ptr %i.df, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12472
  store ptr @1396, ptr %i.c, align 8
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5187.0..sroa_idx, align 8
  %.sroa.7188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.r, ptr %.sroa.7188.0..sroa_idx, align 8
  %.sroa.8189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8189.0..sroa_idx, align 8
  %.sroa.10190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10190.0..sroa_idx, align 8
  %i.dg = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val63, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val64, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.z

bb.w:                                             ; preds = %bb.a
  %i.dh = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1397, i64 noundef 52)
  br label %bb.z

bb.x:                                             ; preds = %bb.a
  %i.di = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1398, i64 noundef 78)
  br label %bb.z

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit132: ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %i.dk, ptr %i.m, align 1
  store ptr %i.m, ptr %i.n, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val61 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val62 = load ptr, ptr %i.dl, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12473
  store ptr @1401, ptr %i.b, align 8
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.5199.0..sroa_idx, align 8
  %.sroa.7200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.n, ptr %.sroa.7200.0..sroa_idx, align 8
  %.sroa.8201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8201.0..sroa_idx, align 8
  %.sroa.10202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10202.0..sroa_idx, align 8
  %i.dm = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val61, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val62, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.z

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit137: ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 %i.do, ptr %i.o, align 1
  store ptr %i.o, ptr %i.p, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val60 = load ptr, ptr %i.dp, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12474
  store ptr @1402, ptr %i.a, align 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5193.0..sroa_idx, align 8
  %.sroa.7194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %.sroa.7194.0..sroa_idx, align 8
  %.sroa.8195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8195.0..sroa_idx, align 8
  %.sroa.10196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10196.0..sroa_idx, align 8
  %i.dq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.z

bb.y:                                             ; preds = %bb.a
  %i.dr = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1403, i64 noundef 105)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit137, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit132, %bb.x, %bb.w, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit127, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit122, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit117, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit112, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit107, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit102, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit97, %bb.b, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit92, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.aq, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.ay, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87 ], [ %i.bc, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit92 ], [ %i.bd, %bb.b ], [ %i.bh, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit97 ], [ %i.bi, %bb.c ], [ %i.bj, %bb.d ], [ %i.bk, %bb.e ], [ %i.bl, %bb.f ], [ %i.bm, %bb.g ], [ %i.bn, %bb.h ], [ %i.br, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit102 ], [ %i.bv, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit107 ], [ %i.cc, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit112 ], [ %i.cj, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit117 ], [ %i.ck, %bb.i ], [ %i.cl, %bb.j ], [ %i.cm, %bb.k ], [ %i.cn, %bb.l ], [ %i.co, %bb.m ], [ %i.cp, %bb.n ], [ %i.cq, %bb.o ], [ %i.cs, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit122 ], [ %i.ct, %bb.p ], [ %i.cu, %bb.q ], [ %i.cv, %bb.r ], [ %i.cw, %bb.s ], [ %i.cx, %bb.t ], [ %i.cy, %bb.u ], [ %i.cz, %bb.v ], [ %i.dg, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit127 ], [ %i.dh, %bb.w ], [ %i.di, %bb.x ], [ %i.dm, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit132 ], [ %i.dq, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit137 ], [ %i.dr, %bb.y ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..error..tz..timezone..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hb2cd99063b265dcdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !align !13, !noundef !11 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1407, i64 noundef 30)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  store ptr %i.d, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.j, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12477
  store ptr @1406, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.k, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..error..util..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17hf7510bc79bf2cf4bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load i8, ptr %0, align 1, !range !22, !noundef !11
  switch i8 %i.d, label %default.unreachable31 [
    i8 0, label %bb.b
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13
    i8 2, label %bb.c
  ]

default.unreachable31:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.e, align 8
  %.val7 = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !11, !noalias !12484, !nonnull !11
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 1 %.val7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12484, !inline_history !79
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.j, ptr %i.b, align 1
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val5 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12485
  store ptr @1424, ptr %i.a, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.721.0..sroa_idx, align 8
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.822.0..sroa_idx, align 8
  %.sroa.1023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1023.0..sroa_idx, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val6, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.m, align 8
  %.val = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !11, !noalias !12486, !nonnull !11
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1425, i64 noundef 43), !noalias !12486, !inline_history !79
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c, %bb.b, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13
  %.sroa.0.0.in = phi i1 [ %i.p, %bb.c ], [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13 ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$jiff..fmt..strtime..BrokenDownTime$u20$as$u20$core..fmt..Debug$GT$3fmt17hb23c266b15502fe6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [288 x i8], align 8               ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 94
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 102
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1426, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @1427, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @1427, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @1426, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @1426, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.h, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @1427, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.i, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @1427, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.j, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @1427, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.k, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @1427, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.l, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @1427, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.m, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @1427, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.n, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @1428, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.o, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr @1429, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr %i.p, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr @1430, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr %i.q, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr @1431, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store ptr %0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @1432, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr %i.r, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store ptr @1433, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store ptr %i.a, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr @1434, ptr %i.bb, align 8
  %i.bc = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_fields_finish17h0cfcbb638c0202c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1446, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1445, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.bc
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..shared..posix..MinuteError$u20$as$u20$core..fmt..Display$GT$3fmt17h9b9bbbdf93dde691E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1448, i64 noundef 59)
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1447, i64 noundef 23)
  br i1 %i.d, label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12489
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61), !noalias !12489
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31), !noalias !12489
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.h:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57), !noalias !12489
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit": ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !27, !noundef !11
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..shared..posix..SecondError$u20$as$u20$core..fmt..Display$GT$3fmt17hed50535b504127e7E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_3
begin_hunk_4_@"_ZN72_$LT$jiff..error..fmt..temporal..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf71d012ccec1c06bE":bb.a
  br label %bb.bp

bb.bh:                                            ; preds = %bb.a
  %i.dp = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1542, i64 noundef 43)
  br label %bb.bp

bb.bi:                                            ; preds = %bb.a
  %i.dq = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1543, i64 noundef 42)
  br label %bb.bp

bb.bj:                                            ; preds = %bb.a
  %i.dr = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1544, i64 noundef 43)
  br label %bb.bp

bb.bk:                                            ; preds = %bb.a
  %i.ds = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1545, i64 noundef 48)
  br label %bb.bp

bb.bl:                                            ; preds = %bb.a
  %i.dt = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1546, i64 noundef 44)
  br label %bb.bp

bb.bm:                                            ; preds = %bb.a
  %i.du = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1547, i64 noundef 42)
  br label %bb.bp

bb.bn:                                            ; preds = %bb.a
  %i.dv = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1548, i64 noundef 41)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.a
  %i.dw = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1549, i64 noundef 269)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.t, %bb.b ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.ad, %bb.e ], [ %i.ae, %bb.f ], [ %i.am, %bb.g ], [ %i.an, %bb.h ], [ %i.av, %bb.i ], [ %i.aw, %bb.j ], [ %i.ax, %bb.k ], [ %i.ay, %bb.l ], [ %i.az, %bb.m ], [ %i.bh, %bb.n ], [ %i.bi, %bb.o ], [ %i.bj, %bb.p ], [ %i.bk, %bb.q ], [ %i.bs, %bb.r ], [ %i.bt, %bb.s ], [ %i.bu, %bb.t ], [ %i.bv, %bb.u ], [ %i.bw, %bb.v ], [ %i.bx, %bb.w ], [ %i.by, %bb.x ], [ %i.bz, %bb.y ], [ %i.ca, %bb.z ], [ %i.ci, %bb.aa ], [ %i.cj, %bb.ab ], [ %i.ck, %bb.ac ], [ %i.cl, %bb.ad ], [ %i.cm, %bb.ae ], [ %i.cn, %bb.af ], [ %i.co, %bb.ag ], [ %i.cp, %bb.ah ], [ %i.cq, %bb.ai ], [ %i.cr, %bb.aj ], [ %i.cs, %bb.ak ], [ %i.ct, %bb.al ], [ %i.cu, %bb.am ], [ %i.cv, %bb.an ], [ %i.cw, %bb.ao ], [ %i.cx, %bb.ap ], [ %i.cy, %bb.aq ], [ %i.cz, %bb.ar ], [ %i.da, %bb.as ], [ %i.db, %bb.at ], [ %i.dc, %bb.au ], [ %i.dd, %bb.av ], [ %i.de, %bb.aw ], [ %i.df, %bb.ax ], [ %i.dg, %bb.ay ], [ %i.dh, %bb.az ], [ %i.di, %bb.ba ], [ %i.dj, %bb.bb ], [ %i.dk, %bb.bc ], [ %i.dl, %bb.bd ], [ %i.dm, %bb.be ], [ %i.dn, %bb.bf ], [ %i.do, %bb.bg ], [ %i.dp, %bb.bh ], [ %i.dq, %bb.bi ], [ %i.dr, %bb.bj ], [ %i.ds, %bb.bk ], [ %i.dt, %bb.bl ], [ %i.du, %bb.bm ], [ %i.dv, %bb.bn ], [ %i.dw, %bb.bo ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN72_$LT$jiff..error..fmt..util..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h823d642f5335a027E"(i16 %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error3fmt4util105_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..util..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h87106a6a7216d866E"(i16 %0)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN72_$LT$jiff..error..timestamp..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h5d075a5f165fa409E"(i1 noundef zeroext %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error9timestamp105_$LT$impl$u20$core..convert..From$LT$jiff..error..timestamp..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h7319ec39f69556bbE"(i1 noundef zeroext %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$jiff..error..tz..ambiguous..Error$u20$as$u20$core..fmt..Display$GT$3fmt17ha634e5e5b964d8eaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = load i32, ptr %0, align 8, !range !47, !noundef !11
  switch i32 %i.l, label %default.unreachable47 [
    i32 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i32 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit29
    i32 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit34
  ]

default.unreachable47:                            ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !noundef !11
  store i32 %i.n, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !noundef !11
  store i32 %i.p, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.q, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val23 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12533
  store ptr @1555, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val24, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit29: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4, !noundef !11
  store i32 %i.u, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 8, !noundef !11
  store i32 %i.w, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.43.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.x, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.415.0..sroa_idx, align 8
  %.val21 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.y, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12534
  store ptr @1557, ptr %i.b, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.737.0..sroa_idx, align 8
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.838.0..sroa_idx, align 8
  %.sroa.1039.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1039.0..sroa_idx, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val22, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit34: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aa, ptr %i.d, align 8
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN73_$LT$jiff..tz..timezone..DiagnosticName$u20$as$u20$core..fmt..Display$GT$3fmt17h7549617a6beaaee3E", ptr %.sroa.419.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12535
  store ptr @1559, ptr %i.a, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.743.0..sroa_idx, align 8
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.844.0..sroa_idx, align 8
  %.sroa.1045.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1045.0..sroa_idx, align 8
  %i.ac = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val20, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit34, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit29, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.z, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit29 ], [ %i.ac, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit34 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN72_$LT$jiff..error..tz..posix..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h5e0a2eb754d16612E"(i1 noundef zeroext %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error2tz5posix105_$LT$impl$u20$core..convert..From$LT$jiff..error..tz..posix..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h786b2bf78d45c7eeE"(i1 noundef zeroext %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$jiff..error..util..OsStrUtf8Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3d0d670bd3af4f78E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f5eabe1a22f526cE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12538
  store ptr @1562, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$jiff..shared..posix..WeekdayError$u20$as$u20$core..fmt..Display$GT$3fmt17he81a362aecb53b35E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1587, i64 noundef 93)
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1586, i64 noundef 24)
  br i1 %i.d, label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12541
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61), !noalias !12541
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31), !noalias !12541
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.h:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57), !noalias !12541
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit": ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$jiff..shared..tzif..U32UsizeError$u20$as$u20$core..fmt..Display$GT$3fmt17hedb6a0a80e1092ddE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1588, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12544
  store ptr @1590, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN72_$LT$jiff..util..b..SpanNanoseconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17h41a1b359d9c4a9d7E"() unnamed_addr #14 {
bb.a:
  ret i8 34
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$jiff..util..b..SpecialBoundsError$u20$as$u20$core..fmt..Display$GT$3fmt17h1321e7223a7e301fE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = load i8, ptr %0, align 1, !range !27, !noundef !11
  switch i8 %i.j, label %default.unreachable55 [
    i8 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit37
    i8 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit42
    i8 3, label %bb.b
  ]

default.unreachable55:                            ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @1591, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 26, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i128 -377705023201000000000, ptr %i.h, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i128 253402207200000000000, ptr %i.g, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.411.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.l, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Display$u20$for$u20$i128$GT$3fmt17h5198bb067eb04a3bE", ptr %.sroa.423.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.m, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Display$u20$for$u20$i128$GT$3fmt17h5198bb067eb04a3bE", ptr %.sroa.427.0..sroa_idx, align 8
  %.val31 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12551
  store ptr @1595, ptr %i.c, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 3, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %.sroa.751.0..sroa_idx, align 8
  %.sroa.852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 3, ptr %.sroa.852.0..sroa_idx, align 8
  %.sroa.1053.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1053.0..sroa_idx, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val31, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit37: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @1596, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h2fb6b2129e0605faE", ptr %.sroa.47.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @1597, ptr %i.p, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h2fb6b2129e0605faE", ptr %.sroa.415.0..sroa_idx, align 8
  %.val29 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12552
  store ptr @1599, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit42: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @1600, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.43.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @1601, ptr %i.s, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.419.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12553
  store ptr @1599, ptr %i.a, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.544.0..sroa_idx, align 8
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.745.0..sroa_idx, align 8
  %.sroa.846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.846.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1047.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1602, i64 noundef 69)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit42, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit37, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.o, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit37 ], [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit42 ], [ %i.v, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN72_$LT$jiff..util..b..ZonedDaySeconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17he99fe8dc686dc1b5E"() unnamed_addr #14 {
bb.a:
  ret i8 51
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN73_$LT$$RF$mut$u20$dyn$u20$jiff..fmt..Write$u20$as$u20$jiff..fmt..Write$GT$9write_str17hef3b720a8b0b06a1E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !12, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret { i64, ptr } %i.f
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN73_$LT$jiff..error..tz..offset..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h3d53130fa9836492E"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error2tz6offset106_$LT$impl$u20$core..convert..From$LT$jiff..error..tz..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17hf36be4dc343d11c1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(3) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
end_hunk_4
begin_hunk_5_@"_ZN76_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h188e427a3f9e07b6E":bb.a
  br label %.loopexit

bb.u:                                             ; preds = %bb.a
  %i.ba = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1867, i64 noundef 27)
  br label %.loopexit

bb.v:                                             ; preds = %bb.a
  %i.bb = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1868, i64 noundef 36)
  br label %.loopexit

bb.w:                                             ; preds = %bb.a
  %i.bc = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1869, i64 noundef 34)
  br label %.loopexit

bb.x:                                             ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1870, i64 noundef 42)
  br label %.loopexit

bb.y:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1871, i64 noundef 29)
  br label %.loopexit

bb.z:                                             ; preds = %bb.a
  %i.bf = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1872, i64 noundef 40)
  br label %.loopexit

bb.aa:                                            ; preds = %bb.a
  %i.bg = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1873, i64 noundef 28)
  br label %.loopexit

bb.ab:                                            ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1874, i64 noundef 29)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.a
  %i.bi = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1875, i64 noundef 40)
  br label %.loopexit

bb.ad:                                            ; preds = %bb.a
  %i.bj = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1876, i64 noundef 43)
  br label %.loopexit

bb.ae:                                            ; preds = %bb.a
  %i.bk = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1877, i64 noundef 30)
  br label %.loopexit

bb.af:                                            ; preds = %bb.a
  %i.bl = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1878, i64 noundef 20)
  br label %.loopexit

bb.ag:                                            ; preds = %bb.a
  %i.bm = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1879, i64 noundef 28)
  br label %.loopexit

bb.ah:                                            ; preds = %bb.a
  %i.bn = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1880, i64 noundef 23)
  br label %.loopexit

bb.ai:                                            ; preds = %bb.a
  %i.bo = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1881, i64 noundef 33)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %.peel.next, %bb.ak, %bb.aj, %.loopexit80, %bb.j, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.b ], [ %i.p, %bb.c ], [ %i.q, %bb.d ], [ %i.r, %bb.e ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.v, %bb.i ], [ %i.bo, %bb.ai ], [ true, %.loopexit80 ], [ true, %bb.j ], [ %i.ab, %bb.k ], [ %i.ai, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.am, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39 ], [ %i.aq, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44 ], [ %i.ar, %bb.l ], [ %i.as, %bb.m ], [ %i.at, %bb.n ], [ %i.au, %bb.o ], [ %i.av, %bb.p ], [ %i.aw, %bb.q ], [ %i.ax, %bb.r ], [ %i.ay, %bb.s ], [ %i.az, %bb.t ], [ %i.ba, %bb.u ], [ %i.bb, %bb.v ], [ %i.bc, %bb.w ], [ %i.bd, %bb.x ], [ %i.be, %bb.y ], [ %i.bf, %bb.z ], [ %i.bg, %bb.aa ], [ %i.bh, %bb.ab ], [ %i.bi, %bb.ac ], [ %i.bj, %bb.ad ], [ %i.bk, %bb.ae ], [ %i.bl, %bb.af ], [ %i.bm, %bb.ag ], [ %i.bn, %bb.ah ], [ false, %bb.aj ], [ false, %bb.ak ], [ %i.cb, %.peel.next ], [ %i.cb, %bb.al ]
  ret i1 %.sroa.0.0.shrunk

bb.aj:                                            ; preds = %bb.j
  %.idx = shl nuw nsw i64 %i.z, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %i.bq = icmp eq i64 %i.z, 0
  br i1 %i.bq, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49.peel

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49.peel: ; preds = %bb.aj
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.val28.peel.pre = load ptr, ptr %i.bs, align 8
  %.val.peel.pre = load ptr, ptr %1, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre81 = load i64, ptr %.phi.trans.insert, align 8
  %.pre = load ptr, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.pre, ptr %i.l, align 8
  store i64 %.pre81, ptr %i.br, align 8
  store ptr %i.l, ptr %i.m, align 8
  store ptr @"_ZN64_$LT$jiff..util..escape..Bytes$u20$as$u20$core..fmt..Display$GT$3fmt17h52b264184d91b88dE", ptr %.sroa.422.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12670
  store ptr @87, ptr %i.a, align 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.851.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.bt = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.peel.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28.peel.pre, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12670
  br i1 %i.bt, label %.loopexit80, label %bb.ak

bb.ak:                                            ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bu = icmp eq i64 %i.z, 1
  br i1 %i.bu, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.ak
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %.peel.next

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49: ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bw = load ptr, ptr %.sroa.0.076, align 8, !nonnull !11, !align !13, !noundef !11
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.076, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noundef !11
  store ptr %i.bw, ptr %i.l, align 8
  store i64 %i.by, ptr %i.br, align 8
  store ptr %i.l, ptr %i.m, align 8
  store ptr @"_ZN64_$LT$jiff..util..escape..Bytes$u20$as$u20$core..fmt..Display$GT$3fmt17h52b264184d91b88dE", ptr %.sroa.422.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %.val28 = load ptr, ptr %i.bs, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12670
  store ptr @87, ptr %i.a, align 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.851.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.bz = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12670
  br i1 %i.bz, label %.loopexit80, label %bb.al

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.al
  %.sroa.0.076 = phi ptr [ %i.ca, %bb.al ], [ %i.bv, %.peel.next.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.076, i64 16 ; 2 uses
  %i.cb = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @185, i64 noundef 2) ; 3 uses
  br i1 %i.cb, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49

.loopexit80:                                      ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit

bb.al:                                            ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cc = icmp eq ptr %i.ca, %i.bp
  br i1 %i.cc, label %.loopexit, label %.peel.next, !llvm.loop !12666
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN76_$LT$jiff..error..fmt..temporal..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h041f51442e7b787dE"(i64 %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error3fmt8temporal109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..temporal..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h066cb08cfdffb307E"(i64 %0)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN76_$LT$jiff..error..tz..ambiguous..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h9bffe9db701faa8fE"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error2tz9ambiguous109_$LT$impl$u20$core..convert..From$LT$jiff..error..tz..ambiguous..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17hbd870c9597abeec5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %0)
  ret ptr %i.a
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$jiff..error..tz..zic..disabled..Error$u20$as$u20$core..fmt..Display$GT$3fmt17ha8090be7f45827a5E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #27 {
bb.a:
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1883) #45
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN76_$LT$jiff..error..util..OsStrUtf8Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17he6227d0e9a4aafe0E"(ptr noalias noundef nonnull align 1 %0, i64 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error4util109_$LT$impl$u20$core..convert..From$LT$jiff..error..util..OsStrUtf8Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17hbc75b3b7bb371e61E"(ptr noalias noundef nonnull align 1 %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$jiff..error..util..ParseFractionError$u20$as$u20$core..fmt..Display$GT$3fmt17h5680375a439f48e8E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load i8, ptr %0, align 1, !range !27, !noundef !11
  switch i8 %i.f, label %default.unreachable48 [
    i8 0, label %bb.b
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit19
    i8 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit24
    i8 3, label %bb.c
  ]

default.unreachable48:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.g, align 8
  %.val13 = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val14, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !11, !noalias !12679, !nonnull !11
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1884, i64 noundef 33), !noalias !12679, !inline_history !79
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit19: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @1885, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val11 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12680
  store ptr @1888, ptr %i.b, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.732.0..sroa_idx, align 8
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.833.0..sroa_idx, align 8
  %.sroa.1034.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1034.0..sroa_idx, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit24: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.n, ptr %i.c, align 1
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.o, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12681
  store ptr @1890, ptr %i.a, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.839.0..sroa_idx, align 8
  %.sroa.1040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1040.0..sroa_idx, align 8
  %i.p = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.q, align 8
  %.val = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !11, !noalias !12682, !nonnull !11
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1891, i64 noundef 54), !noalias !12682, !inline_history !79
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c, %bb.b, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit24, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit19
  %.sroa.0.0.in = phi i1 [ %i.t, %bb.c ], [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit19 ], [ %i.p, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit24 ], [ %i.j, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$jiff..fmt..rfc9557..ParsedAnnotations$u20$as$u20$core..fmt..Display$GT$3fmt17hc6ef4f0764535bd5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !22, !noundef !11
  %.not = icmp eq i8 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @"_ZN73_$LT$jiff..fmt..rfc9557..ParsedTimeZone$u20$as$u20$core..fmt..Display$GT$3fmt17h62c56c7c5e11fc51E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Display$GT$3fmt17ha2ae2db3c56dd8e6E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !29, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @"_ZN74_$LT$jiff..shared..posix..HourPosixError$u20$as$u20$core..fmt..Display$GT$3fmt17h33cf4ad6194bacfaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1896, i64 noundef 59)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1897, i64 noundef 59)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @"_ZN71_$LT$jiff..shared..posix..MinuteError$u20$as$u20$core..fmt..Display$GT$3fmt17h9b9bbbdf93dde691E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1898, i64 noundef 59)
  br i1 %i.g, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN71_$LT$jiff..shared..posix..SecondError$u20$as$u20$core..fmt..Display$GT$3fmt17hed50535b504127e7E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.i, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.h, %bb.g ], [ %i.k, %bb.i ], [ true, %bb.f ]
  ret i1 %.sroa.0.0.shrunk

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12686)
  %i.i = load i8, ptr %i.b, align 1, !range !21, !alias.scope !12686, !noalias !12687, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  %..i = select i1 %i.j, ptr @1935, ptr @1934
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %..i, i64 noundef 51), !noalias !12686
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$jiff..shared..posix..WeekOfMonthError$u20$as$u20$core..fmt..Display$GT$3fmt17h1515998c40e6f94fE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1902, i64 noundef 64)
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1901, i64 noundef 30)
  br i1 %i.d, label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12690
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61), !noalias !12690
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31), !noalias !12690
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.h:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57), !noalias !12690
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit": ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$jiff..shared..util..itime..RangeError$u20$as$u20$core..fmt..Display$GT$3fmt17h0f8570c9850b0770E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 2 uses
  %i.h = alloca [2 x i8], align 2                 ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [2 x i8], align 2                 ; 4 uses
  %i.k = alloca [2 x i8], align 2                 ; 2 uses
  %i.l = load i8, ptr %0, align 2, !range !32, !noundef !11
  switch i8 %i.l, label %default.unreachable56 [
    i8 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit37
    i8 6, label %bb.f
    i8 7, label %bb.g
    i8 8, label %bb.h
    i8 9, label %bb.i
    i8 10, label %bb.j
    i8 11, label %bb.k
  ]

default.unreachable56:                            ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i16, ptr %i.m, align 2, !noundef !11 ; 3 uses
  store i16 %i.n, ptr %i.k, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.o = srem i16 %i.n, 25
  %i.p = icmp eq i16 %i.o, 0
  %..i = select i1 %i.p, i16 15, i16 3
  %i.q = and i16 %..i, %i.n
  %i.r = icmp eq i16 %i.q, 0
  %. = select i1 %i.r, i16 366, i16 365
  store i16 %., ptr %i.j, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.s, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val29 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12697
  store ptr @1906, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @1907, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 2, ptr %.sroa.11.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.l
end_hunk_5
