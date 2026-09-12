Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.07?download=true
inline.NumInlined: 426
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection13ack_frequencyNtB2_17AckFrequencyState22ack_frequency_received:bb.a
    #dbg_value(i64 73, !11566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11569)
    #dbg_value(ptr @28, !11570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11573)
    #dbg_value(i64 73, !11570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11573)
    #dbg_value(ptr @28, !11574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11577)
    #dbg_value(i64 73, !11574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11577)
    #dbg_declare(ptr poison, !11578, !DIExpression(), !11584)
    #dbg_declare(ptr poison, !11589, !DIExpression(), !11595)
    #dbg_declare(ptr poison, !11596, !DIExpression(), !11600)
    #dbg_declare(ptr poison, !11601, !DIExpression(), !11605)
    #dbg_declare(ptr poison, !11606, !DIExpression(), !11613)
    #dbg_value(i64 0, !11614, !DIExpression(), !11620)
  %i.b = load i64, ptr %1, align 8, !dbg !11674, !range !3959, !noundef !1498
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11674 ; 2 uses
    #dbg_value(i64 %i.b, !11542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11546)
    #dbg_value(i64 poison, !11542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11546)
  %i.d = trunc nuw i64 %i.b to i1, !dbg !11675
  %.pre = load i64, ptr %2, align 8, !dbg !11676  ; 2 uses
  %i.e = load i64, ptr %i.c, align 8
    #dbg_value(i64 %i.e, !11542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11546)
    #dbg_value(i64 %i.e, !11543, !DIExpression(), !11621)
    #dbg_value(i64 %i.e, !11550, !DIExpression(), !11553)
  %.not = icmp ule i64 %.pre, %i.e
  %or.cond.not = select i1 %i.d, i1 %.not, i1 false, !dbg !11675
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !11675

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %1, align 8, !dbg !11677
  store i64 %.pre, ptr %i.c, align 8, !dbg !11677
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !11678
  %i.g = load i64, ptr %i.f, align 8, !dbg !11678, !noundef !1498 ; 3 uses
    #dbg_value(i64 %i.g, !11622, !DIExpression(), !11625)
  %i.h = urem i64 %i.g, 1000000, !dbg !11679      ; 2 uses
  %i.i = udiv i64 %i.g, 1000000, !dbg !11680
    #dbg_value(i64 poison, !11530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11626)
    #dbg_value(i64 %i.h, !11530, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1000, DW_OP_mul, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !11626)
    #dbg_value(ptr poison, !11627, !DIExpression(), !11631)
    #dbg_value(ptr poison, !11632, !DIExpression(), !11636)
    #dbg_value(ptr poison, !11637, !DIExpression(), !11641)
    #dbg_value(ptr poison, !11628, !DIExpression(), !11642)
    #dbg_value(ptr poison, !11633, !DIExpression(), !11643)
    #dbg_value(ptr poison, !11638, !DIExpression(), !11644)
  %i.j = icmp ult i64 %i.g, 1000000, !dbg !11641
  %i.k = icmp samesign ult i64 %i.h, 1000
  %spec.select = select i1 %i.j, i1 %i.k, i1 false, !dbg !11641
  br i1 %spec.select, label %bb.e, label %bb.d, !dbg !11630

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11681
  store i8 0, ptr %i.l, align 8, !dbg !11681
  store i64 2, ptr %0, align 8, !dbg !11681
  br label %bb.f, !dbg !11682

bb.d:                                             ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %i.h to i32, !dbg !11679
    #dbg_value(i32 %i.m, !11530, !DIExpression(DW_OP_constu, 1000, DW_OP_mul, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !11626)
  %i.n = mul nuw nsw i32 %i.m, 1000, !dbg !11683
    #dbg_value(i32 %i.n, !11530, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11626)
    #dbg_value(i64 %i.i, !11530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11626)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !11684
  store i64 %i.i, ptr %i.o, align 8, !dbg !11684
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !11684
  store i32 %i.n, ptr %i.p, align 8, !dbg !11684
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !11685
  %i.r = load i64, ptr %i.q, align 8, !dbg !11685, !noundef !1498
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 136, !dbg !11686
  store i64 %i.r, ptr %i.s, align 8, !dbg !11686
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !11687
  %i.u = load i64, ptr %i.t, align 8, !dbg !11687, !noundef !1498
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 144, !dbg !11688
  store i64 %i.u, ptr %i.v, align 8, !dbg !11688
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11689
  store i8 1, ptr %i.w, align 8, !dbg !11689
  store i64 2, ptr %0, align 8, !dbg !11689
  br label %bb.f, !dbg !11690

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr @28, !11585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11646)
    #dbg_value(ptr @28, !11587, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11647)
    #dbg_value(ptr @28, !11579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11648)
    #dbg_value(ptr @28, !11590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11649)
    #dbg_value(i64 73, !11585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11646)
    #dbg_value(i64 73, !11587, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11647)
    #dbg_value(i64 73, !11579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11648)
    #dbg_value(i64 73, !11590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11649)
    #dbg_value(i64 73, !11591, !DIExpression(), !11650)
    #dbg_value(i64 73, !11597, !DIExpression(), !11651)
    #dbg_value(i64 73, !11602, !DIExpression(), !11652)
    #dbg_value(i64 73, !11653, !DIExpression(), !11658)
    #dbg_value(i64 73, !11659, !DIExpression(), !11664)
    #dbg_value(i64 73, !11607, !DIExpression(), !11665)
    #dbg_value(i64 73, !11616, !DIExpression(), !11620)
    #dbg_value(i64 1, !11608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11665)
    #dbg_value(i64 1, !11617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11620)
    #dbg_value(i64 1, !11608, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11665)
    #dbg_value(i64 1, !11617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11691
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 73, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !11691
  %i.x = load i64, ptr %i.a, align 8, !dbg !11691, !range !3959, !noundef !1498
  %i.y = trunc nuw i64 %i.x to i1, !dbg !11692
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11665
  %i.aa = load i64, ptr %i.z, align 8, !dbg !11665, !range !3973, !noundef !1498 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11665 ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h, !dbg !11692, !prof !2011

bb.f:                                             ; preds = %bb.h, %bb.d, %bb.c
  ret void, !dbg !11690

bb.g:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !11693
    #dbg_value(i64 %i.aa, !11610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11666)
    #dbg_value(i64 %i.ac, !11610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11666)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #34, !dbg !11694
  unreachable, !dbg !11694

