Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.05?download=true
inline.NumInlined: 1035
inline.NumDeleted: 449
begin_hunk_0_@_RNvXNtCs8CpBcHC8tKo_21ruff_python_formatter9statementNtB2_10FormatStmtINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNtNtB4_7context15PyFormatContextE3fmt:bb.a

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %2, ptr %i.h, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_global16FormatStmtGlobalINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtGlobalE3fmtB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ax, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %2, ptr %i.g, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement13stmt_nonlocal18FormatStmtNonlocalINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtNonlocalE3fmtB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ay, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ab

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement9stmt_expr14FormatStmtExprINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated8StmtExprE3fmtB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.az, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ab

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %2, ptr %i.e, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement9stmt_pass14FormatStmtPassINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated8StmtPassE3fmtB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement10stmt_break15FormatStmtBreakINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated9StmtBreakE3fmtB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement13stmt_continue18FormatStmtContinueINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtContinueE3fmtB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bc, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement23stmt_ipy_escape_command26FormatStmtIpyEscapeCommandINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated20StmtIpyEscapeCommandE3fmtB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXs0_Cs8CpBcHC8tKo_21ruff_python_formatterNtB5_17FormatModuleErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !26, !noundef !3
  %i.b = icmp samesign ult i8 %i.a, 44
  %spec.select = select i1 %i.b, ptr %0, ptr null
  %i.c = insertvalue { ptr, ptr } poison, ptr %spec.select, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @137, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10enter_node(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef range(i64 0, 94) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  store i64 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.e, align 8
  switch i64 %1, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44 [
    i64 2, label %bb.b
    i64 3, label %bb.b
    i64 4, label %bb.b
    i64 5, label %bb.b
    i64 6, label %bb.b
    i64 7, label %bb.b
    i64 8, label %bb.b
    i64 9, label %bb.b
    i64 10, label %bb.b
    i64 11, label %bb.b
    i64 12, label %bb.b
    i64 13, label %bb.b
    i64 14, label %bb.b
    i64 15, label %bb.b
    i64 16, label %bb.b
    i64 17, label %bb.b
    i64 18, label %bb.b
    i64 19, label %bb.b
    i64 20, label %bb.b
    i64 21, label %bb.b
    i64 22, label %bb.b
    i64 23, label %bb.b
    i64 24, label %bb.b
    i64 25, label %bb.b
    i64 26, label %bb.b
    i64 86, label %bb.b
    i64 60, label %bb.b
    i64 87, label %bb.b
    i64 85, label %bb.b
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !align !8, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.j, align 8
  %i.k = call { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2582)
  %.idx.i = mul nuw nsw i64 %i.m, 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !alias.scope !2582 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !2582 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %.promoted.i = load i32, ptr %i.r, align 8, !alias.scope !2582
  %.promoted17.i = load i32, ptr %i.u, align 4, !alias.scope !2582
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit9.i, %.lr.ph.i
  %.sroa.0.0.i.i2.i20.i = phi i32 [ %.promoted17.i, %.lr.ph.i ], [ %.sroa.0.0.i.i2.i18.i, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit9.i ] ; 2 uses
  %.sroa.0.0.i.i.i16.i = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %.sroa.0.0.i.i.i14.i, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit9.i ] ; 2 uses
  %.sroa.0.013.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.v, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit9.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2582
  store ptr %.sroa.0.013.i, ptr %i.b, align 8, !noalias !2582
  %i.w = call noundef i32 @_RNvYRNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !2582 ; 4 uses
  %.not.i.i.i = icmp ugt i32 %i.w, %i.q
  br i1 %.not.i.i.i, label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.i.i.i.i = call noundef i32 @llvm.umax.i32(i32 %i.w, i32 %.sroa.0.0.i.i.i16.i) ; 2 uses
  store i32 %.sroa.0.0.i.i.i.i, ptr %i.r, align 8, !alias.scope !2583
  br label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i

_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i15.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.d ], [ %.sroa.0.0.i.i.i16.i, %bb.c ] ; 2 uses
  %.not.i1.i.i = icmp ult i32 %i.w, %i.t
  br i1 %.not.i1.i.i, label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i
  %.sroa.0.0.i.i2.i.i = call noundef i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.0.0.i.i2.i20.i) ; 2 uses
  store i32 %.sroa.0.0.i.i2.i.i, ptr %i.u, align 4, !alias.scope !2584
  br label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i

