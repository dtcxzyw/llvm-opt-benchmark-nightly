Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.01?download=true
inline.NumInlined: 396
inline.NumDeleted: 155
begin_hunk_0_@_RNvXs5_NtCs3roNzt6HBWW_12regex_syntax7unicodeNtB5_13CaseFoldErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
  store ptr %0, ptr %i.a, align 8, !dbg !10552
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53), !dbg !10553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10554
  ret i1 %i.b, !dbg !10555
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !10556 {
bb.a:
    #dbg_value(ptr %0, !10560, !DIExpression(), !10563)
    #dbg_value(ptr %0, !10565, !DIExpression(), !10579)
    #dbg_value(ptr %1, !10561, !DIExpression(), !10563)
    #dbg_value(ptr %1, !10576, !DIExpression(), !10579)
    #dbg_value(ptr poison, !10575, !DIExpression(), !10580)
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCs3roNzt6HBWW_12regex_syntax3hir7visitor5visitINtNtB4_5print6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterEEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10581
  ret i1 %i.a, !dbg !10582
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7LiteralNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !438 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !2438, !DIExpression(), !10583)
    #dbg_value(ptr %1, !2442, !DIExpression(), !10583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10584
  %i.b = load ptr, ptr %0, align 8, !dbg !10585, !nonnull !658, !noundef !658
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10585
  %i.d = load i64, ptr %i.c, align 8, !dbg !10585, !noundef !658
  store ptr %i.b, ptr %i.a, align 8, !dbg !10584
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10584
  store i64 %i.d, ptr %i.e, align 8, !dbg !10584
  %i.f = call noundef zeroext i1 @_RNvXs_NtCs3roNzt6HBWW_12regex_syntax5debugNtB4_5BytesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10587
  ret i1 %i.f, !dbg !10588
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5ClassNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !10598 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
    #dbg_value(ptr poison, !10656, !DIExpression(), !10665)
  %i.b = alloca [12 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !10667, !DIExpression(), !10676)
  %i.c = alloca [16 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !10638, !DIExpression(), !10677)
    #dbg_value(ptr %1, !10639, !DIExpression(), !10677)
    #dbg_declare(ptr %i.c, !10640, !DIExpression(), !10678)
    #dbg_value(i64 1, !10679, !DIExpression(), !10686)
    #dbg_value(i64 1, !10687, !DIExpression(), !10695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10821
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9debug_set(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10822
  %i.d = load i64, ptr %0, align 8, !dbg !10823, !range !1097, !noundef !658
  %i.e = trunc nuw i64 %i.d to i1, !dbg !10824
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10825
  %i.g = load ptr, ptr %i.f, align 8, !dbg !10825, !nonnull !658, !noundef !658 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10825
  %i.i = load i64, ptr %i.h, align 8, !dbg !10825, !noundef !658 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !10825         ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !10824

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10644, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10696)
    #dbg_value(ptr %0, !10697, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10700)
    #dbg_value(ptr %0, !10701, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10704)
    #dbg_value(ptr %0, !10705, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10708)
    #dbg_value(ptr %0, !10709, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10712)
    #dbg_value(ptr %0, !10713, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10716)
    #dbg_value(i64 %i.i, !10717, !DIExpression(), !10725)
    #dbg_value(i64 %i.i, !10728, !DIExpression(), !10733)
    #dbg_value(ptr %i.g, !10726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10734)
    #dbg_value(ptr %i.g, !10718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10735)
    #dbg_value(i64 %i.i, !10726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10734)
    #dbg_value(i64 %i.i, !10718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10735)
    #dbg_value(ptr %i.g, !10719, !DIExpression(), !10736)
    #dbg_value(ptr %i.g, !10729, !DIExpression(), !10733)
  %.idx40 = shl nuw nsw i64 %i.i, 1, !dbg !10826
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx40, !dbg !10826
    #dbg_value(ptr %i.g, !10645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10737)
    #dbg_value(ptr %i.k, !10645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10737)
    #dbg_value(ptr undef, !10656, !DIExpression(), !10665)
    #dbg_value(ptr %i.g, !10659, !DIExpression(), !10738)
    #dbg_value(ptr %i.g, !10691, !DIExpression(), !10695)
    #dbg_value(ptr %i.k, !10660, !DIExpression(), !10739)
    #dbg_value(ptr poison, !10741, !DIExpression(), !10747)
    #dbg_value(ptr poison, !10744, !DIExpression(), !10748)
  br i1 %i.j, label %.loopexit, label %.lr.ph39, !dbg !10827