bb.h:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !11695, !nonnull !1498, !noundef !1498 ; 2 uses
    #dbg_value(i64 %i.aa, !11609, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11667)
    #dbg_value(ptr %i.ad, !11609, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11667)
    #dbg_value(ptr poison, !11615, !DIExpression(), !11668)
  %i.ae = icmp samesign ugt i64 %i.aa, 72, !dbg !11696
    #dbg_value(i1 true, !11669, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11672)
  tail call void @llvm.assume(i1 %i.ae), !dbg !11697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11698
    #dbg_value(i64 %i.aa, !11592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr %i.ad, !11592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11673)
    #dbg_value(i64 0, !11592, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11673)
    #dbg_value(ptr @28, !11654, !DIExpression(), !11658)
    #dbg_value(ptr @28, !11660, !DIExpression(), !11664)
    #dbg_value(ptr %i.ad, !11655, !DIExpression(), !11658)
    #dbg_value(ptr %i.ad, !11661, !DIExpression(), !11664)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %i.ad, ptr noundef nonnull align 1 dereferenceable(73) @28, i64 73, i1 false), !dbg !11699
    #dbg_value(i64 73, !11592, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11673)
  store i64 0, ptr %0, align 8, !dbg !11700
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11700
  store i64 %i.aa, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !11700
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11700
  store ptr %i.ad, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx, align 8, !dbg !11700
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11700
  store i64 73, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8, !dbg !11700
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11700
  store i64 10, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !11700
  br label %bb.f, !dbg !11682
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection13ack_frequencyNtB2_17AckFrequencyState23candidate_max_ack_delay(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(352) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !645 {
bb.a:
    #dbg_declare(ptr poison, !4112, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !11745)
    #dbg_value(ptr %0, !4105, !DIExpression(), !11746)
    #dbg_value(i64 %1, !4106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11746)
    #dbg_value(i32 %2, !4106, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11746)
    #dbg_value(ptr %3, !4107, !DIExpression(), !11746)
    #dbg_value(ptr %4, !4108, !DIExpression(), !11746)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !11751
  %i.b = load i64, ptr %i.a, align 8, !dbg !11751, !range !3959, !noundef !1498
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24, !dbg !11751
  %i.d = load i64, ptr %i.c, align 8, !dbg !11751
    #dbg_value(i64 %i.b, !4119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(i64 %i.d, !4119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 0, !4127, !DIExpression(), !11702)
    #dbg_declare(ptr poison, !4128, !DIExpression(), !11703)
  %i.e = trunc nuw i64 %i.b to i1, !dbg !11752
  %spec.select.i = select i1 %i.e, i64 %i.d, i64 0, !dbg !11752 ; 2 uses
    #dbg_value(i64 %spec.select.i, !4131, !DIExpression(), !11748)
    #dbg_value(i64 poison, !4109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11749)
    #dbg_value(i64 poison, !4109, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1000, DW_OP_mul, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !11749)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !11753
  %i.g = load i32, ptr %i.f, align 8, !dbg !11753, !range !3805, !noundef !1498 ; 2 uses
    #dbg_value(i64 poison, !4112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11750)
    #dbg_value(i32 %i.g, !4112, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11750)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11754
  %i.i = load i32, ptr %i.h, align 8, !dbg !11754, !range !3807, !noundef !1498
    #dbg_value(i64 poison, !4116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11750)
    #dbg_value(i32 %i.i, !4116, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11750)
  %.not = icmp eq i32 %i.g, -1, !dbg !11755       ; 2 uses
  %spec.select = select i1 %.not, ptr %0, ptr %3, !dbg !11756
  %spec.select11 = select i1 %.not, i32 %i.i, i32 %i.g, !dbg !11756 ; 3 uses
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 16, !dbg !11749
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !dbg !11749 ; 5 uses
  %i.j = urem i64 %spec.select.i, 1000000, !dbg !11757
    #dbg_value(i64 %i.j, !4109, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1000, DW_OP_mul, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !11749)
  %i.k = trunc nuw nsw i64 %i.j to i32, !dbg !11757
    #dbg_value(i32 %i.k, !4109, !DIExpression(DW_OP_constu, 1000, DW_OP_mul, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !11749)
  %i.l = mul nuw nsw i32 %i.k, 1000, !dbg !11758  ; 3 uses
    #dbg_value(i32 %i.l, !4109, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11749)
  %i.m = udiv i64 %spec.select.i, 1000000, !dbg !11759 ; 5 uses
    #dbg_value(i64 %i.m, !4109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11749)
    #dbg_value(i32 %spec.select11, !4116, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11750)
    #dbg_value(i64 %.sroa.03.0, !4116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11750)
    #dbg_value(i64 %1, !3808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11705)
    #dbg_value(i32 %2, !3808, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11705)
    #dbg_value(i64 0, !3812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11705)
    #dbg_value(i32 25000000, !3812, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11705)
    #dbg_value(ptr poison, !3817, !DIExpression(), !11707)
    #dbg_value(ptr poison, !3820, !DIExpression(), !11707)
    #dbg_declare(ptr poison, !3824, !DIExpression(), !11709)
    #dbg_value(ptr poison, !3830, !DIExpression(), !11711)
    #dbg_value(ptr poison, !3834, !DIExpression(), !11711)
    #dbg_value(ptr poison, !3836, !DIExpression(), !11713)
    #dbg_value(ptr poison, !3840, !DIExpression(), !11713)
  %5 = icmp eq i64 %1, 0, !dbg !11760
    #dbg_value(i8 poison, !3826, !DIExpression(), !11714)
  %i.n = icmp samesign ugt i32 %2, 25000000, !dbg !11761
  %6 = icmp ne i64 %1, 0, !dbg !11761
  %i.o = select i1 %5, i1 %i.n, i1 %6, !dbg !11760 ; 2 uses
  %..i = select i1 %i.o, i32 %2, i32 25000000, !dbg !11762 ; 3 uses
  %.2.i = select i1 %i.o, i64 %1, i64 0, !dbg !11762 ; 5 uses
    #dbg_value(i64 %.sroa.03.0, !4133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11716)
    #dbg_value(i32 %spec.select11, !4133, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11716)
    #dbg_value(i64 %i.m, !4136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11716)
    #dbg_value(i32 %i.l, !4136, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11716)
    #dbg_value(i64 %.2.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11716)
    #dbg_value(i32 %..i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11716)
    #dbg_value(ptr poison, !4139, !DIExpression(), !11718)
    #dbg_value(ptr poison, !4140, !DIExpression(), !11718)
    #dbg_declare(ptr poison, !4142, !DIExpression(), !11720)
    #dbg_value(ptr poison, !3830, !DIExpression(), !11722)
    #dbg_value(ptr poison, !3834, !DIExpression(), !11722)
    #dbg_value(ptr poison, !3836, !DIExpression(), !11724)
    #dbg_value(ptr poison, !3840, !DIExpression(), !11724)
  %i.p = icmp eq i64 %i.m, %.2.i, !dbg !11763
    #dbg_value(i8 poison, !4143, !DIExpression(), !11725)
  %i.q = icmp samesign ule i32 %i.l, %..i, !dbg !11764
  %i.r = icmp ule i64 %i.m, %.2.i, !dbg !11764
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r, !dbg !11763
  br i1 %i.s, label %bb.c, label %bb.b, !dbg !11765, !prof !3590

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #28, !dbg !11766
  unreachable, !dbg !11766

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !3817, !DIExpression(), !11727)
    #dbg_value(ptr poison, !3820, !DIExpression(), !11727)
    #dbg_declare(ptr poison, !3824, !DIExpression(), !11729)
    #dbg_value(ptr poison, !3830, !DIExpression(), !11731)
    #dbg_value(ptr poison, !3834, !DIExpression(), !11731)
    #dbg_value(ptr poison, !3836, !DIExpression(), !11733)
    #dbg_value(ptr poison, !3840, !DIExpression(), !11733)
  %i.t = icmp eq i64 %.sroa.03.0, %i.m, !dbg !11767
    #dbg_value(i8 poison, !3826, !DIExpression(), !11734)
  %i.u = icmp samesign ult i32 %spec.select11, %i.l, !dbg !11768
  %i.v = icmp ult i64 %.sroa.03.0, %i.m, !dbg !11768
  %i.w = select i1 %i.t, i1 %i.u, i1 %i.v, !dbg !11767
  br i1 %i.w, label %_RNvYNtNtCskKLDkoKarTP_4core4time8DurationNtNtB6_3cmp3Ord5clampCshovLROGBtMy_11quinn_proto.exit, label %bb.d, !dbg !11769

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr poison, !4146, !DIExpression(), !11736)
    #dbg_value(ptr poison, !4147, !DIExpression(), !11736)
    #dbg_declare(ptr poison, !4149, !DIExpression(), !11738)
    #dbg_value(ptr poison, !3830, !DIExpression(), !11740)
    #dbg_value(ptr poison, !3834, !DIExpression(), !11740)
    #dbg_value(ptr poison, !3836, !DIExpression(), !11742)
    #dbg_value(ptr poison, !3840, !DIExpression(), !11742)
  %i.x = icmp eq i64 %.sroa.03.0, %.2.i, !dbg !11770
    #dbg_value(i8 poison, !4151, !DIExpression(), !11743)
  %i.y = icmp samesign ugt i32 %spec.select11, %..i, !dbg !11771
  %i.z = icmp ugt i64 %.sroa.03.0, %.2.i, !dbg !11771
  %i.aa = select i1 %i.x, i1 %i.y, i1 %i.z, !dbg !11770 ; 2 uses
  %..i12 = select i1 %i.aa, i32 %..i, i32 %spec.select11, !dbg !11772
  %.3.i = select i1 %i.aa, i64 %.2.i, i64 %.sroa.03.0, !dbg !11772
  br label %_RNvYNtNtCskKLDkoKarTP_4core4time8DurationNtNtB6_3cmp3Ord5clampCshovLROGBtMy_11quinn_proto.exit, !dbg !11772

