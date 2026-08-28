Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.11?download=true
inline.NumInlined: 230
inline.NumDeleted: 125
begin_hunk_0_@_RINvMs7_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_7Builder5buildRSRShRB1g_ECs9GYDdpCSJ4S_14regex_automata:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieRSINtNtCs4wP2HXfJTCR_5alloc3vec3VechERB1n_ECs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6099 {
bb.a:
    #dbg_declare(ptr poison, !6201, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !6219)
    #dbg_declare(ptr poison, !6222, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !6229)
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !6207, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !6231)
    #dbg_declare(ptr poison, !6183, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !6232)
  %i.d = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !6233, !DIExpression(), !6256)
    #dbg_value(ptr poison, !6282, !DIExpression(), !6292)
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr poison, !6293, !DIExpression(), !6316)
    #dbg_value(ptr poison, !6340, !DIExpression(), !6350)
    #dbg_value(ptr %1, !6104, !DIExpression(), !6351)
    #dbg_value(ptr %2, !6105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6351)
    #dbg_value(i64 %3, !6105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6351)
    #dbg_declare(ptr %i.d, !6226, !DIExpression(), !6352)
    #dbg_declare(ptr %i.c, !6353, !DIExpression(), !6368)
    #dbg_declare(ptr poison, !6187, !DIExpression(), !6370)
    #dbg_declare(ptr poison, !6207, !DIExpression(), !6371)
    #dbg_declare(ptr %i.b, !6353, !DIExpression(), !6374)
    #dbg_declare(ptr poison, !6193, !DIExpression(), !6376)
    #dbg_declare(ptr poison, !6207, !DIExpression(), !6377)
    #dbg_declare(ptr %i.a, !6353, !DIExpression(), !6380)
    #dbg_declare(ptr poison, !6197, !DIExpression(), !6382)
    #dbg_declare(ptr poison, !6207, !DIExpression(), !6383)
    #dbg_declare(ptr poison, !6358, !DIExpression(), !6386)
    #dbg_declare(ptr poison, !6212, !DIExpression(), !6387)
    #dbg_declare(ptr poison, !6362, !DIExpression(), !6388)
    #dbg_declare(ptr poison, !6214, !DIExpression(), !6389)
    #dbg_declare(ptr poison, !6366, !DIExpression(), !6390)
    #dbg_declare(ptr poison, !6216, !DIExpression(), !6391)
    #dbg_value(i8 0, !6150, !DIExpression(), !6392)
    #dbg_value(ptr poison, !6393, !DIExpression(), !6402)
    #dbg_value(ptr poison, !6393, !DIExpression(), !6459)
    #dbg_value(ptr poison, !6465, !DIExpression(), !6477)
    #dbg_value(ptr poison, !6487, !DIExpression(), !6492)
    #dbg_value(ptr poison, !6465, !DIExpression(), !6494)
    #dbg_value(ptr poison, !6487, !DIExpression(), !6496)
    #dbg_value(ptr %2, !6499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6504)
    #dbg_value(ptr %2, !6506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6509)
    #dbg_value(ptr %2, !6511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6521)
    #dbg_value(i64 %3, !6499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6504)
    #dbg_value(i64 %3, !6506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6509)
    #dbg_value(i64 %3, !6511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6521)
    #dbg_value(i64 %3, !6515, !DIExpression(), !6523)
    #dbg_value(i64 %3, !6524, !DIExpression(), !6531)
    #dbg_value(ptr %2, !6517, !DIExpression(), !6533)
    #dbg_value(ptr %2, !6530, !DIExpression(), !6531)
  %.idx = mul nuw nsw i64 %3, 24, !dbg !6534
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !6534
    #dbg_value(ptr %2, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr %i.g, !6106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6535)
    #dbg_value(i64 0, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
    #dbg_value(ptr undef, !6340, !DIExpression(), !6350)
    #dbg_value(ptr undef, !6293, !DIExpression(), !6316)
    #dbg_value(i64 1, !6536, !DIExpression(), !6543)
    #dbg_value(ptr %2, !6310, !DIExpression(), !6545)
    #dbg_value(ptr %2, !6542, !DIExpression(), !6543)
    #dbg_value(ptr %i.g, !6312, !DIExpression(), !6546)
    #dbg_value(ptr poison, !6547, !DIExpression(), !6554)
    #dbg_value(ptr poison, !6553, !DIExpression(), !6556)
  %i.h = icmp eq i64 %3, 0, !dbg !6557
  br i1 %i.h, label %._crit_edge303, label %.lr.ph302, !dbg !6558

.lr.ph302:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.b, !dbg !6558

bb.b:                                             ; preds = %.lr.ph302, %.backedge
  %.sroa.0212.0300 = phi ptr [ %2, %.lr.ph302 ], [ %i.z, %.backedge ] ; 3 uses
  %.sroa.8.0299 = phi i64 [ 0, %.lr.ph302 ], [ %i.aa, %.backedge ] ; 7 uses
    #dbg_value(ptr %.sroa.0212.0300, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %.sroa.8.0299, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0212.0300, i64 24, !dbg !6559 ; 2 uses
    #dbg_value(ptr %i.z, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr %.sroa.0212.0300, !6341, !DIExpression(), !6560)
    #dbg_value(i64 %.sroa.8.0299, !6347, !DIExpression(), !6561)
  %i.aa = add i64 %.sroa.8.0299, 1, !dbg !6562    ; 2 uses
    #dbg_value(i64 %i.aa, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6563
    #dbg_value(i64 %.sroa.8.0299, !6127, !DIExpression(), !6564)
    #dbg_value(i64 %.sroa.8.0299, !6457, !DIExpression(), !6565)
    #dbg_value(i64 %.sroa.8.0299, !6432, !DIExpression(), !6566)
    #dbg_value(i64 %.sroa.8.0299, !6427, !DIExpression(), !6567)
    #dbg_value(i64 %.sroa.8.0299, !6568, !DIExpression(), !6574)
  store i64 %.sroa.8.0299, ptr %i.f, align 8, !dbg !6563
    #dbg_value(ptr %.sroa.0212.0300, !6129, !DIExpression(), !6564)
  %exitcond = icmp eq i64 %.sroa.8.0299, 2147483647, !dbg !6576
  br i1 %exitcond, label %bb.e, label %bb.d, !dbg !6576

._crit_edge303:                                   ; preds = %.backedge, %bb.a
    #dbg_value(ptr poison, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 poison, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
  store i32 -1, ptr %0, align 8, !dbg !6577
  br label %bb.c, !dbg !6578

bb.c:                                             ; preds = %bb.au, %._crit_edge303
  ret void, !dbg !6579

bb.d:                                             ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %.sroa.8.0299 to i32, !dbg !6580 ; 2 uses
    #dbg_value(i32 %i.ab, !6130, !DIExpression(), !6581)
    #dbg_value(ptr undef, !6129, !DIExpression(DW_OP_deref), !6564)
    #dbg_value(ptr poison, !6582, !DIExpression(), !6589)
  %i.ac = getelementptr i8, ptr %.sroa.0212.0300, i64 8, !dbg !6591
  %.val.i = load ptr, ptr %i.ac, align 8, !dbg !6591, !nonnull !65, !noundef !65 ; 3 uses
  %i.ad = getelementptr i8, ptr %.sroa.0212.0300, i64 16, !dbg !6591
  %.val1.i = load i64, ptr %i.ad, align 8, !dbg !6591, !noundef !65 ; 8 uses
    #dbg_value(ptr %.val.i, !6136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6592)
    #dbg_value(ptr %.val.i, !6593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6598)
    #dbg_value(ptr %.val.i, !6600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6610)
    #dbg_value(i64 %.val1.i, !6136, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6592)
    #dbg_value(i64 %.val1.i, !6593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6598)
    #dbg_value(i64 %.val1.i, !6600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6610)
    #dbg_value(i64 %.val1.i, !6432, !DIExpression(), !6612)
    #dbg_value(i64 %.val1.i, !6427, !DIExpression(), !6613)
    #dbg_value(i64 %.val1.i, !6568, !DIExpression(), !6614)
    #dbg_value(i64 %.val1.i, !6616, !DIExpression(), !6620)
    #dbg_value(i64 %.val1.i, !6622, !DIExpression(), !6626)
    #dbg_value(i64 %.val1.i, !6604, !DIExpression(), !6628)
    #dbg_value(i64 %.val1.i, !6629, !DIExpression(), !6635)
  %i.ae = icmp ugt i64 %.val1.i, 2147483646, !dbg !6637
  br i1 %i.ae, label %bb.g, label %bb.f, !dbg !6637

bb.e:                                             ; preds = %bb.b
    #dbg_value(i32 1, !6132, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6638)
    #dbg_value(i32 1, !6207, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6639)
    #dbg_value(i32 undef, !6132, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6638)
    #dbg_value(i32 undef, !6207, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6639)
    #dbg_value(i64 2147483646, !6207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6639)
    #dbg_value(i64 2147483646, !6132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6638)
    #dbg_value(i64 2147483647, !6207, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6639)
    #dbg_value(i64 2147483647, !6132, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6638)
    #dbg_value(i32 1, !6208, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6642)
    #dbg_value(i32 undef, !6208, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6642)
    #dbg_value(i64 2147483646, !6208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6642)
    #dbg_value(i64 2147483647, !6208, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6642)
  store i32 1, ptr %0, align 8, !dbg !6643
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6643
  store i64 2147483646, ptr %.sroa.598.0..sroa_idx, align 8, !dbg !6643
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6643
  store i64 2147483647, ptr %.sroa.699.0..sroa_idx, align 8, !dbg !6643
  br label %bb.au, !dbg !6644

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %.val1.i, !6138, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6646)
    #dbg_value(i64 %.val1.i, !6647, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6654)
  %i.af = load i64, ptr %i.j, align 16, !dbg !6656, !noundef !65
    #dbg_value(i64 %i.af, !6619, !DIExpression(), !6620)
    #dbg_value(ptr undef, !6657, !DIExpression(DW_OP_deref), !6664)
    #dbg_value(ptr undef, !6661, !DIExpression(DW_OP_deref), !6664)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.af), !dbg !6666
  store i64 %..i, ptr %i.j, align 16, !dbg !6667
  %i.ag = load i64, ptr %i.k, align 8, !dbg !6668, !noundef !65
    #dbg_value(i64 %i.ag, !6625, !DIExpression(), !6626)
    #dbg_value(ptr undef, !6669, !DIExpression(DW_OP_deref), !6673)
    #dbg_value(ptr undef, !6672, !DIExpression(DW_OP_deref), !6673)
  %..i202 = tail call noundef i64 @llvm.umax.i64(i64 %.val1.i, i64 %i.ag), !dbg !6675
  store i64 %..i202, ptr %i.k, align 8, !dbg !6676
    #dbg_value(ptr %i.f, !6144, !DIExpression(), !6677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6678
    #dbg_value(ptr %1, !6679, !DIExpression(DW_OP_plus_uconst, 608, DW_OP_stack_value), !6683)
  %i.ah = load i64, ptr %i.l, align 16, !dbg !6685, !noundef !65 ; 3 uses
  store i64 %i.ah, ptr %i.e, align 8, !dbg !6685
  %i.ai = icmp ult i64 %i.ah, 2305843009213693952, !dbg !6686
  tail call void @llvm.assume(i1 %i.ai), !dbg !6687
    #dbg_value(ptr %i.e, !6149, !DIExpression(), !6677)
  %i.aj = icmp eq i64 %.sroa.8.0299, %i.ah, !dbg !6688
  br i1 %i.aj, label %bb.i, label %bb.h, !dbg !6688, !prof !2202

bb.g:                                             ; preds = %bb.d
    #dbg_value(i32 2, !6140, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6689)
    #dbg_value(i32 2, !6207, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6690)
    #dbg_value(i32 %i.ab, !6140, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6689)
    #dbg_value(i32 %i.ab, !6207, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6690)
    #dbg_value(i64 %.val1.i, !6207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6690)
    #dbg_value(i64 %.val1.i, !6140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6689)
    #dbg_value(i64 undef, !6207, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6690)
    #dbg_value(i64 undef, !6140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6689)
    #dbg_value(i32 2, !6210, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6693)
    #dbg_value(i32 %i.ab, !6210, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6693)
    #dbg_value(i64 %.val1.i, !6210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6693)
    #dbg_value(i64 undef, !6210, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6693)
  store i32 2, ptr %0, align 8, !dbg !6694
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !6694
  store i32 %i.ab, ptr %.sroa.4116.0..sroa_idx, align 4, !dbg !6694
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6694
  store i64 %.val1.i, ptr %.sroa.5117.0..sroa_idx, align 8, !dbg !6694
  br label %bb.au, !dbg !6695

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %i.f, !6127, !DIExpression(DW_OP_deref), !6564)
    #dbg_value(ptr %i.f, !6457, !DIExpression(DW_OP_deref), !6565)
    #dbg_value(ptr %i.f, !6432, !DIExpression(DW_OP_deref), !6566)
    #dbg_value(ptr %i.f, !6427, !DIExpression(DW_OP_deref), !6567)
    #dbg_value(ptr %i.f, !6568, !DIExpression(DW_OP_deref), !6574)
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef nonnull @14, ptr nonnull inttoptr (i64 95 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !dbg !6697
  unreachable, !dbg !6697

bb.i:                                             ; preds = %bb.f
  %i.ak = trunc nuw nsw i64 %.val1.i to i32, !dbg !6698
    #dbg_value(i32 %i.ak, !6138, !DIExpression(), !6646)
    #dbg_value(i32 %i.ak, !6647, !DIExpression(), !6654)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6699
    #dbg_value(ptr %i.m, !6653, !DIExpression(), !6654)
    #dbg_value(ptr %i.m, !6700, !DIExpression(), !6713)
    #dbg_value(ptr %i.m, !6715, !DIExpression(), !6721)
    #dbg_value(i32 %i.ak, !6707, !DIExpression(), !6713)
    #dbg_value(i64 4, !6723, !DIExpression(), !6727)
    #dbg_value(i64 %i.ah, !6708, !DIExpression(), !6733)
    #dbg_value(i64 %i.ah, !6734, !DIExpression(), !6740)
    #dbg_value(ptr %i.m, !6731, !DIExpression(), !6742)
  %i.al = load i64, ptr %i.m, align 16, !dbg !6743, !range !1927, !alias.scope !6744, !noundef !65
  %i.am = icmp eq i64 %.sroa.8.0299, %i.al, !dbg !6747
  br i1 %i.am, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6747

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #23, !dbg !6748
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6749

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.i, %bb.j
  %i.an = load ptr, ptr %i.n, align 8, !dbg !6750, !alias.scope !6744, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.an, !6739, !DIExpression(), !6740)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.8.0299, !dbg !6771
    #dbg_value(ptr %i.ao, !6710, !DIExpression(), !6772)
    #dbg_value(ptr %i.ao, !6773, !DIExpression(), !6779)
    #dbg_value(i32 %i.ak, !6778, !DIExpression(), !6779)
  store i32 %i.ak, ptr %i.ao, align 4, !dbg !6781
  store i64 %i.aa, ptr %i.l, align 16, !dbg !6782, !alias.scope !6744
  %i.ap = load ptr, ptr %i.o, align 8, !dbg !6783, !nonnull !65, !align !6784, !noundef !65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 9, !dbg !6783
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !6783, !range !3847, !noundef !65
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !6783
  br i1 %i.as, label %bb.l, label %bb.k, !dbg !6783

