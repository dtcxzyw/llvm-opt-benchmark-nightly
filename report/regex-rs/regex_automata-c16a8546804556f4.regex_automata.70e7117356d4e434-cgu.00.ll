Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.00?download=true
inline.NumInlined: 948
inline.NumDeleted: 510
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata:bb.a
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !14758
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !14758, !llvm.loop !14532

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec, !dbg !14758
  br i1 %cmp.n, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.preheader8, !dbg !14758

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph9 = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i, !dbg !14758

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %i.w = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ], !dbg !14759 ; 2 uses
  %i.x = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.ph9, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 3 uses
    #dbg_value(i64 %i.x, !14674, !DIExpression(), !14533)
    #dbg_value(i64 %i.x, !14683, !DIExpression(), !14534)
    #dbg_value(i64 %i.x, !14686, !DIExpression(), !14492)
  %i.y = add nuw nsw i64 %i.x, 1, !dbg !14759     ; 2 uses
    #dbg_value(ptr poison, !14701, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14535)
    #dbg_value(ptr poison, !14702, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !14535)
    #dbg_declare(ptr poison, !14699, !DIExpression(), !14536)
    #dbg_value(i64 %i.x, !14700, !DIExpression(), !14535)
    #dbg_value(i64 %i.x, !14694, !DIExpression(), !14537)
    #dbg_value(i64 %i.x, !14690, !DIExpression(), !14538)
    #dbg_value(ptr %i.l, !14693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14537)
    #dbg_value(ptr %i.l, !14691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14538)
    #dbg_value(i64 3, !14693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14537)
    #dbg_value(i64 3, !14691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14538)
  %i.z = icmp ult i64 %i.x, 3, !dbg !14764
  tail call void @llvm.assume(i1 %i.z), !dbg !14765
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.x, !dbg !14760
    #dbg_value(ptr %i.aa, !14711, !DIExpression(), !14539)
    #dbg_value(ptr %i.aa, !14709, !DIExpression(), !14540)
    #dbg_value(ptr %i.aa, !14707, !DIExpression(), !14541)
    #dbg_value(i32 poison, !14703, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14542)
    #dbg_value(i32 poison, !14703, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14542)
    #dbg_value(ptr poison, !14734, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14543)
    #dbg_declare(ptr poison, !14732, !DIExpression(), !14544)
    #dbg_value(i32 poison, !14733, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14543)
    #dbg_value(i32 poison, !14733, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14543)
    #dbg_value(ptr poison, !14724, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14545)
    #dbg_declare(ptr poison, !14725, !DIExpression(), !14546)
    #dbg_value(i32 poison, !14723, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14545)
    #dbg_value(i32 poison, !14723, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14545)
    #dbg_value(ptr poison, !14717, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !14547)
    #dbg_value(ptr poison, !14718, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14547)
    #dbg_value(i32 poison, !14716, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14547)
    #dbg_value(i32 poison, !14716, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14547)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.w, !dbg !14762
  %i.ac = load <2 x i32>, ptr %i.aa, align 8, !dbg !14761, !alias.scope !14705, !noalias !14706
  store <2 x i32> %i.ac, ptr %i.ab, align 4, !dbg !14763, !noalias !14738
  %i.ad = add nuw i64 %i.w, 1, !dbg !14766        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, %.val5.i, !dbg !14758
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i, !dbg !14758, !llvm.loop !14550

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], [ %n.vec, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ], !dbg !14767
    #dbg_value(ptr undef, !14593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14445)
    #dbg_value(ptr undef, !14622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14449)
    #dbg_value(ptr undef, !14633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14453)
    #dbg_value(ptr undef, !14643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14456)
    #dbg_value(ptr undef, !14652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14461)
    #dbg_value(ptr undef, !14666, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14480)
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !14600, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14619)
  store i64 %i.g, ptr %0, align 8, !dbg !14768, !noalias !14604
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14768
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14768, !noalias !14604
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14768
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14768, !noalias !14604
  ret void, !dbg !14769
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2q_3ops5range5RangejENCINvMNtNtB10_3dfa8remapperNtB3E_8Remapper3newNtNtB3G_7onepass3DFAE0EE9from_iterB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14773 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_declare(ptr %1, !14869, !DIExpression(), !14873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14874), !dbg !14941
    #dbg_declare(ptr %1, !14875, !DIExpression(), !14780)
    #dbg_declare(ptr %i.c, !14876, !DIExpression(), !14781)
    #dbg_declare(ptr poison, !14879, !DIExpression(), !14786)
    #dbg_declare(ptr poison, !14884, !DIExpression(), !14789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14942, !noalias !14887
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14943
  %.val.i = load i64, ptr %i.d, align 8, !dbg !14943, !alias.scope !14888, !noundef !1180
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14943
  %.val4.i = load i64, ptr %i.e, align 8, !dbg !14943, !alias.scope !14889, !noundef !1180
    #dbg_value(ptr poison, !14891, !DIExpression(), !14796)
    #dbg_value(ptr poison, !14898, !DIExpression(), !14799)
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val4.i, i64 %.val.i), !dbg !14944 ; 2 uses
    #dbg_value(i64 %spec.select.i.i.i, !14877, !DIExpression(), !14800)
    #dbg_value(i64 %spec.select.i.i.i, !14882, !DIExpression(), !14801)
    #dbg_value(i64 %spec.select.i.i.i, !14880, !DIExpression(), !14802)
    #dbg_value(i64 %spec.select.i.i.i, !14885, !DIExpression(), !14803)
    #dbg_value(i64 %spec.select.i.i.i, !4356, !DIExpression(), !14805)
    #dbg_value(i64 %spec.select.i.i.i, !4376, !DIExpression(), !14807)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !14808)
    #dbg_value(i64 4, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14805)
    #dbg_value(i64 4, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14807)
    #dbg_value(i64 4, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14805)
    #dbg_value(i64 4, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14807)
    #dbg_value(i64 0, !4378, !DIExpression(), !14807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14945, !noalias !14887
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !14945, !noalias !14887
  %i.f = load i64, ptr %i.b, align 8, !dbg !14945, !range !1547, !noalias !14887, !noundef !1180
  %i.g = trunc nuw i64 %i.f to i1, !dbg !14946
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14947
  %i.i = load i64, ptr %i.h, align 8, !dbg !14947, !range !4381, !noalias !14887, !noundef !1180 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14947 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB25_3ops5range5RangejENCINvMNtNtBM_3dfa8remapperNtB3j_8Remapper3newNtNtB3l_7onepass3DFAE0EEBM_.exit.i.i, !dbg !14946, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !14948, !noalias !14887
    #dbg_value(i64 %i.i, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14809)
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14809)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19, !dbg !14949, !noalias !14887
  unreachable, !dbg !14949

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB25_3ops5range5RangejENCINvMNtNtBM_3dfa8remapperNtB3j_8Remapper3newNtNtB3l_7onepass3DFAE0EEBM_.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !14950, !noalias !14887, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.i, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14810)
    #dbg_value(ptr %i.l, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14810)
    #dbg_value(ptr poison, !4377, !DIExpression(), !14811)
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i, !dbg !14951
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14813)
  tail call void @llvm.assume(i1 %i.m), !dbg !14952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14953, !noalias !14887
  store i64 %i.i, ptr %i.c, align 8, !dbg !14954, !noalias !14887
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14954
  store ptr %i.l, ptr %i.n, align 8, !dbg !14954, !noalias !14887
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14954 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !14954, !noalias !14887
    #dbg_value(ptr %i.c, !14902, !DIExpression(), !14816)
    #dbg_declare(ptr %1, !14905, !DIExpression(), !14817)
    #dbg_value(ptr %i.c, !14908, !DIExpression(), !14828)
    #dbg_declare(ptr %1, !14912, !DIExpression(), !14829)
    #dbg_value(ptr poison, !14891, !DIExpression(), !14831)
    #dbg_value(ptr poison, !14898, !DIExpression(), !14833)
    #dbg_value(i64 poison, !14913, !DIExpression(), !14834)
    #dbg_value(i64 1, !14914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14834)
    #dbg_value(i64 %spec.select.i.i.i, !14914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14834)
    #dbg_value(i64 %spec.select.i.i.i, !14915, !DIExpression(), !14835)
    #dbg_value(ptr %i.l, !14925, !DIExpression(), !14836)
    #dbg_value(ptr %i.o, !14926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14837)
    #dbg_value(i64 0, !14926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14955, !noalias !14928
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14955
  store ptr %i.l, ptr %i.p, align 8, !dbg !14955, !noalias !14928
  store ptr %i.o, ptr %i.a, align 8, !dbg !14955, !noalias !14928
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14955
  store i64 0, ptr %i.q, align 8, !dbg !14955, !noalias !14928
    #dbg_declare(ptr %1, !14929, !DIExpression(), !14847)
    #dbg_declare(ptr %i.a, !14935, !DIExpression(), !14848)
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapperNtB1v_8Remapper3newNtNtB1x_7onepass3DFAE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4callNtNtNtB1z_4util10primitives7StateIDNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4H_3VecB3Z_E14extend_trustedBN_E0E0EB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2G_3ops5range5RangejENCINvMNtNtB19_3dfa8remapperNtB3U_8Remapper3newNtNtB3W_7onepass3DFAE0EE9from_iterB19_.exit unwind label %bb.c, !dbg !14956, !noalias !14940

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB25_3ops5range5RangejENCINvMNtNtBM_3dfa8remapperNtB3j_8Remapper3newNtNtB3l_7onepass3DFAE0EEBM_.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !2862, !DIExpression(), !14850)
    #dbg_value(ptr %i.c, !2856, !DIExpression(), !14852)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_.exit.i unwind label %bb.d, !dbg !14957, !noalias !14887

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !14958, !noalias !14887
  unreachable, !dbg !14958

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.r, !dbg !14958

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2G_3ops5range5RangejENCINvMNtNtB19_3dfa8remapperNtB3U_8Remapper3newNtNtB3W_7onepass3DFAE0EE9from_iterB19_.exit: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB25_3ops5range5RangejENCINvMNtNtBM_3dfa8remapperNtB3j_8Remapper3newNtNtB3l_7onepass3DFAE0EEBM_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14959, !noalias !14928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !14960, !noalias !14874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14961, !noalias !14887
  ret void, !dbg !14962
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterBU_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3p_7Builder19build_many_from_hirBU_E0EE9from_iterB3t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14968 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !15081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15085)
    #dbg_value(ptr %2, !15081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15085)
    #dbg_value(ptr %1, !15086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14973)
    #dbg_value(ptr %2, !15086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14973)
    #dbg_declare(ptr %i.c, !15087, !DIExpression(), !14974)
    #dbg_declare(ptr poison, !15090, !DIExpression(), !14979)
    #dbg_declare(ptr poison, !15095, !DIExpression(), !14982)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15168, !noalias !15098
    #dbg_value(ptr poison, !15100, !DIExpression(), !14987)
    #dbg_value(ptr poison, !15106, !DIExpression(), !14993)
    #dbg_value(i64 8, !15113, !DIExpression(), !15001)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !15111, !DIExpression(), !15002)
    #dbg_value(ptr %2, !15127, !DIExpression(), !15003)
    #dbg_value(ptr %1, !15128, !DIExpression(), !15003)
    #dbg_value(ptr %2, !15121, !DIExpression(), !15004)
    #dbg_value(ptr %1, !15122, !DIExpression(), !15004)
    #dbg_value(ptr %1, !15117, !DIExpression(), !15005)
    #dbg_value(ptr %2, !15116, !DIExpression(), !15005)
  %i.d = ptrtoint ptr %2 to i64, !dbg !15169
  %i.e = ptrtoint ptr %1 to i64, !dbg !15169
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !15169
  %i.g = lshr exact i64 %i.f, 3, !dbg !15169      ; 2 uses
    #dbg_value(i64 %i.g, !15088, !DIExpression(), !15006)
    #dbg_value(i64 %i.g, !15093, !DIExpression(), !15007)
    #dbg_value(i64 %i.g, !15091, !DIExpression(), !15008)
    #dbg_value(i64 %i.g, !15096, !DIExpression(), !15009)
    #dbg_value(i64 %i.g, !4356, !DIExpression(), !15011)
    #dbg_value(i64 %i.g, !4376, !DIExpression(), !15013)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !15014)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15011)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15013)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15011)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15013)
    #dbg_value(i64 0, !4378, !DIExpression(), !15013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15170, !noalias !15098
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !15170, !noalias !15098
  %i.h = load i64, ptr %i.b, align 8, !dbg !15170, !range !1547, !noalias !15098, !noundef !1180
  %i.i = trunc nuw i64 %i.h to i1, !dbg !15171
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15172
  %i.k = load i64, ptr %i.j, align 8, !dbg !15172, !range !4381, !noalias !15098, !noundef !1180 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15172 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterBG_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB34_7Builder19build_many_from_hirBG_E0EEB38_.exit.i.i, !dbg !15171, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !15173, !noalias !15098
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15015)
    #dbg_value(i64 %i.m, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15015)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !15174, !noalias !15098
  unreachable, !dbg !15174

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterBG_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB34_7Builder19build_many_from_hirBG_E0EEB38_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !15175, !noalias !15098, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.k, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15016)
    #dbg_value(ptr %i.n, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15016)
    #dbg_value(ptr poison, !4377, !DIExpression(), !15017)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !15176
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15019)
  tail call void @llvm.assume(i1 %i.o), !dbg !15177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15178, !noalias !15098
  store i64 %i.k, ptr %i.c, align 8, !dbg !15179, !noalias !15098
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15179
  store ptr %i.n, ptr %i.p, align 8, !dbg !15179, !noalias !15098
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15179 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !15179, !noalias !15098
    #dbg_value(ptr %i.c, !15130, !DIExpression(), !15022)
    #dbg_value(ptr %1, !15133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15022)
    #dbg_value(ptr %2, !15133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15022)
    #dbg_value(ptr %1, !15136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15033)
    #dbg_value(ptr %2, !15136, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15033)
    #dbg_value(ptr %i.c, !15140, !DIExpression(), !15033)
    #dbg_value(ptr poison, !15100, !DIExpression(), !15035)
    #dbg_value(ptr poison, !15106, !DIExpression(), !15037)
    #dbg_value(i64 8, !15113, !DIExpression(), !15041)
    #dbg_value(ptr %2, !15111, !DIExpression(), !15042)
    #dbg_value(ptr %2, !15127, !DIExpression(), !15043)
    #dbg_value(ptr %1, !15128, !DIExpression(), !15043)
    #dbg_value(ptr %2, !15121, !DIExpression(), !15044)
    #dbg_value(ptr %1, !15122, !DIExpression(), !15044)
    #dbg_value(ptr %1, !15117, !DIExpression(), !15045)
    #dbg_value(ptr %2, !15116, !DIExpression(), !15045)
    #dbg_value(i64 poison, !15141, !DIExpression(), !15046)
    #dbg_value(i64 1, !15142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15046)
    #dbg_value(i64 %i.g, !15142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15046)
    #dbg_value(i64 %i.g, !15143, !DIExpression(), !15047)
    #dbg_value(ptr %i.n, !15153, !DIExpression(), !15048)
    #dbg_value(ptr %i.q, !15154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15049)
    #dbg_value(i64 0, !15154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15180, !noalias !15156
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15180
  store ptr %i.n, ptr %i.r, align 8, !dbg !15180, !noalias !15156
  store ptr %i.q, ptr %i.a, align 8, !dbg !15180, !noalias !15156
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15180
  store i64 0, ptr %i.s, align 8, !dbg !15180, !noalias !15156
    #dbg_value(ptr %1, !15157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15057)
    #dbg_value(ptr %2, !15157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15057)
    #dbg_declare(ptr %i.a, !15163, !DIExpression(), !15058)
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB2c_7Builder19build_many_from_hirB1n_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callB1n_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4R_3VecB1n_E14extend_trustedBN_E0E0EB2g_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterB13_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3G_7Builder19build_many_from_hirB13_E0EE9from_iterB3K_.exit unwind label %bb.c, !dbg !15181, !noalias !15098

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterBG_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB34_7Builder19build_many_from_hirBG_E0EEB38_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !4677, !DIExpression(), !15060)
    #dbg_value(ptr %i.c, !4684, !DIExpression(), !15062)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit.i unwind label %bb.d, !dbg !15182, !noalias !15098

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !15183, !noalias !15098
  unreachable, !dbg !15183

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !15183

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterB13_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3G_7Builder19build_many_from_hirB13_E0EE9from_iterB3K_.exit: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterBG_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB34_7Builder19build_many_from_hirBG_E0EEB38_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15184, !noalias !15156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !15185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15186, !noalias !15098
  ret void, !dbg !15187
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterBV_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3p_7Builder19build_many_from_hirBV_E0EE9from_iterB3t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15190 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !15284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15288)
    #dbg_value(ptr %2, !15284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15288)
    #dbg_value(ptr %1, !15289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15195)
    #dbg_value(ptr %2, !15289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15195)
    #dbg_declare(ptr %i.c, !15290, !DIExpression(), !15196)
    #dbg_declare(ptr poison, !15293, !DIExpression(), !15201)
    #dbg_declare(ptr poison, !15298, !DIExpression(), !15204)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15346, !noalias !15301
    #dbg_value(ptr poison, !15303, !DIExpression(), !15209)
    #dbg_value(ptr poison, !4696, !DIExpression(), !15211)
    #dbg_value(i64 48, !4703, !DIExpression(), !15215)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !4701, !DIExpression(), !15216)
    #dbg_value(ptr %2, !4717, !DIExpression(), !15217)
    #dbg_value(ptr %1, !4718, !DIExpression(), !15217)
    #dbg_value(ptr %2, !4711, !DIExpression(), !15218)
    #dbg_value(ptr %1, !4712, !DIExpression(), !15218)
    #dbg_value(ptr %1, !4707, !DIExpression(), !15219)
    #dbg_value(ptr %2, !4706, !DIExpression(), !15219)
  %i.d = ptrtoint ptr %2 to i64, !dbg !15347
  %i.e = ptrtoint ptr %1 to i64, !dbg !15347
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !15347
  %i.g = udiv exact i64 %i.f, 48, !dbg !15347     ; 2 uses
    #dbg_value(i64 %i.g, !15291, !DIExpression(), !15220)
    #dbg_value(i64 %i.g, !15296, !DIExpression(), !15221)
    #dbg_value(i64 %i.g, !15294, !DIExpression(), !15222)
    #dbg_value(i64 %i.g, !15299, !DIExpression(), !15223)
    #dbg_value(i64 %i.g, !4356, !DIExpression(), !15225)
    #dbg_value(i64 %i.g, !4376, !DIExpression(), !15227)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !15228)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15225)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15227)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15225)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15227)
    #dbg_value(i64 0, !4378, !DIExpression(), !15227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15348, !noalias !15301
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !15348, !noalias !15301
  %i.h = load i64, ptr %i.b, align 8, !dbg !15348, !range !1547, !noalias !15301, !noundef !1180
  %i.i = trunc nuw i64 %i.h to i1, !dbg !15349
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15350
  %i.k = load i64, ptr %i.j, align 8, !dbg !15350, !range !4381, !noalias !15301, !noundef !1180 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15350 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterBH_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB34_7Builder19build_many_from_hirBH_E0EEB38_.exit.i.i, !dbg !15349, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !15351, !noalias !15301
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15229)
    #dbg_value(i64 %i.m, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15229)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !15352, !noalias !15301
  unreachable, !dbg !15352

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterBH_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB34_7Builder19build_many_from_hirBH_E0EEB38_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !15353, !noalias !15301, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.k, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15230)
    #dbg_value(ptr %i.n, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15230)
    #dbg_value(ptr poison, !4377, !DIExpression(), !15231)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !15354
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15233)
  tail call void @llvm.assume(i1 %i.o), !dbg !15355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15356, !noalias !15301
  store i64 %i.k, ptr %i.c, align 8, !dbg !15357, !noalias !15301
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15357
  store ptr %i.n, ptr %i.p, align 8, !dbg !15357, !noalias !15301
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15357 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !15357, !noalias !15301
    #dbg_value(ptr %i.c, !15308, !DIExpression(), !15236)
    #dbg_value(ptr %1, !15311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15236)
    #dbg_value(ptr %2, !15311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15236)
    #dbg_value(ptr %1, !15314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15247)
    #dbg_value(ptr %2, !15314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15247)
    #dbg_value(ptr %i.c, !15318, !DIExpression(), !15247)
    #dbg_value(ptr poison, !15303, !DIExpression(), !15249)
    #dbg_value(ptr poison, !4696, !DIExpression(), !15251)
    #dbg_value(i64 48, !4703, !DIExpression(), !15255)
    #dbg_value(ptr %2, !4701, !DIExpression(), !15256)
    #dbg_value(ptr %2, !4717, !DIExpression(), !15257)
    #dbg_value(ptr %1, !4718, !DIExpression(), !15257)
    #dbg_value(ptr %2, !4711, !DIExpression(), !15258)
    #dbg_value(ptr %1, !4712, !DIExpression(), !15258)
    #dbg_value(ptr %1, !4707, !DIExpression(), !15259)
    #dbg_value(ptr %2, !4706, !DIExpression(), !15259)
    #dbg_value(i64 poison, !15319, !DIExpression(), !15260)
    #dbg_value(i64 1, !15320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15260)
    #dbg_value(i64 %i.g, !15320, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15260)
    #dbg_value(i64 %i.g, !15321, !DIExpression(), !15261)
    #dbg_value(ptr %i.n, !15331, !DIExpression(), !15262)
    #dbg_value(ptr %i.q, !15332, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15263)
    #dbg_value(i64 0, !15332, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15358, !noalias !15334
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15358
  store ptr %i.n, ptr %i.r, align 8, !dbg !15358, !noalias !15334
  store ptr %i.q, ptr %i.a, align 8, !dbg !15358, !noalias !15334
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15358
  store i64 0, ptr %i.s, align 8, !dbg !15358, !noalias !15334
    #dbg_value(ptr %1, !15335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15271)
    #dbg_value(ptr %2, !15335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15271)
    #dbg_declare(ptr %i.a, !15341, !DIExpression(), !15272)
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB2b_7Builder19build_many_from_hirB1n_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3A_8for_each4callRB1n_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4R_3VecB4D_E14extend_trustedBN_E0E0EB2f_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterB14_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3G_7Builder19build_many_from_hirB14_E0EE9from_iterB3K_.exit unwind label %bb.c, !dbg !15359, !noalias !15301

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterBH_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB34_7Builder19build_many_from_hirBH_E0EEB38_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !4677, !DIExpression(), !15274)
    #dbg_value(ptr %i.c, !4684, !DIExpression(), !15276)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit.i unwind label %bb.d, !dbg !15360, !noalias !15301

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !15361, !noalias !15301
  unreachable, !dbg !15361

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !15361

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterB14_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3G_7Builder19build_many_from_hirB14_E0EE9from_iterB3K_.exit: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterBH_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB34_7Builder19build_many_from_hirBH_E0EEB38_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15362, !noalias !15334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !15363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15364, !noalias !15301
  ret void, !dbg !15365
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEINtB2_18SpecFromIterNestedB11_NtNtB15_10sparse_set13SparseSetIterE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15372 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !15512, !DIExpression(), !15388)
    #dbg_value(ptr poison, !15538, !DIExpression(), !15389)
    #dbg_value(ptr %1, !15502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15540)
    #dbg_value(ptr %2, !15502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15540)
    #dbg_declare(ptr %i.b, !15503, !DIExpression(), !15541)
    #dbg_declare(ptr poison, !15542, !DIExpression(), !15547)
    #dbg_declare(ptr poison, !15550, !DIExpression(), !15554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15631
    #dbg_value(ptr undef, !15538, !DIExpression(), !15389)
    #dbg_value(i64 1, !15555, !DIExpression(), !15395)
    #dbg_value(ptr undef, !15512, !DIExpression(), !15388)
    #dbg_value(ptr %1, !15522, !DIExpression(), !15396)
    #dbg_value(ptr %1, !15559, !DIExpression(), !15395)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !15523, !DIExpression(), !15397)
    #dbg_value(ptr poison, !15562, !DIExpression(), !15400)
    #dbg_value(ptr poison, !15565, !DIExpression(), !15401)
  %i.c = icmp eq ptr %1, %2, !dbg !15632
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !15633

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !15502, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15540)
    #dbg_value(ptr %1, !15567, !DIExpression(), !15405)
  %i.d = load i32, ptr %1, align 4, !dbg !15634, !noalias !15573, !noundef !1180
    #dbg_value(i32 %i.d, !15504, !DIExpression(), !15574)
    #dbg_value(i64 0, !15505, !DIExpression(), !15575)
    #dbg_value(i64 4, !15506, !DIExpression(), !15576)
    #dbg_value(i64 4, !15548, !DIExpression(), !15577)
    #dbg_value(i64 4, !15543, !DIExpression(), !15578)
    #dbg_value(i64 4, !15551, !DIExpression(), !15579)
    #dbg_value(i64 4, !4356, !DIExpression(), !15409)
    #dbg_value(i64 4, !4376, !DIExpression(), !15411)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !15412)
    #dbg_value(i64 4, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15409)
    #dbg_value(i64 4, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15411)
    #dbg_value(i64 4, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15409)
    #dbg_value(i64 4, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15411)
    #dbg_value(i64 0, !4378, !DIExpression(), !15411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15635
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !15635
  %i.e = load i64, ptr %i.a, align 8, !dbg !15635, !range !1547, !noundef !1180
  %i.f = trunc nuw i64 %i.e to i1, !dbg !15636
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15637
  %i.h = load i64, ptr %i.g, align 8, !dbg !15637, !range !4381, !noundef !1180 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15637 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !15636, !prof !1567

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !dbg !15638
    #dbg_value(i64 %i.h, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15413)
    #dbg_value(i64 %i.j, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15413)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #19, !dbg !15639
  unreachable, !dbg !15639

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !15640 ; 2 uses
    #dbg_value(ptr %i.k, !15502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15540)
  %i.l = load ptr, ptr %i.i, align 8, !dbg !15641, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.h, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15414)
    #dbg_value(ptr %i.l, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15414)
    #dbg_value(ptr poison, !4377, !DIExpression(), !15415)
  %i.m = icmp ugt i64 %i.h, 3, !dbg !15642
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15417)
  tail call void @llvm.assume(i1 %i.m), !dbg !15643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15644
    #dbg_value(i64 %i.h, !15507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15580)
    #dbg_value(ptr %i.l, !15507, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15580)
    #dbg_value(i64 0, !15507, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15580)
    #dbg_value(ptr %i.l, !15581, !DIExpression(), !15585)
    #dbg_value(i32 %i.d, !15582, !DIExpression(), !15585)
  store i32 %i.d, ptr %i.l, align 4, !dbg !15645
    #dbg_value(i64 1, !15507, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15580)
  store i64 %i.h, ptr %i.b, align 8, !dbg !15646
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15646 ; 2 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15646
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15646 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15586), !dbg !15647
    #dbg_value(ptr %i.b, !15587, !DIExpression(), !15423)
    #dbg_value(ptr %i.k, !15591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15423)
    #dbg_value(ptr %2, !15591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15594), !dbg !15648
    #dbg_value(ptr %2, !15595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15431)
    #dbg_value(ptr %i.b, !15598, !DIExpression(), !15431)
    #dbg_value(ptr %i.b, !15603, !DIExpression(), !15434)