_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i: ; preds = %bb.e, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i
  %.sroa.0.0.i.i2.i19.i = phi i32 [ %.sroa.0.0.i.i2.i20.i, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i ], [ %.sroa.0.0.i.i2.i.i, %bb.e ] ; 2 uses
  %i.x = call noundef i32 @_RNvYRNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !2582 ; 4 uses
  %.not.i.i4.i = icmp ugt i32 %i.x, %i.q
  br i1 %.not.i.i4.i, label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i6.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i
  %.sroa.0.0.i.i.i5.i = call noundef i32 @llvm.umax.i32(i32 %i.x, i32 %.sroa.0.0.i.i.i15.i) ; 2 uses
  store i32 %.sroa.0.0.i.i.i5.i, ptr %i.r, align 8, !alias.scope !2585
  br label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i6.i

_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i6.i: ; preds = %bb.f, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i
  %.sroa.0.0.i.i.i14.i = phi i32 [ %.sroa.0.0.i.i.i5.i, %bb.f ], [ %.sroa.0.0.i.i.i15.i, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i ]
  %.not.i1.i7.i = icmp ult i32 %i.x, %i.t
  br i1 %.not.i1.i7.i, label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit9.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i6.i
  %.sroa.0.0.i.i2.i8.i = call noundef i32 @llvm.umin.i32(i32 %i.x, i32 %.sroa.0.0.i.i2.i19.i) ; 2 uses
  store i32 %.sroa.0.0.i.i2.i8.i, ptr %i.u, align 4, !alias.scope !2586
  br label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit9.i

_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit9.i: ; preds = %bb.g, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i6.i
  %.sroa.0.0.i.i2.i18.i = phi i32 [ %.sroa.0.0.i.i2.i19.i, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i6.i ], [ %.sroa.0.0.i.i2.i8.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2582
  %i.y = icmp eq ptr %i.v, %i.n
  br i1 %i.y, label %.split.i, label %bb.c

.split.i:                                         ; preds = %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit9.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2588
  store i64 %1, ptr %i.a, align 8, !noalias !2588
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.z, align 8, !noalias !2588
  %3 = call noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !2588 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted22.i = load i32, ptr %i.aa, align 8, !alias.scope !2589, !noundef !3 ; 2 uses
  %.not.i.i6.i = icmp ugt i32 %3, %.promoted22.i
  br i1 %.not.i.i6.i, label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i28, label %bb.h

bb.h:                                             ; preds = %.split.i
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %5 = load i32, ptr %4, align 8, !alias.scope !2589, !noundef !3
  %.sroa.0.0.i.i.i.i27 = call noundef i32 @llvm.umax.i32(i32 %3, i32 %5)
  store i32 %.sroa.0.0.i.i.i.i27, ptr %4, align 8, !alias.scope !2589
  br label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i28

_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i28: ; preds = %bb.h, %.split.i
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %7 = load i32, ptr %6, align 4, !alias.scope !2590, !noundef !3 ; 2 uses
  %.not.i1.i.i29 = icmp ult i32 %3, %7
  br i1 %.not.i1.i.i29, label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i31, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i28
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %9 = load i32, ptr %8, align 4, !alias.scope !2590, !noundef !3
  %.sroa.0.0.i.i2.i.i30 = call noundef i32 @llvm.umin.i32(i32 %3, i32 %9)
  store i32 %.sroa.0.0.i.i2.i.i30, ptr %8, align 4, !alias.scope !2590
  br label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i31

_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i31: ; preds = %bb.i, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i.i28
  %i.ab = call noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !2588 ; 4 uses
  %.not.i.i7.i = icmp ugt i32 %i.ab, %.promoted22.i
  br i1 %.not.i.i7.i, label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i9.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i31
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %11 = load i32, ptr %10, align 8, !alias.scope !2591, !noundef !3
  %.sroa.0.0.i.i.i8.i = call noundef i32 @llvm.umax.i32(i32 %i.ab, i32 %11)
  store i32 %.sroa.0.0.i.i.i8.i, ptr %10, align 8, !alias.scope !2591
  br label %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i9.i

_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i9.i: ; preds = %bb.j, %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange13narrow_offset.exit.i31
  %.not.i1.i10.i = icmp ult i32 %i.ab, %7
  br i1 %.not.i1.i10.i, label %_RINvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB6_11NarrowRange6narrowANtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefj1_B1f_EB8_.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i9.i
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %13 = load i32, ptr %12, align 4, !alias.scope !2592, !noundef !3
  %.sroa.0.0.i.i2.i11.i = call noundef i32 @llvm.umin.i32(i32 %i.ab, i32 %13)
  store i32 %.sroa.0.0.i.i2.i11.i, ptr %12, align 4, !alias.scope !2592
  br label %_RINvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB6_11NarrowRange6narrowANtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefj1_B1f_EB8_.exit

_RINvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB6_11NarrowRange6narrowANtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefj1_B1f_EB8_.exit: ; preds = %_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange12narrow_start.exit.i9.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2588
  %i.ac = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  %i.ad = extractvalue { i32, i32 } %i.ac, 1
  %i.ae = load i32, ptr %i.aa, align 8, !noundef !3
  %i.af = icmp ult i32 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44, label %bb.l

_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44.sink.split: ; preds = %.lr.ph48, %bb.u, %bb.ad
  %.pn = phi { i64, i64 } [ %i.cz, %bb.ad ], [ %phi.call, %bb.u ], [ %phi.call, %.lr.ph48 ]
  %.sink = extractvalue { i64, i64 } %.pn, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %i.ag, align 8
  br label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44

_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44: ; preds = %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44.sink.split, %bb.ac, %_RINvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB6_11NarrowRange6narrowANtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefj1_B1f_EB8_.exit, %bb.m, %bb.t, %bb.n, %bb.a
  %.sroa.0.0 = phi i1 [ true, %_RINvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB6_11NarrowRange6narrowANtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefj1_B1f_EB8_.exit ], [ true, %bb.ac ], [ true, %bb.a ], [ false, %bb.n ], [ true, %bb.t ], [ true, %bb.m ], [ true, %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44.sink.split ]
  ret i1 %.sroa.0.0

bb.l:                                             ; preds = %_RINvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB6_11NarrowRange6narrowANtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefj1_B1f_EB8_.exit
  %i.ah = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  %i.ai = extractvalue { i32, i32 } %i.ah, 0
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i32, ptr %14, align 8, !noundef !3
  %i.ak = icmp ugt i32 %i.aj, %i.ai
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  %i.am = extractvalue { i32, i32 } %i.al, 1
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.an = load i32, ptr %15, align 4, !noundef !3
  %.not = icmp ugt i32 %i.an, %i.am
  br i1 %.not, label %bb.n, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44

bb.n:                                             ; preds = %bb.m, %bb.l
  switch i64 %1, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44 [
    i64 14, label %bb.o
    i64 16, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !3
  %.not25 = icmp eq i64 %i.aq, 0
  br i1 %.not25, label %.split18, label %.split

bb.p:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.au = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar) ; 3 uses
  %i.av = load ptr, ptr %i.ar, align 8, !nonnull !3, !noundef !3
  %i.aw = load i64, ptr %i.av, align 8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  %.not.i32 = icmp eq i64 %i.aw, 0
  br i1 %.not.i32, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %i.ay = load i8, ptr %i.ax, align 4, !range !25, !noalias !2593, !noundef !3
  %i.az = call i8 @llvm.umax.i8(i8 %i.ay, i8 1)
  %narrow1.i.i = add nuw nsw i8 %i.az, 1
  %switch.offset.i.i = zext nneg i8 %narrow1.i.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.02.0.i = phi i64 [ %switch.offset.i.i, %bb.q ], [ -1, %bb.p ]
  %i.ba = call fastcc { i64, i64 } @_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange11enter_level(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %.sroa.02.0.i, ptr nonnull align 8 %i.au) ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.s, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit

bb.s:                                             ; preds = %bb.r
  %i.bd = extractvalue { i64, i64 } %i.ba, 1
  call void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order9walk_bodyNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %i.au, i64 noundef range(i64 0, 104811045873349726) %i.aw)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bd, ptr %i.be, align 8, !alias.scope !2593
  br label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit

_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit: ; preds = %bb.r, %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !3
  %.not24 = icmp eq i64 %i.bh, 0
  br i1 %.not24, label %.split22, label %.split20

.split18:                                         ; preds = %bb.o
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !2594 ; 2 uses
  %i.bi = add i64 %.pre.i, 1
  store i64 %i.bi, ptr %.phi.trans.insert.i, align 8, !alias.scope !2594
  %i.bj = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.pre.i, 1
  br label %bb.t

.split:                                           ; preds = %bb.o
  %i.bk = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3
  %i.bl = call fastcc { i64, i64 } @_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange11enter_level(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef 85, ptr nonnull %i.bk)
  br label %bb.t

bb.t:                                             ; preds = %.split, %.split18
  %phi.call = phi { i64, i64 } [ %i.bl, %.split ], [ %i.bj, %.split18 ] ; 3 uses
  %i.bm = extractvalue { i64, i64 } %phi.call, 0
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.u, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bp = load i64, ptr %i.ap, align 8, !noundef !3 ; 2 uses
  %.idx50 = mul nuw nsw i64 %i.bp, 104
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx50
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44.sink.split, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.u, %.lr.ph48
  %.sroa.06.046 = phi ptr [ %i.bs, %.lr.ph48 ], [ %i.bo, %bb.u ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.046, i64 104 ; 2 uses
  call void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order15walk_match_caseNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1i_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %.sroa.06.046)
  %i.bt = icmp eq ptr %i.bs, %i.bq
  br i1 %i.bt, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44.sink.split, label %.lr.ph48