bb.k:                                             ; preds = %bb.l, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  %i.at = load i32, ptr %i.p, align 8, !dbg !6785, !noundef !65 ; 2 uses
    #dbg_value(i32 %i.at, !6153, !DIExpression(), !6786)
    #dbg_value(i8 0, !6155, !DIExpression(), !6787)
    #dbg_value(ptr %.val.i, !6606, !DIExpression(), !6788)
    #dbg_value(ptr %.val.i, !6634, !DIExpression(), !6635)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i, !dbg !6789
    #dbg_value(ptr %.val.i, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
    #dbg_value(ptr %i.au, !6157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6790)
    #dbg_value(i64 0, !6157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6790)
    #dbg_value(i8 poison, !6155, !DIExpression(), !6787)
    #dbg_value(ptr undef, !6282, !DIExpression(), !6292)
    #dbg_value(ptr undef, !6233, !DIExpression(), !6256)
    #dbg_value(i64 1, !6791, !DIExpression(), !6798)
    #dbg_value(ptr %.val.i, !6250, !DIExpression(), !6800)
    #dbg_value(ptr %.val.i, !6797, !DIExpression(), !6798)
    #dbg_value(ptr %i.au, !6252, !DIExpression(), !6801)
    #dbg_value(ptr poison, !6802, !DIExpression(), !6809)
    #dbg_value(ptr poison, !6808, !DIExpression(), !6811)
  %i.av = icmp samesign eq i64 %.val1.i, 0, !dbg !6812
  br i1 %i.av, label %._crit_edge, label %.lr.ph298, !dbg !6813

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  tail call void @_RNvMs1_NtNtCsl4b0cIVMtRE_12aho_corasick4util9prefilterNtB5_7Builder3add(ptr noalias nofree noundef nonnull align 16 dereferenceable(480) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !6814
  br label %bb.k, !dbg !6815

.lr.ph298:                                        ; preds = %bb.k, %bb.at
  %.sroa.046.0297 = phi i32 [ %.sroa.046.1, %bb.at ], [ %i.at, %bb.k ] ; 4 uses
  %.sroa.056.0296 = phi i1 [ %.sroa.056.1, %bb.at ], [ false, %bb.k ]
  %.sroa.9.0295 = phi i64 [ %i.ax, %bb.at ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0214.0294 = phi ptr [ %i.aw, %bb.at ], [ %.val.i, %bb.k ] ; 2 uses
    #dbg_value(i32 %.sroa.046.0297, !6153, !DIExpression(), !6786)
    #dbg_value(i64 %.sroa.9.0295, !6157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6790)
    #dbg_value(ptr %.sroa.0214.0294, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0214.0294, i64 1, !dbg !6816 ; 2 uses
    #dbg_value(ptr %i.aw, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
    #dbg_value(ptr %.sroa.0214.0294, !6283, !DIExpression(), !6817)
    #dbg_value(i64 %.sroa.9.0295, !6289, !DIExpression(), !6818)
  %i.ax = add nuw i64 %.sroa.9.0295, 1, !dbg !6819
    #dbg_value(i64 %i.ax, !6157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6790)
    #dbg_value(ptr %i.aw, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
    #dbg_value(i64 %.sroa.9.0295, !6174, !DIExpression(), !6820)
  %i.ay = load i8, ptr %.sroa.0214.0294, align 1, !dbg !6821, !noundef !65 ; 18 uses
    #dbg_value(i8 %i.ay, !6176, !DIExpression(), !6820)
    #dbg_value(i8 %i.ay, !6822, !DIExpression(), !6828)
    #dbg_value(i8 %i.ay, !6822, !DIExpression(), !6830)
  br i1 %.sroa.056.0296, label %bb.p, label %bb.o, !dbg !6832

._crit_edge:                                      ; preds = %bb.at, %bb.k
  %.sroa.046.0.lcssa = phi i32 [ %i.at, %bb.k ], [ %.sroa.046.1, %bb.at ], !dbg !6646
    #dbg_value(i64 poison, !6157, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6790)
    #dbg_value(ptr poison, !6157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6381
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA9add_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0.lcssa, i32 noundef %i.ab), !dbg !6833
  %i.az = load i32, ptr %i.a, align 8, !dbg !6834, !range !2139, !noundef !65
  %.not193 = icmp eq i32 %i.az, -1, !dbg !6834
  br i1 %.not193, label %bb.n, label %bb.m, !dbg !6835

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !6836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6837
  br label %bb.au, !dbg !6838

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6837
  br label %.backedge, !dbg !6840

.backedge:                                        ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6841
    #dbg_value(ptr %i.z, !6106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %i.aa, !6106, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6535)
    #dbg_value(ptr undef, !6340, !DIExpression(), !6350)
    #dbg_value(ptr undef, !6293, !DIExpression(), !6316)
    #dbg_value(i64 1, !6536, !DIExpression(), !6543)
    #dbg_value(ptr %i.z, !6310, !DIExpression(), !6545)
    #dbg_value(ptr %i.z, !6542, !DIExpression(), !6543)
    #dbg_value(ptr %i.g, !6312, !DIExpression(), !6546)
    #dbg_value(ptr poison, !6547, !DIExpression(), !6554)
    #dbg_value(ptr poison, !6553, !DIExpression(), !6556)
  %i.ba = icmp eq ptr %i.z, %i.g, !dbg !6557
  br i1 %i.ba, label %._crit_edge303, label %bb.b, !dbg !6558

bb.o:                                             ; preds = %.lr.ph298
    #dbg_value(ptr %1, !6842, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6849)
    #dbg_value(ptr %1, !6851, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6860)
    #dbg_value(ptr %1, !6862, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6873)
    #dbg_value(ptr %1, !6875, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6879)
    #dbg_value(ptr %1, !6881, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !6888)
    #dbg_value(i32 %.sroa.046.0297, !6848, !DIExpression(), !6890)
    #dbg_value(ptr poison, !6891, !DIExpression(), !6897)
    #dbg_value(ptr poison, !6401, !DIExpression(), !6899)
  %i.bb = zext i32 %.sroa.046.0297 to i64, !dbg !6901 ; 3 uses
    #dbg_value(i64 %i.bb, !6857, !DIExpression(), !6902)
    #dbg_value(i64 %i.bb, !6903, !DIExpression(), !6917)
    #dbg_value(i64 %i.bb, !6919, !DIExpression(), !6926)
  %i.bc = load i64, ptr %i.q, align 16, !dbg !6928, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !6911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6917)
    #dbg_value(ptr poison, !6925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6926)
    #dbg_value(i64 %i.bc, !6911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6917)
    #dbg_value(i64 %i.bc, !6925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6926)
  %i.bd = icmp ugt i64 %i.bc, %i.bb, !dbg !6929
  br i1 %i.bd, label %bb.q, label %bb.r, !dbg !6929

bb.p:                                             ; preds = %.lr.ph298
    #dbg_value(i8 1, !6155, !DIExpression(), !6787)
  %i.be = load ptr, ptr %i.o, align 8, !dbg !6930, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !6931, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !6939)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !6941
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !6941, !range !6942, !noundef !65
  %i.bh = icmp eq i8 %i.bg, 1, !dbg !6943
  br i1 %i.bh, label %.backedge, label %bb.s, !dbg !6930

bb.q:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.r, align 8, !dbg !6944, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.bi, !6911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6917)
    #dbg_value(ptr %i.bi, !6925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6926)
  %i.bj = getelementptr inbounds nuw [20 x i8], ptr %i.bi, i64 %i.bb, !dbg !6965
    #dbg_value(ptr %i.bj, !6485, !DIExpression(), !6966)
    #dbg_value(ptr %i.bj, !6473, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6967)
    #dbg_value(ptr %i.bj, !6491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6968)
    #dbg_value(ptr %i.bj, !6969, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6976)
    #dbg_value(ptr poison, !6975, !DIExpression(), !6976)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !6976
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !6976, !noundef !65
  %i.bm = icmp ne i32 %i.bl, 0, !dbg !6976        ; 2 uses
    #dbg_value(i1 %i.bm, !6155, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6787)
  %i.bn = load ptr, ptr %i.o, align 8, !dbg !6930, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !6931, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !6939)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !6941
  %i.bp = load i8, ptr %i.bo, align 8, !dbg !6941, !range !6942, !noundef !65
  %i.bq = icmp eq i8 %i.bp, 1, !dbg !6943
  %or.cond = and i1 %i.bm, %i.bq, !dbg !6930
  br i1 %or.cond, label %.backedge, label %bb.s, !dbg !6930

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28, !dbg !6929
  unreachable, !dbg !6929

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.br = phi ptr [ %i.be, %bb.p ], [ %i.bn, %bb.q ]
  %.sroa.056.1 = phi i1 [ true, %bb.p ], [ %i.bm, %bb.q ], !dbg !6977
    #dbg_value(i8 poison, !6155, !DIExpression(), !6787)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !6988)
    #dbg_value(i8 %i.ay, !6986, !DIExpression(), !6988)
    #dbg_value(i8 %i.ay, !6987, !DIExpression(), !6988)
    #dbg_value(i8 %i.ay, !6990, !DIExpression(), !7006)
  %.not.i205 = icmp eq i8 %i.ay, 0, !dbg !7008
  br i1 %.not.i205, label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit, label %bb.t, !dbg !7008
end_hunk_0
begin_hunk_1_@_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieRSINtNtCs4wP2HXfJTCR_5alloc3vec3VechERB1n_ECs9GYDdpCSJ4S_14regex_automata:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieRSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralRB1n_ECs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 288230376151711744) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7494 {
bb.a:
    #dbg_declare(ptr poison, !7565, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !7580)
    #dbg_declare(ptr poison, !7583, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !7590)
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !7569, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !7592)
    #dbg_declare(ptr poison, !7547, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !7593)
  %i.d = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !6233, !DIExpression(), !7594)
    #dbg_value(ptr poison, !6282, !DIExpression(), !7597)
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr poison, !3659, !DIExpression(), !7598)
    #dbg_value(ptr poison, !7622, !DIExpression(), !7632)
    #dbg_value(ptr %1, !7499, !DIExpression(), !7633)
    #dbg_value(ptr %2, !7500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7633)
    #dbg_value(i64 %3, !7500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7633)
    #dbg_declare(ptr %i.d, !7587, !DIExpression(), !7634)
    #dbg_declare(ptr %i.c, !7635, !DIExpression(), !7650)
    #dbg_declare(ptr poison, !7551, !DIExpression(), !7652)
    #dbg_declare(ptr poison, !7569, !DIExpression(), !7653)
    #dbg_declare(ptr %i.b, !7635, !DIExpression(), !7656)
    #dbg_declare(ptr poison, !7557, !DIExpression(), !7658)
    #dbg_declare(ptr poison, !7569, !DIExpression(), !7659)
    #dbg_declare(ptr %i.a, !7635, !DIExpression(), !7662)
    #dbg_declare(ptr poison, !7561, !DIExpression(), !7664)
    #dbg_declare(ptr poison, !7569, !DIExpression(), !7665)
    #dbg_declare(ptr poison, !7640, !DIExpression(), !7668)
    #dbg_declare(ptr poison, !7574, !DIExpression(), !7669)
    #dbg_declare(ptr poison, !7644, !DIExpression(), !7670)
    #dbg_declare(ptr poison, !7576, !DIExpression(), !7671)
    #dbg_declare(ptr poison, !7648, !DIExpression(), !7672)
    #dbg_declare(ptr poison, !7578, !DIExpression(), !7673)
    #dbg_value(i8 0, !7529, !DIExpression(), !7674)
    #dbg_value(ptr poison, !7675, !DIExpression(), !7679)
    #dbg_value(ptr poison, !7675, !DIExpression(), !7693)
    #dbg_value(ptr poison, !7699, !DIExpression(), !7703)
    #dbg_value(ptr poison, !7709, !DIExpression(), !7713)
    #dbg_value(ptr poison, !7699, !DIExpression(), !7715)
    #dbg_value(ptr poison, !7709, !DIExpression(), !7717)
    #dbg_value(ptr %2, !3775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7720)
    #dbg_value(ptr %2, !3770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7722)
    #dbg_value(ptr %2, !3762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7724)
    #dbg_value(i64 %3, !3775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7720)
    #dbg_value(i64 %3, !3770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7722)
    #dbg_value(i64 %3, !3762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7724)
    #dbg_value(i64 %3, !3763, !DIExpression(), !7726)
    #dbg_value(i64 %3, !3756, !DIExpression(), !7727)
    #dbg_value(ptr %2, !3764, !DIExpression(), !7729)
    #dbg_value(ptr %2, !3755, !DIExpression(), !7727)
  %.idx = shl nuw nsw i64 %3, 5, !dbg !7730
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !7730
    #dbg_value(ptr %2, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
    #dbg_value(ptr %i.g, !7501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7731)
    #dbg_value(i64 0, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
    #dbg_value(ptr undef, !7622, !DIExpression(), !7632)
    #dbg_value(ptr undef, !3659, !DIExpression(), !7598)
    #dbg_value(i64 1, !3686, !DIExpression(), !7732)
    #dbg_value(ptr %2, !3678, !DIExpression(), !7734)
    #dbg_value(ptr %2, !3693, !DIExpression(), !7732)
    #dbg_value(ptr %i.g, !3680, !DIExpression(), !7735)
    #dbg_value(ptr poison, !3698, !DIExpression(), !7736)
    #dbg_value(ptr poison, !3705, !DIExpression(), !7738)
  %i.h = icmp eq i64 %3, 0, !dbg !7739
  br i1 %i.h, label %._crit_edge303, label %.lr.ph302, !dbg !7740

.lr.ph302:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.b, !dbg !7740

bb.b:                                             ; preds = %.lr.ph302, %.backedge
  %.sroa.0212.0300 = phi ptr [ %2, %.lr.ph302 ], [ %i.z, %.backedge ] ; 3 uses
  %.sroa.8.0299 = phi i64 [ 0, %.lr.ph302 ], [ %i.aa, %.backedge ] ; 7 uses
    #dbg_value(ptr %.sroa.0212.0300, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
    #dbg_value(i64 %.sroa.8.0299, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0212.0300, i64 32, !dbg !7741 ; 2 uses
    #dbg_value(ptr %i.z, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
    #dbg_value(ptr %.sroa.0212.0300, !7623, !DIExpression(), !7742)
    #dbg_value(i64 %.sroa.8.0299, !7629, !DIExpression(), !7743)
  %i.aa = add i64 %.sroa.8.0299, 1, !dbg !7744    ; 2 uses
    #dbg_value(i64 %i.aa, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !7745
    #dbg_value(i64 %.sroa.8.0299, !7508, !DIExpression(), !7746)
    #dbg_value(i64 %.sroa.8.0299, !7691, !DIExpression(), !7747)
    #dbg_value(i64 %.sroa.8.0299, !7687, !DIExpression(), !7748)
    #dbg_value(i64 %.sroa.8.0299, !7683, !DIExpression(), !7749)
    #dbg_value(i64 %.sroa.8.0299, !7750, !DIExpression(), !7753)
  store i64 %.sroa.8.0299, ptr %i.f, align 8, !dbg !7745
    #dbg_value(ptr %.sroa.0212.0300, !7510, !DIExpression(), !7746)
  %exitcond = icmp eq i64 %.sroa.8.0299, 2147483647, !dbg !7755
  br i1 %exitcond, label %bb.e, label %bb.d, !dbg !7755

._crit_edge303:                                   ; preds = %.backedge, %bb.a
    #dbg_value(ptr poison, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
    #dbg_value(i64 poison, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
  store i32 -1, ptr %0, align 8, !dbg !7756
  br label %bb.c, !dbg !7757

bb.c:                                             ; preds = %bb.au, %._crit_edge303
  ret void, !dbg !7758

bb.d:                                             ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %.sroa.8.0299 to i32, !dbg !7759 ; 2 uses
    #dbg_value(i32 %i.ab, !7511, !DIExpression(), !7760)
    #dbg_value(ptr undef, !7510, !DIExpression(DW_OP_deref), !7746)
    #dbg_value(ptr poison, !3878, !DIExpression(), !7761)
  %i.ac = getelementptr i8, ptr %.sroa.0212.0300, i64 8, !dbg !7763
  %.val.i = load ptr, ptr %i.ac, align 8, !dbg !7763, !nonnull !65, !noundef !65 ; 3 uses
  %i.ad = getelementptr i8, ptr %.sroa.0212.0300, i64 16, !dbg !7763
  %.val1.i = load i64, ptr %i.ad, align 8, !dbg !7763, !noundef !65 ; 8 uses
    #dbg_value(ptr %.val.i, !7517, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7764)
    #dbg_value(ptr %.val.i, !7765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7768)
    #dbg_value(ptr %.val.i, !7770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7779)
    #dbg_value(i64 %.val1.i, !7517, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7764)
    #dbg_value(i64 %.val1.i, !7765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7768)
    #dbg_value(i64 %.val1.i, !7770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7779)
    #dbg_value(i64 %.val1.i, !7687, !DIExpression(), !7781)
    #dbg_value(i64 %.val1.i, !7683, !DIExpression(), !7782)
    #dbg_value(i64 %.val1.i, !7750, !DIExpression(), !7783)
    #dbg_value(i64 %.val1.i, !7785, !DIExpression(), !7789)
    #dbg_value(i64 %.val1.i, !7791, !DIExpression(), !7795)
    #dbg_value(i64 %.val1.i, !7773, !DIExpression(), !7797)
    #dbg_value(i64 %.val1.i, !7798, !DIExpression(), !7802)
  %i.ae = icmp ugt i64 %.val1.i, 2147483646, !dbg !7804
  br i1 %i.ae, label %bb.g, label %bb.f, !dbg !7804