end_hunk_0
begin_hunk_1_@_RNvXsC_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a
    #dbg_value(ptr poison, !16681, !DIExpression(), !16474)
    #dbg_value(ptr %i.bp, !16682, !DIExpression(), !16475)
    #dbg_value(i64 8, !16683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16476)
    #dbg_value(i64 48, !16683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16476)
    #dbg_value(ptr poison, !3081, !DIExpression(), !16478)
    #dbg_value(ptr poison, !3088, !DIExpression(), !16480)
    #dbg_value(ptr %i.bp, !3085, !DIExpression(), !16478)
    #dbg_value(ptr %i.bp, !3091, !DIExpression(), !16480)
    #dbg_value(ptr %i.bp, !3094, !DIExpression(), !16482)
    #dbg_value(ptr %i.bp, !3100, !DIExpression(), !16484)
    #dbg_value(i64 8, !3086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16478)
    #dbg_value(i64 8, !3092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16480)
    #dbg_value(i64 8, !3098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16482)
    #dbg_value(i64 8, !3101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16484)
    #dbg_value(i64 48, !3086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16478)
    #dbg_value(i64 48, !3092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16480)
    #dbg_value(i64 48, !3098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16482)
    #dbg_value(i64 48, !3101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16484)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef 48, i64 noundef 8) #24, !dbg !16861, !noalias !16711
  br label %.body.i, !dbg !16862

