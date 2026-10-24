Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.10?download=true
inline.NumInlined: 352
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB2_3DFA7builder:bb.a
_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder3new.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false), !dbg !8382
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !8382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.k, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false), !dbg !8382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8380, !noalias !8376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8380, !noalias !8376
  ret void, !dbg !8383
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs10_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_9PatternID4iter(i64 noundef %0) unnamed_addr #0 !dbg !578 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(i64 %0, !3339, !DIExpression(), !8387)
    #dbg_value(i64 %0, !3341, !DIExpression(), !8385)
  %i.b = icmp ult i64 %0, 2147483648, !dbg !8388
  br i1 %i.b, label %_RNvMs1e_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_13PatternIDIter3new.exit, label %bb.b, !dbg !8388, !prof !2658

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr @6, !3344, !DIExpression(), !8386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8389
  store ptr @6, ptr %i.a, align 8, !dbg !8389
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8389
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !8389
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20, !dbg !8390
  unreachable, !dbg !8390

_RNvMs1e_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_13PatternIDIter3new.exit: ; preds = %bb.a
  %i.c = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1, !dbg !8391
  ret { i64, i64 } %i.c, !dbg !8392
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1H_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson12literal_trie5StateEE3newBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8394 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !8424, !DIExpression(), !8399)
    #dbg_value(ptr %1, !8420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8430)
    #dbg_value(ptr %2, !8420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8430)
    #dbg_value(ptr undef, !8424, !DIExpression(), !8399)
    #dbg_value(i64 48, !8431, !DIExpression(), !8407)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !8428, !DIExpression(), !8408)
    #dbg_value(ptr %2, !8446, !DIExpression(), !8409)
    #dbg_value(ptr %1, !8447, !DIExpression(), !8409)
    #dbg_value(ptr %2, !8440, !DIExpression(), !8410)
    #dbg_value(ptr %1, !8441, !DIExpression(), !8410)
    #dbg_value(ptr %1, !8435, !DIExpression(), !8411)
    #dbg_value(ptr %2, !8434, !DIExpression(), !8411)
  %i.b = ptrtoint ptr %2 to i64, !dbg !8450
  %i.c = ptrtoint ptr %1 to i64, !dbg !8450
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !8450       ; 2 uses
    #dbg_value(i64 poison, !3457, !DIExpression(), !8413)
    #dbg_value(i64 poison, !3462, !DIExpression(), !8415)
  %i.e = icmp ult i64 %i.d, 103079215104, !dbg !8451
  br i1 %i.e, label %_RNvMs1r_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateID4iter.exit, label %bb.b, !dbg !8451, !prof !2658

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr @6, !3465, !DIExpression(), !8416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8452
  store ptr @6, ptr %i.a, align 8, !dbg !8452
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8452
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !8452
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20, !dbg !8453
  unreachable, !dbg !8453

_RNvMs1r_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateID4iter.exit: ; preds = %bb.a
  %i.f = udiv exact i64 %i.d, 48, !dbg !8450
    #dbg_value(i64 %i.f, !3457, !DIExpression(), !8413)
    #dbg_value(i64 %i.f, !3462, !DIExpression(), !8415)
    #dbg_value(i64 0, !8421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8449)
    #dbg_value(i64 %i.f, !8421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8449)
  store ptr %1, ptr %0, align 8, !dbg !8454
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8454
  store ptr %2, ptr %i.g, align 8, !dbg !8454
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8454
  store i64 0, ptr %i.h, align 8, !dbg !8454
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8454
  store i64 %i.f, ptr %i.i, align 8, !dbg !8454
  ret void, !dbg !8455
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1H_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson3nfa5StateEE3newBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8457 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !8487, !DIExpression(), !8462)
    #dbg_value(ptr %1, !8483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8493)
    #dbg_value(ptr %2, !8483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8493)
    #dbg_value(ptr undef, !8487, !DIExpression(), !8462)
    #dbg_value(i64 24, !8494, !DIExpression(), !8470)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !8491, !DIExpression(), !8471)
    #dbg_value(ptr %2, !8509, !DIExpression(), !8472)
    #dbg_value(ptr %1, !8510, !DIExpression(), !8472)
    #dbg_value(ptr %2, !8503, !DIExpression(), !8473)
    #dbg_value(ptr %1, !8504, !DIExpression(), !8473)
    #dbg_value(ptr %1, !8498, !DIExpression(), !8474)
    #dbg_value(ptr %2, !8497, !DIExpression(), !8474)
  %i.b = ptrtoint ptr %2 to i64, !dbg !8513
  %i.c = ptrtoint ptr %1 to i64, !dbg !8513
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !8513       ; 2 uses
    #dbg_value(i64 poison, !3457, !DIExpression(), !8476)
    #dbg_value(i64 poison, !3462, !DIExpression(), !8478)
  %i.e = icmp ult i64 %i.d, 51539607552, !dbg !8514
  br i1 %i.e, label %_RNvMs1r_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateID4iter.exit, label %bb.b, !dbg !8514, !prof !2658

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr @6, !3465, !DIExpression(), !8479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8515
  store ptr @6, ptr %i.a, align 8, !dbg !8515
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8515
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !8515
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20, !dbg !8516
  unreachable, !dbg !8516

_RNvMs1r_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateID4iter.exit: ; preds = %bb.a
  %i.f = udiv exact i64 %i.d, 24, !dbg !8513
    #dbg_value(i64 %i.f, !3457, !DIExpression(), !8476)
    #dbg_value(i64 %i.f, !3462, !DIExpression(), !8478)
    #dbg_value(i64 0, !8484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8512)
    #dbg_value(i64 %i.f, !8484, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8512)
  store ptr %1, ptr %0, align 8, !dbg !8517
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8517
  store ptr %2, ptr %i.g, align 8, !dbg !8517
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8517
  store i64 0, ptr %i.h, align 8, !dbg !8517
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8517
  store i64 %i.f, ptr %i.i, align 8, !dbg !8517
  ret void, !dbg !8518
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1H_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson7builder5StateEE3newBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8520 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !8550, !DIExpression(), !8525)
    #dbg_value(ptr %1, !8546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8556)
    #dbg_value(ptr %2, !8546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8556)
    #dbg_value(ptr undef, !8550, !DIExpression(), !8525)
    #dbg_value(i64 32, !8557, !DIExpression(), !8533)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !8554, !DIExpression(), !8534)
    #dbg_value(ptr %2, !8572, !DIExpression(), !8535)
    #dbg_value(ptr %1, !8573, !DIExpression(), !8535)
    #dbg_value(ptr %2, !8566, !DIExpression(), !8536)
    #dbg_value(ptr %1, !8567, !DIExpression(), !8536)
    #dbg_value(ptr %1, !8561, !DIExpression(), !8537)
    #dbg_value(ptr %2, !8560, !DIExpression(), !8537)
  %i.b = ptrtoint ptr %2 to i64, !dbg !8577
  %i.c = ptrtoint ptr %1 to i64, !dbg !8577
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !8577       ; 2 uses
    #dbg_value(i64 %i.d, !3457, !DIExpression(DW_OP_constu, 5, DW_OP_shr, DW_OP_stack_value), !8539)
    #dbg_value(i64 %i.d, !3462, !DIExpression(DW_OP_constu, 5, DW_OP_shr, DW_OP_stack_value), !8541)
  %i.e = icmp ult i64 %i.d, 68719476736, !dbg !8578
  br i1 %i.e, label %_RNvMs1r_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateID4iter.exit, label %bb.b, !dbg !8578, !prof !2658

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr @6, !3465, !DIExpression(), !8542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8579
  store ptr @6, ptr %i.a, align 8, !dbg !8579
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8579
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !8579
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20, !dbg !8580
  unreachable, !dbg !8580

_RNvMs1r_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateID4iter.exit: ; preds = %bb.a
  %i.f = lshr exact i64 %i.d, 5, !dbg !8577
    #dbg_value(i64 %i.f, !3457, !DIExpression(), !8539)
    #dbg_value(i64 %i.f, !3462, !DIExpression(), !8541)
    #dbg_value(i64 0, !8547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8576)
    #dbg_value(i64 %i.f, !8547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8576)
  store ptr %1, ptr %0, align 8, !dbg !8581
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8581
  store ptr %2, ptr %i.g, align 8, !dbg !8581
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8581
  store i64 0, ptr %i.h, align 8, !dbg !8581
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8581
  store i64 %i.f, ptr %i.i, align 8, !dbg !8581
  ret void, !dbg !8582
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(352) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !625 {
bb.a:
    #dbg_value(ptr %0, !3503, !DIExpression(), !8594)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !8598
  %i.b = load i64, ptr %i.a, align 8, !dbg !8598, !noundef !1285
    #dbg_value(ptr %0, !3506, !DIExpression(), !8596)
  %i.c = load i64, ptr %0, align 8, !dbg !8599, !range !2667, !noundef !1285
  %i.d = trunc nuw i64 %i.c to i1, !dbg !8600
    #dbg_value(ptr poison, !3522, !DIExpression(), !8584)
    #dbg_value(i64 0, !3530, !DIExpression(), !8584)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !8585)
  br i1 %i.d, label %bb.b, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa14SearchProgressE6map_orjNCNvMs1_BL_NtBL_5Cache16search_total_len0EBP_.exit, !dbg !8601

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8600
    #dbg_value(ptr %i.e, !3522, !DIExpression(), !8584)
    #dbg_value(ptr %i.e, !3532, !DIExpression(), !8586)
  %.val.i = load i64, ptr %i.e, align 8, !dbg !8602, !alias.scope !8597, !noundef !1285
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8602
  %.val6.i = load i64, ptr %i.f, align 8, !dbg !8602, !alias.scope !8597, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !8590)
    #dbg_value(ptr poison, !3537, !DIExpression(), !8591)
    #dbg_value(ptr poison, !3539, !DIExpression(), !8593)
  %i.g = sub nsw i64 %.val.i, %.val6.i, !dbg !8603
  %.sroa.0.0.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.g, i1 true), !dbg !8603
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa14SearchProgressE6map_orjNCNvMs1_BL_NtBL_5Cache16search_total_len0EBP_.exit, !dbg !8604

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa14SearchProgressE6map_orjNCNvMs1_BL_NtBL_5Cache16search_total_len0EBP_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ], !dbg !8605
  %i.h = add i64 %.sroa.02.0.i, %i.b, !dbg !8598
  ret i64 %i.h, !dbg !8606
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 8 captures(none) dereferenceable(352) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8608 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [352 x i8], align 8               ; 18 uses
    #dbg_value(ptr %1, !8653, !DIExpression(), !8656)
    #dbg_declare(ptr %i.k, !8654, !DIExpression(), !8657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !8725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8661
  store i64 0, ptr %i.j, align 8, !dbg !8726
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !8726
  store ptr inttoptr (i64 4 to ptr), ptr %i.l, align 8, !dbg !8726
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !8726
  store i64 0, ptr %i.m, align 8, !dbg !8726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8662
  store i64 0, ptr %i.i, align 8, !dbg !8727
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !8727
  store ptr inttoptr (i64 4 to ptr), ptr %i.n, align 8, !dbg !8727
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !8727
  store i64 0, ptr %i.o, align 8, !dbg !8727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !8666
  store i64 0, ptr %i.h, align 8, !dbg !8728
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !8728
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !dbg !8728
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !8728
  store i64 0, ptr %i.q, align 8, !dbg !8728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !8671
  %i.r = invoke { i64, i64 } @_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @9)
          to label %bb.c unwind label %bb.b, !dbg !8729 ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEEB1E_.exit: ; preds = %.body, %bb.b
  %.pn = phi { ptr, i32 } [ %i.s, %bb.b ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #21
          to label %bb.q unwind label %bb.o, !dbg !8730

bb.b:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEEB1E_.exit

bb.c:                                             ; preds = %bb.a
  %i.t = extractvalue { i64, i64 } %i.r, 0, !dbg !8731
  %i.u = extractvalue { i64, i64 } %i.r, 1, !dbg !8731
    #dbg_value(i64 %i.t, !8682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8688)
    #dbg_value(i64 %i.u, !8682, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8688)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @11, i64 32, i1 false), !dbg !8732
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !8732
  store i64 %i.t, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !8732
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !8732
  store i64 %i.u, ptr %.sroa.57.0..sroa_idx, align 8, !dbg !8732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !8733
    #dbg_value(ptr %1, !8689, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !8692)
    #dbg_value(ptr %1, !8693, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !8696)
    #dbg_value(ptr %1, !8697, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !8700)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 688, !dbg !8734
  %i.w = load ptr, ptr %i.v, align 16, !dbg !8734, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.w, !8702, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !8705)
    #dbg_value(ptr %i.w, !8706, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !8709)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 336, !dbg !8735
  %i.y = load i64, ptr %i.x, align 16, !dbg !8735, !noundef !1285 ; 5 uses
    #dbg_value(i64 %i.y, !8710, !DIExpression(), !8624)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !8736, !noalias !8715
    #dbg_value(i64 %i.y, !8716, !DIExpression(), !8630)
    #dbg_declare(ptr %i.c, !8720, !DIExpression(), !8631)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8737, !noalias !8722
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !8738
  store i64 0, ptr %i.z, align 8, !dbg !8738, !noalias !8722
  store i64 0, ptr %i.c, align 8, !dbg !8738, !noalias !8722
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !8738
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !8738, !noalias !8722
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !8738
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !8738
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !8738
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !dbg !8738, !noalias !8722
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !8738, !noalias !8722
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !8738
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !8738, !noalias !8722
    #dbg_value(ptr %i.c, !3566, !DIExpression(), !8635)
    #dbg_value(i64 %i.y, !3570, !DIExpression(), !8635)
  %i.ab = icmp ult i64 %i.y, 2147483648, !dbg !8739
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !8739, !prof !2658

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr @6, !3572, !DIExpression(), !8636)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8740, !noalias !8723
  store ptr @6, ptr %i.b, align 8, !dbg !8740, !noalias !8723
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8740
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !8740, !noalias !8723
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @48, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #20
          to label %.noexc.i.i unwind label %bb.f, !dbg !8741, !noalias !8722

.noexc.i.i:                                       ; preds = %bb.d
  unreachable, !dbg !8741

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.y, i32 noundef 0)
          to label %.noexc7.i.i unwind label %bb.f, !dbg !8742, !noalias !8722

.noexc7.i.i:                                      ; preds = %bb.e
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %i.y, i32 noundef 0)
          to label %bb.h unwind label %bb.f, !dbg !8743, !noalias !8722

bb.f:                                             ; preds = %.noexc7.i.i, %bb.e, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_set9SparseSetEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #21
          to label %.body unwind label %bb.g, !dbg !8744, !noalias !8722

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !8745, !noalias !8722
  unreachable, !dbg !8745

bb.h:                                             ; preds = %.noexc7.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !8746, !noalias !8715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8744, !noalias !8722
    #dbg_value(i64 %i.y, !8716, !DIExpression(), !8640)
    #dbg_declare(ptr %i.a, !8720, !DIExpression(), !8641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8747, !noalias !8724
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !8748
  store i64 0, ptr %i.ae, align 8, !dbg !8748, !noalias !8724
  store i64 0, ptr %i.a, align 8, !dbg !8748, !noalias !8724
  %.sroa.4.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8748
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !dbg !8748, !noalias !8724
  %.sroa.5.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8748
  %.sroa.42.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !8748
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i3.i, i8 0, i64 16, i1 false), !dbg !8748, !noalias !8724
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i4.i, align 8, !dbg !8748, !noalias !8724
  %.sroa.53.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !8748
  store i64 0, ptr %.sroa.53.0..sroa_idx.i5.i, align 8, !dbg !8748, !noalias !8724
    #dbg_value(ptr %i.a, !3566, !DIExpression(), !8645)
    #dbg_value(i64 %i.y, !3570, !DIExpression(), !8645)
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.y, i32 noundef 0)
          to label %.noexc7.i8.i unwind label %bb.i, !dbg !8749, !noalias !8724

.noexc7.i8.i:                                     ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !8748
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.y, i32 noundef 0)
          to label %bb.l unwind label %bb.i, !dbg !8750, !noalias !8724

bb.i:                                             ; preds = %.noexc7.i8.i, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_set9SparseSetEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #21
          to label %.body.i unwind label %bb.j, !dbg !8751, !noalias !8724

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !8752, !noalias !8724
  unreachable, !dbg !8752

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_set9SparseSetEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #21
          to label %.body unwind label %bb.k, !dbg !8753, !noalias !8715

bb.k:                                             ; preds = %.body.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !8754, !noalias !8715
  unreachable, !dbg !8754

.body:                                            ; preds = %bb.f, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %.body.i ], [ %i.ac, %bb.f ]
    #dbg_value(ptr %i.g, !3111, !DIExpression(), !8647)
    #dbg_value(ptr %i.g, !3118, !DIExpression(), !8649)
    #dbg_value(ptr %i.g, !3125, !DIExpression(), !8651)
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEEB1E_.exit unwind label %bb.o, !dbg !8755

bb.l:                                             ; preds = %.noexc7.i8.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !8756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !dbg !8757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8751, !noalias !8724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !8756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8753, !noalias !8715
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !8758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !8758
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !8758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !8758
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 72, !dbg !8758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !8758
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy10init_cache:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.ar, %bb.b ], [ 12, %bb.a ], !dbg !10311
    #dbg_value(i64 %.sroa.0.0, !10290, !DIExpression(), !10370)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10777
  %i.at = load ptr, ptr %i.as, align 8, !dbg !10777, !nonnull !1285, !align !3651, !noundef !1285 ; 52 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48, !dbg !10777
    #dbg_value(ptr %i.au, !10394, !DIExpression(), !10398)
    #dbg_value(ptr %i.au, !10399, !DIExpression(), !10403)
    #dbg_value(i64 %.sroa.0.0, !10395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10398)
    #dbg_value(i64 %.sroa.0.0, !10400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10403)
    #dbg_value(i32 -2147483648, !10395, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10398)
    #dbg_value(i32 -2147483648, !10400, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10403)
  tail call void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB21_7sources6repeat6RepeatBG_EEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %.sroa.0.0, i32 noundef -2147483648), !dbg !10778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !10779
  %i.av = tail call { ptr, i64 } @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State4dead(), !dbg !10780 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0, !dbg !10780 ; 14 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1, !dbg !10780 ; 6 uses
  store ptr %i.aw, ptr %i.ag, align 8, !dbg !10780
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !10780
  store i64 %i.ax, ptr %i.ay, align 8, !dbg !10780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !10781
    #dbg_value(ptr %i.ag, !10339, !DIExpression(), !10336)
    #dbg_value(ptr %i.ag, !10341, !DIExpression(), !10404)
    #dbg_value(ptr %i.aw, !10332, !DIExpression(), !10405)
    #dbg_value(ptr %i.aw, !10347, !DIExpression(), !10351)
  %i.az = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !dbg !10782
    #dbg_value(i64 %i.az, !10342, !DIExpression(), !10406)
  %i.ba = icmp slt i64 %i.az, 0, !dbg !10783
  br i1 %i.ba, label %bb.ap, label %bb.d, !dbg !10783

.body147.thread245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ab, %.invoke456, %bb.s, %bb.w, %bb.u, %bb.f
  %lpad.loopexit.split-lp498 = landingpad { ptr, i32 }
          cleanup
  br label %.body147.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.aw, ptr %i.z, align 8, !noalias !10407
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  store i64 %i.ax, ptr %i.bb, align 8, !noalias !10407
    #dbg_value(ptr %0, !10408, !DIExpression(), !8967)
    #dbg_declare(ptr %i.z, !10415, !DIExpression(), !8968)
    #dbg_declare(ptr poison, !10416, !DIExpression(), !8969)
    #dbg_declare(ptr %i.y, !10423, !DIExpression(), !8970)
    #dbg_value(ptr poison, !10426, !DIExpression(), !8975)
    #dbg_value(ptr poison, !10431, !DIExpression(), !8978)
    #dbg_value(i64 1, !10434, !DIExpression(), !8986)
    #dbg_value(i8 0, !10436, !DIExpression(), !8986)
    #dbg_value(i64 1, !10443, !DIExpression(), !8989)
    #dbg_value(i8 0, !10445, !DIExpression(), !8989)
    #dbg_value(ptr poison, !3713, !DIExpression(), !8991)
    #dbg_value(ptr poison, !3721, !DIExpression(), !8993)
    #dbg_value(ptr poison, !3718, !DIExpression(), !8991)
    #dbg_value(ptr %i.at, !3727, !DIExpression(), !8995)
    #dbg_value(i64 4, !3730, !DIExpression(), !8999)
    #dbg_value(i64 1, !3730, !DIExpression(), !9004)
    #dbg_value(ptr %i.at, !3766, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9006)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 40, !dbg !10784 ; 10 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !10784, !alias.scope !10447, !noalias !10407, !noundef !1285 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 2305843009213693952, !dbg !10785
  tail call void @llvm.assume(i1 %i.be), !dbg !10786, !noalias !10407
    #dbg_value(ptr %i.at, !3766, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9010)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 64, !dbg !10787 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !10787, !alias.scope !10447, !noalias !10407, !noundef !1285 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 2305843009213693952, !dbg !10788
  tail call void @llvm.assume(i1 %i.bh), !dbg !10789, !noalias !10407
    #dbg_value(ptr %i.at, !3774, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9012)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 88, !dbg !10790 ; 12 uses
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !10790, !alias.scope !10447, !noalias !10407, !noundef !1285 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 576460752303423488, !dbg !10791
  tail call void @llvm.assume(i1 %i.bk), !dbg !10792, !noalias !10407
  %i.bl = shl nuw nsw i64 %i.bj, 4, !dbg !10793
    #dbg_value(ptr %i.at, !3781, !DIExpression(DW_OP_plus_uconst, 280, DW_OP_stack_value), !9014)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 304, !dbg !10794 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !10794, !alias.scope !10447, !noalias !10407, !noundef !1285
  %i.bo = mul i64 %i.bn, 20, !dbg !10795
    #dbg_value(ptr %i.at, !3796, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9018)
    #dbg_value(ptr %i.at, !3802, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9020)
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9022)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 112, !dbg !10796 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !10796, !alias.scope !10447, !noalias !10407, !noundef !1285 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 2305843009213693952, !dbg !10797
  tail call void @llvm.assume(i1 %i.br), !dbg !10798, !noalias !10407
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !9024)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 136, !dbg !10799 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !10799, !alias.scope !10447, !noalias !10407, !noundef !1285 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 2305843009213693952, !dbg !10800
  tail call void @llvm.assume(i1 %i.bu), !dbg !10801, !noalias !10407
    #dbg_value(ptr %i.at, !3802, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !9026)
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !9028)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 168, !dbg !10802 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !10802, !alias.scope !10447, !noalias !10407, !noundef !1285 ; 2 uses
  %i.bx = icmp ult i64 %i.bw, 2305843009213693952, !dbg !10803
  tail call void @llvm.assume(i1 %i.bx), !dbg !10804, !noalias !10407
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !9030)
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 192, !dbg !10805 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !dbg !10805, !alias.scope !10447, !noalias !10407, !noundef !1285 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 2305843009213693952, !dbg !10806
  tail call void @llvm.assume(i1 %i.ca), !dbg !10807, !noalias !10407
    #dbg_value(ptr %i.at, !3743, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !9031)
    #dbg_value(ptr %i.at, !3740, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !9032)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 208, !dbg !10808 ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !10808, !range !3814, !alias.scope !10447, !noalias !10407, !noundef !1285
    #dbg_value(ptr %i.at, !3763, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !9033)
    #dbg_value(ptr %i.at, !3757, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !9034)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 232, !dbg !10809 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !10809, !range !3814, !alias.scope !10447, !noalias !10407, !noundef !1285
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 328, !dbg !10810 ; 9 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !10810, !alias.scope !10447, !noalias !10407, !noundef !1285
  %i.ch = add nuw nsw i64 %i.bg, %i.bd, !dbg !10811
  %i.ci = add nuw nsw i64 %i.ch, %i.bq, !dbg !10812
  %i.cj = add nuw nsw i64 %i.ci, %i.bt, !dbg !10813
  %i.ck = add nuw i64 %i.cj, %i.bw, !dbg !10814
  %i.cl = add nuw i64 %i.ck, %i.bz, !dbg !10814
  %reass.add.i.i = add i64 %i.cl, %i.cc, !dbg !10814
  %reass.mul.i.i = shl i64 %reass.add.i.i, 2, !dbg !10814
    #dbg_value(i64 %i.ax, !3725, !DIExpression(), !8993)
    #dbg_value(ptr %i.ah, !3816, !DIExpression(), !9036)
    #dbg_value(ptr %i.ah, !3819, !DIExpression(), !9038)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 696, !dbg !10815 ; 10 uses
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !10815, !noalias !10407, !noundef !1285
  %i.co = and i64 %i.cn, 63, !dbg !10816
  %i.cp = shl i64 4, %i.co, !dbg !10817
  %i.cq = add i64 %i.ax, 36, !dbg !10817          ; 3 uses
  %i.cr = add i64 %i.bl, %i.cq, !dbg !10817
  %i.cs = add i64 %i.cr, %i.bo, !dbg !10814
  %i.ct = add i64 %i.cs, %i.ce, !dbg !10814
  %i.cu = add i64 %i.ct, %i.cg, !dbg !10814
  %i.cv = add i64 %i.cu, %reass.mul.i.i, !dbg !10814
  %i.cw = add i64 %i.cv, %i.cp, !dbg !10818
    #dbg_value(!DIArgList(i64 %i.cv, i64 %i.ax, i64 %i.cp), !3719, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 36, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !9039)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ah, i64 704, !dbg !10819 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 16, !dbg !10819, !noalias !10407, !noundef !1285
  %.not = icmp ugt i64 %i.cw, %i.cy, !dbg !10820
  br i1 %.not, label %bb.e, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit, !dbg !10821

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !3823, !DIExpression(), !9041)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9044)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9044)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9047)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9047)
    #dbg_value(ptr %i.ah, !3837, !DIExpression(), !9048)
    #dbg_value(ptr %i.ah, !3854, !DIExpression(), !9049)
    #dbg_value(ptr %i.ah, !3857, !DIExpression(), !9050)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 64, !dbg !10822
  %i.da = load i64, ptr %i.cz, align 16, !dbg !10822, !range !2651, !noalias !10448, !noundef !1285
    #dbg_value(i64 %i.da, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9044)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9044)
  %i.db = icmp eq i64 %i.da, 1, !dbg !10823
  br i1 %i.db, label %bb.g, label %bb.f, !dbg !10823

bb.f:                                             ; preds = %bb.l, %bb.g, %bb.e
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge unwind label %.body147.thread245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10824, !inline_history !9053

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge: ; preds = %bb.f
  %.pre433 = load i64, ptr %i.bc, align 8, !dbg !10825, !noalias !10449
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit, !dbg !10824

bb.g:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 72, !dbg !10822
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !10822, !noalias !10448
    #dbg_value(i64 %i.dd, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9044)
    #dbg_value(i64 %i.dd, !3838, !DIExpression(), !9058)
  %i.de = getelementptr inbounds nuw i8, ptr %i.at, i64 336, !dbg !10826
  %i.df = load i64, ptr %i.de, align 8, !dbg !10826, !noalias !10448, !noundef !1285
  %.not25.i = icmp ult i64 %i.df, %i.dd, !dbg !10826
  br i1 %.not25.i, label %bb.f, label %bb.h, !dbg !10826

bb.h:                                             ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 80, !dbg !10827
  %i.dh = load i64, ptr %i.dg, align 16, !dbg !10827, !range !2651, !noalias !10448, !noundef !1285
  %i.di = getelementptr inbounds nuw i8, ptr %i.ah, i64 88, !dbg !10827
  %i.dj = load i64, ptr %i.di, align 8, !dbg !10827, !noalias !10448
    #dbg_value(i64 %i.dh, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9047)
    #dbg_value(i64 %i.dj, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9047)
  %i.dk = icmp eq i64 %i.dh, 1, !dbg !10828
  br i1 %i.dk, label %bb.i, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, !dbg !10828

bb.i:                                             ; preds = %bb.h
    #dbg_value(i64 %i.dj, !3839, !DIExpression(), !9059)
    #dbg_value(i64 %i.dj, !3870, !DIExpression(), !9061)
    #dbg_value(i64 %i.dj, !3874, !DIExpression(), !9063)
    #dbg_value(i64 %i.dj, !3881, !DIExpression(), !9065)
    #dbg_value(ptr %i.at, !3503, !DIExpression(), !9067)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.at, i64 344, !dbg !10829
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !10829, !alias.scope !10450, !noalias !10448, !noundef !1285
    #dbg_value(ptr %i.at, !3506, !DIExpression(), !9071)
  %i.dn = load i64, ptr %i.at, align 8, !dbg !10830, !range !2667, !alias.scope !10450, !noalias !10448, !noundef !1285
  %i.do = trunc nuw i64 %i.dn to i1, !dbg !10831
    #dbg_value(ptr poison, !3522, !DIExpression(), !9073)
    #dbg_value(i64 0, !3530, !DIExpression(), !9073)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !9074)
  br i1 %i.do, label %bb.j, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i, !dbg !10832

bb.j:                                             ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !10831
    #dbg_value(ptr %i.dp, !3522, !DIExpression(), !9073)
    #dbg_value(ptr %i.dp, !3532, !DIExpression(), !9075)
  %.val.i.i.i = load i64, ptr %i.dp, align 8, !dbg !10833, !alias.scope !10451, !noalias !10448, !noundef !1285
  %i.dq = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !10833
  %.val6.i.i.i = load i64, ptr %i.dq, align 8, !dbg !10833, !alias.scope !10451, !noalias !10448, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !9079)
    #dbg_value(ptr poison, !3537, !DIExpression(), !9080)
    #dbg_value(ptr poison, !3539, !DIExpression(), !9082)
  %i.dr = sub nsw i64 %.val.i.i.i, %.val6.i.i.i, !dbg !10834
  %.sroa.0.0.i.i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.dr, i1 true), !dbg !10834
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i, !dbg !10835

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.j ], [ 0, %bb.i ], !dbg !10836
  %i.ds = add i64 %.sroa.02.0.i.i.i, %i.dm, !dbg !10829
    #dbg_value(i64 %i.ds, !3840, !DIExpression(), !9083)
    #dbg_value(i64 %i.bj, !3871, !DIExpression(), !9061)
    #dbg_value(i64 %i.bj, !3877, !DIExpression(), !9063)
    #dbg_value(i64 %i.bj, !3887, !DIExpression(), !9065)
  %i.dt = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dj, i64 %i.bj), !dbg !10837 ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 0, !dbg !10837
  %i.dv = extractvalue { i64, i1 } %i.dt, 1, !dbg !10837
    #dbg_value(i1 %i.dv, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9084)
    #dbg_value(i1 %i.dv, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9086)
    #dbg_value(i64 %i.du, !3841, !DIExpression(), !9087)
    #dbg_value(i64 %i.du, !3878, !DIExpression(), !9084)
  br i1 %i.dv, label %bb.k, label %bb.l, !dbg !10838, !prof !3300

bb.k:                                             ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i
    #dbg_value(i64 -1, !3841, !DIExpression(), !9087)
    #dbg_value(i64 -1, !3878, !DIExpression(), !9084)
  br label %bb.l, !dbg !10839

