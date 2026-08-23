Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/uuid-1c60e6252c3b02f3.uuid.6fa1d9a388a54494-cgu.0?download=true
inline.NumInlined: 319
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@"_ZN4uuid3fmt59_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Uuid$GT$3fmt17h8aa692a288ddc2f6E":bb.a

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @16, i64 43, ptr nonnull align 1 %i.a, ptr nonnull align 8 @15, ptr nonnull align 8 @31) #25
  unreachable

"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17hed46b2630d3b74eeE.exit": ; preds = %bb.a
  call fastcc void @_ZN4uuid3fmt17format_hyphenated17hc0a47aa8ae7ba26cE(ptr noalias align 1 %i.b, ptr readonly align 1 %0, i1 zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.e, ptr noundef nonnull align 1 dereferenceable(36) %i.b, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 %i.e, i64 36)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17hed46b2630d3b74eeE"(ptr nofree readonly align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [36 x i8], align 1                ; 4 uses
  %i.c = alloca [36 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hbe5e3233d5ba0df1E"(i64 0, i64 36, ptr nonnull align 1 %i.c, i64 36, ptr nonnull align 8 @30) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = icmp ne i64 %i.f, 36
  %i.h = icmp eq ptr %i.e, null
  %i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hc3b627a9e4e2bc07E.exit"

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @16, i64 43, ptr nonnull align 1 %i.a, ptr nonnull align 8 @15, ptr nonnull align 8 @31) #25
  unreachable