bb.s:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !16863

.body.i:                                          ; preds = %bb.s, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.br, %bb.r ] ; 2 uses
    #dbg_value(ptr poison, !3839, !DIExpression(), !16486)
  %i.bt = icmp eq ptr %.sroa.015.0, null, !dbg !16864
    #dbg_value(ptr poison, !3846, !DIExpression(), !16488)
    #dbg_value(ptr poison, !3850, !DIExpression(), !16490)
    #dbg_value(ptr poison, !3851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16491)
    #dbg_value(i64 %.sroa.616.0, !3851, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16491)
    #dbg_value(i64 1, !3852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16492)
    #dbg_value(i64 %.sroa.616.0, !3852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16492)
  %i.bu = icmp eq i64 %.sroa.616.0, 0
  %or.cond.i.i = select i1 %i.bt, i1 true, i1 %i.bu, !dbg !16864
  br i1 %or.cond.i.i, label %common.resume, label %bb.t, !dbg !16864

bb.t:                                             ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0) ], !noalias !16556
    #dbg_value(ptr %.sroa.015.0, !3851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16491)
    #dbg_value(ptr poison, !3081, !DIExpression(), !16494)
    #dbg_value(ptr poison, !3088, !DIExpression(), !16496)
    #dbg_value(ptr %.sroa.015.0, !3085, !DIExpression(), !16494)
    #dbg_value(ptr %.sroa.015.0, !3091, !DIExpression(), !16496)
    #dbg_value(ptr %.sroa.015.0, !3094, !DIExpression(), !16498)
    #dbg_value(ptr %.sroa.015.0, !3100, !DIExpression(), !16500)
    #dbg_value(i64 1, !3086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16494)
    #dbg_value(i64 1, !3092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16496)
    #dbg_value(i64 1, !3098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16498)
    #dbg_value(i64 1, !3101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16500)
    #dbg_value(i64 %.sroa.616.0, !3086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16494)
    #dbg_value(i64 %.sroa.616.0, !3092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16496)
    #dbg_value(i64 %.sroa.616.0, !3098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16498)
    #dbg_value(i64 %.sroa.616.0, !3101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16500)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.015.0, i64 noundef range(i64 1, 0) %.sroa.616.0, i64 noundef 1) #24, !dbg !16865, !noalias !16707, !inline_history !16454
  br label %common.resume, !dbg !16866

