Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.06?download=true
inline.NumInlined: 222
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_16TypedValueParser9parse_refB1m_:bb.a
    #dbg_value(ptr %i.cu, !9294, !DIExpression(), !9806)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9944
  store ptr %i.cu, ptr %i.cy, align 8, !dbg !9944
  br label %bb.ay, !dbg !9945

bb.ay:                                            ; preds = %_RNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB7_16TypedValueParser9parse_refs0_0B1o_.exit, %_RNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB7_16TypedValueParser9parse_refs2_0B1o_.exit, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB2p_15EnumValueParserBQ_ENtB2p_16TypedValueParser9parse_refs1_0EBS_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB7_16TypedValueParser9parse_refs0_0B1o_.exit ], [ 1, %_RNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB7_16TypedValueParser9parse_refs2_0B1o_.exit ], [ 0, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB2p_15EnumValueParserBQ_ENtB2p_16TypedValueParser9parse_refs1_0EBS_.exit ]
  store i8 %.sink, ptr %0, align 8, !dbg !9946
  ret void, !dbg !9891
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !dbg !9947 {
bb.a:
    #dbg_value(ptr %0, !9958, !DIExpression(), !9961)
    #dbg_value(ptr %0, !9962, !DIExpression(), !9965)
    #dbg_value(ptr %0, !9966, !DIExpression(), !9969)
    #dbg_value(ptr %1, !9959, !DIExpression(), !9961)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9975
  %i.b = load ptr, ptr %i.a, align 8, !dbg !9975, !nonnull !989, !noundef !989
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9976
  %i.d = load i64, ptr %i.c, align 8, !dbg !9976, !noundef !989
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !9977
  ret i1 %i.e, !dbg !9978
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsu_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsertENtB5_16TypedValueParser9parse_refCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9997 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !10986, !DIExpression(), !10007)
  %i.k = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !10986, !DIExpression(), !10009)
    #dbg_value(ptr poison, !10986, !DIExpression(), !10011)
    #dbg_value(ptr poison, !10986, !DIExpression(), !10013)
  %i.l = alloca [24 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 3 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !11000, !DIExpression(DW_OP_LLVM_fragment, 16, 48), !11036)
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !11037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11052)
    #dbg_value(ptr poison, !11031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11053)
    #dbg_value(ptr %3, !11054, !DIExpression(), !11062)
    #dbg_value(ptr %3, !11063, !DIExpression(), !11071)
    #dbg_value(ptr %3, !10954, !DIExpression(), !11072)
    #dbg_value(ptr %3, !11073, !DIExpression(), !11083)
    #dbg_value(ptr %1, !10952, !DIExpression(), !11072)
    #dbg_value(ptr %2, !10953, !DIExpression(), !11072)
    #dbg_value(ptr %4, !10955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11072)
    #dbg_value(ptr %4, !11084, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11087)
    #dbg_value(ptr %4, !11088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11091)
    #dbg_value(i64 %5, !10955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11072)
    #dbg_value(i64 %5, !11084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11087)
    #dbg_value(i64 %5, !11088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11091)
    #dbg_declare(ptr %i.ae, !11092, !DIExpression(), !11097)
    #dbg_declare(ptr %i.ad, !11098, !DIExpression(), !11101)
    #dbg_declare(ptr %i.ad, !11102, !DIExpression(), !11105)
    #dbg_declare(ptr %i.aa, !11106, !DIExpression(), !11110)
    #dbg_value(i32 10, !11111, !DIExpression(), !11120)
    #dbg_declare(ptr poison, !11079, !DIExpression(), !11130)
    #dbg_declare(ptr poison, !11131, !DIExpression(), !11141)
    #dbg_declare(ptr poison, !11142, !DIExpression(), !11149)
    #dbg_declare(ptr poison, !11156, !DIExpression(), !11162)
    #dbg_declare(ptr poison, !11163, !DIExpression(), !11167)
    #dbg_declare(ptr poison, !11168, !DIExpression(), !11172)
    #dbg_declare(ptr poison, !11173, !DIExpression(), !11180)
    #dbg_value(i64 0, !11181, !DIExpression(), !11187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !11818
    #dbg_value(ptr %4, !11188, !DIExpression(), !11191)
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !dbg !11819
  %i.ai = load i64, ptr %i.aa, align 8, !dbg !11820, !range !1645, !noundef !989
  %i.aj = trunc nuw i64 %i.ai to i1, !dbg !11821
  br i1 %i.aj, label %bb.b, label %bb.c, !dbg !11821

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !11192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11204)
    #dbg_value(i64 poison, !11192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11204)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !11822
    #dbg_value(ptr %2, !11200, !DIExpression(), !11204)
    #dbg_value(ptr poison, !11205, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10073)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !11823, !noalias !11209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !11823, !noalias !11209
  call void @_RNvMNtNtCs172jLVBUT4Z_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2), !dbg !11823
  call void @_RNvMNtNtCs172jLVBUT4Z_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0), !dbg !11824
  %i.ak = call noundef nonnull align 8 ptr @_RNvMNtCs172jLVBUT4Z_12clap_builder5errorNtB2_5Error12invalid_utf8Cs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x), !dbg !11825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !11826, !noalias !11209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !11826, !noalias !11209
    #dbg_value(ptr %i.ak, !10958, !DIExpression(), !11210)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11827
  store ptr %i.ak, ptr %i.al, align 8, !dbg !11827
  store i16 1, ptr %0, align 8, !dbg !11827
  br label %bb.dt, !dbg !11828