bb.e:                                             ; preds = %bb.b
    #dbg_value(i32 1, !7513, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7805)
    #dbg_value(i32 1, !7569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7806)
    #dbg_value(i32 undef, !7513, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7805)
    #dbg_value(i32 undef, !7569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7806)
    #dbg_value(i64 2147483646, !7569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7806)
    #dbg_value(i64 2147483646, !7513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7805)
    #dbg_value(i64 2147483647, !7569, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7806)
    #dbg_value(i64 2147483647, !7513, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7805)
    #dbg_value(i32 1, !7570, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7809)
    #dbg_value(i32 undef, !7570, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7809)
    #dbg_value(i64 2147483646, !7570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7809)
    #dbg_value(i64 2147483647, !7570, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7809)
  store i32 1, ptr %0, align 8, !dbg !7810
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7810
  store i64 2147483646, ptr %.sroa.598.0..sroa_idx, align 8, !dbg !7810
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7810
  store i64 2147483647, ptr %.sroa.699.0..sroa_idx, align 8, !dbg !7810
  br label %bb.au, !dbg !7811

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %.val1.i, !7519, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7813)
    #dbg_value(i64 %.val1.i, !7814, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7818)
  %i.af = load i64, ptr %i.j, align 16, !dbg !7820, !noundef !65
    #dbg_value(i64 %i.af, !7788, !DIExpression(), !7789)
    #dbg_value(ptr undef, !6657, !DIExpression(DW_OP_deref), !7821)
    #dbg_value(ptr undef, !6661, !DIExpression(DW_OP_deref), !7821)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.af), !dbg !7823
  store i64 %..i, ptr %i.j, align 16, !dbg !7824
  %i.ag = load i64, ptr %i.k, align 8, !dbg !7825, !noundef !65
    #dbg_value(i64 %i.ag, !7794, !DIExpression(), !7795)
    #dbg_value(ptr undef, !6669, !DIExpression(DW_OP_deref), !7826)
    #dbg_value(ptr undef, !6672, !DIExpression(DW_OP_deref), !7826)
  %..i202 = tail call noundef i64 @llvm.umax.i64(i64 %.val1.i, i64 %i.ag), !dbg !7828
  store i64 %..i202, ptr %i.k, align 8, !dbg !7829
    #dbg_value(ptr %i.f, !7525, !DIExpression(), !7830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !7831
    #dbg_value(ptr %1, !7832, !DIExpression(DW_OP_plus_uconst, 608, DW_OP_stack_value), !7835)
  %i.ah = load i64, ptr %i.l, align 16, !dbg !7837, !noundef !65 ; 3 uses
  store i64 %i.ah, ptr %i.e, align 8, !dbg !7837
  %i.ai = icmp ult i64 %i.ah, 2305843009213693952, !dbg !7838
  tail call void @llvm.assume(i1 %i.ai), !dbg !7839
    #dbg_value(ptr %i.e, !7528, !DIExpression(), !7830)
  %i.aj = icmp eq i64 %.sroa.8.0299, %i.ah, !dbg !7840
  br i1 %i.aj, label %bb.i, label %bb.h, !dbg !7840, !prof !2202

bb.g:                                             ; preds = %bb.d
    #dbg_value(i32 2, !7521, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7841)
    #dbg_value(i32 2, !7569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7842)
    #dbg_value(i32 %i.ab, !7521, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7841)
    #dbg_value(i32 %i.ab, !7569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7842)
    #dbg_value(i64 %.val1.i, !7569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7842)
    #dbg_value(i64 %.val1.i, !7521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7841)
    #dbg_value(i64 undef, !7569, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7842)
    #dbg_value(i64 undef, !7521, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7841)
    #dbg_value(i32 2, !7572, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7845)
    #dbg_value(i32 %i.ab, !7572, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7845)
    #dbg_value(i64 %.val1.i, !7572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7845)
    #dbg_value(i64 undef, !7572, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7845)
  store i32 2, ptr %0, align 8, !dbg !7846
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !7846
  store i32 %i.ab, ptr %.sroa.4116.0..sroa_idx, align 4, !dbg !7846
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7846
  store i64 %.val1.i, ptr %.sroa.5117.0..sroa_idx, align 8, !dbg !7846
  br label %bb.au, !dbg !7847

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %i.f, !7508, !DIExpression(DW_OP_deref), !7746)
    #dbg_value(ptr %i.f, !7691, !DIExpression(DW_OP_deref), !7747)
    #dbg_value(ptr %i.f, !7687, !DIExpression(DW_OP_deref), !7748)
    #dbg_value(ptr %i.f, !7683, !DIExpression(DW_OP_deref), !7749)
    #dbg_value(ptr %i.f, !7750, !DIExpression(DW_OP_deref), !7753)
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef nonnull @14, ptr nonnull inttoptr (i64 95 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !dbg !7849
  unreachable, !dbg !7849

bb.i:                                             ; preds = %bb.f
  %i.ak = trunc nuw nsw i64 %.val1.i to i32, !dbg !7850
    #dbg_value(i32 %i.ak, !7519, !DIExpression(), !7813)
    #dbg_value(i32 %i.ak, !7814, !DIExpression(), !7818)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7851
    #dbg_value(ptr %i.m, !7817, !DIExpression(), !7818)
    #dbg_value(ptr %i.m, !6700, !DIExpression(), !7852)
    #dbg_value(ptr %i.m, !6715, !DIExpression(), !7854)
    #dbg_value(i32 %i.ak, !6707, !DIExpression(), !7852)
    #dbg_value(i64 4, !6723, !DIExpression(), !7856)
    #dbg_value(i64 %i.ah, !6708, !DIExpression(), !7859)
    #dbg_value(i64 %i.ah, !6734, !DIExpression(), !7860)
    #dbg_value(ptr %i.m, !6731, !DIExpression(), !7862)
  %i.al = load i64, ptr %i.m, align 16, !dbg !7863, !range !1927, !alias.scope !7864, !noundef !65
  %i.am = icmp eq i64 %.sroa.8.0299, %i.al, !dbg !7867
  br i1 %i.am, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7867

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #23, !dbg !7868
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7869

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.i, %bb.j
  %i.an = load ptr, ptr %i.n, align 8, !dbg !7870, !alias.scope !7864, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.an, !6739, !DIExpression(), !7860)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.8.0299, !dbg !7874
    #dbg_value(ptr %i.ao, !6710, !DIExpression(), !7875)
    #dbg_value(ptr %i.ao, !6773, !DIExpression(), !7876)
    #dbg_value(i32 %i.ak, !6778, !DIExpression(), !7876)
  store i32 %i.ak, ptr %i.ao, align 4, !dbg !7878
  store i64 %i.aa, ptr %i.l, align 16, !dbg !7879, !alias.scope !7864
  %i.ap = load ptr, ptr %i.o, align 8, !dbg !7880, !nonnull !65, !align !6784, !noundef !65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 9, !dbg !7880
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !7880, !range !3847, !noundef !65
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !7880
  br i1 %i.as, label %bb.l, label %bb.k, !dbg !7880

bb.k:                                             ; preds = %bb.l, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  %i.at = load i32, ptr %i.p, align 8, !dbg !7881, !noundef !65 ; 2 uses
    #dbg_value(i32 %i.at, !7532, !DIExpression(), !7882)
    #dbg_value(i8 0, !7534, !DIExpression(), !7883)
    #dbg_value(ptr %.val.i, !7775, !DIExpression(), !7884)
    #dbg_value(ptr %.val.i, !7801, !DIExpression(), !7802)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i, !dbg !7885
    #dbg_value(ptr %.val.i, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
    #dbg_value(ptr %i.au, !7536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7886)
    #dbg_value(i64 0, !7536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7886)
    #dbg_value(i8 poison, !7534, !DIExpression(), !7883)
    #dbg_value(ptr undef, !6282, !DIExpression(), !7597)
    #dbg_value(ptr undef, !6233, !DIExpression(), !7594)
    #dbg_value(i64 1, !6791, !DIExpression(), !7887)
    #dbg_value(ptr %.val.i, !6250, !DIExpression(), !7889)
    #dbg_value(ptr %.val.i, !6797, !DIExpression(), !7887)
    #dbg_value(ptr %i.au, !6252, !DIExpression(), !7890)
    #dbg_value(ptr poison, !6802, !DIExpression(), !7891)
    #dbg_value(ptr poison, !6808, !DIExpression(), !7893)
  %i.av = icmp samesign eq i64 %.val1.i, 0, !dbg !7894
  br i1 %i.av, label %._crit_edge, label %.lr.ph298, !dbg !7895

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  tail call void @_RNvMs1_NtNtCsl4b0cIVMtRE_12aho_corasick4util9prefilterNtB5_7Builder3add(ptr noalias nofree noundef nonnull align 16 dereferenceable(480) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !7896
  br label %bb.k, !dbg !7897

.lr.ph298:                                        ; preds = %bb.k, %bb.at
  %.sroa.046.0297 = phi i32 [ %.sroa.046.1, %bb.at ], [ %i.at, %bb.k ] ; 4 uses
  %.sroa.056.0296 = phi i1 [ %.sroa.056.1, %bb.at ], [ false, %bb.k ]
  %.sroa.9.0295 = phi i64 [ %i.ax, %bb.at ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0214.0294 = phi ptr [ %i.aw, %bb.at ], [ %.val.i, %bb.k ] ; 2 uses
    #dbg_value(i32 %.sroa.046.0297, !7532, !DIExpression(), !7882)
    #dbg_value(i64 %.sroa.9.0295, !7536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7886)
    #dbg_value(ptr %.sroa.0214.0294, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0214.0294, i64 1, !dbg !7898 ; 2 uses
    #dbg_value(ptr %i.aw, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
    #dbg_value(ptr %.sroa.0214.0294, !6283, !DIExpression(), !7899)
    #dbg_value(i64 %.sroa.9.0295, !6289, !DIExpression(), !7900)
  %i.ax = add nuw i64 %.sroa.9.0295, 1, !dbg !7901
    #dbg_value(i64 %i.ax, !7536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7886)
    #dbg_value(ptr %i.aw, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
    #dbg_value(i64 %.sroa.9.0295, !7538, !DIExpression(), !7902)
  %i.ay = load i8, ptr %.sroa.0214.0294, align 1, !dbg !7903, !noundef !65 ; 18 uses
    #dbg_value(i8 %i.ay, !7540, !DIExpression(), !7902)
    #dbg_value(i8 %i.ay, !7904, !DIExpression(), !7907)
    #dbg_value(i8 %i.ay, !7904, !DIExpression(), !7909)
  br i1 %.sroa.056.0296, label %bb.p, label %bb.o, !dbg !7911

._crit_edge:                                      ; preds = %bb.at, %bb.k
  %.sroa.046.0.lcssa = phi i32 [ %i.at, %bb.k ], [ %.sroa.046.1, %bb.at ], !dbg !7813
    #dbg_value(i64 poison, !7536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7886)
    #dbg_value(ptr poison, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7886)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7663
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA9add_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0.lcssa, i32 noundef %i.ab), !dbg !7912
  %i.az = load i32, ptr %i.a, align 8, !dbg !7913, !range !2139, !noundef !65
  %.not193 = icmp eq i32 %i.az, -1, !dbg !7913
  br i1 %.not193, label %bb.n, label %bb.m, !dbg !7914

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !7915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7916
  br label %bb.au, !dbg !7917

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7916
  br label %.backedge, !dbg !7919

.backedge:                                        ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7920
    #dbg_value(ptr %i.z, !7501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
    #dbg_value(i64 %i.aa, !7501, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7731)
    #dbg_value(ptr undef, !7622, !DIExpression(), !7632)
    #dbg_value(ptr undef, !3659, !DIExpression(), !7598)
    #dbg_value(i64 1, !3686, !DIExpression(), !7732)
    #dbg_value(ptr %i.z, !3678, !DIExpression(), !7734)
    #dbg_value(ptr %i.z, !3693, !DIExpression(), !7732)
    #dbg_value(ptr %i.g, !3680, !DIExpression(), !7735)
    #dbg_value(ptr poison, !3698, !DIExpression(), !7736)
    #dbg_value(ptr poison, !3705, !DIExpression(), !7738)
  %i.ba = icmp eq ptr %i.z, %i.g, !dbg !7739
  br i1 %i.ba, label %._crit_edge303, label %bb.b, !dbg !7740

bb.o:                                             ; preds = %.lr.ph298
    #dbg_value(ptr %1, !7921, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7925)
    #dbg_value(ptr %1, !7927, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7931)
    #dbg_value(ptr %1, !7933, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7936)
    #dbg_value(ptr %1, !7938, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7941)
    #dbg_value(ptr %1, !7943, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !7946)
    #dbg_value(i32 %.sroa.046.0297, !7924, !DIExpression(), !7948)
    #dbg_value(ptr poison, !7949, !DIExpression(), !7952)
    #dbg_value(ptr poison, !7678, !DIExpression(), !7954)
  %i.bb = zext i32 %.sroa.046.0297 to i64, !dbg !7956 ; 3 uses
    #dbg_value(i64 %i.bb, !7930, !DIExpression(), !7957)
    #dbg_value(i64 %i.bb, !7958, !DIExpression(), !7962)
    #dbg_value(i64 %i.bb, !7964, !DIExpression(), !7968)
  %i.bc = load i64, ptr %i.q, align 16, !dbg !7970, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !7961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7962)
    #dbg_value(ptr poison, !7967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7968)
    #dbg_value(i64 %i.bc, !7961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7962)
    #dbg_value(i64 %i.bc, !7967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7968)
  %i.bd = icmp ugt i64 %i.bc, %i.bb, !dbg !7971
  br i1 %i.bd, label %bb.q, label %bb.r, !dbg !7971

bb.p:                                             ; preds = %.lr.ph298
    #dbg_value(i8 1, !7534, !DIExpression(), !7883)
  %i.be = load ptr, ptr %i.o, align 8, !dbg !7972, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !7973, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !7976)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !7978
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !7978, !range !6942, !noundef !65
  %i.bh = icmp eq i8 %i.bg, 1, !dbg !7979
  br i1 %i.bh, label %.backedge, label %bb.s, !dbg !7972

bb.q:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.r, align 8, !dbg !7980, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.bi, !7961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7962)
    #dbg_value(ptr %i.bi, !7967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7968)
  %i.bj = getelementptr inbounds nuw [20 x i8], ptr %i.bi, i64 %i.bb, !dbg !7987
    #dbg_value(ptr %i.bj, !7707, !DIExpression(), !7988)
    #dbg_value(ptr %i.bj, !7702, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7989)
    #dbg_value(ptr %i.bj, !7712, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7990)
    #dbg_value(ptr %i.bj, !7991, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7995)
    #dbg_value(ptr poison, !7994, !DIExpression(), !7995)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !7995
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !7995, !noundef !65
  %i.bm = icmp ne i32 %i.bl, 0, !dbg !7995        ; 2 uses
    #dbg_value(i1 %i.bm, !7534, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7883)
  %i.bn = load ptr, ptr %i.o, align 8, !dbg !7972, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !7973, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !7976)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !7978
  %i.bp = load i8, ptr %i.bo, align 8, !dbg !7978, !range !6942, !noundef !65
  %i.bq = icmp eq i8 %i.bp, 1, !dbg !7979
  %or.cond = and i1 %i.bm, %i.bq, !dbg !7972
  br i1 %or.cond, label %.backedge, label %bb.s, !dbg !7972

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28, !dbg !7971
  unreachable, !dbg !7971

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.br = phi ptr [ %i.be, %bb.p ], [ %i.bn, %bb.q ]
  %.sroa.056.1 = phi i1 [ true, %bb.p ], [ %i.bm, %bb.q ], !dbg !7996
    #dbg_value(i8 poison, !7534, !DIExpression(), !7883)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !7997)
    #dbg_value(i8 %i.ay, !6986, !DIExpression(), !7997)
    #dbg_value(i8 %i.ay, !6987, !DIExpression(), !7997)
    #dbg_value(i8 %i.ay, !6990, !DIExpression(), !7999)
  %.not.i205 = icmp eq i8 %i.ay, 0, !dbg !8001
  br i1 %.not.i205, label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit, label %bb.t, !dbg !8001
