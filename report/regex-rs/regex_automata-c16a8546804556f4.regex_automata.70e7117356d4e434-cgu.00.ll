Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.00?download=true
inline.NumInlined: 948
inline.NumDeleted: 510
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE8truncateCs9GYDdpCSJ4S_14regex_automata:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !12495
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12500 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !12614, !DIExpression(), !12618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12619), !dbg !12814
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12620), !dbg !12814
    #dbg_value(ptr poison, !12621, !DIExpression(), !12643)
    #dbg_value(ptr poison, !12644, !DIExpression(), !12652)
    #dbg_declare(ptr %1, !12648, !DIExpression(), !12653)
    #dbg_declare(ptr poison, !12654, !DIExpression(), !12657)
    #dbg_declare(ptr poison, !12660, !DIExpression(), !12663)
  %.val.i = load i64, ptr %1, align 8, !dbg !12815, !alias.scope !12620, !noalias !12619, !noundef !1180 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12815
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !12815, !alias.scope !12620, !noalias !12619, !noundef !1180 ; 4 uses
    #dbg_value(ptr poison, !12665, !DIExpression(), !12669)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !12816 ; 2 uses
    #dbg_value(i64 %i.c, !12650, !DIExpression(), !12670)
    #dbg_value(i64 %i.c, !12658, !DIExpression(), !12671)
    #dbg_value(i64 %i.c, !12655, !DIExpression(), !12672)
    #dbg_value(i64 %i.c, !12661, !DIExpression(), !12673)
    #dbg_value(i64 %i.c, !4356, !DIExpression(), !12674)
    #dbg_value(i64 %i.c, !4376, !DIExpression(), !12675)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !12676)
    #dbg_value(i64 1, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12674)
    #dbg_value(i64 1, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12675)
    #dbg_value(i64 2, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12674)
    #dbg_value(i64 2, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12675)
    #dbg_value(i64 0, !4378, !DIExpression(), !12675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12817, !noalias !12677
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !dbg !12817, !noalias !12677
  %i.d = load i64, ptr %i.a, align 8, !dbg !12817, !range !1547, !noalias !12677, !noundef !1180
  %i.e = trunc nuw i64 %i.d to i1, !dbg !12818
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12674
  %i.g = load i64, ptr %i.f, align 8, !dbg !12674, !range !4381, !noalias !12677, !noundef !1180 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12674 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !12818, !prof !1567

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12819, !noalias !12677
    #dbg_value(i64 %i.g, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12678)
    #dbg_value(i64 %i.i, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12678)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !dbg !12820, !noalias !12677
  unreachable, !dbg !12820

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !12821, !noalias !12677, !nonnull !1180, !noundef !1180 ; 3 uses
    #dbg_value(i64 %i.g, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12679)
    #dbg_value(ptr %i.j, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12679)
    #dbg_value(ptr poison, !4377, !DIExpression(), !12680)
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !12822
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12681)
  tail call void @llvm.assume(i1 %i.k), !dbg !12823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12824, !noalias !12677
    #dbg_value(i64 %i.g, !12649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12682)
    #dbg_value(ptr %i.j, !12649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12682)
    #dbg_value(i64 0, !12649, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12682)
    #dbg_value(i64 %.val.i, !12645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12652)
    #dbg_value(i64 %.val.i, !12627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12643)
    #dbg_value(i64 %.val5.i, !12645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12652)
    #dbg_value(i64 %.val5.i, !12627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12643)
    #dbg_value(i8 poison, !12645, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12652)
    #dbg_value(i8 poison, !12627, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12643)
    #dbg_value(i8 poison, !12645, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12652)
    #dbg_value(i8 poison, !12627, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12643)
    #dbg_value(ptr undef, !12644, !DIExpression(), !12652)
    #dbg_value(ptr undef, !12621, !DIExpression(), !12643)
    #dbg_value(ptr poison, !12665, !DIExpression(), !12685)
    #dbg_value(i64 poison, !12628, !DIExpression(), !12686)
    #dbg_value(i64 1, !12629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12686)
    #dbg_value(i64 %i.c, !12629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12686)
    #dbg_value(i64 %i.c, !12630, !DIExpression(), !12687)
    #dbg_value(ptr poison, !12640, !DIExpression(), !12688)
    #dbg_value(ptr undef, !12641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12689)
    #dbg_value(i64 0, !12641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12689)
    #dbg_value(i64 %.val.i, !12690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12701)
    #dbg_value(i64 %.val.i, !12702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12712)
    #dbg_value(i64 %.val5.i, !12690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12701)
    #dbg_value(i64 %.val5.i, !12702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12712)
    #dbg_value(i8 poison, !12690, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12701)
    #dbg_value(i8 poison, !12702, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12712)
    #dbg_value(i8 poison, !12690, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12701)
    #dbg_value(i8 poison, !12702, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12712)
    #dbg_value(ptr poison, !12696, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12701)
    #dbg_value(ptr poison, !12708, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12712)
    #dbg_value(ptr poison, !12713, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12722)
    #dbg_value(ptr poison, !12723, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12735)
    #dbg_value(ptr undef, !12696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12701)
    #dbg_value(ptr undef, !12708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12712)
    #dbg_value(ptr undef, !12713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12722)
    #dbg_value(ptr undef, !12723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12735)
    #dbg_value(i64 0, !12696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12701)
    #dbg_value(i64 0, !12708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12712)
    #dbg_value(i64 0, !12713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12722)
    #dbg_value(i64 0, !12723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12735)
    #dbg_declare(ptr poison, !12707, !DIExpression(), !12736)
    #dbg_declare(ptr poison, !12720, !DIExpression(), !12737)
    #dbg_declare(ptr poison, !12732, !DIExpression(), !12738)
    #dbg_value(ptr undef, !12719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12722)
    #dbg_value(ptr undef, !12731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12735)
    #dbg_value(i64 1, !12719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12722)
    #dbg_value(i64 1, !12731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12735)
    #dbg_value(ptr undef, !12733, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12739)
    #dbg_value(i64 1, !12733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12739)
    #dbg_value(ptr undef, !12740, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12754)
    #dbg_value(i64 1, !12740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12754)
    #dbg_value(ptr undef, !12740, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12754)
    #dbg_value(i64 0, !12740, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12754)
    #dbg_value(ptr poison, !12740, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12754)
    #dbg_value(ptr undef, !12746, !DIExpression(), !12754)
    #dbg_value(ptr undef, !12755, !DIExpression(), !12757)
    #dbg_declare(ptr poison, !12747, !DIExpression(), !12758)
  %i.l = icmp ule i64 %.val.i, %.val5.i, !dbg !12825
    #dbg_value(i1 true, !12759, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12761)
  tail call void @llvm.assume(i1 %i.l), !dbg !12826
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !12827
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.preheader.i.i.i.i.i, !dbg !12827

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !12828
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !dbg !12828, !alias.scope !12620, !noalias !12619
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12645, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12652)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12627, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12643)
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12828
  %.sroa.510.0.copyload.i = load i8, ptr %.sroa.510.0..sroa_idx.i, align 8, !dbg !12828, !alias.scope !12620, !noalias !12619
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12645, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12652)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12627, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12643)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12690, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12701)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12702, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12712)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12690, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12701)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12702, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12712)
    #dbg_value(ptr %i.j, !12640, !DIExpression(), !12688)
    #dbg_value(ptr %i.j, !12696, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12701)
    #dbg_value(ptr %i.j, !12708, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12712)
    #dbg_value(ptr %i.j, !12713, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12722)
    #dbg_value(ptr %i.j, !12723, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12735)
    #dbg_value(ptr %i.j, !12740, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12754)
    #dbg_value(ptr undef, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12739)
    #dbg_value(ptr undef, !12740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12754)
  %.not.i.i.i.i.i.i = icmp eq i64 %.val5.i, 1
    #dbg_value(i64 poison, !12748, !DIExpression(), !12762)
    #dbg_value(ptr poison, !12763, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12772)
    #dbg_value(ptr poison, !12769, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !12772)
    #dbg_declare(ptr poison, !12767, !DIExpression(), !12773)
    #dbg_value(i64 poison, !12768, !DIExpression(), !12772)
    #dbg_value(i64 poison, !12774, !DIExpression(), !12777)
    #dbg_value(i64 poison, !12778, !DIExpression(), !12781)
    #dbg_value(ptr undef, !12775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12777)
    #dbg_value(ptr undef, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12781)
    #dbg_value(i64 1, !12775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12777)
    #dbg_value(i64 1, !12779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12781)
  %i.m = icmp eq i64 %.val.i, 0, !dbg !12829
  tail call void @llvm.assume(i1 %i.m), !dbg !12830
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12770, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12782)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12770, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12782)
    #dbg_value(ptr poison, !12783, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12792)
    #dbg_declare(ptr poison, !12787, !DIExpression(), !12793)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12788, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12792)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12788, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12792)
    #dbg_value(ptr poison, !12794, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12803)
    #dbg_declare(ptr poison, !12799, !DIExpression(), !12804)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12798, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12803)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12798, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12803)
    #dbg_value(ptr poison, !12805, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !12812)
    #dbg_value(ptr poison, !12810, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12812)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12809, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12812)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12809, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12812)
  store i8 %.sroa.510.0.copyload.i, ptr %i.j, align 1, !dbg !12831, !noalias !12813
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !12831
  store i8 %.sroa.6.0.copyload.i, ptr %i.n, align 1, !dbg !12831, !noalias !12813
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12827

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], !dbg !12832
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !12649, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12682)
  store i64 %i.g, ptr %0, align 8, !dbg !12833, !alias.scope !12619, !noalias !12620
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12833
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12833, !alias.scope !12619, !noalias !12620
  %.sroa.6.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12833
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx15.i, align 8, !dbg !12833, !alias.scope !12619, !noalias !12620
  ret void, !dbg !12834
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12839 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !12974, !DIExpression(), !12996)
    #dbg_value(ptr poison, !12997, !DIExpression(), !13005)
    #dbg_declare(ptr %1, !12970, !DIExpression(), !13006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13007), !dbg !13196
    #dbg_declare(ptr %1, !13001, !DIExpression(), !13008)
    #dbg_declare(ptr poison, !13009, !DIExpression(), !13012)
    #dbg_declare(ptr poison, !13015, !DIExpression(), !13018)
  %.val.i = load i64, ptr %1, align 8, !dbg !13197, !alias.scope !13007, !noalias !13019, !noundef !1180 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13197
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !13197, !alias.scope !13007, !noalias !13019, !noundef !1180 ; 4 uses
    #dbg_value(ptr poison, !13021, !DIExpression(), !13025)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !13198 ; 5 uses
    #dbg_value(i64 %i.c, !13003, !DIExpression(), !13026)
    #dbg_value(i64 %i.c, !13013, !DIExpression(), !13027)
    #dbg_value(i64 %i.c, !13010, !DIExpression(), !13028)
    #dbg_value(i64 %i.c, !13016, !DIExpression(), !13029)
    #dbg_value(i64 %i.c, !4356, !DIExpression(), !13030)
    #dbg_value(i64 %i.c, !4376, !DIExpression(), !13031)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !13032)
    #dbg_value(i64 1, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13030)
    #dbg_value(i64 1, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13031)
    #dbg_value(i64 2, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13030)
    #dbg_value(i64 2, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13031)
    #dbg_value(i64 0, !4378, !DIExpression(), !13031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13199, !noalias !13033
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !dbg !13199, !noalias !13033
  %i.d = load i64, ptr %i.a, align 8, !dbg !13199, !range !1547, !noalias !13033, !noundef !1180
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13200
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13030
  %i.g = load i64, ptr %i.f, align 8, !dbg !13030, !range !4381, !noalias !13033, !noundef !1180 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13030 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !13200, !prof !1567

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !13201, !noalias !13033
    #dbg_value(i64 %i.g, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13034)
    #dbg_value(i64 %i.i, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13034)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !dbg !13202, !noalias !13033
  unreachable, !dbg !13202

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !13203, !noalias !13033, !nonnull !1180, !noundef !1180 ; 4 uses
    #dbg_value(i64 %i.g, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13035)
    #dbg_value(ptr %i.j, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13035)
    #dbg_value(ptr poison, !4377, !DIExpression(), !13036)
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !13204
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13037)
  tail call void @llvm.assume(i1 %i.k), !dbg !13205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13206, !noalias !13033
    #dbg_value(i64 %i.g, !13002, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13038)
    #dbg_value(ptr %i.j, !13002, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13039), !dbg !13207
    #dbg_value(ptr undef, !12997, !DIExpression(), !13005)
    #dbg_declare(ptr %1, !12998, !DIExpression(), !13040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13041), !dbg !13208
    #dbg_value(ptr undef, !12974, !DIExpression(), !12996)
    #dbg_declare(ptr %1, !12980, !DIExpression(), !13042)
    #dbg_value(ptr poison, !13021, !DIExpression(), !13043)
    #dbg_value(i64 poison, !12981, !DIExpression(), !13044)
    #dbg_value(i64 1, !12982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13044)
    #dbg_value(i64 %i.c, !12982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13044)
    #dbg_value(i64 %i.c, !12983, !DIExpression(), !13045)
    #dbg_value(ptr %i.j, !12993, !DIExpression(), !13046)
    #dbg_value(ptr undef, !12994, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13047)
    #dbg_value(i64 0, !12994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13047)
    #dbg_value(ptr %i.j, !13048, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13059)
    #dbg_value(ptr %i.j, !13060, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13070)
    #dbg_value(ptr %i.j, !13071, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13080)
    #dbg_value(ptr %i.j, !13081, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13093)
    #dbg_value(ptr undef, !13048, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13059)
    #dbg_value(ptr undef, !13060, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13070)
    #dbg_value(ptr undef, !13071, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13080)
    #dbg_value(ptr undef, !13081, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13093)
    #dbg_value(i64 0, !13048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13059)
    #dbg_value(i64 0, !13060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13070)
    #dbg_value(i64 0, !13071, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13080)
    #dbg_value(i64 0, !13081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13094), !dbg !13209
    #dbg_declare(ptr %1, !13054, !DIExpression(), !13095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13096), !dbg !13210
    #dbg_declare(ptr %1, !13065, !DIExpression(), !13097)
    #dbg_declare(ptr poison, !13066, !DIExpression(), !13098)
    #dbg_declare(ptr poison, !13078, !DIExpression(), !13099)
    #dbg_declare(ptr poison, !13090, !DIExpression(), !13100)
    #dbg_value(ptr %1, !13077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13080)
    #dbg_value(ptr %1, !13089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13093)
    #dbg_value(i64 2, !13077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13080)
    #dbg_value(i64 2, !13089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13093)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13211 ; 2 uses
    #dbg_value(ptr %i.l, !13091, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13101)
    #dbg_value(i64 2, !13091, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13101)
    #dbg_value(ptr %i.l, !13102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13116)
    #dbg_value(i64 2, !13102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13116)
    #dbg_value(ptr undef, !13102, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !13116)
    #dbg_value(i64 0, !13102, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13116)
    #dbg_value(ptr %i.j, !13102, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13116)
    #dbg_value(ptr %1, !13108, !DIExpression(), !13116)
    #dbg_value(ptr %1, !13117, !DIExpression(), !13119)
    #dbg_value(ptr %1, !13120, !DIExpression(), !13123)
    #dbg_declare(ptr poison, !13109, !DIExpression(), !13124)
    #dbg_value(i64 1, !13125, !DIExpression(), !13128)
  %i.m = icmp ule i64 %.val.i, %.val5.i, !dbg !13212
    #dbg_value(i1 true, !13129, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13131)
  tail call void @llvm.assume(i1 %i.m), !dbg !13213
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !13214
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.preheader, !dbg !13214

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.neg = add i64 %.val.i, 1, !dbg !13214
  %xtraiter = and i64 %i.c, 1, !dbg !13214
  %i.n = icmp eq i64 %.val5.i, %.neg, !dbg !13214
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new, !dbg !13214

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2, !dbg !13214
  %i.o = or i64 %.val.i, 2                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.q = load i8, ptr %i.p, align 2, !alias.scope !13132, !noalias !13133, !noundef !1180
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !13132, !noalias !13133, !noundef !1180
  br label %.lr.ph.i.i.i.i.i.i, !dbg !13214

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %i.t = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.af, %.lr.ph.i.i.i.i.i.i ], !dbg !13215 ; 3 uses
  %i.u = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.o, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
    #dbg_value(i64 poison, !13110, !DIExpression(), !13134)
    #dbg_value(i64 poison, !13121, !DIExpression(), !13135)
    #dbg_value(i64 poison, !13126, !DIExpression(), !13128)
    #dbg_value(ptr poison, !13136, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13145)
    #dbg_value(ptr poison, !13142, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !13145)
    #dbg_declare(ptr poison, !13140, !DIExpression(), !13146)
    #dbg_value(i64 poison, !13141, !DIExpression(), !13145)
    #dbg_value(i64 poison, !13147, !DIExpression(), !13150)
    #dbg_value(i64 poison, !13151, !DIExpression(), !13154)
    #dbg_value(ptr %i.l, !13148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13150)
    #dbg_value(ptr %i.l, !13152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13154)
    #dbg_value(i64 2, !13148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13150)
    #dbg_value(i64 2, !13152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13154)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.u, !dbg !13216 ; 2 uses
    #dbg_value(ptr %i.v, !13155, !DIExpression(), !13157)
    #dbg_value(ptr %i.v, !13158, !DIExpression(), !13160)
    #dbg_value(ptr %i.v, !13161, !DIExpression(), !13163)
  %i.w = load i8, ptr %i.v, align 2, !dbg !13217, !alias.scope !13132, !noalias !13133, !noundef !1180
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !13217
  %i.y = load i8, ptr %i.x, align 1, !dbg !13217, !alias.scope !13132, !noalias !13133, !noundef !1180
    #dbg_value(i8 %i.w, !13143, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13164)
    #dbg_value(i8 %i.y, !13143, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13164)
    #dbg_value(ptr poison, !13165, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13174)
    #dbg_declare(ptr poison, !13169, !DIExpression(), !13175)
    #dbg_value(i8 %i.w, !13170, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13174)
    #dbg_value(i8 %i.y, !13170, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13174)
    #dbg_value(ptr poison, !13176, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13185)
    #dbg_declare(ptr poison, !13181, !DIExpression(), !13186)
    #dbg_value(i8 %i.w, !13180, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13185)
    #dbg_value(i8 %i.y, !13180, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13185)
    #dbg_value(ptr poison, !13187, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !13194)
    #dbg_value(ptr poison, !13192, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13194)
    #dbg_value(i8 %i.w, !13191, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13194)
    #dbg_value(i8 %i.y, !13191, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13194)
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.t, !dbg !13218 ; 2 uses
  store i8 %i.w, ptr %i.z, align 1, !dbg !13219, !noalias !13195
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1, !dbg !13219
  store i8 %i.y, ptr %i.aa, align 1, !dbg !13219, !noalias !13195
    #dbg_value(i64 1, !13110, !DIExpression(), !13134)
    #dbg_value(i64 1, !13121, !DIExpression(), !13135)
    #dbg_value(i64 1, !13126, !DIExpression(), !13128)
    #dbg_declare(ptr poison, !13140, !DIExpression(), !13146)
    #dbg_value(i64 1, !13141, !DIExpression(), !13145)
    #dbg_value(i64 1, !13147, !DIExpression(), !13150)
    #dbg_value(i64 1, !13151, !DIExpression(), !13154)
    #dbg_value(ptr %i.l, !13148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13150)
    #dbg_value(ptr %i.l, !13152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13154)
    #dbg_value(i64 2, !13148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13150)
    #dbg_value(i64 2, !13152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13154)
  %i.ab = icmp eq i64 %i.u, 0, !dbg !13220
  tail call void @llvm.assume(i1 %i.ab), !dbg !13221
    #dbg_value(ptr %i.p, !13155, !DIExpression(), !13157)
    #dbg_value(ptr %i.p, !13158, !DIExpression(), !13160)
    #dbg_value(ptr %i.p, !13161, !DIExpression(), !13163)
    #dbg_value(i8 %i.q, !13143, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13164)
    #dbg_value(i8 %i.s, !13143, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13164)
    #dbg_declare(ptr poison, !13169, !DIExpression(), !13175)
    #dbg_value(i8 %i.q, !13170, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13174)
    #dbg_value(i8 %i.s, !13170, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13174)
    #dbg_declare(ptr poison, !13181, !DIExpression(), !13186)
    #dbg_value(i8 %i.q, !13180, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13185)
    #dbg_value(i8 %i.s, !13180, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13185)
    #dbg_value(i8 %i.q, !13191, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13194)
    #dbg_value(i8 %i.s, !13191, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13194)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.t, !dbg !13218 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2, !dbg !13218
  store i8 %i.q, ptr %i.ad, align 1, !dbg !13219, !noalias !13195
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 3, !dbg !13219
  store i8 %i.s, ptr %i.ae, align 1, !dbg !13219, !noalias !13195
  %i.af = add nuw i64 %i.t, 2, !dbg !13222        ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !13214  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !13214
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !dbg !13214

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13214
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader, !dbg !13214

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init3 = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.c to i1, !dbg !13214
  tail call void @llvm.assume(i1 %lcmp.mod5), !dbg !13214
    #dbg_value(i64 %.epil.init3, !13110, !DIExpression(), !13134)
    #dbg_value(i64 %.epil.init3, !13121, !DIExpression(), !13135)
    #dbg_value(i64 %.epil.init3, !13126, !DIExpression(), !13128)
    #dbg_value(ptr poison, !13136, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13145)
    #dbg_value(ptr poison, !13142, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !13145)
    #dbg_declare(ptr poison, !13140, !DIExpression(), !13146)
    #dbg_value(i64 %.epil.init3, !13141, !DIExpression(), !13145)
    #dbg_value(i64 %.epil.init3, !13147, !DIExpression(), !13150)
    #dbg_value(i64 %.epil.init3, !13151, !DIExpression(), !13154)
    #dbg_value(ptr %i.l, !13148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13150)
    #dbg_value(ptr %i.l, !13152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13154)
    #dbg_value(i64 2, !13148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13150)
    #dbg_value(i64 2, !13152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13154)
  %i.ag = icmp ult i64 %.epil.init3, 2, !dbg !13220
  tail call void @llvm.assume(i1 %i.ag), !dbg !13221
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.epil.init3, !dbg !13216 ; 2 uses
    #dbg_value(ptr %i.ah, !13155, !DIExpression(), !13157)
    #dbg_value(ptr %i.ah, !13158, !DIExpression(), !13160)
    #dbg_value(ptr %i.ah, !13161, !DIExpression(), !13163)
  %i.ai = load i8, ptr %i.ah, align 2, !dbg !13217, !alias.scope !13132, !noalias !13133, !noundef !1180
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !13217
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !13217, !alias.scope !13132, !noalias !13133, !noundef !1180
    #dbg_value(i8 %i.ai, !13143, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13164)
    #dbg_value(i8 %i.ak, !13143, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13164)
    #dbg_value(ptr poison, !13165, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13174)
    #dbg_declare(ptr poison, !13169, !DIExpression(), !13175)
    #dbg_value(i8 %i.ai, !13170, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13174)
    #dbg_value(i8 %i.ak, !13170, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13174)
    #dbg_value(ptr poison, !13176, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13185)
    #dbg_declare(ptr poison, !13181, !DIExpression(), !13186)
    #dbg_value(i8 %i.ai, !13180, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13185)
    #dbg_value(i8 %i.ak, !13180, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13185)
    #dbg_value(ptr poison, !13187, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !13194)
    #dbg_value(ptr poison, !13192, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13194)
    #dbg_value(i8 %i.ai, !13191, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13194)
    #dbg_value(i8 %i.ak, !13191, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13194)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.epil.init, !dbg !13218 ; 2 uses
  store i8 %i.ai, ptr %i.al, align 1, !dbg !13219, !noalias !13195
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1, !dbg !13219
  store i8 %i.ak, ptr %i.am, align 1, !dbg !13219, !noalias !13195
  %i.an = add nuw i64 %.epil.init, 1, !dbg !13222
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13223

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], [ %i.af, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.i.i.i.i.i.i.epil.preheader ], !dbg !13224
    #dbg_value(ptr undef, !12994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13047)
    #dbg_value(ptr undef, !13048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13059)
    #dbg_value(ptr undef, !13060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13070)
    #dbg_value(ptr undef, !13071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13080)
    #dbg_value(ptr undef, !13081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13093)
    #dbg_value(ptr undef, !13102, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13116)
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !13002, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13038)
  store i64 %i.g, ptr %0, align 8, !dbg !13223, !noalias !13007
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13223
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13223, !noalias !13007
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13223
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13223, !noalias !13007
  ret void, !dbg !13225
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13230 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !13365, !DIExpression(), !13387)
    #dbg_value(ptr poison, !13388, !DIExpression(), !13396)
    #dbg_declare(ptr %1, !13361, !DIExpression(), !13397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13398), !dbg !13587
    #dbg_declare(ptr %1, !13392, !DIExpression(), !13399)
    #dbg_declare(ptr poison, !13400, !DIExpression(), !13403)
    #dbg_declare(ptr poison, !13406, !DIExpression(), !13409)
  %.val.i = load i64, ptr %1, align 8, !dbg !13588, !alias.scope !13398, !noalias !13410, !noundef !1180 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13588
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !13588, !alias.scope !13398, !noalias !13410, !noundef !1180 ; 4 uses
    #dbg_value(ptr poison, !13412, !DIExpression(), !13416)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !13589 ; 5 uses
    #dbg_value(i64 %i.c, !13394, !DIExpression(), !13417)
    #dbg_value(i64 %i.c, !13404, !DIExpression(), !13418)
    #dbg_value(i64 %i.c, !13401, !DIExpression(), !13419)
    #dbg_value(i64 %i.c, !13407, !DIExpression(), !13420)
    #dbg_value(i64 %i.c, !4356, !DIExpression(), !13421)
    #dbg_value(i64 %i.c, !4376, !DIExpression(), !13422)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !13423)
    #dbg_value(i64 1, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13421)
    #dbg_value(i64 1, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13422)
    #dbg_value(i64 2, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13421)
    #dbg_value(i64 2, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13422)
    #dbg_value(i64 0, !4378, !DIExpression(), !13422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13590, !noalias !13424
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !dbg !13590, !noalias !13424
  %i.d = load i64, ptr %i.a, align 8, !dbg !13590, !range !1547, !noalias !13424, !noundef !1180
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13591
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13421
  %i.g = load i64, ptr %i.f, align 8, !dbg !13421, !range !4381, !noalias !13424, !noundef !1180 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13421 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !13591, !prof !1567

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !13592, !noalias !13424
    #dbg_value(i64 %i.g, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13425)
    #dbg_value(i64 %i.i, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13425)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !dbg !13593, !noalias !13424
  unreachable, !dbg !13593

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !13594, !noalias !13424, !nonnull !1180, !noundef !1180 ; 4 uses
    #dbg_value(i64 %i.g, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr %i.j, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(ptr poison, !4377, !DIExpression(), !13427)
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !13595
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13428)
  tail call void @llvm.assume(i1 %i.k), !dbg !13596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13597, !noalias !13424
    #dbg_value(i64 %i.g, !13393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13429)
    #dbg_value(ptr %i.j, !13393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13430), !dbg !13598
    #dbg_value(ptr undef, !13388, !DIExpression(), !13396)
    #dbg_declare(ptr %1, !13389, !DIExpression(), !13431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13432), !dbg !13599
    #dbg_value(ptr undef, !13365, !DIExpression(), !13387)
    #dbg_declare(ptr %1, !13371, !DIExpression(), !13433)
    #dbg_value(ptr poison, !13412, !DIExpression(), !13434)
    #dbg_value(i64 poison, !13372, !DIExpression(), !13435)
    #dbg_value(i64 1, !13373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13435)
    #dbg_value(i64 %i.c, !13373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13435)
    #dbg_value(i64 %i.c, !13374, !DIExpression(), !13436)
    #dbg_value(ptr %i.j, !13384, !DIExpression(), !13437)
    #dbg_value(ptr undef, !13385, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13438)
    #dbg_value(i64 0, !13385, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13438)
    #dbg_value(ptr %i.j, !13439, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13450)
    #dbg_value(ptr %i.j, !13451, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13461)
    #dbg_value(ptr %i.j, !13462, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13471)
    #dbg_value(ptr %i.j, !13472, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13484)
    #dbg_value(ptr undef, !13439, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13450)
    #dbg_value(ptr undef, !13451, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13461)
    #dbg_value(ptr undef, !13462, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13471)
    #dbg_value(ptr undef, !13472, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13484)
    #dbg_value(i64 0, !13439, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13450)
    #dbg_value(i64 0, !13451, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13461)
    #dbg_value(i64 0, !13462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13471)
    #dbg_value(i64 0, !13472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13485), !dbg !13600
    #dbg_declare(ptr %1, !13445, !DIExpression(), !13486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13487), !dbg !13601
    #dbg_declare(ptr %1, !13456, !DIExpression(), !13488)
    #dbg_declare(ptr poison, !13457, !DIExpression(), !13489)
    #dbg_declare(ptr poison, !13469, !DIExpression(), !13490)
    #dbg_declare(ptr poison, !13481, !DIExpression(), !13491)
    #dbg_value(ptr %1, !13468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13471)
    #dbg_value(ptr %1, !13480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13484)
    #dbg_value(i64 3, !13468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13471)
    #dbg_value(i64 3, !13480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13484)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13602 ; 3 uses
    #dbg_value(ptr %i.l, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13492)
    #dbg_value(i64 3, !13482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13492)
    #dbg_value(ptr %i.l, !13493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13507)
    #dbg_value(i64 3, !13493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13507)
    #dbg_value(ptr undef, !13493, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !13507)
    #dbg_value(i64 0, !13493, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13507)
    #dbg_value(ptr %i.j, !13493, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13507)
    #dbg_value(ptr %1, !13499, !DIExpression(), !13507)
    #dbg_value(ptr %1, !13508, !DIExpression(), !13510)
    #dbg_value(ptr %1, !13511, !DIExpression(), !13514)
    #dbg_declare(ptr poison, !13500, !DIExpression(), !13515)
    #dbg_value(i64 1, !13516, !DIExpression(), !13519)
  %i.m = icmp ule i64 %.val.i, %.val5.i, !dbg !13603
    #dbg_value(i1 true, !13520, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13522)
  tail call void @llvm.assume(i1 %i.m), !dbg !13604
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !13605
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.preheader, !dbg !13605

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.neg = add i64 %.val.i, 1, !dbg !13605
  %xtraiter = and i64 %i.c, 1, !dbg !13605
  %i.n = icmp eq i64 %.val5.i, %.neg, !dbg !13605
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new, !dbg !13605

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2, !dbg !13605
  %i.o = or i64 %.val.i, 2                        ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i, !dbg !13605

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %i.p = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ], !dbg !13606 ; 3 uses
  %i.q = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.o, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
    #dbg_value(i64 %i.q, !13501, !DIExpression(), !13523)
    #dbg_value(i64 %i.q, !13512, !DIExpression(), !13524)
    #dbg_value(i64 %i.q, !13517, !DIExpression(), !13519)
    #dbg_value(ptr poison, !13525, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13534)
    #dbg_value(ptr poison, !13531, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !13534)
    #dbg_declare(ptr poison, !13529, !DIExpression(), !13535)
    #dbg_value(i64 %i.q, !13530, !DIExpression(), !13534)
    #dbg_value(i64 %i.q, !13536, !DIExpression(), !13539)
    #dbg_value(i64 %i.q, !13540, !DIExpression(), !13543)
    #dbg_value(ptr %i.l, !13537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13539)
    #dbg_value(ptr %i.l, !13541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13543)
    #dbg_value(i64 3, !13537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13539)
    #dbg_value(i64 3, !13541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13543)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.q, !dbg !13607 ; 2 uses
    #dbg_value(ptr %i.r, !13544, !DIExpression(), !13546)
    #dbg_value(ptr %i.r, !13547, !DIExpression(), !13549)
    #dbg_value(ptr %i.r, !13550, !DIExpression(), !13552)
  %i.s = load i8, ptr %i.r, align 2, !dbg !13608, !alias.scope !13553, !noalias !13554, !noundef !1180
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !13608
  %i.u = load i8, ptr %i.t, align 1, !dbg !13608, !alias.scope !13553, !noalias !13554, !noundef !1180
    #dbg_value(i8 %i.s, !13532, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13555)
    #dbg_value(i8 %i.u, !13532, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13555)
    #dbg_value(ptr poison, !13556, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13565)
    #dbg_declare(ptr poison, !13560, !DIExpression(), !13566)
    #dbg_value(i8 %i.s, !13561, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13565)
    #dbg_value(i8 %i.u, !13561, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13565)
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13576)
    #dbg_declare(ptr poison, !13572, !DIExpression(), !13577)
    #dbg_value(i8 %i.s, !13571, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13576)
    #dbg_value(i8 %i.u, !13571, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13576)
    #dbg_value(ptr poison, !13578, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !13585)
    #dbg_value(ptr poison, !13583, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13585)
    #dbg_value(i8 %i.s, !13582, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13585)
    #dbg_value(i8 %i.u, !13582, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13585)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.p, !dbg !13609 ; 2 uses
  store i8 %i.s, ptr %i.v, align 1, !dbg !13610, !noalias !13586
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !13610
  store i8 %i.u, ptr %i.w, align 1, !dbg !13610, !noalias !13586
    #dbg_value(i64 %i.q, !13501, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13523)
    #dbg_value(i64 %i.q, !13512, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13524)
    #dbg_value(i64 %i.q, !13517, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13519)
    #dbg_declare(ptr poison, !13529, !DIExpression(), !13535)
    #dbg_value(i64 %i.q, !13530, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13534)
    #dbg_value(i64 %i.q, !13536, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13539)
    #dbg_value(i64 %i.q, !13540, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13543)
    #dbg_value(ptr %i.l, !13537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13539)
    #dbg_value(ptr %i.l, !13541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13543)
    #dbg_value(i64 3, !13537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13539)
    #dbg_value(i64 3, !13541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13543)
  %i.x = icmp ult i64 %i.q, 2, !dbg !13611
  tail call void @llvm.assume(i1 %i.x), !dbg !13612
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.q, !dbg !13607 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2, !dbg !13607
    #dbg_value(ptr %i.z, !13544, !DIExpression(), !13546)
    #dbg_value(ptr %i.z, !13547, !DIExpression(), !13549)
    #dbg_value(ptr %i.z, !13550, !DIExpression(), !13552)
  %i.aa = load i8, ptr %i.z, align 2, !dbg !13608, !alias.scope !13553, !noalias !13554, !noundef !1180
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 3, !dbg !13608
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !13608, !alias.scope !13553, !noalias !13554, !noundef !1180
    #dbg_value(i8 %i.aa, !13532, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13555)
    #dbg_value(i8 %i.ac, !13532, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13555)
    #dbg_declare(ptr poison, !13560, !DIExpression(), !13566)
    #dbg_value(i8 %i.aa, !13561, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13565)
    #dbg_value(i8 %i.ac, !13561, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13565)
    #dbg_declare(ptr poison, !13572, !DIExpression(), !13577)
    #dbg_value(i8 %i.aa, !13571, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13576)
    #dbg_value(i8 %i.ac, !13571, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13576)
    #dbg_value(i8 %i.aa, !13582, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13585)
    #dbg_value(i8 %i.ac, !13582, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13585)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.p, !dbg !13609 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2, !dbg !13609
  store i8 %i.aa, ptr %i.ae, align 1, !dbg !13610, !noalias !13586
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 3, !dbg !13610
  store i8 %i.ac, ptr %i.af, align 1, !dbg !13610, !noalias !13586
  %i.ag = add nuw i64 %i.p, 2, !dbg !13613        ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !13605  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !13605
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !dbg !13605

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13605
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader, !dbg !13605

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init3 = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.c to i1, !dbg !13605
  tail call void @llvm.assume(i1 %lcmp.mod5), !dbg !13605
    #dbg_value(i64 %.epil.init3, !13501, !DIExpression(), !13523)
    #dbg_value(i64 %.epil.init3, !13512, !DIExpression(), !13524)
    #dbg_value(i64 %.epil.init3, !13517, !DIExpression(), !13519)
    #dbg_value(ptr poison, !13525, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13534)
    #dbg_value(ptr poison, !13531, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !13534)
    #dbg_declare(ptr poison, !13529, !DIExpression(), !13535)
    #dbg_value(i64 %.epil.init3, !13530, !DIExpression(), !13534)
    #dbg_value(i64 %.epil.init3, !13536, !DIExpression(), !13539)
    #dbg_value(i64 %.epil.init3, !13540, !DIExpression(), !13543)
    #dbg_value(ptr %i.l, !13537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13539)
    #dbg_value(ptr %i.l, !13541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13543)
    #dbg_value(i64 3, !13537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13539)
    #dbg_value(i64 3, !13541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13543)
  %i.ah = icmp ult i64 %.epil.init3, 3, !dbg !13611
  tail call void @llvm.assume(i1 %i.ah), !dbg !13612
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.epil.init3, !dbg !13607 ; 2 uses
    #dbg_value(ptr %i.ai, !13544, !DIExpression(), !13546)
    #dbg_value(ptr %i.ai, !13547, !DIExpression(), !13549)
    #dbg_value(ptr %i.ai, !13550, !DIExpression(), !13552)
  %i.aj = load i8, ptr %i.ai, align 2, !dbg !13608, !alias.scope !13553, !noalias !13554, !noundef !1180
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !13608
  %i.al = load i8, ptr %i.ak, align 1, !dbg !13608, !alias.scope !13553, !noalias !13554, !noundef !1180
    #dbg_value(i8 %i.aj, !13532, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13555)
    #dbg_value(i8 %i.al, !13532, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13555)
    #dbg_value(ptr poison, !13556, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13565)
    #dbg_declare(ptr poison, !13560, !DIExpression(), !13566)
    #dbg_value(i8 %i.aj, !13561, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13565)
    #dbg_value(i8 %i.al, !13561, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13565)
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13576)
    #dbg_declare(ptr poison, !13572, !DIExpression(), !13577)
    #dbg_value(i8 %i.aj, !13571, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13576)
    #dbg_value(i8 %i.al, !13571, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13576)
    #dbg_value(ptr poison, !13578, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !13585)
    #dbg_value(ptr poison, !13583, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13585)
    #dbg_value(i8 %i.aj, !13582, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13585)
    #dbg_value(i8 %i.al, !13582, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13585)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.epil.init, !dbg !13609 ; 2 uses
  store i8 %i.aj, ptr %i.am, align 1, !dbg !13610, !noalias !13586
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !13610
  store i8 %i.al, ptr %i.an, align 1, !dbg !13610, !noalias !13586
  %i.ao = add nuw i64 %.epil.init, 1, !dbg !13613
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13614

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], [ %i.ag, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.epil.preheader ], !dbg !13615
    #dbg_value(ptr undef, !13385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13438)
    #dbg_value(ptr undef, !13439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13450)
    #dbg_value(ptr undef, !13451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13461)
    #dbg_value(ptr undef, !13462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13471)
    #dbg_value(ptr undef, !13472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13484)
    #dbg_value(ptr undef, !13493, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13507)
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !13393, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13429)
  store i64 %i.g, ptr %0, align 8, !dbg !13614, !noalias !13398
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13614
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13614, !noalias !13398
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13614
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13614, !noalias !13398
  ret void, !dbg !13616
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13621 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !13735, !DIExpression(), !13739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13740), !dbg !13935
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13741), !dbg !13935
    #dbg_value(ptr poison, !13742, !DIExpression(), !13764)
    #dbg_value(ptr poison, !13765, !DIExpression(), !13773)
    #dbg_declare(ptr %1, !13769, !DIExpression(), !13774)
    #dbg_declare(ptr poison, !13775, !DIExpression(), !13778)
    #dbg_declare(ptr poison, !13781, !DIExpression(), !13784)
  %.val.i = load i64, ptr %1, align 8, !dbg !13936, !alias.scope !13741, !noalias !13740, !noundef !1180 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13936
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !13936, !alias.scope !13741, !noalias !13740, !noundef !1180 ; 4 uses
    #dbg_value(ptr poison, !13786, !DIExpression(), !13790)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !13937 ; 2 uses
    #dbg_value(i64 %i.c, !13771, !DIExpression(), !13791)
    #dbg_value(i64 %i.c, !13779, !DIExpression(), !13792)
    #dbg_value(i64 %i.c, !13776, !DIExpression(), !13793)
    #dbg_value(i64 %i.c, !13782, !DIExpression(), !13794)
    #dbg_value(i64 %i.c, !4356, !DIExpression(), !13795)
    #dbg_value(i64 %i.c, !4376, !DIExpression(), !13796)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !13797)
    #dbg_value(i64 4, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13795)
    #dbg_value(i64 4, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13796)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13795)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13796)
    #dbg_value(i64 0, !4378, !DIExpression(), !13796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13938, !noalias !13798
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !13938, !noalias !13798
  %i.d = load i64, ptr %i.a, align 8, !dbg !13938, !range !1547, !noalias !13798, !noundef !1180
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13939
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13795
  %i.g = load i64, ptr %i.f, align 8, !dbg !13795, !range !4381, !noalias !13798, !noundef !1180 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13795 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !13939, !prof !1567

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !13940, !noalias !13798
    #dbg_value(i64 %i.g, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13799)
end_hunk_0