_RNvXs1u_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_7CaptureNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !16867, !noalias !16710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16868, !noalias !16710
    #dbg_value(ptr %i.bp, !16648, !DIExpression(), !16460)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16869
  store ptr %i.bp, ptr %i.bv, align 8, !dbg !16869, !noalias !16557
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !16869
  store ptr %.sroa.015.0, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !16869, !noalias !16557
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !16869
  store i64 %.sroa.616.0, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !16869, !noalias !16557
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !16869
  store i32 %i.bj, ptr %.sroa.613.0..sroa_idx, align 8, !dbg !16869, !noalias !16557
  store i64 7, ptr %i.e, align 8, !dbg !16869, !alias.scope !16556
  br label %_RNvXsG_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, !dbg !16795

bb.u:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16870
    #dbg_value(ptr %i.bw, !16573, !DIExpression(), !16501)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16871
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw), !dbg !16872, !noalias !1180
  store i64 8, ptr %i.e, align 8, !dbg !16871, !alias.scope !16556
  br label %_RNvXsG_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, !dbg !16795

bb.v:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16873
    #dbg_value(ptr %i.by, !16574, !DIExpression(), !16502)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !16874
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by), !dbg !16875, !noalias !1180
  store i64 9, ptr %i.e, align 8, !dbg !16874, !alias.scope !16556
  br label %_RNvXsG_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, !dbg !16795

_RNvXsG_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.c, %bb.d, %_RNvXsP_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5ClassNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.l, %_RNvXs1z_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_10RepetitionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %_RNvXs1u_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_7CaptureNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.u, %bb.v
    #dbg_value(ptr %1, !16714, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !16720)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !16720
  %.val = load ptr, ptr %i.ca, align 8, !dbg !16720 ; 10 uses
    #dbg_value(ptr poison, !16722, !DIExpression(), !16510)
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir11PropertiesIE13new_uninit_inCs9GYDdpCSJ4S_14regex_automata()
          to label %bb.x unwind label %bb.w, !dbg !16876 ; 10 uses

bb.w:                                             ; preds = %_RNvXsG_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #22
          to label %common.resume unwind label %bb.y, !dbg !16877

bb.x:                                             ; preds = %_RNvXsG_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    #dbg_value(ptr %i.cb, !16726, !DIExpression(), !16511)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !16737, !DIExpression(), !16514)
    #dbg_value(ptr %i.cb, !16741, !DIExpression(), !16514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16743), !dbg !16878
    #dbg_value(ptr %.val, !16744, !DIExpression(), !16519)
    #dbg_value(ptr %i.cb, !16748, !DIExpression(), !16519)
    #dbg_value(ptr %i.cb, !16750, !DIExpression(), !16522)
    #dbg_value(ptr %.val, !16755, !DIExpression(), !16525)
    #dbg_value(ptr %.val, !16761, !DIExpression(), !16531)
    #dbg_value(ptr %.val, !16761, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !16533)
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !16879
    #dbg_value(ptr %.val, !16771, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !16536)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 56, !dbg !16880
    #dbg_value(ptr %.val, !16771, !DIExpression(DW_OP_plus_uconst, 60, DW_OP_stack_value), !16538)
    #dbg_value(ptr %.val, !16771, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !16540)
    #dbg_value(ptr %.val, !16771, !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value), !16542)
    #dbg_value(ptr %.val, !16771, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16544)
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !16881
  %i.cg = load i32, ptr %i.cf, align 8, !dbg !16881, !alias.scope !16779, !noundef !1180
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 76, !dbg !16882
  %i.ci = load i8, ptr %i.ch, align 4, !dbg !16882, !range !1442, !alias.scope !16779, !noundef !1180
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !16883
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !16883, !alias.scope !16779, !noundef !1180
    #dbg_value(ptr %.val, !16761, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16548)
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 32, !dbg !16884
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 77, !dbg !16885
  %i.cn = load i8, ptr %i.cm, align 1, !dbg !16885, !range !1442, !alias.scope !16779, !noundef !1180
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 78, !dbg !16886
  %i.cp = load i8, ptr %i.co, align 2, !dbg !16886, !range !1442, !alias.scope !16779, !noundef !1180
    #dbg_value(i64 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16522)
    #dbg_value(i64 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16522)
    #dbg_value(i64 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16522)
    #dbg_value(i64 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16522)
    #dbg_value(i32 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !16522)
    #dbg_value(i32 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !16522)
    #dbg_value(i32 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !16522)
    #dbg_value(i32 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !16522)
    #dbg_value(i32 %i.cg, !16753, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !16522)
    #dbg_value(i8 %i.ci, !16753, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !16522)
    #dbg_value(i64 %i.ck, !16753, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !16522)
    #dbg_value(i64 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16522)
    #dbg_value(i64 poison, !16753, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !16522)
    #dbg_value(i8 %i.cn, !16753, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !16522)
    #dbg_value(i8 %i.cp, !16753, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !16522)
  %i.cq = load <2 x i64>, ptr %.val, align 8, !dbg !16887, !alias.scope !16779
  store <2 x i64> %i.cq, ptr %i.cb, align 8, !dbg !16888, !noalias !16743
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16, !dbg !16888
  %i.cr = load <2 x i64>, ptr %i.cd, align 8, !dbg !16879, !alias.scope !16779
  store <2 x i64> %i.cr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !16888, !noalias !16743
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 32, !dbg !16888
  %i.cs = load <2 x i64>, ptr %i.cl, align 8, !dbg !16884, !alias.scope !16779
  store <2 x i64> %i.cs, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !16888, !noalias !16743
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 48, !dbg !16888
  store i64 %i.ck, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !16888, !noalias !16743
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 56, !dbg !16888
  %i.ct = load <4 x i32>, ptr %i.ce, align 8, !dbg !16880, !alias.scope !16779
  store <4 x i32> %i.ct, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !16888, !noalias !16743
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 72, !dbg !16888
  store i32 %i.cg, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !dbg !16888, !noalias !16743
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 76, !dbg !16888
  store i8 %i.ci, ptr %.sroa.15.0..sroa_idx.i.i, align 4, !dbg !16888, !noalias !16743
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 77, !dbg !16888
  store i8 %i.cn, ptr %.sroa.16.0..sroa_idx.i.i, align 1, !dbg !16888, !noalias !16743
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 78, !dbg !16888
  store i8 %i.cp, ptr %.sroa.17.0..sroa_idx.i.i, align 2, !dbg !16888, !noalias !16743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !16889
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16889
  store ptr %i.cb, ptr %i.cu, align 8, !dbg !16889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16877
  ret void, !dbg !16890

