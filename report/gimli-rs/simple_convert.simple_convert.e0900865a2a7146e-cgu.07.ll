Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_convert.simple_convert.e0900865a2a7146e-cgu.07?download=true
inline.NumInlined: 211
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMNtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB3_13DwarfSectionsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE4loadNCNvCsjhlb6SMKfKY_14simple_convert4main0INtNtB12_5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EEB1K_:bb.a
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i465: ; preds = %bb.or
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert.exit

bb.ou:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #19
          to label %common.resume unwind label %bb.dn

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i465, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i462, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert.exit460, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i453, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert.exit451, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i, %bb.f, %bb.ns, %bb.mp, %bb.la, %bb.iz, %bb.gm, %bb.fb, %bb.dm, %bb.hu, %bb.kb, %bb.lw, %bb.nf, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bx
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB3_13DwarfSectionsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB5_12endian_slice11EndianSliceNtNtB7_9endianity13RunTimeEndianEEB1M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([424 x i8]) align 8 captures(none) dereferenceable(424) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 17 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_RINvMs0_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB6_11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_RINvMs_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEEB1J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RINvMs0_NtNtCsi68uqYEhoRA_5gimli4read7arangesINtB6_12DebugArangesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1R_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RINvMs4_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB6_9DebugInfoINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1K_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_RINvMs0_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB6_9DebugLineINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1K_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_RINvMsa_NtNtCsi68uqYEhoRA_5gimli4read3strINtB6_12DebugLineStrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1N_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_RINvMs0_NtNtCsi68uqYEhoRA_5gimli4read6macrosINtB6_12DebugMacinfoINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6macrosINtB6_10DebugMacroINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1O_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_RINvMs_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_10DebugNamesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEEB1M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @_RINvMs0_NtNtCsi68uqYEhoRA_5gimli4read3strINtB6_8DebugStrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @_RINvMs4_NtNtCsi68uqYEhoRA_5gimli4read3strINtB6_15DebugStrOffsetsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @_RINvMsm_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB6_10DebugTypesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_8DebugLocINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEEB1M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @_RINvMs3_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB6_13DebugLocListsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_11DebugRangesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEEB1Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @_RINvMs3_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB6_13DebugRngListsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE6borrowQNCNvCsjhlb6SMKfKY_14simple_convert4mains_0INtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEEB1T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i8 0, ptr %i.ai, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBU_5write4unit6UnitIdNtB1H_11UnitEntryIdEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1E_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0ECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !97, !noundef !5 ; 3 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !97, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i.not = icmp ult i64 %i.f, %i.n
  br i1 %.not.i.not, label %bb.o, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !98
  %i.p = extractvalue { i64, i64 } %i.o, 0
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

bb.d:                                             ; preds = %bb.b
  %i.q = call i64 @llvm.umax.i64(i64 %.sroa.03.0.i, i64 %i.f) ; 4 uses
  %..i = add nuw nsw i64 %i.q, 1                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100
  %i.r = icmp ult i64 %i.q, 14
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.q, 2305843009213693950
  br i1 %i.s, label %bb.l, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %..i, 3
  %i.u = udiv i64 %i.t, 7
  %i.v = add nsw i64 %i.u, -1
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = lshr i64 -1, %i.w
  %i.y = add nuw nsw i64 %i.x, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.z = icmp samesign ult i64 %i.q, 3
  %i.aa = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.aa, 8
  %.sroa.03.0.i.i = select i1 %i.z, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.y, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 8, 25) 24) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  %i.ae = add nuw i64 %i.ad, 8
  %i.af = and i64 %i.ae, -16                      ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !101
  %i.ak = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !101 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !101
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ah), !noalias !101
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !102
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 7 uses
  %i.ar = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.09.0.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.at, i8 -1, i64 %i.ag, i1 false), !noalias !102
  store ptr %i.d, ptr %i.a, align 8, !noalias !100
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !100
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !100
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.at, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !100
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !100
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !100
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !100
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !103, !noundef !5 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = ptrtoint ptr %i.at to i64
  br i1 %i.av, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.._crit_edge37_crit_edge, label %.preheader.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.._crit_edge37_crit_edge: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !104, !noalias !105
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge37