end_hunk_1
begin_hunk_2_@_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieRSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralRB1n_ECs9GYDdpCSJ4S_14regex_automata:bb.a
  br label %bb.c, !dbg !7757
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs8_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB6_8Compiler10build_trieRSRShRB1n_ECs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(960) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8238 {
bb.a:
    #dbg_declare(ptr poison, !8309, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !8324)
    #dbg_declare(ptr poison, !8327, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !8334)
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !8313, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !8336)
    #dbg_declare(ptr poison, !8291, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !8337)
  %i.d = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !6233, !DIExpression(), !8338)
    #dbg_value(ptr poison, !6282, !DIExpression(), !8341)
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr poison, !4134, !DIExpression(), !8342)
    #dbg_value(ptr poison, !8366, !DIExpression(), !8376)
    #dbg_value(ptr %1, !8243, !DIExpression(), !8377)
    #dbg_value(ptr %2, !8244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8377)
    #dbg_value(i64 %3, !8244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8377)
    #dbg_declare(ptr %i.d, !8331, !DIExpression(), !8378)
    #dbg_declare(ptr %i.c, !8379, !DIExpression(), !8394)
    #dbg_declare(ptr poison, !8295, !DIExpression(), !8396)
    #dbg_declare(ptr poison, !8313, !DIExpression(), !8397)
    #dbg_declare(ptr %i.b, !8379, !DIExpression(), !8400)
    #dbg_declare(ptr poison, !8301, !DIExpression(), !8402)
    #dbg_declare(ptr poison, !8313, !DIExpression(), !8403)
    #dbg_declare(ptr %i.a, !8379, !DIExpression(), !8406)
    #dbg_declare(ptr poison, !8305, !DIExpression(), !8408)
    #dbg_declare(ptr poison, !8313, !DIExpression(), !8409)
    #dbg_declare(ptr poison, !8384, !DIExpression(), !8412)
    #dbg_declare(ptr poison, !8318, !DIExpression(), !8413)
    #dbg_declare(ptr poison, !8388, !DIExpression(), !8414)
    #dbg_declare(ptr poison, !8320, !DIExpression(), !8415)
    #dbg_declare(ptr poison, !8392, !DIExpression(), !8416)
    #dbg_declare(ptr poison, !8322, !DIExpression(), !8417)
    #dbg_value(i8 0, !8273, !DIExpression(), !8418)
    #dbg_value(ptr poison, !8419, !DIExpression(), !8423)
    #dbg_value(ptr poison, !8419, !DIExpression(), !8437)
    #dbg_value(ptr poison, !8443, !DIExpression(), !8447)
    #dbg_value(ptr poison, !8453, !DIExpression(), !8457)
    #dbg_value(ptr poison, !8443, !DIExpression(), !8459)
    #dbg_value(ptr poison, !8453, !DIExpression(), !8461)
    #dbg_value(ptr %2, !4241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8464)
    #dbg_value(ptr %2, !4237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8466)
    #dbg_value(ptr %2, !4229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8468)
    #dbg_value(i64 %3, !4241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8464)
    #dbg_value(i64 %3, !4237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8466)
    #dbg_value(i64 %3, !4229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8468)
    #dbg_value(i64 %3, !4230, !DIExpression(), !8470)
    #dbg_value(i64 %3, !4223, !DIExpression(), !8471)
    #dbg_value(ptr %2, !4231, !DIExpression(), !8473)
    #dbg_value(ptr %2, !4222, !DIExpression(), !8471)
  %.idx = shl nuw nsw i64 %3, 4, !dbg !8474
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !8474
    #dbg_value(ptr %2, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
    #dbg_value(ptr %i.g, !8245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8475)
    #dbg_value(i64 0, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
    #dbg_value(ptr undef, !8366, !DIExpression(), !8376)
    #dbg_value(ptr undef, !4134, !DIExpression(), !8342)
    #dbg_value(i64 1, !4159, !DIExpression(), !8476)
    #dbg_value(ptr %2, !4151, !DIExpression(), !8478)
    #dbg_value(ptr %2, !4165, !DIExpression(), !8476)
    #dbg_value(ptr %i.g, !4153, !DIExpression(), !8479)
    #dbg_value(ptr poison, !4170, !DIExpression(), !8480)
    #dbg_value(ptr poison, !4176, !DIExpression(), !8482)
  %i.h = icmp eq i64 %3, 0, !dbg !8483
  br i1 %i.h, label %._crit_edge303, label %.lr.ph302, !dbg !8484

.lr.ph302:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.b, !dbg !8484

bb.b:                                             ; preds = %.lr.ph302, %.backedge
  %.sroa.0212.0300 = phi ptr [ %2, %.lr.ph302 ], [ %i.z, %.backedge ] ; 3 uses
  %.sroa.8.0299 = phi i64 [ 0, %.lr.ph302 ], [ %i.aa, %.backedge ] ; 7 uses
    #dbg_value(ptr %.sroa.0212.0300, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
    #dbg_value(i64 %.sroa.8.0299, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0212.0300, i64 16, !dbg !8485 ; 2 uses
    #dbg_value(ptr %i.z, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
    #dbg_value(ptr %.sroa.0212.0300, !8367, !DIExpression(), !8486)
    #dbg_value(i64 %.sroa.8.0299, !8373, !DIExpression(), !8487)
  %i.aa = add i64 %.sroa.8.0299, 1, !dbg !8488    ; 2 uses
    #dbg_value(i64 %i.aa, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !8489
    #dbg_value(i64 %.sroa.8.0299, !8252, !DIExpression(), !8490)
    #dbg_value(i64 %.sroa.8.0299, !8435, !DIExpression(), !8491)
    #dbg_value(i64 %.sroa.8.0299, !8431, !DIExpression(), !8492)
    #dbg_value(i64 %.sroa.8.0299, !8427, !DIExpression(), !8493)
    #dbg_value(i64 %.sroa.8.0299, !8494, !DIExpression(), !8497)
  store i64 %.sroa.8.0299, ptr %i.f, align 8, !dbg !8489
    #dbg_value(ptr %.sroa.0212.0300, !8254, !DIExpression(), !8490)
  %exitcond = icmp eq i64 %.sroa.8.0299, 2147483647, !dbg !8499
  br i1 %exitcond, label %bb.e, label %bb.d, !dbg !8499

._crit_edge303:                                   ; preds = %.backedge, %bb.a
    #dbg_value(ptr poison, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
    #dbg_value(i64 poison, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
  store i32 -1, ptr %0, align 8, !dbg !8500
  br label %bb.c, !dbg !8501

bb.c:                                             ; preds = %bb.au, %._crit_edge303
  ret void, !dbg !8502

bb.d:                                             ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %.sroa.8.0299 to i32, !dbg !8503 ; 2 uses
    #dbg_value(i32 %i.ab, !8255, !DIExpression(), !8504)
    #dbg_value(ptr undef, !8254, !DIExpression(DW_OP_deref), !8490)
    #dbg_value(ptr poison, !4330, !DIExpression(), !8505)
  %.val.i = load ptr, ptr %.sroa.0212.0300, align 8, !dbg !8507, !nonnull !65, !noundef !65 ; 3 uses
  %i.ac = getelementptr i8, ptr %.sroa.0212.0300, i64 8, !dbg !8507
  %.val1.i = load i64, ptr %i.ac, align 8, !dbg !8507, !noundef !65 ; 8 uses
    #dbg_value(ptr %.val.i, !8261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8508)
    #dbg_value(ptr %.val.i, !8509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8512)
    #dbg_value(ptr %.val.i, !8514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8523)
    #dbg_value(i64 %.val1.i, !8261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8508)
    #dbg_value(i64 %.val1.i, !8509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8512)
    #dbg_value(i64 %.val1.i, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8523)
    #dbg_value(i64 %.val1.i, !8431, !DIExpression(), !8525)
    #dbg_value(i64 %.val1.i, !8427, !DIExpression(), !8526)
    #dbg_value(i64 %.val1.i, !8494, !DIExpression(), !8527)
    #dbg_value(i64 %.val1.i, !8529, !DIExpression(), !8533)
    #dbg_value(i64 %.val1.i, !8535, !DIExpression(), !8539)
    #dbg_value(i64 %.val1.i, !8517, !DIExpression(), !8541)
    #dbg_value(i64 %.val1.i, !8542, !DIExpression(), !8546)
  %i.ad = icmp ugt i64 %.val1.i, 2147483646, !dbg !8548
  br i1 %i.ad, label %bb.g, label %bb.f, !dbg !8548

bb.e:                                             ; preds = %bb.b
    #dbg_value(i32 1, !8257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8549)
    #dbg_value(i32 1, !8313, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8550)
    #dbg_value(i32 undef, !8257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8549)
    #dbg_value(i32 undef, !8313, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8550)
    #dbg_value(i64 2147483646, !8313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8550)
    #dbg_value(i64 2147483646, !8257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8549)
    #dbg_value(i64 2147483647, !8313, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8550)
    #dbg_value(i64 2147483647, !8257, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8549)
    #dbg_value(i32 1, !8314, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8553)
    #dbg_value(i32 undef, !8314, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8553)
    #dbg_value(i64 2147483646, !8314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8553)
    #dbg_value(i64 2147483647, !8314, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8553)
  store i32 1, ptr %0, align 8, !dbg !8554
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8554
  store i64 2147483646, ptr %.sroa.598.0..sroa_idx, align 8, !dbg !8554
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8554
  store i64 2147483647, ptr %.sroa.699.0..sroa_idx, align 8, !dbg !8554
  br label %bb.au, !dbg !8555

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %.val1.i, !8263, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !8557)
    #dbg_value(i64 %.val1.i, !8558, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !8562)
  %i.ae = load i64, ptr %i.j, align 16, !dbg !8564, !noundef !65
    #dbg_value(i64 %i.ae, !8532, !DIExpression(), !8533)
    #dbg_value(ptr undef, !6657, !DIExpression(DW_OP_deref), !8565)
    #dbg_value(ptr undef, !6661, !DIExpression(DW_OP_deref), !8565)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.ae), !dbg !8567
  store i64 %..i, ptr %i.j, align 16, !dbg !8568
  %i.af = load i64, ptr %i.k, align 8, !dbg !8569, !noundef !65
    #dbg_value(i64 %i.af, !8538, !DIExpression(), !8539)
    #dbg_value(ptr undef, !6669, !DIExpression(DW_OP_deref), !8570)
    #dbg_value(ptr undef, !6672, !DIExpression(DW_OP_deref), !8570)
  %..i202 = tail call noundef i64 @llvm.umax.i64(i64 %.val1.i, i64 %i.af), !dbg !8572
  store i64 %..i202, ptr %i.k, align 8, !dbg !8573
    #dbg_value(ptr %i.f, !8269, !DIExpression(), !8574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !8575
    #dbg_value(ptr %1, !8576, !DIExpression(DW_OP_plus_uconst, 608, DW_OP_stack_value), !8579)
  %i.ag = load i64, ptr %i.l, align 16, !dbg !8581, !noundef !65 ; 3 uses
  store i64 %i.ag, ptr %i.e, align 8, !dbg !8581
  %i.ah = icmp ult i64 %i.ag, 2305843009213693952, !dbg !8582
  tail call void @llvm.assume(i1 %i.ah), !dbg !8583
    #dbg_value(ptr %i.e, !8272, !DIExpression(), !8574)
  %i.ai = icmp eq i64 %.sroa.8.0299, %i.ag, !dbg !8584
  br i1 %i.ai, label %bb.i, label %bb.h, !dbg !8584, !prof !2202

bb.g:                                             ; preds = %bb.d
    #dbg_value(i32 2, !8265, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8585)
    #dbg_value(i32 2, !8313, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8586)
    #dbg_value(i32 %i.ab, !8265, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8585)
    #dbg_value(i32 %i.ab, !8313, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8586)
    #dbg_value(i64 %.val1.i, !8313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8586)
    #dbg_value(i64 %.val1.i, !8265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8585)
    #dbg_value(i64 undef, !8313, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8586)
    #dbg_value(i64 undef, !8265, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8585)
    #dbg_value(i32 2, !8316, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8589)
    #dbg_value(i32 %i.ab, !8316, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8589)
    #dbg_value(i64 %.val1.i, !8316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8589)
    #dbg_value(i64 undef, !8316, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8589)
  store i32 2, ptr %0, align 8, !dbg !8590
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !8590
  store i32 %i.ab, ptr %.sroa.4116.0..sroa_idx, align 4, !dbg !8590
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8590
  store i64 %.val1.i, ptr %.sroa.5117.0..sroa_idx, align 8, !dbg !8590
  br label %bb.au, !dbg !8591

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %i.f, !8252, !DIExpression(DW_OP_deref), !8490)
    #dbg_value(ptr %i.f, !8435, !DIExpression(DW_OP_deref), !8491)
    #dbg_value(ptr %i.f, !8431, !DIExpression(DW_OP_deref), !8492)
    #dbg_value(ptr %i.f, !8427, !DIExpression(DW_OP_deref), !8493)
    #dbg_value(ptr %i.f, !8494, !DIExpression(DW_OP_deref), !8497)
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef nonnull @14, ptr nonnull inttoptr (i64 95 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !dbg !8593
  unreachable, !dbg !8593

bb.i:                                             ; preds = %bb.f
  %i.aj = trunc nuw nsw i64 %.val1.i to i32, !dbg !8594
    #dbg_value(i32 %i.aj, !8263, !DIExpression(), !8557)
    #dbg_value(i32 %i.aj, !8558, !DIExpression(), !8562)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8595
    #dbg_value(ptr %i.m, !8561, !DIExpression(), !8562)
    #dbg_value(ptr %i.m, !6700, !DIExpression(), !8596)
    #dbg_value(ptr %i.m, !6715, !DIExpression(), !8598)
    #dbg_value(i32 %i.aj, !6707, !DIExpression(), !8596)
    #dbg_value(i64 4, !6723, !DIExpression(), !8600)
    #dbg_value(i64 %i.ag, !6708, !DIExpression(), !8603)
    #dbg_value(i64 %i.ag, !6734, !DIExpression(), !8604)
    #dbg_value(ptr %i.m, !6731, !DIExpression(), !8606)
  %i.ak = load i64, ptr %i.m, align 16, !dbg !8607, !range !1927, !alias.scope !8608, !noundef !65
  %i.al = icmp eq i64 %.sroa.8.0299, %i.ak, !dbg !8611
  br i1 %i.al, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8611

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #23, !dbg !8612
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8613

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.i, %bb.j
  %i.am = load ptr, ptr %i.n, align 8, !dbg !8614, !alias.scope !8608, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.am, !6739, !DIExpression(), !8604)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.8.0299, !dbg !8618
    #dbg_value(ptr %i.an, !6710, !DIExpression(), !8619)
    #dbg_value(ptr %i.an, !6773, !DIExpression(), !8620)
    #dbg_value(i32 %i.aj, !6778, !DIExpression(), !8620)
  store i32 %i.aj, ptr %i.an, align 4, !dbg !8622
  store i64 %i.aa, ptr %i.l, align 16, !dbg !8623, !alias.scope !8608
  %i.ao = load ptr, ptr %i.o, align 8, !dbg !8624, !nonnull !65, !align !6784, !noundef !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !8624
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !8624, !range !3847, !noundef !65
  %i.ar = trunc nuw i8 %i.aq to i1, !dbg !8624
  br i1 %i.ar, label %bb.l, label %bb.k, !dbg !8624