bb.l:                                             ; preds = %bb.k, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i
  %.sroa.014.0.i = phi i64 [ -1, %bb.k ], [ %i.du, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i ], !dbg !10840
    #dbg_value(i64 %.sroa.014.0.i, !3878, !DIExpression(), !9084)
    #dbg_value(i64 %.sroa.014.0.i, !3841, !DIExpression(), !9087)
  %i.dw = icmp ult i64 %i.ds, %.sroa.014.0.i, !dbg !10841
  br i1 %i.dw, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, label %bb.f, !dbg !10841

_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit: ; preds = %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge, %bb.d
  %i.dx = phi i64 [ %.pre433, %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge ], [ %i.bd, %bb.d ], !dbg !10825 ; 3 uses
    #dbg_value(ptr %0, !3864, !DIExpression(), !9088)
    #dbg_value(ptr %i.at, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9089)
    #dbg_value(i64 %i.dx, !3897, !DIExpression(), !9091)
    #dbg_value(i64 %i.dx, !3915, !DIExpression(), !9093)
  %i.dy = icmp ult i64 %i.dx, 2305843009213693952, !dbg !10842
  tail call void @llvm.assume(i1 %i.dy), !dbg !10843
  %i.dz = icmp samesign ugt i64 %i.dx, 134217727, !dbg !10844
  br i1 %i.dz, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i, !dbg !10844

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i: ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit
    #dbg_value(ptr %0, !3823, !DIExpression(), !9095)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9098)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9098)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9101)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9101)
    #dbg_value(ptr %i.ah, !3837, !DIExpression(), !9102)
    #dbg_value(ptr %i.ah, !3854, !DIExpression(), !9103)
    #dbg_value(ptr %i.ah, !3857, !DIExpression(), !9104)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ah, i64 64, !dbg !10845
  %i.eb = load i64, ptr %i.ea, align 16, !dbg !10845, !range !2651, !noalias !10452, !noundef !1285
    #dbg_value(i64 %i.eb, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9098)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9098)
  %i.ec = icmp eq i64 %i.eb, 1, !dbg !10846
  br i1 %i.ec, label %bb.m, label %bb.s, !dbg !10846

bb.m:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ah, i64 72, !dbg !10845
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !10845, !noalias !10452
    #dbg_value(i64 %i.ee, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9098)
    #dbg_value(i64 %i.ee, !3838, !DIExpression(), !9107)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.at, i64 336, !dbg !10847
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !10847, !noalias !10452, !noundef !1285
  %.not25.i.i = icmp ult i64 %i.eg, %i.ee, !dbg !10847
  br i1 %.not25.i.i, label %bb.s, label %bb.n, !dbg !10847

bb.n:                                             ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ah, i64 80, !dbg !10848
  %i.ei = load i64, ptr %i.eh, align 16, !dbg !10848, !range !2651, !noalias !10452, !noundef !1285
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ah, i64 88, !dbg !10848
  %i.ek = load i64, ptr %i.ej, align 8, !dbg !10848, !noalias !10452
    #dbg_value(i64 %i.ei, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9101)
    #dbg_value(i64 %i.ek, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9101)
  %i.el = icmp eq i64 %i.ei, 1, !dbg !10849
  br i1 %i.el, label %bb.o, label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge, !dbg !10849

bb.o:                                             ; preds = %bb.n
    #dbg_value(i64 %i.ek, !3839, !DIExpression(), !9108)
    #dbg_value(i64 %i.ek, !3870, !DIExpression(), !9110)
    #dbg_value(i64 %i.ek, !3874, !DIExpression(), !9112)
    #dbg_value(i64 %i.ek, !3881, !DIExpression(), !9114)
    #dbg_value(ptr %i.at, !3503, !DIExpression(), !9116)
  %i.em = getelementptr inbounds nuw i8, ptr %i.at, i64 344, !dbg !10850
  %i.en = load i64, ptr %i.em, align 8, !dbg !10850, !alias.scope !10453, !noalias !10452, !noundef !1285
    #dbg_value(ptr %i.at, !3506, !DIExpression(), !9120)
  %i.eo = load i64, ptr %i.at, align 8, !dbg !10851, !range !2667, !alias.scope !10453, !noalias !10452, !noundef !1285
  %i.ep = trunc nuw i64 %i.eo to i1, !dbg !10852
    #dbg_value(ptr poison, !3522, !DIExpression(), !9122)
    #dbg_value(i64 0, !3530, !DIExpression(), !9122)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !9123)
  br i1 %i.ep, label %bb.p, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i342, !dbg !10853

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !10852
    #dbg_value(ptr %i.eq, !3522, !DIExpression(), !9122)
    #dbg_value(ptr %i.eq, !3532, !DIExpression(), !9124)
  %.val.i.i.i344 = load i64, ptr %i.eq, align 8, !dbg !10854, !alias.scope !10454, !noalias !10452, !noundef !1285
  %i.er = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !10854
  %.val6.i.i.i345 = load i64, ptr %i.er, align 8, !dbg !10854, !alias.scope !10454, !noalias !10452, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !9128)
    #dbg_value(ptr poison, !3537, !DIExpression(), !9129)
    #dbg_value(ptr poison, !3539, !DIExpression(), !9131)
  %i.es = sub nsw i64 %.val.i.i.i344, %.val6.i.i.i345, !dbg !10855
  %.sroa.0.0.i.i.i.i344 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.es, i1 true), !dbg !10855
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i342, !dbg !10856

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i342: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i343 = phi i64 [ %.sroa.0.0.i.i.i.i344, %bb.p ], [ 0, %bb.o ], !dbg !10857
  %i.et = add i64 %.sroa.02.0.i.i.i343, %i.en, !dbg !10850
    #dbg_value(i64 %i.et, !3840, !DIExpression(), !9132)
    #dbg_value(ptr %i.at, !3920, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9134)
  %i.eu = load i64, ptr %i.bi, align 8, !dbg !10858, !noalias !10452, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.eu, !3871, !DIExpression(), !9110)
    #dbg_value(i64 %i.eu, !3877, !DIExpression(), !9112)
    #dbg_value(i64 %i.eu, !3887, !DIExpression(), !9114)
  %i.ev = icmp ult i64 %i.eu, 576460752303423488, !dbg !10859
  tail call void @llvm.assume(i1 %i.ev), !dbg !10860
  %i.ew = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ek, i64 %i.eu), !dbg !10861 ; 2 uses
  %i.ex = extractvalue { i64, i1 } %i.ew, 0, !dbg !10861
  %i.ey = extractvalue { i64, i1 } %i.ew, 1, !dbg !10861
    #dbg_value(i1 %i.ey, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9135)
    #dbg_value(i1 %i.ey, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9137)
    #dbg_value(i64 %i.ex, !3841, !DIExpression(), !9138)
    #dbg_value(i64 %i.ex, !3878, !DIExpression(), !9135)
  br i1 %i.ey, label %bb.q, label %bb.r, !dbg !10862, !prof !3300

bb.q:                                             ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i342
    #dbg_value(i64 -1, !3841, !DIExpression(), !9138)
    #dbg_value(i64 -1, !3878, !DIExpression(), !9135)
  br label %bb.r, !dbg !10863

bb.r:                                             ; preds = %bb.q, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i342
  %.sroa.014.0.i.i = phi i64 [ -1, %bb.q ], [ %i.ex, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i342 ], !dbg !10864
    #dbg_value(i64 %.sroa.014.0.i.i, !3878, !DIExpression(), !9135)
    #dbg_value(i64 %.sroa.014.0.i.i, !3841, !DIExpression(), !9138)
  %i.ez = icmp ult i64 %i.et, %.sroa.014.0.i.i, !dbg !10865
  br i1 %i.ez, label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge, label %bb.s, !dbg !10865

bb.s:                                             ; preds = %bb.r, %bb.m, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc unwind label %.body147.thread245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10866, !inline_history !9139

.noexc:                                           ; preds = %bb.s
    #dbg_value(ptr %i.at, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9141)
  %i.fa = load i64, ptr %i.bc, align 8, !dbg !10867, !noalias !10449, !noundef !1285 ; 4 uses
    #dbg_value(i64 %i.fa, !3897, !DIExpression(), !9143)
    #dbg_value(i64 %i.fa, !3915, !DIExpression(), !9145)
  %i.fb = icmp ult i64 %i.fa, 2305843009213693952, !dbg !10868
  tail call void @llvm.assume(i1 %i.fb), !dbg !10869
  %i.fc = icmp samesign ugt i64 %i.fa, 134217727, !dbg !10870
  br i1 %i.fc, label %bb.t, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i, !dbg !10870

bb.t:                                             ; preds = %.noexc
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9147)
    #dbg_value(i64 %i.fa, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9147)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9147)
    #dbg_declare(ptr %i.f, !3929, !DIExpression(), !9148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10871, !noalias !10455
  store i64 %i.fa, ptr %i.f, align 8, !dbg !10871, !noalias !10455
  br label %.invoke456, !dbg !10872

.invoke456:                                       ; preds = %bb.aa, %bb.z, %bb.t
  %i.fd = phi ptr [ %i.f, %bb.t ], [ %i.m, %bb.aa ], [ %i.n, %bb.z ]
  %i.fe = phi ptr [ @26, %bb.t ], [ @41, %bb.aa ], [ @40, %bb.z ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe) #20
          to label %.cont457 unwind label %.body147.thread245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10873, !inline_history !9139

.cont457:                                         ; preds = %.invoke456
  unreachable

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge: ; preds = %bb.r, %bb.n
    #dbg_value(i32 1, !10456, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9156)
    #dbg_value(i32 poison, !10456, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9156)
  %.pre325 = load ptr, ptr %i.z, align 8, !dbg !10874, !alias.scope !10460
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, !dbg !10875

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i: ; preds = %.noexc, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit
  %.sroa.3.0.i.in = phi i64 [ %i.dx, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit ], [ %i.fa, %.noexc ]
    #dbg_value(i32 0, !10456, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9156)
    #dbg_value(i32 poison, !10456, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9156)
    #dbg_value(i32 poison, !10419, !DIExpression(DW_OP_constu, 18446744071562067968, DW_OP_or, DW_OP_stack_value), !9168)
    #dbg_value(ptr %i.z, !10462, !DIExpression(), !9171)
    #dbg_value(ptr %i.z, !10464, !DIExpression(), !9174)
    #dbg_value(ptr %i.z, !10466, !DIExpression(), !9177)
    #dbg_value(ptr %i.z, !10468, !DIExpression(), !9180)
  %i.ff = load i64, ptr %i.bb, align 8, !dbg !10876, !noalias !10407, !noundef !1285
    #dbg_value(ptr poison, !10470, !DIExpression(), !9185)
  %.not.i = icmp eq i64 %i.ff, 0, !dbg !10877
  br i1 %.not.i, label %bb.u, label %bb.w, !dbg !10877

bb.u:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.v unwind label %.body147.thread245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10877, !inline_history !9186

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i
  %.sroa.3.0.i = trunc nuw nsw i64 %.sroa.3.0.i.in to i32, !dbg !10878
    #dbg_value(i32 %.sroa.3.0.i, !10456, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9156)
    #dbg_value(i32 %.sroa.3.0.i, !10419, !DIExpression(DW_OP_constu, 18446744071562067968, DW_OP_or, DW_OP_stack_value), !9168)
  %i.fg = load ptr, ptr %i.z, align 8, !dbg !10876, !noalias !10407, !nonnull !1285, !noundef !1285
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16, !dbg !10877
  %i.fi = load i8, ptr %i.fh, align 8, !dbg !10877, !noundef !1285
  %i.fj = and i8 %i.fi, 1, !dbg !10877
  %.not63.i = icmp eq i8 %i.fj, 0, !dbg !10877
  %spec.select.i.v = select i1 %.not63.i, i32 -2147483648, i32 -2013265920, !dbg !10879
  %spec.select.i = or disjoint i32 %spec.select.i.v, %.sroa.3.0.i, !dbg !10879 ; 4 uses
    #dbg_value(i32 %spec.select.i, !10419, !DIExpression(), !9168)
    #dbg_value(ptr %i.at, !10474, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9189)
    #dbg_value(ptr %i.at, !10477, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9192)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !10880 ; 3 uses
    #dbg_value(ptr %i.fk, !10474, !DIExpression(), !9189)
    #dbg_value(ptr %i.fk, !10477, !DIExpression(), !9192)
    #dbg_value(ptr %i.ah, !10480, !DIExpression(), !9195)
    #dbg_value(ptr %i.ah, !10482, !DIExpression(), !9198)
  %i.fl = load i64, ptr %i.cm, align 8, !dbg !10881, !noundef !1285
  %i.fm = and i64 %i.fl, 63, !dbg !10882
  %i.fn = shl nuw i64 1, %i.fm, !dbg !10882
    #dbg_value(i64 %i.fn, !10475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9189)
    #dbg_value(i64 %i.fn, !10478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9192)
    #dbg_value(i32 -2147483648, !10475, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9189)
    #dbg_value(i32 -2147483648, !10478, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9192)
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB21_7sources6repeat6RepeatBG_EEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk, i64 noundef %i.fn, i32 noundef -2147483648)
          to label %bb.x unwind label %.body147.thread245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10883, !inline_history !9186

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %i.ah, !10429, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !9199)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ah, i64 656, !dbg !10884 ; 9 uses
    #dbg_value(ptr %i.fo, !10427, !DIExpression(), !8975)
    #dbg_value(ptr %i.fo, !10432, !DIExpression(), !8978)
  %i.fp = load i128, ptr %i.fo, align 1, !dbg !10885
  %i.fq = getelementptr i8, ptr %i.fo, i64 16, !dbg !10885
  %i.fr = load i128, ptr %i.fq, align 1, !dbg !10885
  %i.fs = or i128 %i.fp, %i.fr, !dbg !10885
  %i.ft = icmp ne i128 %i.fs, 0, !dbg !10885
  %i.fu = zext i1 %i.ft to i32, !dbg !10885
  %i.fv = icmp eq i32 %i.fu, 0, !dbg !10885
    #dbg_value(ptr poison, !3961, !DIExpression(), !9201)
    #dbg_value(i32 %spec.select.i, !3966, !DIExpression(), !9201)
    #dbg_value(ptr poison, !3968, !DIExpression(), !9203)
    #dbg_value(ptr poison, !3972, !DIExpression(), !9203)
  %i.fw = icmp eq i32 %spec.select.i, -2147483648 ; 2 uses
  %or.cond = select i1 %i.fv, i1 true, i1 %i.fw, !dbg !10886
  br i1 %or.cond, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread, label %bb.y, !dbg !10886

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr poison, !3968, !DIExpression(), !9205)
    #dbg_value(ptr poison, !3613, !DIExpression(), !9207)
    #dbg_value(ptr %i.ah, !3974, !DIExpression(), !9209)
  %i.fx = load i64, ptr %i.cm, align 8, !dbg !10887, !noalias !10484, !noundef !1285
  %i.fy = and i64 %i.fx, 63, !dbg !10888          ; 4 uses
    #dbg_value(!DIArgList(i64 1, i64 %i.fy), !3977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !9213)
    #dbg_value(!DIArgList(i64 1, i64 %i.fy), !3980, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !9215)
  %i.fz = icmp samesign ugt i64 %i.fy, 26, !dbg !10889
  br i1 %i.fz, label %bb.z, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i, !dbg !10889

bb.z:                                             ; preds = %bb.y
  %i.ga = shl nuw i64 1, %i.fy, !dbg !10888
    #dbg_value(i64 %i.ga, !3977, !DIExpression(), !9213)
    #dbg_value(i64 %i.ga, !3980, !DIExpression(), !9215)
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9217)
    #dbg_value(i64 %i.ga, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9217)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9217)
    #dbg_declare(ptr %i.n, !3929, !DIExpression(), !9218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10890, !noalias !10485
  store i64 %i.ga, ptr %i.n, align 8, !dbg !10890, !noalias !10485
  br label %.invoke456, !dbg !10891

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i: ; preds = %bb.y
    #dbg_value(!DIArgList(i64 1, i64 %i.fy), !3924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !9217)
    #dbg_value(i64 undef, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9217)
    #dbg_value(i32 0, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9217)
    #dbg_declare(ptr %i.n, !3929, !DIExpression(), !9218)
    #dbg_value(ptr poison, !3983, !DIExpression(), !9223)
    #dbg_value(!DIArgList(i64 1, i64 %i.fy), !3980, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1073741824, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9225)
    #dbg_value(ptr poison, !3972, !DIExpression(), !9205)
    #dbg_value(ptr poison, !3968, !DIExpression(), !9227)
    #dbg_value(ptr poison, !3989, !DIExpression(), !9229)
    #dbg_value(!DIArgList(i64 2, i64 %i.fy), !3993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !9231)
    #dbg_value(!DIArgList(i64 2, i64 %i.fy), !3996, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !9233)
  %i.gb = icmp eq i64 %i.fy, 26, !dbg !10892
  br i1 %i.gb, label %bb.aa, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit, !dbg !10892

bb.aa:                                            ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i
    #dbg_value(i64 134217728, !3993, !DIExpression(), !9231)
    #dbg_value(i64 134217728, !3996, !DIExpression(), !9233)
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9235)
    #dbg_value(i64 134217728, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9235)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9235)
    #dbg_declare(ptr %i.m, !3929, !DIExpression(), !9236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10893, !noalias !10486
  store i64 134217728, ptr %i.m, align 8, !dbg !10893, !noalias !10486
  br label %.invoke456, !dbg !10894

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread: ; preds = %bb.ae, %bb.x
    #dbg_value(ptr %i.z, !10487, !DIExpression(), !9242)
    #dbg_value(ptr %i.z, !10466, !DIExpression(), !9244)
    #dbg_value(ptr %i.z, !10468, !DIExpression(), !9246)
  %i.gc = load i64, ptr %i.bb, align 8, !dbg !10895, !noalias !10407, !noundef !1285
  %i.gd = load i64, ptr %i.cf, align 8, !dbg !10896, !noundef !1285
  %i.ge = add i64 %i.gd, %i.gc, !dbg !10896
  store i64 %i.ge, ptr %i.cf, align 8, !dbg !10896
    #dbg_value(ptr %i.at, !10491, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9250)
    #dbg_value(ptr %i.z, !10441, !DIExpression(), !9251)
    #dbg_value(ptr %i.z, !10438, !DIExpression(), !9252)
    #dbg_value(ptr %i.z, !10468, !DIExpression(), !9254)
  %i.gf = load ptr, ptr %i.z, align 8, !dbg !10897, !noalias !10407, !nonnull !1285, !noundef !1285
end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy10init_cache:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !10945, !inline_history !9186
  unreachable, !dbg !10945

bb.ap:                                            ; preds = %bb.c
  tail call void @llvm.trap(), !dbg !10946
  unreachable, !dbg !10946

bb.aq:                                            ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !10947
    #dbg_value(i32 1, !10510, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9360)
    #dbg_value(i32 undef, !10510, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9360)
    #dbg_declare(ptr %i.a, !10515, !DIExpression(), !9361)
  br label %.invoke338.a, !dbg !10948

.invoke338.a:                                     ; preds = %bb.ec, %bb.dz, %bb.dw, %bb.cg, %bb.aq
  %i.hq = phi ptr [ %i.a, %bb.aq ], [ %i.a, %bb.cg ], [ %i.a, %bb.dw ], [ %i.t, %bb.dz ], [ %i.s, %bb.ec ]
  %i.hr = phi ptr [ @4, %bb.aq ], [ @4, %bb.cg ], [ @4, %bb.dw ], [ @2, %bb.dz ], [ @2, %bb.ec ]
  %i.hs = phi ptr [ @15, %bb.aq ], [ @16, %bb.cg ], [ @17, %bb.dw ], [ @40, %bb.dz ], [ @41, %bb.ec ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.hq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hs) #20
          to label %.cont339.a unwind label %.body189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10949

.cont339.a:                                       ; preds = %.invoke338.a
  unreachable

bb.ar:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !10947
    #dbg_value(i32 0, !10510, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9360)
    #dbg_value(i32 %spec.select.i, !10510, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9360)
    #dbg_declare(ptr %i.a, !10515, !DIExpression(), !9361)
  store i32 %spec.select.i, ptr %i.af, align 4, !dbg !10950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !10951
    #dbg_value(ptr %i.ag, !10339, !DIExpression(), !10517)
    #dbg_value(ptr %i.ag, !10341, !DIExpression(), !10518)
    #dbg_value(ptr %i.aw, !10332, !DIExpression(), !10519)
    #dbg_value(ptr %i.aw, !10347, !DIExpression(), !10360)
  %i.ht = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !dbg !10952
    #dbg_value(i64 %i.ht, !10343, !DIExpression(), !10520)
  %i.hu = icmp slt i64 %i.ht, 0, !dbg !10953
  br i1 %i.hu, label %bb.cf, label %bb.as, !dbg !10953

.body160.thread268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bt, %bb.br, %.invoke, %bb.bh, %bb.bl, %bb.bj, %bb.au
  %lpad.loopexit.split-lp495 = landingpad { ptr, i32 }
          cleanup
  br label %.body160.thread

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.aw, ptr %i.x, align 8, !noalias !10521
  %i.hv = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  store i64 %i.ax, ptr %i.hv, align 8, !noalias !10521
    #dbg_value(ptr %0, !10522, !DIExpression(), !9375)
    #dbg_declare(ptr %i.x, !10528, !DIExpression(), !9376)
    #dbg_declare(ptr poison, !10529, !DIExpression(), !9377)
    #dbg_declare(ptr %i.w, !10536, !DIExpression(), !9378)
    #dbg_value(ptr poison, !10539, !DIExpression(), !9383)
    #dbg_value(ptr poison, !10544, !DIExpression(), !9386)
    #dbg_value(i64 1, !10547, !DIExpression(), !9394)
    #dbg_value(i8 0, !10549, !DIExpression(), !9394)
    #dbg_value(i64 1, !10556, !DIExpression(), !9397)
    #dbg_value(i8 0, !10558, !DIExpression(), !9397)
    #dbg_value(ptr poison, !3713, !DIExpression(), !9399)
    #dbg_value(ptr poison, !3721, !DIExpression(), !9401)
    #dbg_value(ptr poison, !3718, !DIExpression(), !9399)
    #dbg_value(ptr %i.at, !3727, !DIExpression(), !9403)
    #dbg_value(i64 4, !3730, !DIExpression(), !9407)
    #dbg_value(i64 1, !3730, !DIExpression(), !9412)
    #dbg_value(ptr %i.at, !3766, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9414)
  %i.hw = load i64, ptr %i.bc, align 8, !dbg !10954, !alias.scope !10560, !noalias !10521, !noundef !1285 ; 3 uses
  %i.hx = icmp ult i64 %i.hw, 2305843009213693952, !dbg !10955
  call void @llvm.assume(i1 %i.hx), !dbg !10956, !noalias !10521
    #dbg_value(ptr %i.at, !3766, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9418)
  %i.hy = load i64, ptr %i.bf, align 8, !dbg !10957, !alias.scope !10560, !noalias !10521, !noundef !1285 ; 2 uses
  %i.hz = icmp ult i64 %i.hy, 2305843009213693952, !dbg !10958
  call void @llvm.assume(i1 %i.hz), !dbg !10959, !noalias !10521
    #dbg_value(ptr %i.at, !3774, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9420)
  %i.ia = load i64, ptr %i.bi, align 8, !dbg !10960, !alias.scope !10560, !noalias !10521, !noundef !1285 ; 3 uses
  %i.ib = icmp ult i64 %i.ia, 576460752303423488, !dbg !10961
  call void @llvm.assume(i1 %i.ib), !dbg !10962, !noalias !10521
  %i.ic = shl nuw nsw i64 %i.ia, 4, !dbg !10963
    #dbg_value(ptr %i.at, !3781, !DIExpression(DW_OP_plus_uconst, 280, DW_OP_stack_value), !9422)
  %i.id = load i64, ptr %i.bm, align 8, !dbg !10964, !alias.scope !10560, !noalias !10521, !noundef !1285
  %i.ie = mul i64 %i.id, 20, !dbg !10965
    #dbg_value(ptr %i.at, !3796, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9426)
    #dbg_value(ptr %i.at, !3802, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9428)
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9430)
  %i.if = load i64, ptr %i.bp, align 8, !dbg !10966, !alias.scope !10560, !noalias !10521, !noundef !1285 ; 2 uses
  %i.ig = icmp ult i64 %i.if, 2305843009213693952, !dbg !10967
  call void @llvm.assume(i1 %i.ig), !dbg !10968, !noalias !10521
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !9432)
  %i.ih = load i64, ptr %i.bs, align 8, !dbg !10969, !alias.scope !10560, !noalias !10521, !noundef !1285 ; 2 uses
  %i.ii = icmp ult i64 %i.ih, 2305843009213693952, !dbg !10970
  call void @llvm.assume(i1 %i.ii), !dbg !10971, !noalias !10521
    #dbg_value(ptr %i.at, !3802, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !9434)
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !9436)
  %i.ij = load i64, ptr %i.bv, align 8, !dbg !10972, !alias.scope !10560, !noalias !10521, !noundef !1285 ; 2 uses
  %i.ik = icmp ult i64 %i.ij, 2305843009213693952, !dbg !10973
  call void @llvm.assume(i1 %i.ik), !dbg !10974, !noalias !10521
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !9438)
  %i.il = load i64, ptr %i.by, align 8, !dbg !10975, !alias.scope !10560, !noalias !10521, !noundef !1285 ; 2 uses
  %i.im = icmp ult i64 %i.il, 2305843009213693952, !dbg !10976
  call void @llvm.assume(i1 %i.im), !dbg !10977, !noalias !10521
    #dbg_value(ptr %i.at, !3743, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !9439)
    #dbg_value(ptr %i.at, !3740, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !9440)
  %i.in = load i64, ptr %i.cb, align 8, !dbg !10978, !range !3814, !alias.scope !10560, !noalias !10521, !noundef !1285
    #dbg_value(ptr %i.at, !3763, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !9441)
    #dbg_value(ptr %i.at, !3757, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !9442)
  %i.io = load i64, ptr %i.cd, align 8, !dbg !10979, !range !3814, !alias.scope !10560, !noalias !10521, !noundef !1285
  %i.ip = load i64, ptr %i.cf, align 8, !dbg !10980, !alias.scope !10560, !noalias !10521, !noundef !1285
  %i.iq = add nuw nsw i64 %i.hy, %i.hw, !dbg !10981
  %i.ir = add nuw nsw i64 %i.iq, %i.if, !dbg !10982
  %i.is = add nuw nsw i64 %i.ir, %i.ih, !dbg !10983
  %i.it = add nuw i64 %i.is, %i.ij, !dbg !10984
  %i.iu = add nuw i64 %i.it, %i.il, !dbg !10984
  %reass.add.i.i182 = add i64 %i.iu, %i.in, !dbg !10984
  %reass.mul.i.i183 = shl i64 %reass.add.i.i182, 2, !dbg !10984
    #dbg_value(i64 %i.ax, !3725, !DIExpression(), !9401)
    #dbg_value(ptr %i.ah, !3816, !DIExpression(), !9444)
    #dbg_value(ptr %i.ah, !3819, !DIExpression(), !9446)
  %i.iv = load i64, ptr %i.cm, align 8, !dbg !10985, !noalias !10521, !noundef !1285
  %i.iw = and i64 %i.iv, 63, !dbg !10986
  %i.ix = shl i64 4, %i.iw, !dbg !10987
  %i.iy = add i64 %i.ic, %i.cq, !dbg !10987
  %i.iz = add i64 %i.iy, %i.ie, !dbg !10984
  %i.ja = add i64 %i.iz, %i.io, !dbg !10984
  %i.jb = add i64 %i.ja, %i.ip, !dbg !10984
  %i.jc = add i64 %i.jb, %reass.mul.i.i183, !dbg !10984
  %i.jd = add i64 %i.jc, %i.ix, !dbg !10988
    #dbg_value(!DIArgList(i64 %i.jc, i64 %i.ax, i64 %i.ix), !3719, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 36, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !9447)
  %i.je = load i64, ptr %i.cx, align 16, !dbg !10989, !noalias !10521, !noundef !1285
  %.not292 = icmp ugt i64 %i.jd, %i.je, !dbg !10990
  br i1 %.not292, label %bb.at, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181, !dbg !10991

bb.at:                                            ; preds = %bb.as
    #dbg_value(ptr %0, !3823, !DIExpression(), !9449)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9452)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9452)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9455)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9455)
    #dbg_value(ptr %i.ah, !3837, !DIExpression(), !9456)
    #dbg_value(ptr %i.ah, !3854, !DIExpression(), !9457)
    #dbg_value(ptr %i.ah, !3857, !DIExpression(), !9458)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ah, i64 64, !dbg !10992
  %i.jg = load i64, ptr %i.jf, align 16, !dbg !10992, !range !2651, !noalias !10561, !noundef !1285
    #dbg_value(i64 %i.jg, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9452)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9452)
  %i.jh = icmp eq i64 %i.jg, 1, !dbg !10993
  br i1 %i.jh, label %bb.av, label %bb.au, !dbg !10993

bb.au:                                            ; preds = %bb.ba, %bb.av, %bb.at
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181_crit_edge unwind label %.body160.thread268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10994, !inline_history !9461

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181_crit_edge: ; preds = %bb.au
  %.pre434 = load i64, ptr %i.bc, align 8, !dbg !10995, !noalias !10562
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181, !dbg !10994

bb.av:                                            ; preds = %bb.at
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ah, i64 72, !dbg !10992
  %i.jj = load i64, ptr %i.ji, align 8, !dbg !10992, !noalias !10561
    #dbg_value(i64 %i.jj, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9452)
    #dbg_value(i64 %i.jj, !3838, !DIExpression(), !9466)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.at, i64 336, !dbg !10996
  %i.jl = load i64, ptr %i.jk, align 8, !dbg !10996, !noalias !10561, !noundef !1285
  %.not25.i172 = icmp ult i64 %i.jl, %i.jj, !dbg !10996
  br i1 %.not25.i172, label %bb.au, label %bb.aw, !dbg !10996

bb.aw:                                            ; preds = %bb.av
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80, !dbg !10997
  %i.jn = load i64, ptr %i.jm, align 16, !dbg !10997, !range !2651, !noalias !10561, !noundef !1285
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ah, i64 88, !dbg !10997
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !10997, !noalias !10561
    #dbg_value(i64 %i.jn, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9455)
    #dbg_value(i64 %i.jp, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9455)
  %i.jq = icmp eq i64 %i.jn, 1, !dbg !10998
  br i1 %i.jq, label %bb.ax, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181.thread, !dbg !10998