bb.y:                                             ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !16889
  unreachable, !dbg !16889
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENCNvXs3_NtNtNtB3e_3nfa8thompson3nfaNtB4g_5StateNtNtB22_3fmt5Debug3fmts_0EE9from_iterB3e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16895 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !16976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16982)
    #dbg_value(ptr %2, !16976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16982)
    #dbg_declare(ptr %i.c, !16977, !DIExpression(), !16983)
    #dbg_declare(ptr poison, !16984, !DIExpression(), !16989)
    #dbg_declare(ptr poison, !16992, !DIExpression(), !16996)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17070
    #dbg_value(ptr poison, !16998, !DIExpression(), !16901)
    #dbg_value(ptr poison, !17004, !DIExpression(), !16907)
    #dbg_value(i64 4, !17011, !DIExpression(), !16915)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !17009, !DIExpression(), !16916)
    #dbg_value(ptr %2, !17025, !DIExpression(), !16917)
    #dbg_value(ptr %1, !17026, !DIExpression(), !16917)
    #dbg_value(ptr %2, !17019, !DIExpression(), !16918)
    #dbg_value(ptr %1, !17020, !DIExpression(), !16918)
    #dbg_value(ptr %1, !17015, !DIExpression(), !16919)
    #dbg_value(ptr %2, !17014, !DIExpression(), !16919)
  %i.d = ptrtoint ptr %2 to i64, !dbg !17071
  %i.e = ptrtoint ptr %1 to i64, !dbg !17071
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !17071
  %i.g = lshr exact i64 %i.f, 2, !dbg !17071      ; 2 uses
    #dbg_value(i64 %i.g, !16978, !DIExpression(), !17028)
    #dbg_value(i64 %i.g, !16990, !DIExpression(), !17029)
    #dbg_value(i64 %i.g, !16985, !DIExpression(), !17030)
    #dbg_value(i64 %i.g, !16993, !DIExpression(), !17031)
    #dbg_value(i64 %i.g, !4356, !DIExpression(), !16921)
    #dbg_value(i64 %i.g, !4376, !DIExpression(), !16923)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !16924)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16921)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16923)
    #dbg_value(i64 24, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16921)
    #dbg_value(i64 24, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16923)
    #dbg_value(i64 0, !4378, !DIExpression(), !16923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17072
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !17072
  %i.h = load i64, ptr %i.b, align 8, !dbg !17072, !range !1547, !noundef !1180
  %i.i = trunc nuw i64 %i.h to i1, !dbg !17073
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17074
  %i.k = load i64, ptr %i.j, align 8, !dbg !17074, !range !4381, !noundef !1180 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17074 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENCNvXs3_NtNtNtB2D_3nfa8thompson3nfaNtB3F_5StateNtNtB1r_3fmt5Debug3fmts_0EEB2D_.exit.i, !dbg !17073, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !17075
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16925)
    #dbg_value(i64 %i.m, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16925)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !17076
  unreachable, !dbg !17076

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENCNvXs3_NtNtNtB2D_3nfa8thompson3nfaNtB3F_5StateNtNtB1r_3fmt5Debug3fmts_0EEB2D_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !17077, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.k, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16926)
    #dbg_value(ptr %i.n, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16926)
    #dbg_value(ptr poison, !4377, !DIExpression(), !16927)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !17078
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16929)
  tail call void @llvm.assume(i1 %i.o), !dbg !17079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17080
  store i64 %i.k, ptr %i.c, align 8, !dbg !17081
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17081
  store ptr %i.n, ptr %i.p, align 8, !dbg !17081
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17081 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !17081
    #dbg_value(ptr %i.c, !17032, !DIExpression(), !16932)
    #dbg_value(ptr %1, !17035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16932)
    #dbg_value(ptr %2, !17035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16932)
    #dbg_value(ptr %1, !17038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16943)
    #dbg_value(ptr %2, !17038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16943)
    #dbg_value(ptr %i.c, !17042, !DIExpression(), !16943)
    #dbg_value(ptr poison, !16998, !DIExpression(), !16945)
    #dbg_value(ptr poison, !17004, !DIExpression(), !16947)
    #dbg_value(i64 4, !17011, !DIExpression(), !16951)
    #dbg_value(ptr %2, !17009, !DIExpression(), !16952)
    #dbg_value(ptr %2, !17025, !DIExpression(), !16953)
    #dbg_value(ptr %1, !17026, !DIExpression(), !16953)
    #dbg_value(ptr %2, !17019, !DIExpression(), !16954)
    #dbg_value(ptr %1, !17020, !DIExpression(), !16954)
    #dbg_value(ptr %1, !17015, !DIExpression(), !16955)
    #dbg_value(ptr %2, !17014, !DIExpression(), !16955)
    #dbg_value(i64 poison, !17043, !DIExpression(), !16956)
    #dbg_value(i64 1, !17044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16956)
    #dbg_value(i64 %i.g, !17044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16956)
    #dbg_value(i64 %i.g, !17045, !DIExpression(), !16957)
    #dbg_value(ptr %i.n, !17055, !DIExpression(), !16958)
    #dbg_value(ptr %i.q, !17056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16959)
    #dbg_value(i64 0, !17056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17082, !noalias !17058
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17082
  store ptr %i.n, ptr %i.r, align 8, !dbg !17082, !noalias !17058
  store ptr %i.q, ptr %i.a, align 8, !dbg !17082, !noalias !17058
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17082
  store i64 0, ptr %i.s, align 8, !dbg !17082, !noalias !17058
    #dbg_value(ptr %1, !17059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16967)
    #dbg_value(ptr %2, !17059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16967)
    #dbg_declare(ptr %i.a, !17065, !DIExpression(), !16968)
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENCNvXs3_NtNtNtB1t_3nfa8thompson3nfaNtB2v_5StateNtNtBc_3fmt5Debug3fmts_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3x_8for_each4callNtNtCs4wP2HXfJTCR_5alloc6string6StringNCINvMsk_NtB4E_3vecINtB5l_3VecB4A_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !17083

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENCNvXs3_NtNtNtB2D_3nfa8thompson3nfaNtB3F_5StateNtNtB1r_3fmt5Debug3fmts_0EEB2D_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.f unwind label %bb.e, !dbg !17084

bb.d:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENCNvXs3_NtNtNtB2D_3nfa8thompson3nfaNtB3F_5StateNtNtB1r_3fmt5Debug3fmts_0EEB2D_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17085, !noalias !17058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !17086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17084
  ret void, !dbg !17087

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !17088
  unreachable, !dbg !17088

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !17088
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10TransitionENCNvXs3_B3a_NtB3a_5StateNtNtB22_3fmt5Debug3fmt0EE9from_iterB3g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17093 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !17176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17182)
    #dbg_value(ptr %2, !17176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17182)
    #dbg_declare(ptr %i.c, !17177, !DIExpression(), !17183)
    #dbg_declare(ptr poison, !17184, !DIExpression(), !17189)
    #dbg_declare(ptr poison, !17192, !DIExpression(), !17196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17270
    #dbg_value(ptr poison, !17198, !DIExpression(), !17099)
    #dbg_value(ptr poison, !17204, !DIExpression(), !17105)
    #dbg_value(i64 8, !17211, !DIExpression(), !17113)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !17209, !DIExpression(), !17114)
    #dbg_value(ptr %2, !17225, !DIExpression(), !17115)
    #dbg_value(ptr %1, !17226, !DIExpression(), !17115)
    #dbg_value(ptr %2, !17219, !DIExpression(), !17116)
    #dbg_value(ptr %1, !17220, !DIExpression(), !17116)
    #dbg_value(ptr %1, !17215, !DIExpression(), !17117)
    #dbg_value(ptr %2, !17214, !DIExpression(), !17117)
  %i.d = ptrtoint ptr %2 to i64, !dbg !17271
  %i.e = ptrtoint ptr %1 to i64, !dbg !17271
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !17271
  %i.g = lshr exact i64 %i.f, 3, !dbg !17271      ; 2 uses
    #dbg_value(i64 %i.g, !17178, !DIExpression(), !17228)
    #dbg_value(i64 %i.g, !17190, !DIExpression(), !17229)
    #dbg_value(i64 %i.g, !17185, !DIExpression(), !17230)
    #dbg_value(i64 %i.g, !17193, !DIExpression(), !17231)
    #dbg_value(i64 %i.g, !4356, !DIExpression(), !17119)
    #dbg_value(i64 %i.g, !4376, !DIExpression(), !17121)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !17122)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17119)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17121)
    #dbg_value(i64 24, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17119)
    #dbg_value(i64 24, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17121)
    #dbg_value(i64 0, !4378, !DIExpression(), !17121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17272
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !17272
  %i.h = load i64, ptr %i.b, align 8, !dbg !17272, !range !1547, !noundef !1180
  %i.i = trunc nuw i64 %i.h to i1, !dbg !17273
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17274
  %i.k = load i64, ptr %i.j, align 8, !dbg !17274, !range !4381, !noundef !1180 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17274 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10TransitionENCNvXs3_B2z_NtB2z_5StateNtNtB1r_3fmt5Debug3fmt0EEB2F_.exit.i, !dbg !17273, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !17275
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17123)
    #dbg_value(i64 %i.m, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17123)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !17276
  unreachable, !dbg !17276

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10TransitionENCNvXs3_B2z_NtB2z_5StateNtNtB1r_3fmt5Debug3fmt0EEB2F_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !17277, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.k, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17124)
    #dbg_value(ptr %i.n, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17124)
    #dbg_value(ptr poison, !4377, !DIExpression(), !17125)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !17278
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17127)
  tail call void @llvm.assume(i1 %i.o), !dbg !17279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17280
  store i64 %i.k, ptr %i.c, align 8, !dbg !17281
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17281
  store ptr %i.n, ptr %i.p, align 8, !dbg !17281
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17281 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !17281
    #dbg_value(ptr %i.c, !17232, !DIExpression(), !17130)
    #dbg_value(ptr %1, !17235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17130)
    #dbg_value(ptr %2, !17235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17130)
    #dbg_value(ptr %1, !17238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17141)
    #dbg_value(ptr %2, !17238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17141)
    #dbg_value(ptr %i.c, !17242, !DIExpression(), !17141)
    #dbg_value(ptr poison, !17198, !DIExpression(), !17143)
    #dbg_value(ptr poison, !17204, !DIExpression(), !17145)
    #dbg_value(i64 8, !17211, !DIExpression(), !17149)
    #dbg_value(ptr %2, !17209, !DIExpression(), !17150)
    #dbg_value(ptr %2, !17225, !DIExpression(), !17151)
    #dbg_value(ptr %1, !17226, !DIExpression(), !17151)
    #dbg_value(ptr %2, !17219, !DIExpression(), !17152)
    #dbg_value(ptr %1, !17220, !DIExpression(), !17152)
    #dbg_value(ptr %1, !17215, !DIExpression(), !17153)
    #dbg_value(ptr %2, !17214, !DIExpression(), !17153)
    #dbg_value(i64 poison, !17243, !DIExpression(), !17154)
    #dbg_value(i64 1, !17244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17154)
    #dbg_value(i64 %i.g, !17244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17154)
    #dbg_value(i64 %i.g, !17245, !DIExpression(), !17155)
    #dbg_value(ptr %i.n, !17255, !DIExpression(), !17156)
    #dbg_value(ptr %i.q, !17256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17157)
    #dbg_value(i64 0, !17256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17282, !noalias !17258
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17282
  store ptr %i.n, ptr %i.r, align 8, !dbg !17282, !noalias !17258
  store ptr %i.q, ptr %i.a, align 8, !dbg !17282, !noalias !17258
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17282
  store i64 0, ptr %i.s, align 8, !dbg !17282, !noalias !17258
    #dbg_value(ptr %1, !17259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17165)
    #dbg_value(ptr %2, !17259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17165)
    #dbg_declare(ptr %i.a, !17265, !DIExpression(), !17166)
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10TransitionENCNvXs3_B1p_NtB1p_5StateNtNtBc_3fmt5Debug3fmt0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callNtNtCs4wP2HXfJTCR_5alloc6string6StringNCINvMsk_NtB4t_3vecINtB5a_3VecB4p_E14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !17283

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10TransitionENCNvXs3_B2z_NtB2z_5StateNtNtB1r_3fmt5Debug3fmt0EEB2F_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.f unwind label %bb.e, !dbg !17284