_RNvYNtNtCskKLDkoKarTP_4core4time8DurationNtNtB6_3cmp3Ord5clampCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %bb.d
  %.sroa.4.0.i = phi i32 [ %..i12, %bb.d ], [ %i.l, %bb.c ], !dbg !11773
  %.sroa.0.0.i = phi i64 [ %.3.i, %bb.d ], [ %i.m, %bb.c ], !dbg !11773
  %i.ab = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i, 0, !dbg !11774
  %i.ac = insertvalue { i64, i32 } %i.ab, i32 %.sroa.4.0.i, 1, !dbg !11774
  ret { i64, i32 } %i.ac, !dbg !11775
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection13ack_frequencyNtB2_17AckFrequencyState25should_send_ack_frequency(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(352) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11779 {
bb.a:
    #dbg_value(ptr %0, !11846, !DIExpression(), !11854)
    #dbg_value(i64 %1, !11847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11854)
    #dbg_value(i32 %2, !11847, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11854)
    #dbg_value(ptr %3, !11848, !DIExpression(), !11854)
    #dbg_value(ptr %4, !11849, !DIExpression(), !11854)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11891
  %i.b = load i64, ptr %i.a, align 8, !dbg !11891, !noundef !1498
  %i.c = icmp eq i64 %i.b, 0, !dbg !11891
  br i1 %i.c, label %bb.f, label %bb.b, !dbg !11891

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 poison, !11855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11866)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11892
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !11892
    #dbg_value(i64 %.sroa.3.0.copyload, !11855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11866)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11892
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11892 ; 2 uses
    #dbg_value(i32 %.sroa.4.0.copyload, !11855, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !11866)
    #dbg_value(i32 poison, !11855, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !11866)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11893
  %i.e = load i64, ptr %i.d, align 8, !dbg !11893, !noundef !1498
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11893
  %i.g = load i32, ptr %i.f, align 8, !dbg !11893, !range !3807, !noundef !1498 ; 2 uses
    #dbg_value(i64 %i.e, !11862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11784)
    #dbg_value(i32 %i.g, !11862, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11784)
    #dbg_declare(ptr poison, !11863, !DIExpression(), !11785)
  %.not.i = icmp eq i32 %.sroa.4.0.copyload, -1, !dbg !11894 ; 2 uses
  %.sroa.3.0.copyload.pn.i = select i1 %.not.i, i64 %i.e, i64 %.sroa.3.0.copyload, !dbg !11895
  %.pn4.i = select i1 %.not.i, i32 %i.g, i32 %.sroa.4.0.copyload, !dbg !11895
    #dbg_value(i64 %.sroa.3.0.copyload.pn.i, !11850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11867)
    #dbg_value(i32 %.pn4.i, !11850, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11868), !dbg !11896
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11869), !dbg !11896
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11870), !dbg !11896
    #dbg_declare(ptr poison, !4112, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !11792)
    #dbg_value(ptr %0, !4105, !DIExpression(), !11793)
    #dbg_value(i64 %1, !4106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11793)
    #dbg_value(i32 %2, !4106, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11793)
    #dbg_value(ptr %3, !4107, !DIExpression(), !11793)
    #dbg_value(ptr %4, !4108, !DIExpression(), !11793)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !11897
  %i.i = load i64, ptr %i.h, align 8, !dbg !11897, !range !3959, !alias.scope !11870, !noalias !11871, !noundef !1498
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24, !dbg !11897
  %i.k = load i64, ptr %i.j, align 8, !dbg !11897, !alias.scope !11870, !noalias !11871
    #dbg_value(i64 %i.i, !4119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11795)
    #dbg_value(i64 %i.k, !4119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11795)
    #dbg_value(i64 0, !4127, !DIExpression(), !11795)
    #dbg_declare(ptr poison, !4128, !DIExpression(), !11796)
  %i.l = trunc nuw i64 %i.i to i1, !dbg !11898
  %spec.select.i.i = select i1 %i.l, i64 %i.k, i64 0, !dbg !11898 ; 2 uses
    #dbg_value(i64 %spec.select.i.i, !4131, !DIExpression(), !11798)
    #dbg_value(i64 poison, !4109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11799)
    #dbg_value(i64 poison, !4109, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1000, DW_OP_mul, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !11799)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !11899
  %i.n = load i32, ptr %i.m, align 8, !dbg !11899, !range !3805, !alias.scope !11869, !noalias !11872, !noundef !1498 ; 2 uses
    #dbg_value(i64 poison, !4112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11800)
    #dbg_value(i32 %i.n, !4112, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11800)
    #dbg_value(i64 poison, !4116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11800)
    #dbg_value(i32 %i.g, !4116, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11800)
  %.not.i10 = icmp eq i32 %i.n, -1, !dbg !11900   ; 2 uses
  %spec.select.i = select i1 %.not.i10, ptr %0, ptr %3, !dbg !11901
  %spec.select11.i = select i1 %.not.i10, i32 %i.g, i32 %i.n, !dbg !11901 ; 3 uses
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16, !dbg !11902
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8, !dbg !11902, !alias.scope !11871, !noalias !11870 ; 5 uses
  %i.o = urem i64 %spec.select.i.i, 1000000, !dbg !11903
    #dbg_value(i64 %i.o, !4109, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1000, DW_OP_mul, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !11799)
  %i.p = trunc nuw nsw i64 %i.o to i32, !dbg !11903
    #dbg_value(i32 %i.p, !4109, !DIExpression(DW_OP_constu, 1000, DW_OP_mul, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !11799)
  %i.q = mul nuw nsw i32 %i.p, 1000, !dbg !11904  ; 3 uses
    #dbg_value(i32 %i.q, !4109, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11799)
  %i.r = udiv i64 %spec.select.i.i, 1000000, !dbg !11905 ; 5 uses
    #dbg_value(i64 %i.r, !4109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11799)
    #dbg_value(i32 %spec.select11.i, !4116, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11800)
    #dbg_value(i64 %.sroa.03.0.i, !4116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11800)
    #dbg_value(i64 %1, !3808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11802)
    #dbg_value(i32 %2, !3808, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11802)
    #dbg_value(i64 0, !3812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11802)
    #dbg_value(i32 25000000, !3812, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11802)
    #dbg_value(ptr poison, !3817, !DIExpression(), !11804)
    #dbg_value(ptr poison, !3820, !DIExpression(), !11804)
    #dbg_declare(ptr poison, !3824, !DIExpression(), !11806)
    #dbg_value(ptr poison, !3830, !DIExpression(), !11808)
    #dbg_value(ptr poison, !3834, !DIExpression(), !11808)
    #dbg_value(ptr poison, !3836, !DIExpression(), !11810)
    #dbg_value(ptr poison, !3840, !DIExpression(), !11810)
  %5 = icmp eq i64 %1, 0, !dbg !11906
    #dbg_value(i8 poison, !3826, !DIExpression(), !11811)
  %i.s = icmp samesign ugt i32 %2, 25000000, !dbg !11907
  %6 = icmp ne i64 %1, 0, !dbg !11907
  %i.t = select i1 %5, i1 %i.s, i1 %6, !dbg !11906 ; 2 uses
  %..i.i = select i1 %i.t, i32 %2, i32 25000000, !dbg !11908 ; 3 uses
  %.2.i.i = select i1 %i.t, i64 %1, i64 0, !dbg !11908 ; 5 uses
    #dbg_value(i64 %.sroa.03.0.i, !4133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11813)
    #dbg_value(i32 %spec.select11.i, !4133, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11813)
    #dbg_value(i64 %i.r, !4136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11813)
    #dbg_value(i32 %i.q, !4136, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11813)
    #dbg_value(i64 %.2.i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11813)
    #dbg_value(i32 %..i.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11813)
    #dbg_value(ptr poison, !4139, !DIExpression(), !11815)
    #dbg_value(ptr poison, !4140, !DIExpression(), !11815)
    #dbg_declare(ptr poison, !4142, !DIExpression(), !11817)
    #dbg_value(ptr poison, !3830, !DIExpression(), !11819)
    #dbg_value(ptr poison, !3834, !DIExpression(), !11819)
    #dbg_value(ptr poison, !3836, !DIExpression(), !11821)
    #dbg_value(ptr poison, !3840, !DIExpression(), !11821)
  %i.u = icmp eq i64 %i.r, %.2.i.i, !dbg !11909
    #dbg_value(i8 poison, !4143, !DIExpression(), !11822)
  %i.v = icmp samesign ule i32 %i.q, %..i.i, !dbg !11910
  %i.w = icmp ule i64 %i.r, %.2.i.i, !dbg !11910
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w, !dbg !11909
  br i1 %i.x, label %bb.d, label %bb.c, !dbg !11911, !prof !3590

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #28, !dbg !11912, !noalias !11873
  unreachable, !dbg !11912

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !3817, !DIExpression(), !11824)
    #dbg_value(ptr poison, !3820, !DIExpression(), !11824)
    #dbg_declare(ptr poison, !3824, !DIExpression(), !11826)
    #dbg_value(ptr poison, !3830, !DIExpression(), !11828)
    #dbg_value(ptr poison, !3834, !DIExpression(), !11828)
    #dbg_value(ptr poison, !3836, !DIExpression(), !11830)
    #dbg_value(ptr poison, !3840, !DIExpression(), !11830)
  %i.y = icmp eq i64 %.sroa.03.0.i, %i.r, !dbg !11913
    #dbg_value(i8 poison, !3826, !DIExpression(), !11831)
  %i.z = icmp samesign ult i32 %spec.select11.i, %i.q, !dbg !11914
  %i.aa = icmp ult i64 %.sroa.03.0.i, %i.r, !dbg !11914
  %i.ab = select i1 %i.y, i1 %i.z, i1 %i.aa, !dbg !11913
  br i1 %i.ab, label %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection13ack_frequencyNtB2_17AckFrequencyState23candidate_max_ack_delay.exit, label %bb.e, !dbg !11915

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !4146, !DIExpression(), !11833)
    #dbg_value(ptr poison, !4147, !DIExpression(), !11833)
    #dbg_declare(ptr poison, !4149, !DIExpression(), !11835)
    #dbg_value(ptr poison, !3830, !DIExpression(), !11837)
    #dbg_value(ptr poison, !3834, !DIExpression(), !11837)
    #dbg_value(ptr poison, !3836, !DIExpression(), !11839)
    #dbg_value(ptr poison, !3840, !DIExpression(), !11839)
  %i.ac = icmp eq i64 %.sroa.03.0.i, %.2.i.i, !dbg !11916
    #dbg_value(i8 poison, !4151, !DIExpression(), !11840)
  %i.ad = icmp samesign ugt i32 %spec.select11.i, %..i.i, !dbg !11917
  %i.ae = icmp ugt i64 %.sroa.03.0.i, %.2.i.i, !dbg !11917
  %i.af = select i1 %i.ac, i1 %i.ad, i1 %i.ae, !dbg !11916 ; 2 uses
  %..i12.i = select i1 %i.af, i32 %..i.i, i32 %spec.select11.i, !dbg !11918
  %.3.i.i = select i1 %i.af, i64 %.2.i.i, i64 %.sroa.03.0.i, !dbg !11918
  br label %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection13ack_frequencyNtB2_17AckFrequencyState23candidate_max_ack_delay.exit, !dbg !11918

