Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.05?download=true
inline.NumInlined: 265
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literal:bb.a
    #dbg_value(ptr %i.x, !2036, !DIExpression(), !14374)
    #dbg_value(ptr poison, !2046, !DIExpression(), !14376)
    #dbg_value(ptr poison, !2049, !DIExpression(), !14377)
  %i.af = icmp ne ptr %i.aa, %i.x, !dbg !14582
  tail call void @llvm.assume(i1 %i.af), !dbg !14583
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 2, !dbg !14584 ; 3 uses
  %i.ah = load i8, ptr %i.aa, align 1, !dbg !14585, !alias.scope !14504, !noalias !14539, !noundef !1137
    #dbg_value(i8 %i.ah, !2939, !DIExpression(), !14378)
    #dbg_value(i8 %i.ah, !2964, !DIExpression(), !14370)
  %i.ai = shl nuw nsw i32 %i.ae, 6, !dbg !14586
  %i.aj = and i8 %i.ah, 63, !dbg !14587
  %i.ak = zext nneg i8 %i.aj to i32, !dbg !14587  ; 2 uses
  %i.al = or disjoint i32 %i.ai, %i.ak, !dbg !14586
    #dbg_value(i32 %i.al, !2940, !DIExpression(), !14379)
  %i.am = icmp samesign ugt i8 %i.ab, -33, !dbg !14588
  br i1 %i.am, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28.i.i.i.i.i, label %bb.i, !dbg !14588

bb.h:                                             ; preds = %bb.g
  %i.an = zext nneg i8 %i.ab to i32, !dbg !14589
  br label %bb.i, !dbg !14590

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26.i.i.i.i.i
    #dbg_value(ptr undef, !2025, !DIExpression(), !14330)
    #dbg_value(i64 1, !2039, !DIExpression(), !14381)
    #dbg_value(ptr %i.ag, !2035, !DIExpression(), !14382)
    #dbg_value(ptr %i.ag, !2043, !DIExpression(), !14381)
    #dbg_value(ptr %i.x, !2036, !DIExpression(), !14383)
    #dbg_value(ptr poison, !2046, !DIExpression(), !14385)
    #dbg_value(ptr poison, !2049, !DIExpression(), !14386)
  %i.ao = icmp ne ptr %i.ag, %i.x, !dbg !14591
  tail call void @llvm.assume(i1 %i.ao), !dbg !14592
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 3, !dbg !14593 ; 3 uses
  %i.aq = load i8, ptr %i.ag, align 1, !dbg !14594, !alias.scope !14504, !noalias !14539, !noundef !1137
    #dbg_value(i8 %i.aq, !2941, !DIExpression(), !14387)
    #dbg_value(i8 %i.aq, !2964, !DIExpression(), !14389)
    #dbg_value(i32 %i.ak, !2961, !DIExpression(), !14389)
  %i.ar = shl nuw nsw i32 %i.ak, 6, !dbg !14595
  %i.as = and i8 %i.aq, 63, !dbg !14596
  %i.at = zext nneg i8 %i.as to i32, !dbg !14596
  %i.au = or disjoint i32 %i.ar, %i.at, !dbg !14595 ; 2 uses
    #dbg_value(i32 %i.au, !2942, !DIExpression(), !14390)
    #dbg_value(i32 %i.au, !2961, !DIExpression(), !14392)
  %i.av = shl nuw nsw i32 %i.ae, 12, !dbg !14597
  %i.aw = or disjoint i32 %i.au, %i.av, !dbg !14598
    #dbg_value(i32 %i.aw, !2940, !DIExpression(), !14379)
  %i.ax = icmp samesign ugt i8 %i.ab, -17, !dbg !14599
  br i1 %i.ax, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30.i.i.i.i.i, label %bb.i, !dbg !14599

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28.i.i.i.i.i
    #dbg_value(ptr undef, !2025, !DIExpression(), !14328)
    #dbg_value(i64 1, !2039, !DIExpression(), !14394)
    #dbg_value(ptr %i.ap, !2035, !DIExpression(), !14395)
    #dbg_value(ptr %i.ap, !2043, !DIExpression(), !14394)
    #dbg_value(ptr %i.x, !2036, !DIExpression(), !14396)
    #dbg_value(ptr poison, !2046, !DIExpression(), !14398)
    #dbg_value(ptr poison, !2049, !DIExpression(), !14399)
  %i.ay = icmp ne ptr %i.ap, %i.x, !dbg !14600
  tail call void @llvm.assume(i1 %i.ay), !dbg !14601
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !14602
  %i.ba = load i8, ptr %i.ap, align 1, !dbg !14603, !alias.scope !14504, !noalias !14539, !noundef !1137
    #dbg_value(i8 %i.ba, !2943, !DIExpression(), !14400)
    #dbg_value(i8 %i.ba, !2964, !DIExpression(), !14392)
  %i.bb = shl nuw nsw i32 %i.ae, 18, !dbg !14604
  %i.bc = and i32 %i.bb, 1835008, !dbg !14604
  %i.bd = shl nuw nsw i32 %i.au, 6, !dbg !14605
  %i.be = and i8 %i.ba, 63, !dbg !14606
  %i.bf = zext nneg i8 %i.be to i32, !dbg !14606
  %i.bg = or disjoint i32 %i.bd, %i.bf, !dbg !14605
  %i.bh = or disjoint i32 %i.bg, %i.bc, !dbg !14607
    #dbg_value(i32 %i.bh, !2940, !DIExpression(), !14379)
  br label %bb.i, !dbg !14608

bb.i:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28.i.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26.i.i.i.i.i
  %i.bi = phi ptr [ %i.ap, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28.i.i.i.i.i ], [ %i.az, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30.i.i.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26.i.i.i.i.i ], [ %i.aa, %bb.h ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.aw, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28.i.i.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30.i.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26.i.i.i.i.i ], [ %i.an, %bb.h ] ; 2 uses
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !14518, !DIExpression(), !14401)
    #dbg_value(ptr poison, !14540, !DIExpression(DW_OP_deref), !14404)
    #dbg_declare(ptr poison, !14545, !DIExpression(), !14405)
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !14544, !DIExpression(), !14404)
    #dbg_value(ptr poison, !14549, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14408)
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !14553, !DIExpression(), !14408)
    #dbg_value(ptr poison, !3977, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14411)
    #dbg_value(ptr poison, !3984, !DIExpression(), !14412)
    #dbg_value(ptr undef, !3985, !DIExpression(DW_OP_deref), !14412)
    #dbg_value(ptr undef, !3977, !DIExpression(), !14411)
    #dbg_value(ptr undef, !3976, !DIExpression(), !14411)
    #dbg_value(ptr undef, !3946, !DIExpression(), !14414)
    #dbg_value(i64 1, !3997, !DIExpression(), !14416)
    #dbg_value(ptr %.val, !3966, !DIExpression(), !14417)
    #dbg_value(ptr %.val, !4001, !DIExpression(), !14416)
    #dbg_value(ptr %i.y, !3967, !DIExpression(), !14418)
    #dbg_value(ptr poison, !4004, !DIExpression(), !14420)
    #dbg_value(ptr poison, !4007, !DIExpression(), !14421)
  br i1 %.not.not.not.i.not.not.not.i.not.i.not.not.not.i.not.i.i.i24, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i, label %.lr.ph, !dbg !14609

bb.j:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !14610 ; 2 uses
    #dbg_value(ptr %i.bj, !3966, !DIExpression(), !14417)
    #dbg_value(ptr %i.bj, !4001, !DIExpression(), !14416)
    #dbg_value(ptr %i.y, !3967, !DIExpression(), !14418)
    #dbg_value(ptr poison, !4004, !DIExpression(), !14420)
    #dbg_value(ptr poison, !4007, !DIExpression(), !14421)
  %.not.not.not.i.not.not.not.i.not.i.not.not.not.i.not.i.i.i = icmp eq ptr %i.bj, %i.y, !dbg !14611
  br i1 %.not.not.not.i.not.not.not.i.not.i.not.not.not.i.not.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i, label %.lr.ph, !dbg !14609

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %i.bk = phi ptr [ %i.bj, %bb.j ], [ %.val, %bb.i ] ; 3 uses
    #dbg_value(ptr %i.bk, !3966, !DIExpression(), !14417)
    #dbg_value(ptr %i.bk, !3978, !DIExpression(), !14422)
  %.val8.i.i.i.i.i.i.i = load i32, ptr %i.bk, align 4, !dbg !14612, !range !4009, !noalias !14555, !noundef !1137
  %i.bl = getelementptr i8, ptr %i.bk, i64 4, !dbg !14612
  %.val9.i.i.i.i.i.i.i = load i32, ptr %i.bl, align 4, !dbg !14612, !noalias !14555
    #dbg_value(ptr poison, !4010, !DIExpression(DW_OP_deref, DW_OP_deref), !14427)
    #dbg_value(ptr poison, !4014, !DIExpression(), !14427)
  %.not.i.i.i.i.i.i.i.i = icmp samesign ule i32 %.val8.i.i.i.i.i.i.i, %spec.select.i.ph.i.i.i, !dbg !14613
  %i.bm = icmp samesign ule i32 %spec.select.i.ph.i.i.i, %.val9.i.i.i.i.i.i.i, !dbg !14613
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %i.bm, i1 false, !dbg !14613
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit, label %bb.j, !dbg !14612