bb.c:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !11829
  %i.an = load ptr, ptr %i.am, align 8, !dbg !11829, !nonnull !989, !noundef !989 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !11829
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !11829, !noundef !989 ; 5 uses
    #dbg_value(ptr %i.an, !11192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11204)
    #dbg_value(i64 %i.ap, !11192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11204)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !11822
    #dbg_value(ptr %2, !11200, !DIExpression(), !11204)
    #dbg_value(ptr %i.an, !10956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11212)
    #dbg_value(ptr %i.an, !11123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11213)
    #dbg_value(ptr %i.an, !11128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11214)
    #dbg_value(ptr %i.an, !11115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11120)
    #dbg_value(i64 %i.ap, !10956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11212)
    #dbg_value(i64 %i.ap, !11123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11213)
    #dbg_value(i64 %i.ap, !11128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11214)
    #dbg_value(i64 %i.ap, !11115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !11830
    #dbg_value(ptr %i.an, !11215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(ptr %i.an, !11221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10106)
    #dbg_value(i64 %i.ap, !11215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(i64 %i.ap, !11221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10106)
    #dbg_value(i32 10, !11218, !DIExpression(), !10105)
    #dbg_value(i8 1, !11219, !DIExpression(), !10107)
    #dbg_value(i8 1, !11256, !DIExpression(), !10110)
  switch i64 %i.ap, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ], !dbg !11831

bb.d:                                             ; preds = %bb.c
  %i.aq = load i8, ptr %i.an, align 1, !dbg !11832, !alias.scope !11260, !noalias !11261, !noundef !989 ; 2 uses
  switch i8 %i.aq, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ], !dbg !11832

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.an, align 1, !dbg !11832, !alias.scope !11260, !noalias !11261
  br label %bb.e, !dbg !11832

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.ar = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.aq, %bb.d ], !dbg !11832
  switch i8 %i.ar, label %bb.l [
    i8 43, label %bb.f
    i8 45, label %bb.g
  ], !dbg !11832

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 1, !dbg !11833
  %i.at = add nsw i64 %i.ap, -1, !dbg !11833
    #dbg_value(i8 1, !11220, !DIExpression(), !10106)
    #dbg_value(ptr %i.as, !11215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(ptr %i.as, !11221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10106)
    #dbg_value(i64 %i.at, !11215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(i64 %i.at, !11221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10106)
  br label %bb.l, !dbg !11834