_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection13ack_frequencyNtB2_17AckFrequencyState23candidate_max_ack_delay.exit: ; preds = %bb.d, %bb.e
  %.sroa.4.0.i.i = phi i32 [ %..i12.i, %bb.e ], [ %i.q, %bb.d ], !dbg !11919
  %.sroa.0.0.i.i = phi i64 [ %.3.i.i, %bb.e ], [ %i.r, %bb.d ], !dbg !11919
    #dbg_value(i64 %.sroa.0.0.i.i, !11851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11874)
    #dbg_value(i32 %.sroa.4.0.i.i, !11851, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11874)
    #dbg_value(ptr poison, !11875, !DIExpression(), !11878)
  %i.ag = uitofp i64 %.sroa.0.0.i.i to float, !dbg !11920
  %i.ah = uitofp nneg i32 %.sroa.4.0.i.i to float, !dbg !11921
    #dbg_value(ptr poison, !11875, !DIExpression(), !11880)
  %i.ai = uitofp i64 %.sroa.3.0.copyload.pn.i to float, !dbg !11922
  %i.aj = uitofp nneg i32 %.pn4.i to float, !dbg !11923
  %i.ak = insertelement <2 x float> poison, float %i.ah, i64 0, !dbg !11921
  %i.al = insertelement <2 x float> %i.ak, float %i.aj, i64 1, !dbg !11921
  %i.am = fdiv <2 x float> %i.al, splat (float 1.000000e+09), !dbg !11921
  %i.an = insertelement <2 x float> poison, float %i.ag, i64 0, !dbg !11920
  %i.ao = insertelement <2 x float> %i.an, float %i.ai, i64 1, !dbg !11920
  %i.ap = fadd <2 x float> %i.am, %i.ao, !dbg !11920 ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0, !dbg !11924
  %i.ar = extractelement <2 x float> %i.ap, i64 1, !dbg !11924
  %i.as = fdiv float %i.aq, %i.ar, !dbg !11924
  %i.at = fadd float %i.as, -1.000000e+00, !dbg !11924
    #dbg_value(float %i.at, !11852, !DIExpression(), !11881)
    #dbg_value(float %i.at, !11883, !DIExpression(), !11890)
  %i.au = tail call float @llvm.fabs.f32(float %i.at), !dbg !11925
  %i.av = fcmp ogt float %i.au, 2.000000e-01, !dbg !11926
  br label %bb.f, !dbg !11927

bb.f:                                             ; preds = %bb.a, %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection13ack_frequencyNtB2_17AckFrequencyState23candidate_max_ack_delay.exit
  %.sroa.0.0 = phi i1 [ %i.av, %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection13ack_frequencyNtB2_17AckFrequencyState23candidate_max_ack_delay.exit ], [ true, %bb.a ], !dbg !11854
  ret i1 %.sroa.0.0, !dbg !11927
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB2_13PacketBuilder16finish_and_track(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, ptr noalias nofree noundef align 16 dereferenceable(6320) %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %4, ptr noalias nofree noundef align 8 dereferenceable(24) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11940 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 12 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [96 x i8], align 8                ; 11 uses
  %i.i = alloca [96 x i8], align 8                ; 12 uses
  %i.j = alloca [96 x i8], align 8                ; 8 uses
  %.sroa.5.i = alloca [88 x i8], align 8          ; 4 uses
  %.sroa.7 = alloca [44 x i8], align 4            ; 3 uses
    #dbg_declare(ptr %.sroa.7, !12065, !DIExpression(DW_OP_LLVM_fragment, 224, 352), !11944)
    #dbg_value(ptr poison, !12074, !DIExpression(), !11947)
    #dbg_declare(ptr %.sroa.7, !12062, !DIExpression(DW_OP_LLVM_fragment, 224, 352), !12081)
    #dbg_declare(ptr poison, !12060, !DIExpression(DW_OP_LLVM_fragment, 128, 320), !12083)
    #dbg_declare(ptr poison, !12059, !DIExpression(DW_OP_LLVM_fragment, 128, 320), !12084)
    #dbg_declare(ptr %0, !12049, !DIExpression(), !12085)
    #dbg_value(i64 %1, !12050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12086)
    #dbg_value(i32 %2, !12050, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12086)
    #dbg_value(ptr %3, !12051, !DIExpression(), !12086)
    #dbg_declare(ptr %4, !12052, !DIExpression(), !12087)
    #dbg_value(ptr %5, !12053, !DIExpression(), !12086)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !12227
  %i.l = load i8, ptr %i.k, align 8, !dbg !12227, !range !3598, !noundef !1498 ; 4 uses
  %i.m = trunc nuw i8 %i.l to i1, !dbg !12227     ; 3 uses
    #dbg_value(i1 %i.m, !12054, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12088)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12228
  %i.o = load i64, ptr %i.n, align 8, !dbg !12228, !noundef !1498 ; 3 uses
    #dbg_value(i64 %i.o, !12055, !DIExpression(), !12089)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 114, !dbg !12229
  %i.q = load i8, ptr %i.p, align 2, !dbg !12229, !range !2639, !noundef !1498 ; 2 uses
    #dbg_value(i8 %i.q, !12056, !DIExpression(), !12090)
  %i.r = invoke { i64, i1 } @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB2_13PacketBuilder6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %3, i64 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.b unwind label %.critedge, !dbg !12230 ; 2 uses

.critedge:                                        ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load i64, ptr %4, align 8, !dbg !12231, !range !2148, !noundef !1498
  %.not27 = icmp eq i64 %i.t, 2, !dbg !12231
  br i1 %.not27, label %.critedge.thread, label %bb.ai, !dbg !12231

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 poison, !12057, !DIExpression(), !12091)
    #dbg_value(i1 poison, !12058, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12091)
  %i.u = load i64, ptr %4, align 8, !dbg !12232, !range !2148, !noundef !1498 ; 3 uses
  %.not = icmp eq i64 %i.u, 2, !dbg !12232
  br i1 %.not, label %bb.c, label %bb.d, !dbg !12233