bb.d:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10TransitionENCNvXs3_B2z_NtB2z_5StateNtNtB1r_3fmt5Debug3fmt0EEB2F_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17285, !noalias !17258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !17286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17284
  ret void, !dbg !17287

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !17288
  unreachable, !dbg !17288

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !17288
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENCNvXs3_B3a_NtB3a_5StateNtNtB22_3fmt5Debug3fmt0EE9from_iterB3g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17295 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !17383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17389)
    #dbg_value(ptr %2, !17383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17389)
    #dbg_declare(ptr %i.c, !17384, !DIExpression(), !17390)
    #dbg_declare(ptr poison, !17391, !DIExpression(), !17396)
    #dbg_declare(ptr poison, !17399, !DIExpression(), !17403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17477
    #dbg_value(ptr poison, !17405, !DIExpression(), !17301)
    #dbg_value(ptr poison, !17411, !DIExpression(), !17307)
    #dbg_value(i64 8, !17418, !DIExpression(), !17315)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !17416, !DIExpression(), !17316)
    #dbg_value(ptr %2, !17432, !DIExpression(), !17317)
    #dbg_value(ptr %1, !17433, !DIExpression(), !17317)
    #dbg_value(ptr %2, !17426, !DIExpression(), !17318)
    #dbg_value(ptr %1, !17427, !DIExpression(), !17318)
    #dbg_value(ptr %1, !17422, !DIExpression(), !17319)
    #dbg_value(ptr %2, !17421, !DIExpression(), !17319)
  %i.d = ptrtoint ptr %2 to i64, !dbg !17478
  %i.e = ptrtoint ptr %1 to i64, !dbg !17478
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !17478
  %i.g = lshr exact i64 %i.f, 3, !dbg !17478      ; 2 uses
    #dbg_value(i64 %i.g, !17385, !DIExpression(), !17435)
    #dbg_value(i64 %i.g, !17397, !DIExpression(), !17436)
    #dbg_value(i64 %i.g, !17392, !DIExpression(), !17437)
    #dbg_value(i64 %i.g, !17400, !DIExpression(), !17438)
    #dbg_value(i64 %i.g, !4356, !DIExpression(), !17321)
    #dbg_value(i64 %i.g, !4376, !DIExpression(), !17323)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !17324)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17321)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17323)
    #dbg_value(i64 24, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17321)
    #dbg_value(i64 24, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17323)
    #dbg_value(i64 0, !4378, !DIExpression(), !17323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17479
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !17479
  %i.h = load i64, ptr %i.b, align 8, !dbg !17479, !range !1547, !noundef !1180
  %i.i = trunc nuw i64 %i.h to i1, !dbg !17480
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17481
  %i.k = load i64, ptr %i.j, align 8, !dbg !17481, !range !4381, !noundef !1180 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17481 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENCNvXs3_B2z_NtB2z_5StateNtNtB1r_3fmt5Debug3fmt0EEB2F_.exit.i, !dbg !17480, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !17482
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17325)
    #dbg_value(i64 %i.m, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17325)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !17483
  unreachable, !dbg !17483

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENCNvXs3_B2z_NtB2z_5StateNtNtB1r_3fmt5Debug3fmt0EEB2F_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !17484, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.k, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17326)
    #dbg_value(ptr %i.n, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17326)
    #dbg_value(ptr poison, !4377, !DIExpression(), !17327)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !17485
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17329)
  tail call void @llvm.assume(i1 %i.o), !dbg !17486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17487
  store i64 %i.k, ptr %i.c, align 8, !dbg !17488
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17488
  store ptr %i.n, ptr %i.p, align 8, !dbg !17488
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17488 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !17488
    #dbg_value(ptr %i.c, !17439, !DIExpression(), !17332)
    #dbg_value(ptr %1, !17442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17332)
    #dbg_value(ptr %2, !17442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17332)
    #dbg_value(ptr %1, !17445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17343)
    #dbg_value(ptr %2, !17445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17343)
    #dbg_value(ptr %i.c, !17449, !DIExpression(), !17343)
    #dbg_value(ptr poison, !17405, !DIExpression(), !17345)
    #dbg_value(ptr poison, !17411, !DIExpression(), !17347)
    #dbg_value(i64 8, !17418, !DIExpression(), !17351)
    #dbg_value(ptr %2, !17416, !DIExpression(), !17352)
    #dbg_value(ptr %2, !17432, !DIExpression(), !17353)
    #dbg_value(ptr %1, !17433, !DIExpression(), !17353)
    #dbg_value(ptr %2, !17426, !DIExpression(), !17354)
    #dbg_value(ptr %1, !17427, !DIExpression(), !17354)
    #dbg_value(ptr %1, !17422, !DIExpression(), !17355)
    #dbg_value(ptr %2, !17421, !DIExpression(), !17355)
    #dbg_value(i64 poison, !17450, !DIExpression(), !17356)
    #dbg_value(i64 1, !17451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17356)
    #dbg_value(i64 %i.g, !17451, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17356)
    #dbg_value(i64 %i.g, !17452, !DIExpression(), !17357)
    #dbg_value(ptr %i.n, !17462, !DIExpression(), !17358)
    #dbg_value(ptr %i.q, !17463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17359)
    #dbg_value(i64 0, !17463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17489, !noalias !17465
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17489
  store ptr %i.n, ptr %i.r, align 8, !dbg !17489, !noalias !17465
  store ptr %i.q, ptr %i.a, align 8, !dbg !17489, !noalias !17465
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17489
  store i64 0, ptr %i.s, align 8, !dbg !17489, !noalias !17465
    #dbg_value(ptr %1, !17466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17367)
    #dbg_value(ptr %2, !17466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17367)
    #dbg_declare(ptr %i.a, !17472, !DIExpression(), !17368)
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENCNvXs3_B1p_NtB1p_5StateNtNtBc_3fmt5Debug3fmt0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callNtNtCs4wP2HXfJTCR_5alloc6string6StringNCINvMsk_NtB4l_3vecINtB52_3VecB4h_E14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !17490

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENCNvXs3_B2z_NtB2z_5StateNtNtB1r_3fmt5Debug3fmt0EEB2F_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.f unwind label %bb.e, !dbg !17491

