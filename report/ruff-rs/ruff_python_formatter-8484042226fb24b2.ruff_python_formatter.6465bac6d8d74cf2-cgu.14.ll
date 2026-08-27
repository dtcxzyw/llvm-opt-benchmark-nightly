Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.14?download=true
inline.NumInlined: 542
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB5_12SequenceType12from_pattern:bb.a
  store i32 91, ptr %i.g, align 4
  %i.bm = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.bm, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.al, %.split7.i44, %.split.i40
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ab, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20
  unreachable

bb.aq:                                            ; preds = %bb.ar, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 40, ptr %i.e, align 4
  %i.bn = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.bn, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.bo = sub nuw nsw i64 %i.bd, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 44, ptr %i.f, align 4
  %i.bp = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.bo, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.bp, label %bb.aq, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.bq = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.br = load i64, ptr %i.l, align 8, !noundef !4
  %.not35 = icmp eq i64 %i.br, 0
  br i1 %.not35, label %bb.at, label %switch.lookup

switch.lookup:                                    ; preds = %bb.as
  %i.bs = load i32, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bt = load i64, ptr %i.bq, align 8, !range !13, !noundef !4 ; 3 uses
  %i.bu = icmp ne i64 %i.bt, -9223372036854775804
  call void @llvm.assume(i1 %i.bu)
  %i.bv = xor i64 %i.bt, -9223372036854775808
  %i.bw = icmp slt i64 %i.bt, 0
  %i.bx = select i1 %i.bw, i64 %i.bv, i64 4
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern24is_pattern_parenthesized.153, i64 %i.bx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 %switch.ext
  %.sroa.022.0 = load i32, ptr %i.by, align 4, !noundef !4 ; 2 uses
  %.not36 = icmp ugt i32 %i.bs, %.sroa.022.0
  br i1 %.not36, label %bb.au, label %bb.av, !prof !6

bb.at:                                            ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10take_while9TakeWhileIBQ_NtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenizerNCNvMs1_B1C_B1A_11skip_trivia0ENCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB3g_12SequenceType12from_patterns_0ENCB3a_s0_0ENtNtNtB9_6traits8iterator8Iterator5countB3k_.exit, %bb.as, %bb.aq, %bb.ar
  %.sroa.0.0 = phi i8 [ 1, %bb.as ], [ %., %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10take_while9TakeWhileIBQ_NtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenizerNCNvMs1_B1C_B1A_11skip_trivia0ENCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB3g_12SequenceType12from_patterns_0ENCB3a_s0_0ENtNtNtB9_6traits8iterator8Iterator5countB3k_.exit ], [ 2, %bb.aq ], [ 0, %bb.ar ]
  ret i8 %.sroa.0.0

bb.au:                                            ; preds = %switch.lookup
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20
  unreachable

bb.av:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !149
  call void @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizer3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %i.bs, i32 noundef %.sroa.022.0)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.aw