bb.ax:                                            ; preds = %bb.aw
    #dbg_value(i64 %i.jp, !3839, !DIExpression(), !9467)
    #dbg_value(i64 %i.jp, !3870, !DIExpression(), !9469)
    #dbg_value(i64 %i.jp, !3874, !DIExpression(), !9471)
    #dbg_value(i64 %i.jp, !3881, !DIExpression(), !9473)
    #dbg_value(ptr %i.at, !3503, !DIExpression(), !9475)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.at, i64 344, !dbg !10999
  %i.js = load i64, ptr %i.jr, align 8, !dbg !10999, !alias.scope !10563, !noalias !10561, !noundef !1285
    #dbg_value(ptr %i.at, !3506, !DIExpression(), !9479)
  %i.jt = load i64, ptr %i.at, align 8, !dbg !11000, !range !2667, !alias.scope !10563, !noalias !10561, !noundef !1285
  %i.ju = trunc nuw i64 %i.jt to i1, !dbg !11001
    #dbg_value(ptr poison, !3522, !DIExpression(), !9481)
    #dbg_value(i64 0, !3530, !DIExpression(), !9481)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !9482)
  br i1 %i.ju, label %bb.ay, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i173, !dbg !11002

bb.ay:                                            ; preds = %bb.ax
  %i.jv = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !11001
    #dbg_value(ptr %i.jv, !3522, !DIExpression(), !9481)
    #dbg_value(ptr %i.jv, !3532, !DIExpression(), !9483)
  %.val.i.i.i176 = load i64, ptr %i.jv, align 8, !dbg !11003, !alias.scope !10564, !noalias !10561, !noundef !1285
  %i.jw = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !11003
  %.val6.i.i.i177 = load i64, ptr %i.jw, align 8, !dbg !11003, !alias.scope !10564, !noalias !10561, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !9487)
    #dbg_value(ptr poison, !3537, !DIExpression(), !9488)
    #dbg_value(ptr poison, !3539, !DIExpression(), !9490)
  %i.jx = sub nsw i64 %.val.i.i.i176, %.val6.i.i.i177, !dbg !11004
  %.sroa.0.0.i.i.i.i178 = call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.jx, i1 true), !dbg !11004
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i173, !dbg !11005

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i173: ; preds = %bb.ay, %bb.ax
  %.sroa.02.0.i.i.i174 = phi i64 [ %.sroa.0.0.i.i.i.i178, %bb.ay ], [ 0, %bb.ax ], !dbg !11006
  %i.jy = add i64 %.sroa.02.0.i.i.i174, %i.js, !dbg !10999
    #dbg_value(i64 %i.jy, !3840, !DIExpression(), !9491)
    #dbg_value(i64 %i.ia, !3871, !DIExpression(), !9469)
    #dbg_value(i64 %i.ia, !3877, !DIExpression(), !9471)
    #dbg_value(i64 %i.ia, !3887, !DIExpression(), !9473)
  %i.jz = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jp, i64 %i.ia), !dbg !11007 ; 2 uses
  %i.ka = extractvalue { i64, i1 } %i.jz, 0, !dbg !11007
  %i.kb = extractvalue { i64, i1 } %i.jz, 1, !dbg !11007
    #dbg_value(i1 %i.kb, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9492)
    #dbg_value(i1 %i.kb, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9494)
    #dbg_value(i64 %i.ka, !3841, !DIExpression(), !9495)
    #dbg_value(i64 %i.ka, !3878, !DIExpression(), !9492)
  br i1 %i.kb, label %bb.az, label %bb.ba, !dbg !11008, !prof !3300

bb.az:                                            ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i173
    #dbg_value(i64 -1, !3841, !DIExpression(), !9495)
    #dbg_value(i64 -1, !3878, !DIExpression(), !9492)
  br label %bb.ba, !dbg !11009

bb.ba:                                            ; preds = %bb.az, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i173
  %.sroa.014.0.i175 = phi i64 [ -1, %bb.az ], [ %i.ka, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i173 ], !dbg !11010
    #dbg_value(i64 %.sroa.014.0.i175, !3878, !DIExpression(), !9492)
    #dbg_value(i64 %.sroa.014.0.i175, !3841, !DIExpression(), !9495)
  %i.kc = icmp ult i64 %i.jy, %.sroa.014.0.i175, !dbg !11011
  br i1 %i.kc, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181.thread, label %bb.au, !dbg !11011

_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181: ; preds = %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181_crit_edge, %bb.as
  %i.kd = phi i64 [ %.pre434, %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181_crit_edge ], [ %i.hw, %bb.as ], !dbg !10995 ; 3 uses
    #dbg_value(ptr %0, !3864, !DIExpression(), !9496)
    #dbg_value(ptr %i.at, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9497)
    #dbg_value(i64 %i.kd, !3897, !DIExpression(), !9499)
    #dbg_value(i64 %i.kd, !3915, !DIExpression(), !9501)
  %i.ke = icmp ult i64 %i.kd, 2305843009213693952, !dbg !11012
  call void @llvm.assume(i1 %i.ke), !dbg !11013
  %i.kf = icmp samesign ugt i64 %i.kd, 134217727, !dbg !11014
  br i1 %i.kf, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i351, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i352, !dbg !11014

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i351: ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181
    #dbg_value(ptr %0, !3823, !DIExpression(), !9503)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9506)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9506)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9509)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9509)
    #dbg_value(ptr %i.ah, !3837, !DIExpression(), !9510)
    #dbg_value(ptr %i.ah, !3854, !DIExpression(), !9511)
    #dbg_value(ptr %i.ah, !3857, !DIExpression(), !9512)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ah, i64 64, !dbg !11015
  %i.kh = load i64, ptr %i.kg, align 16, !dbg !11015, !range !2651, !noalias !10565, !noundef !1285
    #dbg_value(i64 %i.kh, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9506)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9506)
  %i.ki = icmp eq i64 %i.kh, 1, !dbg !11016
  br i1 %i.ki, label %bb.bb, label %bb.bh, !dbg !11016

bb.bb:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i351
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ah, i64 72, !dbg !11015
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !11015, !noalias !10565
    #dbg_value(i64 %i.kk, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9506)
    #dbg_value(i64 %i.kk, !3838, !DIExpression(), !9515)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.at, i64 336, !dbg !11017
  %i.km = load i64, ptr %i.kl, align 8, !dbg !11017, !noalias !10565, !noundef !1285
  %.not25.i.i353 = icmp ult i64 %i.km, %i.kk, !dbg !11017
  br i1 %.not25.i.i353, label %bb.bh, label %bb.bc, !dbg !11017

bb.bc:                                            ; preds = %bb.bb
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ah, i64 80, !dbg !11018
  %i.ko = load i64, ptr %i.kn, align 16, !dbg !11018, !range !2651, !noalias !10565, !noundef !1285
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ah, i64 88, !dbg !11018
  %i.kq = load i64, ptr %i.kp, align 8, !dbg !11018, !noalias !10565
    #dbg_value(i64 %i.ko, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9509)
    #dbg_value(i64 %i.kq, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9509)
  %i.kr = icmp eq i64 %i.ko, 1, !dbg !11019
  br i1 %i.kr, label %bb.bd, label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181.thread_crit_edge, !dbg !11019

bb.bd:                                            ; preds = %bb.bc
    #dbg_value(i64 %i.kq, !3839, !DIExpression(), !9516)
    #dbg_value(i64 %i.kq, !3870, !DIExpression(), !9518)
    #dbg_value(i64 %i.kq, !3874, !DIExpression(), !9520)
    #dbg_value(i64 %i.kq, !3881, !DIExpression(), !9522)
    #dbg_value(ptr %i.at, !3503, !DIExpression(), !9524)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.at, i64 344, !dbg !11020
  %i.kt = load i64, ptr %i.ks, align 8, !dbg !11020, !alias.scope !10566, !noalias !10565, !noundef !1285
    #dbg_value(ptr %i.at, !3506, !DIExpression(), !9528)
  %i.ku = load i64, ptr %i.at, align 8, !dbg !11021, !range !2667, !alias.scope !10566, !noalias !10565, !noundef !1285
  %i.kv = trunc nuw i64 %i.ku to i1, !dbg !11022
    #dbg_value(ptr poison, !3522, !DIExpression(), !9530)
    #dbg_value(i64 0, !3530, !DIExpression(), !9530)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !9531)
  br i1 %i.kv, label %bb.be, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i354, !dbg !11023

bb.be:                                            ; preds = %bb.bd
  %i.kw = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !11022
    #dbg_value(ptr %i.kw, !3522, !DIExpression(), !9530)
    #dbg_value(ptr %i.kw, !3532, !DIExpression(), !9532)
  %.val.i.i.i357 = load i64, ptr %i.kw, align 8, !dbg !11024, !alias.scope !10567, !noalias !10565, !noundef !1285
  %i.kx = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !11024
  %.val6.i.i.i358 = load i64, ptr %i.kx, align 8, !dbg !11024, !alias.scope !10567, !noalias !10565, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !9536)
    #dbg_value(ptr poison, !3537, !DIExpression(), !9537)
    #dbg_value(ptr poison, !3539, !DIExpression(), !9539)
  %i.ky = sub nsw i64 %.val.i.i.i357, %.val6.i.i.i358, !dbg !11025
  %.sroa.0.0.i.i.i.i356 = call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.ky, i1 true), !dbg !11025
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i354, !dbg !11026

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i354: ; preds = %bb.be, %bb.bd
  %.sroa.02.0.i.i.i355 = phi i64 [ %.sroa.0.0.i.i.i.i356, %bb.be ], [ 0, %bb.bd ], !dbg !11027
  %i.kz = add i64 %.sroa.02.0.i.i.i355, %i.kt, !dbg !11020
    #dbg_value(i64 %i.kz, !3840, !DIExpression(), !9540)
    #dbg_value(ptr %i.at, !3920, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9542)
  %i.la = load i64, ptr %i.bi, align 8, !dbg !11028, !noalias !10565, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.la, !3871, !DIExpression(), !9518)
    #dbg_value(i64 %i.la, !3877, !DIExpression(), !9520)
    #dbg_value(i64 %i.la, !3887, !DIExpression(), !9522)
  %i.lb = icmp ult i64 %i.la, 576460752303423488, !dbg !11029
  call void @llvm.assume(i1 %i.lb), !dbg !11030
  %i.lc = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.kq, i64 %i.la), !dbg !11031 ; 2 uses
  %i.ld = extractvalue { i64, i1 } %i.lc, 0, !dbg !11031
  %i.le = extractvalue { i64, i1 } %i.lc, 1, !dbg !11031
    #dbg_value(i1 %i.le, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9543)
    #dbg_value(i1 %i.le, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9545)
    #dbg_value(i64 %i.ld, !3841, !DIExpression(), !9546)
    #dbg_value(i64 %i.ld, !3878, !DIExpression(), !9543)
  br i1 %i.le, label %bb.bf, label %bb.bg, !dbg !11032, !prof !3300

bb.bf:                                            ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i354
    #dbg_value(i64 -1, !3841, !DIExpression(), !9546)
    #dbg_value(i64 -1, !3878, !DIExpression(), !9543)
  br label %bb.bg, !dbg !11033

bb.bg:                                            ; preds = %bb.bf, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i354
  %.sroa.014.0.i.i356 = phi i64 [ -1, %bb.bf ], [ %i.ld, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i354 ], !dbg !11034
    #dbg_value(i64 %.sroa.014.0.i.i356, !3878, !DIExpression(), !9543)
    #dbg_value(i64 %.sroa.014.0.i.i356, !3841, !DIExpression(), !9546)
  %i.lf = icmp ult i64 %i.kz, %.sroa.014.0.i.i356, !dbg !11035
  br i1 %i.lf, label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181.thread_crit_edge, label %bb.bh, !dbg !11035

bb.bh:                                            ; preds = %bb.bg, %bb.bb, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i351
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc361 unwind label %.body160.thread268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11036, !inline_history !9547

.noexc361:                                        ; preds = %bb.bh
    #dbg_value(ptr %i.at, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9549)
  %i.lg = load i64, ptr %i.bc, align 8, !dbg !11037, !noalias !10562, !noundef !1285 ; 4 uses
    #dbg_value(i64 %i.lg, !3897, !DIExpression(), !9551)
    #dbg_value(i64 %i.lg, !3915, !DIExpression(), !9553)
  %i.lh = icmp ult i64 %i.lg, 2305843009213693952, !dbg !11038
  call void @llvm.assume(i1 %i.lh), !dbg !11039
  %i.li = icmp samesign ugt i64 %i.lg, 134217727, !dbg !11040
  br i1 %i.li, label %bb.bi, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i352, !dbg !11040

bb.bi:                                            ; preds = %.noexc361
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9555)
    #dbg_value(i64 %i.lg, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9555)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9555)
    #dbg_declare(ptr %i.e, !3929, !DIExpression(), !9556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11041, !noalias !10568
  store i64 %i.lg, ptr %i.e, align 8, !dbg !11041, !noalias !10568
  br label %.invoke, !dbg !11042

.invoke:                                          ; preds = %bb.bq, %bb.bo, %bb.bi
  %i.lj = phi ptr [ %i.e, %bb.bi ], [ %i.j, %bb.bq ], [ %i.k, %bb.bo ]
  %i.lk = phi ptr [ @26, %bb.bi ], [ @41, %bb.bq ], [ @40, %bb.bo ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.lj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lk) #20
          to label %.cont unwind label %.body160.thread268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11043, !inline_history !9547

.cont:                                            ; preds = %.invoke
  unreachable

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181.thread_crit_edge: ; preds = %bb.bg, %bb.bc
    #dbg_value(i32 1, !10569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9564)
    #dbg_value(i32 poison, !10569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9564)
  %.pre324 = load ptr, ptr %i.x, align 8, !dbg !11044, !alias.scope !10573
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181.thread, !dbg !11045

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i352: ; preds = %.noexc361, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181
  %.sroa.3.0.i349.in = phi i64 [ %i.kd, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181 ], [ %i.lg, %.noexc361 ]
    #dbg_value(i32 0, !10569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9564)
    #dbg_value(i32 poison, !10569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9564)
    #dbg_value(i32 poison, !10532, !DIExpression(DW_OP_constu, 1073741824, DW_OP_or, DW_OP_stack_value), !9576)
    #dbg_value(ptr %i.x, !10575, !DIExpression(), !9579)
    #dbg_value(ptr %i.x, !10577, !DIExpression(), !9582)
    #dbg_value(ptr %i.x, !10579, !DIExpression(), !9585)
    #dbg_value(ptr %i.x, !10581, !DIExpression(), !9588)
  %i.ll = load i64, ptr %i.hv, align 8, !dbg !11046, !noalias !10521, !noundef !1285
    #dbg_value(ptr poison, !10583, !DIExpression(), !9593)
  %.not.i83 = icmp eq i64 %i.ll, 0, !dbg !11047
  br i1 %.not.i83, label %bb.bj, label %bb.bl, !dbg !11047

bb.bj:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i352
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.bk unwind label %.body160.thread268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11047, !inline_history !9594

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i352
  %.sroa.3.0.i349 = trunc nuw nsw i64 %.sroa.3.0.i349.in to i32, !dbg !11048
    #dbg_value(i32 %.sroa.3.0.i349, !10569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9564)
    #dbg_value(i32 %.sroa.3.0.i349, !10532, !DIExpression(DW_OP_constu, 1073741824, DW_OP_or, DW_OP_stack_value), !9576)
  %i.lm = load ptr, ptr %i.x, align 8, !dbg !11046, !noalias !10521, !nonnull !1285, !noundef !1285
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16, !dbg !11047
  %i.lo = load i8, ptr %i.ln, align 8, !dbg !11047, !noundef !1285
  %i.lp = and i8 %i.lo, 1, !dbg !11047
  %.not63.i84 = icmp eq i8 %i.lp, 0, !dbg !11047
  %spec.select.i85.v = select i1 %.not63.i84, i32 1073741824, i32 1207959552, !dbg !11049
  %spec.select.i85 = or disjoint i32 %spec.select.i85.v, %.sroa.3.0.i349, !dbg !11049 ; 8 uses
    #dbg_value(i32 %spec.select.i85, !10532, !DIExpression(), !9576)
    #dbg_value(ptr %i.fk, !10587, !DIExpression(), !9597)
    #dbg_value(ptr %i.fk, !10590, !DIExpression(), !9600)
    #dbg_value(ptr %i.ah, !10593, !DIExpression(), !9603)
    #dbg_value(ptr %i.ah, !10595, !DIExpression(), !9606)
  %i.lq = load i64, ptr %i.cm, align 8, !dbg !11050, !noundef !1285
  %i.lr = and i64 %i.lq, 63, !dbg !11051
  %i.ls = shl nuw i64 1, %i.lr, !dbg !11051
    #dbg_value(i64 %i.ls, !10588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9597)
    #dbg_value(i64 %i.ls, !10591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9600)
    #dbg_value(i32 -2147483648, !10588, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9597)
    #dbg_value(i32 -2147483648, !10591, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9600)
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB21_7sources6repeat6RepeatBG_EEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk, i64 noundef %i.ls, i32 noundef -2147483648)
          to label %bb.bm unwind label %.body160.thread268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11052, !inline_history !9594

bb.bm:                                            ; preds = %bb.bl
    #dbg_value(ptr %i.ah, !10542, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !9607)
    #dbg_value(ptr %i.fo, !10540, !DIExpression(), !9383)
    #dbg_value(ptr %i.fo, !10545, !DIExpression(), !9386)
  %i.lt = load i128, ptr %i.fo, align 1, !dbg !11053
  %i.lu = getelementptr i8, ptr %i.fo, i64 16, !dbg !11053
  %i.lv = load i128, ptr %i.lu, align 1, !dbg !11053
  %i.lw = or i128 %i.lt, %i.lv, !dbg !11053
  %i.lx = icmp ne i128 %i.lw, 0, !dbg !11053
  %i.ly = zext i1 %i.lx to i32, !dbg !11053
  %i.lz = icmp eq i32 %i.ly, 0, !dbg !11053
  br i1 %i.lz, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit170.thread, label %bb.bn, !dbg !11054

bb.bn:                                            ; preds = %bb.bm
    #dbg_value(ptr poison, !3961, !DIExpression(), !9609)
    #dbg_value(i32 %spec.select.i85, !3966, !DIExpression(), !9609)
    #dbg_value(ptr poison, !3968, !DIExpression(), !9611)
    #dbg_value(ptr poison, !3972, !DIExpression(), !9611)
    #dbg_value(ptr poison, !3968, !DIExpression(), !9613)
    #dbg_value(ptr poison, !3613, !DIExpression(), !9615)
    #dbg_value(ptr %i.ah, !3974, !DIExpression(), !9617)
  %i.ma = load i64, ptr %i.cm, align 8, !dbg !11055, !noalias !10597, !noundef !1285
  %i.mb = and i64 %i.ma, 63, !dbg !11056          ; 4 uses
  %i.mc = shl nuw i64 1, %i.mb, !dbg !11056       ; 2 uses
    #dbg_value(i64 %i.mc, !3977, !DIExpression(), !9621)
    #dbg_value(i64 %i.mc, !3980, !DIExpression(), !9623)
  %i.md = icmp samesign ugt i64 %i.mb, 26, !dbg !11057
  br i1 %i.md, label %bb.bo, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i165, !dbg !11057

bb.bo:                                            ; preds = %bb.bn
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9625)
    #dbg_value(i64 %i.mc, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9625)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9625)
    #dbg_declare(ptr %i.k, !3929, !DIExpression(), !9626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !11058, !noalias !10598
  store i64 %i.mc, ptr %i.k, align 8, !dbg !11058, !noalias !10598
  br label %.invoke, !dbg !11059

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i165: ; preds = %bb.bn
  %i.me = trunc nuw nsw i64 %i.mc to i32, !dbg !11060
    #dbg_value(i32 %i.me, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9625)
    #dbg_value(i64 undef, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9625)
    #dbg_value(i32 0, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9625)
    #dbg_declare(ptr %i.k, !3929, !DIExpression(), !9626)
    #dbg_value(ptr poison, !3983, !DIExpression(), !9631)
  %i.mf = or i32 %i.me, 1073741824, !dbg !11061
    #dbg_value(i32 %i.mf, !3980, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9633)
    #dbg_value(ptr poison, !3972, !DIExpression(), !9613)
  %i.mg = icmp eq i32 %spec.select.i85, %i.mf, !dbg !11062
  br i1 %i.mg, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit170.thread, label %bb.bp, !dbg !11063

bb.bp:                                            ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i165
    #dbg_value(ptr poison, !3968, !DIExpression(), !9635)
    #dbg_value(ptr poison, !3989, !DIExpression(), !9637)
    #dbg_value(!DIArgList(i64 2, i64 %i.mb), !3993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !9639)
    #dbg_value(!DIArgList(i64 2, i64 %i.mb), !3996, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !9641)
  %i.mh = icmp eq i64 %i.mb, 26, !dbg !11064
  br i1 %i.mh, label %bb.bq, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit170, !dbg !11064

bb.bq:                                            ; preds = %bb.bp
    #dbg_value(i64 134217728, !3993, !DIExpression(), !9639)
    #dbg_value(i64 134217728, !3996, !DIExpression(), !9641)
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9643)
    #dbg_value(i64 134217728, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9643)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9643)
    #dbg_declare(ptr %i.j, !3929, !DIExpression(), !9644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11065, !noalias !10599
  store i64 134217728, ptr %i.j, align 8, !dbg !11065, !noalias !10599
  br label %.invoke, !dbg !11066

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit170.thread: ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i165, %bb.bu, %bb.bm
    #dbg_value(ptr %i.x, !10600, !DIExpression(), !9650)
    #dbg_value(ptr %i.x, !10579, !DIExpression(), !9652)
    #dbg_value(ptr %i.x, !10581, !DIExpression(), !9654)
  %i.mi = load i64, ptr %i.hv, align 8, !dbg !11067, !noalias !10521, !noundef !1285
  %i.mj = load i64, ptr %i.cf, align 8, !dbg !11068, !noundef !1285
  %i.mk = add i64 %i.mj, %i.mi, !dbg !11068
  store i64 %i.mk, ptr %i.cf, align 8, !dbg !11068
    #dbg_value(ptr %i.at, !10604, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9658)
    #dbg_value(ptr %i.x, !10554, !DIExpression(), !9659)
    #dbg_value(ptr %i.x, !10551, !DIExpression(), !9660)
    #dbg_value(ptr %i.x, !10581, !DIExpression(), !9662)
  %i.ml = load ptr, ptr %i.x, align 8, !dbg !11069, !noalias !10521, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.ml, !10548, !DIExpression(), !9664)
    #dbg_value(ptr %i.ml, !10557, !DIExpression(), !9397)
end_hunk_2
begin_hunk_3_@_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy10init_cache:bb.a
bb.cd:                                            ; preds = %.body160.thread
    #dbg_value(i8 2, !2703, !DIExpression(), !9763)
  fence acquire, !dbg !11113
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x) #23
          to label %.body.thread unwind label %bb.ce, !dbg !11114

bb.ce:                                            ; preds = %bb.cd
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !11115, !inline_history !9594
  unreachable, !dbg !11115

bb.cf:                                            ; preds = %bb.ar
  call void @llvm.trap(), !dbg !11116
  unreachable, !dbg !11116

bb.cg:                                            ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit181.thread, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !11117
    #dbg_value(i32 1, !10510, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9765)
    #dbg_value(i32 undef, !10510, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9765)
    #dbg_declare(ptr %i.a, !10515, !DIExpression(), !9766)
  br label %.invoke338.a, !dbg !11118

bb.ch:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !11117
    #dbg_value(i32 0, !10510, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9765)
    #dbg_value(i32 %spec.select.i85, !10510, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9765)
    #dbg_declare(ptr %i.a, !10515, !DIExpression(), !9766)
  store i32 %spec.select.i85, ptr %i.ae, align 4, !dbg !11119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !11120
    #dbg_value(ptr %i.ag, !10339, !DIExpression(), !10623)
    #dbg_value(ptr %i.ag, !10341, !DIExpression(), !10624)
    #dbg_value(ptr %i.aw, !10332, !DIExpression(), !10625)
    #dbg_value(ptr %i.aw, !10347, !DIExpression(), !10369)
  %i.nt = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !dbg !11121
    #dbg_value(i64 %i.nt, !10344, !DIExpression(), !10626)
  %i.nu = icmp slt i64 %i.nt, 0, !dbg !11122
  br i1 %i.nu, label %bb.dv, label %bb.ci, !dbg !11122

.body189.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dj, %bb.dh, %.invoke458, %bb.cx, %bb.db, %bb.cz, %bb.ck
  %lpad.loopexit.split-lp492 = landingpad { ptr, i32 }
          cleanup
  br label %.body189.thread

.body189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i127, %.noexc131, %.lr.ph.i135, %.noexc139, %.noexc124, %bb.ek, %bb.ef, %.invoke340, %.invoke338.a, %bb.cb, %.noexc137, %.loopexit297, %.noexc129, %.loopexit300, %.noexc122, %bb.ee, %bb.cc, %bb.ds, %bb.am, %bb.al, %bb.dr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.aw, ptr %i.v, align 8, !noalias !10627
  %i.nv = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store i64 %i.ax, ptr %i.nv, align 8, !noalias !10627
    #dbg_value(ptr %0, !10628, !DIExpression(), !9780)
    #dbg_declare(ptr %i.v, !10634, !DIExpression(), !9781)
    #dbg_declare(ptr poison, !10635, !DIExpression(), !9782)
    #dbg_declare(ptr %i.u, !10642, !DIExpression(), !9783)
    #dbg_value(ptr poison, !10645, !DIExpression(), !9788)
    #dbg_value(ptr poison, !10650, !DIExpression(), !9791)
    #dbg_value(i64 1, !10653, !DIExpression(), !9799)
    #dbg_value(i8 0, !10655, !DIExpression(), !9799)
    #dbg_value(i64 1, !10662, !DIExpression(), !9802)
    #dbg_value(i8 0, !10664, !DIExpression(), !9802)
    #dbg_value(ptr poison, !3713, !DIExpression(), !9804)
    #dbg_value(ptr poison, !3721, !DIExpression(), !9806)
    #dbg_value(ptr poison, !3718, !DIExpression(), !9804)
    #dbg_value(ptr %i.at, !3727, !DIExpression(), !9808)
    #dbg_value(i64 4, !3730, !DIExpression(), !9812)
    #dbg_value(i64 1, !3730, !DIExpression(), !9817)
    #dbg_value(ptr %i.at, !3766, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9819)
  %i.nw = load i64, ptr %i.bc, align 8, !dbg !11123, !alias.scope !10666, !noalias !10627, !noundef !1285 ; 3 uses
  %i.nx = icmp ult i64 %i.nw, 2305843009213693952, !dbg !11124
  call void @llvm.assume(i1 %i.nx), !dbg !11125, !noalias !10627
    #dbg_value(ptr %i.at, !3766, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9823)
  %i.ny = load i64, ptr %i.bf, align 8, !dbg !11126, !alias.scope !10666, !noalias !10627, !noundef !1285 ; 2 uses
  %i.nz = icmp ult i64 %i.ny, 2305843009213693952, !dbg !11127
  call void @llvm.assume(i1 %i.nz), !dbg !11128, !noalias !10627
    #dbg_value(ptr %i.at, !3774, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9825)
  %i.oa = load i64, ptr %i.bi, align 8, !dbg !11129, !alias.scope !10666, !noalias !10627, !noundef !1285 ; 3 uses
  %i.ob = icmp ult i64 %i.oa, 576460752303423488, !dbg !11130
  call void @llvm.assume(i1 %i.ob), !dbg !11131, !noalias !10627
  %i.oc = shl nuw nsw i64 %i.oa, 4, !dbg !11132
    #dbg_value(ptr %i.at, !3781, !DIExpression(DW_OP_plus_uconst, 280, DW_OP_stack_value), !9827)
  %i.od = load i64, ptr %i.bm, align 8, !dbg !11133, !alias.scope !10666, !noalias !10627, !noundef !1285
  %i.oe = mul i64 %i.od, 20, !dbg !11134
    #dbg_value(ptr %i.at, !3796, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9831)
    #dbg_value(ptr %i.at, !3802, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9833)
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9835)
  %i.of = load i64, ptr %i.bp, align 8, !dbg !11135, !alias.scope !10666, !noalias !10627, !noundef !1285 ; 2 uses
  %i.og = icmp ult i64 %i.of, 2305843009213693952, !dbg !11136
  call void @llvm.assume(i1 %i.og), !dbg !11137, !noalias !10627
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !9837)
  %i.oh = load i64, ptr %i.bs, align 8, !dbg !11138, !alias.scope !10666, !noalias !10627, !noundef !1285 ; 2 uses
  %i.oi = icmp ult i64 %i.oh, 2305843009213693952, !dbg !11139
  call void @llvm.assume(i1 %i.oi), !dbg !11140, !noalias !10627
    #dbg_value(ptr %i.at, !3802, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !9839)
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !9841)
  %i.oj = load i64, ptr %i.bv, align 8, !dbg !11141, !alias.scope !10666, !noalias !10627, !noundef !1285 ; 2 uses
  %i.ok = icmp ult i64 %i.oj, 2305843009213693952, !dbg !11142
  call void @llvm.assume(i1 %i.ok), !dbg !11143, !noalias !10627
    #dbg_value(ptr %i.at, !3807, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !9843)
  %i.ol = load i64, ptr %i.by, align 8, !dbg !11144, !alias.scope !10666, !noalias !10627, !noundef !1285 ; 2 uses
  %i.om = icmp ult i64 %i.ol, 2305843009213693952, !dbg !11145
  call void @llvm.assume(i1 %i.om), !dbg !11146, !noalias !10627
    #dbg_value(ptr %i.at, !3743, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !9844)
    #dbg_value(ptr %i.at, !3740, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !9845)
  %i.on = load i64, ptr %i.cb, align 8, !dbg !11147, !range !3814, !alias.scope !10666, !noalias !10627, !noundef !1285
    #dbg_value(ptr %i.at, !3763, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !9846)
    #dbg_value(ptr %i.at, !3757, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !9847)
  %i.oo = load i64, ptr %i.cd, align 8, !dbg !11148, !range !3814, !alias.scope !10666, !noalias !10627, !noundef !1285
  %i.op = load i64, ptr %i.cf, align 8, !dbg !11149, !alias.scope !10666, !noalias !10627, !noundef !1285
  %i.oq = add nuw nsw i64 %i.ny, %i.nw, !dbg !11150
  %i.or = add nuw nsw i64 %i.oq, %i.of, !dbg !11151
  %i.os = add nuw nsw i64 %i.or, %i.oh, !dbg !11152
  %i.ot = add nuw i64 %i.os, %i.oj, !dbg !11153
  %i.ou = add nuw i64 %i.ot, %i.ol, !dbg !11153
  %reass.add.i.i211 = add i64 %i.ou, %i.on, !dbg !11153
  %reass.mul.i.i212 = shl i64 %reass.add.i.i211, 2, !dbg !11153
    #dbg_value(i64 %i.ax, !3725, !DIExpression(), !9806)
    #dbg_value(ptr %i.ah, !3816, !DIExpression(), !9849)
    #dbg_value(ptr %i.ah, !3819, !DIExpression(), !9851)
  %i.ov = load i64, ptr %i.cm, align 8, !dbg !11154, !noalias !10627, !noundef !1285
  %i.ow = and i64 %i.ov, 63, !dbg !11155
  %i.ox = shl i64 4, %i.ow, !dbg !11156
  %i.oy = add i64 %i.oc, %i.cq, !dbg !11156
  %i.oz = add i64 %i.oy, %i.oe, !dbg !11153
  %i.pa = add i64 %i.oz, %i.oo, !dbg !11153
  %i.pb = add i64 %i.pa, %i.op, !dbg !11153
  %i.pc = add i64 %i.pb, %reass.mul.i.i212, !dbg !11153
  %i.pd = add i64 %i.pc, %i.ox, !dbg !11157
    #dbg_value(!DIArgList(i64 %i.pc, i64 %i.ax, i64 %i.ox), !3719, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 36, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !9852)
  %i.pe = load i64, ptr %i.cx, align 16, !dbg !11158, !noalias !10627, !noundef !1285
  %.not293 = icmp ugt i64 %i.pd, %i.pe, !dbg !11159
  br i1 %.not293, label %bb.cj, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210, !dbg !11160

