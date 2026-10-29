Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.01?download=true
inline.NumInlined: 396
inline.NumDeleted: 155
begin_hunk_0_@_RNvXsq_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7LookSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13884 {
bb.a:
    #dbg_value(ptr %0, !13895, !DIExpression(), !13898)
    #dbg_value(ptr %0, !13899, !DIExpression(), !13902)
    #dbg_value(ptr %0, !13903, !DIExpression(), !13906)
    #dbg_value(ptr %1, !13896, !DIExpression(), !13898)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13912
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13912, !nonnull !658, !noundef !658
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13913
  %i.d = load i64, ptr %i.c, align 8, !dbg !13913, !noundef !658
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !13914
  ret i1 %i.e, !dbg !13915
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !13916 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13928)
    #dbg_value(ptr %0, !13929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13932)
    #dbg_value(ptr %0, !13933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13939)
    #dbg_value(i64 %1, !13925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13928)
    #dbg_value(i64 %1, !13929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13932)
    #dbg_value(i64 %1, !13933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13939)
    #dbg_value(ptr %2, !13926, !DIExpression(), !13928)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13947
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13948
    #dbg_value(i64 %1, !13934, !DIExpression(), !13940)
    #dbg_value(i64 %1, !13941, !DIExpression(), !13945)
    #dbg_value(ptr %0, !13935, !DIExpression(), !13946)
    #dbg_value(ptr %0, !13942, !DIExpression(), !13945)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1, !dbg !13949
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !13950
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !13951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13952
  ret i1 %i.d, !dbg !13953
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !13954 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13966)
    #dbg_value(ptr %0, !13967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13970)
    #dbg_value(ptr %0, !13971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13977)
    #dbg_value(i64 %1, !13963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13966)
    #dbg_value(i64 %1, !13967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13970)
    #dbg_value(i64 %1, !13971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13977)
    #dbg_value(ptr %2, !13964, !DIExpression(), !13966)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13985
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13986
    #dbg_value(i64 %1, !13972, !DIExpression(), !13978)
    #dbg_value(i64 %1, !13979, !DIExpression(), !13983)
    #dbg_value(ptr %0, !13973, !DIExpression(), !13984)
    #dbg_value(ptr %0, !13980, !DIExpression(), !13983)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !13987
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !13988
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !13989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13990
  ret i1 %i.d, !dbg !13991
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !13992 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !14001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14004)
    #dbg_value(ptr %0, !14005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14008)
    #dbg_value(ptr %0, !14009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14015)
    #dbg_value(i64 %1, !14001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14004)
    #dbg_value(i64 %1, !14005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14008)
    #dbg_value(i64 %1, !14009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14015)
    #dbg_value(ptr %2, !14002, !DIExpression(), !14004)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14023
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !14024
    #dbg_value(i64 %1, !14010, !DIExpression(), !14016)
    #dbg_value(i64 %1, !14017, !DIExpression(), !14021)
    #dbg_value(ptr %0, !14011, !DIExpression(), !14022)
    #dbg_value(ptr %0, !14018, !DIExpression(), !14021)
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1, !dbg !14025
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !14026
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !14027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14028
  ret i1 %i.d, !dbg !14029
}