bb.k:                                             ; preds = %bb.l, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  %i.as = load i32, ptr %i.p, align 8, !dbg !8625, !noundef !65 ; 2 uses
    #dbg_value(i32 %i.as, !8276, !DIExpression(), !8626)
    #dbg_value(i8 0, !8278, !DIExpression(), !8627)
    #dbg_value(ptr %.val.i, !8519, !DIExpression(), !8628)
    #dbg_value(ptr %.val.i, !8545, !DIExpression(), !8546)
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i, !dbg !8629
    #dbg_value(ptr %.val.i, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
    #dbg_value(ptr %i.at, !8280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8630)
    #dbg_value(i64 0, !8280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8630)
    #dbg_value(i8 poison, !8278, !DIExpression(), !8627)
    #dbg_value(ptr undef, !6282, !DIExpression(), !8341)
    #dbg_value(ptr undef, !6233, !DIExpression(), !8338)
    #dbg_value(i64 1, !6791, !DIExpression(), !8631)
    #dbg_value(ptr %.val.i, !6250, !DIExpression(), !8633)
    #dbg_value(ptr %.val.i, !6797, !DIExpression(), !8631)
    #dbg_value(ptr %i.at, !6252, !DIExpression(), !8634)
    #dbg_value(ptr poison, !6802, !DIExpression(), !8635)
    #dbg_value(ptr poison, !6808, !DIExpression(), !8637)
  %i.au = icmp samesign eq i64 %.val1.i, 0, !dbg !8638
  br i1 %i.au, label %._crit_edge, label %.lr.ph298, !dbg !8639

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives10SmallIndexE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit
  tail call void @_RNvMs1_NtNtCsl4b0cIVMtRE_12aho_corasick4util9prefilterNtB5_7Builder3add(ptr noalias nofree noundef nonnull align 16 dereferenceable(480) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !8640
  br label %bb.k, !dbg !8641

.lr.ph298:                                        ; preds = %bb.k, %bb.at
  %.sroa.046.0297 = phi i32 [ %.sroa.046.1, %bb.at ], [ %i.as, %bb.k ] ; 4 uses
  %.sroa.056.0296 = phi i1 [ %.sroa.056.1, %bb.at ], [ false, %bb.k ]
  %.sroa.9.0295 = phi i64 [ %i.aw, %bb.at ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0214.0294 = phi ptr [ %i.av, %bb.at ], [ %.val.i, %bb.k ] ; 2 uses
    #dbg_value(i32 %.sroa.046.0297, !8276, !DIExpression(), !8626)
    #dbg_value(i64 %.sroa.9.0295, !8280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8630)
    #dbg_value(ptr %.sroa.0214.0294, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0214.0294, i64 1, !dbg !8642 ; 2 uses
    #dbg_value(ptr %i.av, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
    #dbg_value(ptr %.sroa.0214.0294, !6283, !DIExpression(), !8643)
    #dbg_value(i64 %.sroa.9.0295, !6289, !DIExpression(), !8644)
  %i.aw = add nuw i64 %.sroa.9.0295, 1, !dbg !8645
    #dbg_value(i64 %i.aw, !8280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8630)
    #dbg_value(ptr %i.av, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
    #dbg_value(i64 %.sroa.9.0295, !8282, !DIExpression(), !8646)
  %i.ax = load i8, ptr %.sroa.0214.0294, align 1, !dbg !8647, !noundef !65 ; 18 uses
    #dbg_value(i8 %i.ax, !8284, !DIExpression(), !8646)
    #dbg_value(i8 %i.ax, !8648, !DIExpression(), !8651)
    #dbg_value(i8 %i.ax, !8648, !DIExpression(), !8653)
  br i1 %.sroa.056.0296, label %bb.p, label %bb.o, !dbg !8655

._crit_edge:                                      ; preds = %bb.at, %bb.k
  %.sroa.046.0.lcssa = phi i32 [ %i.as, %bb.k ], [ %.sroa.046.1, %bb.at ], !dbg !8557
    #dbg_value(i64 poison, !8280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8630)
    #dbg_value(ptr poison, !8280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8407
  call void @_RNvMs_NtNtCsl4b0cIVMtRE_12aho_corasick3nfa13noncontiguousNtB4_3NFA9add_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %i.i, i32 noundef %.sroa.046.0.lcssa, i32 noundef %i.ab), !dbg !8656
  %i.ay = load i32, ptr %i.a, align 8, !dbg !8657, !range !2139, !noundef !65
  %.not193 = icmp eq i32 %i.ay, -1, !dbg !8657
  br i1 %.not193, label %bb.n, label %bb.m, !dbg !8658

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !8659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8660
  br label %bb.au, !dbg !8661

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8660
  br label %.backedge, !dbg !8663

.backedge:                                        ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !8664
    #dbg_value(ptr %i.z, !8245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8475)
    #dbg_value(i64 %i.aa, !8245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8475)
    #dbg_value(ptr undef, !8366, !DIExpression(), !8376)
    #dbg_value(ptr undef, !4134, !DIExpression(), !8342)
    #dbg_value(i64 1, !4159, !DIExpression(), !8476)
    #dbg_value(ptr %i.z, !4151, !DIExpression(), !8478)
    #dbg_value(ptr %i.z, !4165, !DIExpression(), !8476)
    #dbg_value(ptr %i.g, !4153, !DIExpression(), !8479)
    #dbg_value(ptr poison, !4170, !DIExpression(), !8480)
    #dbg_value(ptr poison, !4176, !DIExpression(), !8482)
  %i.az = icmp eq ptr %i.z, %i.g, !dbg !8483
  br i1 %i.az, label %._crit_edge303, label %bb.b, !dbg !8484

bb.o:                                             ; preds = %.lr.ph298
    #dbg_value(ptr %1, !8665, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8669)
    #dbg_value(ptr %1, !8671, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8675)
    #dbg_value(ptr %1, !8677, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8680)
    #dbg_value(ptr %1, !8682, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8685)
    #dbg_value(ptr %1, !8687, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !8690)
    #dbg_value(i32 %.sroa.046.0297, !8668, !DIExpression(), !8692)
    #dbg_value(ptr poison, !8693, !DIExpression(), !8696)
    #dbg_value(ptr poison, !8422, !DIExpression(), !8698)
  %i.ba = zext i32 %.sroa.046.0297 to i64, !dbg !8700 ; 3 uses
    #dbg_value(i64 %i.ba, !8674, !DIExpression(), !8701)
    #dbg_value(i64 %i.ba, !8702, !DIExpression(), !8706)
    #dbg_value(i64 %i.ba, !8708, !DIExpression(), !8712)
  %i.bb = load i64, ptr %i.q, align 16, !dbg !8714, !noundef !65 ; 2 uses
    #dbg_value(ptr poison, !8705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8706)
    #dbg_value(ptr poison, !8711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8712)
    #dbg_value(i64 %i.bb, !8705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8706)
    #dbg_value(i64 %i.bb, !8711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8712)
  %i.bc = icmp ugt i64 %i.bb, %i.ba, !dbg !8715
  br i1 %i.bc, label %bb.q, label %bb.r, !dbg !8715

bb.p:                                             ; preds = %.lr.ph298
    #dbg_value(i8 1, !8278, !DIExpression(), !8627)
  %i.bd = load ptr, ptr %i.o, align 8, !dbg !8716, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !8717, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !8720)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !8722
  %i.bf = load i8, ptr %i.be, align 8, !dbg !8722, !range !6942, !noundef !65
  %i.bg = icmp eq i8 %i.bf, 1, !dbg !8723
  br i1 %i.bg, label %.backedge, label %bb.s, !dbg !8716

bb.q:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.r, align 8, !dbg !8724, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.bh, !8705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8706)
    #dbg_value(ptr %i.bh, !8711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8712)
  %i.bi = getelementptr inbounds nuw [20 x i8], ptr %i.bh, i64 %i.ba, !dbg !8731
    #dbg_value(ptr %i.bi, !8451, !DIExpression(), !8732)
    #dbg_value(ptr %i.bi, !8446, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8733)
    #dbg_value(ptr %i.bi, !8456, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8734)
    #dbg_value(ptr %i.bi, !8735, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8739)
    #dbg_value(ptr poison, !8738, !DIExpression(), !8739)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !8739
  %i.bk = load i32, ptr %i.bj, align 4, !dbg !8739, !noundef !65
  %i.bl = icmp ne i32 %i.bk, 0, !dbg !8739        ; 2 uses
    #dbg_value(i1 %i.bl, !8278, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8627)
  %i.bm = load ptr, ptr %i.o, align 8, !dbg !8716, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
    #dbg_value(ptr undef, !8717, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !8720)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !8722
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !8722, !range !6942, !noundef !65
  %i.bp = icmp eq i8 %i.bo, 1, !dbg !8723
  %or.cond = and i1 %i.bl, %i.bp, !dbg !8716
  br i1 %or.cond, label %.backedge, label %bb.s, !dbg !8716

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28, !dbg !8715
  unreachable, !dbg !8715

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bq = phi ptr [ %i.bd, %bb.p ], [ %i.bm, %bb.q ]
  %.sroa.056.1 = phi i1 [ true, %bb.p ], [ %i.bl, %bb.q ], !dbg !8740
    #dbg_value(i8 poison, !8278, !DIExpression(), !8627)
    #dbg_value(ptr %i.s, !6978, !DIExpression(), !8741)
    #dbg_value(i8 %i.ax, !6986, !DIExpression(), !8741)
    #dbg_value(i8 %i.ax, !6987, !DIExpression(), !8741)
    #dbg_value(i8 %i.ax, !6990, !DIExpression(), !8743)
  %.not.i205 = icmp eq i8 %i.ax, 0, !dbg !8745
  br i1 %.not.i205, label %_RNvMs4_NtNtCsl4b0cIVMtRE_12aho_corasick4util8alphabetNtB5_12ByteClassSet9set_range.exit, label %bb.t, !dbg !8745
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter12aho_corasickNtB4_11AhoCorasickNtB6_10PrefilterI12memory_usage:bb.a

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter12aho_corasickNtB4_11AhoCorasickNtB6_10PrefilterI4find(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12430 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !12466, !DIExpression(), !12491)
    #dbg_value(ptr %1, !12451, !DIExpression(), !12501)
    #dbg_value(ptr %2, !12452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12501)
    #dbg_value(i64 %3, !12452, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12501)
    #dbg_value(i64 %4, !12453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12501)
    #dbg_value(i64 %5, !12453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12501)
    #dbg_declare(ptr poison, !12502, !DIExpression(), !12533)
    #dbg_value(ptr %2, !12498, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12535)
    #dbg_value(i64 %3, !12498, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12535)
    #dbg_value(i64 0, !12498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(i64 %3, !12498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(i8 0, !12498, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12535)
    #dbg_value(i8 0, !12498, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12535)
    #dbg_value(i64 %4, !12499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(i64 %5, !12499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(ptr undef, !12466, !DIExpression(), !12491)
    #dbg_value(i64 %4, !12475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12491)
    #dbg_value(i64 %5, !12475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12491)
    #dbg_declare(ptr %i.e, !12476, !DIExpression(), !12536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12537, !noalias !12538
  store i64 %4, ptr %i.e, align 8, !dbg !12541, !noalias !12538
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12541
  store i64 %5, ptr %i.g, align 8, !dbg !12541, !noalias !12538
  %.not.i = icmp ugt i64 %5, %3, !dbg !12542
  %i.h = add i64 %5, 1
  %.not16.i = icmp ugt i64 %4, %i.h
  %or.cond.i = or i1 %.not.i, %.not16.i, !dbg !12542
  br i1 %or.cond.i, label %bb.b, label %_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12542, !prof !11606

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.e, !12478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12544, !noalias !12538
  store i64 %3, ptr %i.d, align 8, !dbg !12544, !noalias !12538
    #dbg_value(ptr %i.d, !12478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12545, !noalias !12538
  store ptr %i.e, ptr %i.c, align 8, !dbg !12545, !noalias !12538
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12545
  store ptr @_RNvXs2_NtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !12545, !noalias !12538
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12545
  store ptr %i.d, ptr %i.i, align 8, !dbg !12545, !noalias !12538
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !12545
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !12545, !noalias !12538
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !dbg !12546, !noalias !12538
  unreachable, !dbg !12546

_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.a
    #dbg_value(i64 %4, !12498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(i64 %5, !12498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12535)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12547, !noalias !12538
    #dbg_value(i64 %4, !12454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12548)
    #dbg_value(i64 %4, !12549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12558)
    #dbg_value(i64 %4, !12560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12601)
    #dbg_value(i64 %4, !12603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12612)
    #dbg_value(i64 %4, !12614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12621)
    #dbg_value(i64 %5, !12454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12548)
    #dbg_value(i64 %5, !12549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12558)
    #dbg_value(i64 %5, !12560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12601)
    #dbg_value(i64 %5, !12603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12612)
    #dbg_value(i64 %5, !12614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12621)
    #dbg_value(ptr %2, !12454, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12548)
    #dbg_value(ptr %2, !12549, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12558)
    #dbg_value(ptr %2, !12560, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12601)
    #dbg_value(ptr %2, !12603, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12612)
    #dbg_value(ptr %2, !12614, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12621)
    #dbg_value(i64 %3, !12454, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12548)
    #dbg_value(i64 %3, !12549, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12558)
    #dbg_value(i64 %3, !12560, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12601)
    #dbg_value(i64 %3, !12603, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12612)
    #dbg_value(i64 %3, !12614, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12621)
    #dbg_value(i8 0, !12454, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12548)
    #dbg_value(i8 0, !12549, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12558)
    #dbg_value(i8 0, !12560, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12601)
    #dbg_value(i8 0, !12603, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12612)
    #dbg_value(i8 0, !12614, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12621)
    #dbg_value(i8 0, !12454, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12548)
    #dbg_value(i8 0, !12549, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12558)
    #dbg_value(i8 0, !12560, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12601)
    #dbg_value(i8 0, !12603, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12612)
    #dbg_value(i8 0, !12614, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12621)
    #dbg_value(ptr %1, !12557, !DIExpression(), !12558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12623
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12624), !dbg !12627
    #dbg_value(ptr %1, !12581, !DIExpression(), !12601)
    #dbg_declare(ptr %i.b, !12582, !DIExpression(), !12628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12629, !noalias !12630
  store i64 %4, ptr %i.b, align 8, !dbg !12633, !alias.scope !12634, !noalias !12641
  %.sroa.4.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12633
  store i64 %5, ptr %.sroa.4.0..sroa_idx11, align 8, !dbg !12633, !alias.scope !12634, !noalias !12641
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12633
  store ptr %2, ptr %.sroa.513.0..sroa_idx, align 8, !dbg !12633, !alias.scope !12634, !noalias !12641
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !12633
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !12633, !alias.scope !12634, !noalias !12641
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !12633
  store i8 0, ptr %.sroa.714.0..sroa_idx, align 8, !dbg !12633, !alias.scope !12634, !noalias !12641
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33, !dbg !12633
  store i8 0, ptr %.sroa.815.0..sroa_idx, align 1, !dbg !12633, !alias.scope !12634, !noalias !12641
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !12642
  %i.k = load i8, ptr %i.j, align 1, !dbg !12642, !range !6942, !alias.scope !12624, !noalias !12643, !noundef !65
  %i.l = tail call noundef ptr @_RNvNtCsl4b0cIVMtRE_12aho_corasick11ahocorasick28enforce_anchored_consistency(i8 noundef %i.k, i1 noundef zeroext false), !dbg !12644, !noalias !12630 ; 2 uses
    #dbg_value(ptr %i.l, !12645, !DIExpression(), !12683)
  %.not.i8 = icmp eq ptr %i.l, null, !dbg !12685
  br i1 %.not.i8, label %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit, label %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !12686

_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(ptr %i.l, !12584, !DIExpression(), !12687)
    #dbg_value(ptr %i.l, !12688, !DIExpression(), !12697)
    #dbg_value(ptr %i.l, !12693, !DIExpression(), !12700)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12701, !noalias !12630
    #dbg_declare(ptr %i.f, !12702, !DIExpression(), !12713)
    #dbg_value(ptr @60, !12708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12715)
    #dbg_value(i64 45, !12708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12715)
    #dbg_declare(ptr %i.a, !12711, !DIExpression(), !12716)
  br label %bb.c, !dbg !12717

_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(ptr %1, !12718, !DIExpression(), !12727)
    #dbg_value(ptr %1, !12729, !DIExpression(), !12740)
    #dbg_value(ptr %1, !12742, !DIExpression(), !12752)
    #dbg_value(ptr %i.b, !12726, !DIExpression(), !12754)
  %i.m = load ptr, ptr %1, align 8, !dbg !12755, !alias.scope !12624, !noalias !12643, !nonnull !65, !noundef !65
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12755
  %i.o = load ptr, ptr %i.n, align 8, !dbg !12755, !alias.scope !12624, !noalias !12643, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !12762
  %i.q = load i64, ptr %i.p, align 8, !dbg !12762, !range !12763, !invariant.load !65, !noalias !12630
  %i.r = add nsw i64 %i.q, -1, !dbg !12762
  %i.s = and i64 %i.r, -16, !dbg !12762
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s, !dbg !12762
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !12762
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 144, !dbg !12764
  %i.w = load ptr, ptr %i.v, align 8, !dbg !12764, !invariant.load !65, !noalias !12630, !nonnull !65
  call void %i.w(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b) #29, !dbg !12765, !noalias !12766, !inline_history !12767
  %.pr = load i64, ptr %i.f, align 8, !dbg !12768, !alias.scope !12769, !noalias !12772 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12701, !noalias !12630
  call void @llvm.experimental.noalias.scope.decl(metadata !12776), !dbg !12777
  call void @llvm.experimental.noalias.scope.decl(metadata !12769), !dbg !12777
    #dbg_declare(ptr %i.f, !12702, !DIExpression(), !12713)
    #dbg_value(ptr @60, !12708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12715)
    #dbg_value(i64 45, !12708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12715)
    #dbg_declare(ptr %i.a, !12711, !DIExpression(), !12716)
  %i.x = icmp eq i64 %.pr, 2, !dbg !12768
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.x, label %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12717, !prof !12778

_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit._crit_edge: ; preds = %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !12779, !alias.scope !12769, !noalias !12772
  br label %bb.c, !dbg !12717

