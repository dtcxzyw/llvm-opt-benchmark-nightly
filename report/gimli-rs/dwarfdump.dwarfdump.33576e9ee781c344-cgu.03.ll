Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.03?download=true
inline.NumInlined: 196
inline.NumDeleted: 73
begin_hunk_0_@_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader5splitB2c_:bb.a
  %i.f = ptrtoint ptr %i.b to i64
  store i8 17, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i = load i8, ptr %i.g, align 8, !range !33, !alias.scope !407, !noalias !412, !noundef !29
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i8, ptr %i.h, align 8, !range !33, !alias.scope !415, !noalias !418, !noundef !29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !415, !noalias !418, !noundef !29
  %i.k = sub nuw i64 %i.d, %2
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %2
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !420, !noalias !423, !captures !31
  store i64 %i.k, ptr %i.c, align 8, !alias.scope !420, !noalias !423
  %i.m = load <2 x ptr>, ptr %1, align 8, !alias.scope !425, !noalias !426
  store <2 x ptr> %i.m, ptr %0, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val.i.i, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %.sroa.815.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink58 = phi i64 [ 8, %bb.b ], [ 40, %bb.c ]
  %.sink57 = phi i64 [ %i.f, %bb.b ], [ %2, %bb.c ]
  %.sink = phi i8 [ 2, %bb.b ], [ %.val.i1.i, %bb.c ]
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink58
  store i64 %.sink57, ptr %.sroa.531.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCsi68uqYEhoRA_5gimli4read2op10ExpressionINtNtBB_8relocate14RelocateReaderINtNtBB_12endian_slice11EndianSliceNtNtBD_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEENtB6_5Debug3fmtB2X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !29, !align !45, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !427
  store ptr %i.b, ptr %i.a, align 8, !noalias !427
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @99)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtB6_5Debug3fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !29, !align !45, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !431
  store ptr %i.b, ptr %i.a, align 8, !noalias !431
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !431
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsi68uqYEhoRA_5gimli4read5ErrorNtB6_5Debug3fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !29, !align !45, !noundef !29
  %i.b = tail call fastcc noundef zeroext i1 @_RNvXsi_NtCsi68uqYEhoRA_5gimli4readNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #9
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits13ObjectSection11relocationsCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !29, !align !45, !noundef !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !29, !noundef !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.g = load i8, ptr %i.f, align 8, !range !33, !noundef !29
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !29
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object5macho9Section32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho7section7Section11relocationsRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(68) %i.e, i1 noundef zeroext %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
  %i.m = load i64, ptr %i.a, align 8, !range !435, !noundef !29
  %i.n = trunc nuw i64 %i.m to i1                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %.sroa.4.0 = select i1 %i.n, i64 0, i64 %i.r
  %.sroa.0.0 = select i1 %i.n, ptr inttoptr (i64 1 to ptr), ptr %i.p ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.sroa.4.0
  store ptr %i.c, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.u, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits13ObjectSection15compressed_dataCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.13.i = alloca [7 x i8], align 1          ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !442
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !445, !noalias !446, !nonnull !29, !noundef !29 ; 3 uses
  %i.h = tail call { ptr, i64 } @_RNvYINtNtCs9Jn0q30Ea0B_6object5macho9Section32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section4nameCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(68) %i.g), !noalias !442 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.j), !noalias !442
  %i.k = load i64, ptr %i.a, align 8, !range !435, !noalias !442, !noundef !29
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.thread.i.i, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.i.i

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.thread.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !442
  br label %bb.e

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !442, !nonnull !29, !noundef !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !442, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !442
  %i.q = tail call noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 9), !noalias !447
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !442
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !445, !noalias !446, !nonnull !29, !align !45, !noundef !29 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = load i8, ptr %i.t, align 8, !range !33, !noalias !442, !noundef !29
  %i.v = trunc nuw i8 %i.u to i1
  call void @_RNvYINtNtCs9Jn0q30Ea0B_6object5macho9Section32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section10file_rangeCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(68) %i.g, i1 noundef zeroext %i.v), !noalias !442
  %i.w = load i64, ptr %i.c, align 8, !range !435, !noalias !442, !noundef !29
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.c, label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !442, !noundef !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !442, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !442
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !445, !noalias !446, !nonnull !29, !noundef !29
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !445, !noalias !446, !noundef !29
  call void @_RINvNtNtCs9Jn0q30Ea0B_6object4read15gnu_compression21compressed_file_rangeRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af, i64 noundef %i.z, i64 noundef %i.ab), !noalias !442
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !range !450, !noalias !442, !noundef !29 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, -1
  %i.aj = load ptr, ptr %i.b, align 8, !noalias !451 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !451 ; 2 uses
  br i1 %i.ai, label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i, label %bb.d

_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !442
  br label %bb.f

_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !442
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !451
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.0..sroa_idx.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !442
  br label %bb.g