; Function Attrs: nonlazybind uwtable
define hidden range(i48 0, -4261413118) i48 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval10differenceB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14037 {
bb.a:
    #dbg_value(ptr poison, !2513, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14039)
    #dbg_value(ptr poison, !2517, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14039)
    #dbg_value(ptr %0, !14080, !DIExpression(), !14089)
    #dbg_value(ptr %1, !14081, !DIExpression(), !14089)
  %.val98 = load i16, ptr %0, align 1, !dbg !14105 ; 3 uses
  %i.a = trunc i16 %.val98 to i8, !dbg !14105     ; 5 uses
  %i.b = lshr i16 %.val98, 8, !dbg !14105
  %i.c = trunc nuw i16 %i.b to i8, !dbg !14105    ; 5 uses
  %.val100 = load i8, ptr %1, align 1, !dbg !14105, !noundef !658 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14105
  %.val101 = load i8, ptr %i.d, align 1, !dbg !14105, !noundef !658 ; 4 uses
    #dbg_value(ptr poison, !2544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14045)
    #dbg_value(ptr poison, !2544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14047)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14049)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14051)
    #dbg_value(ptr poison, !2544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14051)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14047)
    #dbg_value(ptr poison, !2544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14049)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14045)
    #dbg_value(ptr poison, !14090, !DIExpression(), !14052)
    #dbg_value(ptr poison, !14091, !DIExpression(), !14052)
    #dbg_value(i8 %i.c, !14093, !DIExpression(), !14053)
    #dbg_value(i8 %.val101, !14095, !DIExpression(), !14054)
    #dbg_value(ptr undef, !14092, !DIExpression(DW_OP_deref), !14053)
    #dbg_value(ptr undef, !14094, !DIExpression(DW_OP_deref), !14054)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14049)
    #dbg_value(ptr undef, !2544, !DIExpression(), !14049)
  %.not.i = icmp ule i8 %.val100, %i.a, !dbg !14106 ; 3 uses
    #dbg_value(ptr undef, !14095, !DIExpression(DW_OP_deref), !14054)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14045)
    #dbg_value(ptr undef, !2544, !DIExpression(), !14045)
  %.not12.i = icmp uge i8 %.val101, %i.a
    #dbg_value(ptr undef, !14093, !DIExpression(DW_OP_deref), !14053)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14051)
    #dbg_value(ptr undef, !2544, !DIExpression(), !14051)
  %.not13.i = icmp ule i8 %.val100, %i.c
  %i.e = and i1 %.not12.i, %.not13.i, !dbg !14107
  %or.cond14.not.i = and i1 %i.e, %.not.i, !dbg !14107
  %i.f = icmp uge i8 %.val101, %i.c, !dbg !14107  ; 3 uses
  %.sroa.0.0.i = and i1 %i.f, %or.cond14.not.i, !dbg !14107
  br i1 %.sroa.0.0.i, label %bb.j, label %bb.b, !dbg !14108

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !2513, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14057)
    #dbg_value(ptr poison, !2517, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14057)
    #dbg_value(ptr %0, !2505, !DIExpression(), !14058)
    #dbg_value(ptr %1, !2507, !DIExpression(), !14058)
    #dbg_value(i8 %i.a, !2508, !DIExpression(), !14059)
    #dbg_value(i8 %i.a, !2519, !DIExpression(), !14061)
    #dbg_value(i8 %i.c, !2509, !DIExpression(), !14059)
    #dbg_value(i8 %i.c, !2524, !DIExpression(), !14063)
    #dbg_value(i8 %.val100, !2510, !DIExpression(), !14064)
    #dbg_value(i8 %.val100, !2522, !DIExpression(), !14061)
    #dbg_value(i8 %.val101, !2511, !DIExpression(), !14064)
    #dbg_value(i8 %.val101, !2525, !DIExpression(), !14063)
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !14066)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !14066)
  %..i.i = tail call noundef i8 @llvm.umax.i8(i8 %.val100, i8 %i.a), !dbg !14109
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !14068)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14068)
  %..i9.i = tail call noundef i8 @llvm.umin.i8(i8 %.val101, i8 %i.c), !dbg !14110
    #dbg_value(ptr undef, !2517, !DIExpression(), !14057)
    #dbg_value(ptr undef, !2513, !DIExpression(), !14057)
  %i.g = icmp ugt i8 %..i.i, %..i9.i, !dbg !14111
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !14112

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !2517, !DIExpression(), !14039)
    #dbg_value(ptr undef, !2513, !DIExpression(), !14039)
    #dbg_value(i1 %.not.i, !14082, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14097)
    #dbg_value(i1 %i.f, !14083, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14098)
  br i1 %.not.i, label %bb.e, label %bb.g, !dbg !14113

bb.d:                                             ; preds = %bb.b
    #dbg_value(i8 1, !14084, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14099)
  %.sroa.8.sroa.0.0.insert.ext18 = zext i16 %.val98 to i40, !dbg !14114
    #dbg_value(i40 %.sroa.8.sroa.0.0.insert.ext18, !14084, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14099)
  br label %bb.j, !dbg !14115

bb.e:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.f, label %.thread, !dbg !14116, !prof !1189

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3028, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3030) #30, !dbg !14117
  unreachable, !dbg !14117