.lr.ph39:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.e, !dbg !10827

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10749)
    #dbg_value(ptr %0, !10750, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10753)
    #dbg_value(ptr %0, !10754, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10757)
    #dbg_value(ptr %0, !10758, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10762)
    #dbg_value(ptr %0, !10763, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10767)
    #dbg_value(ptr %0, !10768, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10772)
    #dbg_value(i64 %i.i, !10773, !DIExpression(), !10780)
    #dbg_value(i64 %i.i, !10783, !DIExpression(), !10787)
    #dbg_value(ptr %i.g, !10781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10788)
    #dbg_value(ptr %i.g, !10774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10789)
    #dbg_value(i64 %i.i, !10781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10788)
    #dbg_value(i64 %i.i, !10774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10789)
    #dbg_value(ptr %i.g, !10775, !DIExpression(), !10790)
    #dbg_value(ptr %i.g, !10784, !DIExpression(), !10787)
  %.idx = shl nuw nsw i64 %i.i, 3, !dbg !10828
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx, !dbg !10828
    #dbg_value(ptr %i.g, !10642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10791)
    #dbg_value(ptr %i.n, !10642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10791)
    #dbg_value(ptr undef, !10667, !DIExpression(), !10676)
    #dbg_value(ptr %i.g, !10670, !DIExpression(), !10792)
    #dbg_value(ptr %i.g, !10683, !DIExpression(), !10686)
    #dbg_value(ptr %i.n, !10671, !DIExpression(), !10793)
    #dbg_value(ptr poison, !10795, !DIExpression(), !10801)
    #dbg_value(ptr poison, !10798, !DIExpression(), !10802)
  br i1 %i.j, label %.loopexit, label %.lr.ph, !dbg !10800

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d, !dbg !10800

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.037 = phi ptr [ %i.g, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 8, !dbg !10829 ; 2 uses
    #dbg_value(ptr %i.p, !10642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10791)
    #dbg_value(ptr %.sroa.0.037, !10643, !DIExpression(), !10803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10810
    #dbg_value(i32 poison, !10804, !DIExpression(), !10811)
  %i.q = load <2 x i32>, ptr %.sroa.0.037, align 4, !dbg !10830
    #dbg_value(i32 poison, !10808, !DIExpression(), !10811)
  store <2 x i32> %i.q, ptr %i.b, align 8, !dbg !10831
  store i8 0, ptr %i.o, align 8, !dbg !10831
  %i.r = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55), !dbg !10832 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10833
    #dbg_value(ptr undef, !10667, !DIExpression(), !10676)
    #dbg_value(ptr %i.p, !10670, !DIExpression(), !10792)
    #dbg_value(ptr %i.p, !10683, !DIExpression(), !10686)
    #dbg_value(ptr %i.n, !10671, !DIExpression(), !10793)
    #dbg_value(ptr poison, !10795, !DIExpression(), !10801)
    #dbg_value(ptr poison, !10798, !DIExpression(), !10802)
  %i.s = icmp eq ptr %i.p, %i.n, !dbg !10834
  br i1 %i.s, label %.loopexit, label %bb.d, !dbg !10800

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %i.t = call noundef zeroext i1 @_RNvMs5_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !10835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10836
  ret i1 %i.t, !dbg !10837

bb.e:                                             ; preds = %.lr.ph39, %bb.e
  %.sroa.02.038 = phi ptr [ %i.g, %.lr.ph39 ], [ %i.u, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.038, i64 2, !dbg !10838 ; 2 uses
    #dbg_value(ptr %i.u, !10645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10737)
    #dbg_value(ptr %.sroa.02.038, !10646, !DIExpression(), !10812)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10819
  %i.v = load i8, ptr %.sroa.02.038, align 1, !dbg !10839, !noundef !658
    #dbg_value(i8 %i.v, !10813, !DIExpression(), !10820)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.038, i64 1, !dbg !10840
  %i.x = load i8, ptr %i.w, align 1, !dbg !10840, !noundef !658
    #dbg_value(i8 %i.x, !10817, !DIExpression(), !10820)
  store i8 %i.v, ptr %i.l, align 1, !dbg !10841
  store i8 %i.x, ptr %i.m, align 1, !dbg !10841
  store i8 0, ptr %i.a, align 1, !dbg !10841
  %i.y = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56), !dbg !10842 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10843
    #dbg_value(ptr undef, !10656, !DIExpression(), !10665)
    #dbg_value(ptr %i.u, !10659, !DIExpression(), !10738)
    #dbg_value(ptr %i.u, !10691, !DIExpression(), !10695)
    #dbg_value(ptr %i.k, !10660, !DIExpression(), !10739)
    #dbg_value(ptr poison, !10741, !DIExpression(), !10747)
    #dbg_value(ptr poison, !10744, !DIExpression(), !10748)
  %i.z = icmp eq ptr %i.u, %i.k, !dbg !10844
  br i1 %i.z, label %.loopexit, label %bb.e, !dbg !10827
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsF_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 !dbg !10845 {
bb.a:
    #dbg_value(ptr %0, !11154, !DIExpression(), !11157)
    #dbg_value(ptr %1, !11155, !DIExpression(), !11157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11158), !dbg !11504
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11159), !dbg !11504
    #dbg_value(ptr %0, !11160, !DIExpression(), !10860)
    #dbg_value(ptr %1, !11164, !DIExpression(), !10860)
    #dbg_declare(ptr poison, !11183, !DIExpression(), !10868)
    #dbg_declare(ptr poison, !11183, !DIExpression(), !10870)
    #dbg_declare(ptr poison, !11183, !DIExpression(), !10874)
    #dbg_declare(ptr poison, !11183, !DIExpression(), !10876)
  %i.a = load i64, ptr %0, align 8, !dbg !11505, !range !1414, !alias.scope !11158, !noalias !11159, !noundef !658 ; 5 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !11505
  tail call void @llvm.assume(i1 %i.b), !dbg !11505
  %i.c = add nsw i64 %i.a, -2, !dbg !11505
  %.inv.i = icmp samesign ult i64 %i.a, 2, !dbg !11505
  %i.d = select i1 %.inv.i, i64 2, i64 %i.c, !dbg !11505 ; 2 uses
    #dbg_value(i64 %i.d, !11166, !DIExpression(), !10877)
  %i.e = load i64, ptr %1, align 8, !dbg !11506, !range !1414, !alias.scope !11159, !noalias !11158, !noundef !658 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4, !dbg !11506
  tail call void @llvm.assume(i1 %i.f), !dbg !11506
  %i.g = add nsw i64 %i.e, -2, !dbg !11506
  %.inv33.i = icmp samesign ult i64 %i.e, 2, !dbg !11506
  %i.h = select i1 %.inv33.i, i64 2, i64 %i.g, !dbg !11506
    #dbg_value(i64 %i.h, !11167, !DIExpression(), !10878)
  %i.i = icmp eq i64 %i.d, %i.h, !dbg !11507
  br i1 %i.i, label %bb.b, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11507

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %.split17
    i64 4, label %bb.g
    i64 5, label %bb.l
    i64 6, label %bb.q
    i64 7, label %bb.t
    i64 0, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13
  ], !dbg !11507