bb.cj:                                            ; preds = %bb.ci
    #dbg_value(ptr %0, !3823, !DIExpression(), !9854)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9857)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9857)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9860)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9860)
    #dbg_value(ptr %i.ah, !3837, !DIExpression(), !9861)
    #dbg_value(ptr %i.ah, !3854, !DIExpression(), !9862)
    #dbg_value(ptr %i.ah, !3857, !DIExpression(), !9863)
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ah, i64 64, !dbg !11161
  %i.pg = load i64, ptr %i.pf, align 16, !dbg !11161, !range !2651, !noalias !10667, !noundef !1285
    #dbg_value(i64 %i.pg, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9857)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9857)
  %i.ph = icmp eq i64 %i.pg, 1, !dbg !11162
  br i1 %i.ph, label %bb.cl, label %bb.ck, !dbg !11162

bb.ck:                                            ; preds = %bb.cq, %bb.cl, %bb.cj
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210_crit_edge unwind label %.body189.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11163, !inline_history !9866

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210_crit_edge: ; preds = %bb.ck
  %.pre435 = load i64, ptr %i.bc, align 8, !dbg !11164, !noalias !10668
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210, !dbg !11163

bb.cl:                                            ; preds = %bb.cj
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ah, i64 72, !dbg !11161
  %i.pj = load i64, ptr %i.pi, align 8, !dbg !11161, !noalias !10667
    #dbg_value(i64 %i.pj, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9857)
    #dbg_value(i64 %i.pj, !3838, !DIExpression(), !9871)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.at, i64 336, !dbg !11165
  %i.pl = load i64, ptr %i.pk, align 8, !dbg !11165, !noalias !10667, !noundef !1285
  %.not25.i201 = icmp ult i64 %i.pl, %i.pj, !dbg !11165
  br i1 %.not25.i201, label %bb.ck, label %bb.cm, !dbg !11165

bb.cm:                                            ; preds = %bb.cl
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80, !dbg !11166
  %i.pn = load i64, ptr %i.pm, align 16, !dbg !11166, !range !2651, !noalias !10667, !noundef !1285
  %i.po = getelementptr inbounds nuw i8, ptr %i.ah, i64 88, !dbg !11166
  %i.pp = load i64, ptr %i.po, align 8, !dbg !11166, !noalias !10667
    #dbg_value(i64 %i.pn, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9860)
    #dbg_value(i64 %i.pp, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9860)
  %i.pq = icmp eq i64 %i.pn, 1, !dbg !11167
  br i1 %i.pq, label %bb.cn, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210.thread, !dbg !11167

bb.cn:                                            ; preds = %bb.cm
    #dbg_value(i64 %i.pp, !3839, !DIExpression(), !9872)
    #dbg_value(i64 %i.pp, !3870, !DIExpression(), !9874)
    #dbg_value(i64 %i.pp, !3874, !DIExpression(), !9876)
    #dbg_value(i64 %i.pp, !3881, !DIExpression(), !9878)
    #dbg_value(ptr %i.at, !3503, !DIExpression(), !9880)
  %i.pr = getelementptr inbounds nuw i8, ptr %i.at, i64 344, !dbg !11168
  %i.ps = load i64, ptr %i.pr, align 8, !dbg !11168, !alias.scope !10669, !noalias !10667, !noundef !1285
    #dbg_value(ptr %i.at, !3506, !DIExpression(), !9884)
  %i.pt = load i64, ptr %i.at, align 8, !dbg !11169, !range !2667, !alias.scope !10669, !noalias !10667, !noundef !1285
  %i.pu = trunc nuw i64 %i.pt to i1, !dbg !11170
    #dbg_value(ptr poison, !3522, !DIExpression(), !9886)
    #dbg_value(i64 0, !3530, !DIExpression(), !9886)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !9887)
  br i1 %i.pu, label %bb.co, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i202, !dbg !11171

bb.co:                                            ; preds = %bb.cn
  %i.pv = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !11170
    #dbg_value(ptr %i.pv, !3522, !DIExpression(), !9886)
    #dbg_value(ptr %i.pv, !3532, !DIExpression(), !9888)
  %.val.i.i.i205 = load i64, ptr %i.pv, align 8, !dbg !11172, !alias.scope !10670, !noalias !10667, !noundef !1285
  %i.pw = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !11172
  %.val6.i.i.i206 = load i64, ptr %i.pw, align 8, !dbg !11172, !alias.scope !10670, !noalias !10667, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !9892)
    #dbg_value(ptr poison, !3537, !DIExpression(), !9893)
    #dbg_value(ptr poison, !3539, !DIExpression(), !9895)
  %i.px = sub nsw i64 %.val.i.i.i205, %.val6.i.i.i206, !dbg !11173
  %.sroa.0.0.i.i.i.i206 = call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.px, i1 true), !dbg !11173
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i202, !dbg !11174

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i202: ; preds = %bb.co, %bb.cn
  %.sroa.02.0.i.i.i203 = phi i64 [ %.sroa.0.0.i.i.i.i206, %bb.co ], [ 0, %bb.cn ], !dbg !11175
  %i.py = add i64 %.sroa.02.0.i.i.i203, %i.ps, !dbg !11168
    #dbg_value(i64 %i.py, !3840, !DIExpression(), !9896)
    #dbg_value(i64 %i.oa, !3871, !DIExpression(), !9874)
    #dbg_value(i64 %i.oa, !3877, !DIExpression(), !9876)
    #dbg_value(i64 %i.oa, !3887, !DIExpression(), !9878)
  %i.pz = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.pp, i64 %i.oa), !dbg !11176 ; 2 uses
  %i.qa = extractvalue { i64, i1 } %i.pz, 0, !dbg !11176
  %i.qb = extractvalue { i64, i1 } %i.pz, 1, !dbg !11176
    #dbg_value(i1 %i.qb, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9897)
    #dbg_value(i1 %i.qb, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9899)
    #dbg_value(i64 %i.qa, !3841, !DIExpression(), !9900)
    #dbg_value(i64 %i.qa, !3878, !DIExpression(), !9897)
  br i1 %i.qb, label %bb.cp, label %bb.cq, !dbg !11177, !prof !3300

bb.cp:                                            ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i202
    #dbg_value(i64 -1, !3841, !DIExpression(), !9900)
    #dbg_value(i64 -1, !3878, !DIExpression(), !9897)
  br label %bb.cq, !dbg !11178

bb.cq:                                            ; preds = %bb.cp, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i202
  %.sroa.014.0.i204 = phi i64 [ -1, %bb.cp ], [ %i.qa, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i202 ], !dbg !11179
    #dbg_value(i64 %.sroa.014.0.i204, !3878, !DIExpression(), !9897)
    #dbg_value(i64 %.sroa.014.0.i204, !3841, !DIExpression(), !9900)
  %i.qc = icmp ult i64 %i.py, %.sroa.014.0.i204, !dbg !11180
  br i1 %i.qc, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210.thread, label %bb.ck, !dbg !11180

_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210: ; preds = %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210_crit_edge, %bb.ci
  %i.qd = phi i64 [ %.pre435, %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210_crit_edge ], [ %i.nw, %bb.ci ], !dbg !11164 ; 3 uses
    #dbg_value(ptr %0, !3864, !DIExpression(), !9901)
    #dbg_value(ptr %i.at, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9902)
    #dbg_value(i64 %i.qd, !3897, !DIExpression(), !9904)
    #dbg_value(i64 %i.qd, !3915, !DIExpression(), !9906)
  %i.qe = icmp ult i64 %i.qd, 2305843009213693952, !dbg !11181
  call void @llvm.assume(i1 %i.qe), !dbg !11182
  %i.qf = icmp samesign ugt i64 %i.qd, 134217727, !dbg !11183
  br i1 %i.qf, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i366, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i367, !dbg !11183

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i366: ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210
    #dbg_value(ptr %0, !3823, !DIExpression(), !9908)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9911)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9911)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9914)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9914)
    #dbg_value(ptr %i.ah, !3837, !DIExpression(), !9915)
    #dbg_value(ptr %i.ah, !3854, !DIExpression(), !9916)
    #dbg_value(ptr %i.ah, !3857, !DIExpression(), !9917)
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ah, i64 64, !dbg !11184
  %i.qh = load i64, ptr %i.qg, align 16, !dbg !11184, !range !2651, !noalias !10671, !noundef !1285
    #dbg_value(i64 %i.qh, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9911)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9911)
  %i.qi = icmp eq i64 %i.qh, 1, !dbg !11185
  br i1 %i.qi, label %bb.cr, label %bb.cx, !dbg !11185

bb.cr:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i366
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ah, i64 72, !dbg !11184
  %i.qk = load i64, ptr %i.qj, align 8, !dbg !11184, !noalias !10671
    #dbg_value(i64 %i.qk, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9911)
    #dbg_value(i64 %i.qk, !3838, !DIExpression(), !9920)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.at, i64 336, !dbg !11186
  %i.qm = load i64, ptr %i.ql, align 8, !dbg !11186, !noalias !10671, !noundef !1285
  %.not25.i.i368 = icmp ult i64 %i.qm, %i.qk, !dbg !11186
  br i1 %.not25.i.i368, label %bb.cx, label %bb.cs, !dbg !11186

bb.cs:                                            ; preds = %bb.cr
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ah, i64 80, !dbg !11187
  %i.qo = load i64, ptr %i.qn, align 16, !dbg !11187, !range !2651, !noalias !10671, !noundef !1285
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ah, i64 88, !dbg !11187
  %i.qq = load i64, ptr %i.qp, align 8, !dbg !11187, !noalias !10671
    #dbg_value(i64 %i.qo, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9914)
    #dbg_value(i64 %i.qq, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9914)
  %i.qr = icmp eq i64 %i.qo, 1, !dbg !11188
  br i1 %i.qr, label %bb.ct, label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210.thread_crit_edge, !dbg !11188

bb.ct:                                            ; preds = %bb.cs
    #dbg_value(i64 %i.qq, !3839, !DIExpression(), !9921)
    #dbg_value(i64 %i.qq, !3870, !DIExpression(), !9923)
    #dbg_value(i64 %i.qq, !3874, !DIExpression(), !9925)
    #dbg_value(i64 %i.qq, !3881, !DIExpression(), !9927)
    #dbg_value(ptr %i.at, !3503, !DIExpression(), !9929)
  %i.qs = getelementptr inbounds nuw i8, ptr %i.at, i64 344, !dbg !11189
  %i.qt = load i64, ptr %i.qs, align 8, !dbg !11189, !alias.scope !10672, !noalias !10671, !noundef !1285
    #dbg_value(ptr %i.at, !3506, !DIExpression(), !9933)
  %i.qu = load i64, ptr %i.at, align 8, !dbg !11190, !range !2667, !alias.scope !10672, !noalias !10671, !noundef !1285
  %i.qv = trunc nuw i64 %i.qu to i1, !dbg !11191
    #dbg_value(ptr poison, !3522, !DIExpression(), !9935)
    #dbg_value(i64 0, !3530, !DIExpression(), !9935)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !9936)
  br i1 %i.qv, label %bb.cu, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i369, !dbg !11192

bb.cu:                                            ; preds = %bb.ct
  %i.qw = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !11191
    #dbg_value(ptr %i.qw, !3522, !DIExpression(), !9935)
    #dbg_value(ptr %i.qw, !3532, !DIExpression(), !9937)
  %.val.i.i.i372 = load i64, ptr %i.qw, align 8, !dbg !11193, !alias.scope !10673, !noalias !10671, !noundef !1285
  %i.qx = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !11193
  %.val6.i.i.i373 = load i64, ptr %i.qx, align 8, !dbg !11193, !alias.scope !10673, !noalias !10671, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !9941)
    #dbg_value(ptr poison, !3537, !DIExpression(), !9942)
    #dbg_value(ptr poison, !3539, !DIExpression(), !9944)
  %i.qy = sub nsw i64 %.val.i.i.i372, %.val6.i.i.i373, !dbg !11194
  %.sroa.0.0.i.i.i.i370 = call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.qy, i1 true), !dbg !11194
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i369, !dbg !11195

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i369: ; preds = %bb.cu, %bb.ct
  %.sroa.02.0.i.i.i370 = phi i64 [ %.sroa.0.0.i.i.i.i370, %bb.cu ], [ 0, %bb.ct ], !dbg !11196
  %i.qz = add i64 %.sroa.02.0.i.i.i370, %i.qt, !dbg !11189
    #dbg_value(i64 %i.qz, !3840, !DIExpression(), !9945)
    #dbg_value(ptr %i.at, !3920, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9947)
  %i.ra = load i64, ptr %i.bi, align 8, !dbg !11197, !noalias !10671, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.ra, !3871, !DIExpression(), !9923)
    #dbg_value(i64 %i.ra, !3877, !DIExpression(), !9925)
    #dbg_value(i64 %i.ra, !3887, !DIExpression(), !9927)
  %i.rb = icmp ult i64 %i.ra, 576460752303423488, !dbg !11198
  call void @llvm.assume(i1 %i.rb), !dbg !11199
  %i.rc = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.qq, i64 %i.ra), !dbg !11200 ; 2 uses
  %i.rd = extractvalue { i64, i1 } %i.rc, 0, !dbg !11200
  %i.re = extractvalue { i64, i1 } %i.rc, 1, !dbg !11200
    #dbg_value(i1 %i.re, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9948)
    #dbg_value(i1 %i.re, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9950)
    #dbg_value(i64 %i.rd, !3841, !DIExpression(), !9951)
    #dbg_value(i64 %i.rd, !3878, !DIExpression(), !9948)
  br i1 %i.re, label %bb.cv, label %bb.cw, !dbg !11201, !prof !3300

bb.cv:                                            ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i369
    #dbg_value(i64 -1, !3841, !DIExpression(), !9951)
    #dbg_value(i64 -1, !3878, !DIExpression(), !9948)
  br label %bb.cw, !dbg !11202

bb.cw:                                            ; preds = %bb.cv, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i369
  %.sroa.014.0.i.i371 = phi i64 [ -1, %bb.cv ], [ %i.rd, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i369 ], !dbg !11203
    #dbg_value(i64 %.sroa.014.0.i.i371, !3878, !DIExpression(), !9948)
    #dbg_value(i64 %.sroa.014.0.i.i371, !3841, !DIExpression(), !9951)
  %i.rf = icmp ult i64 %i.qz, %.sroa.014.0.i.i371, !dbg !11204
  br i1 %i.rf, label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210.thread_crit_edge, label %bb.cx, !dbg !11204

bb.cx:                                            ; preds = %bb.cw, %bb.cr, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i366
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc376.a unwind label %.body189.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11205, !inline_history !9952

.noexc376.a:                                      ; preds = %bb.cx
    #dbg_value(ptr %i.at, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9954)
  %i.rg = load i64, ptr %i.bc, align 8, !dbg !11206, !noalias !10668, !noundef !1285 ; 4 uses
    #dbg_value(i64 %i.rg, !3897, !DIExpression(), !9956)
    #dbg_value(i64 %i.rg, !3915, !DIExpression(), !9958)
  %i.rh = icmp ult i64 %i.rg, 2305843009213693952, !dbg !11207
  call void @llvm.assume(i1 %i.rh), !dbg !11208
  %i.ri = icmp samesign ugt i64 %i.rg, 134217727, !dbg !11209
  br i1 %i.ri, label %bb.cy, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i367, !dbg !11209

bb.cy:                                            ; preds = %.noexc376.a
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9960)
    #dbg_value(i64 %i.rg, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9960)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9960)
    #dbg_declare(ptr %i.d, !3929, !DIExpression(), !9961)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11210, !noalias !10674
  store i64 %i.rg, ptr %i.d, align 8, !dbg !11210, !noalias !10674
  br label %.invoke458, !dbg !11211

.invoke458:                                       ; preds = %bb.df, %bb.de, %bb.cy
  %i.rj = phi ptr [ %i.d, %bb.cy ], [ %i.g, %bb.df ], [ %i.h, %bb.de ]
  %i.rk = phi ptr [ @26, %bb.cy ], [ @41, %bb.df ], [ @40, %bb.de ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.rj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rk) #20
          to label %.cont459 unwind label %.body189.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11212, !inline_history !9952

.cont459:                                         ; preds = %.invoke458
  unreachable

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210.thread_crit_edge: ; preds = %bb.cw, %bb.cs
    #dbg_value(i32 1, !10675, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9969)
    #dbg_value(i32 poison, !10675, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9969)
  %.pre = load ptr, ptr %i.v, align 8, !dbg !11213, !alias.scope !10679
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210.thread, !dbg !11214

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i367: ; preds = %.noexc376.a, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210
  %.sroa.3.0.i364.in = phi i64 [ %i.qd, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit210 ], [ %i.rg, %.noexc376.a ]
    #dbg_value(i32 0, !10675, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9969)
    #dbg_value(i32 poison, !10675, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9969)
    #dbg_value(i32 poison, !10638, !DIExpression(DW_OP_constu, 536870912, DW_OP_or, DW_OP_stack_value), !9981)
    #dbg_value(ptr %i.v, !10681, !DIExpression(), !9984)
    #dbg_value(ptr %i.v, !10683, !DIExpression(), !9987)
    #dbg_value(ptr %i.v, !10685, !DIExpression(), !9990)
    #dbg_value(ptr %i.v, !10687, !DIExpression(), !9993)
  %i.rl = load i64, ptr %i.nv, align 8, !dbg !11215, !noalias !10627, !noundef !1285
    #dbg_value(ptr poison, !10689, !DIExpression(), !9998)
  %.not.i103 = icmp eq i64 %i.rl, 0, !dbg !11216
  br i1 %.not.i103, label %bb.cz, label %bb.db, !dbg !11216

bb.cz:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i367
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.da unwind label %.body189.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11216, !inline_history !9999

bb.da:                                            ; preds = %bb.cz
  unreachable

bb.db:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i367
  %.sroa.3.0.i364 = trunc nuw nsw i64 %.sroa.3.0.i364.in to i32, !dbg !11217
    #dbg_value(i32 %.sroa.3.0.i364, !10675, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9969)
    #dbg_value(i32 %.sroa.3.0.i364, !10638, !DIExpression(DW_OP_constu, 536870912, DW_OP_or, DW_OP_stack_value), !9981)
  %i.rm = load ptr, ptr %i.v, align 8, !dbg !11215, !noalias !10627, !nonnull !1285, !noundef !1285
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16, !dbg !11216
  %i.ro = load i8, ptr %i.rn, align 8, !dbg !11216, !noundef !1285
  %i.rp = and i8 %i.ro, 1, !dbg !11216
  %.not63.i104 = icmp eq i8 %i.rp, 0, !dbg !11216
  %spec.select.i105.v = select i1 %.not63.i104, i32 536870912, i32 671088640, !dbg !11218
  %spec.select.i105 = or disjoint i32 %spec.select.i105.v, %.sroa.3.0.i364, !dbg !11218 ; 7 uses
    #dbg_value(i32 %spec.select.i105, !10638, !DIExpression(), !9981)
    #dbg_value(ptr %i.fk, !10693, !DIExpression(), !10002)
    #dbg_value(ptr %i.fk, !10696, !DIExpression(), !10005)
    #dbg_value(ptr %i.ah, !10699, !DIExpression(), !10008)
    #dbg_value(ptr %i.ah, !10701, !DIExpression(), !10011)
  %i.rq = load i64, ptr %i.cm, align 8, !dbg !11219, !noundef !1285
  %i.rr = and i64 %i.rq, 63, !dbg !11220
  %i.rs = shl nuw i64 1, %i.rr, !dbg !11220
    #dbg_value(i64 %i.rs, !10694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10002)
    #dbg_value(i64 %i.rs, !10697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10005)
    #dbg_value(i32 -2147483648, !10694, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10002)
    #dbg_value(i32 -2147483648, !10697, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10005)
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB21_7sources6repeat6RepeatBG_EEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk, i64 noundef %i.rs, i32 noundef -2147483648)
          to label %bb.dc unwind label %.body189.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11221, !inline_history !9999

bb.dc:                                            ; preds = %bb.db
    #dbg_value(ptr %i.ah, !10648, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !10012)
    #dbg_value(ptr %i.fo, !10646, !DIExpression(), !9788)
    #dbg_value(ptr %i.fo, !10651, !DIExpression(), !9791)
  %i.rt = load i128, ptr %i.fo, align 1, !dbg !11222
  %i.ru = getelementptr i8, ptr %i.fo, i64 16, !dbg !11222
  %i.rv = load i128, ptr %i.ru, align 1, !dbg !11222
  %i.rw = or i128 %i.rt, %i.rv, !dbg !11222
  %i.rx = icmp ne i128 %i.rw, 0, !dbg !11222
  %i.ry = zext i1 %i.rx to i32, !dbg !11222
  %i.rz = icmp eq i32 %i.ry, 0, !dbg !11222
  br i1 %i.rz, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit199.thread, label %bb.dd, !dbg !11223

bb.dd:                                            ; preds = %bb.dc
    #dbg_value(ptr poison, !3961, !DIExpression(), !10014)
    #dbg_value(i32 %spec.select.i105, !3966, !DIExpression(), !10014)
    #dbg_value(ptr poison, !3968, !DIExpression(), !10016)
    #dbg_value(ptr poison, !3972, !DIExpression(), !10016)
    #dbg_value(ptr poison, !3968, !DIExpression(), !10018)
    #dbg_value(ptr poison, !3613, !DIExpression(), !10020)
    #dbg_value(ptr %i.ah, !3974, !DIExpression(), !10022)
  %i.sa = load i64, ptr %i.cm, align 8, !dbg !11224, !noalias !10703, !noundef !1285
  %i.sb = and i64 %i.sa, 63, !dbg !11225          ; 4 uses
    #dbg_value(!DIArgList(i64 1, i64 %i.sb), !3977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !10026)
    #dbg_value(!DIArgList(i64 1, i64 %i.sb), !3980, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !10028)
  %i.sc = icmp samesign ugt i64 %i.sb, 26, !dbg !11226
  br i1 %i.sc, label %bb.de, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i194, !dbg !11226

bb.de:                                            ; preds = %bb.dd
  %i.sd = shl nuw i64 1, %i.sb, !dbg !11225
    #dbg_value(i64 %i.sd, !3977, !DIExpression(), !10026)
    #dbg_value(i64 %i.sd, !3980, !DIExpression(), !10028)
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10030)
    #dbg_value(i64 %i.sd, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10030)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10030)
    #dbg_declare(ptr %i.h, !3929, !DIExpression(), !10031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11227, !noalias !10704
  store i64 %i.sd, ptr %i.h, align 8, !dbg !11227, !noalias !10704
  br label %.invoke458, !dbg !11228

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i194: ; preds = %bb.dd
    #dbg_value(!DIArgList(i64 1, i64 %i.sb), !3924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !10030)
    #dbg_value(i64 undef, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10030)
    #dbg_value(i32 0, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10030)
    #dbg_declare(ptr %i.h, !3929, !DIExpression(), !10031)
    #dbg_value(ptr poison, !3983, !DIExpression(), !10036)
    #dbg_value(!DIArgList(i64 1, i64 %i.sb), !3980, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1073741824, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !10038)
    #dbg_value(ptr poison, !3972, !DIExpression(), !10018)
    #dbg_value(ptr poison, !3968, !DIExpression(), !10040)
    #dbg_value(ptr poison, !3989, !DIExpression(), !10042)
  %i.se = shl nuw nsw i64 2, %i.sb, !dbg !11229   ; 2 uses
    #dbg_value(i64 %i.se, !3993, !DIExpression(), !10044)
    #dbg_value(i64 %i.se, !3996, !DIExpression(), !10046)
  %i.sf = icmp eq i64 %i.sb, 26, !dbg !11230
  br i1 %i.sf, label %bb.df, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit199, !dbg !11230

bb.df:                                            ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i194
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10048)
    #dbg_value(i64 %i.se, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10048)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10048)
    #dbg_declare(ptr %i.g, !3929, !DIExpression(), !10049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11231, !noalias !10705
  store i64 %i.se, ptr %i.g, align 8, !dbg !11231, !noalias !10705
  br label %.invoke458, !dbg !11232

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit199.thread: ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit199, %bb.dk, %bb.dc
    #dbg_value(ptr %i.v, !10706, !DIExpression(), !10055)
    #dbg_value(ptr %i.v, !10685, !DIExpression(), !10057)
    #dbg_value(ptr %i.v, !10687, !DIExpression(), !10059)
  %i.sg = load i64, ptr %i.nv, align 8, !dbg !11233, !noalias !10627, !noundef !1285
  %i.sh = load i64, ptr %i.cf, align 8, !dbg !11234, !noundef !1285
  %i.si = add i64 %i.sh, %i.sg, !dbg !11234
  store i64 %i.si, ptr %i.cf, align 8, !dbg !11234
    #dbg_value(ptr %i.at, !10710, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !10063)
    #dbg_value(ptr %i.v, !10660, !DIExpression(), !10064)
    #dbg_value(ptr %i.v, !10657, !DIExpression(), !10065)
    #dbg_value(ptr %i.v, !10687, !DIExpression(), !10067)
  %i.sj = load ptr, ptr %i.v, align 8, !dbg !11235, !noalias !10627, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.sj, !10654, !DIExpression(), !10069)
    #dbg_value(ptr %i.sj, !10663, !DIExpression(), !9802)
  %i.sk = atomicrmw add ptr %i.sj, i64 1 monotonic, align 8, !dbg !11236
    #dbg_value(i64 %i.sk, !10658, !DIExpression(), !10070)
  %i.sl = icmp slt i64 %i.sk, 0, !dbg !11237
  br i1 %i.sl, label %bb.dq, label %bb.dl, !dbg !11237

end_hunk_3
begin_hunk_4_@_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache:bb.a

bb.k:                                             ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i
    #dbg_value(ptr poison, !3968, !DIExpression(), !11479)
    #dbg_value(ptr poison, !3989, !DIExpression(), !11481)
  %i.bg = shl nuw nsw i64 2, %i.ba, !dbg !12264   ; 2 uses
    #dbg_value(i64 %i.bg, !3993, !DIExpression(), !11483)
    #dbg_value(i64 %i.bg, !3996, !DIExpression(), !11485)
  %i.bh = icmp eq i64 %i.ba, 26, !dbg !12265
  br i1 %i.bh, label %bb.l, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit, !dbg !12265

bb.l:                                             ; preds = %bb.k
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11487)
    #dbg_value(i64 %i.bg, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11487)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11487)
    #dbg_declare(ptr %i.h, !3929, !DIExpression(), !11488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12266, !noalias !12108
  store i64 %i.bg, ptr %i.h, align 8, !dbg !12266, !noalias !12108
  br label %.invoke107, !dbg !12267

