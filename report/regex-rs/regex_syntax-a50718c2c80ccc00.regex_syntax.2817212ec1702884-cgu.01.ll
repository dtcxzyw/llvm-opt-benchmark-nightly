Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.01?download=true
inline.NumInlined: 396
inline.NumDeleted: 155
begin_hunk_0_@_RNvXsq_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7LookSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13882 {
bb.a:
    #dbg_value(ptr %0, !13893, !DIExpression(), !13896)
    #dbg_value(ptr %0, !13897, !DIExpression(), !13900)
    #dbg_value(ptr %0, !13901, !DIExpression(), !13904)
    #dbg_value(ptr %1, !13894, !DIExpression(), !13896)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13910
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13910, !nonnull !658, !noundef !658
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13911
  %i.d = load i64, ptr %i.c, align 8, !dbg !13911, !noundef !658
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !13912
  ret i1 %i.e, !dbg !13913
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !13914 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13926)
    #dbg_value(ptr %0, !13927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13930)
    #dbg_value(ptr %0, !13931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13937)
    #dbg_value(i64 %1, !13923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13926)
    #dbg_value(i64 %1, !13927, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13930)
    #dbg_value(i64 %1, !13931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13937)
    #dbg_value(ptr %2, !13924, !DIExpression(), !13926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13945
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13946
    #dbg_value(i64 %1, !13932, !DIExpression(), !13938)
    #dbg_value(i64 %1, !13939, !DIExpression(), !13943)
    #dbg_value(ptr %0, !13933, !DIExpression(), !13944)
    #dbg_value(ptr %0, !13940, !DIExpression(), !13943)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1, !dbg !13947
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !13948
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !13949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13950
  ret i1 %i.d, !dbg !13951
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !13952 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13964)
    #dbg_value(ptr %0, !13965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13968)
    #dbg_value(ptr %0, !13969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13975)
    #dbg_value(i64 %1, !13961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13964)
    #dbg_value(i64 %1, !13965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13968)
    #dbg_value(i64 %1, !13969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13975)
    #dbg_value(ptr %2, !13962, !DIExpression(), !13964)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13983
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13984
    #dbg_value(i64 %1, !13970, !DIExpression(), !13976)
    #dbg_value(i64 %1, !13977, !DIExpression(), !13981)
    #dbg_value(ptr %0, !13971, !DIExpression(), !13982)
    #dbg_value(ptr %0, !13978, !DIExpression(), !13981)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !13985
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !13986
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !13987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13988
  ret i1 %i.d, !dbg !13989
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !13990 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14002)
    #dbg_value(ptr %0, !14003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14006)
    #dbg_value(ptr %0, !14007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14013)
    #dbg_value(i64 %1, !13999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14002)
    #dbg_value(i64 %1, !14003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14006)
    #dbg_value(i64 %1, !14007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14013)
    #dbg_value(ptr %2, !14000, !DIExpression(), !14002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14021
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !14022
    #dbg_value(i64 %1, !14008, !DIExpression(), !14014)
    #dbg_value(i64 %1, !14015, !DIExpression(), !14019)
    #dbg_value(ptr %0, !14009, !DIExpression(), !14020)
    #dbg_value(ptr %0, !14016, !DIExpression(), !14019)
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1, !dbg !14023
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !14024
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !14025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14026
  ret i1 %i.d, !dbg !14027
}