bb.c:                                             ; preds = %bb.b
  unreachable, !dbg !11505

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !11168, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10879)
    #dbg_value(ptr %0, !11212, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10884)
    #dbg_value(ptr %1, !11169, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10879)
    #dbg_value(ptr %1, !11216, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10884)
    #dbg_value(ptr poison, !11221, !DIExpression(), !10885)
    #dbg_value(ptr poison, !11222, !DIExpression(), !10886)
    #dbg_value(ptr %0, !11227, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10889)
    #dbg_value(ptr %1, !11231, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10890)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11508
  %i.k = load i64, ptr %i.j, align 8, !dbg !11508, !alias.scope !11158, !noalias !11159, !noundef !658 ; 2 uses
    #dbg_value(ptr poison, !11233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10894)
    #dbg_value(i64 %i.k, !11233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10894)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11509
  %i.m = load i64, ptr %i.l, align 8, !dbg !11509, !alias.scope !11159, !noalias !11158, !noundef !658
    #dbg_value(ptr poison, !11237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10894)
    #dbg_value(i64 %i.m, !11237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10894)
    #dbg_value(i64 %i.k, !11238, !DIExpression(), !10895)
    #dbg_value(i64 %i.k, !11242, !DIExpression(), !10899)
    #dbg_value(i64 %i.k, !11248, !DIExpression(), !10900)
  %i.n = icmp eq i64 %i.k, %i.m, !dbg !11510
  br i1 %i.n, label %.split15, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11510

.split15:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11509
  %i.p = load ptr, ptr %i.o, align 8, !dbg !11509, !alias.scope !11159, !noalias !11158, !nonnull !658, !noundef !658
    #dbg_value(ptr %i.p, !11237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10894)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11508
  %i.r = load ptr, ptr %i.q, align 8, !dbg !11508, !alias.scope !11158, !noalias !11159, !nonnull !658, !noundef !658
    #dbg_value(ptr %i.r, !11233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10894)
    #dbg_value(ptr %i.r, !11246, !DIExpression(), !10899)
    #dbg_value(ptr %i.p, !11247, !DIExpression(), !10899)
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k), !dbg !11511, !noalias !11253, !inline_history !10901
  %i.s = icmp eq i32 %bcmp.i, 0, !dbg !11511
  br i1 %i.s, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11504

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !11170, !DIExpression(), !10902)
    #dbg_value(ptr %1, !11171, !DIExpression(), !10902)
    #dbg_value(ptr poison, !11254, !DIExpression(), !10905)
    #dbg_value(ptr poison, !11257, !DIExpression(), !10906)
    #dbg_value(ptr %0, !11262, !DIExpression(), !10913)
    #dbg_value(ptr %1, !11266, !DIExpression(), !10913)
    #dbg_value(i64 %i.a, !11267, !DIExpression(), !10914)
    #dbg_value(i64 %i.e, !11268, !DIExpression(), !10915)
  %i.t = icmp eq i64 %i.a, %i.e, !dbg !11512
  br i1 %i.t, label %bb.f, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11512

bb.f:                                             ; preds = %bb.e
  %i.u = trunc nuw i64 %i.a to i1, !dbg !11512
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11513 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11513 ; 2 uses
  br i1 %i.u, label %.split16, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11512

.split16:                                         ; preds = %bb.f
    #dbg_value(ptr %0, !11271, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10916)
    #dbg_value(ptr %0, !11274, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10921)
    #dbg_value(ptr %1, !11272, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10916)
    #dbg_value(ptr %1, !11278, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10921)
    #dbg_value(ptr poison, !11282, !DIExpression(), !10922)
    #dbg_value(ptr poison, !11283, !DIExpression(), !10923)
  %i.x = tail call noundef zeroext i1 @_RNvXs_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB4_11IntervalSetNtB6_15ClassBytesRangeENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w), !dbg !11514
  br i1 %i.x, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11504

.split17:                                         ; preds = %bb.b
    #dbg_value(ptr %0, !11172, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10924)
    #dbg_value(ptr %0, !11288, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10931)
    #dbg_value(ptr %1, !11173, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10924)
    #dbg_value(ptr %1, !11292, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10931)
    #dbg_value(ptr poison, !11299, !DIExpression(), !10932)
    #dbg_value(ptr poison, !11300, !DIExpression(), !10933)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11515
  %i.z = load i32, ptr %i.y, align 8, !dbg !11515, !range !2434, !alias.scope !11158, !noalias !11159, !noundef !658
    #dbg_value(i32 %i.z, !11293, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !10934)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11516
  %i.ab = load i32, ptr %i.aa, align 8, !dbg !11516, !range !2434, !alias.scope !11159, !noalias !11158, !noundef !658
    #dbg_value(i32 %i.ab, !11294, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !10935)
  %i.ac = icmp eq i32 %i.z, %i.ab, !dbg !11517
  br i1 %i.ac, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11504