bb.c:                                             ; preds = %bb.b, %bb.ab, %bb.ad
  ret void, !dbg !12234

bb.d:                                             ; preds = %bb.b
  %i.v = extractvalue { i64, i1 } %i.r, 0, !dbg !12235
    #dbg_value(i64 %i.v, !12057, !DIExpression(), !12091)
  %i.w = extractvalue { i64, i1 } %i.r, 1, !dbg !12235
    #dbg_value(i1 %i.w, !12058, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12091)
    #dbg_value(i64 %i.u, !12060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12092)
  %.sroa.4.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !12236
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx33, align 8, !dbg !12236 ; 2 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !12060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12092)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !12236
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56, !dbg !12236
  %.sroa.635.0.copyload = load ptr, ptr %.sroa.635.0..sroa_idx, align 8, !dbg !12236 ; 2 uses
    #dbg_value(ptr %.sroa.635.0.copyload, !12060, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !12092)
    #dbg_value(i64 poison, !12060, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !12092)
    #dbg_value(i64 %i.u, !12059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12093)
    #dbg_value(i64 %.sroa.4.0.copyload, !12059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12093)
    #dbg_value(ptr %.sroa.635.0.copyload, !12059, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !12093)
    #dbg_value(i64 poison, !12059, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !12093)
  %brmerge = or i1 %i.w, %i.m, !dbg !12237
  %i.x = trunc i64 %i.v to i16, !dbg !12237
  %.sroa.0.0 = select i1 %brmerge, i16 %i.x, i16 0, !dbg !12237 ; 4 uses
    #dbg_value(i16 %.sroa.0.0, !12061, !DIExpression(), !12094)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 544, !dbg !12238 ; 2 uses
  %.val = load i64, ptr %i.y, align 16, !dbg !12238, !noundef !1498 ; 2 uses
    #dbg_value(i64 %.val, !12062, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !12095)
    #dbg_value(i64 %1, !12062, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12095)
    #dbg_value(i32 %2, !12062, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !12095)
    #dbg_value(i16 %.sroa.0.0, !12062, !DIExpression(DW_OP_LLVM_fragment, 704, 16), !12095)
    #dbg_value(i8 %i.l, !12062, !DIExpression(DW_OP_LLVM_fragment, 720, 8), !12095)
    #dbg_value(i64 %i.u, !12062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12095)
    #dbg_value(i64 %.sroa.4.0.copyload, !12062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12095)
    #dbg_value(ptr %.sroa.635.0.copyload, !12062, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !12095)
  %.sroa.7.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 4, !dbg !12239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.7.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.534.0..sroa_idx, i64 40, i1 false), !dbg !12239
    #dbg_value(i64 %i.u, !12065, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12099)
    #dbg_value(i64 %.sroa.4.0.copyload, !12065, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12099)
    #dbg_value(i64 %1, !12065, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12099)
    #dbg_value(i32 %2, !12065, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !12099)
    #dbg_value(i64 %.val, !12065, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !12099)
    #dbg_value(ptr %.sroa.635.0.copyload, !12065, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !12099)
    #dbg_value(i16 %.sroa.0.0, !12065, !DIExpression(DW_OP_LLVM_fragment, 704, 16), !12099)
    #dbg_value(i8 %i.l, !12065, !DIExpression(DW_OP_LLVM_fragment, 720, 8), !12099)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 912, !dbg !12240
    #dbg_value(ptr %i.z, !12101, !DIExpression(), !11950)
    #dbg_value(i8 %i.q, !12105, !DIExpression(), !11950)
  %i.aa = zext nneg i8 %i.q to i64, !dbg !12241
  %i.ab = getelementptr inbounds nuw [736 x i8], ptr %i.z, i64 %i.aa, !dbg !12242 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12107), !dbg !12243
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12108), !dbg !12243
    #dbg_value(ptr %3, !12069, !DIExpression(), !11954)
    #dbg_value(ptr %3, !12109, !DIExpression(), !11957)
    #dbg_value(i64 %i.o, !12070, !DIExpression(), !11954)
    #dbg_value(ptr %i.ab, !12071, !DIExpression(), !11954)
    #dbg_declare(ptr %i.j, !12072, !DIExpression(), !11958)
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection5pathsNtB5_12RttEstimator6update:bb.a
    #dbg_value(i32 %i.cg, !6209, !DIExpression(), !17576)
  %i.ch = extractvalue { i64, i1 } %i.cb, 0, !dbg !17886 ; 2 uses
    #dbg_value(i64 %i.ch, !6215, !DIExpression(), !17577)
  %i.ci = udiv i64 %i.ce, 1000000000, !dbg !17890
    #dbg_value(i64 %i.ci, !6208, !DIExpression(), !17573)
    #dbg_value(i64 %i.ci, !6227, !DIExpression(), !17575)
    #dbg_value(i64 %i.ch, !6210, !DIExpression(), !17580)
    #dbg_value(i64 %i.ch, !6228, !DIExpression(), !17575)
  %i.cj = add i64 %i.ch, %i.ci, !dbg !17891       ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.ch, !dbg !17891
    #dbg_value(i1 %i.ck, !6230, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17582)
  br i1 %i.ck, label %select.unfold180, label %bb.ap, !dbg !17892, !prof !2011

bb.ao:                                            ; preds = %bb.al, %bb.aj
    #dbg_value(i64 poison, !17614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17707)
    #dbg_value(i32 -1, !17614, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17707)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !dbg !17893
  unreachable, !dbg !17893

bb.ap:                                            ; preds = %bb.an
    #dbg_value(i32 %i.cg, !17614, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17712)
    #dbg_value(i64 %i.cj, !17614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17712)
    #dbg_value(i64 %i.cj, !17637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17781)
    #dbg_value(i32 %i.cg, !17637, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17781)
    #dbg_value(i64 %i.cj, !6184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17584)
    #dbg_value(i32 %i.cg, !6184, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17584)
    #dbg_value(i64 %.sroa.0.0, !6188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17584)
    #dbg_value(i32 %.sroa.4.0, !6188, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17584)
    #dbg_value(i64 1, !6193, !DIExpression(), !17586)
    #dbg_value(i64 %i.cj, !6194, !DIExpression(), !17588)
    #dbg_value(i64 %.sroa.0.0, !6195, !DIExpression(), !17588)
  %i.cl = add i64 %.sroa.0.0, %i.cj, !dbg !17894  ; 4 uses
  %i.cm = icmp ult i64 %i.cl, %i.cj, !dbg !17894
    #dbg_value(i1 %i.cm, !6197, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17590)
  br i1 %i.cm, label %bb.at, label %bb.aq, !dbg !17895, !prof !2011

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(i64 %i.cl, !6189, !DIExpression(), !17591)
    #dbg_value(i64 %i.cl, !6194, !DIExpression(), !17586)
  %i.cn = add nuw nsw i32 %.sroa.4.0, %i.cg, !dbg !17896 ; 3 uses
    #dbg_value(i32 %i.cn, !6190, !DIExpression(), !17592)
  %i.co = icmp samesign ugt i32 %i.cn, 999999999, !dbg !17897
  br i1 %i.co, label %bb.ar, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit161, !dbg !17897

bb.ar:                                            ; preds = %bb.aq
    #dbg_value(i32 %i.cn, !6190, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !17592)
  %i.cp = icmp eq i64 %i.cl, -1, !dbg !17898
    #dbg_value(i1 %i.cp, !6197, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17594)
  br i1 %i.cp, label %bb.at, label %bb.as, !dbg !17899, !prof !2011