; Function Attrs: nonlazybind uwtable
define hidden range(i48 0, -4261413118) i48 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval10differenceB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14035 {
bb.a:
    #dbg_value(ptr poison, !2513, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14037)
    #dbg_value(ptr poison, !2517, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14037)
    #dbg_value(ptr %0, !14078, !DIExpression(), !14087)
    #dbg_value(ptr %1, !14079, !DIExpression(), !14087)
  %.val98 = load i16, ptr %0, align 1, !dbg !14103 ; 3 uses
  %i.a = trunc i16 %.val98 to i8, !dbg !14103     ; 5 uses
  %i.b = lshr i16 %.val98, 8, !dbg !14103
  %i.c = trunc nuw i16 %i.b to i8, !dbg !14103    ; 5 uses
  %.val100 = load i8, ptr %1, align 1, !dbg !14103, !noundef !658 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14103
  %.val101 = load i8, ptr %i.d, align 1, !dbg !14103, !noundef !658 ; 4 uses
    #dbg_value(ptr poison, !2544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14043)
    #dbg_value(ptr poison, !2544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14045)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14047)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14049)
    #dbg_value(ptr poison, !2544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14049)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14045)
    #dbg_value(ptr poison, !2544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14047)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14043)
    #dbg_value(ptr poison, !14088, !DIExpression(), !14050)
    #dbg_value(ptr poison, !14089, !DIExpression(), !14050)
    #dbg_value(i8 %i.c, !14091, !DIExpression(), !14051)
    #dbg_value(i8 %.val101, !14093, !DIExpression(), !14052)
    #dbg_value(ptr undef, !14090, !DIExpression(DW_OP_deref), !14051)
    #dbg_value(ptr undef, !14092, !DIExpression(DW_OP_deref), !14052)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14047)
    #dbg_value(ptr undef, !2544, !DIExpression(), !14047)
  %.not.i = icmp ule i8 %.val100, %i.a, !dbg !14104 ; 3 uses
    #dbg_value(ptr undef, !14093, !DIExpression(DW_OP_deref), !14052)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14043)
    #dbg_value(ptr undef, !2544, !DIExpression(), !14043)
  %.not12.i = icmp uge i8 %.val101, %i.a
    #dbg_value(ptr undef, !14091, !DIExpression(DW_OP_deref), !14051)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14049)
    #dbg_value(ptr undef, !2544, !DIExpression(), !14049)
  %.not13.i = icmp ule i8 %.val100, %i.c
  %i.e = and i1 %.not12.i, %.not13.i, !dbg !14105
  %or.cond14.not.i = and i1 %i.e, %.not.i, !dbg !14105
  %i.f = icmp uge i8 %.val101, %i.c, !dbg !14105  ; 3 uses
  %.sroa.0.0.i = and i1 %i.f, %or.cond14.not.i, !dbg !14105
  br i1 %.sroa.0.0.i, label %bb.j, label %bb.b, !dbg !14106

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !2513, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14055)
    #dbg_value(ptr poison, !2517, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14055)
    #dbg_value(ptr %0, !2505, !DIExpression(), !14056)
    #dbg_value(ptr %1, !2507, !DIExpression(), !14056)
    #dbg_value(i8 %i.a, !2508, !DIExpression(), !14057)
    #dbg_value(i8 %i.a, !2519, !DIExpression(), !14059)
    #dbg_value(i8 %i.c, !2509, !DIExpression(), !14057)
    #dbg_value(i8 %i.c, !2524, !DIExpression(), !14061)
    #dbg_value(i8 %.val100, !2510, !DIExpression(), !14062)
    #dbg_value(i8 %.val100, !2522, !DIExpression(), !14059)
    #dbg_value(i8 %.val101, !2511, !DIExpression(), !14062)
    #dbg_value(i8 %.val101, !2525, !DIExpression(), !14061)
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !14064)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !14064)
  %..i.i = tail call noundef i8 @llvm.umax.i8(i8 %.val100, i8 %i.a), !dbg !14107
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !14066)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14066)
  %..i9.i = tail call noundef i8 @llvm.umin.i8(i8 %.val101, i8 %i.c), !dbg !14108
    #dbg_value(ptr undef, !2517, !DIExpression(), !14055)
    #dbg_value(ptr undef, !2513, !DIExpression(), !14055)
  %i.g = icmp ugt i8 %..i.i, %..i9.i, !dbg !14109
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !14110

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !2517, !DIExpression(), !14037)
    #dbg_value(ptr undef, !2513, !DIExpression(), !14037)
    #dbg_value(i1 %.not.i, !14080, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14095)
    #dbg_value(i1 %i.f, !14081, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14096)
  br i1 %.not.i, label %bb.e, label %bb.g, !dbg !14111

bb.d:                                             ; preds = %bb.b
    #dbg_value(i8 1, !14082, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14097)
  %.sroa.8.sroa.0.0.insert.ext18 = zext i16 %.val98 to i40, !dbg !14112
    #dbg_value(i40 %.sroa.8.sroa.0.0.insert.ext18, !14082, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14097)
  br label %bb.j, !dbg !14113

bb.e:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.f, label %.thread, !dbg !14114, !prof !1189

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3028, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3030) #30, !dbg !14115
  unreachable, !dbg !14115