bb.g:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11518
    #dbg_value(ptr %i.ad, !11174, !DIExpression(), !10936)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11518
    #dbg_value(ptr %i.ae, !11175, !DIExpression(), !10936)
    #dbg_value(ptr poison, !11305, !DIExpression(), !10939)
    #dbg_value(ptr poison, !11308, !DIExpression(), !10940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11313), !dbg !11519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11314), !dbg !11519
    #dbg_value(ptr %i.ad, !11315, !DIExpression(), !10946)
    #dbg_value(ptr %i.ae, !11319, !DIExpression(), !10946)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11520
  %i.ag = load i32, ptr %i.af, align 8, !dbg !11520, !alias.scope !11313, !noalias !11314, !noundef !658
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11520
  %i.ai = load i32, ptr %i.ah, align 8, !dbg !11520, !alias.scope !11314, !noalias !11313, !noundef !658
  %i.aj = icmp eq i32 %i.ag, %i.ai, !dbg !11520
  br i1 %i.aj, label %bb.h, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11520

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !11521
  %i.al = load i8, ptr %i.ak, align 4, !dbg !11521, !range !2062, !alias.scope !11313, !noalias !11314, !noundef !658
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !11521
  %i.an = load i8, ptr %i.am, align 4, !dbg !11521, !range !2062, !alias.scope !11314, !noalias !11313, !noundef !658
  %i.ao = icmp eq i8 %i.al, %i.an, !dbg !11521
  br i1 %i.ao, label %bb.i, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11521

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.ad, !11321, !DIExpression(), !10950)
    #dbg_value(ptr %i.ae, !11322, !DIExpression(), !10951)
  %i.ap = load i32, ptr %i.ad, align 8, !dbg !11522, !range !2368, !alias.scope !11313, !noalias !11314, !noundef !658
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !11522
  %i.ar = trunc nuw i32 %i.ap to i1, !dbg !11523
  %i.as = load i32, ptr %i.ae, align 8, !dbg !11522, !range !2368, !alias.scope !11314, !noalias !11313, !noundef !658
  %i.at = trunc nuw i32 %i.as to i1, !dbg !11523  ; 2 uses
  br i1 %i.ar, label %bb.j, label %bb.k, !dbg !11523

bb.j:                                             ; preds = %bb.i
  br i1 %i.at, label %.split, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11523

bb.k:                                             ; preds = %bb.i
  br i1 %i.at, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %.split19, !dbg !11524

.split:                                           ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !11522
    #dbg_value(ptr %i.ad, !11323, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !10952)
    #dbg_value(ptr %i.ad, !11326, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !10955)
    #dbg_value(ptr %i.ae, !11324, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !10956)
    #dbg_value(ptr %i.ae, !11328, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !10957)
  %i.av = load i32, ptr %i.aq, align 4, !dbg !11525, !alias.scope !11313, !noalias !11314, !noundef !658
  %i.aw = load i32, ptr %i.au, align 4, !dbg !11526, !alias.scope !11314, !noalias !11313, !noundef !658
  %i.ax = icmp eq i32 %i.av, %i.aw, !dbg !11525
  br i1 %i.ax, label %.split19, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11524

.split19:                                         ; preds = %.split, %bb.k
    #dbg_value(ptr %i.ad, !11330, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10960)
    #dbg_value(ptr %i.ae, !11333, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10961)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11527
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !11527, !alias.scope !11313, !noalias !11314, !nonnull !658, !noundef !658
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11528
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !11528, !alias.scope !11314, !noalias !11313, !nonnull !658, !noundef !658
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bb) #31, !dbg !11529, !noalias !11335, !inline_history !10962
  br i1 %i.bc, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11504

bb.l:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11530
    #dbg_value(ptr %i.bd, !11176, !DIExpression(), !10963)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11530
    #dbg_value(ptr %i.be, !11177, !DIExpression(), !10963)
    #dbg_value(ptr poison, !11336, !DIExpression(), !10966)
    #dbg_value(ptr poison, !11339, !DIExpression(), !10967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11344), !dbg !11531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11345), !dbg !11531
    #dbg_value(ptr %i.bd, !11346, !DIExpression(), !10973)
    #dbg_value(ptr %i.be, !11350, !DIExpression(), !10973)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11532
  %i.bg = load i32, ptr %i.bf, align 8, !dbg !11532, !alias.scope !11344, !noalias !11345, !noundef !658
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !11532
  %i.bi = load i32, ptr %i.bh, align 8, !dbg !11532, !alias.scope !11345, !noalias !11344, !noundef !658
  %i.bj = icmp eq i32 %i.bg, %i.bi, !dbg !11532
  br i1 %i.bj, label %bb.m, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11532

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.bd, !11352, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10977)
    #dbg_value(ptr %i.be, !11355, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10978)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11533
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !11533, !alias.scope !11344, !noalias !11345, !noundef !658 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11533
  %.not.i = icmp eq ptr %i.bl, null, !dbg !11533
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11533
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !11533, !alias.scope !11345, !noalias !11344, !noundef !658 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null, !dbg !11533    ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n, !dbg !11534

bb.n:                                             ; preds = %bb.m
  br i1 %i.bp, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %bb.p, !dbg !11534