.preheader.preheader:                             ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit
  %2 = load ptr, ptr %0, align 8, !alias.scope !103, !nonnull !5, !noundef !5 ; 3 uses
  %.val326 = load <16 x i8>, ptr %2, align 16
  %i.ax = icmp sgt <16 x i8> %.val326, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.am, %bb.j ], [ %i.an, %bb.k ]
  %.sroa.7.025 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

bb.m:                                             ; preds = %._crit_edge
  %i.az = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #19, !noalias !105
  resume { ptr, i32 } %i.az

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.036 = phi ptr [ %2, %.preheader.preheader ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.preheader ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.au, %.preheader.preheader ], [ %i.by, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.033 = phi i16 [ %i.ay, %.preheader.preheader ], [ %i.bw, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i128 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i128, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.130 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val27 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val27, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !103
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.._crit_edge37_crit_edge, %._crit_edge37.loopexit
  %.sroa.0.0.copyload.i.i.i.i.i.in = phi ptr [ %i.de, %._crit_edge37.loopexit ], [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.._crit_edge37_crit_edge ]
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.._crit_edge37_crit_edge ]
  %i.bf = sub i64 %.sroa.09.0.i.i, %i.be
  store i64 %i.aw, ptr %0, align 8, !alias.scope !104, !noalias !105
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !106, !noalias !105 ; 3 uses
  store i64 %i.aq, ptr %i.h, align 8, !alias.scope !106, !noalias !105
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !107, !noalias !105
  %i.bh = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge37
  %i.bi = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 24 ; 2 uses
  %i.bj = add i64 %i.bi, 24
  %i.bk = add i64 %i.bi, 39                       ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bj
  call void @llvm.assume(i1 %i.bl), !noalias !105
  %i.bm = and i64 %i.bk, -16                      ; 3 uses
  %i.bn = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  %i.bq = icmp ult i64 %i.bo, 9223372036854775793
  call void @llvm.assume(i1 %i.bp), !noalias !105
  call void @llvm.assume(i1 %i.bq), !noalias !105
  %i.br = sub nsw i64 0, %i.bm
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.in, i64 %i.br
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !108
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %._crit_edge37, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bt = add i16 %.sroa.13.1.lcssa, -1
  %i.bu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = and i16 %i.bt, %.sroa.13.1.lcssa
  %i.bx = add i64 %.sroa.5.1.lcssa, %i.bv         ; 2 uses
  %i.by = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.bz = sub nsw i64 0, %i.bx
  %i.ca = getelementptr inbounds [24 x i8], ptr %2, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -24
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !109, !nonnull !5, !noundef !5
  %i.cc = invoke noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert.exit unwind label %bb.m, !noalias !109 ; 2 uses

_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.cc, %i.aq            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !110
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cf, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert.exit ], [ %i.cw, %.lr.ph.i ]
  %i.cg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ch
  %i.cj = and i64 %i.ci, %i.aq                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !5
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.n, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.at, align 16
  %i.cn = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.co, 0
  %i.cp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.co, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert.exit ]
  %i.cr = phi i64 [ %i.cs, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert.exit ]
  %i.cs = add i64 %i.cr, 16                       ; 2 uses
  %i.ct = add i64 %i.cs, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.ct, %i.aq           ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cu, align 1, !noalias !110
  %i.cv = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cw = bitcast <16 x i1> %i.cv to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cq, %bb.n ], [ %i.cj, %._crit_edge.i ] ; 3 uses
  %i.cx = lshr i64 %i.cc, 57
  %i.cy = trunc nuw nsw i64 %i.cx to i8           ; 2 uses
  %i.cz = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.da = and i64 %i.cz, %i.aq
  %i.db = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i5.i
  store i8 %i.cy, ptr %i.db, align 1, !noalias !105
  %i.dc = getelementptr i8, ptr %i.at, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  store i8 %i.cy, ptr %i.dd, align 1, !noalias !105
  %i.de = load ptr, ptr %0, align 8, !alias.scope !103, !nonnull !5, !noundef !5 ; 2 uses
  %.neg.i.i = xor i64 %i.bx, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.dg = getelementptr inbounds i8, ptr %i.at, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 1 dereferenceable(24) %i.df, i64 range(i64 8, 25) 24, i1 false), !noalias !105
  %i.dh = icmp eq i64 %i.by, 0
  br i1 %i.dh, label %._crit_edge37.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert, i64 noundef 24) #22
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit, %bb.c, %bb.o
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.o ], [ %.sroa.7.025, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !138, !noundef !5 ; 3 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !138, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i.not = icmp ult i64 %i.g, %i.o
  br i1 %.not.i.not, label %bb.o, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !139
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

bb.d:                                             ; preds = %bb.b
  %i.r = call i64 @llvm.umax.i64(i64 %.sroa.03.0.i, i64 %i.g) ; 4 uses
  %..i = add nuw nsw i64 %i.r, 1                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  %i.s = icmp ult i64 %i.r, 14
  br i1 %i.s, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.r, 2305843009213693950
  br i1 %i.t, label %bb.j, label %bb.f, !prof !7

.thread:                                          ; preds = %bb.d
  %i.u = icmp samesign ult i64 %i.r, 3
  %i.v = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.v, 8
  %.sroa.03.0.i.i = select i1 %i.u, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %..i, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z                       ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = icmp ugt i64 %i.aa, 2305843009213693950
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i55 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ab, %bb.f ] ; 5 uses
  %i.ad = shl nuw i64 %.sroa.4.0.i.ph.i55, 3
  %i.ae = add nuw i64 %i.ad, 8
  %i.af = and i64 %i.ae, -16                      ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i55, 16 ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !142
  %i.ak = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !142 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !142
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ah), !noalias !142
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !143
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i55, 9
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i55, -1     ; 7 uses
  %i.ar = lshr i64 %.sroa.4.0.i.ph.i55, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.09.0.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.at, i8 -1, i64 %i.ag, i1 false), !noalias !143
  store ptr %i.e, ptr %i.a, align 8, !noalias !141
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !141
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !141
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.at, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !141
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !141
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !141
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !141
  %i.au = load i64, ptr %i.f, align 8, !alias.scope !144, !noundef !5 ; 3 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = ptrtoint ptr %i.at to i64
  br i1 %i.av, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.._crit_edge37_crit_edge, label %.preheader.lr.ph

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.._crit_edge37_crit_edge: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !145, !noalias !146
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge37

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !144, !nonnull !5, !noundef !5 ; 5 uses
  %.val326 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val326, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %.val2.i = load i64, ptr %i.d, align 8, !noalias !147, !noundef !5 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !5
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.j ], [ %i.am, %bb.h ], [ %i.an, %bb.i ]
  %.sroa.7.025 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