bb.g:                                             ; preds = %bb.c
    #dbg_value(i1 %i.f, !14083, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14098)
    #dbg_value(i8 0, !14084, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14099)
    #dbg_value(i40 0, !14084, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14099)
  %i.h = tail call noundef i8 @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9decrement(i8 noundef %.val100), !dbg !14118 ; 2 uses
    #dbg_value(i8 %i.h, !14085, !DIExpression(), !14102)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14070)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14070)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14071)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14071)
  %..i = tail call i8 @llvm.umin.i8(i8 %i.a, i8 %i.h), !dbg !14119
  %.3.i = tail call i8 @llvm.umax.i8(i8 %i.a, i8 %i.h), !dbg !14119
    #dbg_value(i8 %.3.i, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14070)
    #dbg_value(i8 %..i, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14070)
  %.sroa.478.1.insert.ext = zext i8 %..i to i16, !dbg !14120
  %.sroa.478.2.insert.ext = zext i8 %.3.i to i16, !dbg !14120
  %.sroa.478.2.insert.shift = shl nuw i16 %.sroa.478.2.insert.ext, 8, !dbg !14120
  %.sroa.478.2.insert.insert = or disjoint i16 %.sroa.478.2.insert.shift, %.sroa.478.1.insert.ext, !dbg !14120
    #dbg_value(i8 1, !14084, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14099)
  %.sroa.8.sroa.0.0.insert.ext28 = zext i16 %.sroa.478.2.insert.insert to i40, !dbg !14121 ; 2 uses
    #dbg_value(i40 %.sroa.8.sroa.0.0.insert.ext28, !14084, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14099)
  br i1 %i.f, label %bb.j, label %.thread, !dbg !14122

.thread:                                          ; preds = %bb.e, %bb.g
  %.sroa.0.0112 = phi i8 [ 1, %bb.g ], [ 0, %bb.e ]
  %.sroa.8.sroa.0.0111 = phi i40 [ %.sroa.8.sroa.0.0.insert.ext28, %bb.g ], [ 0, %bb.e ]
  %i.i = tail call noundef i8 @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment(i8 noundef %.val101), !dbg !14123 ; 2 uses
    #dbg_value(i8 %i.i, !14086, !DIExpression(), !14103)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14073)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14073)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14074)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14074)
  %..i104 = tail call i8 @llvm.umin.i8(i8 %i.i, i8 %i.c), !dbg !14124 ; 2 uses
  %.3.i105 = tail call i8 @llvm.umax.i8(i8 %i.i, i8 %i.c), !dbg !14124 ; 2 uses
    #dbg_value(i8 %.3.i105, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14073)
    #dbg_value(i8 %..i104, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14073)
    #dbg_value(i8 %..i104, !14087, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14104)
    #dbg_value(i8 %.3.i105, !14087, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14104)
  br i1 %.not.i, label %bb.i, label %bb.h, !dbg !14125

bb.h:                                             ; preds = %.thread
  %.sroa.583.0.insert.ext = zext i8 %.3.i105 to i24, !dbg !14126
  %.sroa.583.0.insert.shift = shl nuw i24 %.sroa.583.0.insert.ext, 16, !dbg !14126
  %.sroa.482.0.insert.ext = zext i8 %..i104 to i24, !dbg !14126
  %.sroa.482.0.insert.shift = shl nuw nsw i24 %.sroa.482.0.insert.ext, 8, !dbg !14126
  %.sroa.482.0.insert.insert = or disjoint i24 %.sroa.583.0.insert.shift, %.sroa.482.0.insert.shift, !dbg !14126
  %.sroa.081.0.insert.insert = or disjoint i24 %.sroa.482.0.insert.insert, 1, !dbg !14126
  %.sroa.8.sroa.0.2.insert.ext61 = zext i24 %.sroa.081.0.insert.insert to i40, !dbg !14126
  %.sroa.8.sroa.0.2.insert.shift62 = shl nuw i40 %.sroa.8.sroa.0.2.insert.ext61, 16, !dbg !14126
  %.sroa.8.sroa.0.2.insert.insert64 = or disjoint i40 %.sroa.8.sroa.0.2.insert.shift62, %.sroa.8.sroa.0.0111, !dbg !14126
    #dbg_value(i40 %.sroa.8.sroa.0.2.insert.insert64, !14084, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14099)
  br label %bb.j, !dbg !14127

bb.i:                                             ; preds = %.thread
  %.sroa.480.1.insert.ext = zext i8 %..i104 to i16, !dbg !14128
  %.sroa.480.2.insert.ext = zext i8 %.3.i105 to i16, !dbg !14128
  %.sroa.480.2.insert.shift = shl nuw i16 %.sroa.480.2.insert.ext, 8, !dbg !14128
  %.sroa.480.2.insert.insert = or disjoint i16 %.sroa.480.2.insert.shift, %.sroa.480.1.insert.ext, !dbg !14128
    #dbg_value(i8 1, !14084, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14099)
  %.sroa.8.sroa.0.0.insert.ext38 = zext i16 %.sroa.480.2.insert.insert to i40, !dbg !14129
    #dbg_value(i40 %.sroa.8.sroa.0.0.insert.ext38, !14084, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14099)
  br label %bb.j, !dbg !14127