bb.o:                                             ; preds = %bb.m
  br i1 %i.bp, label %.split18, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11535

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11533
    #dbg_value(ptr %i.bd, !11356, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10979)
    #dbg_value(ptr %i.bd, !11359, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10982)
    #dbg_value(ptr %i.be, !11357, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10983)
    #dbg_value(ptr %i.be, !11362, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10984)
  %i.br = load i64, ptr %i.bm, align 8, !dbg !11536, !alias.scope !11344, !noalias !11345, !noundef !658 ; 2 uses
    #dbg_value(ptr %i.bl, !11365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10987)
    #dbg_value(i64 %i.br, !11365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10987)
  %i.bs = load i64, ptr %i.bq, align 8, !dbg !11537, !alias.scope !11345, !noalias !11344, !noundef !658
    #dbg_value(ptr %i.bo, !11370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10987)
    #dbg_value(i64 %i.bs, !11370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10987)
    #dbg_value(ptr %i.bl, !11372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10993)
    #dbg_value(i64 %i.br, !11372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10993)
    #dbg_value(ptr poison, !11379, !DIExpression(), !10994)
    #dbg_value(ptr %i.bo, !11373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10993)
    #dbg_value(i64 %i.bs, !11373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10993)
    #dbg_value(ptr poison, !11380, !DIExpression(), !10995)
    #dbg_value(i64 %i.br, !11374, !DIExpression(), !10996)
    #dbg_value(i64 %i.br, !11385, !DIExpression(), !11000)
    #dbg_value(i64 %i.br, !11388, !DIExpression(), !11001)
  %i.bt = icmp eq i64 %i.br, %i.bs, !dbg !11538
  br i1 %i.bt, label %.split10, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11538

.split10:                                         ; preds = %bb.p
    #dbg_value(ptr %i.bl, !11386, !DIExpression(), !11000)
    #dbg_value(ptr %i.bo, !11387, !DIExpression(), !11000)
  %bcmp.i6 = tail call i32 @bcmp(ptr nonnull %i.bl, ptr nonnull %i.bo, i64 %i.br), !dbg !11539, !noalias !11390, !inline_history !11002
  %i.bu = icmp eq i32 %bcmp.i6, 0, !dbg !11539
  br i1 %i.bu, label %.split18, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11535

.split18:                                         ; preds = %.split10, %bb.o
    #dbg_value(ptr %i.bd, !11391, !DIExpression(), !11005)
    #dbg_value(ptr %i.be, !11392, !DIExpression(), !11006)
  %i.bv = load ptr, ptr %i.bd, align 8, !dbg !11540, !alias.scope !11344, !noalias !11345, !nonnull !658, !noundef !658
  %i.bw = load ptr, ptr %i.be, align 8, !dbg !11541, !alias.scope !11345, !noalias !11344, !nonnull !658, !noundef !658
  %i.bx = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw) #31, !dbg !11542, !noalias !11390, !inline_history !11002
  br i1 %i.bx, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11504

bb.q:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !11178, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11007)
    #dbg_value(ptr %0, !11195, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11008)
    #dbg_value(ptr %0, !11186, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11009)
    #dbg_value(ptr %0, !11394, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11012)
    #dbg_value(ptr %0, !11397, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11015)
    #dbg_value(ptr %0, !11400, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11018)
    #dbg_value(ptr %1, !11179, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11007)
    #dbg_value(ptr %1, !11196, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11019)
    #dbg_value(ptr %1, !11186, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11020)
    #dbg_value(ptr %1, !11394, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11022)
    #dbg_value(ptr %1, !11397, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11024)
    #dbg_value(ptr %1, !11400, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11026)
    #dbg_value(ptr poison, !11204, !DIExpression(), !11027)
    #dbg_value(ptr poison, !11205, !DIExpression(), !11028)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11543
  %i.bz = load i64, ptr %i.by, align 8, !dbg !11543, !alias.scope !11158, !noalias !11159, !noundef !658 ; 3 uses
    #dbg_value(i64 %i.bz, !11406, !DIExpression(), !11033)
    #dbg_value(ptr poison, !11409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11034)
    #dbg_value(i64 %i.bz, !11409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11034)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11544
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !11544, !alias.scope !11159, !noalias !11158, !noundef !658
    #dbg_value(ptr poison, !11410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11034)
    #dbg_value(i64 %i.cb, !11410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11034)
  %i.cc = icmp eq i64 %i.bz, %i.cb, !dbg !11545
  br i1 %i.cc, label %bb.r, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11545

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11546
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !11546, !alias.scope !11159, !noalias !11158, !nonnull !658, !noundef !658
    #dbg_value(ptr %i.ce, !11410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11034)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11547
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !11547, !alias.scope !11158, !noalias !11159, !nonnull !658, !noundef !658
    #dbg_value(ptr %i.cg, !11409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11034)
    #dbg_value(ptr %i.cg, !11420, !DIExpression(), !11047)
    #dbg_value(ptr %i.cg, !11427, !DIExpression(), !11050)
    #dbg_value(ptr %i.ce, !11423, !DIExpression(), !11047)
    #dbg_value(ptr %i.ce, !11427, !DIExpression(), !11052)
    #dbg_value(i64 %i.bz, !11424, !DIExpression(), !11047)
    #dbg_value(i64 0, !11425, !DIExpression(), !11053)
  %.not2025.not = icmp eq i64 %i.bz, 0, !dbg !11548
  br i1 %.not2025.not, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %.lr.ph27, !dbg !11548

bb.s:                                             ; preds = %.lr.ph27
  %i.ch = add nuw i64 %.sroa.01.0.i326, 1, !dbg !11549 ; 2 uses
    #dbg_value(i64 %i.ch, !11425, !DIExpression(), !11053)
  %exitcond30.not = icmp eq i64 %i.ch, %i.bz, !dbg !11548
  br i1 %exitcond30.not, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %.lr.ph27, !dbg !11548

.lr.ph27:                                         ; preds = %bb.r, %bb.s
  %.sroa.01.0.i326 = phi i64 [ %i.ch, %bb.s ], [ 0, %bb.r ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i326, !11425, !DIExpression(), !11053)
    #dbg_value(i64 %.sroa.01.0.i326, !11428, !DIExpression(), !11050)
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.cg, i64 %.sroa.01.0.i326, !dbg !11550
    #dbg_value(i64 %.sroa.01.0.i326, !11428, !DIExpression(), !11052)
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.ce, i64 %.sroa.01.0.i326, !dbg !11551
    #dbg_value(ptr %i.ci, !11430, !DIExpression(), !11056)
    #dbg_value(ptr %i.cj, !11431, !DIExpression(), !11056)
  %i.ck = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cj) #31, !dbg !11552, !noalias !11253, !inline_history !11057
    #dbg_value(i64 %.sroa.01.0.i326, !11425, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11053)
  br i1 %i.ck, label %bb.s, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11553