bb.g:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 1, !dbg !11835 ; 2 uses
  %i.av = add nsw i64 %i.ap, -1, !dbg !11835      ; 3 uses
    #dbg_value(i8 0, !11220, !DIExpression(), !10106)
    #dbg_value(ptr %i.au, !11215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(ptr %i.au, !11221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10106)
    #dbg_value(i64 %i.av, !11215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(i64 %i.av, !11221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10106)
    #dbg_value(i64 0, !11225, !DIExpression(), !10114)
    #dbg_value(i64 0, !11262, !DIExpression(), !10119)
    #dbg_value(i64 0, !11271, !DIExpression(), !10123)
    #dbg_value(i64 0, !11279, !DIExpression(), !10127)
    #dbg_value(i64 0, !11284, !DIExpression(), !10130)
    #dbg_value(i64 0, !11262, !DIExpression(), !10132)
    #dbg_value(i64 0, !11271, !DIExpression(), !10134)
    #dbg_value(i64 0, !11289, !DIExpression(), !10138)
    #dbg_value(i64 0, !11295, !DIExpression(), !10141)
    #dbg_value(i32 10, !11257, !DIExpression(), !10110)
    #dbg_value(ptr %i.au, !11258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10110)
    #dbg_value(i64 %i.av, !11258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10110)
  %i.aw = icmp samesign ult i64 %i.ap, 17, !dbg !11836
    #dbg_value(ptr %i.au, !11221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10106)
    #dbg_value(ptr %i.au, !11215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(i64 %i.av, !11221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10106)
    #dbg_value(i64 %i.av, !11215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
  br i1 %i.aw, label %.preheader146.i, label %.lr.ph.i.a, !dbg !11837

.preheader146.i:                                  ; preds = %bb.g
  %.not135169.i = icmp eq i64 %i.av, 0, !dbg !11838
  br i1 %.not135169.i, label %_RNvMsr_NtCskKLDkoKarTP_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph173.i, !dbg !11838

.lr.ph.i.a:                                       ; preds = %bb.g, %bb.j
  %.sroa.0.1168.i = phi ptr [ %i.ax, %bb.j ], [ %i.au, %bb.g ] ; 3 uses
  %.sroa.26.1167.i = phi i64 [ %i.ay, %bb.j ], [ %i.av, %bb.g ]
  %.sroa.084.0166.i = phi i64 [ %i.bj, %bb.j ], [ 0, %bb.g ]
    #dbg_value(i64 %.sroa.084.0166.i, !11295, !DIExpression(), !10141)
    #dbg_value(ptr %.sroa.0.1168.i, !11241, !DIExpression(), !10142)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.1168.i, i64 1, !dbg !11839
  %i.ay = add nsw i64 %.sroa.26.1167.i, -1, !dbg !11839 ; 2 uses
    #dbg_value(ptr %i.ax, !11242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10142)
    #dbg_value(i64 %i.ay, !11242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10142)
    #dbg_value(i64 10, !11265, !DIExpression(), !10132)
    #dbg_value(i64 10, !11277, !DIExpression(), !10134)
  %i.az = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0166.i, i64 10), !dbg !11840 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 0, !dbg !11840
  %i.bb = extractvalue { i64, i1 } %i.az, 1, !dbg !11840
    #dbg_value(i64 %i.ba, !11268, !DIExpression(), !10143)
    #dbg_value(i1 %i.bb, !11269, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10143)
    #dbg_value(i1 %i.bb, !11298, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10146)
  br i1 %i.bb, label %.loopexit.sink.split, label %bb.h, !dbg !11841, !prof !1647

bb.h:                                             ; preds = %.lr.ph.i.a
    #dbg_value(i64 %i.ba, !11243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10147)
    #dbg_value(i64 1, !11243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10147)
  %i.bc = load i8, ptr %.sroa.0.1168.i, align 1, !dbg !11842, !alias.scope !11260, !noalias !11261, !noundef !989
  %i.bd = zext i8 %i.bc to i32, !dbg !11843
    #dbg_value(i32 %i.bd, !3238, !DIExpression(), !10149)
    #dbg_value(i32 10, !3241, !DIExpression(), !10149)
    #dbg_value(i32 65, !3244, !DIExpression(), !10151)
    #dbg_value(i32 48, !3244, !DIExpression(), !10153)
    #dbg_value(i32 %i.bd, !3245, !DIExpression(), !10153)
  %i.be = add nsw i32 %i.bd, -48, !dbg !11844     ; 2 uses
    #dbg_value(i32 %i.be, !3242, !DIExpression(), !10154)
  %i.bf = icmp ult i32 %i.be, 10, !dbg !11845
  br i1 %i.bf, label %bb.i, label %.loopexit, !dbg !11846