_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i, %.lr.ph, %bb.e, %bb.f
  %.sroa.0.0.i = phi i1 [ false, %bb.e ], [ false, %.lr.ph ], [ true, %bb.f ], [ true, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3all5checkcNCNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literals_00E0B1m_.exit.loopexit.i.i.i ], !dbg !14614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14615
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literal0EB1J_.exit, !dbg !14616

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literal0EB1J_.exit: ; preds = %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literal0B7_.exit.loopexit.i, %.lr.ph26, %bb.b, %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit
  %.sroa.0.0.in = phi i1 [ %.sroa.0.0.i, %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literals_0EB1u_.exit ], [ true, %bb.b ], [ false, %.lr.ph26 ], [ true, %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literal0B7_.exit.loopexit.i ]
  ret i1 %.sroa.0.0.in, !dbg !14617
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix31has_disjoint_class_separator_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 288230376151711744) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14619 {
bb.a:
    #dbg_value(ptr poison, !14760, !DIExpression(), !14637)
    #dbg_value(ptr poison, !14778, !DIExpression(), !14638)
    #dbg_value(ptr poison, !14797, !DIExpression(), !14814)
    #dbg_value(ptr poison, !14808, !DIExpression(), !14815)
    #dbg_value(ptr poison, !14780, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14816)
    #dbg_value(ptr poison, !14809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14817)
    #dbg_value(ptr poison, !14799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14818)
    #dbg_value(i64 %2, !14756, !DIExpression(), !14819)
    #dbg_value(ptr %0, !14755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14819)
    #dbg_value(ptr %0, !14820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14823)
    #dbg_value(ptr %0, !14824, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14830)
    #dbg_value(i64 %1, !14755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14819)
    #dbg_value(i64 %1, !14820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14823)
    #dbg_value(i64 %1, !14824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14830)
    #dbg_value(ptr %3, !14757, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14819)
    #dbg_value(i64 %4, !14757, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14819)
    #dbg_declare(ptr poison, !14798, !DIExpression(), !14831)
    #dbg_value(i64 %1, !14825, !DIExpression(), !14832)
    #dbg_value(i64 %1, !14833, !DIExpression(), !14837)
  %i.a = icmp ult i64 %2, %1, !dbg !14968
  br i1 %i.a, label %bb.b, label %bb.i, !dbg !14968

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2, !dbg !14969
    #dbg_value(ptr %i.b, !14838, !DIExpression(), !14655)
    #dbg_value(ptr %i.b, !14850, !DIExpression(), !14656)
    #dbg_value(ptr %i.b, !14857, !DIExpression(), !14661)
  br label %bb.c, !dbg !14970

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %i.h, %bb.d ] ; 5 uses
    #dbg_value(ptr %.sroa.0.0.i, !14857, !DIExpression(), !14661)
    #dbg_value(ptr %.sroa.0.0.i, !14850, !DIExpression(), !14656)
    #dbg_value(ptr %.sroa.0.0.i, !14838, !DIExpression(), !14655)
  %i.c = load i64, ptr %.sroa.0.0.i, align 8, !dbg !14971, !range !3874, !noundef !1137 ; 3 uses
  %i.d = icmp ne i64 %i.c, 4, !dbg !14971
  tail call void @llvm.assume(i1 %i.d), !dbg !14971
  %i.e = add nsw i64 %i.c, -2, !dbg !14971
  %.inv.i = icmp samesign ult i64 %i.c, 2, !dbg !14971
  %i.f = select i1 %.inv.i, i64 2, i64 %i.e, !dbg !14971
  switch i64 %i.f, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit [
    i64 5, label %bb.d
    i64 2, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix14required_class.exit
    i64 4, label %bb.e
  ], !dbg !14972

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %.sroa.0.0.i, !14858, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14662)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8, !dbg !14973
  %i.h = load ptr, ptr %i.g, align 8, !dbg !14973, !nonnull !1137, !noundef !1137
    #dbg_value(ptr %i.h, !14838, !DIExpression(), !14655)
    #dbg_value(ptr %i.h, !14850, !DIExpression(), !14656)
    #dbg_value(ptr %i.h, !14857, !DIExpression(), !14661)
  br label %bb.c, !dbg !14974

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr undef, !14852, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !14663)
    #dbg_value(ptr poison, !14854, !DIExpression(), !14663)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24, !dbg !14975
  %i.j = load i32, ptr %i.i, align 8, !dbg !14975, !noundef !1137
  %.not.i = icmp eq i32 %i.j, 0, !dbg !14975
  br i1 %.not.i, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit, label %bb.f, !dbg !14975

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16, !dbg !14976
    #dbg_value(ptr poison, !14857, !DIExpression(), !14665)
  br label %bb.g, !dbg !14977

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i = phi ptr [ %i.k, %bb.f ], [ %6, %bb.g ]
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.0.in.i, align 8, !dbg !14978, !nonnull !1137, !noundef !1137 ; 3 uses
    #dbg_value(ptr %.sroa.06.0.i, !14857, !DIExpression(), !14665)
  %i.l = load i64, ptr %.sroa.06.0.i, align 8, !dbg !14979, !range !3874, !noalias !14861, !noundef !1137 ; 3 uses
  %i.m = icmp ne i64 %i.l, 4, !dbg !14979
  tail call void @llvm.assume(i1 %i.m), !dbg !14979
  %5 = icmp eq i64 %i.l, 7, !dbg !14980
    #dbg_value(ptr %.sroa.06.0.i, !14859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14668)
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 8, !dbg !14981
    #dbg_value(ptr poison, !14857, !DIExpression(), !14665)
  br i1 %5, label %bb.g, label %bb.h, !dbg !14980

bb.h:                                             ; preds = %bb.g
  %.inv14.i = icmp samesign ugt i64 %i.l, 1, !dbg !14979
  br i1 %.inv14.i, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix14required_class.exit, !dbg !14982

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21, !dbg !14968
  unreachable, !dbg !14968

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix14required_class.exit: ; preds = %bb.c, %bb.h
  %.sroa.05.0.i = phi ptr [ %.sroa.06.0.i, %bb.h ], [ %.sroa.0.0.i, %bb.c ], !dbg !14983 ; 2 uses
    #dbg_value(ptr %.sroa.05.0.i, !14758, !DIExpression(), !14862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14863), !dbg !14984
    #dbg_value(ptr poison, !14864, !DIExpression(), !14686)
    #dbg_value(ptr poison, !14883, !DIExpression(), !14687)
    #dbg_value(ptr %.sroa.05.0.i, !14891, !DIExpression(), !14688)
    #dbg_value(ptr %3, !14892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14688)
    #dbg_value(ptr %3, !14894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14691)
    #dbg_value(ptr %3, !14896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14697)
    #dbg_value(i64 %4, !14892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14688)
    #dbg_value(i64 %4, !14894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14691)
    #dbg_value(i64 %4, !14896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14697)
    #dbg_value(i64 %4, !14897, !DIExpression(), !14698)
    #dbg_value(i64 %4, !14901, !DIExpression(), !14701)
    #dbg_value(ptr %3, !14898, !DIExpression(), !14702)
    #dbg_value(ptr %3, !14902, !DIExpression(), !14701)
  %.idx60 = shl nuw nsw i64 %4, 5, !dbg !14985
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %.idx60, !dbg !14985
    #dbg_value(ptr %.sroa.05.0.i, !14884, !DIExpression(), !14687)
    #dbg_value(ptr undef, !14883, !DIExpression(), !14687)
    #dbg_value(ptr undef, !14864, !DIExpression(), !14686)
    #dbg_value(i64 1, !14904, !DIExpression(), !14705)
    #dbg_value(ptr %3, !14874, !DIExpression(), !14706)
    #dbg_value(ptr %3, !14908, !DIExpression(), !14705)
    #dbg_value(ptr %i.n, !14875, !DIExpression(), !14707)
    #dbg_value(ptr poison, !14911, !DIExpression(), !14710)
    #dbg_value(ptr poison, !14914, !DIExpression(), !14711)
  %i.o = icmp eq i64 %4, 0, !dbg !14986
  br i1 %i.o, label %._crit_edge, label %.lr.ph, !dbg !14987

bb.j:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !14988 ; 2 uses
    #dbg_value(ptr %i.p, !14874, !DIExpression(), !14706)
    #dbg_value(ptr %i.p, !14908, !DIExpression(), !14705)
    #dbg_value(ptr %i.n, !14875, !DIExpression(), !14707)
    #dbg_value(ptr poison, !14911, !DIExpression(), !14710)
    #dbg_value(ptr poison, !14914, !DIExpression(), !14711)
  %i.q = icmp eq ptr %i.p, %i.n, !dbg !14986
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !dbg !14987

.lr.ph:                                           ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix14required_class.exit, %bb.j
  %i.r = phi ptr [ %i.p, %bb.j ], [ %3, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix14required_class.exit ] ; 3 uses
    #dbg_value(ptr %i.r, !14874, !DIExpression(), !14706)
    #dbg_value(ptr %i.r, !14885, !DIExpression(), !14712)
  %i.s = getelementptr i8, ptr %i.r, i64 8, !dbg !14989
  %.val8.i.i = load ptr, ptr %i.s, align 8, !dbg !14989, !alias.scope !14863, !noalias !14916, !nonnull !1137, !noundef !1137
  %i.t = getelementptr i8, ptr %i.r, i64 16, !dbg !14989
  %.val9.i.i = load i64, ptr %i.t, align 8, !dbg !14989, !alias.scope !14863, !noalias !14916, !noundef !1137
    #dbg_value(ptr poison, !14917, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14719)
    #dbg_value(ptr poison, !14921, !DIExpression(), !14719)
  %i.u = tail call fastcc noundef zeroext i1 @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix30class_is_disjoint_from_literal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.05.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i.i, i64 noundef %.val9.i.i), !dbg !14990, !noalias !14923
  br i1 %i.u, label %bb.j, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit, !dbg !14989