bb.aw:                                            ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter11filter_foldNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenjNCNvMs1_B13_NtB13_15SimpleTokenizer11skip_trivia0NCINvNtB6_3map8map_foldB11_jjNCINvNvXs1_B4_INtB4_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeB11_NCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB4K_12SequenceType12from_pattern0E0NCINvXsK_NtB3P_5accumjNtB6F_3Sum3sumINtB2T_3MapIB3w_B2d_B21_EB3h_EE0E0E0B4O_.exit.i.i.i, %bb.av
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.av ], [ %.sroa.0.0.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter11filter_foldNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenjNCNvMs1_B13_NtB13_15SimpleTokenizer11skip_trivia0NCINvNtB6_3map8map_foldB11_jjNCINvNvXs1_B4_INtB4_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeB11_NCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB4K_12SequenceType12from_pattern0E0NCINvXsK_NtB3P_5accumjNtB6F_3Sum3sumINtB2T_3MapIB3w_B2d_B21_EB3h_EE0E0E0B4O_.exit.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !154
  call void @_RNvXs2_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d), !noalias !149
  %i.ca = load i8, ptr %i.bz, align 4, !range !8, !noalias !154, !noundef !4 ; 2 uses
  switch i8 %i.ca, label %bb.ax [
    i8 -1, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterIBQ_NtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenizerNCNvMs1_B18_B16_11skip_trivia0ENCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB2M_12SequenceType12from_pattern0ENtNtNtB9_6traits8iterator8Iterator5countB2Q_.exit
    i8 0, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter11filter_foldNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenjNCNvMs1_B13_NtB13_15SimpleTokenizer11skip_trivia0NCINvNtB6_3map8map_foldB11_jjNCINvNvXs1_B4_INtB4_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeB11_NCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB4K_12SequenceType12from_pattern0E0NCINvXsK_NtB3P_5accumjNtB6F_3Sum3sumINtB2T_3MapIB3w_B2d_B21_EB3h_EE0E0E0B4O_.exit.i.i.i
    i8 1, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter11filter_foldNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenjNCNvMs1_B13_NtB13_15SimpleTokenizer11skip_trivia0NCINvNtB6_3map8map_foldB11_jjNCINvNvXs1_B4_INtB4_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeB11_NCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB4K_12SequenceType12from_pattern0E0NCINvXsK_NtB3P_5accumjNtB6F_3Sum3sumINtB2T_3MapIB3w_B2d_B21_EB3h_EE0E0E0B4O_.exit.i.i.i
    i8 3, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter11filter_foldNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenjNCNvMs1_B13_NtB13_15SimpleTokenizer11skip_trivia0NCINvNtB6_3map8map_foldB11_jjNCINvNvXs1_B4_INtB4_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeB11_NCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB4K_12SequenceType12from_pattern0E0NCINvXsK_NtB3P_5accumjNtB6F_3Sum3sumINtB2T_3MapIB3w_B2d_B21_EB3h_EE0E0E0B4O_.exit.i.i.i
    i8 4, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter11filter_foldNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenjNCNvMs1_B13_NtB13_15SimpleTokenizer11skip_trivia0NCINvNtB6_3map8map_foldB11_jjNCINvNvXs1_B4_INtB4_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeB11_NCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB4K_12SequenceType12from_pattern0E0NCINvXsK_NtB3P_5accumjNtB6F_3Sum3sumINtB2T_3MapIB3w_B2d_B21_EB3h_EE0E0E0B4O_.exit.i.i.i
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.cb = icmp eq i8 %i.ca, 5
  %i.cc = zext i1 %i.cb to i64
  %i.cd = add i64 %.sroa.0.0.i.i.i, %i.cc
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter11filter_foldNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenjNCNvMs1_B13_NtB13_15SimpleTokenizer11skip_trivia0NCINvNtB6_3map8map_foldB11_jjNCINvNvXs1_B4_INtB4_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeB11_NCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB4K_12SequenceType12from_pattern0E0NCINvXsK_NtB3P_5accumjNtB6F_3Sum3sumINtB2T_3MapIB3w_B2d_B21_EB3h_EE0E0E0B4O_.exit.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter11filter_foldNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenjNCNvMs1_B13_NtB13_15SimpleTokenizer11skip_trivia0NCINvNtB6_3map8map_foldB11_jjNCINvNvXs1_B4_INtB4_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeB11_NCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB4K_12SequenceType12from_pattern0E0NCINvXsK_NtB3P_5accumjNtB6F_3Sum3sumINtB2T_3MapIB3w_B2d_B21_EB3h_EE0E0E0B4O_.exit.i.i.i: ; preds = %bb.ax, %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.cd, %bb.ax ], [ %.sroa.0.0.i.i.i, %bb.aw ], [ %.sroa.0.0.i.i.i, %bb.aw ], [ %.sroa.0.0.i.i.i, %bb.aw ], [ %.sroa.0.0.i.i.i, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !154
  br label %bb.aw

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterIBQ_NtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenizerNCNvMs1_B18_B16_11skip_trivia0ENCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB2M_12SequenceType12from_pattern0ENtNtNtB9_6traits8iterator8Iterator5countB2Q_.exit: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !149
  %i.ce = load i64, ptr %i.bq, align 8, !range !13, !noundef !4 ; 3 uses
  %i.cf = icmp ne i64 %i.ce, -9223372036854775804
  call void @llvm.assume(i1 %i.cf)
  %i.cg = xor i64 %i.ce, -9223372036854775808
  %i.ch = icmp slt i64 %i.ce, 0
  %i.ci = select i1 %i.ch, i64 %i.cg, i64 4
  %switch.gep92 = getelementptr inbounds i8, ptr @switch.table._RNvNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern24is_pattern_parenthesized, i64 %i.ci
  %switch.load93 = load i8, ptr %switch.gep92, align 1
  %switch.ext94 = zext i8 %switch.load93 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %switch.ext94
  %.sroa.024.055 = load i32, ptr %i.cj, align 4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !157
  call void @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizer3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %.sroa.024.055, i32 noundef %.sroa.024.055)
  %.sroa.4.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 0, ptr %.sroa.4.0..sroa_idx46, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterIBQ_NtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenizerNCNvMs1_B18_B16_11skip_trivia0ENCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB2M_12SequenceType12from_pattern0ENtNtNtB9_6traits8iterator8Iterator5countB2Q_.exit
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterIBQ_NtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenizerNCNvMs1_B18_B16_11skip_trivia0ENCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB2M_12SequenceType12from_pattern0ENtNtNtB9_6traits8iterator8Iterator5countB2Q_.exit ], [ %.sroa.3.0.i.pn.i.ph.i.i.i.i.i, %bb.ba ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160
  call void @_RNvXs2_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b), !noalias !170
  %i.cl = load i8, ptr %i.ck, align 4, !range !8, !noalias !160, !noundef !4 ; 2 uses
  switch i8 %i.cl, label %bb.az [
    i8 -1, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10take_while9TakeWhileIBQ_NtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenizerNCNvMs1_B1C_B1A_11skip_trivia0ENCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB3g_12SequenceType12from_patterns_0ENCB3a_s0_0ENtNtNtB9_6traits8iterator8Iterator5countB3k_.exit
    i8 0, label %bb.ba
    i8 1, label %bb.ba
    i8 3, label %bb.ba
    i8 4, label %bb.ba
    i8 11, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10take_while9TakeWhileIBQ_NtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenizerNCNvMs1_B1C_B1A_11skip_trivia0ENCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB3g_12SequenceType12from_patterns_0ENCB3a_s0_0ENtNtNtB9_6traits8iterator8Iterator5countB3k_.exit
  ]