bb.i:                                             ; preds = %bb.h
  %i.bg = zext nneg i32 %i.be to i64, !dbg !11847
    #dbg_value(i64 %i.bg, !11244, !DIExpression(), !10155)
    #dbg_value(i64 %i.ba, !11225, !DIExpression(), !10114)
    #dbg_value(i64 %i.ba, !11262, !DIExpression(), !10119)
    #dbg_value(i64 %i.ba, !11271, !DIExpression(), !10123)
    #dbg_value(i64 %i.ba, !11279, !DIExpression(), !10127)
    #dbg_value(i64 %i.ba, !11284, !DIExpression(), !10130)
    #dbg_value(i64 %i.ba, !11262, !DIExpression(), !10132)
    #dbg_value(i64 %i.ba, !11271, !DIExpression(), !10134)
    #dbg_value(i64 %i.ba, !11289, !DIExpression(), !10138)
    #dbg_value(i64 %i.ba, !11295, !DIExpression(), !10141)
    #dbg_value(i64 %i.bg, !11290, !DIExpression(), !10138)
    #dbg_value(i64 %i.bg, !11296, !DIExpression(), !10141)
  %i.bh = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ba, i64 %i.bg), !dbg !11848 ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1, !dbg !11848
    #dbg_value(i64 poison, !11291, !DIExpression(), !10156)
    #dbg_value(i1 %i.bi, !11292, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10156)
    #dbg_value(i1 %i.bi, !11298, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10158)
  br i1 %i.bi, label %.loopexit, label %bb.j, !dbg !11849, !prof !1647

bb.j:                                             ; preds = %bb.i
  %i.bj = extractvalue { i64, i1 } %i.bh, 0, !dbg !11848 ; 2 uses
    #dbg_value(i64 %i.bj, !11291, !DIExpression(), !10156)
    #dbg_value(i64 %i.bj, !11262, !DIExpression(), !10132)
    #dbg_value(i64 %i.bj, !11271, !DIExpression(), !10134)
    #dbg_value(ptr %i.ax, !11221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10106)
    #dbg_value(ptr %i.ax, !11215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(i64 %i.ay, !11221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10106)
    #dbg_value(i64 %i.ay, !11215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(i64 %i.bj, !11295, !DIExpression(), !10141)
    #dbg_value(i64 %i.bj, !11289, !DIExpression(), !10138)
    #dbg_value(i64 %i.bj, !11284, !DIExpression(), !10130)
    #dbg_value(i64 %i.bj, !11279, !DIExpression(), !10127)
    #dbg_value(i64 %i.bj, !11271, !DIExpression(), !10123)
    #dbg_value(i64 %i.bj, !11262, !DIExpression(), !10119)
    #dbg_value(i64 %i.bj, !11225, !DIExpression(), !10114)
  %.not134.i = icmp eq i64 %i.ay, 0, !dbg !11850
  br i1 %.not134.i, label %_RNvMsr_NtCskKLDkoKarTP_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i.a, !dbg !11850