bb.as:                                            ; preds = %bb.ar
  %i.cq = add nuw i64 %i.cl, 1, !dbg !17898
  %i.cr = add nsw i32 %i.cn, -1000000000, !dbg !17900
    #dbg_value(i32 %i.cr, !6190, !DIExpression(), !17592)
    #dbg_value(i64 %i.cq, !6189, !DIExpression(), !17591)
    #dbg_value(i64 %i.cq, !6194, !DIExpression(), !17586)
  br label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit161, !dbg !17901

select.unfold180:                                 ; preds = %bb.an, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit151
    #dbg_value(i64 poison, !17614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17712)
    #dbg_value(i32 -1, !17614, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17712)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28, !dbg !17902
  unreachable, !dbg !17902

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit161: ; preds = %bb.as, %bb.aq
  %.sroa.4.0.i156 = phi i32 [ %i.cr, %bb.as ], [ %i.cn, %bb.aq ], !dbg !17903
  %.sroa.0.0.i157 = phi i64 [ %i.cq, %bb.as ], [ %i.cl, %bb.aq ], !dbg !17903 ; 2 uses
    #dbg_value(i32 %.sroa.4.0.i156, !17614, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17713)
    #dbg_value(i64 %.sroa.0.0.i157, !17614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17713)
    #dbg_value(i64 %.sroa.0.0.i157, !17630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17715)
    #dbg_value(i32 %.sroa.4.0.i156, !17630, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17715)
    #dbg_value(i64 %.sroa.0.0.i157, !5667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17596)
    #dbg_value(i32 %.sroa.4.0.i156, !5667, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17596)
    #dbg_value(i32 8, !5671, !DIExpression(), !17596)
  %i.cs = lshr i64 %.sroa.0.0.i157, 3, !dbg !17904
    #dbg_value(i64 %i.cs, !5672, !DIExpression(), !17597)
    #dbg_value(i64 poison, !5673, !DIExpression(), !17597)
    #dbg_value(i32 poison, !5674, !DIExpression(), !17598)
    #dbg_value(i32 poison, !5675, !DIExpression(), !17598)
    #dbg_value(i64 %.sroa.0.0.i157, !5673, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !17597)
    #dbg_value(i32 undef, !5675, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !17598)
  %i.ct = lshr i32 %.sroa.4.0.i156, 3, !dbg !17905
    #dbg_value(i32 %i.ct, !5674, !DIExpression(), !17598)
  %i.cu = trunc i64 %.sroa.0.0.i157 to i32, !dbg !17906
  %i.cv = and i32 %i.cu, 7, !dbg !17906
  %i.cw = mul nuw nsw i32 %i.cv, 125000000, !dbg !17906
  %i.cx = add nuw nsw i32 %i.cw, %i.ct, !dbg !17907
    #dbg_value(i32 %i.cx, !5674, !DIExpression(), !17598)
    #dbg_value(i64 %i.cs, !17731, !DIExpression(), !17600)
    #dbg_value(i64 %i.cs, !17739, !DIExpression(), !17602)
    #dbg_value(i32 %i.cx, !17735, !DIExpression(), !17600)
    #dbg_value(i32 %i.cx, !17614, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17718)
    #dbg_value(i64 %i.cs, !17614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17718)
  store i64 %i.cs, ptr %0, align 8, !dbg !17908
  store i32 %i.cx, ptr %i.k, align 8, !dbg !17908
  br label %bb.au, !dbg !17814

bb.at:                                            ; preds = %bb.ar, %bb.ap
    #dbg_value(i64 poison, !17614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17713)
    #dbg_value(i32 -1, !17614, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17713)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !dbg !17909
  unreachable, !dbg !17909