bb.c:                                             ; preds = %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit._crit_edge, %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit.thread
  %i.y = phi ptr [ %.pre, %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit._crit_edge ], [ %i.l, %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit.thread ], !dbg !12779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12779, !noalias !12780
  store ptr %i.y, ptr %i.a, align 8, !dbg !12779, !noalias !12780
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 45, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #24
          to label %bb.d unwind label %bb.e, !dbg !12781, !noalias !12782

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !12783), !dbg !12786
    #dbg_value(ptr %i.a, !9496, !DIExpression(), !12787)
  %.val.i.i = load ptr, ptr %i.a, align 8, !dbg !12789, !alias.scope !12783, !noalias !12780, !nonnull !65, !noundef !65
    #dbg_value(ptr poison, !9501, !DIExpression(), !12790)
    #dbg_value(ptr poison, !9511, !DIExpression(), !12792)
    #dbg_value(ptr %.val.i.i, !9515, !DIExpression(), !12794)
    #dbg_value(i64 1, !9528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12795)
    #dbg_value(i64 2, !9528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12795)
    #dbg_value(ptr poison, !9535, !DIExpression(), !12796)
    #dbg_value(ptr poison, !9544, !DIExpression(), !12798)
    #dbg_value(ptr %.val.i.i, !9540, !DIExpression(), !12796)
    #dbg_value(ptr %.val.i.i, !9549, !DIExpression(), !12798)
    #dbg_value(ptr %.val.i.i, !9553, !DIExpression(), !12800)
    #dbg_value(ptr %.val.i.i, !9562, !DIExpression(), !12802)
    #dbg_value(i64 1, !9541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12796)
    #dbg_value(i64 1, !9550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12798)
    #dbg_value(i64 1, !9559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12800)
    #dbg_value(i64 1, !9565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12802)
    #dbg_value(i64 2, !9541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12796)
    #dbg_value(i64 2, !9550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12798)
    #dbg_value(i64 2, !9559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12800)
    #dbg_value(i64 2, !9565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12802)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 2, i64 noundef 1) #27, !dbg !12804, !noalias !12805
  resume { ptr, i32 } %i.z, !dbg !12806

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(i64 %.pr, !12530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12807)
    #dbg_value(i64 poison, !12530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12807)
  %i.aa = load <2 x i64>, ptr %.phi.trans.insert, align 8, !dbg !12808, !alias.scope !12782, !noalias !12809
    #dbg_value(i64 poison, !12530, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12807)
    #dbg_value(i64 poison, !12530, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12807)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12810
  %i.ab = trunc nuw i64 %.pr to i1, !dbg !12811
  br i1 %i.ab, label %bb.f, label %bb.g, !dbg !12811

bb.f:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(i64 poison, !12531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12812)
    #dbg_value(i64 poison, !12531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12812)
    #dbg_value(i64 poison, !12531, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12812)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12813
  store <2 x i64> %i.aa, ptr %i.ac, align 8, !dbg !12813
  br label %bb.g, !dbg !12814

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, %bb.f
  %storemerge = phi i64 [ 1, %bb.f ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !12807
  store i64 %storemerge, ptr %0, align 8, !dbg !12807
  ret void, !dbg !12815
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter12aho_corasickNtB4_11AhoCorasickNtB6_10PrefilterI6prefix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12816 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !12466, !DIExpression(), !12823)
    #dbg_value(ptr %1, !12818, !DIExpression(), !12830)
    #dbg_value(ptr %2, !12819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12830)
    #dbg_value(i64 %3, !12819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12830)
    #dbg_value(i64 %4, !12820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12830)
    #dbg_value(i64 %5, !12820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12830)
    #dbg_declare(ptr poison, !12831, !DIExpression(), !12844)
    #dbg_value(i64 0, !12827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12846)
    #dbg_value(i64 %3, !12827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12846)
    #dbg_value(ptr %2, !12827, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12846)
    #dbg_value(i64 %3, !12827, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12846)
    #dbg_value(i8 1, !12827, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12846)
    #dbg_value(i8 0, !12827, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12846)
    #dbg_value(i64 %4, !12828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12846)
    #dbg_value(i64 %5, !12828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12846)
    #dbg_value(ptr undef, !12466, !DIExpression(), !12823)
    #dbg_value(i64 %4, !12475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12823)
    #dbg_value(i64 %5, !12475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12823)
    #dbg_declare(ptr %i.e, !12476, !DIExpression(), !12847)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12848, !noalias !12849
  store i64 %4, ptr %i.e, align 8, !dbg !12852, !noalias !12849
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12852
  store i64 %5, ptr %i.g, align 8, !dbg !12852, !noalias !12849
  %.not.i = icmp ugt i64 %5, %3, !dbg !12853
  %i.h = add i64 %5, 1
  %.not16.i = icmp ugt i64 %4, %i.h
  %or.cond.i = or i1 %.not.i, %.not16.i, !dbg !12853
  br i1 %or.cond.i, label %bb.b, label %_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12853, !prof !11606

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.e, !12478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12855, !noalias !12849
  store i64 %3, ptr %i.d, align 8, !dbg !12855, !noalias !12849
    #dbg_value(ptr %i.d, !12478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12856, !noalias !12849
  store ptr %i.e, ptr %i.c, align 8, !dbg !12856, !noalias !12849
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12856
  store ptr @_RNvXs2_NtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !12856, !noalias !12849
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12856
  store ptr %i.d, ptr %i.i, align 8, !dbg !12856, !noalias !12849
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !12856
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !12856, !noalias !12849
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !dbg !12857, !noalias !12849
  unreachable, !dbg !12857

_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.a
    #dbg_value(i64 %4, !12827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12846)
    #dbg_value(i64 %5, !12827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12846)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12858, !noalias !12849
    #dbg_value(i64 %4, !12821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12859)
    #dbg_value(i64 %4, !12860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12864)
    #dbg_value(i64 %4, !12560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12866)
    #dbg_value(i64 %4, !12603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12868)
    #dbg_value(i64 %4, !12614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12870)
    #dbg_value(i64 %5, !12821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12859)
    #dbg_value(i64 %5, !12860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12864)
    #dbg_value(i64 %5, !12560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12866)
    #dbg_value(i64 %5, !12603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12868)
    #dbg_value(i64 %5, !12614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12870)
    #dbg_value(ptr %2, !12821, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12859)
    #dbg_value(ptr %2, !12860, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12864)
    #dbg_value(ptr %2, !12560, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12866)
    #dbg_value(ptr %2, !12603, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12868)
    #dbg_value(ptr %2, !12614, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12870)
    #dbg_value(i64 %3, !12821, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12859)
    #dbg_value(i64 %3, !12860, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12864)
    #dbg_value(i64 %3, !12560, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12866)
    #dbg_value(i64 %3, !12603, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12868)
    #dbg_value(i64 %3, !12614, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12870)
    #dbg_value(i8 1, !12821, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12859)
    #dbg_value(i8 1, !12860, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12864)
    #dbg_value(i8 1, !12560, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12866)
    #dbg_value(i8 1, !12603, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12868)
    #dbg_value(i8 1, !12614, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !12870)
    #dbg_value(i8 0, !12821, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12859)
    #dbg_value(i8 0, !12860, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12864)
    #dbg_value(i8 0, !12560, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12866)
    #dbg_value(i8 0, !12603, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12868)
    #dbg_value(i8 0, !12614, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !12870)
    #dbg_value(ptr %1, !12863, !DIExpression(), !12864)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12872
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12873), !dbg !12876
    #dbg_value(ptr %1, !12581, !DIExpression(), !12866)
    #dbg_declare(ptr %i.b, !12582, !DIExpression(), !12877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12878, !noalias !12879
  store i64 %4, ptr %i.b, align 8, !dbg !12882, !alias.scope !12883, !noalias !12890
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12882
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12882, !alias.scope !12883, !noalias !12890
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12882
  store ptr %2, ptr %.sroa.517.0..sroa_idx, align 8, !dbg !12882, !alias.scope !12883, !noalias !12890
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !12882
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !12882, !alias.scope !12883, !noalias !12890
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !12882
  store i8 1, ptr %.sroa.718.0..sroa_idx, align 8, !dbg !12882, !alias.scope !12883, !noalias !12890
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33, !dbg !12882
  store i8 0, ptr %.sroa.819.0..sroa_idx, align 1, !dbg !12882, !alias.scope !12883, !noalias !12890
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !12891
  %i.k = load i8, ptr %i.j, align 1, !dbg !12891, !range !6942, !alias.scope !12873, !noalias !12892, !noundef !65
  %i.l = tail call noundef ptr @_RNvNtCsl4b0cIVMtRE_12aho_corasick11ahocorasick28enforce_anchored_consistency(i8 noundef %i.k, i1 noundef zeroext true), !dbg !12893, !noalias !12879 ; 2 uses
    #dbg_value(ptr %i.l, !12645, !DIExpression(), !12894)
  %.not.i13 = icmp eq ptr %i.l, null, !dbg !12896
  br i1 %.not.i13, label %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit, label %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !12897

_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(ptr %i.l, !12584, !DIExpression(), !12898)
    #dbg_value(ptr %i.l, !12688, !DIExpression(), !12899)
    #dbg_value(ptr %i.l, !12693, !DIExpression(), !12901)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12902, !noalias !12879
    #dbg_declare(ptr %i.f, !12702, !DIExpression(), !12903)
    #dbg_value(ptr @60, !12708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12905)
    #dbg_value(i64 45, !12708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12905)
    #dbg_declare(ptr %i.a, !12711, !DIExpression(), !12906)
  br label %bb.c, !dbg !12907

_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(ptr %1, !12718, !DIExpression(), !12908)
    #dbg_value(ptr %1, !12729, !DIExpression(), !12910)
    #dbg_value(ptr %1, !12742, !DIExpression(), !12912)
    #dbg_value(ptr %i.b, !12726, !DIExpression(), !12914)
  %i.m = load ptr, ptr %1, align 8, !dbg !12915, !alias.scope !12873, !noalias !12892, !nonnull !65, !noundef !65
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12915
  %i.o = load ptr, ptr %i.n, align 8, !dbg !12915, !alias.scope !12873, !noalias !12892, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !12917
  %i.q = load i64, ptr %i.p, align 8, !dbg !12917, !range !12763, !invariant.load !65, !noalias !12879
  %i.r = add nsw i64 %i.q, -1, !dbg !12917
  %i.s = and i64 %i.r, -16, !dbg !12917
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s, !dbg !12917
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !12917
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 144, !dbg !12918
  %i.w = load ptr, ptr %i.v, align 8, !dbg !12918, !invariant.load !65, !noalias !12879, !nonnull !65
  call void %i.w(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b) #29, !dbg !12919, !noalias !12920, !inline_history !12767
  %.pr = load i64, ptr %i.f, align 8, !dbg !12921, !alias.scope !12922, !noalias !12925 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12902, !noalias !12879
  call void @llvm.experimental.noalias.scope.decl(metadata !12929), !dbg !12930
  call void @llvm.experimental.noalias.scope.decl(metadata !12922), !dbg !12930
    #dbg_declare(ptr %i.f, !12702, !DIExpression(), !12903)
    #dbg_value(ptr @60, !12708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12905)
    #dbg_value(i64 45, !12708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12905)
    #dbg_declare(ptr %i.a, !12711, !DIExpression(), !12906)
  %i.x = icmp eq i64 %.pr, 2, !dbg !12921
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.x, label %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit._crit_edge, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12907, !prof !12778

_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit._crit_edge: ; preds = %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !12931, !alias.scope !12922, !noalias !12925
  br label %bb.c, !dbg !12907

bb.c:                                             ; preds = %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit._crit_edge, %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit.thread
  %i.y = phi ptr [ %.pre, %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit._crit_edge ], [ %i.l, %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit.thread ], !dbg !12931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12931, !noalias !12932
  store ptr %i.y, ptr %i.a, align 8, !dbg !12931, !noalias !12932
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 45, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #24
          to label %bb.d unwind label %bb.e, !dbg !12933, !noalias !12934

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !12935), !dbg !12938
    #dbg_value(ptr %i.a, !9496, !DIExpression(), !12939)
  %.val.i.i = load ptr, ptr %i.a, align 8, !dbg !12941, !alias.scope !12935, !noalias !12932, !nonnull !65, !noundef !65
    #dbg_value(ptr poison, !9501, !DIExpression(), !12942)
    #dbg_value(ptr poison, !9511, !DIExpression(), !12944)
    #dbg_value(ptr %.val.i.i, !9515, !DIExpression(), !12946)
    #dbg_value(i64 1, !9528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12947)
    #dbg_value(i64 2, !9528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12947)
    #dbg_value(ptr poison, !9535, !DIExpression(), !12948)
    #dbg_value(ptr poison, !9544, !DIExpression(), !12950)
    #dbg_value(ptr %.val.i.i, !9540, !DIExpression(), !12948)
    #dbg_value(ptr %.val.i.i, !9549, !DIExpression(), !12950)
    #dbg_value(ptr %.val.i.i, !9553, !DIExpression(), !12952)
    #dbg_value(ptr %.val.i.i, !9562, !DIExpression(), !12954)
    #dbg_value(i64 1, !9541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12948)
    #dbg_value(i64 1, !9550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12950)
    #dbg_value(i64 1, !9559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12952)
    #dbg_value(i64 1, !9565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12954)
    #dbg_value(i64 2, !9541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12948)
    #dbg_value(i64 2, !9550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12950)
    #dbg_value(i64 2, !9559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12952)
    #dbg_value(i64 2, !9565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12954)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 2, i64 noundef 1) #27, !dbg !12956, !noalias !12957
  resume { ptr, i32 } %i.z, !dbg !12958

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvMs0_NtCsl4b0cIVMtRE_12aho_corasick11ahocorasickNtB6_11AhoCorasick8try_findNtNtNtB8_4util6search5InputECs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(i64 %.pr, !12841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12959)
    #dbg_value(i64 poison, !12841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12959)
  %i.aa = load <2 x i64>, ptr %.phi.trans.insert, align 8, !dbg !12960, !alias.scope !12934, !noalias !12961
    #dbg_value(i64 poison, !12841, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12959)
    #dbg_value(i64 poison, !12841, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12959)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12962
  %i.ab = trunc nuw i64 %.pr to i1, !dbg !12963
  br i1 %i.ab, label %bb.f, label %bb.g, !dbg !12963