bb.t:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !11180, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11058)
    #dbg_value(ptr %0, !11195, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11059)
    #dbg_value(ptr %0, !11186, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11060)
    #dbg_value(ptr %0, !11394, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11062)
    #dbg_value(ptr %0, !11397, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11064)
    #dbg_value(ptr %0, !11400, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11066)
    #dbg_value(ptr %1, !11181, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11058)
    #dbg_value(ptr %1, !11196, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11067)
    #dbg_value(ptr %1, !11186, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11068)
    #dbg_value(ptr %1, !11394, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11070)
    #dbg_value(ptr %1, !11397, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11072)
    #dbg_value(ptr %1, !11400, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11074)
    #dbg_value(ptr poison, !11204, !DIExpression(), !11075)
    #dbg_value(ptr poison, !11205, !DIExpression(), !11076)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11554
  %i.cm = load i64, ptr %i.cl, align 8, !dbg !11554, !alias.scope !11158, !noalias !11159, !noundef !658 ; 3 uses
    #dbg_value(i64 %i.cm, !11411, !DIExpression(), !11078)
    #dbg_value(ptr poison, !11409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11079)
    #dbg_value(i64 %i.cm, !11409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11079)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11555
  %i.co = load i64, ptr %i.cn, align 8, !dbg !11555, !alias.scope !11159, !noalias !11158, !noundef !658
    #dbg_value(ptr poison, !11410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11079)
    #dbg_value(i64 %i.co, !11410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11079)
  %i.cp = icmp eq i64 %i.cm, %i.co, !dbg !11556
  br i1 %i.cp, label %bb.u, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11556

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11557
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !11557, !alias.scope !11159, !noalias !11158, !nonnull !658, !noundef !658
    #dbg_value(ptr %i.cr, !11410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11079)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11558
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !11558, !alias.scope !11158, !noalias !11159, !nonnull !658, !noundef !658
    #dbg_value(ptr %i.ct, !11409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11079)
    #dbg_value(ptr %i.ct, !11420, !DIExpression(), !11087)
    #dbg_value(ptr %i.ct, !11427, !DIExpression(), !11089)
    #dbg_value(ptr %i.cr, !11423, !DIExpression(), !11087)
    #dbg_value(ptr %i.cr, !11427, !DIExpression(), !11091)
    #dbg_value(i64 %i.cm, !11424, !DIExpression(), !11087)
    #dbg_value(i64 0, !11425, !DIExpression(), !11092)
  %.not23.not = icmp eq i64 %i.cm, 0, !dbg !11559
  br i1 %.not23.not, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %.lr.ph, !dbg !11559

bb.v:                                             ; preds = %.lr.ph
  %i.cu = add nuw i64 %.sroa.01.0.i24, 1, !dbg !11560 ; 2 uses
    #dbg_value(i64 %i.cu, !11425, !DIExpression(), !11092)
  %exitcond.not = icmp eq i64 %i.cu, %i.cm, !dbg !11559
  br i1 %exitcond.not, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %.lr.ph, !dbg !11559

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %.sroa.01.0.i24 = phi i64 [ %i.cu, %bb.v ], [ 0, %bb.u ] ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i24, !11425, !DIExpression(), !11092)
    #dbg_value(i64 %.sroa.01.0.i24, !11428, !DIExpression(), !11089)
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %.sroa.01.0.i24, !dbg !11561
    #dbg_value(i64 %.sroa.01.0.i24, !11428, !DIExpression(), !11091)
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %i.cr, i64 %.sroa.01.0.i24, !dbg !11562
    #dbg_value(ptr %i.cv, !11430, !DIExpression(), !11094)
    #dbg_value(ptr %i.cw, !11431, !DIExpression(), !11094)
  %i.cx = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cw) #31, !dbg !11563, !noalias !11253, !inline_history !11057
    #dbg_value(i64 %.sroa.01.0.i24, !11425, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11092)
  br i1 %i.cx, label %bb.v, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11564

_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.f
    #dbg_value(ptr %0, !11269, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11095)
    #dbg_value(ptr %0, !11442, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11100)
    #dbg_value(ptr %1, !11270, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11095)
    #dbg_value(ptr %1, !11446, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11100)
    #dbg_value(ptr poison, !11451, !DIExpression(), !11101)
    #dbg_value(ptr poison, !11452, !DIExpression(), !11102)
  %i.cy = tail call noundef zeroext i1 @_RNvXs_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB4_11IntervalSetNtB6_17ClassUnicodeRangeENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w), !dbg !11565
  br i1 %i.cy, label %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11504

_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13: ; preds = %bb.v, %bb.s, %bb.u, %bb.r, %bb.b, %.split19, %.split18, %.split17, %.split16, %.split15, %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit
    #dbg_value(ptr %0, !11457, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11464)
    #dbg_value(ptr %1, !11461, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11464)
    #dbg_value(ptr %0, !11465, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11470)
    #dbg_value(ptr %1, !11468, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11471)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11566
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !11566, !nonnull !658, !noundef !658 ; 15 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !11567
  %i.dc = load ptr, ptr %i.db, align 8, !dbg !11567, !nonnull !658, !noundef !658 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11472), !dbg !11568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11473), !dbg !11568
    #dbg_value(ptr %i.da, !11474, !DIExpression(), !11110)
    #dbg_value(ptr %i.dc, !11478, !DIExpression(), !11110)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 76, !dbg !11569
  %i.de = load i8, ptr %i.dd, align 4, !dbg !11569, !range !2062, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 76, !dbg !11569
  %i.dg = load i8, ptr %i.df, align 4, !dbg !11569, !range !2062, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.dh = icmp eq i8 %i.de, %i.dg, !dbg !11569
  br i1 %i.dh, label %bb.w, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11569