bb.au:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit, %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div.exit161
  ret void, !dbg !17910
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection5pathsNtB5_12RttEstimator8pto_base(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17911 {
bb.a:
    #dbg_declare(ptr poison, !17965, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17972)
    #dbg_declare(ptr poison, !17965, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17979)
    #dbg_declare(ptr poison, !17986, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17992)
    #dbg_declare(ptr poison, !17973, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17995)
    #dbg_declare(ptr poison, !17987, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !17996)
    #dbg_value(ptr %0, !17963, !DIExpression(), !17997)
    #dbg_value(ptr %0, !17993, !DIExpression(), !17998)
    #dbg_value(i32 4, !17980, !DIExpression(), !17999)
    #dbg_value(i32 4, !17984, !DIExpression(), !18000)
    #dbg_value(ptr @52, !17966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18001)
    #dbg_value(i64 44, !17966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18001)
    #dbg_value(i64 0, !18002, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18006)
    #dbg_value(i32 1000000, !18002, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18006)
    #dbg_value(ptr @50, !17966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18007)
    #dbg_value(i64 30, !17966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18007)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18012
  %i.b = load i32, ptr %i.a, align 8, !dbg !18012, !range !3805, !noundef !1498 ; 2 uses
    #dbg_value(i64 poison, !17986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18008)
    #dbg_value(i32 %i.b, !17986, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18008)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18013
  %i.d = load i32, ptr %i.c, align 8, !dbg !18013, !range !3807, !noundef !1498
    #dbg_value(i64 poison, !17987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18008)
    #dbg_value(i64 poison, !17973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18009)
    #dbg_value(i32 %i.d, !17987, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18008)
    #dbg_value(i32 %i.d, !17973, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18009)
  %.not = icmp eq i32 %i.b, -1, !dbg !18014       ; 2 uses
  %spec.select = select i1 %.not, i32 %i.d, i32 %i.b, !dbg !18015
    #dbg_value(i64 poison, !17973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18009)
    #dbg_value(i64 poison, !17987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18008)
    #dbg_value(i32 %spec.select, !17973, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18009)
    #dbg_value(i32 %spec.select, !17987, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18008)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18016
  %i.f = load i64, ptr %i.e, align 8, !dbg !18016, !noundef !1498 ; 2 uses
    #dbg_value(i64 %i.f, !17981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17999)
    #dbg_value(i64 %i.f, !17983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18000)
    #dbg_value(i32 poison, !17981, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17999)
    #dbg_value(i32 poison, !17983, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18000)
    #dbg_value(i64 %i.f, !6204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17923)
    #dbg_value(i32 poison, !6204, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17923)
    #dbg_value(i32 4, !6206, !DIExpression(), !17923)
    #dbg_value(i64 4, !6213, !DIExpression(), !17925)
    #dbg_value(i64 4, !6218, !DIExpression(), !17927)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !6207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !17928)
    #dbg_value(i64 poison, !6208, !DIExpression(), !17929)
    #dbg_value(i64 poison, !6227, !DIExpression(), !17931)
    #dbg_value(i64 poison, !6209, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !17932)
    #dbg_value(i64 %i.f, !6214, !DIExpression(), !17925)
    #dbg_value(i64 %i.f, !6224, !DIExpression(), !17927)
  %i.g = icmp ugt i64 %i.f, 4611686018427387903, !dbg !18017
    #dbg_value(i64 poison, !6215, !DIExpression(), !17933)
    #dbg_value(i1 %i.g, !6216, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17933)
    #dbg_value(i1 %i.g, !6230, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17935)
  br i1 %i.g, label %select.unfold, label %bb.b, !dbg !18018, !prof !2011

bb.b:                                             ; preds = %bb.a
  %spec.select34.idx = select i1 %.not, i64 16, i64 0, !dbg !18015
  %spec.select34 = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select34.idx, !dbg !18015
  %.sroa.0.0 = load i64, ptr %spec.select34, align 8, !dbg !18019 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !17987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18008)
    #dbg_value(i64 %.sroa.0.0, !17973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18009)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !6207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !17928)
    #dbg_value(i32 poison, !17981, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17999)
    #dbg_value(i32 poison, !17983, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18000)
    #dbg_value(i32 poison, !6204, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17923)
    #dbg_value(!DIArgList(i32 poison, i64 poison), !6207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !17928)
    #dbg_value(i32 poison, !6207, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17928)
    #dbg_value(i32 poison, !6209, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !17932)
    #dbg_value(i32 poison, !6209, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !17932)
    #dbg_value(i64 %i.f, !6215, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !17933)
    #dbg_value(i32 poison, !6208, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17929)
    #dbg_value(i32 poison, !6227, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17931)
    #dbg_value(i64 %i.f, !6210, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !17936)
    #dbg_value(i64 %i.f, !6228, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !17931)
    #dbg_value(i1 false, !6230, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17938)
  %i.h = shl nuw i64 %i.f, 2, !dbg !18017
    #dbg_value(i64 %i.h, !6215, !DIExpression(), !17933)
    #dbg_value(i64 %i.h, !6210, !DIExpression(), !17936)
    #dbg_value(i64 %i.h, !6228, !DIExpression(), !17931)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !18016
  %i.j = load i32, ptr %i.i, align 8, !dbg !18016, !range !3807, !noundef !1498 ; 2 uses
    #dbg_value(i32 %i.j, !6204, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17923)
    #dbg_value(i32 %i.j, !17983, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18000)
    #dbg_value(i32 %i.j, !17981, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17999)
    #dbg_value(i32 %i.j, !6207, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17928)
  %i.k = udiv i32 %i.j, 250000000, !dbg !18020
    #dbg_value(i32 %i.k, !6227, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17931)
    #dbg_value(i32 %i.k, !6208, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17929)
  %.zext43 = zext nneg i32 %i.k to i64, !dbg !18020
    #dbg_value(i64 %.zext43, !6208, !DIExpression(), !17929)
    #dbg_value(i64 %.zext43, !6227, !DIExpression(), !17931)
  %i.l = add nuw i64 %i.h, %.zext43, !dbg !18021  ; 3 uses
  %i.m = shl nuw i32 %i.j, 2, !dbg !18022
    #dbg_value(i32 %i.m, !6207, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !17928)
  %i.n = urem i32 %i.m, 1000000000, !dbg !18023   ; 2 uses
    #dbg_value(i32 %i.n, !6209, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !17932)
    #dbg_value(i32 %i.n, !6209, !DIExpression(), !17932)
    #dbg_value(i32 %i.n, !17965, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18001)
    #dbg_value(i64 %i.l, !17965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18001)
    #dbg_value(i64 %i.l, !18003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18006)
    #dbg_value(i32 %i.n, !18003, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18006)
    #dbg_value(i64 %i.l, !3808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17940)
    #dbg_value(i32 %i.n, !3808, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17940)
    #dbg_value(i64 0, !3812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17940)
    #dbg_value(i32 1000000, !3812, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17940)
    #dbg_value(ptr poison, !3817, !DIExpression(), !17942)
    #dbg_value(ptr poison, !3820, !DIExpression(), !17942)
    #dbg_declare(ptr poison, !3824, !DIExpression(), !17944)
    #dbg_value(ptr poison, !3830, !DIExpression(), !17946)
    #dbg_value(ptr poison, !3834, !DIExpression(), !17946)
    #dbg_value(ptr poison, !3836, !DIExpression(), !17948)
    #dbg_value(ptr poison, !3840, !DIExpression(), !17948)
  %1 = icmp eq i64 %i.l, 0, !dbg !18024
    #dbg_value(i8 poison, !3826, !DIExpression(), !17949)
  %i.o = icmp samesign ugt i32 %i.n, 1000000, !dbg !18025
  %2 = icmp ne i64 %i.l, 0, !dbg !18025
  %i.p = select i1 %1, i1 %i.o, i1 %2, !dbg !18024 ; 2 uses
  %.2.i = select i1 %i.p, i64 %i.l, i64 0, !dbg !18026
    #dbg_value(i64 %.2.i, !17974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18009)
    #dbg_value(i32 poison, !17974, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18009)
    #dbg_value(i64 %.sroa.0.0, !6184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17951)
    #dbg_value(i32 %spec.select, !6184, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17951)
    #dbg_value(i64 %.2.i, !6188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17951)
    #dbg_value(i32 poison, !6188, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17951)
    #dbg_value(i64 1, !6193, !DIExpression(), !17953)
    #dbg_value(i64 %.sroa.0.0, !6194, !DIExpression(), !17955)
    #dbg_value(i64 %.2.i, !6195, !DIExpression(), !17955)
  %i.q = add i64 %.2.i, %.sroa.0.0, !dbg !18027   ; 4 uses
  %i.r = icmp ult i64 %i.q, %.sroa.0.0, !dbg !18027
    #dbg_value(i1 %i.r, !6197, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17957)
  br i1 %i.r, label %bb.g, label %bb.c, !dbg !18028, !prof !2011

bb.c:                                             ; preds = %bb.b
  %..i = select i1 %i.p, i32 %i.n, i32 1000000, !dbg !18026
    #dbg_value(i32 %..i, !17974, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18009)
    #dbg_value(i32 %..i, !6188, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17951)
    #dbg_value(i64 %i.q, !6189, !DIExpression(), !17958)
    #dbg_value(i64 %i.q, !6194, !DIExpression(), !17953)
  %i.s = add nuw nsw i32 %..i, %spec.select, !dbg !18029 ; 3 uses
    #dbg_value(i32 %i.s, !6190, !DIExpression(), !17959)
  %i.t = icmp samesign ugt i32 %i.s, 999999999, !dbg !18030
  br i1 %i.t, label %bb.d, label %bb.f, !dbg !18030

bb.d:                                             ; preds = %bb.c
    #dbg_value(i32 %i.s, !6190, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !17959)
  %i.u = icmp eq i64 %i.q, -1, !dbg !18031
    #dbg_value(i1 %i.u, !6197, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17961)
  br i1 %i.u, label %bb.g, label %bb.e, !dbg !18032, !prof !2011

bb.e:                                             ; preds = %bb.d
  %i.v = add nuw i64 %i.q, 1, !dbg !18031
  %i.w = add nsw i32 %i.s, -1000000000, !dbg !18033
    #dbg_value(i32 %i.w, !6190, !DIExpression(), !17959)
    #dbg_value(i64 %i.v, !6189, !DIExpression(), !17958)
    #dbg_value(i64 %i.v, !6194, !DIExpression(), !17953)
  br label %bb.f, !dbg !18034

select.unfold:                                    ; preds = %bb.a
    #dbg_value(i64 poison, !17965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18001)
    #dbg_value(i32 -1, !17965, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18001)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28, !dbg !18035
  unreachable, !dbg !18035

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.i = phi i32 [ %i.w, %bb.e ], [ %i.s, %bb.c ], !dbg !18036
  %.sroa.0.0.i35 = phi i64 [ %i.v, %bb.e ], [ %i.q, %bb.c ], !dbg !18036
  %i.x = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i35, 0, !dbg !18037
  %i.y = insertvalue { i64, i32 } %i.x, i32 %.sroa.4.0.i, 1, !dbg !18037
    #dbg_value(i64 poison, !17965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18007)
    #dbg_value(i32 %.sroa.4.0.i, !17965, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18007)
  ret { i64, i32 } %i.y, !dbg !18038

bb.g:                                             ; preds = %bb.d, %bb.b
    #dbg_value(i64 poison, !17965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18007)
    #dbg_value(i32 -1, !17965, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18007)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !dbg !18039
  unreachable, !dbg !18039
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection5pathsNtB5_13PathResponses11pop_on_path(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #5 !dbg !18043 {
bb.a:
  %.sroa.5 = alloca [18 x i8], align 4            ; 6 uses
    #dbg_declare(ptr %.sroa.5, !18091, !DIExpression(DW_OP_LLVM_fragment, 16, 144), !18095)
    #dbg_value(ptr poison, !6238, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !18046)
    #dbg_value(ptr %.sroa.5, !6238, !DIExpression(DW_OP_LLVM_fragment, 16, 48), !18046)
    #dbg_value(ptr poison, !18097, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !18104)
    #dbg_value(ptr %.sroa.5, !18097, !DIExpression(DW_OP_LLVM_fragment, 16, 48), !18104)
    #dbg_value(ptr %0, !18089, !DIExpression(), !18105)
    #dbg_declare(ptr %1, !18090, !DIExpression(), !18106)
    #dbg_value(i64 48, !18107, !DIExpression(), !18114)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !18157
    #dbg_value(ptr %0, !18121, !DIExpression(), !18124)
    #dbg_value(ptr %0, !18125, !DIExpression(), !18128)
    #dbg_value(ptr %0, !18129, !DIExpression(), !18132)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18158 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !18158, !noundef !1498 ; 4 uses
    #dbg_value(ptr poison, !18133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18137)
    #dbg_value(i64 %i.b, !18133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18137)
  %.not = icmp eq i64 %i.b, 0, !dbg !18159
  br i1 %.not, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, label %bb.b, !dbg !18159

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18160
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18160, !nonnull !1498, !noundef !1498
    #dbg_value(ptr %i.d, !18133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18137)
  %i.e = getelementptr [48 x i8], ptr %i.d, i64 %i.b, !dbg !18161 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -48, !dbg !18161
    #dbg_value(ptr %i.f, !18134, !DIExpression(), !18141)
  %.sroa.0.0.copyload = load i16, ptr %i.f, align 8, !dbg !18162 ; 2 uses
    #dbg_value(i16 %.sroa.0.0.copyload, !18091, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !18142)
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.e, i64 -46, !dbg !18162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %.sroa.5, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.5.0..sroa_idx, i64 18, i1 false), !dbg !18162
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.e, i64 -28, !dbg !18162
    #dbg_value(i32 poison, !18091, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !18142)
  %i.g = load <2 x i32>, ptr %.sroa.8.0..sroa_idx, align 4, !dbg !18162
    #dbg_value(i32 poison, !18091, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !18142)
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %i.e, i64 -20, !dbg !18162
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 4, !dbg !18162
    #dbg_value(i16 %.sroa.10.0.copyload, !18091, !DIExpression(DW_OP_LLVM_fragment, 224, 16), !18142)
  %.sroa.1117.0..sroa_idx = getelementptr i8, ptr %i.e, i64 -8, !dbg !18162
  %.sroa.1117.0.copyload = load i64, ptr %.sroa.1117.0..sroa_idx, align 8, !dbg !18162
    #dbg_value(i64 %.sroa.1117.0.copyload, !18091, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !18142)
    #dbg_value(ptr undef, !18097, !DIExpression(), !18104)
    #dbg_value(ptr %1, !18098, !DIExpression(), !18104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18143), !dbg !18163
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18144), !dbg !18163
    #dbg_value(ptr undef, !6238, !DIExpression(), !18046)
    #dbg_value(ptr %1, !6242, !DIExpression(), !18046)
    #dbg_value(i16 %.sroa.0.0.copyload, !6243, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !18062)
  %i.h = load i16, ptr %1, align 4, !dbg !18164, !range !6315, !alias.scope !18144, !noalias !18143, !noundef !1498
    #dbg_value(i16 %i.h, !6244, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !18063)
  %i.i = icmp eq i16 %.sroa.0.0.copyload, %i.h, !dbg !18165
  br i1 %i.i, label %bb.c, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !18165

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw i16 %.sroa.0.0.copyload to i1, !dbg !18165
    #dbg_value(i1 %i.j, !6243, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !18062)
  br i1 %i.j, label %bb.d, label %bb.e, !dbg !18165

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr undef, !6249, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !18064)
    #dbg_value(ptr undef, !6317, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !18067)
    #dbg_value(ptr %1, !6250, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !18064)
    #dbg_value(ptr %1, !6321, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !18067)
    #dbg_value(ptr poison, !6327, !DIExpression(), !18068)
    #dbg_value(ptr poison, !6328, !DIExpression(), !18069)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !18166
  %i.l = load i16, ptr %i.k, align 4, !dbg !18166, !alias.scope !18144, !noalias !18143, !noundef !1498
  %i.m = icmp eq i16 %.sroa.10.0.copyload, %i.l, !dbg !18166
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !18166
  %i.o = load <2 x i32>, ptr %i.n, align 4, !dbg !18166
  %i.p = icmp eq <2 x i32> %i.g, %i.o, !dbg !18166 ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0, !dbg !18166
  %or.cond = select i1 %i.m, i1 %i.q, i1 false, !dbg !18166
  %i.r = extractelement <2 x i1> %i.p, i64 1, !dbg !18166
  %or.cond24 = select i1 %or.cond, i1 %i.r, i1 false, !dbg !18166
  br i1 %or.cond24, label %.split, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !18166

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr undef, !6246, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !18070)
    #dbg_value(ptr undef, !6333, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !18073)
    #dbg_value(ptr %1, !6247, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !18070)
    #dbg_value(ptr %1, !6337, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !18073)
    #dbg_value(ptr poison, !6343, !DIExpression(), !18074)
    #dbg_value(ptr poison, !6344, !DIExpression(), !18075)
  %.sroa.5.4..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4, !dbg !18167
  %.sroa.5.4..sroa.5.4..sroa.5.4..sroa.5.6. = load i16, ptr %.sroa.5.4..sroa_idx26, align 4, !dbg !18167, !alias.scope !18143, !noalias !18144
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6, !dbg !18167
  %i.t = load i16, ptr %i.s, align 2, !dbg !18167, !alias.scope !18144, !noalias !18143, !noundef !1498
  %i.u = icmp eq i16 %.sroa.5.4..sroa.5.4..sroa.5.4..sroa.5.6., %i.t, !dbg !18167
  br i1 %i.u, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !18167