"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hc3b627a9e4e2bc07E.exit": ; preds = %bb.a
  call fastcc void @_ZN4uuid3fmt17format_hyphenated17hc0a47aa8ae7ba26cE(ptr noalias align 1 %i.b, ptr readonly align 1 %0, i1 zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.e, ptr noundef nonnull align 1 dereferenceable(36) %i.b, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 %i.e, i64 36)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN4uuid3fmt62_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Variant$GT$3fmt17hdb381b6baa45df93E"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !10, !nonnull !10 ; 4 uses
  switch i8 %i.a, label %bb.b [
    i8 0, label %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit4
    i8 2, label %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit8
    i8 3, label %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit12
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit: ; preds = %bb.a
  %i.g = tail call zeroext i1 %i.f(ptr align 1 %i.d, ptr nonnull align 1 @32, i64 3), !inline_history !11
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit4: ; preds = %bb.a
  %i.h = tail call zeroext i1 %i.f(ptr align 1 %i.d, ptr nonnull align 1 @33, i64 7), !inline_history !11
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit8: ; preds = %bb.a
  %i.i = tail call zeroext i1 %i.f(ptr align 1 %i.d, ptr nonnull align 1 @34, i64 9), !inline_history !11
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit12: ; preds = %bb.a
  %i.j = tail call zeroext i1 %i.f(ptr align 1 %i.d, ptr nonnull align 1 @35, i64 6), !inline_history !11
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit12, %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit8, %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit4, %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit ], [ %i.h, %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit4 ], [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit8 ], [ %i.j, %_ZN4core3fmt9Formatter9write_fmt17hd13e3fba35a5207cE.exit12 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 1 ptr @_ZN4uuid3fmt6Braced7as_uuid17hf92b7ed4a8fb08faE(ptr nofree readnone returned align 1 captures(ret: address, provenance) %0) unnamed_addr #8 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid3fmt6Braced9from_uuid17hbbeeb9eb341c45d4E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid3fmt6Braced9into_uuid17h5669996d7c494139E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 1 ptr @_ZN4uuid3fmt6Simple7as_uuid17h38b0b74850ea27c3E(ptr nofree readnone returned align 1 captures(ret: address, provenance) %0) unnamed_addr #8 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid3fmt6Simple9from_uuid17heff33cd949d7391dE(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid3fmt6Simple9into_uuid17hdc90bfcdd41c9421E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid3fmt89_$LT$impl$u20$core..convert..From$LT$uuid..Uuid$GT$$u20$for$u20$alloc..string..String$GT$4from17he00a9c89392a5ff3E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hf2264592dd96d488E"(ptr sret([24 x i8]) align 8 %0, ptr readonly align 1 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i128 @_ZN4uuid4Uuid10to_u128_le17h0bf9e5956e439e0aE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload = load i128, ptr %0, align 1
  ret i128 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN4uuid4Uuid11as_u64_pair17h65e6419e6b29057dE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload.i = load i128, ptr %0, align 1
  %i.a = tail call i128 @llvm.bswap.i128(i128 %.sroa.0.0.copyload.i) ; 2 uses
  %i.b = lshr i128 %i.a, 64
  %i.c = trunc nuw i128 %i.b to i64
  %i.d = trunc i128 %i.a to i64
  %i.e = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %i.d, 1
  ret { i64, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i56 0, -254) i56 @_ZN4uuid4Uuid11get_node_id17h3d95100f6b8870ffE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1
  %i.c = lshr i8 %i.b, 4
  switch i8 %i.c, label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit.thread [
    i8 6, label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit
    i8 1, label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit
  ]

_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit: ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 1
  %i.j = zext i32 %i.i to i48
  %i.k = shl nuw i48 %i.j, 16
  %.sroa.2.0.insert.ext = zext i8 %i.g to i48
  %.sroa.2.0.insert.shift = shl nuw nsw i48 %.sroa.2.0.insert.ext, 8
  %.sroa.04.0.insert.ext = zext i8 %i.e to i48
  %.sroa.2.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.shift, %.sroa.04.0.insert.ext
  %.sroa.04.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.insert, %i.k
  br label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit.thread

_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit.thread: ; preds = %bb.a, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit
  %.sroa.3.sroa.0.0 = phi i48 [ %.sroa.04.0.insert.insert, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 1, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ 0, %bb.a ]
  %.sroa.3.0.insert.ext = zext i48 %.sroa.3.sroa.0.0 to i56
  %.sroa.3.0.insert.shift = shl nuw i56 %.sroa.3.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i56
  %.sroa.0.0.insert.insert = or disjoint i56 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i56 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i8 0, 4) i8 @_ZN4uuid4Uuid11get_variant17h58307e5e9ab258d5E(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i8 %i.b, -64
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i8 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i8 %i.b, -32
  %spec.select = select i1 %i.e, i8 2, i8 3
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i8 0, 17) i8 @_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1
  %i.c = lshr i8 %i.b, 4                          ; 2 uses
  switch i8 %i.c, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.c
    i8 4, label %bb.c
    i8 5, label %bb.c
    i8 6, label %bb.c
    i8 7, label %bb.c
    i8 8, label %bb.c
    i8 15, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i128, ptr %0, align 1
  %i.d = icmp eq i128 %.sroa.0.0.copyload.i.i, 0
  %spec.select = select i1 %i.d, i8 0, i8 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i2 = load i128, ptr %0, align 1
  %i.e = icmp eq i128 %.sroa.0.0.copyload.i.i2, -1
  %spec.select1 = select i1 %i.e, i8 15, i8 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i8 [ %spec.select, %bb.b ], [ 16, %bb.a ], [ %i.c, %bb.c ], [ %spec.select1, %bb.d ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid11to_bytes_le17h83c41f019fdc72f7E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = load <16 x i8>, ptr %1, align 1
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.b, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid12to_fields_le17h59a72c0e39968116E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 1 %1) unnamed_addr #9 personality ptr @rust_eh_personality {
"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h09104b2b5f6744ddE.exit":
  %i.a = load i32, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load <2 x i16>, ptr %i.b, align 1
  store i32 %i.a, ptr %0, align 8
  store <2 x i16> %i.e, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4uuid4Uuid13encode_buffer17hb6fec52691e69c93E(ptr nofree writeonly sret([45 x i8]) align 1 captures(none) initializes((0, 45)) %0) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %0, i8 0, i64 45, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid13get_timestamp17h6ae1faac96e620f3E(ptr nofree writeonly sret([48 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = lshr i8 %i.b, 4
  switch i8 %i.c, label %select.unfold [
    i8 6, label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit
    i8 1, label %bb.b
    i8 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 15
  %i.e = zext nneg i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 48
  %i.k = or disjoint i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 40
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 32
  %i.u = or disjoint i64 %i.p, %i.t
  %i.v = load i8, ptr %1, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 24
  %i.y = or disjoint i64 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 16
  %i.ad = or disjoint i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 8
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = or i64 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i16
  %i.ar = shl nuw nsw i16 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i16
  %i.av = or disjoint i16 %i.ar, %i.au
  %i.aw = add nsw i64 %i.am, -122192928000000000  ; 2 uses
  %i.ax = udiv i64 %i.aw, 10000000
  %i.ay = urem i64 %i.aw, 10000000
  br label %select.unfold.sink.split

_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit: ; preds = %bb.a
  %i.az = load i8, ptr %1, align 1
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 52
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 44
  %i.bg = or disjoint i64 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 36
  %i.bl = or disjoint i64 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 28
  %i.bq = or disjoint i64 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 20
  %i.bv = or disjoint i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 12
  %i.ca = or disjoint i64 %i.bv, %i.bz
  %i.cb = and i8 %i.b, 15
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 8
  %i.ce = or disjoint i64 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i64
  %i.ci = or i64 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = and i8 %i.ck, 63
  %i.cm = zext nneg i8 %i.cl to i16
  %i.cn = shl nuw nsw i16 %i.cm, 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i16
  %i.cr = or disjoint i16 %i.cn, %i.cq
  %i.cs = add nsw i64 %i.ci, -122192928000000000  ; 2 uses
  %i.ct = udiv i64 %i.cs, 10000000
  %i.cu = urem i64 %i.cs, 10000000
  br label %select.unfold.sink.split

bb.c:                                             ; preds = %bb.a
  %i.cv = load i8, ptr %1, align 1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 40
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 32
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dd = load i32, ptr %i.dc, align 1
  %i.de = tail call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.df = zext i32 %i.de to i64
  %op.rdx = or disjoint i64 %i.db, %i.df
  %op.rdx26 = or disjoint i64 %op.rdx, %i.cx      ; 2 uses
  %i.dg = udiv i64 %op.rdx26, 1000
  %i.dh = urem i64 %op.rdx26, 1000
  br label %select.unfold.sink.split

select.unfold.sink.split:                         ; preds = %bb.b, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit, %bb.c
  %.sink25 = phi i64 [ %i.ay, %bb.b ], [ %i.cu, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ %i.dh, %bb.c ]
  %.sink24 = phi i32 [ 100, %bb.b ], [ 100, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ 1000000, %bb.c ]
  %.sink21.shrunk = phi i16 [ %i.av, %bb.b ], [ %i.cr, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ 0, %bb.c ]
  %.sink20.a = phi i64 [ %i.ax, %bb.b ], [ %i.ct, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ %i.dg, %bb.c ]
  %.sink18 = phi i8 [ 14, %bb.b ], [ 14, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ 0, %bb.c ]
  %i.di = trunc nuw nsw i64 %.sink25 to i32
  %i.dj = mul nuw nsw i32 %.sink24, %i.di
  %.sink21 = zext i16 %.sink21.shrunk to i128
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sink21, ptr %i.dk, align 16
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink20.a, ptr %.sroa.28.0..sroa_idx, align 16
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.dj, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sink18, ptr %.sroa.410.0..sroa_idx, align 4
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.sink.split, %bb.a
  %.sink = phi i128 [ 0, %bb.a ], [ 1, %select.unfold.sink.split ]
  store i128 %.sink, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 16) i64 @_ZN4uuid4Uuid15get_version_num17he755d3ec9e2972ebE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1
  %i.c = lshr i8 %i.b, 4
  %i.d = zext nneg i8 %i.c to i64
  ret i64 %i.d
}

end_hunk_0