.invoke107:                                       ; preds = %bb.j, %bb.l
  %i.bi = phi ptr [ %i.h, %bb.l ], [ %i.i, %bb.j ]
  %i.bj = phi ptr [ @41, %bb.l ], [ @40, %bb.j ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #20
          to label %.cont108 unwind label %bb.bb, !dbg !12268

.cont108:                                         ; preds = %.invoke107
  unreachable

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit: ; preds = %bb.k
  %i.bk = trunc nuw nsw i64 %i.bg to i32, !dbg !12269
    #dbg_value(i32 %i.bk, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11487)
    #dbg_value(i64 %i.bg, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11487)
    #dbg_value(i32 0, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11487)
    #dbg_declare(ptr %i.h, !3929, !DIExpression(), !11488)
    #dbg_value(ptr poison, !4005, !DIExpression(), !11493)
  %i.bl = or disjoint i32 %i.bk, 536870912, !dbg !12270
    #dbg_value(i32 %i.bl, !3996, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11495)
    #dbg_value(ptr poison, !3972, !DIExpression(), !11479)
  %i.bm = icmp eq i32 %.sroa.410.0.copyload, %i.bl, !dbg !12271
  br i1 %i.bm, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread, label %bb.m, !dbg !12272, !prof !12109

.body48.thread88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.ak, %.invoke132, %bb.ab, %bb.af, %bb.ad, %bb.o
  %lpad.loopexit.split-lp135 = landingpad { ptr, i32 }
          cleanup
  br label %.body48.thread

bb.m:                                             ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.511.0.copyload, ptr %i.g, align 8, !noalias !12110
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store i64 %.sroa.612.0.copyload, ptr %i.bn, align 8, !noalias !12110
    #dbg_value(ptr undef, !11967, !DIExpression(), !11977)
    #dbg_value(ptr %0, !11965, !DIExpression(), !11499)
    #dbg_declare(ptr %i.g, !11966, !DIExpression(), !11500)
    #dbg_declare(ptr %i.f, !11974, !DIExpression(), !11501)
    #dbg_value(ptr poison, !12111, !DIExpression(), !11506)
    #dbg_value(ptr poison, !12116, !DIExpression(), !11509)
    #dbg_value(i64 1, !12119, !DIExpression(), !11517)
    #dbg_value(i8 0, !12121, !DIExpression(), !11517)
    #dbg_value(i64 1, !12128, !DIExpression(), !11520)
    #dbg_value(i8 0, !12130, !DIExpression(), !11520)
    #dbg_value(ptr poison, !3713, !DIExpression(), !11522)
    #dbg_value(ptr poison, !3721, !DIExpression(), !11524)
    #dbg_value(ptr poison, !3718, !DIExpression(), !11522)
    #dbg_value(ptr %i.l, !3727, !DIExpression(), !11526)
    #dbg_value(i64 4, !3730, !DIExpression(), !11530)
    #dbg_value(i64 1, !3730, !DIExpression(), !11535)
    #dbg_value(ptr %i.l, !3766, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11537)
  %i.bo = load i64, ptr %i.m, align 8, !dbg !12273, !alias.scope !12132, !noalias !12133, !noundef !1285 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 2305843009213693952, !dbg !12274
  tail call void @llvm.assume(i1 %i.bp), !dbg !12275, !noalias !12133
    #dbg_value(ptr %i.l, !3766, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !11541)
  %i.bq = load i64, ptr %i.n, align 8, !dbg !12276, !alias.scope !12132, !noalias !12133, !noundef !1285 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 2305843009213693952, !dbg !12277
  tail call void @llvm.assume(i1 %i.br), !dbg !12278, !noalias !12133
    #dbg_value(ptr %i.l, !3774, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !11543)
  %i.bs = load i64, ptr %i.q, align 8, !dbg !12279, !alias.scope !12132, !noalias !12133, !noundef !1285 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 576460752303423488, !dbg !12280
  tail call void @llvm.assume(i1 %i.bt), !dbg !12281, !noalias !12133
  %i.bu = shl nuw nsw i64 %i.bs, 4, !dbg !12282
    #dbg_value(ptr %i.l, !3781, !DIExpression(DW_OP_plus_uconst, 280, DW_OP_stack_value), !11545)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 304, !dbg !12283
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !12283, !alias.scope !12132, !noalias !12133, !noundef !1285
  %i.bx = mul i64 %i.bw, 20, !dbg !12284
    #dbg_value(ptr %i.l, !3796, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !11549)
    #dbg_value(ptr %i.l, !3802, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !11551)
    #dbg_value(ptr %i.l, !3807, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !11553)
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 112, !dbg !12285
  %i.bz = load i64, ptr %i.by, align 8, !dbg !12285, !alias.scope !12132, !noalias !12133, !noundef !1285 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 2305843009213693952, !dbg !12286
  tail call void @llvm.assume(i1 %i.ca), !dbg !12287, !noalias !12133
    #dbg_value(ptr %i.l, !3807, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !11555)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 136, !dbg !12288
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !12288, !alias.scope !12132, !noalias !12133, !noundef !1285 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 2305843009213693952, !dbg !12289
  tail call void @llvm.assume(i1 %i.cd), !dbg !12290, !noalias !12133
    #dbg_value(ptr %i.l, !3802, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !11557)
    #dbg_value(ptr %i.l, !3807, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !11559)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 168, !dbg !12291
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !12291, !alias.scope !12132, !noalias !12133, !noundef !1285 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, 2305843009213693952, !dbg !12292
  tail call void @llvm.assume(i1 %i.cg), !dbg !12293, !noalias !12133
    #dbg_value(ptr %i.l, !3807, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !11561)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 192, !dbg !12294
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !12294, !alias.scope !12132, !noalias !12133, !noundef !1285 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, 2305843009213693952, !dbg !12295
  tail call void @llvm.assume(i1 %i.cj), !dbg !12296, !noalias !12133
    #dbg_value(ptr %i.l, !3743, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !11562)
    #dbg_value(ptr %i.l, !3740, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !11563)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 208, !dbg !12297
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !12297, !range !3814, !alias.scope !12132, !noalias !12133, !noundef !1285
    #dbg_value(ptr %i.l, !3763, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !11564)
    #dbg_value(ptr %i.l, !3757, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !11565)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 232, !dbg !12298
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !12298, !range !3814, !alias.scope !12132, !noalias !12133, !noundef !1285
  %i.co = load i64, ptr %i.aj, align 8, !dbg !12299, !alias.scope !12132, !noalias !12133, !noundef !1285
  %i.cp = add nuw nsw i64 %i.bq, %i.bo, !dbg !12300
  %i.cq = add nuw nsw i64 %i.cp, %i.bz, !dbg !12301
  %i.cr = add nuw nsw i64 %i.cq, %i.cc, !dbg !12302
  %i.cs = add nuw i64 %i.cr, %i.cf, !dbg !12303
  %i.ct = add nuw i64 %i.cs, %i.ci, !dbg !12303
  %reass.add.i.i = add i64 %i.ct, %i.cl, !dbg !12303
  %reass.mul.i.i = shl i64 %reass.add.i.i, 2, !dbg !12303
    #dbg_value(i64 %.sroa.612.0.copyload, !3725, !DIExpression(), !11524)
  %i.cu = shl nuw nsw i64 4, %i.ba, !dbg !12304
  %i.cv = add i64 %.sroa.612.0.copyload, 36, !dbg !12304
  %i.cw = add i64 %i.cv, %i.cu, !dbg !12304
  %i.cx = add i64 %i.cw, %i.bu, !dbg !12303
  %i.cy = add i64 %i.cx, %i.bx, !dbg !12303
  %i.cz = add i64 %i.cy, %i.cn, !dbg !12303
  %i.da = add i64 %i.cz, %i.co, !dbg !12303
  %i.db = add i64 %i.da, %reass.mul.i.i, !dbg !12305
    #dbg_value(!DIArgList(i64 %reass.mul.i.i, i64 %.sroa.612.0.copyload, i64 %i.cu, i64 %i.cv, i64 %i.co, i64 %i.cn, i64 %i.bx, i64 %i.bu), !3719, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 7, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 36, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !11566)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 704, !dbg !12306
  %i.dd = load i64, ptr %i.dc, align 16, !dbg !12306, !noalias !12133, !noundef !1285
  %.not = icmp ugt i64 %i.db, %i.dd, !dbg !12307
  br i1 %.not, label %bb.n, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit, !dbg !12308

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %0, !3823, !DIExpression(), !11568)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11571)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11571)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11574)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11574)
    #dbg_value(ptr %i.aw, !3837, !DIExpression(), !11575)
    #dbg_value(ptr %i.aw, !3854, !DIExpression(), !11576)
    #dbg_value(ptr %i.aw, !3857, !DIExpression(), !11577)
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 64, !dbg !12309
  %i.df = load i64, ptr %i.de, align 16, !dbg !12309, !range !2651, !noalias !12135, !noundef !1285
    #dbg_value(i64 %i.df, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11571)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11571)
  %i.dg = icmp eq i64 %i.df, 1, !dbg !12310
  br i1 %i.dg, label %bb.p, label %bb.o, !dbg !12310

bb.o:                                             ; preds = %bb.u, %bb.p, %bb.n
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge unwind label %.body48.thread88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12311, !inline_history !11580

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge: ; preds = %bb.o
  %.pre122 = load i64, ptr %i.m, align 8, !dbg !12312, !noalias !12136
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit, !dbg !12311

bb.p:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aw, i64 72, !dbg !12309
  %i.di = load i64, ptr %i.dh, align 8, !dbg !12309, !noalias !12135
    #dbg_value(i64 %i.di, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11571)
    #dbg_value(i64 %i.di, !3838, !DIExpression(), !11585)
  %i.dj = load i64, ptr %i.ak, align 8, !dbg !12313, !noalias !12135, !noundef !1285
  %.not25.i = icmp ult i64 %i.dj, %i.di, !dbg !12313
  br i1 %.not25.i, label %bb.o, label %bb.q, !dbg !12313

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 80, !dbg !12314
  %i.dl = load i64, ptr %i.dk, align 16, !dbg !12314, !range !2651, !noalias !12135, !noundef !1285
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aw, i64 88, !dbg !12314
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !12314, !noalias !12135
    #dbg_value(i64 %i.dl, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11574)
    #dbg_value(i64 %i.dn, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11574)
  %i.do = icmp eq i64 %i.dl, 1, !dbg !12315
  br i1 %i.do, label %bb.r, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, !dbg !12315

bb.r:                                             ; preds = %bb.q
    #dbg_value(i64 %i.dn, !3839, !DIExpression(), !11586)
    #dbg_value(i64 %i.dn, !3870, !DIExpression(), !11588)
    #dbg_value(i64 %i.dn, !3874, !DIExpression(), !11590)
    #dbg_value(i64 %i.dn, !3881, !DIExpression(), !11592)
    #dbg_value(ptr %i.l, !3503, !DIExpression(), !11594)
  %i.dp = load i64, ptr %i.an, align 8, !dbg !12316, !alias.scope !12137, !noalias !12135, !noundef !1285
    #dbg_value(ptr %i.l, !3506, !DIExpression(), !11598)
  %i.dq = load i64, ptr %i.l, align 8, !dbg !12317, !range !2667, !alias.scope !12137, !noalias !12135, !noundef !1285
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !12318
    #dbg_value(ptr poison, !3522, !DIExpression(), !11600)
    #dbg_value(i64 0, !3530, !DIExpression(), !11600)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !11601)
  br i1 %i.dr, label %bb.s, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i, !dbg !12319

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !12318
    #dbg_value(ptr %i.ds, !3522, !DIExpression(), !11600)
    #dbg_value(ptr %i.ds, !3532, !DIExpression(), !11602)
  %.val.i.i.i = load i64, ptr %i.ds, align 8, !dbg !12320, !alias.scope !12138, !noalias !12135, !noundef !1285
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !12320
  %.val6.i.i.i = load i64, ptr %i.dt, align 8, !dbg !12320, !alias.scope !12138, !noalias !12135, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !11606)
    #dbg_value(ptr poison, !3537, !DIExpression(), !11607)
    #dbg_value(ptr poison, !3539, !DIExpression(), !11609)
  %i.du = sub nsw i64 %.val.i.i.i, %.val6.i.i.i, !dbg !12321
  %.sroa.0.0.i.i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.du, i1 true), !dbg !12321
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i, !dbg !12322

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i: ; preds = %bb.s, %bb.r
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.s ], [ 0, %bb.r ], !dbg !12323
  %i.dv = add i64 %.sroa.02.0.i.i.i, %i.dp, !dbg !12316
    #dbg_value(i64 %i.dv, !3840, !DIExpression(), !11610)
    #dbg_value(i64 %i.bs, !3871, !DIExpression(), !11588)
    #dbg_value(i64 %i.bs, !3877, !DIExpression(), !11590)
    #dbg_value(i64 %i.bs, !3887, !DIExpression(), !11592)
  %i.dw = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dn, i64 %i.bs), !dbg !12324 ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 0, !dbg !12324
  %i.dy = extractvalue { i64, i1 } %i.dw, 1, !dbg !12324
    #dbg_value(i1 %i.dy, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11611)
    #dbg_value(i1 %i.dy, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11613)
    #dbg_value(i64 %i.dx, !3841, !DIExpression(), !11614)
    #dbg_value(i64 %i.dx, !3878, !DIExpression(), !11611)
  br i1 %i.dy, label %bb.t, label %bb.u, !dbg !12325, !prof !3300

bb.t:                                             ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i
    #dbg_value(i64 -1, !3841, !DIExpression(), !11614)
    #dbg_value(i64 -1, !3878, !DIExpression(), !11611)
  br label %bb.u, !dbg !12326

bb.u:                                             ; preds = %bb.t, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i
  %.sroa.014.0.i = phi i64 [ -1, %bb.t ], [ %i.dx, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i ], !dbg !12327
    #dbg_value(i64 %.sroa.014.0.i, !3878, !DIExpression(), !11611)
    #dbg_value(i64 %.sroa.014.0.i, !3841, !DIExpression(), !11614)
  %i.dz = icmp ult i64 %i.dv, %.sroa.014.0.i, !dbg !12328
  br i1 %i.dz, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, label %bb.o, !dbg !12328

_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit: ; preds = %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge, %bb.m
  %i.ea = phi i64 [ %.pre122, %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge ], [ %i.bo, %bb.m ], !dbg !12312 ; 3 uses
    #dbg_value(ptr %0, !3864, !DIExpression(), !11615)
    #dbg_value(ptr %i.l, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11616)
    #dbg_value(i64 %i.ea, !3897, !DIExpression(), !11618)
    #dbg_value(i64 %i.ea, !3915, !DIExpression(), !11620)
  %i.eb = icmp ult i64 %i.ea, 2305843009213693952, !dbg !12329
  tail call void @llvm.assume(i1 %i.eb), !dbg !12330
  %i.ec = icmp samesign ugt i64 %i.ea, 134217727, !dbg !12331
  br i1 %i.ec, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i, !dbg !12331

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i: ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit
    #dbg_value(ptr %0, !3823, !DIExpression(), !11622)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11625)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11625)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11628)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11628)
    #dbg_value(ptr %i.aw, !3837, !DIExpression(), !11629)
    #dbg_value(ptr %i.aw, !3854, !DIExpression(), !11630)
    #dbg_value(ptr %i.aw, !3857, !DIExpression(), !11631)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aw, i64 64, !dbg !12332
  %i.ee = load i64, ptr %i.ed, align 16, !dbg !12332, !range !2651, !noalias !12139, !noundef !1285
    #dbg_value(i64 %i.ee, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11625)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11625)
  %i.ef = icmp eq i64 %i.ee, 1, !dbg !12333
  br i1 %i.ef, label %bb.v, label %bb.ab, !dbg !12333

bb.v:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 72, !dbg !12332
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !12332, !noalias !12139
    #dbg_value(i64 %i.eh, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11625)
    #dbg_value(i64 %i.eh, !3838, !DIExpression(), !11634)
  %i.ei = load i64, ptr %i.ak, align 8, !dbg !12334, !noalias !12139, !noundef !1285
  %.not25.i.i = icmp ult i64 %i.ei, %i.eh, !dbg !12334
  br i1 %.not25.i.i, label %bb.ab, label %bb.w, !dbg !12334

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aw, i64 80, !dbg !12335
  %i.ek = load i64, ptr %i.ej, align 16, !dbg !12335, !range !2651, !noalias !12139, !noundef !1285
  %i.el = getelementptr inbounds nuw i8, ptr %i.aw, i64 88, !dbg !12335
  %i.em = load i64, ptr %i.el, align 8, !dbg !12335, !noalias !12139
    #dbg_value(i64 %i.ek, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11628)
    #dbg_value(i64 %i.em, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11628)
  %i.en = icmp eq i64 %i.ek, 1, !dbg !12336
  br i1 %i.en, label %bb.x, label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge, !dbg !12336

bb.x:                                             ; preds = %bb.w
    #dbg_value(i64 %i.em, !3839, !DIExpression(), !11635)
    #dbg_value(i64 %i.em, !3870, !DIExpression(), !11637)
    #dbg_value(i64 %i.em, !3874, !DIExpression(), !11639)
    #dbg_value(i64 %i.em, !3881, !DIExpression(), !11641)
    #dbg_value(ptr %i.l, !3503, !DIExpression(), !11643)
  %i.eo = load i64, ptr %i.an, align 8, !dbg !12337, !alias.scope !12140, !noalias !12139, !noundef !1285
    #dbg_value(ptr %i.l, !3506, !DIExpression(), !11647)
  %i.ep = load i64, ptr %i.l, align 8, !dbg !12338, !range !2667, !alias.scope !12140, !noalias !12139, !noundef !1285
  %i.eq = trunc nuw i64 %i.ep to i1, !dbg !12339
    #dbg_value(ptr poison, !3522, !DIExpression(), !11649)
    #dbg_value(i64 0, !3530, !DIExpression(), !11649)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !11650)
  br i1 %i.eq, label %bb.y, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i109, !dbg !12340

bb.y:                                             ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !12339
    #dbg_value(ptr %i.er, !3522, !DIExpression(), !11649)
    #dbg_value(ptr %i.er, !3532, !DIExpression(), !11651)
  %.val.i.i.i111 = load i64, ptr %i.er, align 8, !dbg !12341, !alias.scope !12141, !noalias !12139, !noundef !1285
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !12341
  %.val6.i.i.i112 = load i64, ptr %i.es, align 8, !dbg !12341, !alias.scope !12141, !noalias !12139, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !11655)
    #dbg_value(ptr poison, !3537, !DIExpression(), !11656)
    #dbg_value(ptr poison, !3539, !DIExpression(), !11658)
  %i.et = sub nsw i64 %.val.i.i.i111, %.val6.i.i.i112, !dbg !12342
  %.sroa.0.0.i.i.i.i113 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.et, i1 true), !dbg !12342
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i109, !dbg !12343

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i109: ; preds = %bb.y, %bb.x
  %.sroa.02.0.i.i.i110 = phi i64 [ %.sroa.0.0.i.i.i.i113, %bb.y ], [ 0, %bb.x ], !dbg !12344
  %i.eu = add i64 %.sroa.02.0.i.i.i110, %i.eo, !dbg !12337
    #dbg_value(i64 %i.eu, !3840, !DIExpression(), !11659)
    #dbg_value(ptr %i.l, !3920, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !11661)
  %i.ev = load i64, ptr %i.q, align 8, !dbg !12345, !noalias !12139, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.ev, !3871, !DIExpression(), !11637)
    #dbg_value(i64 %i.ev, !3877, !DIExpression(), !11639)
    #dbg_value(i64 %i.ev, !3887, !DIExpression(), !11641)
  %i.ew = icmp ult i64 %i.ev, 576460752303423488, !dbg !12346
  tail call void @llvm.assume(i1 %i.ew), !dbg !12347
  %i.ex = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.em, i64 %i.ev), !dbg !12348 ; 2 uses
  %i.ey = extractvalue { i64, i1 } %i.ex, 0, !dbg !12348
  %i.ez = extractvalue { i64, i1 } %i.ex, 1, !dbg !12348
    #dbg_value(i1 %i.ez, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11662)
    #dbg_value(i1 %i.ez, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11664)
    #dbg_value(i64 %i.ey, !3841, !DIExpression(), !11665)
    #dbg_value(i64 %i.ey, !3878, !DIExpression(), !11662)
  br i1 %i.ez, label %bb.z, label %bb.aa, !dbg !12349, !prof !3300

bb.z:                                             ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i109
    #dbg_value(i64 -1, !3841, !DIExpression(), !11665)
    #dbg_value(i64 -1, !3878, !DIExpression(), !11662)
  br label %bb.aa, !dbg !12350

bb.aa:                                            ; preds = %bb.z, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i109
  %.sroa.014.0.i.i = phi i64 [ -1, %bb.z ], [ %i.ey, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i109 ], !dbg !12351
    #dbg_value(i64 %.sroa.014.0.i.i, !3878, !DIExpression(), !11662)
    #dbg_value(i64 %.sroa.014.0.i.i, !3841, !DIExpression(), !11665)
  %i.fa = icmp ult i64 %i.eu, %.sroa.014.0.i.i, !dbg !12352
  br i1 %i.fa, label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge, label %bb.ab, !dbg !12352

bb.ab:                                            ; preds = %bb.aa, %bb.v, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc unwind label %.body48.thread88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12353, !inline_history !11666

.noexc:                                           ; preds = %bb.ab
    #dbg_value(ptr %i.l, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11668)
  %i.fb = load i64, ptr %i.m, align 8, !dbg !12354, !noalias !12136, !noundef !1285 ; 4 uses
    #dbg_value(i64 %i.fb, !3897, !DIExpression(), !11670)
    #dbg_value(i64 %i.fb, !3915, !DIExpression(), !11672)
  %i.fc = icmp ult i64 %i.fb, 2305843009213693952, !dbg !12355
  tail call void @llvm.assume(i1 %i.fc), !dbg !12356
  %i.fd = icmp samesign ugt i64 %i.fb, 134217727, !dbg !12357
  br i1 %i.fd, label %bb.ac, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i, !dbg !12357

bb.ac:                                            ; preds = %.noexc
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11674)
    #dbg_value(i64 %i.fb, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11674)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11674)
    #dbg_declare(ptr %i.b, !3929, !DIExpression(), !11675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12358, !noalias !12142
  store i64 %i.fb, ptr %i.b, align 8, !dbg !12358, !noalias !12142
  br label %.invoke132, !dbg !12359

.invoke132:                                       ; preds = %bb.aj, %bb.ai, %bb.ac
  %i.fe = phi ptr [ %i.b, %bb.ac ], [ %i.c, %bb.aj ], [ %i.d, %bb.ai ]
  %i.ff = phi ptr [ @26, %bb.ac ], [ @41, %bb.aj ], [ @40, %bb.ai ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.fe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #20
          to label %.cont133 unwind label %.body48.thread88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11977, !inline_history !11666

.cont133:                                         ; preds = %.invoke132
  unreachable

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread_crit_edge: ; preds = %bb.aa, %bb.w
    #dbg_value(i32 1, !12143, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11683)
    #dbg_value(i32 poison, !12143, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11683)
  %.pre = load ptr, ptr %i.g, align 8, !dbg !12360, !alias.scope !12147
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread, !dbg !12361

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i: ; preds = %.noexc, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit
  %.sroa.3.0.i.in = phi i64 [ %i.ea, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit ], [ %i.fb, %.noexc ]
    #dbg_value(i32 0, !12143, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11683)
    #dbg_value(i32 poison, !12143, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11683)
    #dbg_value(ptr poison, !11958, !DIExpression(DW_OP_deref, DW_OP_deref), !11695)
    #dbg_value(i32 poison, !11957, !DIExpression(), !11695)
    #dbg_value(ptr undef, !11946, !DIExpression(), !11376)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !11970, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !11696)
    #dbg_value(ptr %i.g, !12148, !DIExpression(), !11699)
    #dbg_value(ptr %i.g, !12150, !DIExpression(), !11702)
    #dbg_value(ptr %i.g, !12152, !DIExpression(), !11705)
    #dbg_value(ptr %i.g, !12154, !DIExpression(), !11708)
  %i.fg = load i64, ptr %i.bn, align 8, !dbg !12362, !noalias !12110, !noundef !1285
    #dbg_value(ptr poison, !12156, !DIExpression(), !11713)
  %.not.i = icmp eq i64 %i.fg, 0, !dbg !12363
  br i1 %.not.i, label %bb.ad, label %bb.af, !dbg !12363

bb.ad:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.ae unwind label %.body48.thread88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12363, !inline_history !11714

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i
  %.sroa.3.0.i = trunc nuw nsw i64 %.sroa.3.0.i.in to i32, !dbg !12364
  %i.fh = and i32 %.sroa.410.0.copyload, 268435456, !dbg !12365
    #dbg_value(i32 %.sroa.3.0.i, !12143, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11683)
    #dbg_value(i32 %.sroa.3.0.i, !11957, !DIExpression(), !11695)
    #dbg_value(!DIArgList(i32 %i.fh, i32 %.sroa.3.0.i), !11970, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !11696)
  %.sroa.0.0.i57 = or disjoint i32 %i.fh, %.sroa.3.0.i, !dbg !12366
    #dbg_value(i32 %.sroa.0.0.i57, !11970, !DIExpression(), !11696)
  %i.fi = load ptr, ptr %i.g, align 8, !dbg !12362, !noalias !12110, !nonnull !1285, !noundef !1285
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16, !dbg !12363
  %i.fk = load i8, ptr %i.fj, align 8, !dbg !12363, !noundef !1285
  %i.fl = and i8 %i.fk, 1, !dbg !12363
  %i.fm = zext nneg i8 %i.fl to i32, !dbg !12367
  %i.fn = shl nuw nsw i32 %i.fm, 27, !dbg !12367
  %spec.select.i = or disjoint i32 %i.fn, %.sroa.0.0.i57, !dbg !12367 ; 4 uses
    #dbg_value(i32 %spec.select.i, !11970, !DIExpression(), !11696)
    #dbg_value(ptr %i.l, !12160, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11717)
    #dbg_value(ptr %i.l, !12163, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11720)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !12368
    #dbg_value(ptr %i.fo, !12160, !DIExpression(), !11717)
    #dbg_value(ptr %i.fo, !12163, !DIExpression(), !11720)
    #dbg_value(ptr %i.aw, !12166, !DIExpression(), !11723)
    #dbg_value(ptr %i.aw, !12168, !DIExpression(), !11726)
  %i.fp = load i64, ptr %i.ay, align 8, !dbg !12369, !noundef !1285
  %i.fq = and i64 %i.fp, 63, !dbg !12370
  %i.fr = shl nuw i64 1, %i.fq, !dbg !12370
    #dbg_value(i64 %i.fr, !12161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11717)
    #dbg_value(i64 %i.fr, !12164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11720)
    #dbg_value(i32 -2147483648, !12161, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11717)
    #dbg_value(i32 -2147483648, !12164, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !11720)
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB21_7sources6repeat6RepeatBG_EEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fo, i64 noundef %i.fr, i32 noundef -2147483648)
          to label %bb.ag unwind label %.body48.thread88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12371, !inline_history !11714

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr %i.aw, !12114, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !11727)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.aw, i64 656, !dbg !12372 ; 3 uses
    #dbg_value(ptr %i.fs, !12112, !DIExpression(), !11506)
    #dbg_value(ptr %i.fs, !12117, !DIExpression(), !11509)
  %i.ft = load i128, ptr %i.fs, align 1, !dbg !12373
  %i.fu = getelementptr i8, ptr %i.fs, i64 16, !dbg !12373
  %i.fv = load i128, ptr %i.fu, align 1, !dbg !12373
  %i.fw = or i128 %i.ft, %i.fv, !dbg !12373
  %i.fx = icmp ne i128 %i.fw, 0, !dbg !12373
  %i.fy = zext i1 %i.fx to i32, !dbg !12373
  %i.fz = icmp eq i32 %i.fy, 0, !dbg !12373
    #dbg_value(ptr poison, !3961, !DIExpression(), !11729)
    #dbg_value(i32 %spec.select.i, !3966, !DIExpression(), !11729)
    #dbg_value(ptr poison, !3968, !DIExpression(), !11731)
    #dbg_value(ptr poison, !3972, !DIExpression(), !11731)
  br i1 %i.fz, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit56.thread, label %bb.ah, !dbg !12374

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(ptr poison, !3968, !DIExpression(), !11733)
    #dbg_value(ptr poison, !3613, !DIExpression(), !11735)
    #dbg_value(ptr %i.aw, !3974, !DIExpression(), !11737)
  %i.ga = load i64, ptr %i.ay, align 8, !dbg !12375, !noalias !12170, !noundef !1285
  %i.gb = and i64 %i.ga, 63, !dbg !12376          ; 4 uses
    #dbg_value(!DIArgList(i64 1, i64 %i.gb), !3977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !11741)
    #dbg_value(!DIArgList(i64 1, i64 %i.gb), !3980, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !11743)
  %i.gc = icmp samesign ugt i64 %i.gb, 26, !dbg !12377
  br i1 %i.gc, label %bb.ai, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i51, !dbg !12377

bb.ai:                                            ; preds = %bb.ah
  %i.gd = shl nuw i64 1, %i.gb, !dbg !12376
    #dbg_value(i64 %i.gd, !3977, !DIExpression(), !11741)
    #dbg_value(i64 %i.gd, !3980, !DIExpression(), !11743)
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11745)
    #dbg_value(i64 %i.gd, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11745)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11745)
    #dbg_declare(ptr %i.d, !3929, !DIExpression(), !11746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12378, !noalias !12171
  store i64 %i.gd, ptr %i.d, align 8, !dbg !12378, !noalias !12171
  br label %.invoke132, !dbg !12379

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i51: ; preds = %bb.ah
    #dbg_value(!DIArgList(i64 1, i64 %i.gb), !3924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !11745)
    #dbg_value(i64 undef, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11745)
    #dbg_value(i32 0, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11745)
    #dbg_declare(ptr %i.d, !3929, !DIExpression(), !11746)
    #dbg_value(ptr poison, !3983, !DIExpression(), !11751)
    #dbg_value(!DIArgList(i64 1, i64 %i.gb), !3980, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1073741824, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11753)
    #dbg_value(ptr poison, !3972, !DIExpression(), !11733)
    #dbg_value(ptr poison, !3968, !DIExpression(), !11755)
    #dbg_value(ptr poison, !3989, !DIExpression(), !11757)
  %i.ge = shl nuw nsw i64 2, %i.gb, !dbg !12380   ; 2 uses
    #dbg_value(i64 %i.ge, !3993, !DIExpression(), !11759)
    #dbg_value(i64 %i.ge, !3996, !DIExpression(), !11761)
  %i.gf = icmp eq i64 %i.gb, 26, !dbg !12381
  br i1 %i.gf, label %bb.aj, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit56, !dbg !12381

bb.aj:                                            ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i51
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !11763)
    #dbg_value(i64 %i.ge, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11763)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !11763)
    #dbg_declare(ptr %i.c, !3929, !DIExpression(), !11764)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12382, !noalias !12172
  store i64 %i.ge, ptr %i.c, align 8, !dbg !12382, !noalias !12172
  br label %.invoke132, !dbg !12383

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit56.thread: ; preds = %bb.an, %bb.ag
    #dbg_value(ptr %i.g, !12173, !DIExpression(), !11770)
    #dbg_value(ptr %i.g, !12152, !DIExpression(), !11772)
    #dbg_value(ptr %i.g, !12154, !DIExpression(), !11774)
  %i.gg = load i64, ptr %i.bn, align 8, !dbg !12384, !noalias !12110, !noundef !1285
  %i.gh = load i64, ptr %i.aj, align 8, !dbg !12385, !noundef !1285
  %i.gi = add i64 %i.gh, %i.gg, !dbg !12385
  store i64 %i.gi, ptr %i.aj, align 8, !dbg !12385
    #dbg_value(ptr %i.l, !12177, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !11778)
end_hunk_4
begin_hunk_5_@_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy16cache_next_state:bb.a
    #dbg_value(ptr %i.r, !4554, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !12899)
    #dbg_value(i64 %.sroa.0.0.copyload.i, !4555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12900)
    #dbg_value(ptr %.sroa.4.0.copyload.i, !4555, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12900)
    #dbg_value(i64 0, !4555, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12900)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !13877, !noalias !13584
  store i64 %.sroa.0.0.copyload.i, ptr %i.s, align 8, !dbg !13878, !noalias !13584
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.420.0..sroa_idx, align 8, !dbg !13878, !noalias !13584
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8, !dbg !13878, !noalias !13584
    #dbg_value(ptr %i.i, !3132, !DIExpression(), !12902)
    #dbg_value(ptr %i.i, !3032, !DIExpression(), !12904)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread94 unwind label %bb.j, !dbg !13879, !noalias !13584

bb.j:                                             ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getShEBW_.exit.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !3039, !DIExpression(), !12906)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread unwind label %bb.k, !dbg !13880, !noalias !13584

bb.k:                                             ; preds = %bb.j
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !13879, !noalias !13584
  unreachable, !dbg !13879