bb.d:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENCNvXs3_B2z_NtB2z_5StateNtNtB1r_3fmt5Debug3fmt0EEB2F_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17492, !noalias !17465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !17493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17491
  ret void, !dbg !17494

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !17495
  unreachable, !dbg !17495

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !17495
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2l_5slice4iter4IterB13_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner10top_concat0EE9from_iterB3E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17500 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !17574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17580)
    #dbg_value(ptr %2, !17574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17580)
    #dbg_declare(ptr %i.c, !17575, !DIExpression(), !17581)
    #dbg_declare(ptr poison, !17582, !DIExpression(), !17587)
    #dbg_declare(ptr poison, !17590, !DIExpression(), !17594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17643
    #dbg_value(ptr poison, !17596, !DIExpression(), !17506)
    #dbg_value(ptr poison, !4696, !DIExpression(), !17508)
    #dbg_value(i64 48, !4703, !DIExpression(), !17512)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !4701, !DIExpression(), !17513)
    #dbg_value(ptr %2, !4717, !DIExpression(), !17514)
    #dbg_value(ptr %1, !4718, !DIExpression(), !17514)
    #dbg_value(ptr %2, !4711, !DIExpression(), !17515)
    #dbg_value(ptr %1, !4712, !DIExpression(), !17515)
    #dbg_value(ptr %1, !4707, !DIExpression(), !17516)
    #dbg_value(ptr %2, !4706, !DIExpression(), !17516)
  %i.d = ptrtoint ptr %2 to i64, !dbg !17644
  %i.e = ptrtoint ptr %1 to i64, !dbg !17644
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !17644
  %i.g = udiv exact i64 %i.f, 48, !dbg !17644     ; 2 uses
    #dbg_value(i64 %i.g, !17576, !DIExpression(), !17601)
    #dbg_value(i64 %i.g, !17588, !DIExpression(), !17602)
    #dbg_value(i64 %i.g, !17583, !DIExpression(), !17603)
    #dbg_value(i64 %i.g, !17591, !DIExpression(), !17604)
    #dbg_value(i64 %i.g, !4356, !DIExpression(), !17518)
    #dbg_value(i64 %i.g, !4376, !DIExpression(), !17520)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !17521)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17518)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17520)
    #dbg_value(i64 48, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17518)
    #dbg_value(i64 48, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17520)
    #dbg_value(i64 0, !4378, !DIExpression(), !17520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17645
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !dbg !17645
  %i.h = load i64, ptr %i.b, align 8, !dbg !17645, !range !1547, !noundef !1180
  %i.i = trunc nuw i64 %i.h to i1, !dbg !17646
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17647
  %i.k = load i64, ptr %i.j, align 8, !dbg !17647, !range !4381, !noundef !1180 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17647 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner10top_concat0EEB32_.exit.i, !dbg !17646, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !17648
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17522)
    #dbg_value(i64 %i.m, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17522)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !17649
  unreachable, !dbg !17649

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner10top_concat0EEB32_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !17650, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.k, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17523)
    #dbg_value(ptr %i.n, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17523)
    #dbg_value(ptr poison, !4377, !DIExpression(), !17524)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !17651
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17526)
  tail call void @llvm.assume(i1 %i.o), !dbg !17652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17653
  store i64 %i.k, ptr %i.c, align 8, !dbg !17654
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17654
  store ptr %i.n, ptr %i.p, align 8, !dbg !17654
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17654 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !17654
    #dbg_value(ptr %i.c, !17605, !DIExpression(), !17529)
    #dbg_value(ptr %1, !17608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17529)
    #dbg_value(ptr %2, !17608, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17529)
    #dbg_value(ptr %1, !17611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17540)
    #dbg_value(ptr %2, !17611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17540)
    #dbg_value(ptr %i.c, !17615, !DIExpression(), !17540)
    #dbg_value(ptr poison, !17596, !DIExpression(), !17542)
    #dbg_value(ptr poison, !4696, !DIExpression(), !17544)
    #dbg_value(i64 48, !4703, !DIExpression(), !17548)
    #dbg_value(ptr %2, !4701, !DIExpression(), !17549)
    #dbg_value(ptr %2, !4717, !DIExpression(), !17550)
    #dbg_value(ptr %1, !4718, !DIExpression(), !17550)
    #dbg_value(ptr %2, !4711, !DIExpression(), !17551)
    #dbg_value(ptr %1, !4712, !DIExpression(), !17551)
    #dbg_value(ptr %1, !4707, !DIExpression(), !17552)
    #dbg_value(ptr %2, !4706, !DIExpression(), !17552)
    #dbg_value(i64 poison, !17616, !DIExpression(), !17553)
    #dbg_value(i64 1, !17617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17553)
    #dbg_value(i64 %i.g, !17617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17553)
    #dbg_value(i64 %i.g, !17618, !DIExpression(), !17554)
    #dbg_value(ptr %i.n, !17628, !DIExpression(), !17555)
    #dbg_value(ptr %i.q, !17629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17556)
    #dbg_value(i64 0, !17629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17655, !noalias !17631
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17655
  store ptr %i.n, ptr %i.r, align 8, !dbg !17655, !noalias !17631
  store ptr %i.q, ptr %i.a, align 8, !dbg !17655, !noalias !17631
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17655
  store i64 0, ptr %i.s, align 8, !dbg !17655, !noalias !17631
    #dbg_value(ptr %1, !17632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17564)
    #dbg_value(ptr %2, !17632, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17564)
    #dbg_declare(ptr %i.a, !17638, !DIExpression(), !17565)
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner10top_concat0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3c_8for_each4callB1n_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4s_3VecB1n_E14extend_trustedBN_E0E0EB2a_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !17656

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner10top_concat0EEB32_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.f unwind label %bb.e, !dbg !17657

bb.d:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner10top_concat0EEB32_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17658, !noalias !17631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !17659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17657
  ret void, !dbg !17660

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !17661
  unreachable, !dbg !17661

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !17661
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2l_5slice4iter4IterB13_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flatten0EE9from_iterB3E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17666 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !17739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17745)
    #dbg_value(ptr %2, !17739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17745)
    #dbg_declare(ptr %i.c, !17740, !DIExpression(), !17746)
    #dbg_declare(ptr poison, !17747, !DIExpression(), !17752)
    #dbg_declare(ptr poison, !17755, !DIExpression(), !17759)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17808
    #dbg_value(ptr poison, !17761, !DIExpression(), !17672)
    #dbg_value(ptr poison, !4696, !DIExpression(), !17674)
    #dbg_value(i64 48, !4703, !DIExpression(), !17678)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !4701, !DIExpression(), !17679)
    #dbg_value(ptr %2, !4717, !DIExpression(), !17680)
    #dbg_value(ptr %1, !4718, !DIExpression(), !17680)
    #dbg_value(ptr %2, !4711, !DIExpression(), !17681)
    #dbg_value(ptr %1, !4712, !DIExpression(), !17681)
    #dbg_value(ptr %1, !4707, !DIExpression(), !17682)
    #dbg_value(ptr %2, !4706, !DIExpression(), !17682)
  %i.d = ptrtoint ptr %2 to i64, !dbg !17809
  %i.e = ptrtoint ptr %1 to i64, !dbg !17809
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !17809
  %i.g = udiv exact i64 %i.f, 48, !dbg !17809     ; 2 uses
    #dbg_value(i64 %i.g, !17741, !DIExpression(), !17766)
    #dbg_value(i64 %i.g, !17753, !DIExpression(), !17767)
    #dbg_value(i64 %i.g, !17748, !DIExpression(), !17768)
    #dbg_value(i64 %i.g, !17756, !DIExpression(), !17769)
    #dbg_value(i64 %i.g, !4356, !DIExpression(), !17684)
    #dbg_value(i64 %i.g, !4376, !DIExpression(), !17686)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !17687)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17684)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17686)
    #dbg_value(i64 48, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17684)
    #dbg_value(i64 48, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17686)
    #dbg_value(i64 0, !4378, !DIExpression(), !17686)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17810
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !dbg !17810
  %i.h = load i64, ptr %i.b, align 8, !dbg !17810, !range !1547, !noundef !1180
  %i.i = trunc nuw i64 %i.h to i1, !dbg !17811
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17812
  %i.k = load i64, ptr %i.j, align 8, !dbg !17812, !range !4381, !noundef !1180 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17812 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flatten0EEB32_.exit.i, !dbg !17811, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !17813
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17688)
    #dbg_value(i64 %i.m, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17688)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !17814
  unreachable, !dbg !17814

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flatten0EEB32_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !17815, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.k, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17689)
    #dbg_value(ptr %i.n, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17689)
    #dbg_value(ptr poison, !4377, !DIExpression(), !17690)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !17816
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17692)
  tail call void @llvm.assume(i1 %i.o), !dbg !17817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17818
  store i64 %i.k, ptr %i.c, align 8, !dbg !17819
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17819
  store ptr %i.n, ptr %i.p, align 8, !dbg !17819
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17819 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !17819
    #dbg_value(ptr %i.c, !17770, !DIExpression(), !17695)
    #dbg_value(ptr %1, !17773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17695)
    #dbg_value(ptr %2, !17773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17695)
    #dbg_value(ptr %1, !17776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17706)
    #dbg_value(ptr %2, !17776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17706)
    #dbg_value(ptr %i.c, !17780, !DIExpression(), !17706)
    #dbg_value(ptr poison, !17761, !DIExpression(), !17708)
    #dbg_value(ptr poison, !4696, !DIExpression(), !17710)
    #dbg_value(i64 48, !4703, !DIExpression(), !17714)
    #dbg_value(ptr %2, !4701, !DIExpression(), !17715)
    #dbg_value(ptr %2, !4717, !DIExpression(), !17716)
    #dbg_value(ptr %1, !4718, !DIExpression(), !17716)
    #dbg_value(ptr %2, !4711, !DIExpression(), !17717)
    #dbg_value(ptr %1, !4712, !DIExpression(), !17717)
    #dbg_value(ptr %1, !4707, !DIExpression(), !17718)
    #dbg_value(ptr %2, !4706, !DIExpression(), !17718)
    #dbg_value(i64 poison, !17781, !DIExpression(), !17719)
    #dbg_value(i64 1, !17782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17719)
    #dbg_value(i64 %i.g, !17782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17719)
    #dbg_value(i64 %i.g, !17783, !DIExpression(), !17720)
    #dbg_value(ptr %i.n, !17793, !DIExpression(), !17721)
    #dbg_value(ptr %i.q, !17794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17722)
    #dbg_value(i64 0, !17794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17722)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17820, !noalias !17796
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17820
  store ptr %i.n, ptr %i.r, align 8, !dbg !17820, !noalias !17796
  store ptr %i.q, ptr %i.a, align 8, !dbg !17820, !noalias !17796
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17820
  store i64 0, ptr %i.s, align 8, !dbg !17820, !noalias !17796
    #dbg_value(ptr %1, !17797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17730)
    #dbg_value(ptr %2, !17797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17730)
    #dbg_declare(ptr %i.a, !17803, !DIExpression(), !17731)
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flatten0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callB1n_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4o_3VecB1n_E14extend_trustedBN_E0E0EB2a_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !17821

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flatten0EEB32_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.f unwind label %bb.e, !dbg !17822