.lr.ph173.i:                                      ; preds = %.preheader146.i, %bb.k
  %.sroa.0.2172.i = phi ptr [ %i.bq, %bb.k ], [ %i.au, %.preheader146.i ] ; 2 uses
  %.sroa.26.2171.i = phi i64 [ %i.bp, %bb.k ], [ %i.av, %.preheader146.i ]
  %.sroa.084.2170.i = phi i64 [ %i.bs, %bb.k ], [ 0, %.preheader146.i ]
    #dbg_value(ptr %.sroa.0.2172.i, !11230, !DIExpression(), !10159)
    #dbg_value(ptr %.sroa.0.2172.i, !11231, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10159)
    #dbg_value(i64 %.sroa.26.2171.i, !11231, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10159)
    #dbg_value(i64 %.sroa.084.2170.i, !11225, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !10114)
    #dbg_value(i64 %.sroa.084.2170.i, !11262, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !10119)
    #dbg_value(i64 %.sroa.084.2170.i, !11271, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !10123)
    #dbg_value(i64 %.sroa.084.2170.i, !11279, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !10127)
    #dbg_value(i64 %.sroa.084.2170.i, !11284, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !10130)
    #dbg_value(i64 %.sroa.084.2170.i, !11262, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !10132)
    #dbg_value(i64 %.sroa.084.2170.i, !11271, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !10134)
    #dbg_value(i64 %.sroa.084.2170.i, !11289, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !10138)
    #dbg_value(i64 %.sroa.084.2170.i, !11295, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !10141)
  %i.bk = load i8, ptr %.sroa.0.2172.i, align 1, !dbg !11851, !alias.scope !11260, !noalias !11261, !noundef !989
  %i.bl = zext i8 %i.bk to i32, !dbg !11852
    #dbg_value(i32 %i.bl, !3238, !DIExpression(), !10161)
    #dbg_value(i32 10, !3241, !DIExpression(), !10161)
    #dbg_value(i32 65, !3244, !DIExpression(), !10163)
    #dbg_value(i32 48, !3244, !DIExpression(), !10165)
    #dbg_value(i32 %i.bl, !3245, !DIExpression(), !10165)
  %i.bm = add nsw i32 %i.bl, -48, !dbg !11853     ; 2 uses
    #dbg_value(i32 %i.bm, !3242, !DIExpression(), !10166)
  %i.bn = icmp ult i32 %i.bm, 10, !dbg !11854
  br i1 %i.bn, label %bb.k, label %.loopexit, !dbg !11855

bb.k:                                             ; preds = %.lr.ph173.i
  %i.bo = mul i64 %.sroa.084.2170.i, 10, !dbg !11856
    #dbg_value(i64 %i.bo, !11225, !DIExpression(), !10114)
    #dbg_value(i64 %i.bo, !11262, !DIExpression(), !10119)
    #dbg_value(i64 %i.bo, !11271, !DIExpression(), !10123)
    #dbg_value(i64 %i.bo, !11279, !DIExpression(), !10127)
    #dbg_value(i64 %i.bo, !11284, !DIExpression(), !10130)
    #dbg_value(i64 %i.bo, !11262, !DIExpression(), !10132)
    #dbg_value(i64 %i.bo, !11271, !DIExpression(), !10134)
    #dbg_value(i64 %i.bo, !11289, !DIExpression(), !10138)
    #dbg_value(i64 %i.bo, !11295, !DIExpression(), !10141)
  %i.bp = add nsw i64 %.sroa.26.2171.i, -1, !dbg !11857 ; 2 uses
    #dbg_value(i64 %i.bp, !11231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10159)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.2172.i, i64 1, !dbg !11857
    #dbg_value(ptr %i.bq, !11231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10159)
    #dbg_value(i32 %i.bm, !11232, !DIExpression(), !10167)
  %i.br = zext nneg i32 %i.bm to i64, !dbg !11858
  %i.bs = sub i64 %i.bo, %i.br, !dbg !11859       ; 2 uses
    #dbg_value(i64 %i.bs, !11262, !DIExpression(), !10132)
    #dbg_value(i64 %i.bs, !11271, !DIExpression(), !10134)
    #dbg_value(ptr %i.bq, !11221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10106)
    #dbg_value(ptr %i.bq, !11215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(i64 %i.bp, !11221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10106)
    #dbg_value(i64 %i.bp, !11215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(i64 %i.bs, !11295, !DIExpression(), !10141)
    #dbg_value(i64 %i.bs, !11289, !DIExpression(), !10138)
    #dbg_value(i64 %i.bs, !11284, !DIExpression(), !10130)
    #dbg_value(i64 %i.bs, !11279, !DIExpression(), !10127)
    #dbg_value(i64 %i.bs, !11271, !DIExpression(), !10123)
    #dbg_value(i64 %i.bs, !11262, !DIExpression(), !10119)
    #dbg_value(i64 %i.bs, !11225, !DIExpression(), !10114)
  %.not135.i = icmp eq i64 %i.bp, 0, !dbg !11838
  br i1 %.not135.i, label %_RNvMsr_NtCskKLDkoKarTP_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph173.i, !dbg !11838