bb.w:                                             ; preds = %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 77, !dbg !11570
  %i.dj = load i8, ptr %i.di, align 1, !dbg !11570, !range !2062, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 77, !dbg !11570
  %i.dl = load i8, ptr %i.dk, align 1, !dbg !11570, !range !2062, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.dm = icmp eq i8 %i.dj, %i.dl, !dbg !11570
  br i1 %i.dm, label %bb.x, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11570

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 78, !dbg !11571
  %i.do = load i8, ptr %i.dn, align 2, !dbg !11571, !range !2062, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 78, !dbg !11571
  %i.dq = load i8, ptr %i.dp, align 2, !dbg !11571, !range !2062, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.dr = icmp eq i8 %i.do, %i.dq, !dbg !11571
  br i1 %i.dr, label %bb.y, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11571

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr %i.da, !11480, !DIExpression(), !11116)
    #dbg_value(ptr %i.dc, !11481, !DIExpression(), !11117)
  %i.ds = load i64, ptr %i.da, align 8, !dbg !11572, !range !1097, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !11572
  %i.du = trunc nuw i64 %i.ds to i1, !dbg !11573
  %i.dv = load i64, ptr %i.dc, align 8, !dbg !11572, !range !1097, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.dw = trunc nuw i64 %i.dv to i1, !dbg !11573  ; 2 uses
  br i1 %i.du, label %bb.z, label %bb.aa, !dbg !11573

bb.z:                                             ; preds = %bb.y
  br i1 %i.dw, label %.split.i, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11573

bb.aa:                                            ; preds = %bb.y
  br i1 %i.dw, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %bb.ab, !dbg !11574

.split.i:                                         ; preds = %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !11572
    #dbg_value(ptr %i.da, !11482, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11118)
    #dbg_value(ptr %i.da, !11489, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11121)
    #dbg_value(ptr %i.dc, !11483, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11122)
    #dbg_value(ptr %i.dc, !11493, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11123)
  %i.dy = load i64, ptr %i.dt, align 8, !dbg !11575, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.dz = load i64, ptr %i.dx, align 8, !dbg !11576, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.ea = icmp eq i64 %i.dy, %i.dz, !dbg !11575
  br i1 %i.ea, label %bb.ab, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11574

bb.ab:                                            ; preds = %.split.i, %bb.aa
    #dbg_value(ptr %i.da, !11480, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11125)
    #dbg_value(ptr %i.dc, !11481, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11126)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.da, i64 16, !dbg !11577
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !11577, !range !1097, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 24, !dbg !11577
  %i.ee = trunc nuw i64 %i.ec to i1, !dbg !11578
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !11577
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !11577, !range !1097, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.eh = trunc nuw i64 %i.eg to i1, !dbg !11578  ; 2 uses
  br i1 %i.ee, label %bb.ac, label %bb.ad, !dbg !11578

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.eh, label %.split5.i, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11578

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.eh, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %bb.ae, !dbg !11579

.split5.i:                                        ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 24, !dbg !11577
    #dbg_value(ptr %i.da, !11484, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11127)
    #dbg_value(ptr %i.da, !11489, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11129)
    #dbg_value(ptr %i.dc, !11485, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11130)
    #dbg_value(ptr %i.dc, !11493, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11131)
  %i.ej = load i64, ptr %i.ed, align 8, !dbg !11580, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.ek = load i64, ptr %i.ei, align 8, !dbg !11581, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.el = icmp eq i64 %i.ej, %i.ek, !dbg !11580
  br i1 %i.el, label %bb.ae, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11579

bb.ae:                                            ; preds = %.split5.i, %bb.ad
    #dbg_value(ptr %i.da, !11497, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !11134)
    #dbg_value(ptr %i.dc, !11501, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !11134)
  %i.em = getelementptr inbounds nuw i8, ptr %i.da, i64 56, !dbg !11582
  %i.en = load i32, ptr %i.em, align 8, !dbg !11582, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dc, i64 56, !dbg !11582
  %i.ep = load i32, ptr %i.eo, align 8, !dbg !11582, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.eq = icmp eq i32 %i.en, %i.ep, !dbg !11582
  br i1 %i.eq, label %bb.af, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11583

bb.af:                                            ; preds = %bb.ae
    #dbg_value(ptr %i.da, !11497, !DIExpression(DW_OP_plus_uconst, 60, DW_OP_stack_value), !11136)
    #dbg_value(ptr %i.dc, !11501, !DIExpression(DW_OP_plus_uconst, 60, DW_OP_stack_value), !11136)
  %i.er = getelementptr inbounds nuw i8, ptr %i.da, i64 60, !dbg !11584
  %i.es = load i32, ptr %i.er, align 4, !dbg !11584, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.et = getelementptr inbounds nuw i8, ptr %i.dc, i64 60, !dbg !11584
  %i.eu = load i32, ptr %i.et, align 4, !dbg !11584, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.ev = icmp eq i32 %i.es, %i.eu, !dbg !11584
  br i1 %i.ev, label %bb.ag, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11585

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr %i.da, !11497, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !11138)
    #dbg_value(ptr %i.dc, !11501, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !11138)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.da, i64 64, !dbg !11586
  %i.ex = load i32, ptr %i.ew, align 8, !dbg !11586, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dc, i64 64, !dbg !11586
  %i.ez = load i32, ptr %i.ey, align 8, !dbg !11586, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.fa = icmp eq i32 %i.ex, %i.ez, !dbg !11586
  br i1 %i.fa, label %bb.ah, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11587

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(ptr %i.da, !11497, !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value), !11140)
    #dbg_value(ptr %i.dc, !11501, !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value), !11140)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.da, i64 68, !dbg !11588
  %i.fc = load i32, ptr %i.fb, align 4, !dbg !11588, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dc, i64 68, !dbg !11588
  %i.fe = load i32, ptr %i.fd, align 4, !dbg !11588, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.ff = icmp eq i32 %i.fc, %i.fe, !dbg !11588
  br i1 %i.ff, label %bb.ai, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11589

