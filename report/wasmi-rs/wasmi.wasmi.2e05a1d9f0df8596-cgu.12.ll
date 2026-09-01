Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi.wasmi.2e05a1d9f0df8596-cgu.12?download=true
inline.NumInlined: 391
inline.NumDeleted: 298
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs1VvpiNK3DOA_4wast5lexer8LexErrorNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi:bb.a
    i8 11, label %bb.n
    i8 12, label %bb.o
    i8 13, label %bb.p
    i8 14, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 20), !noalias !421
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !427
  store ptr %i.j, ptr %i.i, align 8, !noalias !427
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 10, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !427
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !427
  store ptr %i.j, ptr %i.h, align 8, !noalias !427
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 20, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !427
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !427
  store ptr %i.j, ptr %i.g, align 8, !noalias !427
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 19, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !427
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !427
  store ptr %i.j, ptr %i.f, align 8, !noalias !427
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 15, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !427
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !427
  store ptr %i.j, ptr %i.e, align 8, !noalias !427
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 12, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !427
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !427
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.v, ptr %i.d, align 8, !noalias !427
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 5, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !427
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 13), !noalias !421
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.k:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 12), !noalias !421
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !427
  store ptr %i.j, ptr %i.c, align 8, !noalias !427
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 19, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !427
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.m:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 14), !noalias !421
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !427
  store ptr %i.j, ptr %i.b, align 8, !noalias !427
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !427
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !427
  store ptr %i.j, ptr %i.a, align 8, !noalias !427
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.p:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 7), !noalias !421
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.q:                                             ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 15), !noalias !421
  br label %_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXsr_NtCs1VvpiNK3DOA_4wast5lexerNtB5_8LexErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.in.i = phi i1 [ %i.p, %bb.c ], [ %i.q, %bb.d ], [ %i.r, %bb.e ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.w, %bb.i ], [ %i.x, %bb.j ], [ %i.y, %bb.k ], [ %i.z, %bb.l ], [ %i.aa, %bb.m ], [ %i.ab, %bb.n ], [ %i.ac, %bb.o ], [ %i.ad, %bb.p ], [ %i.ae, %bb.q ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core5value4V128NtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !428
  store ptr %i.b, ptr %i.a, align 8, !noalias !428
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !428
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs6kx5fqqPdgs_8wasmi_ir5index4SlotNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !432, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !433
  store ptr %i.b, ptr %i.a, align 8, !noalias !433
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !433
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs6kx5fqqPdgs_8wasmi_ir5index7RawSlotNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !432, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !437
  store ptr %i.b, ptr %i.a, align 8, !noalias !437
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !437
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi5table5TableNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !432, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !441
  store ptr %i.b, ptr %i.a, align 8, !noalias !441
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !441
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi6limits11LimitsErrorNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !445, !noundef !5
  %i.b = zext nneg i8 %.val to i64
  %i.c = load ptr, ptr @_RNvNvXs1_NtCsefoF4u9kbII_5wasmi6limitsNtB7_11LimitsErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, align 8, !noalias !446, !nonnull !5, !noundef !5
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtCsefoF4u9kbII_5wasmi6limitsNtB7_11LimitsErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noalias !446, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXs1_NtCsefoF4u9kbII_5wasmi6limitsNtB7_11LimitsErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 20, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi6memory6MemoryNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !432, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !449
  store ptr %i.b, ptr %i.a, align 8, !noalias !449
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !449
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net6parser8AddrKindNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !453, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net6parser8AddrKindNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net6parser8AddrKindNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi.159, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs3WYoaQ2jqaU_5wasmi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06
  %.val = load i8, ptr %i.b, align 1, !range !454, !noundef !5 ; 2 uses
  %.val5 = load i8, ptr %i.c, align 1, !range !454, !noundef !5 ; 2 uses
  %.not.not = icmp ne i8 %.val, %.val5
  %i.d = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %2
  %or.cond.not = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.not = icmp eq i8 %.val, %.val5
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEECs3WYoaQ2jqaU_5wasmi.exit, label %.lr.ph

.body:                                            ; preds = %bb.e, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEECs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %bb.c
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEECs3WYoaQ2jqaU_5wasmi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEECs3WYoaQ2jqaU_5wasmi.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEECs3WYoaQ2jqaU_5wasmi.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEECs3WYoaQ2jqaU_5wasmi.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %.lr.ph18
  %i.s = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.h
  br i1 %i.t, label %.body, label %.lr.ph18

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.q, %bb.b ]
  %i.v = icmp eq i64 %i.p, %i.h
  br i1 %i.v, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.s, %bb.e ], [ %i.p, %.body.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #24
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph18
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEECs3WYoaQ2jqaU_5wasmi.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5                   ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit8.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit.i
  %.sroa.0.09.i = phi i64 [ %i.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !464, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !467
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2C93r1qUspC_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.s = icmp eq i64 %i.o, %i.h
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.o, %i.h
  br i1 %i.u, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit8.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.w = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !477, !nonnull !5, !noundef !5
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !478
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2C93r1qUspC_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit8.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.aa = icmp eq i64 %i.w, %i.h
  br i1 %i.aa, label %.body, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueECs3WYoaQ2jqaU_5wasmi.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2C93r1qUspC_12clap_builder4util9any_value8AnyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

end_hunk_0
