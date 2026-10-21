Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.10?download=true
inline.NumInlined: 5211
inline.NumDeleted: 2104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB5_16TypedValueParser9parse_refB1m_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9240
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.cy, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs0_0B1o_.exit, %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs2_0B1o_.exit, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserBQ_ENtB2o_16TypedValueParser9parse_refs1_0EBS_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs0_0B1o_.exit ], [ 1, %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs2_0B1o_.exit ], [ 0, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserBQ_ENtB2o_16TypedValueParser9parse_refs1_0EBS_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCsbvkFyIu7lgC_4core3fmtuNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @354, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array10null_countCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9247, !noundef !14
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not.i, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array11is_nullableCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9250, !noundef !14
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !9250
  %i.e = icmp ne i64 %i.d, 0
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array13logical_nullsCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9253, !noundef !14 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.b, ptr %0, align 8
  %.sroa.02.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.02.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load <2 x i64>, ptr %i.g, align 8
  store <2 x i64> %i.i, ptr %.sroa.02.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x i64>, ptr %i.h, align 8
  store <2 x i64> %i.j, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9256, !noundef !14
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !noundef !14
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.e, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @355, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #40
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !noundef !14
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noundef !14
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = xor i8 %i.m, -1
  %i.q = lshr i8 %i.p, %i.o
  %i.r = trunc i8 %i.q to i1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array8is_validCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9261)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9262, !noundef !14
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !9261, !noundef !14
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @355, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #40, !noalias !9261
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !9261, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !9261, !noundef !14
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !9261, !noundef !14
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = xor i8 %i.m, -1
  %i.q = lshr i8 %i.p, %i.o
  %i.r = trunc i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  br label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.s, %bb.d ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9271)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB36_15EnumValueParserB2i_ENtB36_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9273)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !9274, !nonnull !14, !noundef !14
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !9274
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB36_15EnumValueParserB2i_ENtB36_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !9274
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !21, !noalias !9275, !noundef !14
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.589, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9275
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !9275
  store i64 0, ptr %i.d, align 8, !noalias !9275
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !9275
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !9275
  store i64 -9223372036854775808, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !9275
  store ptr %switch.load, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !9275
  store i64 6, ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !noalias !9275
  store i8 0, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !9275
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %2, !noalias !9275

2:                                                ; preds = %switch.lookup
  %3 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %common.resume.i.i.i.i unwind label %4, !noalias !9275

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9275
  unreachable

common.resume.i.i.i.i:                            ; preds = %2
  resume { ptr, i32 } %3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %switch.lookup
  %6 = add i64 %.sroa.01.0.i.i.i, -1              ; 2 uses
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !9275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9275
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB36_15EnumValueParserB2i_ENtB36_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB36_15EnumValueParserB2i_ENtB36_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_.exit: ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9299)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !9300
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9302)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !9303, !nonnull !14, !noundef !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.75.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !9303
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !21, !noalias !9304, !noundef !14
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.589, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9304
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !9304
  store i64 0, ptr %i.d, align 8, !noalias !9304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9304
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9304
  store i64 -9223372036854775808, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9304
  store ptr %switch.load, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9304
  store i64 6, ptr %.sroa.75.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9304
  store i8 0, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9304
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %3, !noalias !9304

3:                                                ; preds = %switch.lookup
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %common.resume.i.i.i.i.i unwind label %5, !noalias !9304

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9304
  unreachable

common.resume.i.i.i.i.i:                          ; preds = %3
  resume { ptr, i32 } %4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %switch.lookup
  %7 = add i64 %.sroa.01.0.i.i.i.i, -1            ; 2 uses
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !9304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9304
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_.exit: ; preds = %bb.c
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %..loopexit_crit_edge
  %i.i = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i ]
  %i.j = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9305)
  call void @llvm.experimental.noalias.scope.decl(metadata !9306)
  call void @llvm.experimental.noalias.scope.decl(metadata !9307)
  call void @llvm.experimental.noalias.scope.decl(metadata !9308)
  %i.k = icmp eq ptr %i.j, %i.i
  br i1 %i.k, label %bb.d, label %switch.lookup11

switch.lookup11:                                  ; preds = %.loopexit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.l, ptr %1, align 8, !alias.scope !9300
  %.val.i.i = load i8, ptr %i.j, align 1, !range !21, !noalias !9309, !noundef !14
  store i64 0, ptr %0, align 8, !alias.scope !9310
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9310
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9310
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775808, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9310
  %i.m = zext nneg i8 %.val.i.i to i64
  %switch.gep12 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.589, i64 %i.m
  %switch.load13 = load ptr, ptr %switch.gep12, align 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load13, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9310
  store i64 6, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9310
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9310
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

bb.d:                                             ; preds = %.loopexit
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !9311
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit: ; preds = %bb.d, %switch.lookup11, %_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1u_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1w_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB6_5table13TableProvider11delete_fromCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9314
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -15) 40, i64 noundef range(i64 1, 17) 8) #36, !noalias !9314 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBN_5table13TableProvider11delete_from0E3newCs2VbMhdeEr66_16delta_benchmarks.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBP_5table13TableProvider11delete_from0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #38
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBN_5table13TableProvider11delete_from0E3newCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @358, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB6_5table13TableProvider11insert_intoCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %4, i8 noundef range(i8 0, 3) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.b, align 8
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 0, ptr %i.e, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9321
  %i.f = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -15) 32, i64 noundef range(i64 1, 17) 8) #36, !noalias !9321 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBN_5table13TableProvider11insert_into0E3newCs2VbMhdeEr66_16delta_benchmarks.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #37
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = atomicrmw add ptr %3, i64 -1 release, align 8, !noalias !9322
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBP_5table13TableProvider11insert_into0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBP_5table13TableProvider11insert_into0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBP_5table13TableProvider11insert_into0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBN_5table13TableProvider11insert_into0E3newCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @359, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB6_5table13TableProvider14scan_with_argsCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9325
  %i.f = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -15) 168, i64 noundef range(i64 1, 17) 8) #36, !noalias !9325 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBN_5table13TableProvider14scan_with_args0E3newCs2VbMhdeEr66_16delta_benchmarks.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #37
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBP_5table13TableProvider14scan_with_args0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #38
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBN_5table13TableProvider14scan_with_args0E3newCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.f, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @360, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB6_5table13TableProvider6updateCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.b, align 8
end_hunk_0