bb.ai:                                            ; preds = %bb.ah
    #dbg_value(ptr %i.da, !11497, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !11142)
    #dbg_value(ptr %i.dc, !11501, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !11142)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.da, i64 72, !dbg !11590
  %i.fh = load i32, ptr %i.fg, align 8, !dbg !11590, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dc, i64 72, !dbg !11590
  %i.fj = load i32, ptr %i.fi, align 8, !dbg !11590, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.fk = icmp eq i32 %i.fh, %i.fj, !dbg !11590
  br i1 %i.fk, label %bb.aj, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11591

bb.aj:                                            ; preds = %bb.ai
  %i.fl = getelementptr inbounds nuw i8, ptr %i.da, i64 48, !dbg !11592
  %i.fm = load i64, ptr %i.fl, align 8, !dbg !11592, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dc, i64 48, !dbg !11592
  %i.fo = load i64, ptr %i.fn, align 8, !dbg !11592, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.fp = icmp eq i64 %i.fm, %i.fo, !dbg !11592
  br i1 %i.fp, label %bb.ak, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11592

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.da, !11480, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11144)
    #dbg_value(ptr %i.dc, !11481, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11145)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.da, i64 32, !dbg !11593
  %i.fr = load i64, ptr %i.fq, align 8, !dbg !11593, !range !1097, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.fs = getelementptr inbounds nuw i8, ptr %i.da, i64 40, !dbg !11593
  %i.ft = trunc nuw i64 %i.fr to i1, !dbg !11594
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dc, i64 32, !dbg !11593
  %i.fv = load i64, ptr %i.fu, align 8, !dbg !11593, !range !1097, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.fw = trunc nuw i64 %i.fv to i1, !dbg !11594  ; 2 uses
  br i1 %i.ft, label %bb.al, label %bb.am, !dbg !11594

bb.al:                                            ; preds = %bb.ak
  br i1 %i.fw, label %bb.an, label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11594

bb.am:                                            ; preds = %bb.ak
  %i.fx = xor i1 %i.fw, true, !dbg !11594
  br label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11594

bb.an:                                            ; preds = %bb.al
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dc, i64 40, !dbg !11593
    #dbg_value(ptr %i.da, !11486, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11146)
    #dbg_value(ptr %i.da, !11489, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11148)
    #dbg_value(ptr %i.dc, !11487, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11149)
    #dbg_value(ptr %i.dc, !11493, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11150)
  %i.fz = load i64, ptr %i.fs, align 8, !dbg !11595, !alias.scope !11472, !noalias !11473, !noundef !658
  %i.ga = load i64, ptr %i.fy, align 8, !dbg !11596, !alias.scope !11473, !noalias !11472, !noundef !658
  %i.gb = icmp eq i64 %i.fz, %i.ga, !dbg !11595
  br label %_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !11597

_RNvXs1U_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_11PropertiesINtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph27, %bb.o, %bb.l, %bb.n, %bb.p, %bb.k, %bb.g, %bb.h, %bb.j, %bb.q, %bb.d, %.split10, %.split, %bb.e, %bb.t, %bb.a, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %.split5.i, %bb.ad, %bb.ac, %.split.i, %bb.aa, %bb.z, %bb.x, %bb.w, %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13, %.split19, %.split18, %.split17, %.split16, %.split15, %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %.split19 ], [ false, %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit ], [ false, %.split5.i ], [ false, %.split15 ], [ false, %.split16 ], [ false, %.split17 ], [ false, %.split18 ], [ %i.gb, %bb.an ], [ false, %bb.aa ], [ %i.fx, %bb.am ], [ false, %bb.aj ], [ false, %bb.ac ], [ false, %bb.z ], [ false, %bb.x ], [ false, %bb.w ], [ false, %_RNvXsK_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread13 ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.al ], [ false, %.split.i ], [ false, %bb.a ], [ false, %bb.t ], [ false, %bb.e ], [ false, %.split ], [ false, %.split10 ], [ false, %bb.d ], [ false, %.lr.ph27 ], [ false, %bb.q ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.o ], [ false, %.lr.ph ], !dbg !11463
  ret i1 %.sroa.0.0, !dbg !11598
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsj6eKBz9Db1c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !11599 {
bb.a:
    #dbg_value(ptr poison, !11604, !DIExpression(), !11607)
    #dbg_value(ptr %1, !11605, !DIExpression(), !11607)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 5), !dbg !11608
  ret i1 %i.a, !dbg !11609
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxeEENtNtB7_3fmt5Debug3fmtCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !11611 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !11614, !DIExpression(), !11618)
    #dbg_value(ptr %1, !11615, !DIExpression(), !11618)
  %i.b = load ptr, ptr %0, align 8, !dbg !11620, !noundef !658
end_hunk_0