.thread94:                                        ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getShEBW_.exit.i
    #dbg_value(ptr %i.i, !3039, !DIExpression(), !12908)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !13881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13882, !noalias !13589
    #dbg_value(i32 poison, !13573, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12909)
    #dbg_value(i32 poison, !13573, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12909)
    #dbg_value(i32 poison, !13590, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13595)
    #dbg_value(i32 %i.dm, !13590, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13595)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13883
  br label %bb.bi, !dbg !13884

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.e
  %i.dp = invoke { ptr, i64 } @_RNvMs5_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA8to_state(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.l unwind label %.body.thread43.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13885, !noalias !13584 ; 2 uses

bb.l:                                             ; preds = %select.unfold.i
  %i.dq = extractvalue { ptr, i64 } %i.dp, 0, !dbg !13886
  %i.dr = extractvalue { ptr, i64 } %i.dp, 1, !dbg !13886 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13589
  store ptr %i.dq, ptr %i.h, align 8, !noalias !13596
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store i64 %i.dr, ptr %i.ds, align 8, !noalias !13596
    #dbg_value(ptr %0, !13597, !DIExpression(), !12925)
    #dbg_declare(ptr %i.h, !13601, !DIExpression(), !12926)
    #dbg_declare(ptr poison, !13602, !DIExpression(), !12927)
    #dbg_declare(ptr %i.g, !13609, !DIExpression(), !12928)
    #dbg_value(ptr poison, !13612, !DIExpression(), !12933)
    #dbg_value(ptr poison, !13617, !DIExpression(), !12936)
    #dbg_value(i64 1, !13620, !DIExpression(), !12944)
    #dbg_value(i8 0, !13622, !DIExpression(), !12944)
    #dbg_value(i64 1, !13629, !DIExpression(), !12947)
    #dbg_value(i8 0, !13631, !DIExpression(), !12947)
    #dbg_value(ptr poison, !3713, !DIExpression(), !12949)
    #dbg_value(ptr poison, !3721, !DIExpression(), !12951)
    #dbg_value(ptr poison, !3718, !DIExpression(), !12949)
    #dbg_value(ptr %i.r, !3727, !DIExpression(), !12953)
    #dbg_value(i64 4, !3730, !DIExpression(), !12957)
    #dbg_value(i64 1, !3730, !DIExpression(), !12962)
    #dbg_value(ptr %i.r, !3766, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12964)
  %i.dt = load i64, ptr %i.ai, align 8, !dbg !13887, !alias.scope !13633, !noalias !13634, !noundef !1285 ; 3 uses
  %i.du = icmp ult i64 %i.dt, 2305843009213693952, !dbg !13888
  call void @llvm.assume(i1 %i.du), !dbg !13889
    #dbg_value(ptr %i.r, !3766, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12968)
  %i.dv = load i64, ptr %i.al, align 8, !dbg !13890, !alias.scope !13633, !noalias !13634, !noundef !1285 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 2305843009213693952, !dbg !13891
  call void @llvm.assume(i1 %i.dw), !dbg !13892
    #dbg_value(ptr %i.r, !3774, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12970)
  %i.dx = load i64, ptr %i.x, align 8, !dbg !13893, !alias.scope !13633, !noalias !13634, !noundef !1285 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 576460752303423488, !dbg !13894
  call void @llvm.assume(i1 %i.dy), !dbg !13895
  %i.dz = shl nuw nsw i64 %i.dx, 4, !dbg !13896
    #dbg_value(ptr %i.r, !3781, !DIExpression(DW_OP_plus_uconst, 280, DW_OP_stack_value), !12972)
  %i.ea = load i64, ptr %i.ar, align 8, !dbg !13897, !alias.scope !13633, !noalias !13634, !noundef !1285
  %i.eb = mul i64 %i.ea, 20, !dbg !13898
    #dbg_value(ptr %i.r, !3796, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !12976)
    #dbg_value(ptr %i.r, !3802, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !12978)
    #dbg_value(ptr %i.r, !3807, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !12980)
  %i.ec = load i64, ptr %i.au, align 8, !dbg !13899, !alias.scope !13633, !noalias !13634, !noundef !1285 ; 2 uses
  %i.ed = icmp ult i64 %i.ec, 2305843009213693952, !dbg !13900
  call void @llvm.assume(i1 %i.ed), !dbg !13901
    #dbg_value(ptr %i.r, !3807, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !12982)
  %i.ee = load i64, ptr %i.ax, align 8, !dbg !13902, !alias.scope !13633, !noalias !13634, !noundef !1285 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, 2305843009213693952, !dbg !13903
  call void @llvm.assume(i1 %i.ef), !dbg !13904
    #dbg_value(ptr %i.r, !3802, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !12984)
    #dbg_value(ptr %i.r, !3807, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !12986)
  %i.eg = load i64, ptr %i.ba, align 8, !dbg !13905, !alias.scope !13633, !noalias !13634, !noundef !1285 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 2305843009213693952, !dbg !13906
  call void @llvm.assume(i1 %i.eh), !dbg !13907
    #dbg_value(ptr %i.r, !3807, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !12988)
  %i.ei = load i64, ptr %i.bd, align 8, !dbg !13908, !alias.scope !13633, !noalias !13634, !noundef !1285 ; 2 uses
  %i.ej = icmp ult i64 %i.ei, 2305843009213693952, !dbg !13909
  call void @llvm.assume(i1 %i.ej), !dbg !13910
    #dbg_value(ptr %i.r, !3743, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !12989)
    #dbg_value(ptr %i.r, !3740, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !12990)
  %i.ek = load i64, ptr %i.ae, align 8, !dbg !13911, !range !3814, !alias.scope !13633, !noalias !13634, !noundef !1285
    #dbg_value(ptr %i.r, !3763, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !12991)
    #dbg_value(ptr %i.r, !3757, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !12992)
  %i.el = load i64, ptr %i.s, align 8, !dbg !13912, !range !3814, !alias.scope !13633, !noalias !13634, !noundef !1285
  %i.em = load i64, ptr %i.bi, align 8, !dbg !13913, !alias.scope !13633, !noalias !13634, !noundef !1285
  %i.en = add nuw nsw i64 %i.dv, %i.dt, !dbg !13914
  %i.eo = add nuw nsw i64 %i.en, %i.ec, !dbg !13915
  %i.ep = add nuw nsw i64 %i.eo, %i.ee, !dbg !13916
  %i.eq = add nuw i64 %i.ep, %i.eg, !dbg !13917
  %i.er = add nuw i64 %i.eq, %i.ei, !dbg !13917
  %reass.add.i.i.i.i = add i64 %i.er, %i.ek, !dbg !13917
  %reass.mul.i.i.i.i = shl i64 %reass.add.i.i.i.i, 2, !dbg !13917
    #dbg_value(i64 %i.dr, !3725, !DIExpression(), !12951)
    #dbg_value(ptr %i.n, !3816, !DIExpression(), !12994)
    #dbg_value(ptr %i.n, !3819, !DIExpression(), !12996)
  %i.es = load i64, ptr %i.o, align 8, !dbg !13918, !noalias !13634, !noundef !1285
  %i.et = and i64 %i.es, 63, !dbg !13919
  %i.eu = shl i64 4, %i.et, !dbg !13920
  %i.ev = add i64 %i.dr, 36, !dbg !13920
  %i.ew = add i64 %i.ev, %i.dz, !dbg !13920
  %i.ex = add i64 %i.ew, %i.eb, !dbg !13917
  %i.ey = add i64 %i.ex, %i.el, !dbg !13917
  %i.ez = add i64 %i.ey, %i.em, !dbg !13917
  %i.fa = add i64 %i.ez, %reass.mul.i.i.i.i, !dbg !13917
  %i.fb = add i64 %i.fa, %i.eu, !dbg !13921
    #dbg_value(!DIArgList(i64 %i.fa, i64 %i.dr, i64 %i.eu), !3719, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 36, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !12997)
  %i.fc = load i64, ptr %i.bz, align 16, !dbg !13922, !noalias !13634, !noundef !1285
  %.not101.i.i = icmp ugt i64 %i.fb, %i.fc, !dbg !13923
  br i1 %.not101.i.i, label %bb.m, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i, !dbg !13924

.body.thread94.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.aj, %.invoke.i.i, %bb.ae, %bb.ac, %bb.aa, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %0, !3823, !DIExpression(), !12999)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13002)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13002)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13005)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13005)
    #dbg_value(ptr %i.n, !3837, !DIExpression(), !13006)
    #dbg_value(ptr %i.n, !3854, !DIExpression(), !13007)
    #dbg_value(ptr %i.n, !3857, !DIExpression(), !13008)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.n, i64 64, !dbg !13925
  %i.fe = load i64, ptr %i.fd, align 16, !dbg !13925, !range !2651, !noalias !13635, !noundef !1285
    #dbg_value(i64 %i.fe, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13002)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13002)
  %i.ff = icmp eq i64 %i.fe, 1, !dbg !13926
  br i1 %i.ff, label %bb.o, label %bb.n, !dbg !13926

bb.n:                                             ; preds = %bb.t, %bb.o, %bb.m
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i unwind label %.body.thread94.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13927, !inline_history !876

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i: ; preds = %bb.n
  %.pre.i.i = load i64, ptr %i.ai, align 8, !dbg !13928, !noalias !13636
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i, !dbg !13927

bb.o:                                             ; preds = %bb.m
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 72, !dbg !13925
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !13925, !noalias !13635
    #dbg_value(i64 %i.fh, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13002)
    #dbg_value(i64 %i.fh, !3838, !DIExpression(), !13015)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 336, !dbg !13929
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !13929, !noalias !13635, !noundef !1285
  %.not25.i.i.i = icmp ult i64 %i.fj, %i.fh, !dbg !13929
  br i1 %.not25.i.i.i, label %bb.n, label %bb.p, !dbg !13929

bb.p:                                             ; preds = %bb.o
  %i.fk = getelementptr inbounds nuw i8, ptr %i.n, i64 80, !dbg !13930
  %i.fl = load i64, ptr %i.fk, align 16, !dbg !13930, !range !2651, !noalias !13635, !noundef !1285
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 88, !dbg !13930
  %i.fn = load i64, ptr %i.fm, align 8, !dbg !13930, !noalias !13635
    #dbg_value(i64 %i.fl, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13005)
    #dbg_value(i64 %i.fn, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13005)
  %i.fo = icmp eq i64 %i.fl, 1, !dbg !13931
  br i1 %i.fo, label %bb.q, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i, !dbg !13931

bb.q:                                             ; preds = %bb.p
    #dbg_value(i64 %i.fn, !3839, !DIExpression(), !13016)
    #dbg_value(i64 %i.fn, !3870, !DIExpression(), !13018)
    #dbg_value(i64 %i.fn, !3874, !DIExpression(), !13020)
    #dbg_value(i64 %i.fn, !3881, !DIExpression(), !13022)
    #dbg_value(ptr %i.r, !3503, !DIExpression(), !13024)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.r, i64 344, !dbg !13932
  %i.fq = load i64, ptr %i.fp, align 8, !dbg !13932, !alias.scope !13637, !noalias !13635, !noundef !1285
    #dbg_value(ptr %i.r, !3506, !DIExpression(), !13028)
  %i.fr = load i64, ptr %i.r, align 8, !dbg !13933, !range !2667, !alias.scope !13637, !noalias !13635, !noundef !1285
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !13934
    #dbg_value(ptr poison, !3522, !DIExpression(), !13030)
    #dbg_value(i64 0, !3530, !DIExpression(), !13030)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !13031)
  br i1 %i.fs, label %bb.r, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i, !dbg !13935

bb.r:                                             ; preds = %bb.q
  %i.ft = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !13934
    #dbg_value(ptr %i.ft, !3522, !DIExpression(), !13030)
    #dbg_value(ptr %i.ft, !3532, !DIExpression(), !13032)
  %.val.i.i.i.i.i = load i64, ptr %i.ft, align 8, !dbg !13936, !alias.scope !13638, !noalias !13635, !noundef !1285
  %i.fu = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !13936
  %.val6.i.i.i.i.i = load i64, ptr %i.fu, align 8, !dbg !13936, !alias.scope !13638, !noalias !13635, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !13036)
    #dbg_value(ptr poison, !3537, !DIExpression(), !13037)
    #dbg_value(ptr poison, !3539, !DIExpression(), !13039)
  %i.fv = sub nsw i64 %.val.i.i.i.i.i, %.val6.i.i.i.i.i, !dbg !13937
  %.sroa.0.0.i.i.i.i.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.fv, i1 true), !dbg !13937
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i, !dbg !13938

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.r ], [ 0, %bb.q ], !dbg !13939
  %i.fw = add i64 %.sroa.02.0.i.i.i.i.i, %i.fq, !dbg !13932
    #dbg_value(i64 %i.fw, !3840, !DIExpression(), !13040)
    #dbg_value(ptr %i.r, !3920, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !13042)
    #dbg_value(i64 %i.dx, !3871, !DIExpression(), !13018)
    #dbg_value(i64 %i.dx, !3877, !DIExpression(), !13020)
    #dbg_value(i64 %i.dx, !3887, !DIExpression(), !13022)
  %i.fx = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fn, i64 %i.dx), !dbg !13940 ; 2 uses
  %i.fy = extractvalue { i64, i1 } %i.fx, 0, !dbg !13940
  %i.fz = extractvalue { i64, i1 } %i.fx, 1, !dbg !13940
    #dbg_value(i1 %i.fz, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13043)
    #dbg_value(i1 %i.fz, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13045)
    #dbg_value(i64 %i.fy, !3841, !DIExpression(), !13046)
    #dbg_value(i64 %i.fy, !3878, !DIExpression(), !13043)
  br i1 %i.fz, label %bb.s, label %bb.t, !dbg !13941, !prof !3300

bb.s:                                             ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i
    #dbg_value(i64 -1, !3841, !DIExpression(), !13046)
    #dbg_value(i64 -1, !3878, !DIExpression(), !13043)
  br label %bb.t, !dbg !13942

bb.t:                                             ; preds = %bb.s, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i
  %.sroa.014.0.i.i.i = phi i64 [ -1, %bb.s ], [ %i.fy, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i ], !dbg !13943
    #dbg_value(i64 %.sroa.014.0.i.i.i, !3878, !DIExpression(), !13043)
    #dbg_value(i64 %.sroa.014.0.i.i.i, !3841, !DIExpression(), !13046)
  %i.ga = icmp ult i64 %i.fw, %.sroa.014.0.i.i.i, !dbg !13944
  br i1 %i.ga, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i, label %bb.n, !dbg !13944

_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i: ; preds = %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i, %bb.l
  %i.gb = phi i64 [ %.pre.i.i, %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i ], [ %i.dt, %bb.l ], !dbg !13928 ; 3 uses
    #dbg_value(ptr %0, !3864, !DIExpression(), !13047)
    #dbg_value(ptr %i.r, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13048)
    #dbg_value(i64 %i.gb, !3897, !DIExpression(), !13050)
    #dbg_value(i64 %i.gb, !3915, !DIExpression(), !13052)
  %i.gc = icmp ult i64 %i.gb, 2305843009213693952, !dbg !13945
  call void @llvm.assume(i1 %i.gc), !dbg !13946
  %i.gd = icmp samesign ugt i64 %i.gb, 134217727, !dbg !13947
  br i1 %i.gd, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i, !dbg !13947

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i.i.i: ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i
    #dbg_value(ptr %0, !3823, !DIExpression(), !13054)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13057)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13057)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13060)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13060)
    #dbg_value(ptr %i.n, !3837, !DIExpression(), !13061)
    #dbg_value(ptr %i.n, !3854, !DIExpression(), !13062)
    #dbg_value(ptr %i.n, !3857, !DIExpression(), !13063)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 64, !dbg !13948
  %i.gf = load i64, ptr %i.ge, align 16, !dbg !13948, !range !2651, !noalias !13639, !noundef !1285
    #dbg_value(i64 %i.gf, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13057)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13057)
  %i.gg = icmp eq i64 %i.gf, 1, !dbg !13949
  br i1 %i.gg, label %bb.u, label %bb.aa, !dbg !13949

bb.u:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 72, !dbg !13948
  %i.gi = load i64, ptr %i.gh, align 8, !dbg !13948, !noalias !13639
    #dbg_value(i64 %i.gi, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13057)
    #dbg_value(i64 %i.gi, !3838, !DIExpression(), !13066)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.r, i64 336, !dbg !13950
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !13950, !noalias !13639, !noundef !1285
  %.not25.i.i.i.i = icmp ult i64 %i.gk, %i.gi, !dbg !13950
  br i1 %.not25.i.i.i.i, label %bb.aa, label %bb.v, !dbg !13950

bb.v:                                             ; preds = %bb.u
  %i.gl = getelementptr inbounds nuw i8, ptr %i.n, i64 80, !dbg !13951
  %i.gm = load i64, ptr %i.gl, align 16, !dbg !13951, !range !2651, !noalias !13639, !noundef !1285
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 88, !dbg !13951
  %i.go = load i64, ptr %i.gn, align 8, !dbg !13951, !noalias !13639
    #dbg_value(i64 %i.gm, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13060)
    #dbg_value(i64 %i.go, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13060)
  %i.gp = icmp eq i64 %i.gm, 1, !dbg !13952
  br i1 %i.gp, label %bb.w, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i, !dbg !13952

bb.w:                                             ; preds = %bb.v
    #dbg_value(i64 %i.go, !3839, !DIExpression(), !13067)
    #dbg_value(i64 %i.go, !3870, !DIExpression(), !13069)
    #dbg_value(i64 %i.go, !3874, !DIExpression(), !13071)
    #dbg_value(i64 %i.go, !3881, !DIExpression(), !13073)
    #dbg_value(ptr %i.r, !3503, !DIExpression(), !13075)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.r, i64 344, !dbg !13953
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !13953, !alias.scope !13640, !noalias !13639, !noundef !1285
    #dbg_value(ptr %i.r, !3506, !DIExpression(), !13079)
  %i.gs = load i64, ptr %i.r, align 8, !dbg !13954, !range !2667, !alias.scope !13640, !noalias !13639, !noundef !1285
  %i.gt = trunc nuw i64 %i.gs to i1, !dbg !13955
    #dbg_value(ptr poison, !3522, !DIExpression(), !13081)
    #dbg_value(i64 0, !3530, !DIExpression(), !13081)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !13082)
  br i1 %i.gt, label %bb.x, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i70.i.i, !dbg !13956

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !13955
    #dbg_value(ptr %i.gu, !3522, !DIExpression(), !13081)
    #dbg_value(ptr %i.gu, !3532, !DIExpression(), !13083)
  %.val.i.i.i72.i.i = load i64, ptr %i.gu, align 8, !dbg !13957, !alias.scope !13641, !noalias !13639, !noundef !1285
  %i.gv = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !13957
  %.val6.i.i.i73.i.i = load i64, ptr %i.gv, align 8, !dbg !13957, !alias.scope !13641, !noalias !13639, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !13087)
    #dbg_value(ptr poison, !3537, !DIExpression(), !13088)
    #dbg_value(ptr poison, !3539, !DIExpression(), !13090)
  %i.gw = sub nsw i64 %.val.i.i.i72.i.i, %.val6.i.i.i73.i.i, !dbg !13958
  %.sroa.0.0.i.i.i.i74.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.gw, i1 true), !dbg !13958
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i70.i.i, !dbg !13959

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i70.i.i: ; preds = %bb.x, %bb.w
  %.sroa.02.0.i.i.i71.i.i = phi i64 [ %.sroa.0.0.i.i.i.i74.i.i, %bb.x ], [ 0, %bb.w ], !dbg !13960
  %i.gx = add i64 %.sroa.02.0.i.i.i71.i.i, %i.gr, !dbg !13953
    #dbg_value(i64 %i.gx, !3840, !DIExpression(), !13091)
    #dbg_value(ptr %i.r, !3920, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !13093)
  %i.gy = load i64, ptr %i.x, align 8, !dbg !13961, !noalias !13639, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.gy, !3871, !DIExpression(), !13069)
    #dbg_value(i64 %i.gy, !3877, !DIExpression(), !13071)
    #dbg_value(i64 %i.gy, !3887, !DIExpression(), !13073)
  %i.gz = icmp ult i64 %i.gy, 576460752303423488, !dbg !13962
  call void @llvm.assume(i1 %i.gz), !dbg !13963
  %i.ha = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.go, i64 %i.gy), !dbg !13964 ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 0, !dbg !13964
  %i.hc = extractvalue { i64, i1 } %i.ha, 1, !dbg !13964
    #dbg_value(i1 %i.hc, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13094)
    #dbg_value(i1 %i.hc, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13096)
    #dbg_value(i64 %i.hb, !3841, !DIExpression(), !13097)
    #dbg_value(i64 %i.hb, !3878, !DIExpression(), !13094)
  br i1 %i.hc, label %bb.y, label %bb.z, !dbg !13965, !prof !3300

bb.y:                                             ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i70.i.i
    #dbg_value(i64 -1, !3841, !DIExpression(), !13097)
    #dbg_value(i64 -1, !3878, !DIExpression(), !13094)
  br label %bb.z, !dbg !13966

bb.z:                                             ; preds = %bb.y, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i70.i.i
  %.sroa.014.0.i.i.i.i = phi i64 [ -1, %bb.y ], [ %i.hb, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i70.i.i ], !dbg !13967
    #dbg_value(i64 %.sroa.014.0.i.i.i.i, !3878, !DIExpression(), !13094)
    #dbg_value(i64 %.sroa.014.0.i.i.i.i, !3841, !DIExpression(), !13097)
  %i.hd = icmp ult i64 %i.gx, %.sroa.014.0.i.i.i.i, !dbg !13968
  br i1 %i.hd, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i, label %bb.aa, !dbg !13968

bb.aa:                                            ; preds = %bb.z, %bb.u, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i.i.i
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc76.i.i unwind label %.body.thread94.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13969, !inline_history !877

.noexc76.i.i:                                     ; preds = %bb.aa
    #dbg_value(ptr %i.r, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13099)
  %i.he = load i64, ptr %i.ai, align 8, !dbg !13970, !noalias !13636, !noundef !1285 ; 4 uses
    #dbg_value(i64 %i.he, !3897, !DIExpression(), !13101)
    #dbg_value(i64 %i.he, !3915, !DIExpression(), !13103)
  %i.hf = icmp ult i64 %i.he, 2305843009213693952, !dbg !13971
  call void @llvm.assume(i1 %i.hf), !dbg !13972
  %i.hg = icmp samesign ugt i64 %i.he, 134217727, !dbg !13973
  br i1 %i.hg, label %bb.ab, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i, !dbg !13973

bb.ab:                                            ; preds = %.noexc76.i.i
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13105)
    #dbg_value(i64 %i.he, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13105)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13105)
    #dbg_declare(ptr %i.f, !3929, !DIExpression(), !13106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13974, !noalias !13642
  store i64 %i.he, ptr %i.f, align 8, !dbg !13974, !noalias !13642
  br label %.invoke.i.i, !dbg !13975

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i: ; preds = %.noexc76.i.i, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i
  %.sroa.3.0.i.in.i.i = phi i64 [ %i.gb, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i ], [ %i.he, %.noexc76.i.i ]
    #dbg_value(i64 %.sroa.3.0.i.in.i.i, !13605, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13110)
    #dbg_value(ptr %i.h, !13643, !DIExpression(), !13113)
    #dbg_value(ptr %i.h, !13645, !DIExpression(), !13116)
    #dbg_value(ptr %i.h, !13647, !DIExpression(), !13119)
    #dbg_value(ptr %i.h, !13649, !DIExpression(), !13122)
  %i.hh = load i64, ptr %i.ds, align 8, !dbg !13976, !noalias !13596, !noundef !1285
    #dbg_value(ptr poison, !13651, !DIExpression(), !13127)
  %.not.i16.i = icmp eq i64 %i.hh, 0, !dbg !13977
  br i1 %.not.i16.i, label %bb.ac, label %bb.ae, !dbg !13977

bb.ac:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.ad unwind label %.body.thread94.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13977, !noalias !13634

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i
  %.sroa.3.0.i.i.i = trunc nuw nsw i64 %.sroa.3.0.i.in.i.i to i32, !dbg !13978
    #dbg_value(i32 %.sroa.3.0.i.i.i, !13605, !DIExpression(), !13110)
  %i.hi = load ptr, ptr %i.h, align 8, !dbg !13976, !noalias !13596, !nonnull !1285, !noundef !1285
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16, !dbg !13977
  %i.hk = load i8, ptr %i.hj, align 8, !dbg !13977, !noalias !13634, !noundef !1285
  %i.hl = and i8 %i.hk, 1, !dbg !13977
  %i.hm = zext nneg i8 %i.hl to i32, !dbg !13979
  %i.hn = shl nuw nsw i32 %i.hm, 27, !dbg !13979
  %spec.select.i.i = or disjoint i32 %i.hn, %.sroa.3.0.i.i.i, !dbg !13979 ; 3 uses
    #dbg_value(i32 %spec.select.i.i, !13605, !DIExpression(), !13110)
    #dbg_value(ptr %i.r, !13653, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13132)
    #dbg_value(ptr %i.r, !13656, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13135)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !13980
    #dbg_value(ptr %i.ho, !13653, !DIExpression(), !13132)
    #dbg_value(ptr %i.ho, !13656, !DIExpression(), !13135)
    #dbg_value(ptr %i.n, !13659, !DIExpression(), !13138)
    #dbg_value(ptr %i.n, !13661, !DIExpression(), !13141)
  %i.hp = load i64, ptr %i.o, align 8, !dbg !13981, !noalias !13634, !noundef !1285
  %i.hq = and i64 %i.hp, 63, !dbg !13982
  %i.hr = shl nuw i64 1, %i.hq, !dbg !13982
    #dbg_value(i64 %i.hr, !13654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13132)
    #dbg_value(i64 %i.hr, !13657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13135)
    #dbg_value(i32 -2147483648, !13654, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13132)
    #dbg_value(i32 -2147483648, !13657, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13135)
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB21_7sources6repeat6RepeatBG_EEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho, i64 noundef %i.hr, i32 noundef -2147483648)
          to label %bb.af unwind label %.body.thread94.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13983, !noalias !13634

bb.af:                                            ; preds = %bb.ae
    #dbg_value(ptr %i.n, !13615, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !13142)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.n, i64 656, !dbg !13984 ; 3 uses
    #dbg_value(ptr %i.hs, !13613, !DIExpression(), !12933)
    #dbg_value(ptr %i.hs, !13618, !DIExpression(), !12936)
  %i.ht = load i128, ptr %i.hs, align 1, !dbg !13985
  %i.hu = getelementptr i8, ptr %i.hs, i64 16, !dbg !13985
  %i.hv = load i128, ptr %i.hu, align 1, !dbg !13985
  %i.hw = or i128 %i.ht, %i.hv, !dbg !13985
  %i.hx = icmp ne i128 %i.hw, 0, !dbg !13985
  %i.hy = zext i1 %i.hx to i32, !dbg !13985
  %i.hz = icmp eq i32 %i.hy, 0, !dbg !13985
  br i1 %i.hz, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i, label %bb.ag, !dbg !13986

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr poison, !3961, !DIExpression(), !13144)
    #dbg_value(i32 %spec.select.i.i, !3966, !DIExpression(), !13144)
    #dbg_value(ptr poison, !3613, !DIExpression(), !13146)
    #dbg_value(ptr %i.n, !3974, !DIExpression(), !13148)
  %i.ia = load i64, ptr %i.o, align 8, !dbg !13987, !noalias !13663, !noundef !1285
  %i.ib = and i64 %i.ia, 63, !dbg !13988          ; 4 uses
    #dbg_value(!DIArgList(i64 1, i64 %i.ib), !3977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !13152)
  %i.ic = icmp samesign ugt i64 %i.ib, 26, !dbg !13989
  br i1 %i.ic, label %bb.ah, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i, !dbg !13989

bb.ah:                                            ; preds = %bb.ag
  %i.id = shl nuw i64 1, %i.ib, !dbg !13988
    #dbg_value(i64 %i.id, !3977, !DIExpression(), !13152)
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13154)
    #dbg_value(i64 %i.id, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13154)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13154)
    #dbg_declare(ptr %i.e, !3929, !DIExpression(), !13155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13990, !noalias !13664
  store i64 %i.id, ptr %i.e, align 8, !dbg !13990, !noalias !13664
  br label %.invoke.i.i, !dbg !13991

.invoke.i.i:                                      ; preds = %bb.ai, %bb.ah, %bb.ab
  %i.ie = phi ptr [ %i.e, %bb.ah ], [ %i.d, %bb.ai ], [ %i.f, %bb.ab ]
  %i.if = phi ptr [ @40, %bb.ah ], [ @41, %bb.ai ], [ @26, %bb.ab ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.ie, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.if) #20
          to label %.cont.i.i unwind label %.body.thread94.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13992, !noalias !13634

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i: ; preds = %bb.ag
    #dbg_value(!DIArgList(i64 1, i64 %i.ib), !3924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13154)
    #dbg_value(i64 undef, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13154)
    #dbg_value(i32 0, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13154)
    #dbg_declare(ptr %i.e, !3929, !DIExpression(), !13155)
    #dbg_value(ptr poison, !3989, !DIExpression(), !13160)
    #dbg_value(!DIArgList(i64 2, i64 %i.ib), !3993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !13162)
    #dbg_value(!DIArgList(i64 2, i64 %i.ib), !3996, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !13164)
  %i.ig = icmp eq i64 %i.ib, 26, !dbg !13993
  br i1 %i.ig, label %bb.ai, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i, !dbg !13993

bb.ai:                                            ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i
    #dbg_value(i64 134217728, !3993, !DIExpression(), !13162)
    #dbg_value(i64 134217728, !3996, !DIExpression(), !13164)
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13166)
    #dbg_value(i64 134217728, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13166)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13166)
    #dbg_declare(ptr %i.d, !3929, !DIExpression(), !13167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13994, !noalias !13665
  store i64 134217728, ptr %i.d, align 8, !dbg !13994, !noalias !13665
  br label %.invoke.i.i, !dbg !13995

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i: ; preds = %bb.am, %bb.af
    #dbg_value(ptr %i.h, !13666, !DIExpression(), !13173)
    #dbg_value(ptr %i.h, !13647, !DIExpression(), !13175)
    #dbg_value(ptr %i.h, !13649, !DIExpression(), !13177)
  %i.ih = load i64, ptr %i.ds, align 8, !dbg !13996, !noalias !13596, !noundef !1285
  %i.ii = load i64, ptr %i.bi, align 8, !dbg !13997, !noalias !13634, !noundef !1285
  %i.ij = add i64 %i.ii, %i.ih, !dbg !13997
  store i64 %i.ij, ptr %i.bi, align 8, !dbg !13997, !noalias !13634
    #dbg_value(ptr %i.r, !13670, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !13181)
    #dbg_value(ptr %i.h, !13627, !DIExpression(), !13182)
    #dbg_value(ptr %i.h, !13624, !DIExpression(), !13183)
    #dbg_value(ptr %i.h, !13649, !DIExpression(), !13185)
  %i.ik = load ptr, ptr %i.h, align 8, !dbg !13998, !noalias !13596, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.ik, !13621, !DIExpression(), !13187)
    #dbg_value(ptr %i.ik, !13630, !DIExpression(), !12947)
  %i.il = atomicrmw add ptr %i.ik, i64 1 monotonic, align 8, !dbg !13999, !noalias !13634
    #dbg_value(i64 %i.il, !13625, !DIExpression(), !13188)
  %i.im = icmp slt i64 %i.il, 0, !dbg !14000
  br i1 %i.im, label %bb.as, label %bb.an, !dbg !14000

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i: ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i
    #dbg_value(!DIArgList(i64 2, i64 %i.ib), !3924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13166)
    #dbg_value(!DIArgList(i64 2, i64 %i.ib), !3924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13166)
    #dbg_value(i32 0, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13166)
    #dbg_declare(ptr %i.d, !3929, !DIExpression(), !13167)
    #dbg_value(ptr poison, !4005, !DIExpression(), !13190)
    #dbg_value(!DIArgList(i64 2, i64 %i.ib), !3996, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 536870912, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !13192)
    #dbg_value(ptr poison, !3989, !DIExpression(), !13194)
    #dbg_value(!DIArgList(i64 2, i64 %i.ib), !3993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !13196)
    #dbg_value(!DIArgList(i64 2, i64 %i.ib), !3996, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !13198)
  %i.in = shl nuw nsw i64 2, %i.ib, !dbg !14001
    #dbg_value(i64 %i.in, !3993, !DIExpression(), !13196)
    #dbg_value(i64 %i.in, !3996, !DIExpression(), !13198)
end_hunk_5
begin_hunk_6_@_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy17cache_start_group:bb.a
bb.n:                                             ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getShEBW_.exit.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !3039, !DIExpression(), !14316)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread.i unwind label %bb.o, !dbg !15307, !noalias !14993

bb.o:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !15306, !noalias !14993
  unreachable, !dbg !15306