.split:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !18166
    #dbg_value(ptr undef, !6351, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !18077)
    #dbg_value(ptr %1, !6355, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !18077)
  %.sroa.5.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 2, !dbg !18168
  %.sroa.5.2..sroa.5.2..sroa.5.2..sroa.5.4. = load i128, ptr %.sroa.5.2..sroa_idx, align 2, !dbg !18168, !alias.scope !18143, !noalias !18144
  %i.w = load i128, ptr %i.v, align 4, !dbg !18168, !alias.scope !18144, !noalias !18143, !noundef !1498
  %i.x = icmp eq i128 %.sroa.5.2..sroa.5.2..sroa.5.2..sroa.5.4., %i.w, !dbg !18168
  br i1 %i.x, label %bb.f, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !18103

_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !18167
    #dbg_value(ptr undef, !6367, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !18081)
    #dbg_value(ptr %1, !6371, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !18081)
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.2. = load i32, ptr %.sroa.5, align 4, !dbg !18169, !alias.scope !18143, !noalias !18144
  %i.z = load i32, ptr %i.y, align 2, !dbg !18169, !alias.scope !18144, !noalias !18143, !noundef !1498
  %i.aa = icmp eq i32 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.2., %i.z, !dbg !18169
  br i1 %i.aa, label %bb.f, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !18103

bb.f:                                             ; preds = %.split, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit
    #dbg_value(ptr %0, !18115, !DIExpression(), !18145)
    #dbg_value(ptr %0, !18117, !DIExpression(), !18146)
    #dbg_value(ptr %0, !18129, !DIExpression(), !18148)
    #dbg_value(ptr %0, !18149, !DIExpression(), !18152)
  %i.ab = add nsw i64 %i.b, -1, !dbg !18170       ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8, !dbg !18170
  %i.ac = load i64, ptr %0, align 8, !dbg !18171, !range !1866, !noundef !1498
  %i.ad = icmp samesign ult i64 %i.ab, %i.ac, !dbg !18172
    #dbg_value(i1 true, !18153, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18156)
  tail call void @llvm.assume(i1 %i.ad), !dbg !18173
  %i.ae = icmp ult i64 %i.b, 192153584101141164, !dbg !18174
  tail call void @llvm.assume(i1 %i.ae), !dbg !18175
  br label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !18176

_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread: ; preds = %bb.a, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit, %.split, %bb.e, %bb.b, %bb.d, %bb.f
  %.sroa.4.1 = phi i64 [ %.sroa.1117.0.copyload, %bb.f ], [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.e ], [ undef, %.split ], [ undef, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit ], [ undef, %bb.a ], !dbg !18142
  %.sroa.0.1 = phi i64 [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %.split ], [ 0, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit ], [ 0, %bb.a ], !dbg !18142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !18177
  %i.af = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !18176
  %i.ag = insertvalue { i64, i64 } %i.af, i64 %.sroa.4.1, 1, !dbg !18176
  ret { i64, i64 } %i.ag, !dbg !18176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
end_hunk_1