bb.l:                                             ; preds = %bb.f, %bb.e
  %.sroa.26.0.i = phi i64 [ %i.at, %bb.f ], [ %i.ap, %bb.e ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.as, %bb.f ], [ %i.an, %bb.e ] ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i, !11221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10106)
    #dbg_value(ptr %.sroa.0.0.i, !11215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(i64 %.sroa.26.0.i, !11221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10106)
    #dbg_value(i64 %.sroa.26.0.i, !11215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(i64 0, !11225, !DIExpression(), !10114)
    #dbg_value(i64 0, !11262, !DIExpression(), !10119)
    #dbg_value(i64 0, !11271, !DIExpression(), !10123)
    #dbg_value(i64 0, !11279, !DIExpression(), !10127)
    #dbg_value(i64 0, !11284, !DIExpression(), !10130)
    #dbg_value(i64 0, !11262, !DIExpression(), !10132)
    #dbg_value(i64 0, !11271, !DIExpression(), !10134)
    #dbg_value(i64 0, !11289, !DIExpression(), !10138)
    #dbg_value(i64 0, !11295, !DIExpression(), !10141)
    #dbg_value(i32 10, !11257, !DIExpression(), !10110)
    #dbg_value(ptr %.sroa.0.0.i, !11258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10110)
    #dbg_value(i64 %.sroa.26.0.i, !11258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10110)
  %i.bt = icmp samesign ult i64 %.sroa.26.0.i, 16, !dbg !11836
  br i1 %i.bt, label %.preheader.i, label %.preheader143.i, !dbg !11837

.preheader.i:                                     ; preds = %bb.l
    #dbg_value(ptr %.sroa.0.0.i, !11221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10106)
    #dbg_value(ptr %.sroa.0.0.i, !11215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(i64 %.sroa.26.0.i, !11221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10106)
    #dbg_value(i64 %.sroa.26.0.i, !11215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(i64 0, !11295, !DIExpression(), !10141)
    #dbg_value(i64 0, !11289, !DIExpression(), !10138)
    #dbg_value(i64 0, !11284, !DIExpression(), !10130)
    #dbg_value(i64 0, !11279, !DIExpression(), !10127)
    #dbg_value(i64 0, !11271, !DIExpression(), !10123)
    #dbg_value(i64 0, !11262, !DIExpression(), !10119)
    #dbg_value(i64 0, !11225, !DIExpression(), !10114)
  %.not137178.i = icmp eq i64 %.sroa.26.0.i, 0, !dbg !11860
  br i1 %.not137178.i, label %_RNvMsr_NtCskKLDkoKarTP_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph182.i, !dbg !11860

.preheader143.i:                                  ; preds = %bb.l, %bb.o
  %.sroa.0.3177.i = phi ptr [ %i.bu, %bb.o ], [ %.sroa.0.0.i, %bb.l ] ; 3 uses
  %.sroa.26.3176.i = phi i64 [ %i.bv, %bb.o ], [ %.sroa.26.0.i, %bb.l ]
  %.sroa.084.3175.i = phi i64 [ %i.cg, %bb.o ], [ 0, %bb.l ]
    #dbg_value(i64 %.sroa.084.3175.i, !11295, !DIExpression(), !10141)
    #dbg_value(ptr %.sroa.0.3177.i, !11234, !DIExpression(), !10168)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.3177.i, i64 1, !dbg !11861
  %i.bv = add nsw i64 %.sroa.26.3176.i, -1, !dbg !11861 ; 2 uses
    #dbg_value(ptr %i.bu, !11235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10168)
    #dbg_value(i64 %i.bv, !11235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10168)
    #dbg_value(i64 10, !11265, !DIExpression(), !10119)
    #dbg_value(i64 10, !11277, !DIExpression(), !10123)
  %i.bw = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3175.i, i64 10), !dbg !11862 ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 0, !dbg !11862
  %i.by = extractvalue { i64, i1 } %i.bw, 1, !dbg !11862
    #dbg_value(i64 %i.bx, !11266, !DIExpression(), !10169)
    #dbg_value(i1 %i.by, !11267, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10169)
    #dbg_value(i1 %i.by, !11298, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10171)
  br i1 %i.by, label %.loopexit.sink.split, label %bb.m, !dbg !11863, !prof !1647

bb.m:                                             ; preds = %.preheader143.i
    #dbg_value(i64 %i.bx, !11236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10172)
    #dbg_value(i64 1, !11236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10172)
end_hunk_0