_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15cache_start_one.exit.thread: ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBW_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getShEBW_.exit.i.i
    #dbg_value(ptr %i.i, !3039, !DIExpression(), !14318)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !15308, !noalias !14937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15309, !noalias !14992
    #dbg_value(i32 poison, !14978, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14319)
    #dbg_value(i32 poison, !14978, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14319)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15310, !noalias !14937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !15311, !noalias !14937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !15312, !noalias !14937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !15313
    #dbg_value(i32 poison, !14892, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14998)
    #dbg_value(i32 poison, !14892, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14998)
  br label %bb.bm, !dbg !15314

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.bw = invoke { ptr, i64 } @_RNvMs5_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_15StateBuilderNFA8to_state(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.p unwind label %.body.thread12.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15315, !noalias !14993 ; 2 uses

bb.p:                                             ; preds = %select.unfold.i.i
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0, !dbg !15316
  %i.by = extractvalue { ptr, i64 } %i.bw, 1, !dbg !15316 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14992
  store ptr %i.bx, ptr %i.h, align 8, !noalias !14999
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store i64 %i.by, ptr %i.bz, align 8, !noalias !14999
    #dbg_value(ptr poison, !15000, !DIExpression(), !14333)
    #dbg_value(ptr %0, !15004, !DIExpression(), !14333)
    #dbg_declare(ptr %i.h, !15005, !DIExpression(), !14334)
    #dbg_declare(ptr %i.g, !15012, !DIExpression(), !14335)
    #dbg_value(ptr poison, !15015, !DIExpression(), !14340)
    #dbg_value(ptr poison, !15020, !DIExpression(), !14343)
    #dbg_value(i64 1, !15023, !DIExpression(), !14351)
    #dbg_value(i8 0, !15025, !DIExpression(), !14351)
    #dbg_value(i64 1, !15032, !DIExpression(), !14354)
    #dbg_value(i8 0, !15034, !DIExpression(), !14354)
    #dbg_value(ptr poison, !3713, !DIExpression(), !14356)
    #dbg_value(ptr poison, !3721, !DIExpression(), !14358)
    #dbg_value(ptr poison, !3718, !DIExpression(), !14356)
    #dbg_value(ptr %i.aa, !3727, !DIExpression(), !14360)
    #dbg_value(i64 4, !3730, !DIExpression(), !14364)
    #dbg_value(i64 1, !3730, !DIExpression(), !14369)
    #dbg_value(ptr %i.aa, !3766, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14371)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aa, i64 40, !dbg !15317 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !15317, !alias.scope !15036, !noalias !15037, !noundef !1285 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 2305843009213693952, !dbg !15318
  call void @llvm.assume(i1 %i.cc), !dbg !15319
    #dbg_value(ptr %i.aa, !3766, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14375)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 64, !dbg !15320
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !15320, !alias.scope !15036, !noalias !15037, !noundef !1285 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 2305843009213693952, !dbg !15321
  call void @llvm.assume(i1 %i.cf), !dbg !15322
    #dbg_value(ptr %i.aa, !3774, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14377)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 88, !dbg !15323 ; 4 uses
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !15323, !alias.scope !15036, !noalias !15037, !noundef !1285 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 576460752303423488, !dbg !15324
  call void @llvm.assume(i1 %i.ci), !dbg !15325
  %i.cj = shl nuw nsw i64 %i.ch, 4, !dbg !15326
    #dbg_value(ptr %i.aa, !3781, !DIExpression(DW_OP_plus_uconst, 280, DW_OP_stack_value), !14379)
  %i.ck = load i64, ptr %i.ao, align 8, !dbg !15327, !alias.scope !15036, !noalias !15037, !noundef !1285
  %i.cl = mul i64 %i.ck, 20, !dbg !15328
    #dbg_value(ptr %i.aa, !3796, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !14383)
    #dbg_value(ptr %i.aa, !3802, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !14385)
    #dbg_value(ptr %i.aa, !3807, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !14387)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 112, !dbg !15329
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !15329, !alias.scope !15036, !noalias !15037, !noundef !1285 ; 2 uses
  %i.co = icmp ult i64 %i.cn, 2305843009213693952, !dbg !15330
  call void @llvm.assume(i1 %i.co), !dbg !15331
    #dbg_value(ptr %i.aa, !3807, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14389)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 136, !dbg !15332
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !15332, !alias.scope !15036, !noalias !15037, !noundef !1285 ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 2305843009213693952, !dbg !15333
  call void @llvm.assume(i1 %i.cr), !dbg !15334
    #dbg_value(ptr %i.aa, !3802, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !14391)
    #dbg_value(ptr %i.aa, !3807, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !14393)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aa, i64 168, !dbg !15335
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !15335, !alias.scope !15036, !noalias !15037, !noundef !1285 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 2305843009213693952, !dbg !15336
  call void @llvm.assume(i1 %i.cu), !dbg !15337
    #dbg_value(ptr %i.aa, !3807, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !14395)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aa, i64 192, !dbg !15338
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !15338, !alias.scope !15036, !noalias !15037, !noundef !1285 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, 2305843009213693952, !dbg !15339
  call void @llvm.assume(i1 %i.cx), !dbg !15340
    #dbg_value(ptr %i.aa, !3743, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !14396)
    #dbg_value(ptr %i.aa, !3740, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !14397)
  %i.cy = load i64, ptr %i.af, align 8, !dbg !15341, !range !3814, !alias.scope !15036, !noalias !15037, !noundef !1285
    #dbg_value(ptr %i.aa, !3763, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !14398)
    #dbg_value(ptr %i.aa, !3757, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !14399)
  %i.cz = load i64, ptr %i.ab, align 8, !dbg !15342, !range !3814, !alias.scope !15036, !noalias !15037, !noundef !1285
  %i.da = getelementptr inbounds nuw i8, ptr %i.aa, i64 328, !dbg !15343 ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !dbg !15343, !alias.scope !15036, !noalias !15037, !noundef !1285
  %i.dc = add nuw nsw i64 %i.ce, %i.cb, !dbg !15344
  %i.dd = add nuw nsw i64 %i.dc, %i.cn, !dbg !15345
  %i.de = add nuw nsw i64 %i.dd, %i.cq, !dbg !15346
  %i.df = add nuw i64 %i.de, %i.ct, !dbg !15347
  %i.dg = add nuw i64 %i.df, %i.cw, !dbg !15347
  %reass.add.i.i.i.i.i = add i64 %i.dg, %i.cy, !dbg !15347
  %reass.mul.i.i.i.i.i = shl i64 %reass.add.i.i.i.i.i, 2, !dbg !15347
    #dbg_value(i64 %i.by, !3725, !DIExpression(), !14358)
    #dbg_value(ptr %i.p, !3816, !DIExpression(), !14401)
    #dbg_value(ptr %i.p, !3819, !DIExpression(), !14403)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 696, !dbg !15348 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !dbg !15348, !noalias !15037, !noundef !1285
  %i.dj = and i64 %i.di, 63, !dbg !15349
  %i.dk = shl i64 4, %i.dj, !dbg !15350
  %i.dl = add i64 %i.by, 36, !dbg !15350
  %i.dm = add i64 %i.dl, %i.cj, !dbg !15350
  %i.dn = add i64 %i.dm, %i.cl, !dbg !15347
  %i.do = add i64 %i.dn, %i.cz, !dbg !15347
  %i.dp = add i64 %i.do, %i.db, !dbg !15347
  %i.dq = add i64 %i.dp, %reass.mul.i.i.i.i.i, !dbg !15347
  %i.dr = add i64 %i.dq, %i.dk, !dbg !15351
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.by, i64 %i.dk), !3719, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 36, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !14404)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 704, !dbg !15352
  %i.dt = load i64, ptr %i.ds, align 16, !dbg !15352, !noalias !15037, !noundef !1285
  %.not104.i.i.i = icmp ugt i64 %i.dr, %i.dt, !dbg !15353
  br i1 %.not104.i.i.i, label %bb.q, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i, !dbg !15354

.body.thread97.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %bb.an, %.invoke.i.i.i, %bb.ai, %bb.ag, %bb.ae, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr %0, !3823, !DIExpression(), !14406)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14409)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14409)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14412)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14412)
    #dbg_value(ptr %i.p, !3837, !DIExpression(), !14413)
    #dbg_value(ptr %i.p, !3854, !DIExpression(), !14414)
    #dbg_value(ptr %i.p, !3857, !DIExpression(), !14415)
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !15355
  %i.dv = load i64, ptr %i.du, align 16, !dbg !15355, !range !2651, !noalias !15038, !noundef !1285
    #dbg_value(i64 %i.dv, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14409)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14409)
  %i.dw = icmp eq i64 %i.dv, 1, !dbg !15356
  br i1 %i.dw, label %bb.s, label %bb.r, !dbg !15356

bb.r:                                             ; preds = %bb.x, %bb.s, %bb.q
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i.i unwind label %.body.thread97.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15357, !noalias !15039, !inline_history !876

._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load i64, ptr %i.ca, align 8, !dbg !15358, !noalias !15040
  br label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i, !dbg !15357

bb.s:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 72, !dbg !15355
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !15355, !noalias !15038
    #dbg_value(i64 %i.dy, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14409)
    #dbg_value(i64 %i.dy, !3838, !DIExpression(), !14422)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 336, !dbg !15359
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !15359, !noalias !15038, !noundef !1285
  %.not25.i.i.i.i = icmp ult i64 %i.ea, %i.dy, !dbg !15359
  br i1 %.not25.i.i.i.i, label %bb.r, label %bb.t, !dbg !15359

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %i.p, i64 80, !dbg !15360
  %i.ec = load i64, ptr %i.eb, align 16, !dbg !15360, !range !2651, !noalias !15038, !noundef !1285
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 88, !dbg !15360
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !15360, !noalias !15038
    #dbg_value(i64 %i.ec, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14412)
    #dbg_value(i64 %i.ee, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14412)
  %i.ef = icmp eq i64 %i.ec, 1, !dbg !15361
  br i1 %i.ef, label %bb.u, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i.i, !dbg !15361

bb.u:                                             ; preds = %bb.t
    #dbg_value(i64 %i.ee, !3839, !DIExpression(), !14423)
    #dbg_value(i64 %i.ee, !3870, !DIExpression(), !14425)
    #dbg_value(i64 %i.ee, !3874, !DIExpression(), !14427)
    #dbg_value(i64 %i.ee, !3881, !DIExpression(), !14429)
    #dbg_value(ptr %i.aa, !3503, !DIExpression(), !14431)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aa, i64 344, !dbg !15362
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !15362, !alias.scope !15041, !noalias !15038, !noundef !1285
    #dbg_value(ptr %i.aa, !3506, !DIExpression(), !14435)
  %i.ei = load i64, ptr %i.aa, align 8, !dbg !15363, !range !2667, !alias.scope !15041, !noalias !15038, !noundef !1285
  %i.ej = trunc nuw i64 %i.ei to i1, !dbg !15364
    #dbg_value(ptr poison, !3522, !DIExpression(), !14437)
    #dbg_value(i64 0, !3530, !DIExpression(), !14437)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !14438)
  br i1 %i.ej, label %bb.v, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i, !dbg !15365

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !15364
    #dbg_value(ptr %i.ek, !3522, !DIExpression(), !14437)
    #dbg_value(ptr %i.ek, !3532, !DIExpression(), !14439)
  %.val.i.i.i.i.i.i = load i64, ptr %i.ek, align 8, !dbg !15366, !alias.scope !15042, !noalias !15038, !noundef !1285
  %i.el = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !15366
  %.val6.i.i.i.i.i.i = load i64, ptr %i.el, align 8, !dbg !15366, !alias.scope !15042, !noalias !15038, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !14443)
    #dbg_value(ptr poison, !3537, !DIExpression(), !14444)
    #dbg_value(ptr poison, !3539, !DIExpression(), !14446)
  %i.em = sub nsw i64 %.val.i.i.i.i.i.i, %.val6.i.i.i.i.i.i, !dbg !15367
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.em, i1 true), !dbg !15367
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i, !dbg !15368

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.v ], [ 0, %bb.u ], !dbg !15369
  %i.en = add i64 %.sroa.02.0.i.i.i.i.i.i, %i.eh, !dbg !15362
    #dbg_value(i64 %i.en, !3840, !DIExpression(), !14447)
    #dbg_value(ptr %i.aa, !3920, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14449)
    #dbg_value(i64 %i.ch, !3871, !DIExpression(), !14425)
    #dbg_value(i64 %i.ch, !3877, !DIExpression(), !14427)
    #dbg_value(i64 %i.ch, !3887, !DIExpression(), !14429)
  %i.eo = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ee, i64 %i.ch), !dbg !15370 ; 2 uses
  %i.ep = extractvalue { i64, i1 } %i.eo, 0, !dbg !15370
  %i.eq = extractvalue { i64, i1 } %i.eo, 1, !dbg !15370
    #dbg_value(i1 %i.eq, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14450)
    #dbg_value(i1 %i.eq, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14452)
    #dbg_value(i64 %i.ep, !3841, !DIExpression(), !14453)
    #dbg_value(i64 %i.ep, !3878, !DIExpression(), !14450)
  br i1 %i.eq, label %bb.w, label %bb.x, !dbg !15371, !prof !3300

bb.w:                                             ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i
    #dbg_value(i64 -1, !3841, !DIExpression(), !14453)
    #dbg_value(i64 -1, !3878, !DIExpression(), !14450)
  br label %bb.x, !dbg !15372

bb.x:                                             ; preds = %bb.w, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i64 [ -1, %bb.w ], [ %i.ep, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i.i.i.i ], !dbg !15373
    #dbg_value(i64 %.sroa.014.0.i.i.i.i, !3878, !DIExpression(), !14450)
    #dbg_value(i64 %.sroa.014.0.i.i.i.i, !3841, !DIExpression(), !14453)
  %i.er = icmp ult i64 %i.en, %.sroa.014.0.i.i.i.i, !dbg !15374
  br i1 %i.er, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i.i, label %bb.r, !dbg !15374

_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i: ; preds = %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i.i, %bb.p
  %i.es = phi i64 [ %.pre.i.i.i, %._RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit_crit_edge.i.i.i ], [ %i.cb, %bb.p ], !dbg !15358 ; 3 uses
    #dbg_value(ptr %0, !3864, !DIExpression(), !14454)
    #dbg_value(ptr %i.aa, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14455)
    #dbg_value(i64 %i.es, !3897, !DIExpression(), !14457)
    #dbg_value(i64 %i.es, !3915, !DIExpression(), !14459)
  %i.et = icmp ult i64 %i.es, 2305843009213693952, !dbg !15375
  call void @llvm.assume(i1 %i.et), !dbg !15376
  %i.eu = icmp samesign ugt i64 %i.es, 134217727, !dbg !15377
  br i1 %i.eu, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i, !dbg !15377

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i.i.i.i: ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i
    #dbg_value(ptr %0, !3823, !DIExpression(), !14461)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14464)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14464)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14467)
    #dbg_value(i64 poison, !3843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14467)
    #dbg_value(ptr %i.p, !3837, !DIExpression(), !14468)
    #dbg_value(ptr %i.p, !3854, !DIExpression(), !14469)
    #dbg_value(ptr %i.p, !3857, !DIExpression(), !14470)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !15378
  %i.ew = load i64, ptr %i.ev, align 16, !dbg !15378, !range !2651, !noalias !15043, !noundef !1285
    #dbg_value(i64 %i.ew, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14464)
    #dbg_value(i64 poison, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14464)
  %i.ex = icmp eq i64 %i.ew, 1, !dbg !15379
  br i1 %i.ex, label %bb.y, label %bb.ae, !dbg !15379

bb.y:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 72, !dbg !15378
  %i.ez = load i64, ptr %i.ey, align 8, !dbg !15378, !noalias !15043
    #dbg_value(i64 %i.ez, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14464)
    #dbg_value(i64 %i.ez, !3838, !DIExpression(), !14473)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aa, i64 336, !dbg !15380
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !15380, !noalias !15043, !noundef !1285
  %.not25.i.i.i.i.i = icmp ult i64 %i.fb, %i.ez, !dbg !15380
  br i1 %.not25.i.i.i.i.i, label %bb.ae, label %bb.z, !dbg !15380

bb.z:                                             ; preds = %bb.y
  %i.fc = getelementptr inbounds nuw i8, ptr %i.p, i64 80, !dbg !15381
  %i.fd = load i64, ptr %i.fc, align 16, !dbg !15381, !range !2651, !noalias !15043, !noundef !1285
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 88, !dbg !15381
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !15381, !noalias !15043
    #dbg_value(i64 %i.fd, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14467)
    #dbg_value(i64 %i.ff, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14467)
  %i.fg = icmp eq i64 %i.fd, 1, !dbg !15382
  br i1 %i.fg, label %bb.aa, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i.i, !dbg !15382

bb.aa:                                            ; preds = %bb.z
    #dbg_value(i64 %i.ff, !3839, !DIExpression(), !14474)
    #dbg_value(i64 %i.ff, !3870, !DIExpression(), !14476)
    #dbg_value(i64 %i.ff, !3874, !DIExpression(), !14478)
    #dbg_value(i64 %i.ff, !3881, !DIExpression(), !14480)
    #dbg_value(ptr %i.aa, !3503, !DIExpression(), !14482)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aa, i64 344, !dbg !15383
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !15383, !alias.scope !15044, !noalias !15043, !noundef !1285
    #dbg_value(ptr %i.aa, !3506, !DIExpression(), !14486)
  %i.fj = load i64, ptr %i.aa, align 8, !dbg !15384, !range !2667, !alias.scope !15044, !noalias !15043, !noundef !1285
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !15385
    #dbg_value(ptr poison, !3522, !DIExpression(), !14488)
    #dbg_value(i64 0, !3530, !DIExpression(), !14488)
    #dbg_declare(ptr poison, !3531, !DIExpression(), !14489)
  br i1 %i.fk, label %bb.ab, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i71.i.i.i, !dbg !15386

bb.ab:                                            ; preds = %bb.aa
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !15385
    #dbg_value(ptr %i.fl, !3522, !DIExpression(), !14488)
    #dbg_value(ptr %i.fl, !3532, !DIExpression(), !14490)
  %.val.i.i.i73.i.i.i = load i64, ptr %i.fl, align 8, !dbg !15387, !alias.scope !15045, !noalias !15043, !noundef !1285
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !15387
  %.val6.i.i.i74.i.i.i = load i64, ptr %i.fm, align 8, !dbg !15387, !alias.scope !15045, !noalias !15043, !noundef !1285
    #dbg_declare(ptr poison, !3534, !DIExpression(), !14494)
    #dbg_value(ptr poison, !3537, !DIExpression(), !14495)
    #dbg_value(ptr poison, !3539, !DIExpression(), !14497)
  %i.fn = sub nsw i64 %.val.i.i.i73.i.i.i, %.val6.i.i.i74.i.i.i, !dbg !15388
  %.sroa.0.0.i.i.i.i75.i.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.fn, i1 true), !dbg !15388
  br label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i71.i.i.i, !dbg !15389

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i71.i.i.i: ; preds = %bb.ab, %bb.aa
  %.sroa.02.0.i.i.i72.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i75.i.i.i, %bb.ab ], [ 0, %bb.aa ], !dbg !15390
  %i.fo = add i64 %.sroa.02.0.i.i.i72.i.i.i, %i.fi, !dbg !15383
    #dbg_value(i64 %i.fo, !3840, !DIExpression(), !14498)
    #dbg_value(ptr %i.aa, !3920, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14500)
  %i.fp = load i64, ptr %i.cg, align 8, !dbg !15391, !noalias !15043, !noundef !1285 ; 2 uses
    #dbg_value(i64 %i.fp, !3871, !DIExpression(), !14476)
    #dbg_value(i64 %i.fp, !3877, !DIExpression(), !14478)
    #dbg_value(i64 %i.fp, !3887, !DIExpression(), !14480)
  %i.fq = icmp ult i64 %i.fp, 576460752303423488, !dbg !15392
  call void @llvm.assume(i1 %i.fq), !dbg !15393
  %i.fr = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ff, i64 %i.fp), !dbg !15394 ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 0, !dbg !15394
  %i.ft = extractvalue { i64, i1 } %i.fr, 1, !dbg !15394
    #dbg_value(i1 %i.ft, !3879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14501)
    #dbg_value(i1 %i.ft, !3891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14503)
    #dbg_value(i64 %i.fs, !3841, !DIExpression(), !14504)
    #dbg_value(i64 %i.fs, !3878, !DIExpression(), !14501)
  br i1 %i.ft, label %bb.ac, label %bb.ad, !dbg !15395, !prof !3300

bb.ac:                                            ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i71.i.i.i
    #dbg_value(i64 -1, !3841, !DIExpression(), !14504)
    #dbg_value(i64 -1, !3878, !DIExpression(), !14501)
  br label %bb.ad, !dbg !15396

bb.ad:                                            ; preds = %bb.ac, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i71.i.i.i
  %.sroa.014.0.i.i.i.i.i = phi i64 [ -1, %bb.ac ], [ %i.fs, %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_5Cache16search_total_len.exit.i71.i.i.i ], !dbg !15397
    #dbg_value(i64 %.sroa.014.0.i.i.i.i.i, !3878, !DIExpression(), !14501)
    #dbg_value(i64 %.sroa.014.0.i.i.i.i.i, !3841, !DIExpression(), !14504)
  %i.fu = icmp ult i64 %i.fo, %.sroa.014.0.i.i.i.i.i, !dbg !15398
  br i1 %i.fu, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.thread.i.i.i, label %bb.ae, !dbg !15398

bb.ae:                                            ; preds = %bb.ad, %bb.y, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit11.i.i.i.i
  invoke fastcc void @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy11clear_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc77.i.i.i unwind label %.body.thread97.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15399, !noalias !15039, !inline_history !877

.noexc77.i.i.i:                                   ; preds = %bb.ae
    #dbg_value(ptr %i.aa, !3859, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14506)
  %i.fv = load i64, ptr %i.ca, align 8, !dbg !15400, !noalias !15040, !noundef !1285 ; 4 uses
    #dbg_value(i64 %i.fv, !3897, !DIExpression(), !14508)
    #dbg_value(i64 %i.fv, !3915, !DIExpression(), !14510)
  %i.fw = icmp ult i64 %i.fv, 2305843009213693952, !dbg !15401
  call void @llvm.assume(i1 %i.fw), !dbg !15402
  %i.fx = icmp samesign ugt i64 %i.fv, 134217727, !dbg !15403
  br i1 %i.fx, label %bb.af, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i, !dbg !15403

bb.af:                                            ; preds = %.noexc77.i.i.i
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14512)
    #dbg_value(i64 %i.fv, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14512)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14512)
    #dbg_declare(ptr %i.f, !3929, !DIExpression(), !14513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15404, !noalias !15046
  store i64 %i.fv, ptr %i.f, align 8, !dbg !15404, !noalias !15046
  br label %.invoke.i.i.i, !dbg !15405

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i: ; preds = %.noexc77.i.i.i, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i
  %.sroa.3.0.i.in.i.i.i = phi i64 [ %i.es, %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy15try_clear_cache.exit.i.i.i ], [ %i.fv, %.noexc77.i.i.i ]
    #dbg_value(ptr poison, !15047, !DIExpression(DW_OP_deref, DW_OP_deref), !14519)
    #dbg_value(i64 %.sroa.3.0.i.in.i.i.i, !15051, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14519)
    #dbg_value(!DIArgList(i8 poison, i64 poison), !15008, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 28, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !14520)
    #dbg_value(ptr %i.h, !15054, !DIExpression(), !14523)
    #dbg_value(ptr %i.h, !15056, !DIExpression(), !14526)
    #dbg_value(ptr %i.h, !15058, !DIExpression(), !14529)
    #dbg_value(ptr %i.h, !15060, !DIExpression(), !14532)
  %i.fy = load i64, ptr %i.bz, align 8, !dbg !15406, !noalias !14999, !noundef !1285
    #dbg_value(ptr poison, !15062, !DIExpression(), !14537)
  %.not.i17.i.i = icmp eq i64 %i.fy, 0, !dbg !15407
  br i1 %.not.i17.i.i, label %bb.ag, label %bb.ai, !dbg !15407

bb.ag:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.ah unwind label %.body.thread97.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15407, !noalias !15037

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDNtBJ_16LazyStateIDErrorE6unwrapBN_.exit.i.i.i.i
    #dbg_value(!DIArgList(i8 %..i, i64 %.sroa.3.0.i.in.i.i.i), !15008, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 28, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !14520)
  %i.fz = zext nneg i8 %..i to i32, !dbg !15408
    #dbg_value(!DIArgList(i32 %i.fz, i64 %.sroa.3.0.i.in.i.i.i), !15008, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 28, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !14520)
  %i.ga = shl nuw nsw i32 %i.fz, 28, !dbg !15408
    #dbg_value(!DIArgList(i32 %i.ga, i64 %.sroa.3.0.i.in.i.i.i), !15008, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !14520)
  %.sroa.3.0.i.i.i.i = trunc nuw nsw i64 %.sroa.3.0.i.in.i.i.i to i32, !dbg !15409
    #dbg_value(i32 %.sroa.3.0.i.i.i.i, !15051, !DIExpression(), !14519)
    #dbg_value(!DIArgList(i32 %i.ga, i32 %.sroa.3.0.i.i.i.i), !15008, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !14520)
  %.sroa.0.0.i79.i.i.i = or disjoint i32 %i.ga, %.sroa.3.0.i.i.i.i, !dbg !15408
    #dbg_value(i32 %.sroa.0.0.i79.i.i.i, !15008, !DIExpression(), !14520)
  %i.gb = load ptr, ptr %i.h, align 8, !dbg !15406, !noalias !14999, !nonnull !1285, !noundef !1285
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16, !dbg !15407
  %i.gd = load i8, ptr %i.gc, align 8, !dbg !15407, !noalias !15037, !noundef !1285
  %i.ge = and i8 %i.gd, 1, !dbg !15407
  %i.gf = zext nneg i8 %i.ge to i32, !dbg !15410
  %i.gg = shl nuw nsw i32 %i.gf, 27, !dbg !15410
  %spec.select.i.i.i = or disjoint i32 %i.gg, %.sroa.0.0.i79.i.i.i, !dbg !15410 ; 3 uses
    #dbg_value(i32 %spec.select.i.i.i, !15008, !DIExpression(), !14520)
    #dbg_value(ptr %i.aa, !15066, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14542)
    #dbg_value(ptr %i.aa, !15069, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14545)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !15411
    #dbg_value(ptr %i.gh, !15066, !DIExpression(), !14542)
    #dbg_value(ptr %i.gh, !15069, !DIExpression(), !14545)
    #dbg_value(ptr %i.p, !15072, !DIExpression(), !14548)
    #dbg_value(ptr %i.p, !15074, !DIExpression(), !14551)
  %i.gi = load i64, ptr %i.dh, align 8, !dbg !15412, !noalias !15037, !noundef !1285
  %i.gj = and i64 %i.gi, 63, !dbg !15413
  %i.gk = shl nuw i64 1, %i.gj, !dbg !15413
    #dbg_value(i64 %i.gk, !15067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14542)
    #dbg_value(i64 %i.gk, !15070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14545)
    #dbg_value(i32 -2147483648, !15067, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14542)
    #dbg_value(i32 -2147483648, !15070, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14545)
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2id11LazyStateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB21_7sources6repeat6RepeatBG_EEEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gh, i64 noundef %i.gk, i32 noundef -2147483648)
          to label %bb.aj unwind label %.body.thread97.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15414, !noalias !15037

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(ptr %i.p, !15018, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !14552)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.p, i64 656, !dbg !15415 ; 3 uses
    #dbg_value(ptr %i.gl, !15016, !DIExpression(), !14340)
    #dbg_value(ptr %i.gl, !15021, !DIExpression(), !14343)
  %i.gm = load i128, ptr %i.gl, align 1, !dbg !15416
  %i.gn = getelementptr i8, ptr %i.gl, i64 16, !dbg !15416
  %i.go = load i128, ptr %i.gn, align 1, !dbg !15416
  %i.gp = or i128 %i.gm, %i.go, !dbg !15416
  %i.gq = icmp ne i128 %i.gp, 0, !dbg !15416
  %i.gr = zext i1 %i.gq to i32, !dbg !15416
  %i.gs = icmp eq i32 %i.gr, 0, !dbg !15416
  br i1 %i.gs, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i.i, label %bb.ak, !dbg !15417

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(ptr poison, !3961, !DIExpression(), !14554)
    #dbg_value(i32 %spec.select.i.i.i, !3966, !DIExpression(), !14554)
    #dbg_value(ptr poison, !3613, !DIExpression(), !14556)
    #dbg_value(ptr %i.p, !3974, !DIExpression(), !14558)
  %i.gt = load i64, ptr %i.dh, align 8, !dbg !15418, !noalias !15076, !noundef !1285
  %i.gu = and i64 %i.gt, 63, !dbg !15419          ; 4 uses
    #dbg_value(!DIArgList(i64 1, i64 %i.gu), !3977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !14562)
  %i.gv = icmp samesign ugt i64 %i.gu, 26, !dbg !15420
  br i1 %i.gv, label %bb.al, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i.i, !dbg !15420

bb.al:                                            ; preds = %bb.ak
  %i.gw = shl nuw i64 1, %i.gu, !dbg !15419
    #dbg_value(i64 %i.gw, !3977, !DIExpression(), !14562)
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14564)
    #dbg_value(i64 %i.gw, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14564)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14564)
    #dbg_declare(ptr %i.e, !3929, !DIExpression(), !14565)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15421, !noalias !15077
  store i64 %i.gw, ptr %i.e, align 8, !dbg !15421, !noalias !15077
  br label %.invoke.i.i.i, !dbg !15422

.invoke.i.i.i:                                    ; preds = %bb.am, %bb.al, %bb.af
  %i.gx = phi ptr [ %i.e, %bb.al ], [ %i.d, %bb.am ], [ %i.f, %bb.af ]
  %i.gy = phi ptr [ @40, %bb.al ], [ @41, %bb.am ], [ @26, %bb.af ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.gx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy) #20
          to label %.cont.i.i.i unwind label %.body.thread97.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15423, !noalias !15037

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i.i: ; preds = %bb.ak
    #dbg_value(!DIArgList(i64 1, i64 %i.gu), !3924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !14564)
    #dbg_value(i64 undef, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14564)
    #dbg_value(i32 0, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14564)
    #dbg_declare(ptr %i.e, !3929, !DIExpression(), !14565)
    #dbg_value(ptr poison, !3989, !DIExpression(), !14570)
    #dbg_value(!DIArgList(i64 2, i64 %i.gu), !3993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !14572)
    #dbg_value(!DIArgList(i64 2, i64 %i.gu), !3996, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !14574)
  %i.gz = icmp eq i64 %i.gu, 26, !dbg !15424
  br i1 %i.gz, label %bb.am, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i.i, !dbg !15424