._crit_edge:                                      ; preds = %bb.j, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix14required_class.exit
    #dbg_value(ptr %0, !14826, !DIExpression(), !14924)
    #dbg_value(ptr %0, !14834, !DIExpression(), !14837)
  %.idx = mul nuw nsw i64 %1, 48, !dbg !14991
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx, !dbg !14991
    #dbg_value(ptr undef, !14808, !DIExpression(), !14815)
    #dbg_value(ptr undef, !14797, !DIExpression(), !14814)
    #dbg_value(ptr undef, !14809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14817)
    #dbg_value(ptr %.sroa.05.0.i, !14809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14817)
    #dbg_value(ptr undef, !14799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14818)
    #dbg_value(ptr %.sroa.05.0.i, !14799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14818)
    #dbg_value(ptr undef, !14780, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14816)
    #dbg_value(ptr %.sroa.05.0.i, !14780, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14816)
    #dbg_value(ptr undef, !14780, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14816)
    #dbg_value(ptr undef, !14778, !DIExpression(), !14638)
    #dbg_declare(ptr poison, !14779, !DIExpression(), !14720)
    #dbg_declare(ptr poison, !14781, !DIExpression(), !14721)
    #dbg_value(ptr undef, !14760, !DIExpression(), !14637)
    #dbg_value(i64 1, !14925, !DIExpression(), !14724)
    #dbg_value(ptr %0, !14761, !DIExpression(), !14725)
    #dbg_value(ptr %0, !14926, !DIExpression(), !14724)
    #dbg_value(ptr %i.v, !14762, !DIExpression(), !14726)
    #dbg_value(ptr poison, !14928, !DIExpression(), !14729)
    #dbg_value(ptr poison, !14929, !DIExpression(), !14730)
  br label %.lr.ph.i, !dbg !14992

.lr.ph.i:                                         ; preds = %._crit_edge, %.backedge.i
  %i.w = phi i64 [ %.sroa.7.1, %.backedge.i ], [ 0, %._crit_edge ], !dbg !14993 ; 2 uses
  %i.x = phi ptr [ %i.y, %.backedge.i ], [ %0, %._crit_edge ] ; 2 uses
    #dbg_value(ptr %i.x, !14761, !DIExpression(), !14725)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48, !dbg !14994 ; 2 uses
    #dbg_value(ptr %i.x, !14782, !DIExpression(), !14734)
    #dbg_value(ptr poison, !14936, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14735)
    #dbg_value(ptr poison, !14937, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !14735)
    #dbg_declare(ptr poison, !14934, !DIExpression(), !14736)
    #dbg_value(ptr %i.x, !14935, !DIExpression(), !14735)
    #dbg_value(ptr poison, !14943, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14740)
    #dbg_declare(ptr poison, !14951, !DIExpression(), !14741)
    #dbg_value(i64 %i.w, !14950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14740)
    #dbg_value(ptr %i.x, !14950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14740)
    #dbg_value(ptr poison, !14956, !DIExpression(DW_OP_deref, DW_OP_deref), !14745)
    #dbg_value(ptr poison, !14960, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14745)
    #dbg_value(i64 %i.w, !14963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14745)
    #dbg_value(ptr %i.x, !14963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14745)
    #dbg_value(i64 %i.w, !14961, !DIExpression(), !14746)
    #dbg_value(ptr %i.x, !14962, !DIExpression(), !14746)
  %i.z = icmp eq i64 %i.w, %2, !dbg !14995
  br i1 %i.z, label %.backedge.i, label %.split.i, !dbg !14995

.split.i:                                         ; preds = %.lr.ph.i
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix26hir_is_disjoint_from_class(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.05.0.i), !dbg !14996, !noalias !14966
    #dbg_value(i1 %i.aa, !14938, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14752)
  br i1 %i.aa, label %.backedge.i, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit, !dbg !14997

.backedge.i:                                      ; preds = %.lr.ph.i, %.split.i
  %.sroa.7.1 = add nuw nsw i64 %i.w, 1, !dbg !14998
    #dbg_value(ptr undef, !14760, !DIExpression(), !14637)
    #dbg_value(i64 1, !14925, !DIExpression(), !14724)
    #dbg_value(ptr %i.y, !14761, !DIExpression(), !14725)
    #dbg_value(ptr %i.y, !14926, !DIExpression(), !14724)
    #dbg_value(ptr %i.v, !14762, !DIExpression(), !14726)
    #dbg_value(ptr poison, !14928, !DIExpression(), !14729)
    #dbg_value(ptr poison, !14929, !DIExpression(), !14730)
  %.not13.i = icmp eq ptr %i.y, %i.v, !dbg !14999
  br i1 %.not13.i, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit, label %.lr.ph.i, !dbg !14992

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta6prefix31class_is_disjoint_from_literals.exit: ; preds = %bb.c, %.lr.ph, %.backedge.i, %.split.i, %bb.h, %bb.e
  %.sroa.0.0 = phi i1 [ false, %bb.h ], [ false, %.lr.ph ], [ false, %bb.e ], [ true, %.backedge.i ], [ false, %.split.i ], [ false, %bb.c ], !dbg !14819
  ret i1 %.sroa.0.0, !dbg !15000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 2305843009213693953) i64 @_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrack20min_visited_capacity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #5 !dbg !15001 {
bb.a:
    #dbg_value(ptr %0, !15015, !DIExpression(), !15018)
    #dbg_value(ptr %0, !15019, !DIExpression(), !15022)
    #dbg_value(ptr %1, !15016, !DIExpression(), !15018)
    #dbg_value(ptr %1, !15023, !DIExpression(), !15029)
    #dbg_value(ptr %0, !15030, !DIExpression(), !15033)
    #dbg_value(ptr %0, !15034, !DIExpression(), !15037)
  %i.a = load ptr, ptr %0, align 8, !dbg !15056, !nonnull !1137, !noundef !1137
    #dbg_value(ptr %i.a, !15039, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !15042)
    #dbg_value(ptr %i.a, !15043, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !15046)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336, !dbg !15057
  %i.c = load i64, ptr %i.b, align 16, !dbg !15057, !noundef !1137
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !15058
  %i.e = load i64, ptr %i.d, align 8, !dbg !15058, !noundef !1137
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !15058
  %i.g = load i64, ptr %i.f, align 8, !dbg !15058, !noundef !1137
    #dbg_value(ptr poison, !15047, !DIExpression(), !15050)
    #dbg_value(i64 %i.g, !15051, !DIExpression(), !15055)
    #dbg_value(i64 %i.e, !15052, !DIExpression(), !15055)
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %i.e), !dbg !15059
  %i.i = add i64 %i.h, 1, !dbg !15060
  %i.j = mul i64 %i.i, %i.c, !dbg !15061          ; 2 uses
    #dbg_value(i64 %i.j, !3757, !DIExpression(), !15012)
    #dbg_value(i64 8, !3758, !DIExpression(), !15012)
  %i.k = and i64 %i.j, 7, !dbg !15062
  %i.l = icmp ne i64 %i.k, 0, !dbg !15062
  %i.m = lshr i64 %i.j, 3, !dbg !15063
  %i.n = zext i1 %i.l to i64, !dbg !15062
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.n, !dbg !15062
  ret i64 %.sroa.0.0.i, !dbg !15064
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space6lookup(i32 noundef range(i32 133, 1114112) %0) unnamed_addr #6 !dbg !15065 {
bb.a:
    #dbg_value(i32 %0, !15067, !DIExpression(), !15069)
  %i.a = lshr i32 %0, 8, !dbg !15070
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.d
    i32 22, label %bb.b
    i32 32, label %bb.f
    i32 48, label %bb.c
  ], !dbg !15071

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 5760, !dbg !15072
  %i.c = zext i1 %i.b to i8, !dbg !15072
  br label %bb.e, !dbg !15073

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, 12288, !dbg !15074
  %i.e = zext i1 %i.d to i8, !dbg !15074
  br label %bb.e, !dbg !15075

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %0, 255, !dbg !15076
  %i.g = zext nneg i32 %i.f to i64, !dbg !15076
  %i.h = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.g, !dbg !15077
  %i.i = load i8, ptr %i.h, align 1, !dbg !15077, !noundef !1137
  br label %bb.e, !dbg !15078

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.c ], [ %i.i, %bb.d ], [ %i.c, %bb.b ], [ %i.o, %bb.f ], [ 0, %bb.a ], !dbg !15069
  %i.j = trunc i8 %.sroa.0.0 to i1, !dbg !15079
  ret i1 %i.j, !dbg !15079

