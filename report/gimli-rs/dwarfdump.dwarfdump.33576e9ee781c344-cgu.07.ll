Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.07?download=true
inline.NumInlined: 196
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE12format_errorB2w_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select33, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.p, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXNtCsi68uqYEhoRA_5gimli4readNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.u, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs4phXRVW1pDQ_9dwarfdump, ptr %.sroa.46.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.v, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs4phXRVW1pDQ_9dwarfdump, ptr %.sroa.410.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.w, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @2, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.split25

bb.d:                                             ; preds = %.split25, %switch.lookup
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idB2w_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(936) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val7 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = ptrtoint ptr %.val to i64                ; 3 uses
  %i.e = icmp ult i64 %2, %i.d
  %i.f = add i64 %.val7, %i.d
  %i.g = icmp ugt i64 %2, %i.f
  %or.cond.i.i.not.i.i.i = or i1 %i.e, %i.g
  br i1 %or.cond.i.i.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %2, %i.d
  %i.i = insertvalue { i8, i64 } { i8 0, i64 undef }, i64 %i.h, 1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids_0EB3U_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = tail call { i8, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB7_7SectionBN_E16lookup_offset_idB2t_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids_0EB3U_.exit: ; preds = %bb.b, %bb.c
  %.merged.i = phi { i8, i64 } [ %i.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = extractvalue { i8, i64 } %.merged.i, 0
  %.not.i19 = icmp eq i8 %i.l, -1
  br i1 %.not.i19, label %bb.d, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids0_0EB3U_.exit

bb.d:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids_0EB3U_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.n = tail call { i8, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read7aranges12DebugArangesINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB7_7SectionBU_E16lookup_offset_idB2A_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids0_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids0_0EB3U_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids_0EB3U_.exit, %bb.d
  %.merged.i20 = phi { i8, i64 } [ %i.n, %bb.d ], [ %.merged.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids_0EB3U_.exit ] ; 2 uses
  %i.o = extractvalue { i8, i64 } %.merged.i20, 0
  %.not.i21 = icmp eq i8 %i.o, -1
  br i1 %.not.i21, label %bb.e, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids1_0EB3U_.exit

bb.e:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids0_0EB3U_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.q = tail call { i8, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit9DebugInfoINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB7_7SectionBN_E16lookup_offset_idB2t_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids1_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids1_0EB3U_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids0_0EB3U_.exit, %bb.e
  %.merged.i22 = phi { i8, i64 } [ %i.q, %bb.e ], [ %.merged.i20, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids0_0EB3U_.exit ] ; 2 uses
  %i.r = extractvalue { i8, i64 } %.merged.i22, 0
  %.not.i23 = icmp eq i8 %i.r, -1
  br i1 %.not.i23, label %bb.f, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids2_0EB3U_.exit

bb.f:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids1_0EB3U_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.t = tail call { i8, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read4line9DebugLineINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB7_7SectionBN_E16lookup_offset_idB2t_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids2_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids2_0EB3U_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids1_0EB3U_.exit, %bb.f
  %.merged.i24 = phi { i8, i64 } [ %i.t, %bb.f ], [ %.merged.i22, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids1_0EB3U_.exit ] ; 2 uses
  %i.u = extractvalue { i8, i64 } %.merged.i24, 0
  %.not.i25 = icmp eq i8 %i.u, -1
  br i1 %.not.i25, label %bb.g, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids3_0EB3U_.exit

bb.g:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids2_0EB3U_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.w = tail call { i8, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read3str12DebugLineStrINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB7_7SectionBQ_E16lookup_offset_idB2w_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids3_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids3_0EB3U_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids2_0EB3U_.exit, %bb.g
  %.merged.i26 = phi { i8, i64 } [ %i.w, %bb.g ], [ %.merged.i24, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids2_0EB3U_.exit ] ; 2 uses
  %i.x = extractvalue { i8, i64 } %.merged.i26, 0
  %.not.i27 = icmp eq i8 %i.x, -1
  br i1 %.not.i27, label %bb.h, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids4_0EB3U_.exit

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids3_0EB3U_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.z = tail call { i8, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read3str8DebugStrINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB7_7SectionBL_E16lookup_offset_idB2r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.y, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids4_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids4_0EB3U_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids3_0EB3U_.exit, %bb.h
  %.merged.i28 = phi { i8, i64 } [ %i.z, %bb.h ], [ %.merged.i26, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids3_0EB3U_.exit ] ; 2 uses
  %i.aa = extractvalue { i8, i64 } %.merged.i28, 0
  %.not.i29 = icmp eq i8 %i.aa, -1
  br i1 %.not.i29, label %bb.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids5_0EB3U_.exit

bb.i:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids4_0EB3U_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.ac = tail call { i8, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read3str15DebugStrOffsetsINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB7_7SectionBT_E16lookup_offset_idB2z_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids5_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids5_0EB3U_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids4_0EB3U_.exit, %bb.i
  %.merged.i30 = phi { i8, i64 } [ %i.ac, %bb.i ], [ %.merged.i28, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids4_0EB3U_.exit ] ; 2 uses
  %i.ad = extractvalue { i8, i64 } %.merged.i30, 0
  %.not.i31 = icmp eq i8 %i.ad, -1
  br i1 %.not.i31, label %bb.j, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids6_0EB3U_.exit

bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids5_0EB3U_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.af = tail call { i8, i64 } @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read4unit10DebugTypesINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB7_7SectionBP_E16lookup_offset_idB2v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids6_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids6_0EB3U_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids5_0EB3U_.exit, %bb.j
  %.merged.i32 = phi { i8, i64 } [ %i.af, %bb.j ], [ %.merged.i30, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids5_0EB3U_.exit ] ; 2 uses
  %i.ag = extractvalue { i8, i64 } %.merged.i32, 0
  %.not.i33 = icmp eq i8 %i.ag, -1
  br i1 %.not.i33, label %bb.k, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids7_0EB3U_.exit

bb.k:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids6_0EB3U_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.ai = tail call { i8, i64 } @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idB2I_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ah, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids7_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids7_0EB3U_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids6_0EB3U_.exit, %bb.k
  %.merged.i34 = phi { i8, i64 } [ %i.ai, %bb.k ], [ %.merged.i32, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids6_0EB3U_.exit ] ; 2 uses
  %i.aj = extractvalue { i8, i64 } %.merged.i34, 0
  %.not.i35 = icmp eq i8 %i.aj, -1
  br i1 %.not.i35, label %bb.l, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids8_0EB3U_.exit

bb.l:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids7_0EB3U_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.al = tail call { i8, i64 } @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_10RangeListsINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idB2F_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ak, i64 noundef %2)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids8_0EB3U_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids8_0EB3U_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids7_0EB3U_.exit, %bb.l
  %.merged.i36 = phi { i8, i64 } [ %i.al, %bb.l ], [ %.merged.i34, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids7_0EB3U_.exit ] ; 2 uses
  %i.am = extractvalue { i8, i64 } %.merged.i36, 0 ; 2 uses
  %.not = icmp eq i8 %i.am, -1
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids8_0EB3U_.exit
  %i.an = extractvalue { i8, i64 } %.merged.i36, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  store i8 0, ptr %0, align 8, !alias.scope !173
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.am, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !173
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %.sroa.751.0..sroa_idx, align 8, !alias.scope !173
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTbNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBO_4read5dwarfINtB1I_5DwarfINtNtB1K_8relocate14RelocateReaderINtNtB1K_12endian_slice11EndianSliceNtNtBO_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idsa_0EB3V_.exit

bb.n:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBN_4read5dwarfINtB1H_5DwarfINtNtB1J_8relocate14RelocateReaderINtNtB1J_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_ids8_0EB3U_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  %i.ao = load ptr, ptr %1, align 8, !alias.scope !175, !noalias !172, !noundef !6 ; 2 uses
  %.not.i38 = icmp eq ptr %i.ao, null
  br i1 %.not.i38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call fastcc void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idB2w_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(936) %i.ap, i64 noundef %2), !noalias !177, !inline_history !171
  %i.aq = load i8, ptr %i.a, align 8, !range !5, !noalias !176, !noundef !6
  %.not3.i = icmp eq i8 %i.aq, 2
  br i1 %.not3.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  store i8 2, ptr %0, align 8, !alias.scope !174, !noalias !172
  br label %_RNCNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB7_5DwarfINtNtB9_8relocate14RelocateReaderINtNtB9_12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idsa_0B2y_.exit

bb.q:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !11, !noalias !176, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !176, !noundef !6
  store i8 1, ptr %0, align 8, !alias.scope !174, !noalias !172
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.as, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !174, !noalias !172
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !174, !noalias !172
  br label %_RNCNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB7_5DwarfINtNtB9_8relocate14RelocateReaderINtNtB9_12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idsa_0B2y_.exit

_RNCNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB7_5DwarfINtNtB9_8relocate14RelocateReaderINtNtB9_12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idsa_0B2y_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTbNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBO_4read5dwarfINtB1I_5DwarfINtNtB1K_8relocate14RelocateReaderINtNtB1K_12endian_slice11EndianSliceNtNtBO_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idsa_0EB3V_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTbNtNtCsi68uqYEhoRA_5gimli6common9SectionIdjEE7or_elseNCNvMs0_NtNtBO_4read5dwarfINtB1I_5DwarfINtNtB1K_8relocate14RelocateReaderINtNtB1K_12endian_slice11EndianSliceNtNtBO_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idsa_0EB3V_.exit: ; preds = %bb.m, %_RNCNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB7_5DwarfINtNtB9_8relocate14RelocateReaderINtNtB9_12endian_slice11EndianSliceNtNtBb_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE16lookup_offset_idsa_0B2y_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE22ranges_offset_from_rawB2w_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(936) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(768) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp ult i16 %i.e, 5
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.h = load i64, ptr %i.g, align 8
  %i.i = select i1 %or.cond, i64 %i.h, i64 0
  %.sroa.0.0 = add i64 %i.i, %2
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE28populate_abbreviations_cacheB2w_(ptr noalias nofree noundef align 8 dereferenceable(936) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [112 x i8], align 8               ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9DebugInfoINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5unitsB2z_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !190
  store i64 0, ptr %i.j, align 8, !noalias !190
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !noalias !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 8 uses
  store i64 0, ptr %i.p, align 8, !noalias !190
  br i1 %1, label %.preheader.i, label %.preheader31.i

.preheader31.i:                                   ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  br label %bb.c

.preheader.i:                                     ; preds = %bb.a
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  br label %bb.b

bb.b:                                             ; preds = %bb.v, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !190
  invoke void @_RNvMs7_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2P_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %bb.o unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191

bb.c:                                             ; preds = %bb.k, %.preheader31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !190
  invoke void @_RNvMs7_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2P_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %bb.d unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.i, align 8, !range !192, !noalias !190, !noundef !6
  %switch.i = icmp ugt i64 %i.q, -3
  br i1 %switch.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !190
  %i.r = load ptr, ptr %i.o, align 8, !noalias !190, !nonnull !6, !noundef !6 ; 2 uses
  %i.s = load i64, ptr %i.p, align 8, !noalias !190, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !193
  store ptr %i.a, ptr %i.c, align 8, !noalias !193
  %i.t = icmp samesign ult i64 %i.s, 2
  br i1 %i.t, label %bb.l, label %bb.f, !prof !194

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i64 %i.s, 21
  br i1 %i.u, label %bb.h, label %bb.g, !prof !194

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB6_SBT_20sort_unstable_by_keyjNCINvMs3_NtNtBX_4read6abbrevNtB2q_18AbbreviationsCache8populateINtNtB2s_8relocate14RelocateReaderINtNtB2s_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB50_(ptr noalias nofree noundef nonnull align 8 %i.r, i64 noundef range(i64 0, 1152921504606846976) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %bb.l unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191

bb.h:                                             ; preds = %bb.f
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1m_20sort_unstable_by_keyjNCINvMs3_NtNtB1q_4read6abbrevNtB2U_18AbbreviationsCache8populateINtNtB2W_8relocate14RelocateReaderINtNtB2W_12endian_slice11EndianSliceNtNtB1q_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5w_(ptr noalias nofree noundef nonnull align 8 %i.r, i64 noundef range(i64 0, 1152921504606846976) %i.s, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.l unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191

bb.i:                                             ; preds = %bb.d
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !190
  %i.v = load i64, ptr %i.p, align 8, !alias.scope !195, !noalias !190, !noundef !6 ; 3 uses
  %i.w = load i64, ptr %i.j, align 8, !range !196, !alias.scope !195, !noalias !190, !noundef !6
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #21
          to label %bb.k unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr %i.o, align 8, !alias.scope !195, !noalias !190, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.v
  store i64 %.sroa.3.0.copyload.i, ptr %i.z, align 8, !noalias !191
  %i.aa = add i64 %i.v, 1
  store i64 %i.aa, ptr %i.p, align 8, !alias.scope !195, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !190
  br label %bb.c

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !190
  store i64 0, ptr %i.h, align 8, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !190
  store i32 0, ptr %i.g, align 4, !noalias !190
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE6retainNCINvMs3_NtNtBJ_4read6abbrevNtB1K_18AbbreviationsCache8populateINtNtB1M_8relocate14RelocateReaderINtNtB1M_12endian_slice11EndianSliceNtNtBJ_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs_0EB4k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.m unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !190
  br label %bb.n

bb.n:                                             ; preds = %bb.w, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !190
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !190, !nonnull !6, !noundef !6 ; 3 uses
  %i.ac = load i64, ptr %i.j, align 8, !range !196, !noalias !190, !noundef !6
  %i.ad = load i64, ptr %i.p, align 8, !noalias !190, !noundef !6 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 1152921504606846976
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  store ptr %i.ab, ptr %i.d, align 8, !noalias !190
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ab, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !190
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !190
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.af, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !190
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.m, ptr %i.ag, align 8, !noalias !190
  call void @_RINvXs1o_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB7_8BTreeMapyINtNtCskKLDkoKarTP_4core6result6ResultINtNtBd_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB27_5ErrorEEINtNtNtNtB1f_4iter6traits7collect12FromIteratorTyB1a_EE9from_iterINtNtNtB3g_8adapters3map3MapINtNtNtBd_3vec9into_iter8IntoIterNtNtB29_6common17DebugAbbrevOffsetENCINvMs3_B25_NtB25_18AbbreviationsCache8populateINtNtB27_8relocate14RelocateReaderINtNtB27_12endian_slice11EndianSliceNtNtB29_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0EEB8f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d), !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !190
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB22_5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvMs3_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_18AbbreviationsCache8populateINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2U_.exit unwind label %.thread25.i

bb.o:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.f, align 8, !range !192, !noalias !190, !noundef !6
  %switch13.i = icmp ugt i64 %i.ah, -3
  br i1 %switch13.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !190
  %i.ai = load ptr, ptr %i.o, align 8, !noalias !190, !nonnull !6, !noundef !6 ; 2 uses
  %i.aj = load i64, ptr %i.p, align 8, !noalias !190, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !198
  store ptr %i.a, ptr %i.b, align 8, !noalias !198
  %i.ak = icmp samesign ult i64 %i.aj, 2
  br i1 %i.ak, label %bb.w, label %bb.q, !prof !194

bb.q:                                             ; preds = %bb.p
  %i.al = icmp samesign ult i64 %i.aj, 21
  br i1 %i.al, label %bb.s, label %bb.r, !prof !194

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB6_SBT_20sort_unstable_by_keyjNCINvMs3_NtNtBX_4read6abbrevNtB2q_18AbbreviationsCache8populateINtNtB2s_8relocate14RelocateReaderINtNtB2s_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB50_(ptr noalias nofree noundef nonnull align 8 %i.ai, i64 noundef range(i64 0, 1152921504606846976) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %bb.w unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1m_20sort_unstable_by_keyjNCINvMs3_NtNtB1q_4read6abbrevNtB2U_18AbbreviationsCache8populateINtNtB2W_8relocate14RelocateReaderINtNtB2W_12endian_slice11EndianSliceNtNtB1q_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5w_(ptr noalias nofree noundef nonnull align 8 %i.ai, i64 noundef range(i64 0, 1152921504606846976) %i.aj, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.w unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191

bb.t:                                             ; preds = %bb.o
  %.sroa.32.0.copyload.i = load i64, ptr %.sroa.32.0..sroa_idx.i, align 8, !noalias !190
  %i.am = load i64, ptr %i.p, align 8, !alias.scope !199, !noalias !190, !noundef !6 ; 3 uses
  %i.an = load i64, ptr %i.j, align 8, !range !196, !alias.scope !199, !noalias !190, !noundef !6
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #21
          to label %bb.v unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.u, %bb.j, %bb.c, %bb.w, %bb.s, %bb.r, %bb.l, %bb.h, %bb.g
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #19
          to label %bb.x unwind label %bb.y, !noalias !191

end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_12DwarfPackageINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE8sectionsB2E_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE13abbreviationsB2D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 10 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.14.i.i = alloca [12 x i8], align 4       ; 7 uses
  %i.h = alloca [96 x i8], align 8                ; 9 uses
  %.sroa.10.i = alloca [72 x i8], align 8         ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 6 uses
  %.sroa.4.i = alloca [88 x i8], align 8          ; 4 uses
  %i.k = alloca [112 x i8], align 8               ; 18 uses
  %i.l = alloca [48 x i8], align 8                ; 13 uses
  %i.m = alloca [56 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !339, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i8, ptr %i.p, align 8, !range !13, !alias.scope !339, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !340, !nonnull !6, !noundef !6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !340, !noundef !6 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i = load i8, ptr %i.u, align 8, !range !13, !alias.scope !340, !noundef !6
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !337
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i8 %.val.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !337
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 4 uses
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i8 %.val.i1.i, ptr %.sroa.54.0..sroa_idx.i, align 16, !alias.scope !337
  %i.w = load <2 x ptr>, ptr %1, align 8, !alias.scope !338
  store <2 x ptr> %i.w, ptr %i.m, align 16, !alias.scope !337
  %i.x = icmp ult i64 %i.t, %2
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = ptrtoint ptr %i.r to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 17, ptr %i.z, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %.sroa.517.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.aa = sub nuw i64 %i.t, %2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.ab, ptr %i.v, align 16, !alias.scope !341, !captures !12
  store i64 %i.aa, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !344
  store i64 0, ptr %i.l, align 8, !noalias !344
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !344
  %.sroa.5.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !344
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.2.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.838.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.636.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 6 uses
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i1, i8 0, i64 16, i1 false), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !344
  %i.ak = icmp eq i64 %i.t, %2
  br i1 %i.ak, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !347
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader12read_uleb128B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !348

.noexc.i:                                         ; preds = %.lr.ph
  %i.al = load i8, ptr %i.i, align 8, !range !7, !noalias !347, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i8 %i.al, -1
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.447.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.444.0..sroa_idx.i.i, i64 7, i1 false), !noalias !349
  %.sroa.545.0.copyload.i.i = load i64, ptr %i.ad, align 8, !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !347
  store i8 %i.al, ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !345, !noalias !344
  %.sroa.548.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.545.0.copyload.i.i, ptr %.sroa.548.0..sroa_idx.i.i, align 8, !alias.scope !345, !noalias !344
  br label %.thread.i

bb.e:                                             ; preds = %.noexc.i
  %i.am = load i64, ptr %i.ad, align 8, !noalias !347, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !347
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !350
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !351

.noexc18.i:                                       ; preds = %bb.f
  %i.ao = load i8, ptr %i.g, align 8, !range !7, !noalias !350, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ao, -1
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc18.i
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.417.0.copyload.i.i.i = load i8, ptr %.sroa.417.0..sroa_idx.i.i.i, align 1, !noalias !350
  %.sroa.518.0.copyload.i.i.i = load i16, ptr %i.ae, align 2, !noalias !350
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.619.0..sroa_idx.i.i.i, i64 12, i1 false), !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !350
  br label %.loopexit39.i

bb.h:                                             ; preds = %.noexc18.i
  %i.ap = load i16, ptr %i.ae, align 2, !noalias !350, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !350
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %.loopexit39.i, label %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2P_.exit.i.i

.loopexit39.i:                                    ; preds = %bb.h, %bb.g
  %.sroa.10.0.ph.i.i = phi i16 [ %.sroa.518.0.copyload.i.i.i, %bb.g ], [ undef, %bb.h ]
  %.sroa.876.0.ph.i.i = phi i8 [ %.sroa.417.0.copyload.i.i.i, %bb.g ], [ undef, %bb.h ]
  %.sroa.0.0.ph.i.i = phi i8 [ %i.ao, %bb.g ], [ 8, %bb.h ]
  store i8 %.sroa.0.0.ph.i.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !345, !noalias !344
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i8 %.sroa.876.0.ph.i.i, ptr %.sroa.458.0..sroa_idx.i.i, align 1, !alias.scope !345, !noalias !344
  %.sroa.559.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  store i16 %.sroa.10.0.ph.i.i, ptr %.sroa.559.0..sroa_idx.i.i, align 2, !alias.scope !345, !noalias !344
  %.sroa.660.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.660.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.i.i, i64 12, i1 false), !noalias !349
  br label %.thread.i

_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2P_.exit.i.i: ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !355
  %i.ar = invoke noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump()
          to label %.noexc19.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !356

.noexc19.i:                                       ; preds = %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2P_.exit.i.i
  store i8 %i.ar, ptr %i.f, align 1, !noalias !355
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.as = load i64, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !359, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.as, 0
  %i.at = load ptr, ptr %i.v, align 16, !alias.scope !359, !nonnull !6, !noundef !6 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc19.i
  %i.au = ptrtoint ptr %i.at to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !355
  br label %.loopexit40.i

bb.j:                                             ; preds = %.noexc19.i
  %i.av = add i64 %i.as, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.aw, ptr %i.v, align 16, !alias.scope !359, !captures !12
  store i64 %i.av, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !359
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.f, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !360

.noexc20.i:                                       ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.f, align 1, !noalias !355 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !355
  %switch.i.i.i = icmp ult i8 %.sroa.0.0.copyload.i.i.i.i.i, 2
  br i1 %switch.i.i.i, label %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation18parse_has_childrenINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2Z_.exit.i.i, label %.loopexit40.i

.loopexit40.i:                                    ; preds = %.noexc20.i, %bb.i
  %.sroa.15.0.ph.i.i = phi i64 [ %i.au, %bb.i ], [ undef, %.noexc20.i ]
  %.sroa.880.0.ph.i.i = phi i8 [ 0, %bb.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc20.i ]
  %.sroa.078.0.ph.i.i = phi i8 [ 17, %bb.i ], [ 11, %.noexc20.i ]
  store i8 %.sroa.078.0.ph.i.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !345, !noalias !344
  %.sroa.468.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i8 %.sroa.880.0.ph.i.i, ptr %.sroa.468.0..sroa_idx.i.i, align 1, !alias.scope !345, !noalias !344
  %.sroa.569.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  store i48 0, ptr %.sroa.569.0..sroa_idx.i.i, align 2, !alias.scope !345, !noalias !344
  %.sroa.569.sroa.4.0..sroa.569.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.15.0.ph.i.i, ptr %.sroa.569.sroa.4.0..sroa.569.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !345, !noalias !344
  br label %.thread.i

_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation18parse_has_childrenINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2Z_.exit.i.i: ; preds = %.noexc20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, i8 0, i64 96, i1 false), !noalias !361
  br label %bb.k

bb.k:                                             ; preds = %bb.z, %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation18parse_has_childrenINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2Z_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !362
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.noexc.i.i unwind label %bb.u, !noalias !363

.noexc.i.i:                                       ; preds = %bb.k
  %i.ax = load i8, ptr %i.c, align 8, !range !7, !noalias !362, !noundef !6 ; 2 uses
  %.not.i.i23.i = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i23.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc.i.i
  %.sroa.454.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.454.0.copyload.i.i.i = load i8, ptr %.sroa.454.0..sroa_idx.i.i.i, align 1, !noalias !362
  %.sroa.555.0.copyload.i.i.i = load i16, ptr %i.ag, align 2, !noalias !362
  %.sroa.656.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.12.sroa.16.4.copyload.i.i = load i32, ptr %.sroa.656.0..sroa_idx.i.i.i, align 4, !noalias !364
  %.sroa.27.12..sroa.656.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.27.12.copyload.i.i = load i64, ptr %.sroa.27.12..sroa.656.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !362
  br label %.loopexit.i.i

bb.m:                                             ; preds = %.noexc.i.i
  %i.ay = load i16, ptr %i.ag, align 2, !noalias !362, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !362
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.noexc8.i.i unwind label %bb.u, !noalias !363

.noexc8.i.i:                                      ; preds = %bb.m
  %i.az = load i8, ptr %i.b, align 8, !range !7, !noalias !362, !noundef !6 ; 2 uses
  %.not83.i.i.i = icmp eq i8 %i.az, -1
  br i1 %.not83.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc8.i.i
  %.sroa.466.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.466.0.copyload.i.i.i = load i8, ptr %.sroa.466.0..sroa_idx.i.i.i, align 1, !noalias !362
  %.sroa.567.0.copyload.i.i.i = load i16, ptr %i.ah, align 2, !noalias !362
  %.sroa.668.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.12.sroa.16.4.copyload33.i.i = load i32, ptr %.sroa.668.0..sroa_idx.i.i.i, align 4, !noalias !364
  %.sroa.27.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.27.12.copyload17.i.i = load i64, ptr %.sroa.27.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !362
  br label %.loopexit.i.i

bb.o:                                             ; preds = %.noexc8.i.i
  %i.ba = load i16, ptr %i.ah, align 2, !noalias !362, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !362
  %.not.i24.i = icmp eq i16 %i.ay, 0
  br i1 %.not.i24.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %.noexc21.i, label %.loopexit.i.i

bb.q:                                             ; preds = %bb.o
  switch i16 %i.ba, label %bb.y [
    i16 0, label %.loopexit.i.i
    i16 33, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !362
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader12read_sleb128B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.noexc9.i.i unwind label %bb.u, !noalias !363

.noexc9.i.i:                                      ; preds = %bb.r
  %i.bc = load i8, ptr %i.a, align 8, !range !7, !noalias !362, !noundef !6 ; 2 uses
  %.not84.i.i.i = icmp eq i8 %i.bc, -1
  br i1 %.not84.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc9.i.i
  %.sroa.477.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.12.sroa.11.1.copyload.i.i = load i8, ptr %.sroa.477.0..sroa_idx.i.i.i, align 1, !noalias !364
  %.sroa.12.sroa.14.1..sroa.477.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.12.sroa.14.1.copyload.i.i = load i16, ptr %.sroa.12.sroa.14.1..sroa.477.0..sroa_idx.i.sroa_idx.i.i, align 2, !noalias !364
  %.sroa.12.sroa.16.1..sroa.477.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.12.sroa.16.1.copyload.i.i = load i32, ptr %.sroa.12.sroa.16.1..sroa.477.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !364
  %.sroa.578.0.copyload.i.i.i = load i64, ptr %i.ai, align 8, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !362
  br label %.loopexit.i.i

bb.t:                                             ; preds = %.noexc9.i.i
  %i.bd = load i64, ptr %i.ai, align 8, !noalias !362, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !362
  br label %bb.y

bb.u:                                             ; preds = %bb.y, %bb.r, %bb.m, %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev10AttributesECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e) #19
          to label %.body.i unwind label %bb.aa, !noalias !365

.loopexit.i.i:                                    ; preds = %bb.p, %bb.q, %bb.s, %bb.n, %bb.l
  %.sroa.12.sroa.16.0.ph.i.i = phi i32 [ %.sroa.12.sroa.16.4.copyload.i.i, %bb.l ], [ %.sroa.12.sroa.16.4.copyload33.i.i, %bb.n ], [ %.sroa.12.sroa.16.1.copyload.i.i, %bb.s ], [ undef, %bb.q ], [ undef, %bb.p ]
  %.sroa.12.sroa.14.0.ph.i.i = phi i16 [ %.sroa.555.0.copyload.i.i.i, %bb.l ], [ %.sroa.567.0.copyload.i.i.i, %bb.n ], [ %.sroa.12.sroa.14.1.copyload.i.i, %bb.s ], [ undef, %bb.q ], [ undef, %bb.p ]
  %.sroa.12.sroa.11.0.ph.i.i = phi i8 [ %.sroa.454.0.copyload.i.i.i, %bb.l ], [ %.sroa.466.0.copyload.i.i.i, %bb.n ], [ %.sroa.12.sroa.11.1.copyload.i.i, %bb.s ], [ undef, %bb.q ], [ undef, %bb.p ]
  %.sroa.12.sroa.0.0.ph.i.i = phi i8 [ %i.ax, %bb.l ], [ %i.az, %bb.n ], [ %i.bc, %bb.s ], [ 10, %bb.q ], [ 9, %bb.p ]
  %.sroa.27.0.ph.i.i = phi i64 [ %.sroa.27.12.copyload.i.i, %bb.l ], [ %.sroa.27.12.copyload17.i.i, %bb.n ], [ %.sroa.578.0.copyload.i.i.i, %bb.s ], [ undef, %bb.q ], [ undef, %bb.p ]
  %.sroa.12.sroa.16.0.insert.ext.i.i = zext i32 %.sroa.12.sroa.16.0.ph.i.i to i64
  %.sroa.12.sroa.16.0.insert.shift.i.i = shl nuw i64 %.sroa.12.sroa.16.0.insert.ext.i.i, 32
  %.sroa.12.sroa.14.0.insert.ext.i.i = zext i16 %.sroa.12.sroa.14.0.ph.i.i to i64
  %.sroa.12.sroa.14.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.sroa.14.0.insert.ext.i.i, 16
  %.sroa.12.sroa.14.0.insert.insert.i.i = or disjoint i64 %.sroa.12.sroa.14.0.insert.shift.i.i, %.sroa.12.sroa.16.0.insert.shift.i.i
  %.sroa.12.sroa.11.0.insert.ext.i.i = zext i8 %.sroa.12.sroa.11.0.ph.i.i to i64
  %.sroa.12.sroa.11.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.sroa.11.0.insert.ext.i.i, 8
  %.sroa.12.sroa.11.0.insert.insert.i.i = or disjoint i64 %.sroa.12.sroa.14.0.insert.insert.i.i, %.sroa.12.sroa.11.0.insert.shift.i.i
  %.sroa.12.sroa.0.0.insert.ext.i.i = zext nneg i8 %.sroa.12.sroa.0.0.ph.i.i to i64
  %.sroa.12.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.12.sroa.11.0.insert.insert.i.i, %.sroa.12.sroa.0.0.insert.ext.i.i
  %i.bf = load i64, ptr %i.e, align 8, !range !9, !alias.scope !366, !noalias !361, !noundef !6
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.noexc21.thread.i, label %bb.v

bb.v:                                             ; preds = %.loopexit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i unwind label %bb.w, !noalias !365

bb.w:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.i unwind label %bb.x, !noalias !365

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !365
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.noexc21.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !365

bb.y:                                             ; preds = %bb.t, %bb.q
  %.sroa.082.0.i.i.i = phi i64 [ %i.bd, %bb.t ], [ 0, %bb.q ]
  %.sroa.27.16.insert.ext.i.i.a = zext i16 %i.ay to i64
  %.sroa.27.18.insert.ext.i.i = zext i16 %i.ba to i64
  %.sroa.27.18.insert.shift.i.i = shl nuw nsw i64 %.sroa.27.18.insert.ext.i.i, 16
  %.sroa.27.18.insert.insert.i.i = or disjoint i64 %.sroa.27.18.insert.shift.i.i, %.sroa.27.16.insert.ext.i.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !361
  store i64 %.sroa.082.0.i.i.i, ptr %i.d, align 8, !noalias !361
  store i64 %.sroa.27.18.insert.insert.i.i, ptr %.sroa.2.sroa.2.0..sroa_idx.i.i, align 8, !noalias !361
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_10Attributes4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.d)
          to label %bb.z unwind label %bb.u, !noalias !365

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !361
  br label %bb.k

bb.aa:                                            ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !365
  unreachable

.noexc21.thread.i:                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !361
  br label %.loopexit42.i

.noexc21.i:                                       ; preds = %bb.p
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !367 ; 2 uses
  %i.bk = load <2 x i64>, ptr %i.af, align 8, !noalias !367 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx.i, i64 72, i1 false), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !361
  %i.bl = icmp eq i64 %.sroa.0.0.copyload.i, 2
  br i1 %i.bl, label %.loopexit42.i.loopexit, label %bb.ab

.loopexit42.i.loopexit:                           ; preds = %.noexc21.i
  %i.bm = extractelement <2 x i64> %i.bk, i64 1
  %i.bn = extractelement <2 x i64> %i.bk, i64 0
  br label %.loopexit42.i

.loopexit42.i:                                    ; preds = %.loopexit42.i.loopexit, %.noexc21.thread.i
  %.sroa.6.036.i = phi i64 [ %.sroa.12.sroa.0.0.insert.insert.i.i, %.noexc21.thread.i ], [ %i.bn, %.loopexit42.i.loopexit ]
  %.sroa.927.035.i = phi i64 [ %.sroa.27.0.ph.i.i, %.noexc21.thread.i ], [ %i.bm, %.loopexit42.i.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i64 %.sroa.6.036.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !349
  %.sroa.636.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.927.035.i, ptr %.sroa.636.i.sroa.7.0..sroa_idx.i, align 8, !noalias !349
  br label %.thread.i

bb.ab:                                            ; preds = %.noexc21.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.838.0..sroa_idx39.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i, i64 72, i1 false), !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i64 %.sroa.0.0.copyload.i, ptr %i.h, align 8, !noalias !347
  store <2 x i64> %i.bk, ptr %.sroa.636.0..sroa_idx37.i.i, align 8, !noalias !347
  invoke void @_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_12Abbreviation3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.k, i64 noundef %i.am, i16 noundef %i.ap, i8 noundef %.sroa.0.0.copyload.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.h)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !342

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %bb.ab, %bb.j, %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2P_.exit.i.i, %bb.f, %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i
end_hunk_1