bb.am:                                            ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i.i
    #dbg_value(i64 134217728, !3993, !DIExpression(), !14572)
    #dbg_value(i64 134217728, !3996, !DIExpression(), !14574)
    #dbg_value(i32 poison, !3924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14576)
    #dbg_value(i64 134217728, !3924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14576)
    #dbg_value(i32 1, !3924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14576)
    #dbg_declare(ptr %i.d, !3929, !DIExpression(), !14577)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15425, !noalias !15078
  store i64 134217728, ptr %i.d, align 8, !dbg !15425, !noalias !15078
  br label %.invoke.i.i.i, !dbg !15426

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.thread.i.i.i: ; preds = %bb.aq, %bb.aj
    #dbg_value(ptr %i.h, !15079, !DIExpression(), !14583)
    #dbg_value(ptr %i.h, !15058, !DIExpression(), !14585)
    #dbg_value(ptr %i.h, !15060, !DIExpression(), !14587)
  %i.ha = load i64, ptr %i.bz, align 8, !dbg !15427, !noalias !14999, !noundef !1285
  %i.hb = load i64, ptr %i.da, align 8, !dbg !15428, !noalias !15037, !noundef !1285
  %i.hc = add i64 %i.hb, %i.ha, !dbg !15428
  store i64 %i.hc, ptr %i.da, align 8, !dbg !15428, !noalias !15037
    #dbg_value(ptr %i.aa, !15083, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14591)
    #dbg_value(ptr %i.h, !15030, !DIExpression(), !14592)
    #dbg_value(ptr %i.h, !15027, !DIExpression(), !14593)
    #dbg_value(ptr %i.h, !15060, !DIExpression(), !14595)
  %i.hd = load ptr, ptr %i.h, align 8, !dbg !15429, !noalias !14999, !nonnull !1285, !noundef !1285
    #dbg_value(ptr %i.hd, !15024, !DIExpression(), !14597)
    #dbg_value(ptr %i.hd, !15033, !DIExpression(), !14354)
  %i.he = atomicrmw add ptr %i.hd, i64 1 monotonic, align 8, !dbg !15430, !noalias !15037
    #dbg_value(i64 %i.he, !15028, !DIExpression(), !14598)
  %i.hf = icmp slt i64 %i.he, 0, !dbg !15431
  br i1 %i.hf, label %bb.aw, label %bb.ar, !dbg !15431

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef11is_sentinel.exit.i.i.i: ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7LazyRef7dead_id.exit.i.i.i.i
    #dbg_value(!DIArgList(i64 2, i64 %i.gu), !3924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !14576)
    #dbg_value(!DIArgList(i64 2, i64 %i.gu), !3924, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14576)
end_hunk_6
begin_hunk_7_@_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish
declare noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsS_NtNtCsl4b0cIVMtRE_12aho_corasick4util10primitivesNtB5_9PatternIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtNtCsl4b0cIVMtRE_12aho_corasick6packed5teddy7builder9SearcherTEL_ENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie5StateENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextDupeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map15Utf8SuffixEntryENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtBO_5clone5Clone5cloneCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs3roNzt6HBWW_12regex_syntax3hir5ErrorNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRyNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtNtCsl4b0cIVMtRE_12aho_corasick6packed5teddy7builder9SearcherTEL_E9drop_slowBP_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabet6BitSetNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers12HybridEngineNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers13OnePassEngineNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers16ReverseDFAEngineNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers19ReverseHybridEngineNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers24BoundedBacktrackerEngineNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers9DFAEngineNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search9MatchKindNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabet7ByteSetNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRbNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB4_3NFANtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB5_12StartByteMapNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_11ByteClassesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRuNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map16Utf8BoundedEntryENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8Utf8NodeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEEINtNtNtBa_5slice4iter4IterB14_EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives9PatternIDINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives9PatternIDINtNtNtBa_5slice4iter4IterB14_EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexB15_EINtNtNtBa_5slice4iter4IterB14_EEB1b_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRTjNtNtNtCsl4b0cIVMtRE_12aho_corasick4util10primitives9PatternIDEINtNtNtBa_5slice4iter4IterB14_EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef ptr @_RINvNtCsl4b0cIVMtRE_12aho_corasick9automaton24try_find_overlapping_fwdRNtNtNtB4_3nfa10contiguous3NFAEB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtCsl4b0cIVMtRE_12aho_corasick9automaton12try_find_fwdRNtNtNtB4_3nfa10contiguous3NFAEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noinline noreturn }
attributes #21 = { cold }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { noinline }
attributes #24 = { noreturn }

!llvm.module.flags = !{!1046, !1047, !1048, !1049, !1050}
!llvm.ident = !{!1051}
!llvm.dbg.cu = !{!299}

!0 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Position", scope: !1277, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1284, templateParams: !1285, identifier: "52500ff92039f8a13d3ba33160338f26")
!1 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Span", scope: !1277, file: !1053, size: 384, align: 64, flags: DIFlagPublic, elements: !1280, templateParams: !1285, identifier: "63f030d9170c82493f5221e1467d5e6a")
!2 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&regex_syntax::ast::Span as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1275, vtableHolder: !1276, templateParams: !1285, identifier: "b5df420623eed45dcb3501f78ace163")
!3 = distinct !DIGlobalVariable(name: "<&regex_syntax::ast::Span as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !2, isLocal: true, isDefinition: true)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1305, identifier: "bd70c2da2522e1cd983da18d1f39af0e")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !1310, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, identifier: "acf2f59e419f8ece206b5bb9ec731cfb")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UsizeNoHighBit", scope: !1311, file: !1053, size: 64, align: 64, flags: DIFlagPublic, elements: !1313, templateParams: !1285, identifier: "329b1c7c0e215c27eefbfaa40cd335a2")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !1319, file: !1053, size: 64, align: 64, flags: DIFlagPublic, elements: !1322, templateParams: !1305, identifier: "8a7839ebdf32074e4948b18c100f5e94")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !1315, file: !1053, size: 64, align: 64, flags: DIFlagPublic, elements: !1318, templateParams: !1305, identifier: "b5bcf37829bc203ddbd0a2d9a69d5811")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVecInner<alloc::alloc::Global>", scope: !1299, file: !1053, size: 128, align: 64, flags: DIFlagPrivate, elements: !1309, templateParams: !1324, identifier: "dcb711ab33d416032286001d4e26fb02")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<u8, alloc::alloc::Global>", scope: !1299, file: !1053, size: 128, align: 64, flags: DIFlagProtected, elements: !1302, templateParams: !1325, identifier: "962109f88c4611f8cd965a699270f94e")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<u8, alloc::alloc::Global>", scope: !1295, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1298, templateParams: !1325, identifier: "4abba784be3d7a0ba7644f640c83f01b")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "String", scope: !1292, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1294, templateParams: !1285, identifier: "388a6e96d1f1003bfe762ff39281b552")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<alloc::string::String as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1290, vtableHolder: !12, templateParams: !1285, identifier: "3941049fc08d76cdd70cfd9bc8851462")
!14 = distinct !DIGlobalVariable(name: "<alloc::string::String as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !13, isLocal: true, isDefinition: true)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsupportedLookAround", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "281e6096a8d0faf5244a3fe297df4877")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsupportedBackreference", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "11ddd95125c013a6c2de89daf773821f")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnicodeClassInvalid", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "f5e889f8e0bbe03a39acec150963a51a")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SpecialWordOrRepetitionUnexpectedEof", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "946919e51f488a6c7fc1f05bc73a463c")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SpecialWordBoundaryUnrecognized", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "cc92007f4bfe7403f50ccb5146890ab8")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SpecialWordBoundaryUnclosed", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "9a198cd96e8e6b3f4ec6b2ff1ef925a0")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RepetitionMissing", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "1af28c3c0699f178c74b009c4434db2d")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RepetitionCountUnclosed", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "194ae96b265f75d27844fdb6cd140b38")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RepetitionCountDecimalEmpty", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "fa3a9bc4c8be9d785046f93eb4b7a9f")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RepetitionCountInvalid", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "db390cac29c903efe96a7ecf9bab39da")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NestLimitExceeded", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1368, templateParams: !1285, identifier: "66d3bd2b1bc6e4efa8c00fd5f3a33098")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupUnopened", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "c68c3aae146c557e74a62afb01cc1b59")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupUnclosed", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "4db27df390fd3774dbdee7143233bdfd")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupNameUnexpectedEof", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "e4d3ee77813f558768309f583721634c")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupNameInvalid", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "8fd51a2a55d810dd19a66bd8a8105be0")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupNameEmpty", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "c10a582f7878e3eaab38329132059f5e")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupNameDuplicate", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1370, templateParams: !1285, identifier: "562de491a6a937a42dce62bc55b8523a")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FlagUnrecognized", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "aac2cf1eac26804670805576bf643de3")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FlagUnexpectedEof", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "45702f3af19bc481629c948a15041903")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FlagRepeatedNegation", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1372, templateParams: !1285, identifier: "b5e93da8bc0d5a8372db05d4df295078")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FlagDuplicate", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1374, templateParams: !1285, identifier: "9baf59bc7ee109c4e32fc937af17784")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FlagDanglingNegation", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "42316e065e7c55ac268d9644fe1c3c03")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EscapeUnrecognized", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "70e431171921667de0a918698e5f5278")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EscapeUnexpectedEof", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "87d74a040afcbce6da90041beb030b24")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EscapeHexInvalidDigit", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "49dba1593a3fa14b8b04ee2e2e7343b3")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EscapeHexInvalid", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "ab07581b3ab09d563bbe79a24edaec73")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EscapeHexEmpty", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "6084db1fc28a5ea46cbabe44ae1cc3f3")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecimalInvalid", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "4474e91a77fa667e8c8af8291924452f")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecimalEmpty", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "b6d6e130225b134fc884f2f24c31fdad")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ClassUnclosed", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "8daaf6325a0d6837f42c1e5525f7f017")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ClassRangeLiteral", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "ee2d31a17abac23d6c2abb1d31e36b12")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ClassRangeInvalid", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "ced90ce06a336391e39a7e49b0b05d2a")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ClassEscapeInvalid", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "b6b8618b6c2496dafb86744ec3dbe3b9")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CaptureLimitExceeded", scope: !50, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "b9f2fd20a2bb192dce1a43aabbf0a749")
!49 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !50, file: !1053, size: 448, align: 64, elements: !1366, templateParams: !1285, identifier: "9dc334a406e5772ffb544edabac79cde", discriminator: !1375)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErrorKind", scope: !1277, file: !1053, size: 448, align: 64, flags: DIFlagPublic, elements: !1331, templateParams: !1285, identifier: "1b1c850480466d307e7a251dfbba72fb")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_syntax::ast::ErrorKind as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1330, vtableHolder: !50, templateParams: !1285, identifier: "d6c4dc7729729f508e87a8d52f983bd4")
!52 = distinct !DIGlobalVariable(name: "<regex_syntax::ast::ErrorKind as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !51, isLocal: true, isDefinition: true)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !56, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1394, templateParams: !1396, identifier: "c40c3c307e2103e7409a090af8cdf371")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !56, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1285, templateParams: !1396, identifier: "541db2e223a81e99ac66f8bc7d9cbb24")
!55 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !56, file: !1053, size: 128, align: 64, elements: !1392, templateParams: !1285, identifier: "87d5457d94278123d8996077ab9b85f", discriminator: !1397)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !1382, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1389, templateParams: !1285, identifier: "b643a56aa2623189b44587abe860a5b4")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !60, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1388, templateParams: !1399, identifier: "69ef80f6259e4ee53ce6b120617f355f")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !60, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1285, templateParams: !1399, identifier: "5ccf6d2e2dfc5186c0a883dc0ae7b4ca")
!59 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !60, file: !1053, size: 128, align: 64, elements: !1386, templateParams: !1285, identifier: "152cb79c4d6ecbdd12f32d79574c522f", discriminator: !1400)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::option::Option<usize>>", scope: !1382, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1383, templateParams: !1285, identifier: "4330b2c0a4d1838aea808cba17180192")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::option::Option<core::option::Option<usize>> as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1380, vtableHolder: !1381, templateParams: !1285, identifier: "ed39a9d06b103777ff32ebf0ce8d5dc4")
!62 = distinct !DIGlobalVariable(name: "<&core::option::Option<core::option::Option<usize>> as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !61, isLocal: true, isDefinition: true)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<core::option::Option<usize>> as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1405, vtableHolder: !60, templateParams: !1285, identifier: "2d7bb2b292647bf2b91a1c95b76d3279")
!64 = distinct !DIGlobalVariable(name: "<core::option::Option<core::option::Option<usize>> as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !63, isLocal: true, isDefinition: true)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<usize> as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1410, vtableHolder: !56, templateParams: !1285, identifier: "82d6360dd8a02cd2af13dc1ff2c89c56")
!66 = distinct !DIGlobalVariable(name: "<core::option::Option<usize> as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !65, isLocal: true, isDefinition: true)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BitSet", scope: !1422, file: !1053, size: 256, align: 128, flags: DIFlagPrivate, elements: !1430, templateParams: !1285, identifier: "2aae58fec874d7b28d15cf801d286324")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ByteSet", scope: !1422, file: !1053, size: 256, align: 128, flags: DIFlagProtected, elements: !1424, templateParams: !1285, identifier: "4983bad405d3ca8a14dec381840dc081")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !72, file: !1053, size: 384, align: 128, flags: DIFlagPublic, elements: !1421, templateParams: !1432, identifier: "1af4026807757b26cf918528c3ef7f2")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !72, file: !1053, size: 384, align: 128, flags: DIFlagPublic, elements: !1285, templateParams: !1432, identifier: "e916718b604157618a4c34f9b9b7b585")
!71 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !72, file: !1053, size: 384, align: 128, elements: !1419, templateParams: !1285, identifier: "de38c61089e0f5bb1a820453e952474b", discriminator: !1433)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<regex_automata::util::alphabet::ByteSet>", scope: !1382, file: !1053, size: 384, align: 128, flags: DIFlagPublic, elements: !1416, templateParams: !1285, identifier: "cb1319f44db3246ac7222cbf3e0aaf27")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<regex_automata::util::alphabet::ByteSet> as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1415, vtableHolder: !72, templateParams: !1285, identifier: "35d8f1b379e7de765caea94e78be3ce")
!74 = distinct !DIGlobalVariable(name: "<core::option::Option<regex_automata::util::alphabet::ByteSet> as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !73, isLocal: true, isDefinition: true)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !78, file: !1053, size: 8, align: 8, flags: DIFlagPublic, elements: !1445, templateParams: !1447, identifier: "71b55daa2bae461ce8632b821f9edee8")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !78, file: !1053, size: 8, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1447, identifier: "c4378ce2cd31a21fc3cbd1b661481a9d")
!77 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !78, file: !1053, size: 8, align: 8, elements: !1442, templateParams: !1285, identifier: "1ad1a5baa5708dc6cc69343e63ac0a14", discriminator: !1448)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<bool>", scope: !1382, file: !1053, size: 8, align: 8, flags: DIFlagPublic, elements: !1439, templateParams: !1285, identifier: "6a9c8b4d4f6ca6b546f23dbccd723b3b")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<bool> as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1438, vtableHolder: !78, templateParams: !1285, identifier: "a153fb7eaf7abb2055686c3ad0e4a85c")
!80 = distinct !DIGlobalVariable(name: "<core::option::Option<bool> as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !79, isLocal: true, isDefinition: true)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn regex_automata::util::prefilter::PrefilterI", file: !1053, align: 8, elements: !1285, identifier: "49a52c88f5dfd3ae9f6e4153f82c5d6")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Align8<usize>", scope: !1487, file: !1053, size: 64, align: 64, flags: DIFlagPublic, elements: !1489, templateParams: !1396, identifier: "631202888b650a22992278d9f9d77d24")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::sync::atomic::private::Align8<usize>>", scope: !1484, file: !1053, size: 64, align: 64, flags: DIFlagPublic, elements: !1486, templateParams: !1491, identifier: "1cf16ce96ecba53ca500783d135f4555")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic<usize>", scope: !1095, file: !1053, size: 64, align: 64, flags: DIFlagPublic, elements: !1483, templateParams: !1396, identifier: "a078e99d67c0fa992c5dfdd9f9818b5e")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<dyn regex_automata::util::prefilter::PrefilterI>", scope: !1471, file: !1053, size: 128, align: 64, flags: DIFlagPrivate, elements: !1481, templateParams: !1493, identifier: "2bdc414371a9d2cf43774eb52ef4add")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<dyn regex_automata::util::prefilter::PrefilterI>>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1477, identifier: "4dc9e39794f67bdabe37b8282c4abb5a")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const alloc::sync::ArcInner<dyn regex_automata::util::prefilter::PrefilterI>", file: !1053, size: 128, align: 64, elements: !1503, templateParams: !1285, identifier: "c7d0a21055550712d22336af1c5bc4ba")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<dyn regex_automata::util::prefilter::PrefilterI>>", scope: !1319, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1495, templateParams: !1477, identifier: "70b43b8a37c96e424895ce8281666689")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<dyn regex_automata::util::prefilter::PrefilterI, alloc::alloc::Global>", scope: !1471, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1475, templateParams: !1504, identifier: "c35d5da4c380ed993c15672c39df7cf")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Prefilter", scope: !1466, file: !1053, size: 256, align: 64, flags: DIFlagPublic, elements: !1470, templateParams: !1285, identifier: "39d58c9841cf103dee90b256760cb42b")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !94, file: !1053, size: 256, align: 64, flags: DIFlagPublic, elements: !1465, templateParams: !1506, identifier: "10fd5ccd37996ed46af830632eefa24e")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !94, file: !1053, size: 256, align: 64, flags: DIFlagPublic, elements: !1285, templateParams: !1506, identifier: "8c7bdc8bedbee86fc49a7af7e1443025")
!93 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !94, file: !1053, size: 256, align: 64, elements: !1463, templateParams: !1285, identifier: "b9ef3c6bf575dc8141aab841d5042bfe", discriminator: !1507)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<regex_automata::util::prefilter::Prefilter>", scope: !1382, file: !1053, size: 256, align: 64, flags: DIFlagPublic, elements: !1460, templateParams: !1285, identifier: "a19bca81e751be99320f7827885862e9")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !98, file: !1053, size: 256, align: 64, flags: DIFlagPublic, elements: !1459, templateParams: !1509, identifier: "d31752d4e76794264d72f7df451db188")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !98, file: !1053, size: 256, align: 64, flags: DIFlagPublic, elements: !1285, templateParams: !1509, identifier: "79a02dbce351e4151d0ce750ff4a898e")
!97 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !98, file: !1053, size: 256, align: 64, elements: !1457, templateParams: !1285, identifier: "dbb9b43a8bec67273cd9da150ed7186b", discriminator: !1510)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::option::Option<regex_automata::util::prefilter::Prefilter>>", scope: !1382, file: !1053, size: 256, align: 64, flags: DIFlagPublic, elements: !1454, templateParams: !1285, identifier: "e18aa57f52c6ff089a708425ed2a1169")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<core::option::Option<regex_automata::util::prefilter::Prefilter>> as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1453, vtableHolder: !98, templateParams: !1285, identifier: "44cccbf18c7bd63e226a4a94277cf234")
!100 = distinct !DIGlobalVariable(name: "<core::option::Option<core::option::Option<regex_automata::util::prefilter::Prefilter>> as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !99, isLocal: true, isDefinition: true)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !104, file: !1053, size: 8, align: 8, flags: DIFlagPublic, elements: !1521, templateParams: !1523, identifier: "1f974f03a25779ee10fc3384c69a0e69")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !104, file: !1053, size: 8, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1523, identifier: "c058ffdf9de5597e2541892a05e3e769")
!103 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !104, file: !1053, size: 8, align: 8, elements: !1519, templateParams: !1285, identifier: "3e8dd16ca17ca44de5f279f266387135", discriminator: !1524)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<regex_automata::util::search::MatchKind>", scope: !1382, file: !1053, size: 8, align: 8, flags: DIFlagPublic, elements: !1516, templateParams: !1285, identifier: "d974ce0f5d32b28453d431f87339e502")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::option::Option<regex_automata::util::search::MatchKind> as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1515, vtableHolder: !104, templateParams: !1285, identifier: "d503b664a91fbf2713de39fe2d852c11")
!106 = distinct !DIGlobalVariable(name: "<core::option::Option<regex_automata::util::search::MatchKind> as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !105, isLocal: true, isDefinition: true)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&() as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1529, vtableHolder: !1530, templateParams: !1285, identifier: "d5dbfd8cabedda1dc6cea12b6ccc3d0")
!108 = distinct !DIGlobalVariable(name: "<&() as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !107, isLocal: true, isDefinition: true)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_automata::util::alphabet::ByteSet as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1535, vtableHolder: !68, templateParams: !1285, identifier: "95175ca13b4998bbbd506a2cd793b5c9")
!110 = distinct !DIGlobalVariable(name: "<regex_automata::util::alphabet::ByteSet as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !109, isLocal: true, isDefinition: true)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ByteClasses", scope: !1422, file: !1053, size: 2048, align: 8, flags: DIFlagPublic, elements: !1545, templateParams: !1285, identifier: "a4ee7afb2260dcd1d7fda10035cc8e53")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_automata::util::alphabet::ByteClasses as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1540, vtableHolder: !111, templateParams: !1285, identifier: "784813b26874aff79f30844ce3305332")
!113 = distinct !DIGlobalVariable(name: "<regex_automata::util::alphabet::ByteClasses as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !112, isLocal: true, isDefinition: true)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StartByteMap", scope: !1084, file: !1053, size: 2048, align: 8, flags: DIFlagProtected, elements: !1553, templateParams: !1285, identifier: "992ee4a825298b036d793474c6eac79d")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_automata::util::start::StartByteMap as core::fmt::Debug>::{vtable_type}", file: !1053, size: 256, align: 64, flags: DIFlagArtificial, elements: !1550, vtableHolder: !114, templateParams: !1285, identifier: "214da27250631092bacc34bdc293ae40")
!116 = distinct !DIGlobalVariable(name: "<regex_automata::util::start::StartByteMap as core::fmt::Debug>::{vtable}", scope: null, file: !1053, type: !115, isLocal: true, isDefinition: true)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LookSet", scope: !1062, file: !1053, size: 32, align: 32, flags: DIFlagPublic, elements: !1589, templateParams: !1285, identifier: "f09ed47af84d601a2824a9368a4bd0cc")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DebugByte", scope: !1592, file: !1053, size: 8, align: 8, flags: DIFlagPublic, elements: !1594, templateParams: !1285, identifier: "de4d72bcf30ae7a226c577ff81b27df3")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LookMatcher", scope: !1062, file: !1053, size: 8, align: 8, flags: DIFlagPublic, elements: !1591, templateParams: !1285, identifier: "870d261d85539ec11f9d1dacfd7dcc06")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ByteClassSet", scope: !1422, file: !1053, size: 256, align: 128, flags: DIFlagProtected, elements: !1596, templateParams: !1285, identifier: "50d0cc3606eb0570ae49af7ce486c74f")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<str>", scope: !1471, file: !1053, size: 128, align: 64, flags: DIFlagPrivate, elements: !1649, templateParams: !1651, identifier: "ef329a168284e71bf983c8eea8b59211")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<str>>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1642, identifier: "d547b1abfcc0e231cde3c2f36b0ca423")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const alloc::sync::ArcInner<str>", file: !1053, size: 128, align: 64, elements: !1657, templateParams: !1285, identifier: "1f3622a3f3caf14c41896c6bb743ef4d")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<str>>", scope: !1319, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1653, templateParams: !1642, identifier: "78d9407fb59064adcddafa9cfb041098")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<str, alloc::alloc::Global>", scope: !1471, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1640, templateParams: !1658, identifier: "67bfbd32427051d34b41dabbeaec4a0b")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !129, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1636, templateParams: !1660, identifier: "ab8135c6fa245b67ecd345f80b9268fd")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !129, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1285, templateParams: !1660, identifier: "f1c95ad922305d07d716966ed87f7d40")
!128 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !129, file: !1053, size: 128, align: 64, elements: !1634, templateParams: !1285, identifier: "88bc6c98ea30f0bbcd12e76c87ee529", discriminator: !1661)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::sync::Arc<str, alloc::alloc::Global>>", scope: !1382, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1631, templateParams: !1285, identifier: "2d6bf667ef5b399baa37068f495cee1b")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1630, identifier: "f392860a193314af46bff38e351a8461")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !1299, file: !1053, size: 128, align: 64, flags: DIFlagProtected, elements: !1628, templateParams: !1662, identifier: "ae7381280946339aed4c8caba72343b3")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !1295, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1625, templateParams: !1662, identifier: "9e701d91c59a546aedb05da475a0412e")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1622, identifier: "7815b9de680d400e69fb61358265e8b8")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::alloc::Global>", scope: !1299, file: !1053, size: 128, align: 64, flags: DIFlagProtected, elements: !1620, templateParams: !1663, identifier: "2230d2faa5bd8a0d1085dfd66162b34f")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<alloc::vec::Vec<core::option::Option<alloc::sync::Arc<str, alloc::alloc::Global>>, alloc::alloc::Global>, alloc::alloc::Global>", scope: !1295, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1617, templateParams: !1663, identifier: "d24e176d438c359bafb5f56496fc88ac")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SmallIndex", scope: !1693, file: !1053, size: 32, align: 32, flags: DIFlagPublic, elements: !1695, templateParams: !1285, identifier: "cf8e097f66c81b6cd9b5bb3b96a625ea")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex)", file: !1053, size: 192, align: 64, elements: !1692, templateParams: !1285, identifier: "b2ea2a517f1b43db4b5b32209c4f7c94")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex)>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1689, identifier: "bb5b0cf3fe645604949dcda8ac438991")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTableInner", scope: !1683, file: !1053, size: 256, align: 64, flags: DIFlagPrivate, elements: !1700, templateParams: !1285, identifier: "266c6f770ca3cbce9d38846af50e8955")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawTable<(alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", scope: !1683, file: !1053, size: 256, align: 64, flags: DIFlagProtected, elements: !1687, templateParams: !1701, identifier: "4687a921d5e75fa4379c2187cb5d920c")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RandomState", scope: !1703, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1706, templateParams: !1285, identifier: "bb9a6f5166cb9522506642678cf807b")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>", scope: !1679, file: !1053, size: 384, align: 64, flags: DIFlagPublic, elements: !1682, templateParams: !1710, identifier: "ac4163aa49115198f17fd5e714555aef")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>", scope: !1675, file: !1053, size: 384, align: 64, flags: DIFlagPublic, elements: !1677, templateParams: !1710, identifier: "835765384b2bd65f950021229dddc429")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1671, identifier: "5fc43002ad43d525de783a133e7ef965")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", scope: !1299, file: !1053, size: 128, align: 64, flags: DIFlagProtected, elements: !1669, templateParams: !1711, identifier: "6713ef7ba3567f6fa1c6abc4b63db131")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<std::collections::hash::map::HashMap<alloc::sync::Arc<str, alloc::alloc::Global>, regex_automata::util::primitives::SmallIndex, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", scope: !1295, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1666, templateParams: !1711, identifier: "7ed2b66852616810edf4bdfbce31822a")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex)", file: !1053, size: 64, align: 32, elements: !1722, templateParams: !1285, identifier: "a5d76e0d6dfe25e3871adbc2256bd2b1")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex)>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1719, identifier: "243afb955d446ffd38f4fbab918b8897")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", scope: !1299, file: !1053, size: 128, align: 64, flags: DIFlagProtected, elements: !1717, templateParams: !1723, identifier: "9303565341cc410a3536b987218307d4")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<(regex_automata::util::primitives::SmallIndex, regex_automata::util::primitives::SmallIndex), alloc::alloc::Global>", scope: !1295, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1714, templateParams: !1723, identifier: "c925ac2a5ecc9a72ed176404f48255a0")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupInfoInner", scope: !1597, file: !1053, size: 640, align: 64, flags: DIFlagPrivate, elements: !1614, templateParams: !1285, identifier: "9f006b3760122651e51c665fc681f091")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<regex_automata::util::captures::GroupInfoInner>", scope: !1471, file: !1053, size: 768, align: 64, flags: DIFlagPrivate, elements: !1609, templateParams: !1725, identifier: "7723edcf19fc4041e4f2f92e387a3d84")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<regex_automata::util::captures::GroupInfoInner>>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1605, identifier: "ce4761af5649629cad2bcb6c4e707adb")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<regex_automata::util::captures::GroupInfoInner>>", scope: !1319, file: !1053, size: 64, align: 64, flags: DIFlagPublic, elements: !1728, templateParams: !1605, identifier: "f52c8dfd581745ec31f07d86e47aef81")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<regex_automata::util::captures::GroupInfoInner, alloc::alloc::Global>", scope: !1471, file: !1053, size: 64, align: 64, flags: DIFlagPublic, elements: !1603, templateParams: !1729, identifier: "2893e1c0cec89c88325a4a5c83b397d1")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupInfo", scope: !1597, file: !1053, size: 64, align: 64, flags: DIFlagPublic, elements: !1599, templateParams: !1285, identifier: "94c69a91455e15712e03fe7be589ef3a")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<regex_automata::util::primitives::StateID>", scope: !1303, file: !1053, align: 8, flags: DIFlagPublic, elements: !1285, templateParams: !1737, identifier: "eadb81b5adcd9b3ade8929778df2fe0f")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<regex_automata::util::primitives::StateID, alloc::alloc::Global>", scope: !1299, file: !1053, size: 128, align: 64, flags: DIFlagProtected, elements: !1735, templateParams: !1738, identifier: "229053f6d5d97c34ec0b3f768de62d76")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<regex_automata::util::primitives::StateID, alloc::alloc::Global>", scope: !1295, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1732, templateParams: !1738, identifier: "36a924e5b959e364291ef1ce965deef")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StateID", scope: !1693, file: !1053, size: 32, align: 32, flags: DIFlagPublic, elements: !1740, templateParams: !1285, identifier: "4fcd5faa3dea1364f1b9db2a78837100")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PatternID", scope: !1693, file: !1053, size: 32, align: 32, flags: DIFlagPublic, elements: !1763, templateParams: !1285, identifier: "32a198cc2b4d5683b6f38cf9d68a94e7")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Match", scope: !177, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1761, templateParams: !1285, identifier: "c2736c8f00d19adf570d16f24e2932a7")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Fail", scope: !177, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1285, identifier: "9109925a855fe87276a39536bdc1c83d")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Capture", scope: !177, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1768, templateParams: !1285, identifier: "78caa577d333c0c64e7169c97a42232")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BinaryUnion", scope: !177, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1771, templateParams: !1285, identifier: "706f027ead23bd209cbd2d54c33b1e25")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc::boxed::Box<[regex_automata::util::primitives::StateID], alloc::alloc::Global>", file: !1053, size: 128, align: 64, elements: !1777, templateParams: !1285, identifier: "1062a812ce21f50e4723a287607bcf6")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Union", scope: !177, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1773, templateParams: !1285, identifier: "ec909b8b298353aa665fa6d28a8fcfb")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Look", scope: !177, file: !1053, size: 192, align: 64, flags: DIFlagPublic, elements: !1780, templateParams: !1285, identifier: "805b5909883fc32e5d373a4d669be1c3")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DenseTransitions", scope: !1559, file: !1053, size: 128, align: 64, flags: DIFlagPublic, elements: !1784, templateParams: !1285, identifier: "8f812290f9cf87dae2535f8adf6d37c0")
end_hunk_7