bb.g:                                             ; preds = %bb.c
    #dbg_value(i1 %i.f, !14081, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14096)
    #dbg_value(i8 0, !14082, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14097)
    #dbg_value(i40 0, !14082, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14097)
  %i.h = tail call noundef i8 @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9decrement(i8 noundef %.val100), !dbg !14116 ; 2 uses
    #dbg_value(i8 %i.h, !14083, !DIExpression(), !14100)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14068)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14068)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14069)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14069)
  %..i = tail call i8 @llvm.umin.i8(i8 %i.a, i8 %i.h), !dbg !14117
  %.3.i = tail call i8 @llvm.umax.i8(i8 %i.a, i8 %i.h), !dbg !14117
    #dbg_value(i8 %.3.i, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14068)
    #dbg_value(i8 %..i, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14068)
  %.sroa.478.1.insert.ext = zext i8 %..i to i16, !dbg !14118
  %.sroa.478.2.insert.ext = zext i8 %.3.i to i16, !dbg !14118
  %.sroa.478.2.insert.shift = shl nuw i16 %.sroa.478.2.insert.ext, 8, !dbg !14118
  %.sroa.478.2.insert.insert = or disjoint i16 %.sroa.478.2.insert.shift, %.sroa.478.1.insert.ext, !dbg !14118
    #dbg_value(i8 1, !14082, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14097)
  %.sroa.8.sroa.0.0.insert.ext28 = zext i16 %.sroa.478.2.insert.insert to i40, !dbg !14119 ; 2 uses
    #dbg_value(i40 %.sroa.8.sroa.0.0.insert.ext28, !14082, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14097)
  br i1 %i.f, label %bb.j, label %.thread, !dbg !14120

.thread:                                          ; preds = %bb.e, %bb.g
  %.sroa.8.sroa.0.0111 = phi i40 [ %.sroa.8.sroa.0.0.insert.ext28, %bb.g ], [ 0, %bb.e ]
  %i.i = tail call noundef i8 @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment(i8 noundef %.val101), !dbg !14121 ; 2 uses
    #dbg_value(i8 %i.i, !14084, !DIExpression(), !14101)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14071)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14071)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14072)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14072)
  %..i104 = tail call i8 @llvm.umin.i8(i8 %i.i, i8 %i.c), !dbg !14122 ; 2 uses
  %.3.i105 = tail call i8 @llvm.umax.i8(i8 %i.i, i8 %i.c), !dbg !14122 ; 2 uses
    #dbg_value(i8 %.3.i105, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14071)
    #dbg_value(i8 %..i104, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14071)
    #dbg_value(i8 %..i104, !14085, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14102)
    #dbg_value(i8 %.3.i105, !14085, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14102)
  br i1 %.not.i, label %bb.i, label %bb.h, !dbg !14123

bb.h:                                             ; preds = %.thread
  %.sroa.583.0.insert.ext = zext i8 %.3.i105 to i24, !dbg !14124
  %.sroa.583.0.insert.shift = shl nuw i24 %.sroa.583.0.insert.ext, 16, !dbg !14124
  %.sroa.482.0.insert.ext = zext i8 %..i104 to i24, !dbg !14124
  %.sroa.482.0.insert.shift = shl nuw nsw i24 %.sroa.482.0.insert.ext, 8, !dbg !14124
  %.sroa.482.0.insert.insert = or disjoint i24 %.sroa.583.0.insert.shift, %.sroa.482.0.insert.shift, !dbg !14124
  %.sroa.081.0.insert.insert = or disjoint i24 %.sroa.482.0.insert.insert, 1, !dbg !14124
  %.sroa.8.sroa.0.2.insert.ext61 = zext i24 %.sroa.081.0.insert.insert to i40, !dbg !14124
  %.sroa.8.sroa.0.2.insert.shift62 = shl nuw i40 %.sroa.8.sroa.0.2.insert.ext61, 16, !dbg !14124
  %.sroa.8.sroa.0.2.insert.insert64 = or disjoint i40 %.sroa.8.sroa.0.2.insert.shift62, %.sroa.8.sroa.0.0111, !dbg !14124
    #dbg_value(i40 %.sroa.8.sroa.0.2.insert.insert64, !14082, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14097)
  br label %bb.j, !dbg !14125

bb.i:                                             ; preds = %.thread
  %.sroa.480.1.insert.ext = zext i8 %..i104 to i16, !dbg !14126
  %.sroa.480.2.insert.ext = zext i8 %.3.i105 to i16, !dbg !14126
  %.sroa.480.2.insert.shift = shl nuw i16 %.sroa.480.2.insert.ext, 8, !dbg !14126
  %.sroa.480.2.insert.insert = or disjoint i16 %.sroa.480.2.insert.shift, %.sroa.480.1.insert.ext, !dbg !14126
    #dbg_value(i8 1, !14082, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14097)
  %.sroa.8.sroa.0.0.insert.ext38 = zext i16 %.sroa.480.2.insert.insert to i40, !dbg !14127
    #dbg_value(i40 %.sroa.8.sroa.0.0.insert.ext38, !14082, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14097)
  br label %bb.j, !dbg !14125