bb.f:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(i64 poison, !12842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12964)
    #dbg_value(i64 poison, !12842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12964)
    #dbg_value(i64 poison, !12842, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12964)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12965
  store <2 x i64> %i.aa, ptr %i.ac, align 8, !dbg !12965
  br label %bb.g, !dbg !12966

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, %bb.f
  %storemerge = phi i64 [ 1, %bb.f ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !12959
  store i64 %storemerge, ptr %0, align 8, !dbg !12959
  ret void, !dbg !12967
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i64 @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddyNtB4_5TeddyNtB6_10PrefilterI12memory_usage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(528) %0) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !12968 {
_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsl4b0cIVMtRE_12aho_corasick4util9prefilter9PrefilterE6map_orjNCNvXs0_NtBP_3dfaNtB1X_3DFANtNtBP_9automaton9Automaton12memory_usage0ECs9GYDdpCSJ4S_14regex_automata.exit:
    #dbg_value(ptr %0, !12974, !DIExpression(), !12975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12976), !dbg !12979
    #dbg_value(ptr %0, !12980, !DIExpression(), !12987)
    #dbg_value(ptr %0, !12989, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12994)
    #dbg_value(ptr %0, !12996, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12999)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13001
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13001, !alias.scope !12976, !nonnull !65, !noundef !65 ; 3 uses
    #dbg_value(ptr %i.b, !13004, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13008)
    #dbg_value(ptr %i.b, !13010, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !13013)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !13015
  %i.d = load i64, ptr %i.c, align 8, !dbg !13015, !noalias !12976, !noundef !65 ; 2 uses
  %i.e = icmp ult i64 %i.d, 2305843009213693952, !dbg !13016
  tail call void @llvm.assume(i1 %i.e), !dbg !13017
    #dbg_value(ptr %i.b, !13018, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13021)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !13023
  %i.g = load i64, ptr %i.f, align 8, !dbg !13023, !noalias !12976, !noundef !65 ; 2 uses
  %i.h = icmp ult i64 %i.g, 384307168202282326, !dbg !13024
  tail call void @llvm.assume(i1 %i.h), !dbg !13025
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !13026
  %i.j = load i64, ptr %i.i, align 8, !dbg !13026, !noalias !12976, !noundef !65
    #dbg_value(ptr %0, !13027, !DIExpression(), !13035)
    #dbg_value(ptr %0, !13037, !DIExpression(), !13044)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13046
  %i.l = load i64, ptr %i.k, align 8, !dbg !13046, !alias.scope !12976, !noundef !65 ; 2 uses
  %i.m = icmp ult i64 %i.l, 384307168202282326, !dbg !13047
  tail call void @llvm.assume(i1 %i.m), !dbg !13048
    #dbg_value(ptr %0, !12989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13049)
    #dbg_value(ptr %0, !12996, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13051)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13054
  %i.o = load ptr, ptr %i.n, align 8, !dbg !13054, !alias.scope !12976, !nonnull !65, !noundef !65
    #dbg_value(ptr %i.o, !13057, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13060)
    #dbg_value(ptr %i.o, !13018, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13062)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !13064
  %i.q = load i64, ptr %i.p, align 8, !dbg !13064, !noalias !12976, !noundef !65 ; 2 uses
  %i.r = icmp ult i64 %i.q, 384307168202282326, !dbg !13065
  tail call void @llvm.assume(i1 %i.r), !dbg !13066
    #dbg_value(ptr %0, !13067, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !13077)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !13079
  %i.t = load ptr, ptr %i.s, align 8, !dbg !13079, !alias.scope !12976, !noundef !65
  %i.u = icmp eq ptr %i.t, null, !dbg !13079
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !13080
  %i.w = load i64, ptr %i.v, align 8, !dbg !13080, !alias.scope !12976
  %.sroa.0.0.i = select i1 %i.u, i64 0, i64 %i.w, !dbg !13080
  %i.x = shl nuw nsw i64 %i.q, 4, !dbg !13081
  %reass.add.i = add nuw nsw i64 %i.l, %i.g, !dbg !13082
    #dbg_value(ptr %0, !10723, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !13083)
    #dbg_value(ptr %0, !10725, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !13085)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !13087
  %i.z = load i64, ptr %i.y, align 8, !dbg !13087, !alias.scope !13088, !noundef !65 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 2305843009213693952, !dbg !13091
  tail call void @llvm.assume(i1 %i.aa), !dbg !13092
    #dbg_value(ptr %0, !10734, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !13093)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !13095
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !13095, !alias.scope !13088, !noundef !65 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 384307168202282326, !dbg !13096
  tail call void @llvm.assume(i1 %i.ad), !dbg !13097
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !13098
  %i.af = load i64, ptr %i.ae, align 8, !dbg !13098, !alias.scope !13088, !noundef !65
    #dbg_value(ptr %0, !10747, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !13099)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !13101
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !13101, !alias.scope !13088, !noundef !65 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 2305843009213693952, !dbg !13102
  tail call void @llvm.assume(i1 %i.ai), !dbg !13103
    #dbg_value(ptr %0, !10755, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !13104)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !13106
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !13106, !alias.scope !13088, !noundef !65
  %.not.i = icmp eq ptr %i.ak, null, !dbg !13106
    #dbg_value(ptr poison, !10781, !DIExpression(), !13107)
    #dbg_value(i64 0, !10791, !DIExpression(), !13107)
    #dbg_declare(ptr poison, !10792, !DIExpression(), !13109)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !13110
  %.val.i = load i64, ptr %i.al, align 8, !dbg !13110
  %.sroa.02.0.i = select i1 %.not.i, i64 0, i64 %.val.i, !dbg !13110
  %reass.add = add nuw nsw i64 %i.z, %i.d, !dbg !13111
  %reass.add2 = add nuw nsw i64 %reass.add, %i.ah, !dbg !13111
  %reass.mul = shl i64 %reass.add2, 2, !dbg !13111
  %reass.add3 = add nuw nsw i64 %reass.add.i, %i.ac, !dbg !13111
  %reass.mul4 = mul i64 %reass.add3, 24, !dbg !13111
  %i.am = add i64 %i.x, %i.j, !dbg !13112
  %i.an = add i64 %i.am, %.sroa.0.0.i, !dbg !13113
  %i.ao = add i64 %i.an, %i.af, !dbg !13113
  %i.ap = add i64 %i.ao, %reass.mul4, !dbg !13082
  %i.aq = add i64 %i.ap, %reass.mul, !dbg !13082
  %i.ar = add i64 %i.aq, %.sroa.02.0.i, !dbg !13111
  ret i64 %i.ar, !dbg !13114
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddyNtB4_5TeddyNtB6_10PrefilterI4find(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(528) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13115 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
    #dbg_value(ptr %1, !13119, !DIExpression(), !13124)
    #dbg_value(ptr %2, !13120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13124)
    #dbg_value(i64 %3, !13120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13124)
    #dbg_value(i64 %4, !13121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13124)
    #dbg_value(i64 %5, !13121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13124)
    #dbg_declare(ptr %i.b, !13125, !DIExpression(), !13138)
    #dbg_declare(ptr poison, !13135, !DIExpression(), !13140)
    #dbg_value(i64 %4, !13122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13141)
    #dbg_value(i64 %5, !13122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13143), !dbg !13146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13147), !dbg !13146
    #dbg_value(ptr %2, !13149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13161)
    #dbg_value(i64 %3, !13149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13161)
    #dbg_value(ptr %1, !13155, !DIExpression(), !13161)
    #dbg_value(i64 %4, !13156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13161)
    #dbg_value(i64 %4, !13163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13170)
    #dbg_value(i64 %5, !13156, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13161)
    #dbg_value(i64 %5, !13163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13170)
    #dbg_value(i64 0, !13172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13179)
    #dbg_value(i64 0, !13196, !DIExpression(), !13201)
    #dbg_value(i64 0, !13172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13203)
    #dbg_value(i64 0, !13196, !DIExpression(), !13209)
    #dbg_value(ptr %2, !13157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13212)
    #dbg_value(ptr %2, !13192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13213)
    #dbg_value(ptr %2, !13186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13214)
    #dbg_value(ptr %2, !13177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13179)
    #dbg_value(ptr %2, !13169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13170)
    #dbg_value(ptr %2, !13215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13223)
    #dbg_value(ptr %2, !13177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13225)
    #dbg_value(ptr %2, !13192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13228)
    #dbg_value(ptr %2, !13186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13229)
    #dbg_value(ptr %2, !13177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13203)
    #dbg_value(i64 %3, !13157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13212)
    #dbg_value(i64 %3, !13192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13213)
    #dbg_value(i64 %3, !13186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13214)
    #dbg_value(i64 %3, !13177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13179)
    #dbg_value(i64 %3, !13169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13170)
    #dbg_value(i64 %3, !13215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13223)
    #dbg_value(i64 %3, !13177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13225)
    #dbg_value(i64 %3, !13192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13228)
    #dbg_value(i64 %3, !13186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13229)
    #dbg_value(i64 %3, !13177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13203)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !13230
  %i.d = load ptr, ptr %i.c, align 8, !dbg !13230, !alias.scope !13147, !noalias !13231, !noundef !65 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !13230
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !13233

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %5, !13193, !DIExpression(), !13213)
    #dbg_value(i64 %5, !13185, !DIExpression(), !13214)
    #dbg_value(i64 %5, !13172, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13179)
    #dbg_value(i64 %5, !13178, !DIExpression(), !13179)
    #dbg_value(i64 %5, !13199, !DIExpression(), !13201)
  %.not18.i = icmp ugt i64 %5, %3
  br i1 %.not18.i, label %bb.l, label %bb.k, !dbg !13234, !prof !11606

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !13159, !DIExpression(), !13235)
    #dbg_value(ptr %i.c, !13236, !DIExpression(), !13243)
    #dbg_value(i64 %4, !13220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13223)
    #dbg_value(i64 %4, !13172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13225)
    #dbg_value(i64 %4, !13200, !DIExpression(), !13245)
    #dbg_value(i64 %5, !13220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13223)
    #dbg_value(i64 %5, !13172, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13225)
    #dbg_value(i64 %5, !13199, !DIExpression(), !13245)
    #dbg_value(i64 %5, !13193, !DIExpression(), !13228)
    #dbg_value(i64 %5, !13185, !DIExpression(), !13229)
    #dbg_value(i64 %5, !13172, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13203)
    #dbg_value(i64 %5, !13178, !DIExpression(), !13203)
    #dbg_value(i64 %5, !13199, !DIExpression(), !13209)
  %i.f = icmp ult i64 %5, %4, !dbg !13248
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !13225)
  %.not.i = icmp ugt i64 %5, %3
  %or.cond.i = or i1 %i.f, %.not.i, !dbg !13248
  br i1 %or.cond.i, label %bb.d, label %bb.e, !dbg !13248, !prof !11606

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %4, i64 noundef %5, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28, !dbg !13249, !noalias !13250
  unreachable, !dbg !13249

bb.e:                                             ; preds = %bb.c
  %i.g = sub nuw i64 %5, %4, !dbg !13251
    #dbg_value(i64 %i.g, !13178, !DIExpression(), !13225)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !13252
  %i.i = load i64, ptr %i.h, align 8, !dbg !13252, !alias.scope !13147, !noalias !13231, !noundef !65
  %i.j = icmp ult i64 %i.g, %i.i, !dbg !13253
  br i1 %i.j, label %bb.f, label %bb.g, !dbg !13253

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs3_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB5_8Searcher12find_in_slow(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5), !dbg !13254
  br label %_RINvMs3_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13255

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13256), !dbg !13259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13260), !dbg !13259
    #dbg_value(ptr %i.c, !13262, !DIExpression(), !13294)
    #dbg_value(ptr %2, !13268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13294)
    #dbg_value(i64 %5, !13268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13294)
    #dbg_value(i64 %4, !13269, !DIExpression(), !13294)
    #dbg_value(i64 %4, !13296, !DIExpression(), !13302)
    #dbg_declare(ptr %i.a, !13304, !DIExpression(), !13339)
    #dbg_declare(ptr poison, !13280, !DIExpression(), !13342)
    #dbg_value(i64 %5, !13296, !DIExpression(), !13343)
    #dbg_value(ptr %2, !13270, !DIExpression(), !13345)
    #dbg_value(ptr %2, !13301, !DIExpression(), !13302)
    #dbg_value(ptr %2, !13301, !DIExpression(), !13343)
    #dbg_value(ptr %2, !13346, !DIExpression(), !13354)
    #dbg_value(ptr %2, !13346, !DIExpression(), !13356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13358, !noalias !13359
    #dbg_value(ptr %i.c, !13361, !DIExpression(), !13372)
    #dbg_value(ptr %i.c, !13374, !DIExpression(), !13384)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !13386
  %i.l = load ptr, ptr %i.k, align 8, !dbg !13386, !alias.scope !13393, !noalias !13394, !nonnull !65, !align !6784, !noundef !65 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !13395
  %i.n = load i64, ptr %i.m, align 8, !dbg !13395, !range !12763, !invariant.load !65, !noalias !13359
  %i.o = add nsw i64 %i.n, -1, !dbg !13395
  %i.p = and i64 %i.o, -16, !dbg !13395
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p, !dbg !13395
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !13395
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %4, !dbg !13396
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %5, !dbg !13397
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !13358
  %i.v = load ptr, ptr %i.u, align 8, !dbg !13358, !invariant.load !65, !noalias !13359, !nonnull !65
  call void %i.v(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %i.r, ptr noundef nonnull readonly %i.s, ptr noundef nonnull readonly %i.t) #29, !dbg !13398, !noalias !13399, !inline_history !13400
  %i.w = load i64, ptr %i.a, align 8, !dbg !13401, !range !13402, !noalias !13359, !noundef !65
  %i.x = trunc nuw i64 %i.w to i1, !dbg !13403
  br i1 %i.x, label %bb.h, label %bb.j, !dbg !13403

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13404
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.y, align 8, !dbg !13404, !noalias !13359
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13404
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13404, !noalias !13359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13405, !noalias !13359
    #dbg_value(ptr %.sroa.03.0.copyload.i.i, !13272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13406)
    #dbg_value(ptr %.sroa.4.0.copyload.i.i, !13272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13406)
    #dbg_value(i32 poison, !13272, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13406)
    #dbg_value(i32 poison, !13272, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13406)
    #dbg_value(ptr %.sroa.03.0.copyload.i.i, !13346, !DIExpression(), !13407)
  %i.z = ptrtoint ptr %.sroa.03.0.copyload.i.i to i64, !dbg !13409
    #dbg_value(i64 %i.z, !13410, !DIExpression(), !13414)
  %i.aa = ptrtoint ptr %2 to i64, !dbg !13416     ; 2 uses
    #dbg_value(i64 %i.aa, !13413, !DIExpression(), !13414)
    #dbg_value(i64 %i.aa, !13413, !DIExpression(), !13417)
  %i.ab = sub i64 %i.z, %i.aa, !dbg !13419        ; 2 uses
    #dbg_value(i64 %i.ab, !13284, !DIExpression(), !13420)
    #dbg_value(ptr %.sroa.4.0.copyload.i.i, !13346, !DIExpression(), !13421)
  %i.ac = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !13423
    #dbg_value(i64 %i.ac, !13410, !DIExpression(), !13417)
  %i.ad = sub i64 %i.ac, %i.aa, !dbg !13424       ; 2 uses
    #dbg_value(i64 %i.ad, !13286, !DIExpression(), !13425)
    #dbg_value(i64 %i.ab, !13288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(i64 %i.ad, !13288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i32 poison, !13290, !DIExpression(), !13427)
    #dbg_value(i32 poison, !13428, !DIExpression(), !13439)
    #dbg_value(i64 %i.ab, !13436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13439)
    #dbg_value(i64 %i.ad, !13436, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13439)
    #dbg_value(i64 %i.ab, !13437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13441)
    #dbg_value(i64 %i.ad, !13437, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13441)
  %.not.i20.i = icmp ugt i64 %i.ab, %i.ad, !dbg !13442
  br i1 %.not.i20.i, label %bb.i, label %_RINvMsb_NtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB6_5Match3newNtB6_4SpanECs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !13442, !prof !2528

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28, !dbg !13443, !noalias !13444
  unreachable, !dbg !13443

_RINvMsb_NtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB6_5Match3newNtB6_4SpanECs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.h
    #dbg_value(i32 poison, !13292, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13447)
    #dbg_value(i64 %i.ab, !13292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13447)
    #dbg_value(i64 %i.ad, !13292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13447)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13448
  store i64 %i.ab, ptr %i.ae, align 8, !dbg !13448, !alias.scope !13143, !noalias !13449
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13448
  store i64 %i.ad, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !13448, !alias.scope !13143, !noalias !13449
  store i64 1, ptr %i.b, align 8, !dbg !13448, !alias.scope !13450, !noalias !13449
  br label %_RINvMs3_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13451

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13405, !noalias !13359
  store i64 0, ptr %i.b, align 8, !dbg !13452, !alias.scope !13450, !noalias !13449
  br label %_RINvMs3_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13451

bb.k:                                             ; preds = %bb.b
  call void @_RNvMNtNtCsl4b0cIVMtRE_12aho_corasick6packed9rabinkarpNtB2_9RabinKarp7find_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %4), !dbg !13458
  br label %_RINvMs3_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13459

bb.l:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28, !dbg !13460, !noalias !13250
  unreachable, !dbg !13460

_RINvMs3_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.f, %_RINvMsb_NtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB6_5Match3newNtB6_4SpanECs9GYDdpCSJ4S_14regex_automata.exit.i, %bb.j, %bb.k
  %i.af = load i64, ptr %i.b, align 8, !dbg !13461, !range !13402, !noundef !65
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !13462
  br i1 %i.ag, label %bb.m, label %bb.n, !dbg !13462

bb.m:                                             ; preds = %_RINvMs3_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShECs9GYDdpCSJ4S_14regex_automata.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13463
    #dbg_value(i64 poison, !13136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13464)
    #dbg_value(i64 poison, !13136, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13464)
    #dbg_value(i64 poison, !13136, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13464)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13465
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !dbg !13463
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !dbg !13465
  br label %bb.n, !dbg !13466