bb.az:                                            ; preds = %bb.ay
  %i.cm = icmp eq i8 %i.cl, 6
  %i.cn = zext i1 %i.cm to i64
  %i.co = add i64 %.sroa.01.0.i.i.i.i.i, %i.cn
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ay, %bb.ay, %bb.ay
  %.sroa.3.0.i.pn.i.ph.i.i.i.i.i = phi i64 [ %i.co, %bb.az ], [ %.sroa.01.0.i.i.i.i.i, %bb.ay ], [ %.sroa.01.0.i.i.i.i.i, %bb.ay ], [ %.sroa.01.0.i.i.i.i.i, %bb.ay ], [ %.sroa.01.0.i.i.i.i.i, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !160
  br label %bb.ay

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10take_while9TakeWhileIBQ_NtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenizerNCNvMs1_B1C_B1A_11skip_trivia0ENCNvMs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern22pattern_match_sequenceNtB3g_12SequenceType12from_patterns_0ENCB3a_s0_0ENtNtNtB9_6traits8iterator8Iterator5countB3k_.exit: ; preds = %bb.ay, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !157
  %i.cp = icmp ugt i64 %.sroa.0.0.i.i.i, %.sroa.01.0.i.i.i.i.i
  %. = select i1 %i.cp, i8 1, i8 2
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor13visit_pattern(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775804
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit
    i64 2, label %bb.d
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit
    i64 6, label %bb.f
    i64 7, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.b:                                             ; preds = %bb.g, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = load i32, ptr %i.g, align 8, !range !171, !noundef !4
  %cond = icmp eq i32 %i.h, 2
  br i1 %cond, label %bb.h, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit

_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit: ; preds = %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit5, %bb.s, %bb.p, %bb.o, %bb.e, %bb.k, %bb.h, %bb.i, %bb.j, %bb.c, %bb.f, %bb.d, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.i, align 8
  br label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.j, align 8
  %i.k = load i64, ptr %0, align 8, !range !172, !noundef !4
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.k, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !align !27, !noundef !4 ; 5 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit, label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 4 uses
  %i.q = icmp ult i64 %i.p, 128102389400760776
  tail call void @llvm.assume(i1 %i.q)
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.p, i64 1) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !range !45, !noundef !4
  %i.u = tail call i8 @llvm.ucmp.i8.i8(i8 %i.t, i8 2)
  switch i8 %i.u, label %bb.b [
    i8 -1, label %bb.q
    i8 0, label %bb.r
    i8 1, label %bb.s
  ]

bb.h:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !range !45, !noundef !4
  switch i8 %i.w, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.x, align 8
  store i8 1, ptr %i.v, align 1
  br label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !4
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8
  br label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit

bb.k:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  br label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit

bb.l:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.ab, align 8, !alias.scope !173, !noalias !176
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !176, !noalias !173, !nonnull !4, !align !27, !noundef !4 ; 2 uses
  %i.ae = load ptr, ptr %2, align 8, !alias.scope !176, !noalias !173, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !176, !noalias !173, !noundef !4
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !noalias !178
  %i.ai = getelementptr i8, ptr %i.ad, i64 16
  %.val1.i = load i64, ptr %i.ai, align 8, !noalias !178
  %i.aj = tail call fastcc noundef zeroext i1 @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern24is_pattern_parenthesized(ptr noundef nonnull align 8 %i.n, ptr %.val.i, i64 %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag), !noalias !178, !inline_history !179
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor13visit_pattern(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2), !inline_history !179
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ak, align 8, !alias.scope !173, !noalias !176
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = load i64, ptr %0, align 8, !range !172, !alias.scope !173, !noalias !176, !noundef !4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.p, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %0, align 8, !alias.scope !173, !noalias !176
  store ptr %i.n, ptr %i.an, align 8, !alias.scope !173, !noalias !176
  br label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.ao, align 8
  store i8 2, ptr %i.s, align 1
  br label %bb.s

bb.r:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = add i64 %i.aq, %i.r
  store i64 %i.ar, ptr %i.ap, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.p, 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx
  %i.av = icmp eq i64 %i.p, 0
  br i1 %i.av, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !180, !noalias !183, !nonnull !4, !align !27, !noundef !4 ; 2 uses
  %i.az = load ptr, ptr %2, align 8, !alias.scope !180, !noalias !183, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !180, !noalias !183, !noundef !4
  %i.bc = getelementptr i8, ptr %i.ay, i64 8
  %i.bd = getelementptr i8, ptr %i.ay, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit5
  %.sroa.0.06 = phi ptr [ %i.at, %.lr.ph ], [ %i.bg, %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit5 ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  store ptr %.sroa.0.06, ptr %i.aw, align 8, !alias.scope !183, !noalias !180
  %.val.i3 = load ptr, ptr %i.bc, align 8, !noalias !185
  %.val1.i4 = load i64, ptr %i.bd, align 8, !noalias !185
  %i.bh = tail call fastcc noundef zeroext i1 @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern24is_pattern_parenthesized(ptr noundef nonnull align 8 %.sroa.0.06, ptr %.val.i3, i64 %.val1.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb), !noalias !185, !inline_history !179
  br i1 %i.bh, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor13visit_pattern(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %.sroa.0.06, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2), !inline_history !179
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i8 1, ptr %i.be, align 8, !alias.scope !183, !noalias !180
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bi = load i64, ptr %0, align 8, !range !172, !alias.scope !183, !noalias !180, !noundef !4
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.x, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit5

bb.x:                                             ; preds = %bb.w
  store i64 2, ptr %0, align 8, !alias.scope !183, !noalias !180
  store ptr %.sroa.0.06, ptr %i.bf, align 8, !alias.scope !183, !noalias !180
  br label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit5

_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit5: ; preds = %bb.w, %bb.x
  %i.bk = icmp eq ptr %i.bg, %i.au
  br i1 %i.bk, label %_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtB5_33CanOmitOptionalParenthesesVisitor17visit_sub_pattern.exit, label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern24is_pattern_parenthesized(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775804
  tail call void @llvm.assume(i1 %i.e)
  %i.f = xor i64 %i.d, -9223372036854775808
  %i.g = icmp slt i64 %i.d, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 4
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern24is_pattern_parenthesized, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %.sroa.07.0 = load i32, ptr %i.i, align 4, !noundef !4
  call void @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer22first_non_trivia_token(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, i32 noundef %.sroa.07.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i8, ptr %i.j, align 4, !range !8, !noundef !4
  %i.l = icmp eq i8 %i.k, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.l, label %switch.lookup10, label %bb.d

switch.lookup10:                                  ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 3 uses
  %i.n = icmp ne i64 %i.m, -9223372036854775804
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.m, -9223372036854775808
  %i.p = icmp slt i64 %i.m, 0
  %i.q = select i1 %i.p, i64 %i.o, i64 4
  %switch.gep11 = getelementptr inbounds i8, ptr @switch.table._RNvNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern24is_pattern_parenthesized.153, i64 %i.q
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext13 = zext i8 %switch.load12 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext13
  %.sroa.08.0 = load i32, ptr %i.r, align 4, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @_RNvMs3_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_18BackwardsTokenizer5up_to(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, i32 noundef %.sroa.08.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_18BackwardsTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !186
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !range !8, !noalias !189, !noundef !4 ; 2 uses
  %.not25.i = icmp eq i8 %i.t, -1
  br i1 %.not25.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %switch.lookup10, %bb.a
  %i.u = phi i8 [ %i.v, %bb.a ], [ %i.t, %switch.lookup10 ] ; 2 uses
  switch i8 %i.u, label %bb.b [
    i8 0, label %bb.a
    i8 1, label %bb.a
    i8 3, label %bb.a
    i8 4, label %bb.a
  ]

bb.a:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  call void @_RNvXs4_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_18BackwardsTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !186
  %i.v = load i8, ptr %i.s, align 4, !range !8, !noalias !189, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.v, -1
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_global16FormatStmtGlobalINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtGlobalE3fmtB8_:bb.a
  store i64 %i.au, ptr %i.av, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1001
  invoke void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB5_8builders14SourcePositionEINtB5_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc6 unwind label %.loopexit, !inline_history !58

.noexc6:                                          ; preds = %.lr.ph.i
  %i.aw = load i32, ptr %i.a, align 8, !range !41, !noalias !1001, !noundef !4
  %.not.i = icmp eq i32 %i.aw, -1
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.u

bb.u:                                             ; preds = %.noexc6.1, %.noexc6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1001
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

.lr.ph.i.1:                                       ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1001
  invoke void @_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatTrailingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc6.1 unwind label %.loopexit, !inline_history !58

.noexc6.1:                                        ; preds = %.lr.ph.i.1
  %i.ax = load i32, ptr %i.a, align 8, !range !41, !noalias !1001, !noundef !4
  %.not.i.1 = icmp eq i32 %i.ax, -1
  br i1 %.not.i.1, label %._crit_edge.i, label %bb.u

._crit_edge.i:                                    ; preds = %.noexc6.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1001
  store i32 -1, ptr %0, align 8, !alias.scope !998, !noalias !1004
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit: ; preds = %bb.u, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.ay = load ptr, ptr %i.j, align 8, !alias.scope !1014, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !1014, !noundef !4
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !noalias !1014
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8.sink.split: ; preds = %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit, %bb.v
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8.sink.split, %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %bb.o, %bb.q, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.bc = load ptr, ptr %i.j, align 8, !alias.scope !1024, !nonnull !4, !noundef !4 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !1024, !noundef !4
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  store i64 %i.be, ptr %i.bc, align 8, !noalias !1024
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit8

bb.w:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_13WithNodeLevelINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_27WithInterpolatedStringStateINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEQB1p_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_18BackwardsTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #13

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMst_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB7_9generated10AnyNodeRef6ptr_eq(i64 noundef range(i64 0, 94), ptr noundef, i64 noundef range(i64 0, 94), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizer3new(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtCs8CpBcHC8tKo_21ruff_python_formatter8buildersNtB6_25JoinCommaSeparatedBuilder5nodesNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterB1u_EEB8_(ptr noalias noundef align 8 dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs8CpBcHC8tKo_21ruff_python_formatter8buildersNtB5_25JoinCommaSeparatedBuilder6finish(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5TokenINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5SpaceINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMsF_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB6_11JoinBuilderINtNtB8_9arguments9ArgumentsNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEB1w_E7entriesINtB8_17FormatRefWithRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtNtNtB1A_5other10identifier16FormatIdentifierB1w_EINtNtB1A_13shared_traits13FormattedIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterB3d_ERB3d_B1w_EEB1A_(ptr noalias noundef align 8 dereferenceable(56), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_13IfGroupBreaksNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB15_E3fmtB19_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB4_4LineINtB6_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1a_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMsF_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB6_11JoinBuilderRINtNtB8_9arguments9ArgumentsNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEB1x_E7entriesINtB8_17FormatRefWithRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtNtNtB1B_5other10identifier16FormatIdentifierB1x_EINtNtB1B_13shared_traits13FormattedIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterB3e_ERB3e_B1x_EEB1B_(ptr noalias noundef align 8 dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_11BlockIndentNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB13_E3fmtB17_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_5GroupNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatBW_E3fmtB10_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_37FormatDanglingOpenParenthesisCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsA_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_12FitsExpandedNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB14_E3fmtB18_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_27WithInterpolatedStringStateINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEQB1p_E3newB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i48, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB5_8builders10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs3_NtNtB1I_5other27interpolated_string_elementNtB2Q_25FormatInterpolatedElementINtB5_6FormatB1E_E3fmt0EEIB45_B1E_E3fmtB1I_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_4TextINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1b_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE8trailingB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer22first_non_trivia_token(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_18BackwardsTokenizer5up_to(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression9left_most(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement13place_comment0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement13place_comments_0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement13place_comments0_0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizer9starts_at(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10expr_slice23assign_comment_in_slice(i32 noundef, i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer24find_only_token_in_range(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef, i32 noundef, i8 noundef range(i8 0, 91), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement23handle_enclosed_comments4_0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement23handle_enclosed_comments_0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement23handle_enclosed_comments0_0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement23handle_enclosed_comments1_0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement23handle_enclosed_comments2_0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7FStringEBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptEBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement23handle_enclosed_comments5_0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement23handle_enclosed_comment0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer15SimpleTokenKindBM_ECs8CpBcHC8tKo_21ruff_python_formatter(i8 noundef range(i8 0, 3), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement35handle_own_line_comment_around_body0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments7visitorNtB6_16CommentPlacement7or_elseNCNvNtB8_9placement35handle_own_line_comment_around_bodys_0EBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter5other10parameters25find_parameter_separators(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 4 captures(none) dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMst_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB7_9generated10AnyNodeRef18last_child_in_body(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMst_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB7_9generated10AnyNodeRef36is_first_statement_in_alternate_body(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef range(i64 0, 94), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers25comment_indentation_after(i64 noundef range(i64 0, 94), ptr noundef, i32 noundef, i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace21indentation_at_offset(i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMst_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB7_9generated10AnyNodeRef26is_first_statement_in_body(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef range(i64 0, 94), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10expressionNtB5_10StringLike5parts(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsm_NtCskLngH8kgpZI_15ruff_python_ast10expressionNtB5_18StringLikePartIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges19contains_line_break(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_24ParenthesizedExpressions8contains(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB5_8builders5SpaceEINtB5_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1P_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionIBA_NtNtB5_8builders5SpaceEEINtB5_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1U_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB5_8builders4LineEINtB5_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1O_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated20PatternMatchSequenceEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_27MaybeParenthesizeExpressionINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 1, 0) i32 @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB2_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE8group_idB12_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_19IndentIfGroupBreaksNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB1b_E3fmtB1f_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXs8_NtCs2MoD74u7shA_14ruff_text_size6traitseNtB6_9TextSlice5sliceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes32InterpolatedStringLiteralElementECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9normalize16normalize_string(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i16 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_22SourceTextSliceBuilderINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1u_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern19pattern_match_value23FormatPatternMatchValueINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated17PatternMatchValueE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern21pattern_match_mapping25FormatPatternMatchMappingINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated19PatternMatchMappingE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern19pattern_match_class23FormatPatternMatchClassINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated17PatternMatchClassE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter5other9parameter15FormatParameterINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments25leading_dangling_trailingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEB8_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvXs2_NtCs8CpBcHC8tKo_21ruff_python_formatter7patternNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternNtNtNtB7_10expression11parentheses16NeedsParentheses17needs_parentheses(ptr noundef nonnull align 8, i64 noundef range(i64 0, 94), ptr noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i8 } @_RNvXNtCs8CpBcHC8tKo_21ruff_python_formatter13shared_traitsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternINtB2_8AsFormatNtNtB4_7context15PyFormatContextE6formatB4_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter8buildersNtB4_21ParenthesizeIfExpandsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_13WithNodeLevelINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEE3newB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i64, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_19BestFitParenthesizeNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB1b_E3fmtB1f_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsl_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_9DebugText7leading(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvNtCs8CpBcHC8tKo_21ruff_python_formatter8verbatim13verbatim_textRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB4_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs9_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_12VerbatimTextINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsl_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_9DebugText8trailing(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvNtCs8CpBcHC8tKo_21ruff_python_formatter8verbatim13verbatim_textRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEB4_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes19InterpolatedElementEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 2 ptr @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB2_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE7optionsB12_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer8elementsB15_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer5stateB15_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9state_mutB15_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer8snapshotB15_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer16restore_snapshotB15_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format37FormatDanglingOpenParenthesisCommentsEINtB5_6FormatNtNtB1h_7context15PyFormatContextE3fmtB1h_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter6bufferQINtB4_21RemoveSoftLinesBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtB4_6Buffer13write_elementB1f_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter6bufferQINtB4_21RemoveSoftLinesBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtB4_6Buffer8elementsB1f_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter6bufferQINtB4_21RemoveSoftLinesBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtB4_6Buffer9write_fmtB1f_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter6bufferQINtB4_21RemoveSoftLinesBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtB4_6Buffer5stateB1f_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter6bufferQINtB4_21RemoveSoftLinesBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtB4_6Buffer9state_mutB1f_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter6bufferQINtB4_21RemoveSoftLinesBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtB4_6Buffer8snapshotB1f_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs7Ma6rQP8bRy_14ruff_formatter6bufferQINtB4_21RemoveSoftLinesBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtB4_6Buffer16restore_snapshotB1f_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_6IndentNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatBX_E3fmtB11_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern18pattern_match_star22FormatPatternMatchStarINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated16PatternMatchStarE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern16pattern_match_as20FormatPatternMatchAsINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated14PatternMatchAsE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern16pattern_match_or20FormatPatternMatchOrINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated14PatternMatchOrE3fmtB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_7Display3fmtCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCsiXichZnxgbf_6anyhow7contextINtB5_6QuotedQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtBQ_5Write9write_str(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceComment15partition_pointNCNvXs4_NtNtBz_10expression11parenthesesNtB1X_24FormatEmptyParenthesizedINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBz_7context15PyFormatContextE3fmt0EBz_(ptr noundef nonnull align 4, i64 noundef range(i64 0, 768614336404564651)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatTrailingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7Ma6rQP8bRy_14ruff_formatter14format_element18normalize_newlinesKj1_ECs8CpBcHC8tKo_21ruff_python_formatter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMsi_NtCs7Ma6rQP8bRy_14ruff_formatter14format_elementNtB5_9TextWidth9from_text(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8CpBcHC8tKo_21ruff_python_formatter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtB6_5Debug3fmtCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB4_10FormatExprINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB6_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments25leading_dangling_trailingNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEB8_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 94), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_14SourcePositionINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1m_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB5_8builders14SourcePositionEINtB5_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1Z_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated20PatternMatchSequenceNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated20PatternMatchSequenceNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated21PatternMatchSingletonNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated21PatternMatchSingletonNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated9StmtBreakNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated9StmtBreakNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtAssertNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtAssertNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtGlobalNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtGlobalNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noreturn }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_1