bb.k:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #19, !noalias !146
  resume { ptr, i32 } %i.ba

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.036 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.by, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.033 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.bw, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i128 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i128, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.130 = phi ptr [ %i.bb, %.noexc2 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.be, %.noexc2 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val27 = load <16 x i8>, ptr %i.bb, align 16
  %i.bc = icmp sgt <16 x i8> %.val27, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bd, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge37:                                    ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.._crit_edge37_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.._crit_edge37_crit_edge ], [ %i.ax, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %i.bf = sub i64 %.sroa.09.0.i.i, %i.au
  store i64 %i.aw, ptr %0, align 8, !alias.scope !145, !noalias !146
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !alias.scope !148, !noalias !146 ; 3 uses
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !148, !noalias !146
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !149, !noalias !146
  %i.bh = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge37
  %i.bi = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3 ; 2 uses
  %i.bj = add i64 %i.bi, 8
  %i.bk = add i64 %i.bi, 23                       ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bj
  call void @llvm.assume(i1 %i.bl), !noalias !146
  %i.bm = and i64 %i.bk, -16                      ; 3 uses
  %i.bn = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  %i.bq = icmp ult i64 %i.bo, 9223372036854775793
  call void @llvm.assume(i1 %i.bp), !noalias !146
  call void @llvm.assume(i1 %i.bq), !noalias !146
  %i.br = sub nsw i64 0, %i.bm
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.br
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !150
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %._crit_edge37, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bd, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.be, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.bb, %.noexc2 ]
  %i.bt = add i16 %.sroa.13.1.lcssa, -1
  %i.bu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = and i16 %i.bt, %.sroa.13.1.lcssa
  %i.bx = add i64 %.sroa.5.1.lcssa, %i.bv         ; 2 uses
  %i.by = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.bz = sub nsw i64 0, %i.bx
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %.val3.i = load i64, ptr %i.cb, align 8, !noalias !147, !noundef !5 ; 3 uses
  %i.cc = icmp ult i64 %.val3.i, %.val2.i
  br i1 %i.cc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %.noexc8 unwind label %bb.k, !noalias !147