bb.n:                                             ; preds = %_RINvMs3_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShECs9GYDdpCSJ4S_14regex_automata.exit, %bb.m
  %storemerge = phi i64 [ 1, %bb.m ], [ 0, %_RINvMs3_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !13467
  store i64 %storemerge, ptr %0, align 8, !dbg !13467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13468
  ret void, !dbg !13469
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddyNtB4_5TeddyNtB6_10PrefilterI6prefix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(528) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13470 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !12466, !DIExpression(), !13477)
  %i.g = alloca [40 x i8], align 8                ; 9 uses
    #dbg_value(ptr %1, !13472, !DIExpression(), !13484)
    #dbg_value(ptr %2, !13473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13484)
    #dbg_value(i64 %3, !13473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13484)
    #dbg_value(i64 %4, !13474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13484)
    #dbg_value(i64 %5, !13474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13484)
    #dbg_declare(ptr %i.g, !13475, !DIExpression(), !13485)
    #dbg_declare(ptr poison, !13486, !DIExpression(), !13499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13501
    #dbg_value(i64 0, !13481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13502)
    #dbg_value(i64 %3, !13481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13502)
    #dbg_value(ptr %2, !13481, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13502)
    #dbg_value(i64 %3, !13481, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13502)
    #dbg_value(i8 1, !13481, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !13502)
    #dbg_value(i8 0, !13481, !DIExpression(DW_OP_LLVM_fragment, 264, 8), !13502)
    #dbg_value(i64 %4, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13502)
    #dbg_value(i64 %5, !13482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13502)
    #dbg_value(ptr undef, !12466, !DIExpression(), !13477)
    #dbg_value(i64 %4, !12475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13477)
    #dbg_value(i64 %5, !12475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13477)
    #dbg_declare(ptr %i.d, !12476, !DIExpression(), !13503)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13504, !noalias !13505
  store i64 %4, ptr %i.d, align 8, !dbg !13508, !noalias !13505
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13508
  store i64 %5, ptr %i.h, align 8, !dbg !13508, !noalias !13505
  %.not.i = icmp ugt i64 %5, %3, !dbg !13509
  %i.i = add i64 %5, 1
  %.not16.i = icmp ugt i64 %4, %i.i
  %or.cond.i = or i1 %.not.i, %.not16.i, !dbg !13509
  br i1 %or.cond.i, label %bb.b, label %_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13509, !prof !11606

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.d, !12478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13511, !noalias !13505
  store i64 %3, ptr %i.c, align 8, !dbg !13511, !noalias !13505
    #dbg_value(ptr %i.c, !12478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13512, !noalias !13505
  store ptr %i.d, ptr %i.b, align 8, !dbg !13512, !noalias !13505
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13512
  store ptr @_RNvXs2_NtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !13512, !noalias !13505
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13512
  store ptr %i.c, ptr %i.j, align 8, !dbg !13512, !noalias !13505
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13512
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !13512, !noalias !13505
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !dbg !13513, !noalias !13505
  unreachable, !dbg !13513

_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.a
    #dbg_value(i64 %4, !13481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13502)
    #dbg_value(i64 %5, !13481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13502)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13514, !noalias !13505
  store i64 %4, ptr %i.g, align 8, !dbg !13515
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !13515
  store i64 %5, ptr %.sroa.5.0..sroa_idx13, align 8, !dbg !13515
  %.sroa.7.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !13515
  store ptr %2, ptr %.sroa.7.0..sroa_idx14, align 8, !dbg !13515
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !13515
  store i64 %3, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !13515
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !13515
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !13515
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 33, !dbg !13515
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1, !dbg !13515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13516
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !13516
    #dbg_value(ptr %i.k, !13517, !DIExpression(), !13528)
  store ptr %i.k, ptr %i.e, align 8, !dbg !13516
    #dbg_value(ptr %i.g, !13525, !DIExpression(), !13528)
    #dbg_value(ptr %i.e, !13517, !DIExpression(DW_OP_deref), !13528)
  call void @_RINvNtCsl4b0cIVMtRE_12aho_corasick9automaton12try_find_fwdRNtNtB4_3dfa3DFAEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g) #23, !dbg !13530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13531
  call void @llvm.experimental.noalias.scope.decl(metadata !13532), !dbg !13535
  call void @llvm.experimental.noalias.scope.decl(metadata !13536), !dbg !13535
    #dbg_declare(ptr %i.f, !12702, !DIExpression(), !13538)
    #dbg_value(ptr @62, !12708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13540)
    #dbg_value(i64 34, !12708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13540)
    #dbg_declare(ptr %i.a, !12711, !DIExpression(), !13541)
  %i.l = load i64, ptr %i.f, align 8, !dbg !13542, !range !13543, !alias.scope !13536, !noalias !13544, !noundef !65 ; 2 uses
  %i.m = icmp eq i64 %i.l, 2, !dbg !13542
  br i1 %i.m, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13547, !prof !2528

bb.c:                                             ; preds = %_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13548, !noalias !13549
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13548
  %i.o = load ptr, ptr %i.n, align 8, !dbg !13548, !alias.scope !13536, !noalias !13544, !nonnull !65, !noundef !65
  store ptr %i.o, ptr %i.a, align 8, !dbg !13548, !noalias !13549
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 34, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #24
          to label %bb.d unwind label %bb.e, !dbg !13550, !noalias !13551

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !13552), !dbg !13555
    #dbg_value(ptr %i.a, !9496, !DIExpression(), !13556)
  %.val.i.i = load ptr, ptr %i.a, align 8, !dbg !13558, !alias.scope !13552, !noalias !13549, !nonnull !65, !noundef !65
    #dbg_value(ptr poison, !9501, !DIExpression(), !13559)
    #dbg_value(ptr poison, !9511, !DIExpression(), !13561)
    #dbg_value(ptr %.val.i.i, !9515, !DIExpression(), !13563)
    #dbg_value(i64 1, !9528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13564)
    #dbg_value(i64 2, !9528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13564)
    #dbg_value(ptr poison, !9535, !DIExpression(), !13565)
    #dbg_value(ptr poison, !9544, !DIExpression(), !13567)
    #dbg_value(ptr %.val.i.i, !9540, !DIExpression(), !13565)
    #dbg_value(ptr %.val.i.i, !9549, !DIExpression(), !13567)
    #dbg_value(ptr %.val.i.i, !9553, !DIExpression(), !13569)
    #dbg_value(ptr %.val.i.i, !9562, !DIExpression(), !13571)
    #dbg_value(i64 1, !9541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13565)
    #dbg_value(i64 1, !9550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13567)
    #dbg_value(i64 1, !9559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13569)
    #dbg_value(i64 1, !9565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13571)
    #dbg_value(i64 2, !9541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13565)
    #dbg_value(i64 2, !9550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13567)
    #dbg_value(i64 2, !9559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13569)
    #dbg_value(i64 2, !9565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13571)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 2, i64 noundef 1) #27, !dbg !13573, !noalias !13574
  resume { ptr, i32 } %i.p, !dbg !13575

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvMNtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(i64 %i.l, !13496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13576)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13577
    #dbg_value(i64 poison, !13496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13576)
  %i.q = load <2 x i64>, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13577, !alias.scope !13551, !noalias !13578
    #dbg_value(i64 poison, !13496, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13576)
    #dbg_value(i64 poison, !13496, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13576)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13579
  %i.r = trunc nuw i64 %i.l to i1, !dbg !13580
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !13580

bb.f:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(i64 poison, !13497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13581)
    #dbg_value(i64 poison, !13497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13581)
    #dbg_value(i64 poison, !13497, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13581)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13582
  store <2 x i64> %i.q, ptr %i.s, align 8, !dbg !13582
  br label %bb.g, !dbg !13583

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, %bb.f
  %storemerge = phi i64 [ 1, %bb.f ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCsl4b0cIVMtRE_12aho_corasick4util6search5MatchENtNtB17_5error10MatchErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !13576
  store i64 %storemerge, ptr %0, align 8, !dbg !13576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13584
  ret void, !dbg !13585
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB4_7ByteSetNtB6_10PrefilterI4find(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(256) %1, ptr noalias nofree noundef nonnull readonly captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13586 {
bb.a:
    #dbg_value(ptr poison, !13595, !DIExpression(), !13604)
    #dbg_value(ptr poison, !13617, !DIExpression(), !13629)
    #dbg_value(ptr %1, !13592, !DIExpression(), !13630)
    #dbg_value(ptr %2, !13593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13630)
    #dbg_value(ptr %2, !13631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13639)
    #dbg_value(ptr %2, !13641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13645)
    #dbg_value(ptr %2, !13647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13652)
    #dbg_value(ptr %2, !13654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(i64 %3, !13593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13630)
    #dbg_value(i64 %3, !13631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13639)
    #dbg_value(i64 %3, !13641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13645)
    #dbg_value(i64 %3, !13647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13652)
    #dbg_value(i64 %3, !13654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %4, !13594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13630)
    #dbg_value(i64 %4, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13639)
    #dbg_value(i64 %5, !13594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13630)
    #dbg_value(i64 %5, !13638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13639)
    #dbg_value(i64 %4, !13644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13645)
    #dbg_value(i64 %4, !13650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13652)
    #dbg_value(i64 %4, !13663, !DIExpression(), !13667)
    #dbg_value(i64 %4, !13659, !DIExpression(), !13661)
    #dbg_value(i64 %5, !13644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13645)
    #dbg_value(i64 %5, !13650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13652)
    #dbg_value(i64 %5, !13666, !DIExpression(), !13667)
  %i.a = icmp ult i64 %5, %4, !dbg !13669
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13651, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !13652)
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13660, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !13661)
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13670, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !13679)
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13685, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !13689)
  %.not = icmp ugt i64 %5, %3
  %or.cond = or i1 %i.a, %.not, !dbg !13669
  br i1 %or.cond, label %bb.d, label %bb.b, !dbg !13669, !prof !11606

bb.b:                                             ; preds = %bb.a
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13651, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !13652)
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13660, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !13661)
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13670, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !13679)
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13685, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !13689)
    #dbg_value(!DIArgList(ptr %2, i64 %4), !13683, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13691)
    #dbg_value(!DIArgList(ptr %2, i64 %4), !13674, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13692)
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13683, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13691)
    #dbg_value(!DIArgList(i64 %5, i64 %4), !13674, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13692)
    #dbg_value(!DIArgList(ptr %2, i64 %4), !13675, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13693)
    #dbg_value(!DIArgList(ptr %2, i64 %4), !13688, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13689)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %5, !dbg !13694
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13695), !dbg !13698
    #dbg_value(ptr %1, !13618, !DIExpression(), !13629)
    #dbg_value(ptr undef, !13617, !DIExpression(), !13629)
    #dbg_value(ptr undef, !13595, !DIExpression(), !13604)
    #dbg_value(i64 1, !13699, !DIExpression(), !13707)
    #dbg_value(i64 1, !13724, !DIExpression(), !13728)
    #dbg_value(ptr %i.b, !13622, !DIExpression(), !13730)
    #dbg_value(ptr %i.b, !13721, !DIExpression(), !13731)
    #dbg_value(!DIArgList(ptr %2, i64 %4), !13722, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13731)
    #dbg_value(ptr %i.b, !13713, !DIExpression(), !13732)
    #dbg_value(!DIArgList(ptr %2, i64 %4), !13714, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13732)
    #dbg_value(!DIArgList(ptr %2, i64 %4), !13706, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13733)
    #dbg_value(ptr %i.b, !13705, !DIExpression(), !13733)
  %gepdiff = sub nuw nsw i64 %5, %4, !dbg !13734
    #dbg_value(i64 %gepdiff, !13619, !DIExpression(), !13735)
    #dbg_value(i64 0, !13624, !DIExpression(), !13736)
    #dbg_value(!DIArgList(ptr %2, i64 %4), !13598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13737)
    #dbg_value(!DIArgList(ptr %2, i64 %4), !13727, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !13728)
    #dbg_value(ptr %i.b, !13600, !DIExpression(), !13738)
    #dbg_value(ptr poison, !13739, !DIExpression(), !13743)
    #dbg_value(ptr poison, !13742, !DIExpression(), !13745)
  %i.c = icmp samesign eq i64 %4, %5, !dbg !13746
  br i1 %i.c, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB1N_7ByteSetNtB1P_10PrefilterI4find0EB1T_.exit.thread, label %.lr.ph.i.preheader, !dbg !13747

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %4, !dbg !13748
    #dbg_value(ptr %i.d, !13688, !DIExpression(), !13689)
    #dbg_value(ptr %i.d, !13675, !DIExpression(), !13693)
    #dbg_value(ptr %i.d, !13683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13691)
    #dbg_value(ptr %i.d, !13674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13692)
    #dbg_value(ptr %i.d, !13722, !DIExpression(), !13731)
    #dbg_value(ptr %i.d, !13714, !DIExpression(), !13732)
    #dbg_value(ptr %i.d, !13706, !DIExpression(), !13733)
    #dbg_value(ptr %i.d, !13598, !DIExpression(), !13737)
    #dbg_value(ptr %i.d, !13727, !DIExpression(), !13728)
  br label %.lr.ph.i, !dbg !13749

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.sroa.02.021.i = phi i64 [ %i.k, %bb.c ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.e = phi ptr [ %i.j, %bb.c ], [ %i.d, %.lr.ph.i.preheader ] ; 2 uses
    #dbg_value(i64 %.sroa.02.021.i, !13624, !DIExpression(), !13736)
    #dbg_value(ptr %i.e, !13598, !DIExpression(), !13737)
    #dbg_value(ptr %i.e, !13625, !DIExpression(), !13750)
  %.val19.i = load i8, ptr %i.e, align 1, !dbg !13749, !noalias !13751, !noundef !65
    #dbg_value(ptr poison, !13753, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13762)
    #dbg_value(ptr poison, !13761, !DIExpression(), !13762)
    #dbg_value(i8 %.val19.i, !13759, !DIExpression(), !13764)
    #dbg_value(i8 %.val19.i, !13765, !DIExpression(), !13768)
  %i.f = zext i8 %.val19.i to i64, !dbg !13770
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f, !dbg !13771
  %i.h = load i8, ptr %i.g, align 1, !dbg !13771, !range !3847, !alias.scope !13695, !noalias !13772, !noundef !65
  %i.i = trunc nuw i8 %i.h to i1, !dbg !13771
  br i1 %i.i, label %bb.e, label %bb.c, !dbg !13749

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !13773 ; 2 uses
  %i.k = add nuw i64 %.sroa.02.021.i, 1, !dbg !13774
    #dbg_value(i64 %i.k, !13624, !DIExpression(), !13736)
    #dbg_value(ptr %i.j, !13598, !DIExpression(), !13737)
    #dbg_value(ptr %i.j, !13727, !DIExpression(), !13728)
    #dbg_value(ptr %i.b, !13600, !DIExpression(), !13738)
    #dbg_value(ptr poison, !13739, !DIExpression(), !13743)
    #dbg_value(ptr poison, !13742, !DIExpression(), !13745)
  %i.l = icmp eq ptr %i.j, %i.b, !dbg !13746
  br i1 %i.l, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB1N_7ByteSetNtB1P_10PrefilterI4find0EB1T_.exit.thread, label %.lr.ph.i, !dbg !13747

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %4, i64 noundef %5, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #28, !dbg !13775
  unreachable, !dbg !13775

bb.e:                                             ; preds = %.lr.ph.i
  %i.m = icmp ult i64 %.sroa.02.021.i, %gepdiff, !dbg !13776
    #dbg_value(i1 true, !13777, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13784)
  tail call void @llvm.assume(i1 %i.m), !dbg !13786
    #dbg_value(i64 1, !13787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13801)
    #dbg_value(ptr poison, !13798, !DIExpression(), !13803)
    #dbg_value(ptr poison, !13804, !DIExpression(), !13814)
    #dbg_value(i64 %.sroa.02.021.i, !13787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13801)
    #dbg_value(i64 %.sroa.02.021.i, !13799, !DIExpression(), !13816)
    #dbg_value(i64 %.sroa.02.021.i, !13809, !DIExpression(), !13817)
  %i.n = add i64 %.sroa.02.021.i, %4, !dbg !13818 ; 2 uses
    #dbg_value(i64 %i.n, !13810, !DIExpression(), !13819)
  %i.o = add i64 %i.n, 1, !dbg !13820
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13821
  store i64 %i.n, ptr %i.p, align 8, !dbg !13821
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13821
  store i64 %i.o, ptr %i.q, align 8, !dbg !13821
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB1N_7ByteSetNtB1P_10PrefilterI4find0EB1T_.exit.thread, !dbg !13822

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB1N_7ByteSetNtB1P_10PrefilterI4find0EB1T_.exit.thread: ; preds = %bb.c, %bb.b, %bb.e
  %storemerge = phi i64 [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], !dbg !13801
  store i64 %storemerge, ptr %0, align 8, !dbg !13801
  ret void, !dbg !13823
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtCsj6eKBz9Db1c_4core5arrayAbj100_NtNtB7_3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13824 {
bb.a:
    #dbg_value(ptr %0, !13832, !DIExpression(), !13834)
    #dbg_value(ptr %1, !13833, !DIExpression(), !13834)
    #dbg_value(ptr %1, !13835, !DIExpression(), !13850)
    #dbg_value(ptr poison, !13846, !DIExpression(), !13852)
  %i.a = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSbNtB5_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef 256, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !13853
  ret i1 %i.a, !dbg !13854
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsl4b0cIVMtRE_12aho_corasick4util6searchNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCsl4b0cIVMtRE_12aho_corasick6packed3apiNtB5_7Builder5build(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtCsl4b0cIVMtRE_12aho_corasick3dfaNtB6_7Builder5buildRSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralRBZ_ECs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable sret([424 x i8]) align 8 captures(address) dereferenceable(424), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtCsl4b0cIVMtRE_12aho_corasick3dfaNtB6_7Builder5buildRSRShRBZ_ECs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable sret([424 x i8]) align 8 captures(address) dereferenceable(424), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0
end_hunk_3