bb.f:                                             ; preds = %bb.a
  %i.k = and i32 %0, 255, !dbg !15080
  %i.l = zext nneg i32 %i.k to i64, !dbg !15080
  %i.m = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.l, !dbg !15081
  %i.n = load i8, ptr %i.m, align 1, !dbg !15081, !noundef !1137
  %i.o = lshr i8 %i.n, 1, !dbg !15081
  br label %bb.e, !dbg !15082
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15096 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 15 uses
  %i.f = alloca [10 x i8], align 1                ; 14 uses
    #dbg_value(ptr %0, !15140, !DIExpression(), !15175)
    #dbg_value(ptr %1, !15141, !DIExpression(), !15175)
    #dbg_value(ptr %1, !15176, !DIExpression(), !15183)
    #dbg_value(ptr %1, !15176, !DIExpression(), !15186)
    #dbg_declare(ptr %i.f, !15143, !DIExpression(), !15187)
    #dbg_declare(ptr %i.e, !15145, !DIExpression(), !15188)
  %i.g = load i8, ptr %0, align 1, !dbg !15248, !noundef !1137 ; 2 uses
  %i.h = icmp eq i8 %i.g, 32, !dbg !15248
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !15248

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15249
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.f, i8 0, i64 10, i1 false), !dbg !15250
    #dbg_value(i64 0, !15144, !DIExpression(), !15189)
  %i.i = tail call i64 @_RNvNtCsj6eKBz9Db1c_4core5ascii14escape_default(i8 noundef %i.g), !dbg !15251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15251
  store i64 %i.i, ptr %i.e, align 8, !dbg !15251
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !15251 ; 23 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !15251
    #dbg_value(ptr %i.e, !15191, !DIExpression(), !15111)
    #dbg_value(ptr %i.e, !15213, !DIExpression(), !15114)
  %i.j = call { i1, i8 } @_RNvMs_NtCsj6eKBz9Db1c_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e), !dbg !15252, !noalias !15218 ; 2 uses
  %i.k = extractvalue { i1, i8 } %i.j, 0, !dbg !15253
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge, !dbg !15254

.lr.ph.preheader:                                 ; preds = %bb.b
    #dbg_value(i8 poison, !15232, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15124)
    #dbg_value(i8 poison, !15206, !DIExpression(), !15125)
  %i.l = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !15255, !alias.scope !15235, !noalias !15218, !noundef !1137 ; 2 uses
    #dbg_value(i64 %i.l, !15209, !DIExpression(), !15127)
  %i.m = add i64 %i.l, 1, !dbg !15256
  store i64 %i.m, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !15256, !alias.scope !15235, !noalias !15218
    #dbg_value(i64 %i.l, !15146, !DIExpression(), !15236)
    #dbg_value(i8 poison, !15147, !DIExpression(), !15236)
  %i.n = icmp ugt i64 %i.l, 1, !dbg !15257
  %i.o = extractvalue { i1, i8 } %i.j, 1, !dbg !15253 ; 3 uses
    #dbg_value(i8 %i.o, !15232, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15124)
    #dbg_value(i8 %i.o, !15206, !DIExpression(), !15125)
    #dbg_value(i8 %i.o, !15147, !DIExpression(), !15236)
  %i.p = add i8 %i.o, -97, !dbg !15257
  %i.q = icmp ult i8 %i.p, 6, !dbg !15257
  %or.cond5 = and i1 %i.q, %i.n, !dbg !15257
  %i.r = add nsw i8 %i.o, -32
  %spec.select = select i1 %or.cond5, i8 %i.r, i8 %i.o, !dbg !15257
    #dbg_value(i8 %spec.select, !15147, !DIExpression(), !15236)
  store i8 %spec.select, ptr %i.f, align 1, !dbg !15258
    #dbg_value(i64 1, !15144, !DIExpression(), !15189)
    #dbg_value(ptr %i.e, !15191, !DIExpression(), !15111)
    #dbg_value(ptr %i.e, !15213, !DIExpression(), !15114)
  %i.s = call { i1, i8 } @_RNvMs_NtCsj6eKBz9Db1c_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e), !dbg !15252, !noalias !15218 ; 2 uses
  %i.t = extractvalue { i1, i8 } %i.s, 0, !dbg !15253
    #dbg_value(i1 %i.t, !15232, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !15124)
    #dbg_value(i8 poison, !15232, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15124)
  br i1 %i.t, label %.lr.ph.1, label %._crit_edge, !dbg !15254

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr @60, !15177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15183)
    #dbg_value(ptr inttoptr (i64 7 to ptr), !15177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15183)
    #dbg_value(ptr @60, !15178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15238)
    #dbg_value(i64 3, !15178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15238)
  %i.u = load ptr, ptr %1, align 8, !dbg !15259, !nonnull !1137, !noundef !1137
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15259
  %i.w = load ptr, ptr %i.v, align 8, !dbg !15259, !nonnull !1137, !align !3324, !noundef !1137
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !15259
  %i.y = load ptr, ptr %i.x, align 8, !dbg !15259, !invariant.load !1137, !nonnull !1137
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 3) #26, !dbg !15260
  br label %bb.d, !dbg !15261