bb.e:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.i.i, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !452
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !436, !noalias !453, !nonnull !29, !align !45, !noundef !29 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ap = load i8, ptr %i.ao, align 8, !range !33, !noalias !452, !noundef !29
  %i.aq = trunc nuw i8 %i.ap to i1
  call void @_RNvYINtNtCs9Jn0q30Ea0B_6object5macho9Section32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section10file_rangeCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(68) %i.g, i1 noundef zeroext %i.aq), !noalias !452
  %i.ar = load i64, ptr %i.d, align 8, !range !435, !noalias !452, !noundef !29
  %i.as = trunc nuw i64 %i.ar to i1               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !452
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !452
  %.sroa.713.1.i = select i1 %i.as, i64 %i.aw, i64 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !452
  %i.ax = inttoptr i64 %i.au to ptr
  %2 = select i1 %i.as, ptr %i.ax, ptr null
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i
  %.sroa.0.134.i = phi ptr [ @2, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i ], [ %i.aj, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i ]
  %.sroa.8.133.i = phi i64 [ 39, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i ], [ %i.al, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i ]
  store ptr %.sroa.0.134.i, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.133.i, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 -1, ptr %i.az, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ba = phi ptr [ %i.s, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %.sroa.011.0.i = phi ptr [ %i.aj, %bb.d ], [ %2, %bb.e ]
  %.sroa.412.0.i = phi i64 [ %i.al, %bb.d ], [ %.sroa.713.1.i, %bb.e ]
  %.sroa.713.0.i = phi i64 [ %.sroa.12.0.copyload.i, %bb.d ], [ %.sroa.713.1.i, %bb.e ]
  %.sroa.1014.0.i = phi i8 [ %i.ah, %bb.d ], [ 0, %bb.e ]
  store ptr %.sroa.011.0.i, ptr %i.e, align 8
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.412.0.i, ptr %.sroa.7.0..sroa_idx2, align 8
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.713.0.i, ptr %.sroa.9.0..sroa_idx4, align 8
  %.sroa.96.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %.sroa.1014.0.i, ptr %.sroa.96.0..sroa_idx7, align 8
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.i, i64 7, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !29, !noundef !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !noundef !29
  call void @_RINvMsd_NtCs9Jn0q30Ea0B_6object4readNtB6_19CompressedFileRange4dataRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.be)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits13ObjectSection11relocationsCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !29, !align !45, !noundef !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !29, !noundef !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.g = load i8, ptr %i.f, align 8, !range !33, !noundef !29
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !29
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object5macho9Section64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho7section7Section11relocationsRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(80) %i.e, i1 noundef zeroext %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
  %i.m = load i64, ptr %i.a, align 8, !range !435, !noundef !29
  %i.n = trunc nuw i64 %i.m to i1                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %.sroa.4.0 = select i1 %i.n, i64 0, i64 %i.r
  %.sroa.0.0 = select i1 %i.n, ptr inttoptr (i64 1 to ptr), ptr %i.p ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.sroa.4.0
  store ptr %i.c, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.u, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits13ObjectSection15compressed_dataCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.13.i = alloca [7 x i8], align 1          ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !460
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !463, !noalias !464, !nonnull !29, !noundef !29 ; 3 uses
  %i.h = tail call { ptr, i64 } @_RNvYINtNtCs9Jn0q30Ea0B_6object5macho9Section64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section4nameCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(80) %i.g), !noalias !460 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.j), !noalias !460
  %i.k = load i64, ptr %i.a, align 8, !range !435, !noalias !460, !noundef !29
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.thread.i.i, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.i.i

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.thread.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !460
  br label %bb.e

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !460, !nonnull !29, !noundef !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !460, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !460
  %i.q = tail call noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 9), !noalias !465
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !460
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !463, !noalias !464, !nonnull !29, !align !45, !noundef !29 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = load i8, ptr %i.t, align 8, !range !33, !noalias !460, !noundef !29
  %i.v = trunc nuw i8 %i.u to i1
  call void @_RNvYINtNtCs9Jn0q30Ea0B_6object5macho9Section64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section10file_rangeCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(80) %i.g, i1 noundef zeroext %i.v), !noalias !460
  %i.w = load i64, ptr %i.c, align 8, !range !435, !noalias !460, !noundef !29
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.c, label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !460, !noundef !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !460, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !460
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !463, !noalias !464, !nonnull !29, !noundef !29
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !463, !noalias !464, !noundef !29
  call void @_RINvNtNtCs9Jn0q30Ea0B_6object4read15gnu_compression21compressed_file_rangeRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af, i64 noundef %i.z, i64 noundef %i.ab), !noalias !460
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !range !450, !noalias !460, !noundef !29 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, -1
  %i.aj = load ptr, ptr %i.b, align 8, !noalias !468 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !468 ; 2 uses
  br i1 %i.ai, label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i, label %bb.d

_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !460
  br label %bb.f

_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !460
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !468
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.0..sroa_idx.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !460
  br label %bb.g