bb.d:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flatten0EEB32_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17823, !noalias !17796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !17824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17822
  ret void, !dbg !17825

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !17826
  unreachable, !dbg !17826

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !17826
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2l_5slice4iter4IterB13_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flattens_0EE9from_iterB3E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17831 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !17904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17910)
    #dbg_value(ptr %2, !17904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17910)
    #dbg_declare(ptr %i.c, !17905, !DIExpression(), !17911)
    #dbg_declare(ptr poison, !17912, !DIExpression(), !17917)
    #dbg_declare(ptr poison, !17920, !DIExpression(), !17924)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17973
    #dbg_value(ptr poison, !17926, !DIExpression(), !17837)
    #dbg_value(ptr poison, !4696, !DIExpression(), !17839)
    #dbg_value(i64 48, !4703, !DIExpression(), !17843)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !4701, !DIExpression(), !17844)
    #dbg_value(ptr %2, !4717, !DIExpression(), !17845)
    #dbg_value(ptr %1, !4718, !DIExpression(), !17845)
    #dbg_value(ptr %2, !4711, !DIExpression(), !17846)
    #dbg_value(ptr %1, !4712, !DIExpression(), !17846)
    #dbg_value(ptr %1, !4707, !DIExpression(), !17847)
    #dbg_value(ptr %2, !4706, !DIExpression(), !17847)
  %i.d = ptrtoint ptr %2 to i64, !dbg !17974
  %i.e = ptrtoint ptr %1 to i64, !dbg !17974
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !17974
  %i.g = udiv exact i64 %i.f, 48, !dbg !17974     ; 2 uses
    #dbg_value(i64 %i.g, !17906, !DIExpression(), !17931)
    #dbg_value(i64 %i.g, !17918, !DIExpression(), !17932)
    #dbg_value(i64 %i.g, !17913, !DIExpression(), !17933)
    #dbg_value(i64 %i.g, !17921, !DIExpression(), !17934)
    #dbg_value(i64 %i.g, !4356, !DIExpression(), !17849)
    #dbg_value(i64 %i.g, !4376, !DIExpression(), !17851)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !17852)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17849)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17851)
    #dbg_value(i64 48, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17849)
    #dbg_value(i64 48, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17851)
    #dbg_value(i64 0, !4378, !DIExpression(), !17851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17975
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !dbg !17975
  %i.h = load i64, ptr %i.b, align 8, !dbg !17975, !range !1547, !noundef !1180
  %i.i = trunc nuw i64 %i.h to i1, !dbg !17976
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17977
  %i.k = load i64, ptr %i.j, align 8, !dbg !17977, !range !4381, !noundef !1180 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17977 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flattens_0EEB32_.exit.i, !dbg !17976, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !17978
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17853)
    #dbg_value(i64 %i.m, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17853)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !17979
  unreachable, !dbg !17979

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flattens_0EEB32_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !17980, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.k, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17854)
    #dbg_value(ptr %i.n, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17854)
    #dbg_value(ptr poison, !4377, !DIExpression(), !17855)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !17981
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17857)
  tail call void @llvm.assume(i1 %i.o), !dbg !17982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17983
  store i64 %i.k, ptr %i.c, align 8, !dbg !17984
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17984
  store ptr %i.n, ptr %i.p, align 8, !dbg !17984
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17984 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !17984
    #dbg_value(ptr %i.c, !17935, !DIExpression(), !17860)
    #dbg_value(ptr %1, !17938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17860)
    #dbg_value(ptr %2, !17938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17860)
    #dbg_value(ptr %1, !17941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17871)
    #dbg_value(ptr %2, !17941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17871)
    #dbg_value(ptr %i.c, !17945, !DIExpression(), !17871)
    #dbg_value(ptr poison, !17926, !DIExpression(), !17873)
    #dbg_value(ptr poison, !4696, !DIExpression(), !17875)
    #dbg_value(i64 48, !4703, !DIExpression(), !17879)
    #dbg_value(ptr %2, !4701, !DIExpression(), !17880)
    #dbg_value(ptr %2, !4717, !DIExpression(), !17881)
    #dbg_value(ptr %1, !4718, !DIExpression(), !17881)
    #dbg_value(ptr %2, !4711, !DIExpression(), !17882)
    #dbg_value(ptr %1, !4712, !DIExpression(), !17882)
    #dbg_value(ptr %1, !4707, !DIExpression(), !17883)
    #dbg_value(ptr %2, !4706, !DIExpression(), !17883)
    #dbg_value(i64 poison, !17946, !DIExpression(), !17884)
    #dbg_value(i64 1, !17947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17884)
    #dbg_value(i64 %i.g, !17947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17884)
    #dbg_value(i64 %i.g, !17948, !DIExpression(), !17885)
    #dbg_value(ptr %i.n, !17958, !DIExpression(), !17886)
    #dbg_value(ptr %i.q, !17959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17887)
    #dbg_value(i64 0, !17959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17985, !noalias !17961
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17985
  store ptr %i.n, ptr %i.r, align 8, !dbg !17985, !noalias !17961
  store ptr %i.q, ptr %i.a, align 8, !dbg !17985, !noalias !17961
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17985
  store i64 0, ptr %i.s, align 8, !dbg !17985, !noalias !17961
    #dbg_value(ptr %1, !17962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17895)
    #dbg_value(ptr %2, !17962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17895)
    #dbg_declare(ptr %i.a, !17968, !DIExpression(), !17896)
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flattens_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3a_8for_each4callB1n_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1n_E14extend_trustedBN_E0E0EB2a_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !17986

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flattens_0EEB32_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.f unwind label %bb.e, !dbg !17987

bb.d:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterBG_ENCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner7flattens_0EEB32_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17988, !noalias !17961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !17989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17987
  ret void, !dbg !17990

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !17991
  unreachable, !dbg !17991

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !17991
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtBO_5clone5Clone5cloneCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17993 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !18256, !DIExpression(), !18032)
    #dbg_value(ptr poison, !18290, !DIExpression(), !18033)
    #dbg_value(ptr poison, !18304, !DIExpression(), !18034)
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !18252, !DIExpression(), !18341)
    #dbg_value(ptr %1, !18342, !DIExpression(), !18348)
    #dbg_value(ptr %1, !18349, !DIExpression(), !18352)
    #dbg_value(ptr %1, !18353, !DIExpression(), !18356)
    #dbg_value(ptr %1, !18357, !DIExpression(), !18360)
    #dbg_declare(ptr poison, !18253, !DIExpression(), !18361)
    #dbg_declare(ptr poison, !18335, !DIExpression(), !18362)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18619
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18620
  %i.f = load ptr, ptr %i.e, align 8, !dbg !18620, !nonnull !1180, !noundef !1180 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !dbg !18621, !noundef !1180 ; 4 uses
    #dbg_value(ptr %i.f, !18334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18371)
    #dbg_value(i64 %i.g, !18334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18372), !dbg !18622
    #dbg_value(ptr %i.f, !18309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18046)
    #dbg_value(ptr %i.f, !18373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18049)
    #dbg_value(ptr %i.f, !18375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18055)
    #dbg_value(i64 %i.g, !18309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18046)
    #dbg_value(i64 %i.g, !18373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18049)
    #dbg_value(i64 %i.g, !18375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18055)
    #dbg_declare(ptr poison, !18310, !DIExpression(), !18056)
    #dbg_declare(ptr poison, !18380, !DIExpression(), !18059)
    #dbg_declare(ptr poison, !18386, !DIExpression(), !18062)
    #dbg_declare(ptr %i.c, !18311, !DIExpression(), !18063)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18623, !noalias !18392
    #dbg_value(i64 %i.g, !18384, !DIExpression(), !18065)
    #dbg_value(i64 %i.g, !18390, !DIExpression(), !18066)
    #dbg_value(i64 %i.g, !18376, !DIExpression(), !18067)
    #dbg_value(i64 %i.g, !18393, !DIExpression(), !18070)
    #dbg_value(i64 %i.g, !18396, !DIExpression(), !18073)
    #dbg_value(i64 %i.g, !4356, !DIExpression(), !18075)
    #dbg_value(i64 %i.g, !4376, !DIExpression(), !18077)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !18078)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18075)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18077)
    #dbg_value(i64 24, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18075)
    #dbg_value(i64 24, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18077)
    #dbg_value(i64 0, !4378, !DIExpression(), !18077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18624, !noalias !18392
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !18624, !noalias !18392
  %i.h = load i64, ptr %i.b, align 8, !dbg !18624, !range !1547, !noalias !18392, !noundef !1180
  %i.i = trunc nuw i64 %i.h to i1, !dbg !18625
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18626
  %i.k = load i64, ptr %i.j, align 8, !dbg !18626, !range !4381, !noalias !18392, !noundef !1180 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18626 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !18625, !prof !1567

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !18627, !noalias !18392
    #dbg_value(i64 %i.k, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18079)
    #dbg_value(i64 %i.m, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18079)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !18628, !noalias !18392
  unreachable, !dbg !18628

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !18629, !noalias !18392, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.k, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18080)
    #dbg_value(ptr %i.n, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18080)
    #dbg_value(ptr poison, !4377, !DIExpression(), !18081)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !18630
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18083)
  tail call void @llvm.assume(i1 %i.o), !dbg !18631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18632, !noalias !18392
  store i64 %i.k, ptr %i.c, align 8, !dbg !18633, !noalias !18392
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18633
  store ptr %i.n, ptr %i.p, align 8, !dbg !18633, !noalias !18392
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18633 ; 2 uses
    #dbg_value(ptr %i.c, !18312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18084)
    #dbg_value(i64 0, !18312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18084)
    #dbg_value(ptr %i.n, !18394, !DIExpression(), !18089)
    #dbg_value(i64 0, !18393, !DIExpression(), !18089)
    #dbg_value(ptr %i.n, !18313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18090)
    #dbg_value(i64 %i.k, !18313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18090)
    #dbg_value(ptr %i.f, !18377, !DIExpression(), !18091)
    #dbg_value(ptr %i.f, !18394, !DIExpression(), !18070)
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g, !dbg !18634
    #dbg_value(ptr %i.f, !18314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18092)
    #dbg_value(ptr %i.r, !18314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18092)
    #dbg_value(i64 0, !18314, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18092)
    #dbg_value(i64 %i.k, !18314, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18092)
    #dbg_value(ptr undef, !18304, !DIExpression(), !18034)
  %i.s = icmp eq i64 %i.k, 0, !dbg !18635
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB8_4sync3ArceEEENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i, !dbg !18635
end_hunk_1