.noexc8:                                          ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.val3.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !147, !noundef !5 ; 2 uses
  %.sroa.0.07.i = and i64 %i.cf, %i.aq            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !151
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.m ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ci, %bb.m ], [ %i.cz, %.lr.ph.i ]
  %i.cj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ck
  %i.cm = and i64 %i.cl, %i.aq                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noundef !5
  %i.cp = icmp sgt i8 %i.co, -1
  br i1 %i.cp, label %bb.n, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.at, align 16
  %i.cq = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cr, 0
  %i.cs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cr, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.m ]
  %i.cu = phi i64 [ %i.cv, %.lr.ph.i ], [ 0, %bb.m ]
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cw, %i.aq           ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !151
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ct, %bb.n ], [ %i.cm, %._crit_edge.i ] ; 3 uses
  %i.da = lshr i64 %i.cf, 57
  %i.db = trunc nuw nsw i64 %i.da to i8           ; 2 uses
  %i.dc = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dd = and i64 %i.dc, %i.aq
  %i.de = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i5.i
  store i8 %i.db, ptr %i.de, align 1, !noalias !146
  %i.df = getelementptr i8, ptr %i.at, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store i8 %i.db, ptr %i.dg, align 1, !noalias !146
  %.neg.i.i = xor i64 %i.bx, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.dh = getelementptr inbounds i8, ptr %i.ax, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.di = getelementptr inbounds i8, ptr %i.at, i64 %.neg64.i.i
  %i.dj = load i64, ptr %i.dh, align 1, !noalias !146
  store i64 %i.dj, ptr %i.di, align 8, !noalias !146
  %i.dk = icmp eq i64 %i.by, 0
  br i1 %i.dk, label %._crit_edge37, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0E0Csjhlb6SMKfKY_14simple_convert, i64 noundef 8) #22
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit, %bb.c, %bb.o
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.o ], [ %.sroa.7.025, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsiHO4aZxHxup_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB1L_E0NCINvB14_8get_hashB1L_uE0ECsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !165, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5) #24 ; 0 uses
  br label %_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert.exit.i

_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !163, !nonnull !5, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i = load i64, ptr %i.e, align 8, !alias.scope !163, !noundef !5 ; 3 uses
  %i.f = lshr i64 %2, 57
  %i.g = trunc nuw nsw i64 %i.f to i8             ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !164 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %3, align 8, !alias.scope !164, !nonnull !5, !align !12 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !164, !nonnull !5, !align !12
  %i.o = getelementptr i8, ptr %i.m, i64 16
  %i.p = getelementptr i8, ptr %i.m, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert.exit.i
  %.pn.i.i = phi i64 [ %2, %_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert.exit.i ], [ %i.at, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert.exit.i ], [ %.sroa.4.120.i.i, %bb.g ]
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert.exit.i ], [ %.sroa.01.122.i.i, %bb.g ]
  %i.q = phi i64 [ 0, %_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert.exit.i ], [ %i.as, %bb.g ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.r, align 1, !noalias !166 ; 3 uses
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.i
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.t, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ai, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.thread.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = add i64 %.sroa.0.017.i.i, %i.v
  %i.x = and i64 %i.w, %.val5.i
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %.val.i.i = load i64, ptr %i.aa, align 8, !noalias !167, !noundef !5 ; 3 uses
  %i.ab = icmp ult i64 %.val.i.i, %i.k
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.val.i.i ; 2 uses
  %.val2.i.i16.i = load i64, ptr %i.o, align 8, !noalias !168, !noundef !5 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %.val4.i.i.i = load i64, ptr %i.ad, align 8, !noalias !168, !noundef !5
  %i.ae = icmp eq i64 %.val2.i.i16.i, %.val4.i.i.i
  br i1 %i.ae, label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.i, label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.thread.i, !prof !169

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !168
  unreachable

_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.i: ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val3.i.i.i = load ptr, ptr %i.af, align 8, !noalias !168, !nonnull !5, !noundef !5
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !noalias !168, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val3.i.i.i, i64 %.val2.i.i16.i), !noalias !168
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.k, label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.thread.i, !prof !170

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.thread.i, %bb.c
  %.not11.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not11.i.i, label %.thread.i.i, label %bb.f, !prof !7