.split22:                                         ; preds = %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre.i34 = load i64, ptr %.phi.trans.insert.i33, align 8, !alias.scope !2595 ; 2 uses
  %i.bu = add i64 %.pre.i34, 1
  store i64 %i.bu, ptr %.phi.trans.insert.i33, align 8, !alias.scope !2595
  %i.bv = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.pre.i34, 1
  br label %bb.v

.split20:                                         ; preds = %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit
  %i.bw = load ptr, ptr %i.bf, align 8, !nonnull !3, !noundef !3
  %i.bx = call fastcc { i64, i64 } @_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange11enter_level(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef 60, ptr nonnull %i.bw)
  br label %bb.v

bb.v:                                             ; preds = %.split20, %.split22
  %phi.call23 = phi { i64, i64 } [ %i.bx, %.split20 ], [ %i.bv, %.split22 ] ; 2 uses
  %i.by = extractvalue { i64, i64 } %phi.call23, 0
  %i.bz = extractvalue { i64, i64 } %phi.call23, 1
  %i.ca = trunc nuw i64 %i.by to i1
  br i1 %i.ca, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %i.bf, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.cc = load i64, ptr %i.bg, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cc, 6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %.lr.ph
  %.sroa.014.045 = phi ptr [ %i.cf, %.lr.ph ], [ %i.cb, %bb.w ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.014.045, i64 64 ; 2 uses
  call void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order19walk_except_handlerNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1m_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %.sroa.014.045)
  %i.cg = icmp eq ptr %i.cf, %i.cd
  br i1 %i.cg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bz, ptr %i.ch, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %._crit_edge
  %i.ci = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as) ; 3 uses
  %i.cj = load ptr, ptr %i.as, align 8, !nonnull !3, !noundef !3
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  %.not.i35 = icmp eq i64 %i.ck, 0
  br i1 %.not.i35, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 84
  %i.cm = load i8, ptr %i.cl, align 4, !range !25, !noalias !2596, !noundef !3
  %i.cn = call i8 @llvm.umax.i8(i8 %i.cm, i8 1)
  %narrow1.i.i36 = add nuw nsw i8 %i.cn, 1
  %switch.offset.i.i37 = zext nneg i8 %narrow1.i.i36 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.02.0.i38 = phi i64 [ %switch.offset.i.i37, %bb.y ], [ -1, %bb.x ]
  %i.co = call fastcc { i64, i64 } @_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange11enter_level(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %.sroa.02.0.i38, ptr nonnull align 8 %i.ci) ; 2 uses
  %i.cp = extractvalue { i64, i64 } %i.co, 0
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.aa, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit39

bb.aa:                                            ; preds = %bb.z
  %i.cr = extractvalue { i64, i64 } %i.co, 1
  call void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order9walk_bodyNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 104811045873349726) %i.ck)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !2596
  br label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit39

_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit39: ; preds = %bb.z, %bb.aa
  %i.ct = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at) ; 3 uses
  %i.cu = load ptr, ptr %i.at, align 8, !nonnull !3, !noundef !3
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !3 ; 2 uses
  %.not.i40 = icmp eq i64 %i.cv, 0
  br i1 %.not.i40, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit39
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 84
  %i.cx = load i8, ptr %i.cw, align 4, !range !25, !noalias !2597, !noundef !3
  %i.cy = call i8 @llvm.umax.i8(i8 %i.cx, i8 1)
  %narrow1.i.i41 = add nuw nsw i8 %i.cy, 1
  %switch.offset.i.i42 = zext nneg i8 %narrow1.i.i41 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit39
  %.sroa.02.0.i43 = phi i64 [ %switch.offset.i.i42, %bb.ab ], [ -1, %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit39 ]
  %i.cz = call fastcc { i64, i64 } @_RNvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRange11enter_level(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %.sroa.02.0.i43, ptr nonnull align 8 %i.ct) ; 2 uses
  %i.da = extractvalue { i64, i64 } %i.cz, 0
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.ad, label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44

bb.ad:                                            ; preds = %bb.ac
  call void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order9walk_bodyNtNtCs8CpBcHC8tKo_21ruff_python_formatter5range11NarrowRangeEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 104811045873349726) %i.cv)
  br label %_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10visit_body.exit44.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB5_11NarrowRangeNtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10leave_node(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef range(i64 0, 94) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  switch i64 %1, label %_RINvMs1_NtCs8CpBcHC8tKo_21ruff_python_formatter5rangeNtB6_11NarrowRange6narrowINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtNtB1n_5slice4iter4IterNtNtB8_8comments13SourceCommentENCNvXs0_B6_BP_NtNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order18SourceOrderVisitor10leave_node0ERB2z_EB8_.exit [
    i64 2, label %bb.b
    i64 3, label %bb.b
    i64 4, label %bb.b
    i64 5, label %bb.b
    i64 6, label %bb.b
    i64 7, label %bb.b
    i64 8, label %bb.b
end_hunk_0