bb.j:                                             ; preds = %bb.a, %bb.h, %bb.i, %bb.g, %bb.d
  %.sroa.8.sroa.0.1 = phi i40 [ %.sroa.8.sroa.0.0.insert.ext28, %bb.g ], [ %.sroa.8.sroa.0.0.insert.ext18, %bb.d ], [ %.sroa.8.sroa.0.0.insert.ext38, %bb.i ], [ %.sroa.8.sroa.0.2.insert.insert64, %bb.h ], [ 0, %bb.a ], !dbg !14089
  %.sroa.0.1 = phi i8 [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.i ], [ %.sroa.0.0112, %bb.h ], [ 0, %bb.a ], !dbg !14089
    #dbg_value(i8 %.sroa.0.1, !14084, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14099)
    #dbg_value(i40 %.sroa.8.sroa.0.1, !14084, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14099)
  %.sroa.8.0.insert.ext = zext i40 %.sroa.8.sroa.0.1 to i48, !dbg !14130
  %.sroa.8.0.insert.shift = shl nuw i48 %.sroa.8.0.insert.ext, 8, !dbg !14130
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.1 to i48, !dbg !14130
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.shift, %.sroa.0.0.insert.ext, !dbg !14130
  ret i48 %.sroa.0.0.insert.insert, !dbg !14130
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval13is_contiguousB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !465 {
bb.a:
    #dbg_value(ptr %0, !2548, !DIExpression(), !14135)
    #dbg_value(ptr %1, !2549, !DIExpression(), !14135)
    #dbg_value(i32 1, !2555, !DIExpression(), !14137)
  %.val8 = load i8, ptr %0, align 1, !dbg !14146, !noundef !658
    #dbg_value(i8 %.val8, !2550, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14138)
    #dbg_value(i8 %.val8, !2561, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14140)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14147
  %.val10 = load i8, ptr %i.a, align 1, !dbg !14147, !noundef !658
    #dbg_value(i8 %.val10, !2551, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14141)
    #dbg_value(i8 %.val10, !2564, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14143)
  %.val = load i8, ptr %1, align 1, !dbg !14148, !noundef !658
    #dbg_value(i8 %.val, !2552, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14144)
    #dbg_value(i8 %.val, !2562, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14140)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14149
  %.val9 = load i8, ptr %i.b, align 1, !dbg !14149, !noundef !658
    #dbg_value(i8 %.val9, !2553, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14145)
    #dbg_value(i8 %.val9, !2565, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14143)
    #dbg_value(i8 %.val8, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14132)
    #dbg_value(i8 %.val8, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14132)
    #dbg_value(i8 %.val, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14132)
    #dbg_value(i8 %.val, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14132)
    #dbg_value(ptr undef, !2567, !DIExpression(DW_OP_deref), !14132)
    #dbg_value(ptr undef, !2568, !DIExpression(DW_OP_deref), !14132)
  %i.c = tail call i8 @llvm.umax.i8(i8 %.val, i8 %.val8), !dbg !14150
  %..i = zext i8 %i.c to i32, !dbg !14150
    #dbg_value(i8 %.val10, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14134)
    #dbg_value(i8 %.val10, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14134)
    #dbg_value(i8 %.val9, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14134)
    #dbg_value(i8 %.val9, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14134)
    #dbg_value(ptr undef, !2572, !DIExpression(DW_OP_deref), !14134)
    #dbg_value(ptr undef, !2573, !DIExpression(DW_OP_deref), !14134)
  %i.d = tail call i8 @llvm.umin.i8(i8 %.val9, i8 %.val10), !dbg !14151
  %..i11 = zext i8 %i.d to i32, !dbg !14151
    #dbg_value(i32 %..i11, !2558, !DIExpression(), !14137)
  %i.e = add nuw nsw i32 %..i11, 1, !dbg !14152
  %i.f = icmp samesign uge i32 %i.e, %..i, !dbg !14139
  ret i1 %i.f, !dbg !14153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval21is_intersection_emptyB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !450 {
bb.a:
    #dbg_value(ptr poison, !2513, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14155)
    #dbg_value(ptr poison, !2517, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14155)
    #dbg_value(ptr %0, !2505, !DIExpression(), !14160)
    #dbg_value(ptr %1, !2507, !DIExpression(), !14160)
  %.val6 = load i8, ptr %0, align 1, !dbg !14167, !noundef !658
    #dbg_value(i8 %.val6, !2508, !DIExpression(), !14161)
    #dbg_value(i8 %.val6, !2519, !DIExpression(), !14163)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14168
  %.val8 = load i8, ptr %i.a, align 1, !dbg !14168, !noundef !658
    #dbg_value(i8 %.val8, !2509, !DIExpression(), !14161)
    #dbg_value(i8 %.val8, !2524, !DIExpression(), !14165)
  %.val = load i8, ptr %1, align 1, !dbg !14169, !noundef !658
    #dbg_value(i8 %.val, !2510, !DIExpression(), !14166)
    #dbg_value(i8 %.val, !2522, !DIExpression(), !14163)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14170
  %.val7 = load i8, ptr %i.b, align 1, !dbg !14170, !noundef !658
    #dbg_value(i8 %.val7, !2511, !DIExpression(), !14166)
    #dbg_value(i8 %.val7, !2525, !DIExpression(), !14165)
    #dbg_value(i8 %.val6, !2527, !DIExpression(), !14157)
    #dbg_value(i8 %.val6, !2527, !DIExpression(), !14157)
    #dbg_value(i8 %.val, !2529, !DIExpression(), !14157)
    #dbg_value(i8 %.val, !2529, !DIExpression(), !14157)
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !14157)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !14157)
  %..i = tail call noundef i8 @llvm.umax.i8(i8 %.val, i8 %.val6), !dbg !14171
    #dbg_value(i8 %.val8, !2533, !DIExpression(), !14159)
    #dbg_value(i8 %.val8, !2533, !DIExpression(), !14159)
    #dbg_value(i8 %.val7, !2534, !DIExpression(), !14159)
    #dbg_value(i8 %.val7, !2534, !DIExpression(), !14159)
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !14159)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14159)
  %..i9 = tail call noundef i8 @llvm.umin.i8(i8 %.val7, i8 %.val8), !dbg !14172
    #dbg_value(ptr undef, !2517, !DIExpression(), !14155)
    #dbg_value(ptr undef, !2513, !DIExpression(), !14155)
  %i.c = icmp ugt i8 %..i, %..i9, !dbg !14173
  ret i1 %i.c, !dbg !14174
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden range(i24 0, -254) i24 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval5unionB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !14177 {
bb.a:
    #dbg_value(ptr %0, !14206, !DIExpression(), !14211)
    #dbg_value(ptr %1, !14207, !DIExpression(), !14211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14212), !dbg !14226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14213), !dbg !14226
    #dbg_value(ptr %0, !2548, !DIExpression(), !14182)
    #dbg_value(ptr %1, !2549, !DIExpression(), !14182)
    #dbg_value(i32 1, !2555, !DIExpression(), !14184)
  %.val8.i = load i8, ptr %0, align 1, !dbg !14227, !alias.scope !14212, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val8.i, !2550, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14185)
    #dbg_value(i8 %.val8.i, !2561, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14187)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14228
  %.val10.i = load i8, ptr %i.a, align 1, !dbg !14228, !alias.scope !14212, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val10.i, !2551, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14188)
    #dbg_value(i8 %.val10.i, !2564, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14190)
  %.val.i = load i8, ptr %1, align 1, !dbg !14229, !alias.scope !14213, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val.i, !2552, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14191)
    #dbg_value(i8 %.val.i, !2562, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14187)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14230
  %.val9.i = load i8, ptr %i.b, align 1, !dbg !14230, !alias.scope !14213, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val9.i, !2553, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14192)
    #dbg_value(i8 %.val9.i, !2565, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14190)
    #dbg_value(i8 %.val8.i, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14194)
    #dbg_value(i8 %.val8.i, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14194)
    #dbg_value(i8 %.val.i, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14194)
    #dbg_value(i8 %.val.i, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14194)
    #dbg_value(ptr undef, !2567, !DIExpression(DW_OP_deref), !14194)
    #dbg_value(ptr undef, !2568, !DIExpression(DW_OP_deref), !14194)
  %i.c = tail call i8 @llvm.umax.i8(i8 %.val.i, i8 %.val8.i), !dbg !14231
  %..i.i = zext i8 %i.c to i32, !dbg !14231
    #dbg_value(i8 %.val10.i, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14196)
    #dbg_value(i8 %.val10.i, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14196)
    #dbg_value(i8 %.val9.i, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14196)
    #dbg_value(i8 %.val9.i, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14196)
    #dbg_value(ptr undef, !2572, !DIExpression(DW_OP_deref), !14196)
    #dbg_value(ptr undef, !2573, !DIExpression(DW_OP_deref), !14196)
  %i.d = tail call i8 @llvm.umin.i8(i8 %.val9.i, i8 %.val10.i), !dbg !14232
  %..i11.i = zext i8 %i.d to i32, !dbg !14232
    #dbg_value(i32 %..i11.i, !2558, !DIExpression(), !14184)
  %i.e = add nuw nsw i32 %..i11.i, 1, !dbg !14233
  %.not = icmp samesign ult i32 %i.e, %..i.i, !dbg !14234
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14235

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 %.val8.i, !14214, !DIExpression(), !14218)
    #dbg_value(i8 %.val.i, !14215, !DIExpression(), !14218)
    #dbg_value(i8 %.val8.i, !2533, !DIExpression(), !14199)
    #dbg_value(i8 %.val8.i, !2533, !DIExpression(), !14199)
    #dbg_value(i8 %.val.i, !2534, !DIExpression(), !14199)
    #dbg_value(i8 %.val.i, !2534, !DIExpression(), !14199)
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !14199)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14199)
  %..i = tail call noundef i8 @llvm.umin.i8(i8 %.val.i, i8 %.val8.i), !dbg !14236 ; 2 uses
    #dbg_value(i8 %..i, !14208, !DIExpression(), !14219)
    #dbg_value(i8 %.val10.i, !14220, !DIExpression(), !14224)
    #dbg_value(i8 %.val9.i, !14221, !DIExpression(), !14224)
    #dbg_value(i8 %.val10.i, !2527, !DIExpression(), !14202)
    #dbg_value(i8 %.val10.i, !2527, !DIExpression(), !14202)
    #dbg_value(i8 %.val9.i, !2529, !DIExpression(), !14202)
    #dbg_value(i8 %.val9.i, !2529, !DIExpression(), !14202)
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !14202)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !14202)
  %..i12 = tail call noundef i8 @llvm.umax.i8(i8 %.val9.i, i8 %.val10.i), !dbg !14237 ; 2 uses
    #dbg_value(i8 %..i12, !14209, !DIExpression(), !14225)
    #dbg_value(i8 %..i, !2349, !DIExpression(), !14204)
    #dbg_value(i8 %..i, !2349, !DIExpression(), !14204)
    #dbg_value(i8 %..i12, !2350, !DIExpression(), !14204)
    #dbg_value(i8 %..i12, !2350, !DIExpression(), !14204)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14205)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14205)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14204)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14204)
  %..i13 = tail call i8 @llvm.umin.i8(i8 %..i, i8 %..i12), !dbg !14238
  %.3.i = tail call i8 @llvm.umax.i8(i8 %..i, i8 %..i12), !dbg !14238
    #dbg_value(i8 %.3.i, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14205)
    #dbg_value(i8 %..i13, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14205)
  br label %bb.c, !dbg !14239

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i8 [ %.3.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.3.0 = phi i8 [ %..i13, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !14211
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i24, !dbg !14239
  %.sroa.4.0.insert.shift = shl nuw i24 %.sroa.4.0.insert.ext, 16, !dbg !14239
  %.sroa.3.0.insert.ext = zext i8 %.sroa.3.0 to i24, !dbg !14239
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8, !dbg !14239
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift, !dbg !14239
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i24, !dbg !14239
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext, !dbg !14239
  ret i24 %.sroa.0.0.insert.insert, !dbg !14239
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i8, i8 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval6createB6_(i8 noundef %0, i8 noundef %1) unnamed_addr #6 !dbg !433 {
bb.a:
    #dbg_value(i8 %0, !2349, !DIExpression(), !14240)
    #dbg_value(i8 %0, !2349, !DIExpression(), !14240)
    #dbg_value(i8 %1, !2350, !DIExpression(), !14240)
    #dbg_value(i8 %1, !2350, !DIExpression(), !14240)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14241)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14241)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14240)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14240)
  %. = tail call i8 @llvm.umin.i8(i8 %0, i8 %1), !dbg !14242
  %.3 = tail call i8 @llvm.umax.i8(i8 %0, i8 %1), !dbg !14242
    #dbg_value(i8 %.3, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14241)
end_hunk_0