_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.thread.i: ; preds = %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert.exit.i, %bb.d
  %i.ah = add i16 %.sroa.05.029.i.i, -1
  %i.ai = and i16 %i.ah, %.sroa.05.029.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aj = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread24.i.i, !prof !7

.thread24.i.i:                                    ; preds = %bb.f
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.0.017.i.i, %i.am
  %i.ao = and i64 %i.an, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ao, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.as = add i64 %i.q, 16                        ; 2 uses
  %i.at = add i64 %i.as, %.sroa.0.017.i.i
  br label %bb.c

bb.h:                                             ; preds = %.thread.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.av = load i8, ptr %i.au, align 1, !noalias !164, !noundef !5
end_hunk_0
begin_hunk_1_@_RINvYNtNtCs9Jn0q30Ea0B_6object5xcoff12FileHeader32NtNtNtNtB7_4read5xcoff4file10FileHeader5parseRShECsjhlb6SMKfKY_14simple_convert

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCs9Jn0q30Ea0B_6object5xcoff12FileHeader32NtNtNtNtB7_4read5xcoff4file10FileHeader10aux_headerRShECsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCs9Jn0q30Ea0B_6object5xcoff12FileHeader64NtNtNtNtB7_4read5xcoff4file10FileHeader5parseRShECsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCs9Jn0q30Ea0B_6object5xcoff12FileHeader64NtNtNtNtB7_4read5xcoff4file10FileHeader10aux_headerRShECsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read3strINtB4_8DebugStrINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE7get_strCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read3strINtB5_15DebugStrOffsetsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE14get_str_offsetCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i8 noundef range(i8 4, 9), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read3strINtB5_12DebugLineStrINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE7get_strCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianEE11get_addressCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i8 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE17raw_locations_dwoCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_10RangeListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE10get_offsetCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i32 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE10get_offsetCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i32 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { inlinehint }
attributes #23 = { noinline noreturn }
attributes #24 = { noinline }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{}
!6 = !{i64 -1, i64 -9223372036854775808}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", i32 2002, i32 2000}
!9 = !{!"branch_weights", i32 1, i32 1999}
!10 = !{!"branch_weights", i32 0, i32 1}
!11 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!12 = !{i64 8}
!13 = !{i8 0, i8 2}
!14 = !{i64 0, i64 2}
!15 = !{i64 0, i64 47}
!16 = !{i8 -1, i8 77}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{i64 16}
!19 = distinct !{!19, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!20 = distinct !{!20, !19, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!21 = distinct !{!21, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!22 = distinct !{!22, !21, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!23 = distinct !{!23, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!24 = distinct !{!24, !23, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!25 = distinct !{!25, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!26 = distinct !{!26, !25, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!27 = distinct !{!27, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read7aranges12DebugArangesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!28 = distinct !{!28, !27, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read7aranges12DebugArangesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!29 = distinct !{!29, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!30 = distinct !{!30, !29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!31 = distinct !{!31, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4unit9DebugInfoINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!32 = distinct !{!32, !31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4unit9DebugInfoINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!33 = distinct !{!33, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!34 = distinct !{!34, !33, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!35 = distinct !{!35, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read7aranges12DebugArangesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!36 = distinct !{!36, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read7aranges12DebugArangesINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!37 = distinct !{!37, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!39 = distinct !{!39, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!40 = distinct !{!40, !39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!41 = distinct !{!41, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!42 = distinct !{!42, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!43 = distinct !{!43, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!44 = distinct !{!44, !43, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!45 = distinct !{!45, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!46 = distinct !{!46, !45, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!47 = distinct !{!47, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!48 = distinct !{!48, !47, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4addr9DebugAddrINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!49 = distinct !{!49, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!50 = distinct !{!50, !49, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!51 = distinct !{!51, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!52 = distinct !{!52, !51, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!53 = distinct !{!53, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!54 = distinct !{!54, !53, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!55 = distinct !{!55, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert"}
!56 = distinct !{!56, !55, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!57 = distinct !{!57, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!58 = distinct !{!58, !57, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!59 = !{i64 -2, i64 -9223372036854775808}
!60 = !{!22, !20}
!61 = !{!26, !24}
!62 = !{!30, !28}
!63 = !{!34, !32}
!64 = !{!38, !36}
!65 = !{!42, !40}
!66 = !{!46, !44}
!67 = !{!50, !48}
!68 = !{!54, !52}
!69 = !{!58, !56}
!70 = distinct !{!70, i1 true, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert"}
!71 = distinct !{!71, !70, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 0"}
!72 = distinct !{!72, !70, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 2"}
!73 = distinct !{!73, !70, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 1"}
!74 = distinct !{!74, i1 true, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert"}
!75 = distinct !{!75, !74, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 0"}
!76 = distinct !{!76, !74, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 2"}
!77 = distinct !{!77, !74, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 1"}
!78 = distinct !{!78, i1 true, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert"}
!79 = distinct !{!79, !78, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 0"}
!80 = distinct !{!80, i1 true, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert"}
!81 = distinct !{!81, !80, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 0"}
!82 = distinct !{!82, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert"}
!83 = distinct !{!83, !82, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert: argument 0"}
!84 = distinct !{!84, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert"}
!85 = distinct !{!85, !84, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert: argument 0:It1"}
!86 = distinct !{!86, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert"}
!87 = distinct !{!87, !86, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert: argument 0:It2"}
!88 = distinct !{!88, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert"}
!89 = distinct !{!89, !88, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert: argument 0"}
!90 = distinct !{!90, i1 true, !"_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert"}
!91 = distinct !{!91, !90, !"_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert: argument 0"}
!92 = distinct !{!92, i1 true, !"_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert"}
!93 = distinct !{!93, !92, !"_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert: argument 1"}
!94 = distinct !{!94, !92, !"_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Csjhlb6SMKfKY_14simple_convert: argument 0"}
!95 = distinct !{!95, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!96 = distinct !{!96, !95, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!97 = !{!71}
!98 = !{!71, !73, !72}
!99 = !{!75}
!100 = !{!75, !77, !76, !71, !73, !72}
!101 = !{!81, !79}
!102 = !{!79}
!103 = !{!75, !71}
!104 = !{!83}
!105 = !{!76, !72}
!106 = !{!85}
!107 = !{!87}
!108 = !{!91, !89, !76, !72}
!109 = !{!94, !93, !76, !72}
!110 = !{!96}
!111 = distinct !{!111, i1 true, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert"}
!112 = distinct !{!112, !111, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 0"}
!113 = distinct !{!113, !111, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 2"}
!114 = distinct !{!114, !111, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 1"}
!115 = distinct !{!115, i1 true, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert"}
!116 = distinct !{!116, !115, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 0"}
!117 = distinct !{!117, !115, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 2"}
!118 = distinct !{!118, !115, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 1"}
!119 = distinct !{!119, i1 true, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert"}
!120 = distinct !{!120, !119, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 0"}
!121 = distinct !{!121, i1 true, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert"}
!122 = distinct !{!122, !121, !"_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsjhlb6SMKfKY_14simple_convert: argument 0"}
!123 = distinct !{!123, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert"}
!124 = distinct !{!124, !123, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert: argument 0"}
!125 = distinct !{!125, i1 true, !"_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0E0Csjhlb6SMKfKY_14simple_convert"}
!126 = distinct !{!126, !125, !"_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0E0Csjhlb6SMKfKY_14simple_convert: argument 1"}
!127 = distinct !{!127, !125, !"_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0E0Csjhlb6SMKfKY_14simple_convert: argument 0"}
!128 = distinct !{!128, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert"}
!129 = distinct !{!129, !128, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert: argument 0:It1"}
!130 = distinct !{!130, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert"}
!131 = distinct !{!131, !130, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert: argument 0:It2"}
!132 = distinct !{!132, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert"}
!133 = distinct !{!133, !132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsjhlb6SMKfKY_14simple_convert: argument 0"}
!134 = distinct !{!134, i1 true, !"_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert"}
!135 = distinct !{!135, !134, !"_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert: argument 0"}
!136 = distinct !{!136, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!137 = distinct !{!137, !136, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!138 = !{!112}
!139 = !{!112, !114, !113}
!140 = !{!116}
!141 = !{!116, !118, !117, !112, !114, !113}
!142 = !{!122, !120}
!143 = !{!120}
!144 = !{!116, !112}
!145 = !{!124}
!146 = !{!117, !113}
!147 = !{!127, !126, !117, !113}
!148 = !{!129}
!149 = !{!131}
!150 = !{!135, !133, !117, !113}
!151 = !{!137}
!152 = distinct !{!152, i1 true, !"_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB24_E0NCINvB1n_8get_hashB24_uE0ECsjhlb6SMKfKY_14simple_convert"}
!153 = distinct !{!153, !152, !"_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB24_E0NCINvB1n_8get_hashB24_uE0ECsjhlb6SMKfKY_14simple_convert: argument 0"}
!154 = distinct !{!154, !152, !"_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB24_E0NCINvB1n_8get_hashB24_uE0ECsjhlb6SMKfKY_14simple_convert: argument 1"}
!155 = distinct !{!155, i1 true, !"_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert"}
!156 = distinct !{!156, !155, !"_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECsjhlb6SMKfKY_14simple_convert: argument 0"}
!157 = distinct !{!157, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!158 = distinct !{!158, !157, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!159 = distinct !{!159, i1 true, !"_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert"}
!160 = distinct !{!160, !159, !"_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Csjhlb6SMKfKY_14simple_convert: argument 0"}
!161 = distinct !{!161, i1 true, !"_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuBL_E0Csjhlb6SMKfKY_14simple_convert"}
!162 = distinct !{!162, !161, !"_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuBL_E0Csjhlb6SMKfKY_14simple_convert: argument 0"}
!163 = !{!153}
!164 = !{!154}
!165 = !{!156, !153}
!166 = !{!158, !154}
!167 = !{!160, !154}
!168 = !{!162, !160, !154}
!169 = !{!"branch_weights", i32 2146410443, i32 1073205}
!170 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!171 = distinct !{!171, i1 true, !"_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert"}
!172 = distinct !{!172, !171, !"_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert: argument 0"}
!173 = !{!172}
!174 = distinct !{!174, i1 true, !"_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert"}
!175 = distinct !{!175, !174, !"_RNvXs1_NtCsiHO4aZxHxup_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert: argument 0"}
!176 = distinct !{null, null}
!177 = !{!175}
!178 = distinct !{!178, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!179 = distinct !{!179, !178, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!180 = !{!179}
!181 = distinct !{!181, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!182 = distinct !{!182, !181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!183 = !{!182}
!184 = distinct !{!184, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!185 = distinct !{!185, !184, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!186 = !{!185}
!187 = distinct !{!187, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!188 = distinct !{!188, !187, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!189 = !{!188}
!190 = distinct !{!190, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!191 = distinct !{!191, !190, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!192 = !{!191}
!193 = distinct !{!193, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!194 = distinct !{!194, !193, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!195 = !{!194}
!196 = distinct !{!196, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!197 = distinct !{!197, !196, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!198 = !{!197}
!199 = distinct !{!199, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!200 = distinct !{!200, !199, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!201 = !{!200}
!202 = distinct !{!202, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!203 = distinct !{!203, !202, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!204 = !{!203}
!205 = distinct !{!205, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!206 = distinct !{!206, !205, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!207 = !{!206}
!208 = distinct !{!208, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!209 = distinct !{!209, !208, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!210 = !{!209}
!211 = distinct !{!211, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!212 = distinct !{!212, !211, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!213 = !{!212}
!214 = distinct !{!214, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!215 = distinct !{!215, !214, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!216 = !{!215}
!217 = distinct !{!217, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!218 = distinct !{!218, !217, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!219 = !{!218}
!220 = distinct !{!220, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!221 = distinct !{!221, !220, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!222 = !{!221}
!223 = distinct !{!223, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object5build5bytes10ByteStringECsjhlb6SMKfKY_14simple_convert"}
!224 = distinct !{!224, !223, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object5build5bytes10ByteStringECsjhlb6SMKfKY_14simple_convert: argument 0"}
!225 = distinct !{!225, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!226 = distinct !{!226, !225, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!227 = distinct !{!227, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert"}
!228 = distinct !{!228, !227, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert: argument 0"}
!229 = distinct !{!229, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert"}
!230 = distinct !{!230, !229, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert: argument 0:It1"}
!231 = distinct !{!231, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert"}
!232 = distinct !{!232, !231, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjhlb6SMKfKY_14simple_convert: argument 0:It2"}
!233 = distinct !{!233, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object5build3elf11SectionDataECsjhlb6SMKfKY_14simple_convert"}
!234 = distinct !{!234, !233, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object5build3elf11SectionDataECsjhlb6SMKfKY_14simple_convert: argument 0"}
!235 = distinct !{!235, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object5build5bytes5BytesECsjhlb6SMKfKY_14simple_convert"}
!236 = distinct !{!236, !235, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object5build5bytes5BytesECsjhlb6SMKfKY_14simple_convert: argument 0"}
!237 = distinct !{!237, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!238 = distinct !{!238, !237, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!239 = distinct !{!239, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object5build5bytes5BytesECsjhlb6SMKfKY_14simple_convert"}
!240 = distinct !{!240, !239, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object5build5bytes5BytesECsjhlb6SMKfKY_14simple_convert: argument 0"}
!241 = distinct !{!241, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert"}
!242 = distinct !{!242, !241, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert: argument 0"}
!243 = !{!226, !224}
!244 = !{!228}
!245 = !{!230}
!246 = !{!232}
!247 = !{i64 0, i64 18}
!248 = !{!234}
!249 = !{!238, !236, !234}
!250 = !{!242, !240, !234}
!251 = distinct !{!251, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!252 = distinct !{!252, !251, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!253 = distinct !{!253, !251, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!254 = distinct !{!254, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!255 = distinct !{!255, !254, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!256 = distinct !{!256, !254, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!257 = distinct !{!257, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!258 = distinct !{!258, !257, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!259 = distinct !{!259, !257, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!260 = distinct !{!260, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!261 = distinct !{!261, !260, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!262 = distinct !{!262, !260, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!263 = distinct !{!263, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!264 = distinct !{!264, !263, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!265 = distinct !{!265, !263, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!266 = distinct !{!266, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!267 = distinct !{!267, !266, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!268 = distinct !{!268, !266, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!269 = distinct !{!269, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!270 = distinct !{!270, !269, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!271 = distinct !{!271, !269, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!272 = distinct !{!272, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!273 = distinct !{!273, !272, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!274 = distinct !{!274, !272, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!275 = distinct !{!275, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!276 = distinct !{!276, !275, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!277 = distinct !{!277, !275, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!278 = distinct !{!278, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert"}
!279 = distinct !{!279, !278, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 0"}
!280 = distinct !{!280, !278, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB5_9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert: argument 1"}
!281 = !{!252}
!282 = !{!253}
!283 = !{!255}
!284 = !{!256}
!285 = !{!258}
!286 = !{!259}
!287 = !{!261}
!288 = !{!262}
!289 = !{!264}
!290 = !{!265}
!291 = !{!267}
!292 = !{!268}
!293 = !{!270}
!294 = !{!271}
!295 = !{!273}
!296 = !{!274}
!297 = !{!276}
!298 = !{!277}
!299 = !{!279}
!300 = !{!280}
!301 = distinct !{!301, i1 true, !"_RINvYNtNtCs9Jn0q30Ea0B_6object5xcoff12FileHeader32NtNtNtNtB7_4read5xcoff4file10FileHeader7symbolsRShECsjhlb6SMKfKY_14simple_convert"}
!302 = distinct !{!302, !301, !"_RINvYNtNtCs9Jn0q30Ea0B_6object5xcoff12FileHeader32NtNtNtNtB7_4read5xcoff4file10FileHeader7symbolsRShECsjhlb6SMKfKY_14simple_convert: argument 2"}
!303 = distinct !{!303, !301, !"_RINvYNtNtCs9Jn0q30Ea0B_6object5xcoff12FileHeader32NtNtNtNtB7_4read5xcoff4file10FileHeader7symbolsRShECsjhlb6SMKfKY_14simple_convert: argument 1"}
!304 = distinct !{!304, !301, !"_RINvYNtNtCs9Jn0q30Ea0B_6object5xcoff12FileHeader32NtNtNtNtB7_4read5xcoff4file10FileHeader7symbolsRShECsjhlb6SMKfKY_14simple_convert: argument 0"}
!305 = !{!304, !303, !302}
end_hunk_1