bb.j:                                             ; preds = %bb.a, %bb.h, %bb.i, %bb.g, %bb.d
  %.sroa.8.sroa.0.1 = phi i40 [ %.sroa.8.sroa.0.0.insert.ext28, %bb.g ], [ %.sroa.8.sroa.0.0.insert.ext18, %bb.d ], [ %.sroa.8.sroa.0.0.insert.ext38, %bb.i ], [ %.sroa.8.sroa.0.2.insert.insert64, %bb.h ], [ 0, %bb.a ], !dbg !14087
  %.sroa.0.1 = phi i8 [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %bb.a ], !dbg !14087
    #dbg_value(i8 %.sroa.0.1, !14082, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14097)
    #dbg_value(i40 %.sroa.8.sroa.0.1, !14082, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14097)
  %.sroa.8.0.insert.ext = zext i40 %.sroa.8.sroa.0.1 to i48, !dbg !14128
  %.sroa.8.0.insert.shift = shl nuw i48 %.sroa.8.0.insert.ext, 8, !dbg !14128
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.1 to i48, !dbg !14128
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.shift, %.sroa.0.0.insert.ext, !dbg !14128
  ret i48 %.sroa.0.0.insert.insert, !dbg !14128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval13is_contiguousB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !465 {
bb.a:
    #dbg_value(ptr %0, !2548, !DIExpression(), !14133)
    #dbg_value(ptr %1, !2549, !DIExpression(), !14133)
    #dbg_value(i32 1, !2555, !DIExpression(), !14135)
  %.val8 = load i8, ptr %0, align 1, !dbg !14144, !noundef !658
    #dbg_value(i8 %.val8, !2550, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14136)
    #dbg_value(i8 %.val8, !2561, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14138)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14145
  %.val10 = load i8, ptr %i.a, align 1, !dbg !14145, !noundef !658
    #dbg_value(i8 %.val10, !2551, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14139)
    #dbg_value(i8 %.val10, !2564, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14141)
  %.val = load i8, ptr %1, align 1, !dbg !14146, !noundef !658
    #dbg_value(i8 %.val, !2552, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14142)
    #dbg_value(i8 %.val, !2562, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14138)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14147
  %.val9 = load i8, ptr %i.b, align 1, !dbg !14147, !noundef !658
    #dbg_value(i8 %.val9, !2553, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14143)
    #dbg_value(i8 %.val9, !2565, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14141)
    #dbg_value(i8 %.val8, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14130)
    #dbg_value(i8 %.val8, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14130)
    #dbg_value(i8 %.val, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14130)
    #dbg_value(i8 %.val, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14130)
    #dbg_value(ptr undef, !2567, !DIExpression(DW_OP_deref), !14130)
    #dbg_value(ptr undef, !2568, !DIExpression(DW_OP_deref), !14130)
  %i.c = tail call i8 @llvm.umax.i8(i8 %.val, i8 %.val8), !dbg !14148
  %..i = zext i8 %i.c to i32, !dbg !14148
    #dbg_value(i8 %.val10, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14132)
    #dbg_value(i8 %.val10, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14132)
    #dbg_value(i8 %.val9, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14132)
    #dbg_value(i8 %.val9, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14132)
    #dbg_value(ptr undef, !2572, !DIExpression(DW_OP_deref), !14132)
    #dbg_value(ptr undef, !2573, !DIExpression(DW_OP_deref), !14132)
  %i.d = tail call i8 @llvm.umin.i8(i8 %.val9, i8 %.val10), !dbg !14149
  %..i11 = zext i8 %i.d to i32, !dbg !14149
    #dbg_value(i32 %..i11, !2558, !DIExpression(), !14135)
  %i.e = add nuw nsw i32 %..i11, 1, !dbg !14150
  %i.f = icmp samesign uge i32 %i.e, %..i, !dbg !14137
  ret i1 %i.f, !dbg !14151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval21is_intersection_emptyB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !450 {
bb.a:
    #dbg_value(ptr poison, !2513, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14153)
    #dbg_value(ptr poison, !2517, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14153)
    #dbg_value(ptr %0, !2505, !DIExpression(), !14158)
    #dbg_value(ptr %1, !2507, !DIExpression(), !14158)
  %.val6 = load i8, ptr %0, align 1, !dbg !14165, !noundef !658
    #dbg_value(i8 %.val6, !2508, !DIExpression(), !14159)
    #dbg_value(i8 %.val6, !2519, !DIExpression(), !14161)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14166
  %.val8 = load i8, ptr %i.a, align 1, !dbg !14166, !noundef !658
    #dbg_value(i8 %.val8, !2509, !DIExpression(), !14159)
    #dbg_value(i8 %.val8, !2524, !DIExpression(), !14163)
  %.val = load i8, ptr %1, align 1, !dbg !14167, !noundef !658
    #dbg_value(i8 %.val, !2510, !DIExpression(), !14164)
    #dbg_value(i8 %.val, !2522, !DIExpression(), !14161)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14168
  %.val7 = load i8, ptr %i.b, align 1, !dbg !14168, !noundef !658
    #dbg_value(i8 %.val7, !2511, !DIExpression(), !14164)
    #dbg_value(i8 %.val7, !2525, !DIExpression(), !14163)
    #dbg_value(i8 %.val6, !2527, !DIExpression(), !14155)
    #dbg_value(i8 %.val6, !2527, !DIExpression(), !14155)
    #dbg_value(i8 %.val, !2529, !DIExpression(), !14155)
    #dbg_value(i8 %.val, !2529, !DIExpression(), !14155)
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !14155)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !14155)
  %..i = tail call noundef i8 @llvm.umax.i8(i8 %.val, i8 %.val6), !dbg !14169
    #dbg_value(i8 %.val8, !2533, !DIExpression(), !14157)
    #dbg_value(i8 %.val8, !2533, !DIExpression(), !14157)
    #dbg_value(i8 %.val7, !2534, !DIExpression(), !14157)
    #dbg_value(i8 %.val7, !2534, !DIExpression(), !14157)
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !14157)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14157)
  %..i9 = tail call noundef i8 @llvm.umin.i8(i8 %.val7, i8 %.val8), !dbg !14170
    #dbg_value(ptr undef, !2517, !DIExpression(), !14153)
    #dbg_value(ptr undef, !2513, !DIExpression(), !14153)
  %i.c = icmp ugt i8 %..i, %..i9, !dbg !14171
  ret i1 %i.c, !dbg !14172
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden range(i24 0, -254) i24 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval5unionB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !14175 {
bb.a:
    #dbg_value(ptr %0, !14204, !DIExpression(), !14209)
    #dbg_value(ptr %1, !14205, !DIExpression(), !14209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14210), !dbg !14224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14211), !dbg !14224
    #dbg_value(ptr %0, !2548, !DIExpression(), !14180)
    #dbg_value(ptr %1, !2549, !DIExpression(), !14180)
    #dbg_value(i32 1, !2555, !DIExpression(), !14182)
  %.val8.i = load i8, ptr %0, align 1, !dbg !14225, !alias.scope !14210, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val8.i, !2550, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14183)
    #dbg_value(i8 %.val8.i, !2561, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14185)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14226
  %.val10.i = load i8, ptr %i.a, align 1, !dbg !14226, !alias.scope !14210, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val10.i, !2551, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14186)
    #dbg_value(i8 %.val10.i, !2564, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14188)
  %.val.i = load i8, ptr %1, align 1, !dbg !14227, !alias.scope !14211, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val.i, !2552, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14189)
    #dbg_value(i8 %.val.i, !2562, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14185)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14228
  %.val9.i = load i8, ptr %i.b, align 1, !dbg !14228, !alias.scope !14211, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val9.i, !2553, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14190)
    #dbg_value(i8 %.val9.i, !2565, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14188)
    #dbg_value(i8 %.val8.i, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14192)
    #dbg_value(i8 %.val8.i, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14192)
    #dbg_value(i8 %.val.i, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14192)
    #dbg_value(i8 %.val.i, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14192)
    #dbg_value(ptr undef, !2567, !DIExpression(DW_OP_deref), !14192)
    #dbg_value(ptr undef, !2568, !DIExpression(DW_OP_deref), !14192)
  %i.c = tail call i8 @llvm.umax.i8(i8 %.val.i, i8 %.val8.i), !dbg !14229
  %..i.i = zext i8 %i.c to i32, !dbg !14229
    #dbg_value(i8 %.val10.i, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14194)
    #dbg_value(i8 %.val10.i, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14194)
    #dbg_value(i8 %.val9.i, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14194)
    #dbg_value(i8 %.val9.i, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14194)
    #dbg_value(ptr undef, !2572, !DIExpression(DW_OP_deref), !14194)
    #dbg_value(ptr undef, !2573, !DIExpression(DW_OP_deref), !14194)
  %i.d = tail call i8 @llvm.umin.i8(i8 %.val9.i, i8 %.val10.i), !dbg !14230
  %..i11.i = zext i8 %i.d to i32, !dbg !14230
    #dbg_value(i32 %..i11.i, !2558, !DIExpression(), !14182)
  %i.e = add nuw nsw i32 %..i11.i, 1, !dbg !14231
  %.not = icmp samesign ult i32 %i.e, %..i.i, !dbg !14232
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14233

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 %.val8.i, !14212, !DIExpression(), !14216)
    #dbg_value(i8 %.val.i, !14213, !DIExpression(), !14216)
    #dbg_value(i8 %.val8.i, !2533, !DIExpression(), !14197)
    #dbg_value(i8 %.val8.i, !2533, !DIExpression(), !14197)
    #dbg_value(i8 %.val.i, !2534, !DIExpression(), !14197)
    #dbg_value(i8 %.val.i, !2534, !DIExpression(), !14197)
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !14197)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14197)
  %..i = tail call noundef i8 @llvm.umin.i8(i8 %.val.i, i8 %.val8.i), !dbg !14234 ; 2 uses
    #dbg_value(i8 %..i, !14206, !DIExpression(), !14217)
    #dbg_value(i8 %.val10.i, !14218, !DIExpression(), !14222)
    #dbg_value(i8 %.val9.i, !14219, !DIExpression(), !14222)
    #dbg_value(i8 %.val10.i, !2527, !DIExpression(), !14200)
    #dbg_value(i8 %.val10.i, !2527, !DIExpression(), !14200)
    #dbg_value(i8 %.val9.i, !2529, !DIExpression(), !14200)
    #dbg_value(i8 %.val9.i, !2529, !DIExpression(), !14200)
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !14200)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !14200)
  %..i12 = tail call noundef i8 @llvm.umax.i8(i8 %.val9.i, i8 %.val10.i), !dbg !14235 ; 2 uses
    #dbg_value(i8 %..i12, !14207, !DIExpression(), !14223)
    #dbg_value(i8 %..i, !2349, !DIExpression(), !14202)
    #dbg_value(i8 %..i, !2349, !DIExpression(), !14202)
    #dbg_value(i8 %..i12, !2350, !DIExpression(), !14202)
    #dbg_value(i8 %..i12, !2350, !DIExpression(), !14202)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14203)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14203)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14202)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14202)
  %..i13 = tail call i8 @llvm.umin.i8(i8 %..i, i8 %..i12), !dbg !14236
  %.3.i = tail call i8 @llvm.umax.i8(i8 %..i, i8 %..i12), !dbg !14236
    #dbg_value(i8 %.3.i, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14203)
    #dbg_value(i8 %..i13, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14203)
  br label %bb.c, !dbg !14237

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i8 [ %.3.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.3.0 = phi i8 [ %..i13, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !14209
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i24, !dbg !14237
  %.sroa.4.0.insert.shift = shl nuw i24 %.sroa.4.0.insert.ext, 16, !dbg !14237
  %.sroa.3.0.insert.ext = zext i8 %.sroa.3.0 to i24, !dbg !14237
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8, !dbg !14237
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift, !dbg !14237
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i24, !dbg !14237
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext, !dbg !14237
  ret i24 %.sroa.0.0.insert.insert, !dbg !14237
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i8, i8 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval6createB6_(i8 noundef %0, i8 noundef %1) unnamed_addr #6 !dbg !433 {
bb.a:
    #dbg_value(i8 %0, !2349, !DIExpression(), !14238)
    #dbg_value(i8 %0, !2349, !DIExpression(), !14238)
    #dbg_value(i8 %1, !2350, !DIExpression(), !14238)
    #dbg_value(i8 %1, !2350, !DIExpression(), !14238)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14239)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14239)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14238)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14238)
  %. = tail call i8 @llvm.umin.i8(i8 %0, i8 %1), !dbg !14240
  %.3 = tail call i8 @llvm.umax.i8(i8 %0, i8 %1), !dbg !14240
    #dbg_value(i8 %.3, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14239)
end_hunk_0