bb.d:                                             ; preds = %bb.c, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.0.0.in = phi i1 [ %i.z, %bb.c ], [ %i.al, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit ]
  ret i1 %.sroa.0.0.in, !dbg !15262

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %bb.b
  %.sroa.06.0.lcssa = phi i64 [ 0, %bb.b ], [ 1, %.lr.ph.preheader ], [ 2, %.lr.ph.1 ], [ 3, %.lr.ph.2 ], [ 4, %.lr.ph.3 ], [ 5, %.lr.ph.4 ], [ 6, %.lr.ph.5 ], [ 7, %.lr.ph.6 ], [ 8, %.lr.ph.7 ], [ 9, %.lr.ph.8 ], [ 10, %.lr.ph.9 ], !dbg !15263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15265
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %.sroa.06.0.lcssa), !dbg !15265
  call void @llvm.experimental.noalias.scope.decl(metadata !15239), !dbg !15266
    #dbg_declare(ptr %i.c, !15240, !DIExpression(), !15134)
    #dbg_declare(ptr %i.a, !15245, !DIExpression(), !15135)
  %i.aa = load i64, ptr %i.c, align 8, !dbg !15267, !range !3006, !alias.scope !15239, !noundef !1137
  %i.ab = trunc nuw i64 %i.aa to i1, !dbg !15268
  br i1 %i.ab, label %bb.e, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !15268, !prof !3008

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15269, !noalias !15239
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !15269
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #21, !dbg !15270, !noalias !15239
  unreachable, !dbg !15270

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15271
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !15271, !alias.scope !15239, !nonnull !1137, !noundef !1137
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15271
  %i.ag = load i64, ptr %i.af, align 8, !dbg !15271, !alias.scope !15239, !noundef !1137
  store ptr %i.ae, ptr %i.d, align 8, !dbg !15266
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15266
  store i64 %i.ag, ptr %i.ah, align 8, !dbg !15266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15272
    #dbg_value(ptr %i.d, !15149, !DIExpression(), !15247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15273
  store ptr %i.d, ptr %i.b, align 8, !dbg !15273
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15273
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata, ptr %.sroa.432.0..sroa_idx, align 8, !dbg !15273
    #dbg_value(ptr @59, !15177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15186)
    #dbg_value(ptr %i.b, !15177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15186)
  %i.ai = load ptr, ptr %1, align 8, !dbg !15274, !nonnull !1137, !noundef !1137
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15274
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !15274, !nonnull !1137, !align !3324, !noundef !1137
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!14779 = !DILocalVariable(name: "init", arg: 2, scope: !14629, file: !1759, line: 2482, type: !1118)
!14780 = !DILocalVariable(name: "f", arg: 3, scope: !14629, file: !1759, line: 2482, type: !14626)
!14781 = !DILocalVariable(name: "accum", scope: !14630, file: !1759, line: 2488, type: !1118, align: 8)
!14782 = !DILocalVariable(name: "x", scope: !14631, file: !1759, line: 2489, type: !3774, align: 64)
!14783 = !DILocalVariable(name: "residual", scope: !14628, file: !1759, line: 2490, type: !812, align: 8)
!14784 = !DILocalVariable(name: "val", scope: !14627, file: !1759, line: 2490, type: !1118, align: 8)
!14785 = !{!14778, !14779, !14780, !14781, !14782, !14783, !14784}
!14786 = !DITemplateTypeParameter(name: "Self", type: !753)
!14787 = !DITemplateTypeParameter(name: "F", type: !14626)
!14788 = !{!14786, !4083, !14787, !4099}
!14789 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<regex_syntax::hir::Hir>>", baseType: !14632, size: 64, align: 64, dwarfAddressSpace: 0)
!14790 = !{!808, !14789, !1118, !14625}
!14791 = !DISubroutineType(types: !14790)
!14792 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !14632, file: !828, baseType: !753, size: 128, align: 64, flags: DIFlagPrivate)
!14793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !14632, file: !828, baseType: !1121, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!14794 = !{!14792, !14793}
!14795 = !DITemplateTypeParameter(name: "I", type: !753)
!14796 = !{!14795}
!14797 = !DILocalVariable(name: "self", arg: 1, scope: !14633, file: !4102, line: 106, type: !14789)
!14798 = !DILocalVariable(name: "init", scope: !14633, file: !4102, line: 106, type: !1118, align: 8)
!14799 = !DILocalVariable(name: "fold", arg: 3, scope: !14633, file: !4102, line: 106, type: !14625)
!14800 = !{!14797, !14798, !14799}
!14801 = !DITemplateTypeParameter(name: "Acc", type: !1118)
!14802 = !DITemplateTypeParameter(name: "Fold", type: !14625)
!14803 = !{!14795, !14801, !14802, !4099}
!14804 = !DILocation(line: 107, column: 36, scope: !14618)
!14805 = !DILocation(line: 2838, column: 14, scope: !14634, inlinedAt: !14804)
!14806 = !{!1152, !14789, !14624}
!14807 = !DISubroutineType(types: !14806)
!14808 = !DILocalVariable(name: "self", arg: 1, scope: !14634, file: !1759, line: 2827, type: !14789)
!14809 = !DILocalVariable(name: "f", arg: 2, scope: !14634, file: !1759, line: 2827, type: !14624)
!14810 = !{!14808, !14809}
!14811 = !DITemplateTypeParameter(name: "Self", type: !14632)
!14812 = !DITemplateTypeParameter(name: "F", type: !14624)
!14813 = !{!14811, !14812}
!14814 = !DILocation(line: 106, column: 31, scope: !14633, inlinedAt: !14805)
!14815 = !DILocation(line: 2827, column: 15, scope: !14634, inlinedAt: !14804)
!14816 = !DILocation(line: 0, scope: !14629, inlinedAt: !14635)
!14817 = !DILocation(line: 0, scope: !14634, inlinedAt: !14804)
!14818 = !DILocation(line: 0, scope: !14633, inlinedAt: !14805)
!14819 = !DILocation(line: 0, scope: !14619)
!14820 = !DILocalVariable(name: "self", arg: 1, scope: !14639, file: !1861, line: 1039, type: !798)
!14821 = !{!14820}
!14822 = !DILocation(line: 107, column: 17, scope: !14618)
!14823 = !DILocation(line: 0, scope: !14639, inlinedAt: !14822)
!14824 = !DILocalVariable(name: "slice", arg: 1, scope: !14643, file: !3659, line: 94, type: !798)
!14825 = !DILocalVariable(name: "len", scope: !14642, file: !3659, line: 95, type: !1121, align: 64)
!14826 = !DILocalVariable(name: "ptr", scope: !14641, file: !3659, line: 96, type: !752, align: 64)
!14827 = !DILocalVariable(name: "end_or_len", scope: !14640, file: !3659, line: 99, type: !3856, align: 64)
!14828 = !{!14824, !14825, !14826, !14827}
!14829 = !DILocation(line: 1040, column: 9, scope: !14639, inlinedAt: !14822)
!14830 = !DILocation(line: 0, scope: !14643, inlinedAt: !14829)
!14831 = !DILocation(line: 106, column: 42, scope: !14633, inlinedAt: !14805)
!14832 = !DILocation(line: 0, scope: !14642, inlinedAt: !14829)
!14833 = !DILocalVariable(name: "count", arg: 2, scope: !14644, file: !1925, line: 936, type: !1121)
!14834 = !DILocalVariable(name: "self", arg: 1, scope: !14644, file: !1925, line: 936, type: !4030)
!14835 = !{!14834, !14833}
!14836 = !DILocation(line: 100, column: 78, scope: !14641, inlinedAt: !14829)
!14837 = !DILocation(line: 0, scope: !14644, inlinedAt: !14836)
!14838 = !DILocalVariable(name: "hir", arg: 1, scope: !14653, file: !3771, line: 116, type: !3774)
!14839 = !{!14648, !3774}
!14840 = !DISubroutineType(types: !14839)
!14841 = !{!14647}
!14842 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !14647, file: !828, baseType: !14646, size: 64, align: 64, extraData: i64 0)
!14843 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !14647, file: !828, baseType: !14645, size: 64, align: 64)
!14844 = !{!14842, !14843}
!14845 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !14645, file: !828, baseType: !4053, size: 64, align: 64, flags: DIFlagPublic)
!14846 = !{!14845}
!14847 = !DITemplateTypeParameter(name: "T", type: !4053)
!14848 = !{!14847}
!14849 = !DIDerivedType(tag: DW_TAG_member, scope: !14648, file: !828, baseType: !1013, size: 64, align: 64, flags: DIFlagArtificial)
!14850 = !DILocalVariable(name: "hir", scope: !14652, file: !3771, line: 117, type: !3774, align: 64)
!14851 = !DILocalVariable(name: "cls", scope: !14651, file: !3771, line: 119, type: !4053, align: 64)
!14852 = !DILocalVariable(name: "rep", scope: !14650, file: !3771, line: 120, type: !3851, align: 64)
!14853 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&regex_syntax::hir::Repetition", baseType: !3851, size: 64, align: 64, dwarfAddressSpace: 0)
!14854 = !DILocalVariable(name: "rep", scope: !14650, file: !3771, line: 120, type: !14853, align: 64)
!14855 = !DILocalVariable(name: "cls", scope: !14649, file: !3771, line: 122, type: !4053, align: 64)
!14856 = !{!14838, !14850, !14851, !14852, !14854, !14855}
!14857 = !DILocalVariable(name: "hir", arg: 1, scope: !14659, file: !3771, line: 149, type: !3774)
!14858 = !DILocalVariable(name: "capture", scope: !14658, file: !3771, line: 150, type: !3852, align: 64)
!14859 = !DILocalVariable(name: "capture", scope: !14657, file: !3771, line: 150, type: !3852, align: 64)
!14860 = !{!14857, !14858, !14859}
!14861 = !{!14667}
!14862 = !DILocation(line: 0, scope: !14618)
!14863 = !{!14670}
!14864 = !DILocalVariable(name: "self", arg: 1, scope: !14678, file: !1993, line: 157, type: !4103)
!14865 = !{!14674, !4103}
!14866 = !DISubroutineType(types: !14865)
!14867 = !{!14673}
!14868 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !14673, file: !828, baseType: !14672, size: 64, align: 64, extraData: i64 0)
!14869 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !14673, file: !828, baseType: !14671, size: 64, align: 64)
!14870 = !{!14868, !14869}
!14871 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !14671, file: !828, baseType: !2564, size: 64, align: 64, flags: DIFlagPublic)
!14872 = !{!14871}
!14873 = !DIDerivedType(tag: DW_TAG_member, scope: !14674, file: !828, baseType: !1013, size: 64, align: 64, flags: DIFlagArtificial)
!14874 = !DILocalVariable(name: "ptr", scope: !14677, file: !1993, line: 161, type: !363, align: 64)
!14875 = !DILocalVariable(name: "end_or_len", scope: !14676, file: !1993, line: 162, type: !2560, align: 64)
!14876 = !DILocalVariable(name: "len", scope: !14675, file: !1993, line: 167, type: !1121, align: 64)
!14877 = !{!14864, !14874, !14875, !14876}
!14878 = !{!1152, !4103, !14679}
!14879 = !DISubroutineType(types: !14878)
!14880 = !DINamespace(name: "class_is_disjoint_from_literals", scope: !3773)
!14881 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__cls", scope: !14679, file: !828, baseType: !4053, size: 64, align: 64)
!14882 = !{!14881}
!14883 = !DILocalVariable(name: "self", arg: 1, scope: !14680, file: !1993, line: 304, type: !4103)
!14884 = !DILocalVariable(name: "f", arg: 2, scope: !14680, file: !1993, line: 304, type: !14679)
!14885 = !DILocalVariable(name: "x", scope: !14681, file: !1993, line: 309, type: !2564, align: 64)
!14886 = !{!14883, !14884, !14885}
!14887 = !DITemplateTypeParameter(name: "F", type: !14679)
!14888 = !{!2550, !14887}
!14889 = !{!1152, !4053, !800}
!14890 = !DISubroutineType(types: !14889)
!14891 = !DILocalVariable(name: "cls", arg: 1, scope: !14682, file: !3771, line: 182, type: !4053)
!14892 = !DILocalVariable(name: "literals", arg: 2, scope: !14682, file: !3771, line: 182, type: !800)
!14893 = !{!14891, !14892}
!14894 = !DILocalVariable(name: "self", arg: 1, scope: !14689, file: !1861, line: 1039, type: !800)
!14895 = !{!14894}
!14896 = !DILocalVariable(name: "slice", arg: 1, scope: !14695, file: !3659, line: 94, type: !800)
!14897 = !DILocalVariable(name: "len", scope: !14694, file: !3659, line: 95, type: !1121, align: 64)
!14898 = !DILocalVariable(name: "ptr", scope: !14693, file: !3659, line: 96, type: !363, align: 64)
!14899 = !DILocalVariable(name: "end_or_len", scope: !14692, file: !3659, line: 99, type: !2560, align: 64)
!14900 = !{!14896, !14897, !14898, !14899}
!14901 = !DILocalVariable(name: "count", arg: 2, scope: !14699, file: !1925, line: 936, type: !1121)
!14902 = !DILocalVariable(name: "self", arg: 1, scope: !14699, file: !1925, line: 936, type: !2581)
!14903 = !{!14902, !14901}
!14904 = !DILocalVariable(name: "count", scope: !14703, file: !1995, line: 619, type: !1121, align: 64)
!14905 = !{!363, !363, !1121}
!14906 = !DISubroutineType(types: !14905)
!14907 = !DISubprogram(name: "add<regex_syntax::hir::literal::Literal>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralE3addCs9GYDdpCSJ4S_14regex_automata", scope: !363, file: !1995, line: 619, type: !14906, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2551)
!14908 = !DILocalVariable(name: "self", arg: 1, scope: !14703, file: !1995, line: 619, type: !363)
!14909 = !{!14908, !14904}
!14910 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<regex_syntax::hir::literal::Literal>", baseType: !363, size: 64, align: 64, dwarfAddressSpace: 0)
!14911 = !DILocalVariable(name: "self", arg: 1, scope: !14708, file: !1995, line: 1662, type: !14910)
!14912 = !{!1152, !14910, !14910}
!14913 = !DISubroutineType(types: !14912)
!14914 = !DILocalVariable(name: "other", arg: 2, scope: !14708, file: !1995, line: 1662, type: !14910)
!14915 = !{!14911, !14914}
!14916 = !{!14716, !14715, !14713}
!14917 = !DILocalVariable(name: "cls", scope: !14717, file: !3771, line: 182, type: !742, align: 64)
!14918 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut regex_automata::meta::prefix::class_is_disjoint_from_literals::{closure_env#0}", baseType: !14679, size: 64, align: 64, dwarfAddressSpace: 0)
!14919 = !{!1152, !14918, !2564}
!14920 = !DISubroutineType(cc: DW_CC_nocall, types: !14919)
!14921 = !DILocalVariable(name: "lit", arg: 2, scope: !14717, file: !3771, line: 185, type: !2564)
!14922 = !{!14921, !14917}
!14923 = !{!14716, !14670}
!14924 = !DILocation(line: 0, scope: !14641, inlinedAt: !14829)
!14925 = !DILocalVariable(name: "count", scope: !14722, file: !1995, line: 619, type: !1121, align: 64)
!14926 = !DILocalVariable(name: "self", arg: 1, scope: !14722, file: !1995, line: 619, type: !752)
!14927 = !{!14926, !14925}
!14928 = !DILocalVariable(name: "self", arg: 1, scope: !14727, file: !1995, line: 1662, type: !4049)
!14929 = !DILocalVariable(name: "other", arg: 2, scope: !14727, file: !1995, line: 1662, type: !4049)
!14930 = !{!14928, !14929}
!14931 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::enumerate::{impl#1}::try_fold::enumerate::{closure_env#0}<&regex_syntax::hir::Hir, (), core::ops::control_flow::ControlFlow<(), ()>, core::iter::traits::iterator::Iterator::all::check::{closure_env#0}<(usize, &regex_syntax::hir::Hir), regex_automata::meta::prefix::has_disjoint_class_separator_at::{closure_env#0}>>", baseType: !14626, size: 64, align: 64, dwarfAddressSpace: 0)
!14932 = !{!808, !14931, !1118, !3774}
!14933 = !DISubroutineType(types: !14932)
!14934 = !DILocalVariable(name: "acc", arg: 2, scope: !14732, file: !4102, line: 118, type: !1118)
!14935 = !DILocalVariable(name: "item", arg: 3, scope: !14732, file: !4102, line: 118, type: !3774)
!14936 = !DILocalVariable(name: "fold", scope: !14732, file: !4102, line: 115, type: !14625, align: 64)
!14937 = !DILocalVariable(name: "count", scope: !14732, file: !4102, line: 114, type: !3741, align: 64)
!14938 = !DILocalVariable(name: "acc", scope: !14731, file: !4102, line: 119, type: !808, align: 8)
!14939 = !{!14934, !14935, !14936, !14937, !14938}
!14940 = !DITemplateTypeParameter(name: "impl FnMut(Acc, (usize, T)) -> R + 'a", type: !14625)
!14941 = !{!3860, !14801, !4099, !14940}
!14943 = !DILocalVariable(name: "f", scope: !14738, file: !1759, line: 2833, type: !14624, align: 64)
!14944 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::all::check::{closure_env#0}<(usize, &regex_syntax::hir::Hir), regex_automata::meta::prefix::has_disjoint_class_separator_at::{closure_env#0}>", baseType: !14625, size: 64, align: 64, dwarfAddressSpace: 0)
!14945 = !{!808, !14944, !1118, !14737}
!14946 = !DISubroutineType(cc: DW_CC_nocall, types: !14945)
!14947 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !14737, file: !828, baseType: !1121, size: 64, align: 64)
!14948 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !14737, file: !828, baseType: !3774, size: 64, align: 64, offset: 64)
!14949 = !{!14947, !14948}
!14950 = !DILocalVariable(name: "x", arg: 3, scope: !14738, file: !1759, line: 2834, type: !14737)
!14951 = !DILocalVariable(arg: 2, scope: !14738, file: !1759, line: 2834, type: !1118)
!14952 = !{!14950, !14943, !14951}
!14953 = !DITemplateTypeParameter(name: "T", type: !14737)
!14954 = !DITemplateTypeParameter(name: "impl FnMut(T) -> bool", type: !14624)
!14955 = !{!14953, !14954}
!14956 = !DILocalVariable(name: "separator", scope: !14743, file: !3771, line: 100, type: !1121, align: 64)
!14957 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut regex_automata::meta::prefix::has_disjoint_class_separator_at::{closure_env#0}", baseType: !14624, size: 64, align: 64, dwarfAddressSpace: 0)
!14958 = !{!1152, !14957, !14737}
!14959 = !DISubroutineType(cc: DW_CC_nocall, types: !14958)
!14960 = !DILocalVariable(name: "separator_class", scope: !14743, file: !3771, line: 103, type: !742, align: 64)
!14961 = !DILocalVariable(name: "i", scope: !14742, file: !3771, line: 107, type: !1121, align: 64)
!14962 = !DILocalVariable(name: "hir", scope: !14742, file: !3771, line: 107, type: !3774, align: 64)
!14963 = !DILocalVariable(arg: 2, scope: !14743, file: !3771, line: 107, type: !14737)
!14964 = !{!14956, !14960, !14961, !14962, !14963}
!14966 = !{!14751, !14749, !14748}
!14968 = !DILocation(line: 103, column: 49, scope: !14619)
!14969 = !DILocation(line: 103, column: 48, scope: !14619)
!14970 = !DILocation(line: 117, column: 15, scope: !14653, inlinedAt: !14654)
!14971 = !DILocation(line: 150, column: 43, scope: !14658, inlinedAt: !14660)
!14972 = !DILocation(line: 150, column: 15, scope: !14658, inlinedAt: !14660)
!14973 = !DILocation(line: 151, column: 15, scope: !14658, inlinedAt: !14660)
!14974 = !DILocation(line: 150, column: 5, scope: !14659, inlinedAt: !14660)
!14975 = !DILocation(line: 120, column: 37, scope: !14652, inlinedAt: !14654)
!14976 = !DILocation(line: 121, column: 29, scope: !14650, inlinedAt: !14654)
!14977 = !DILocation(line: 121, column: 19, scope: !14650, inlinedAt: !14654)
!14978 = !DILocation(line: 121, scope: !14650, inlinedAt: !14654)
!14979 = !DILocation(line: 150, column: 43, scope: !14657, inlinedAt: !14664)
!14980 = !DILocation(line: 150, column: 15, scope: !14657, inlinedAt: !14664)
!14981 = !DILocation(line: 151, column: 15, scope: !14657, inlinedAt: !14664)
!14982 = !DILocation(line: 0, scope: !14650, inlinedAt: !14654)
!14983 = !DILocation(line: 0, scope: !14652, inlinedAt: !14654)
!14984 = !DILocation(line: 106, column: 5, scope: !14618)
!14985 = !DILocation(line: 970, column: 18, scope: !14699, inlinedAt: !14700)
!14986 = !DILocation(line: 1663, column: 9, scope: !14708, inlinedAt: !14709)
!14987 = !DILocation(line: 180, column: 28, scope: !14676, inlinedAt: !14685)
!14988 = !DILocation(line: 627, column: 28, scope: !14703, inlinedAt: !14704)
!14989 = !DILocation(line: 310, column: 25, scope: !14681, inlinedAt: !14684)
!14990 = !DILocation(line: 185, column: 20, scope: !14717, inlinedAt: !14718)
!14991 = !DILocation(line: 970, column: 18, scope: !14644, inlinedAt: !14836)
!14992 = !DILocation(line: 180, column: 28, scope: !14621, inlinedAt: !14636)
!14993 = !DILocation(line: 119, column: 38, scope: !14732, inlinedAt: !14733)
!14994 = !DILocation(line: 627, column: 28, scope: !14722, inlinedAt: !14723)
!14995 = !DILocation(line: 108, column: 13, scope: !14742, inlinedAt: !14744)
!14996 = !DILocation(line: 108, column: 31, scope: !14742, inlinedAt: !14744)
!14997 = !DILocation(line: 2490, column: 21, scope: !14631, inlinedAt: !14635)
!14998 = !DILocation(line: 120, column: 17, scope: !14731, inlinedAt: !14733)
!14999 = !DILocation(line: 1663, column: 9, scope: !14727, inlinedAt: !14728)
!15000 = !DILocation(line: 110, column: 2, scope: !14619)
!15001 = distinct !DISubprogram(name: "min_visited_capacity", linkageName: "_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrack20min_visited_capacity", scope: !1436, file: !3067, line: 41, type: !15014, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1137, retainedNodes: !15017)
!15002 = distinct !DISubprogram(name: "states", linkageName: "_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2_3NFA6states", scope: !81, file: !3328, line: 659, type: !3746, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1137, declaration: !3751, retainedNodes: !15020)
!15003 = distinct !DISubprogram(name: "get_span", linkageName: "_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB2_5Input8get_span", scope: !701, file: !3740, line: 661, type: !15025, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1137, declaration: !15026, retainedNodes: !15027)
!15004 = distinct !DISubprogram(name: "deref<regex_automata::nfa::thompson::nfa::Inner, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefBO_", scope: !3330, file: !2435, line: 2453, type: !3333, scopeLine: 2453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1430, retainedNodes: !15031)
!15005 = distinct !DISubprogram(name: "inner<regex_automata::nfa::thompson::nfa::Inner, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE5innerBO_", scope: !80, file: !2435, line: 2127, type: !3336, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1430, declaration: !3337, retainedNodes: !15035)
!15006 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<regex_automata::nfa::thompson::nfa::Inner>>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerEE6as_refB1E_", scope: !79, file: !1995, line: 450, type: !3340, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1140, declaration: !3341)
!15007 = distinct !DISubprogram(name: "deref<regex_automata::nfa::thompson::nfa::State, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5StateENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefBN_", scope: !1957, file: !1833, line: 3854, type: !3755, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1412, retainedNodes: !15040)
!15008 = distinct !DISubprogram(name: "as_slice<regex_automata::nfa::thompson::nfa::State, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5StateE8as_sliceBM_", scope: !72, file: !1833, line: 1848, type: !3755, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1412, declaration: !3756, retainedNodes: !15044)
!15009 = distinct !DISubprogram(name: "len", linkageName: "_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_4Span3len", scope: !700, file: !3740, line: 831, type: !3743, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1137, declaration: !3744, retainedNodes: !15048)
!15010 = distinct !DISubprogram(name: "saturating_sub", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj14saturating_sub", scope: !1939, file: !1938, line: 2539, type: !1937, scopeLine: 2539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1137, retainedNodes: !15053)
!15011 = distinct !DILocation(line: 42, column: 5, scope: !15001)
!15012 = distinct !DILocation(line: 0, scope: !723, inlinedAt: !15011)
!15013 = !{!1121, !1126, !3664}
!15014 = !DISubroutineType(types: !15013)
!15015 = !DILocalVariable(name: "nfa", arg: 1, scope: !15001, file: !3067, line: 41, type: !1126)
!15016 = !DILocalVariable(name: "input", arg: 2, scope: !15001, file: !3067, line: 41, type: !3664)
!15017 = !{!15015, !15016}
!15018 = !DILocation(line: 0, scope: !15001)
!15019 = !DILocalVariable(name: "self", arg: 1, scope: !15002, file: !3328, line: 659, type: !1126)
!15020 = !{!15019}
!15021 = !DILocation(line: 42, column: 18, scope: !15001)
!15022 = !DILocation(line: 0, scope: !15002, inlinedAt: !15021)
!15023 = !DILocalVariable(name: "self", arg: 1, scope: !15003, file: !3740, line: 661, type: !3664)
!15024 = !{!700, !3664}
!15025 = !DISubroutineType(types: !15024)
!15026 = !DISubprogram(name: "get_span", linkageName: "_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB2_5Input8get_span", scope: !701, file: !3740, line: 661, type: !15025, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1137)
!15027 = !{!15023}
!15028 = !DILocation(line: 42, column: 42, scope: !15001)
!15029 = !DILocation(line: 0, scope: !15003, inlinedAt: !15028)
!15030 = !DILocalVariable(name: "self", arg: 1, scope: !15004, file: !2435, line: 2453, type: !3329)
!15031 = !{!15030}
!15032 = !DILocation(line: 660, column: 10, scope: !15002, inlinedAt: !15021)
!15033 = !DILocation(line: 2453, column: 14, scope: !15004, inlinedAt: !15032)
!15034 = !DILocalVariable(name: "self", arg: 1, scope: !15005, file: !2435, line: 2127, type: !3329)
!15035 = !{!15034}
!15036 = !DILocation(line: 2454, column: 15, scope: !15004, inlinedAt: !15032)
!15037 = !DILocation(line: 2127, column: 14, scope: !15005, inlinedAt: !15036)
!15038 = !DILocation(line: 2133, column: 27, scope: !15005, inlinedAt: !15036)
!15039 = !DILocalVariable(name: "self", arg: 1, scope: !15007, file: !1833, line: 3854, type: !3753)
!15040 = !{!15039}
!15041 = !DILocation(line: 660, column: 9, scope: !15002, inlinedAt: !15021)
!15042 = !DILocation(line: 3854, column: 14, scope: !15007, inlinedAt: !15041)
!15043 = !DILocalVariable(name: "self", arg: 1, scope: !15008, file: !1833, line: 1848, type: !3753)
!15044 = !{!15043}
!15045 = !DILocation(line: 3855, column: 14, scope: !15007, inlinedAt: !15041)
!15046 = !DILocation(line: 1848, column: 27, scope: !15008, inlinedAt: !15045)
!15047 = !DILocalVariable(name: "self", arg: 1, scope: !15009, file: !3740, line: 831, type: !3730)
!15048 = !{!15047}
!15049 = !DILocation(line: 42, column: 53, scope: !15001)
!15050 = !DILocation(line: 831, column: 16, scope: !15009, inlinedAt: !15049)
!15051 = !DILocalVariable(name: "self", arg: 1, scope: !15010, file: !1938, line: 2539, type: !1121)
!15052 = !DILocalVariable(name: "rhs", arg: 2, scope: !15010, file: !1938, line: 2539, type: !1121)
!15053 = !{!15051, !15052}
!15054 = !DILocation(line: 832, column: 18, scope: !15009, inlinedAt: !15049)
!15055 = !DILocation(line: 0, scope: !15010, inlinedAt: !15054)
!15056 = !DILocation(line: 454, column: 20, scope: !15006, inlinedAt: !15038)
!15057 = !DILocation(line: 1865, column: 86, scope: !15008, inlinedAt: !15045)
!15058 = !DILocation(line: 662, column: 9, scope: !15003, inlinedAt: !15028)
!15059 = !DILocation(line: 2540, column: 13, scope: !15010, inlinedAt: !15054)
!15060 = !DILocation(line: 42, column: 35, scope: !15001)
!15061 = !DILocation(line: 42, column: 14, scope: !15001)
!15062 = !DILocation(line: 1882, column: 8, scope: !723, inlinedAt: !15011)
!15063 = !DILocation(line: 0, scope: !723, inlinedAt: !15011)
!15064 = !DILocation(line: 43, column: 2, scope: !15001)
!15065 = distinct !DISubprogram(name: "lookup", linkageName: "_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space6lookup", scope: !15066, file: !3022, line: 919, type: !3021, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1137, retainedNodes: !15068)
!15066 = !DINamespace(name: "white_space", scope: !3024)
!15067 = !DILocalVariable(name: "c", arg: 1, scope: !15065, file: !3022, line: 919, type: !2697)
!15068 = !{!15067}
!15069 = !DILocation(line: 0, scope: !15065)
!15070 = !DILocation(line: 921, column: 15, scope: !15065)
!15071 = !DILocation(line: 921, column: 9, scope: !15065)
!15072 = !DILocation(line: 923, column: 19, scope: !15065)
!15073 = !DILocation(line: 923, column: 36, scope: !15065)
!15074 = !DILocation(line: 925, column: 19, scope: !15065)
!15075 = !DILocation(line: 925, column: 36, scope: !15065)
!15076 = !DILocation(line: 922, column: 33, scope: !15065)
!15077 = !DILocation(line: 922, column: 18, scope: !15065)
!15078 = !DILocation(line: 922, column: 59, scope: !15065)
!15079 = !DILocation(line: 928, column: 6, scope: !15065)
!15080 = !DILocation(line: 924, column: 34, scope: !15065)
!15081 = !DILocation(line: 924, column: 19, scope: !15065)
!15082 = !DILocation(line: 924, column: 60, scope: !15065)
!15083 = distinct !DILexicalBlock(scope: !15085, file: !4110, line: 610, column: 24)
!15084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&&str)", file: !828, size: 64, align: 64, elements: !15155, templateParams: !1137, identifier: "62abe662e5bcf477833ff0b2a3ec0386")
!15085 = distinct !DILexicalBlock(scope: !15094, file: !4110, line: 610, column: 24)
!15086 = distinct !DILexicalBlock(scope: !15093, file: !4107, line: 32, column: 9)
!15087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AlwaysEscaped", scope: !4111, file: !828, align: 8, flags: DIFlagProtected, elements: !1137, identifier: "8508dd6d8d8ea70bea1e417c71db2a1c")
!15088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<core::escape::AlwaysEscaped>", scope: !1138, file: !828, align: 8, flags: DIFlagPublic, elements: !1137, templateParams: !15166, identifier: "a900b0b3318609cf4f64afe2c5a8357")
!15089 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeEscapedCharacter<4>", scope: !4111, file: !828, size: 32, align: 32, elements: !15170, templateParams: !1137, identifier: "5dd23f0abbf08b31ecf5a4787f4c7336")
!15090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EscapeIterInner<4, core::escape::AlwaysEscaped>", scope: !4111, file: !828, size: 64, align: 32, flags: DIFlagProtected, elements: !15164, templateParams: !15172, identifier: "dc603dff16b998fe6308830c42011")
!15091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EscapeDefault", scope: !878, file: !828, size: 64, align: 32, flags: DIFlagPublic, elements: !15160, templateParams: !1137, identifier: "76e7674815968bac772eafb22a99458")
!15092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Enumerate<core::ascii::EscapeDefault>", scope: !4100, file: !828, size: 128, align: 64, flags: DIFlagPublic, elements: !15158, templateParams: !15174, identifier: "d21a97ecc13cb8e64e9e9f75592b14c")
!15093 = distinct !DILexicalBlock(scope: !15094, file: !4107, line: 32, column: 9)
!15094 = distinct !DILexicalBlock(scope: !15095, file: !4107, line: 31, column: 9)
!15095 = distinct !DILexicalBlock(scope: !15096, file: !4107, line: 30, column: 9)
!15096 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt", scope: !15136, file: !4107, line: 22, type: !15139, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1137, retainedNodes: !15152)
!15097 = distinct !DILexicalBlock(scope: !15099, file: !4117, line: 2129, column: 56)
!15098 = distinct !DILexicalBlock(scope: !15099, file: !4117, line: 2129, column: 56)
!15099 = distinct !DISubprogram(name: "write_fmt", linkageName: "_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_fmt", scope: !199, file: !4117, line: 2128, type: !4119, scopeLine: 2128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1137, declaration: !4128, retainedNodes: !15180)
!15100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, u8)", file: !828, size: 128, align: 64, elements: !15202, templateParams: !1137, identifier: "f1a75a0570253dc5b34b7a518cb78c75")
!15101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !15104, file: !828, size: 192, align: 64, flags: DIFlagPublic, elements: !15199, templateParams: !15204, identifier: "4deda634b17bb96f736f901131ce89cb")
!15102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !15104, file: !828, size: 192, align: 64, flags: DIFlagPublic, elements: !1137, templateParams: !15204, identifier: "e95b7fa39729fd8f5f8272538c4b8a65")
!15103 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !15104, file: !828, size: 192, align: 64, elements: !15197, templateParams: !1137, identifier: "4743cf53c68738c080e0bfd468d897", discriminator: !15205)
!15104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(usize, u8)>", scope: !1221, file: !828, size: 192, align: 64, flags: DIFlagPublic, elements: !15194, templateParams: !1137, identifier: "491d83dcaee464956fc35979413b7b7")
!15105 = distinct !DILexicalBlock(scope: !15108, file: !4102, line: 81, column: 9)
!15106 = distinct !DILexicalBlock(scope: !15109, file: !4102, line: 80, column: 33)
!15107 = distinct !DILexicalBlock(scope: !15109, file: !4102, line: 80, column: 33)
!15108 = distinct !DILexicalBlock(scope: !15109, file: !4102, line: 80, column: 9)
!15109 = distinct !DISubprogram(name: "next<core::ascii::EscapeDefault>", linkageName: "_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtBa_5ascii13EscapeDefaultENtNtNtB8_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata", scope: !4101, file: !4102, line: 79, type: !15193, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !15174, retainedNodes: !15210)
!15110 = distinct !DILocation(line: 32, column: 27, scope: !15093)
!15111 = distinct !DILocation(line: 0, scope: !15109, inlinedAt: !15110)
!15112 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs_NtCsj6eKBz9Db1c_4core5asciiNtB4_13EscapeDefaultNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !15214, file: !15211, line: 115, type: !15216, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1137, retainedNodes: !15217)
!15113 = distinct !DILocation(line: 80, column: 27, scope: !15109, inlinedAt: !15110)
!15114 = distinct !DILocation(line: 0, scope: !15112, inlinedAt: !15113)
!15115 = distinct !{!15115, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtBa_5ascii13EscapeDefaultENtNtNtB8_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata"}
!15116 = distinct !{!15116, !15115, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtBa_5ascii13EscapeDefaultENtNtNtB8_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!15117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !15120, file: !828, size: 16, align: 8, flags: DIFlagPublic, elements: !15226, templateParams: !15228, identifier: "2e7712de2b34519891480d0efcaca9ad")
!15118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !15120, file: !828, size: 16, align: 8, flags: DIFlagPublic, elements: !15230, templateParams: !15228, identifier: "8083e0584c4716b52eb420eee864b093")
!15119 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !15120, file: !828, size: 16, align: 8, elements: !15224, templateParams: !1137, identifier: "b1ec7712734ddc1ed6f84152ca0ab50e", discriminator: !15231)
!15120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::option::Option<core::convert::Infallible>, u8>", scope: !3388, file: !828, size: 16, align: 8, flags: DIFlagPublic, elements: !15221, templateParams: !1137, identifier: "106cc77f98727db7e1d28bec11655664")
!15121 = distinct !DILexicalBlock(scope: !15122, file: !3290, line: 2870, column: 13)
!15122 = distinct !DISubprogram(name: "branch<u8>", linkageName: "_RNvXsJ_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionhENtNtNtB7_3ops9try_trait3Try6branchCs9GYDdpCSJ4S_14regex_automata", scope: !3766, file: !3290, line: 2868, type: !15220, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !1270, retainedNodes: !15234)
!15123 = distinct !DILocation(line: 80, column: 17, scope: !15109, inlinedAt: !15110)
!15124 = distinct !DILocation(line: 0, scope: !15122, inlinedAt: !15123)
!15125 = distinct !DILocation(line: 0, scope: !15108, inlinedAt: !15110)
!15126 = distinct !{!15126, !15115, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtBa_5ascii13EscapeDefaultENtNtNtB8_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata: argument 1"}
!15127 = distinct !DILocation(line: 0, scope: !15105, inlinedAt: !15110)
!15128 = distinct !{!15128, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata"}
!15129 = distinct !{!15129, !15128, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata: argument 0"}
!15130 = distinct !DILexicalBlock(scope: !15132, file: !3349, line: 1232, column: 13)
!15131 = distinct !DILexicalBlock(scope: !15132, file: !3349, line: 1231, column: 13)
!15132 = distinct !DISubprogram(name: "unwrap<&str, core::str::error::Utf8Error>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata", scope: !804, file: !3349, line: 1226, type: !15242, scopeLine: 1226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, templateParams: !4071, declaration: !15243, retainedNodes: !15246)
!15133 = distinct !DILocation(line: 40, column: 61, scope: !15094)
!15134 = distinct !DILocation(line: 1226, column: 19, scope: !15132, inlinedAt: !15133)
!15135 = distinct !DILocation(line: 1232, column: 17, scope: !15130, inlinedAt: !15133)
!15136 = !DINamespace(name: "{impl#0}", scope: !1166)
!15137 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_automata::util::escape::DebugByte", baseType: !2, size: 64, align: 64, dwarfAddressSpace: 0)
!15138 = !{!204, !15137, !1789}
!15139 = !DISubroutineType(types: !15138)
!15140 = !DILocalVariable(name: "self", arg: 1, scope: !15096, file: !4107, line: 22, type: !15137)
!15141 = !DILocalVariable(name: "f", arg: 2, scope: !15096, file: !4107, line: 22, type: !1789)
!15142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 80, align: 8, elements: !4109)
!15143 = !DILocalVariable(name: "bytes", scope: !15095, file: !4107, line: 30, type: !15142, align: 8)
!15144 = !DILocalVariable(name: "len", scope: !15094, file: !4107, line: 31, type: !1121, align: 64)
!15145 = !DILocalVariable(name: "iter", scope: !15093, file: !4107, line: 32, type: !15092, align: 64)
!15146 = !DILocalVariable(name: "i", scope: !15086, file: !4107, line: 32, type: !1121, align: 64)
!15147 = !DILocalVariable(name: "b", scope: !15086, file: !4107, line: 32, type: !832, align: 8)
!15148 = !DILexicalBlockFile(scope: !15085, file: !4107, discriminator: 0)
!15149 = !DILocalVariable(name: "args", scope: !15148, file: !4107, line: 40, type: !15084, align: 64)
!15150 = !DILexicalBlockFile(scope: !15083, file: !4107, discriminator: 0)
!15151 = !DILocalVariable(name: "args", scope: !15150, file: !4107, line: 40, type: !1776, align: 64)
!15152 = !{!15140, !15141, !15143, !15144, !15145, !15146, !15147, !15149, !15151}
!15153 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&str", baseType: !214, size: 64, align: 64, dwarfAddressSpace: 0)
!15154 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !15084, file: !828, baseType: !15153, size: 64, align: 64)
!15155 = !{!15154}
!15156 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !15092, file: !828, baseType: !15091, size: 64, align: 32, flags: DIFlagPrivate)
!15157 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !15092, file: !828, baseType: !1121, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!15158 = !{!15156, !15157}
!15159 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !15091, file: !828, baseType: !15090, size: 64, align: 32, flags: DIFlagPrivate)
!15160 = !{!15159}
!15161 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !15090, file: !828, baseType: !15089, size: 32, align: 32, flags: DIFlagPrivate)
!15162 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !15090, file: !828, baseType: !813, size: 16, align: 8, offset: 32, flags: DIFlagPrivate)
!15163 = !DIDerivedType(tag: DW_TAG_member, name: "escaping", scope: !15090, file: !828, baseType: !15088, align: 8, offset: 48, flags: DIFlagPrivate)
!15164 = !{!15161, !15162, !15163}
!15165 = !DITemplateTypeParameter(name: "T", type: !15087)
!15166 = !{!15165}
!15167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1009, size: 32, align: 8, elements: !2172)
!15168 = !DIDerivedType(tag: DW_TAG_member, name: "escape_seq", scope: !15089, file: !828, baseType: !15167, size: 32, align: 8)
!15169 = !DIDerivedType(tag: DW_TAG_member, name: "literal", scope: !15089, file: !828, baseType: !2697, size: 32, align: 32)
!15170 = !{!15168, !15169}
!15171 = !DITemplateTypeParameter(name: "ESCAPING", type: !15087)
!15172 = !{!15171}
!15173 = !DITemplateTypeParameter(name: "I", type: !15091)
!15174 = !{!15173}
!15175 = !DILocation(line: 0, scope: !15096)
!15176 = !DILocalVariable(name: "self", arg: 1, scope: !15099, file: !4117, line: 2128, type: !1789)
!15177 = !DILocalVariable(name: "fmt", arg: 2, scope: !15099, file: !4117, line: 2128, type: !815)
!15178 = !DILocalVariable(name: "s", scope: !15098, file: !4117, line: 2129, type: !214, align: 64)
!15179 = !DILocalVariable(name: "s", scope: !15097, file: !4117, line: 2129, type: !214, align: 64)
!15180 = !{!15176, !15177, !15178, !15179}
!15181 = !DILexicalBlockFile(scope: !15096, file: !4107, discriminator: 2)
!15182 = !DILocation(line: 27, column: 20, scope: !15181)
end_hunk_1