bb.e:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.i.i, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6map_orbNCNvMs0_NtNtBM_5macho7sectionINtB1B_12MachOSectionINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessEE20maybe_compressed_gnu0ECs4phXRVW1pDQ_9dwarfdump.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !469
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !454, !noalias !470, !nonnull !29, !align !45, !noundef !29 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ap = load i8, ptr %i.ao, align 8, !range !33, !noalias !469, !noundef !29
  %i.aq = trunc nuw i8 %i.ap to i1
  call void @_RNvYINtNtCs9Jn0q30Ea0B_6object5macho9Section64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho7section7Section10file_rangeCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(80) %i.g, i1 noundef zeroext %i.aq), !noalias !469
  %i.ar = load i64, ptr %i.d, align 8, !range !435, !noalias !469, !noundef !29
  %i.as = trunc nuw i64 %i.ar to i1               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !469
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !469
  %.sroa.713.1.i = select i1 %i.as, i64 %i.aw, i64 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !469
  %i.ax = inttoptr i64 %i.au to ptr
  %2 = select i1 %i.as, ptr %i.ax, ptr null
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i
  %.sroa.0.134.i = phi ptr [ @2, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i ], [ %i.aj, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i ]
  %.sroa.8.133.i = phi i64 [ 39, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread28.i ], [ %i.al, %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_12MachOSectionINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEE20maybe_compressed_gnuCs4phXRVW1pDQ_9dwarfdump.exit.thread35.i ]
  store ptr %.sroa.0.134.i, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.133.i, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 -1, ptr %i.az, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ba = phi ptr [ %i.s, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %.sroa.011.0.i = phi ptr [ %i.aj, %bb.d ], [ %2, %bb.e ]
  %.sroa.412.0.i = phi i64 [ %i.al, %bb.d ], [ %.sroa.713.1.i, %bb.e ]
  %.sroa.713.0.i = phi i64 [ %.sroa.12.0.copyload.i, %bb.d ], [ %.sroa.713.1.i, %bb.e ]
  %.sroa.1014.0.i = phi i8 [ %i.ah, %bb.d ], [ 0, %bb.e ]
  store ptr %.sroa.011.0.i, ptr %i.e, align 8
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.412.0.i, ptr %.sroa.7.0..sroa_idx2, align 8
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.713.0.i, ptr %.sroa.9.0..sroa_idx4, align 8
  %.sroa.96.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %.sroa.1014.0.i, ptr %.sroa.96.0..sroa_idx7, align 8
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.i, i64 7, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !29, !noundef !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !noundef !29
  call void @_RINvMsd_NtCs9Jn0q30Ea0B_6object4readNtB6_19CompressedFileRange4dataRShECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.be)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi_NtCsi68uqYEhoRA_5gimli4readNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = load i8, ptr %0, align 8, !range !471, !noundef !29
  switch i8 %i.ak, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ak
    i8 36, label %bb.al
    i8 37, label %bb.am
    i8 38, label %bb.an
    i8 39, label %bb.ao
    i8 40, label %bb.ap
    i8 41, label %bb.aq
    i8 42, label %bb.ar
    i8 43, label %bb.as
    i8 44, label %bb.at
    i8 45, label %bb.au
    i8 46, label %bb.av
    i8 47, label %bb.aw
    i8 48, label %bb.ax
    i8 49, label %bb.ay
    i8 50, label %bb.az
    i8 51, label %bb.ba
    i8 52, label %bb.bb
    i8 53, label %bb.bc
    i8 54, label %bb.bd
    i8 55, label %bb.be
    i8 56, label %bb.bf
    i8 57, label %bb.bg
    i8 58, label %bb.bh
    i8 59, label %bb.bi
    i8 60, label %bb.bj
    i8 61, label %bb.bk
    i8 62, label %bb.bl
    i8 63, label %bb.bm
    i8 64, label %bb.bn
    i8 65, label %bb.bo
    i8 66, label %bb.bp
    i8 67, label %bb.bq
    i8 68, label %bb.br
    i8 69, label %bb.bs
    i8 70, label %bb.bt
    i8 71, label %bb.bu
    i8 72, label %bb.bv
    i8 73, label %bb.bw
    i8 74, label %bb.bx
    i8 75, label %bb.by
    i8 76, label %bb.bz
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2)
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 42)
  br label %bb.ca

bb.d:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 41)
  br label %bb.ca

bb.e:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 41)
  br label %bb.ca

bb.f:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 31)
  br label %bb.ca

bb.g:                                             ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 30)
  br label %bb.ca

bb.h:                                             ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 17)
  br label %bb.ca

bb.i:                                             ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 15)
  br label %bb.ca

bb.j:                                             ; preds = %bb.a
  %i.at = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 19)
  br label %bb.ca

bb.k:                                             ; preds = %bb.a
  %i.au = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 17)
  br label %bb.ca

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 17)
  br label %bb.ca

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.aw, ptr %i.aj, align 8
  %i.ax = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 27, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ca

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
end_hunk_0
