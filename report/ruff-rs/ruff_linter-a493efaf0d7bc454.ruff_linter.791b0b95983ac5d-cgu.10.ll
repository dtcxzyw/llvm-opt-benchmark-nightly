Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.10?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze10expression10expression:bb.a
_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit: ; preds = %.lr.ph3046, %bb.bbb, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern35string_has_unescaped_metacharacters.exit.i, %bb.bat, %bb.bas, %bb.bar, %bb.bap
  %.val262 = load ptr, ptr %i.lh, align 8, !nonnull !11, !align !20, !noundef !11
  %i.fuf = getelementptr inbounds nuw i8, ptr %.val262, i64 192
  %i.fug = load i64, ptr %i.fuf, align 8, !alias.scope !7009, !noundef !11 ; 2 uses
  %i.fuh = and i64 %i.fug, 8589934592
  %.not1669 = icmp eq i64 %i.fuh, 0
  br i1 %.not1669, label %bb.bbc, label %bb.bbd

bb.bar:                                           ; preds = %bb.bap
  %i.fui = load ptr, ptr %i.ls, align 8, !nonnull !11, !noundef !11
  %i.fuj = call noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules6raises16is_pytest_raises(ptr noundef nonnull align 8 %i.fui, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.egx)
  br i1 %i.fuj, label %bb.bas, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit

bb.bas:                                           ; preds = %bb.bar
  %i.fuk = call noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8 %i.lt, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 5) ; 8 uses
  %.not.i1049 = icmp eq ptr %i.fuk, null
  br i1 %.not.i1049, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit, label %bb.bat

bb.bat:                                           ; preds = %bb.bas
  %i.ful = load i32, ptr %i.fuk, align 8, !range !32, !noundef !11
  %i.fum = icmp eq i32 %i.ful, 19
  br i1 %i.fum, label %bb.bau, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit

bb.bau:                                           ; preds = %bb.bat
  %i.fun = getelementptr inbounds nuw i8, ptr %i.fuk, i64 8
  %i.fuo = load i64, ptr %i.fun, align 8, !range !13, !noundef !11
  %.not5.i = icmp eq i64 %i.fuo, -1               ; 2 uses
  %i.fup = getelementptr inbounds nuw i8, ptr %i.fuk, i64 16 ; 4 uses
  br i1 %.not5.i, label %bb.baw, label %bb.bav

bb.bav:                                           ; preds = %bb.bau
  %i.fuq = load ptr, ptr %i.fup, align 8, !nonnull !11, !noundef !11
  %i.fur = getelementptr inbounds nuw i8, ptr %i.fuk, i64 24
  %i.fus = load i64, ptr %i.fur, align 8, !noundef !11
  %i.fut = shl nuw nsw i64 %i.fus, 5
  br label %bb.baw

bb.baw:                                           ; preds = %bb.bav, %bb.bau
  %.sroa.6.0.i = phi i64 [ %i.fut, %bb.bav ], [ 32, %bb.bau ] ; 2 uses
  %.sroa.02.0.i1050 = phi ptr [ %i.fuq, %bb.bav ], [ %i.fup, %bb.bau ] ; 2 uses
  %i.fuu = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i1050, i64 %.sroa.6.0.i
  %.not.not.not.i.not.i10513044 = icmp samesign eq i64 %.sroa.6.0.i, 0
  br i1 %.not.not.not.i.not.i10513044, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0EB2G_.exit.i, label %.lr.ph3046

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0Bb_.exit.i.i: ; preds = %.lr.ph3046
  %i.fuv = getelementptr inbounds nuw i8, ptr %i.fuw, i64 32 ; 2 uses
  %.not.not.not.i.not.i1051 = icmp eq ptr %i.fuv, %i.fuu
  br i1 %.not.not.not.i.not.i1051, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0EB2G_.exit.i, label %.lr.ph3046

.lr.ph3046:                                       ; preds = %bb.baw, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0Bb_.exit.i.i
  %i.fuw = phi ptr [ %i.fuv, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0Bb_.exit.i.i ], [ %.sroa.02.0.i1050, %bb.baw ] ; 2 uses
  %i.fux = getelementptr i8, ptr %i.fuw, i64 28
  %.val.i.i1052 = load i8, ptr %i.fux, align 4, !noalias !7010, !noundef !11 ; 2 uses
  %i.fuy = and i8 %.val.i.i1052, 4
  %.not.i.i.i1053 = icmp ne i8 %i.fuy, 0
  %i.fuz = and i8 %.val.i.i1052, 24
  %or.cond.not.i.i = icmp eq i8 %i.fuz, 0
  %or.cond.i.i1054 = or i1 %.not.i.i.i1053, %or.cond.not.i.i
  br i1 %or.cond.i.i1054, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0Bb_.exit.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0EB2G_.exit.i: ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0Bb_.exit.i.i, %bb.baw
  br i1 %.not5.i, label %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit.i.i, label %bb.bax

bb.bax:                                           ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0EB2G_.exit.i
  %i.fva = load ptr, ptr %i.fup, align 8, !noalias !7011, !nonnull !11, !noundef !11
  %i.fvb = getelementptr inbounds nuw i8, ptr %i.fuk, i64 24
  %i.fvc = load i64, ptr %i.fvb, align 8, !noalias !7011, !noundef !11
  br label %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit.i.i

_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit.i.i: ; preds = %bb.bax, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0EB2G_.exit.i
  %.sroa.6.0.i.i.i = phi i64 [ %i.fvc, %bb.bax ], [ 1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0EB2G_.exit.i ]
  %.sroa.0.0.i.i.i1055 = phi ptr [ %i.fva, %bb.bax ], [ %i.fup, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern0EB2G_.exit.i ] ; 2 uses
  %i.fvd = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i1055, i64 %.sroa.6.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %.sroa.0.0.i.i.i1055, ptr %i.v, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.fvd, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %.sroa.44.0..sroa_idx.i.i, align 8
  %i.fve = call fastcc noundef i32 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENCNvMsP_B1T_NtB1T_18StringLiteralValue5chars0ENtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(48) %i.v) ; 2 uses
  %.not7.not.i.i = icmp eq i32 %i.fve, -1
  br i1 %.not7.not.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern35string_has_unescaped_metacharacters.exit.i, label %.lr.ph.i.i1056

.lr.ph.i.i1056:                                   ; preds = %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit.i.i, %.backedge.i.i1057
  %i.fvf = phi i32 [ %i.fvg, %.backedge.i.i1057 ], [ %i.fve, %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit.i.i ] ; 2 uses
  %.sroa.01.08.i.i = phi i1 [ %.sroa.01.0.be.i.i, %.backedge.i.i1057 ], [ false, %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit.i.i ] ; 2 uses
  br i1 %.sroa.01.08.i.i, label %bb.baz, label %bb.bay

bb.bay:                                           ; preds = %.lr.ph.i.i1056
  switch i32 %i.fvf, label %.backedge.i.i1057 [
    i32 92, label %bb.bba
    i32 46, label %bb.bbb
    i32 94, label %bb.bbb
    i32 36, label %bb.bbb
    i32 42, label %bb.bbb
    i32 43, label %bb.bbb
    i32 63, label %bb.bbb
    i32 123, label %bb.bbb
    i32 91, label %bb.bbb
    i32 41, label %bb.bbb
    i32 124, label %bb.bbb
    i32 40, label %bb.bbb
  ]

bb.baz:                                           ; preds = %.lr.ph.i.i1056
  switch i32 %i.fvf, label %bb.bba [
    i32 65, label %bb.bbb
    i32 98, label %bb.bbb
    i32 66, label %bb.bbb
    i32 100, label %bb.bbb
    i32 68, label %bb.bbb
    i32 115, label %bb.bbb
    i32 83, label %bb.bbb
    i32 119, label %bb.bbb
    i32 87, label %bb.bbb
    i32 122, label %bb.bbb
  ]

bb.bba:                                           ; preds = %bb.baz, %bb.bay
  %.sroa.01.1.i.i = xor i1 %.sroa.01.08.i.i, true
  br label %.backedge.i.i1057

.backedge.i.i1057:                                ; preds = %bb.bba, %bb.bay
  %.sroa.01.0.be.i.i = phi i1 [ %.sroa.01.1.i.i, %bb.bba ], [ false, %bb.bay ]
  %i.fvg = call fastcc noundef i32 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENCNvMsP_B1T_NtB1T_18StringLiteralValue5chars0ENtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(48) %i.v) ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.fvg, -1
  br i1 %.not.not.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern35string_has_unescaped_metacharacters.exit.i, label %.lr.ph.i.i1056

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern35string_has_unescaped_metacharacters.exit.i: ; preds = %.backedge.i.i1057, %_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue5chars.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit

bb.bbb:                                           ; preds = %bb.baz, %bb.baz, %bb.baz, %bb.baz, %bb.baz, %bb.baz, %bb.baz, %bb.baz, %bb.baz, %bb.baz, %bb.bay, %bb.bay, %bb.bay, %bb.bay, %bb.bay, %bb.bay, %bb.bay, %bb.bay, %bb.bay, %bb.bay, %bb.bay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.fvh = getelementptr inbounds nuw i8, ptr %i.fuk, i64 56
  %i.fvi = load i32, ptr %i.fvh, align 8, !noundef !11
  %i.fvj = getelementptr inbounds nuw i8, ptr %i.fuk, i64 60
  %i.fvk = load i32, ptr %i.fvj, align 4, !noundef !11
  %i.fvl = load ptr, ptr %i.lh, align 8, !nonnull !11, !align !20, !noundef !11
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules31pytest_raises_ambiguous_pattern28PytestRaisesAmbiguousPatternEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noundef nonnull align 8 %i.fvl, i32 noundef %i.fvi, i32 noundef %i.fvk)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit

bb.bbc:                                           ; preds = %bb.bbd, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit
  %i.fvm = phi i64 [ %.pre2537, %bb.bbd ], [ %i.fug, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit ]
  %i.fvn = and i64 %i.fvm, 17179869184
  %.not1670 = icmp eq i64 %i.fvn, 0
  br i1 %.not1670, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unnecessary_round.exit, label %bb.bbe

bb.bbd:                                           ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31pytest_raises_ambiguous_pattern31pytest_raises_ambiguous_pattern.exit
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules23falsy_dict_get_fallback23falsy_dict_get_fallback(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %0)
  %.val261.pre = load ptr, ptr %i.lh, align 8
  %.phi.trans.insert2536 = getelementptr inbounds nuw i8, ptr %.val261.pre, i64 192
  %.pre2537 = load i64, ptr %.phi.trans.insert2536, align 8, !alias.scope !7012
  br label %bb.bbc

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unnecessary_round.exit: ; preds = %bb.bca, %bb.bbj, %bb.bbi, %bb.bbh, %bb.bbg, %bb.bbe, %bb.bbc
  %.val260 = load ptr, ptr %i.lh, align 8, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.fvo = getelementptr inbounds nuw i8, ptr %.val260, i64 192
  %i.fvp = load i64, ptr %i.fvo, align 8, !alias.scope !7013, !noundef !11 ; 2 uses
  %i.fvq = and i64 %i.fvp, 65536
  %.not1671 = icmp eq i64 %i.fvq, 0
  br i1 %.not1671, label %bb.bcd, label %bb.bce

bb.bbe:                                           ; preds = %bb.bbc
  %i.fvr = load ptr, ptr %i.ls, align 8, !nonnull !11, !noundef !11
  %i.fvs = call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18match_builtin_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.egx, ptr noundef nonnull align 8 %i.fvr, ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 5)
  br i1 %i.fvs, label %bb.bbf, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unnecessary_round.exit

bb.bbf:                                           ; preds = %bb.bbe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round19rounded_and_ndigits(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.u, ptr noundef nonnull align 8 %i.lt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.egx)
  %i.fvt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fvu = load i8, ptr %i.fvt, align 8, !range !34, !noundef !11 ; 3 uses
  %.not.i1058 = icmp eq i8 %i.fvu, -1
  br i1 %.not.i1058, label %bb.bbh, label %bb.bbg

bb.bbg:                                           ; preds = %bb.bbf
  %i.fvv = load ptr, ptr %i.u, align 8, !nonnull !11, !align !20, !noundef !11 ; 4 uses
  %i.fvw = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.fvx = load i8, ptr %i.fvw, align 1
  %i.fvy = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %i.fvz = load i8, ptr %i.fvy, align 2, !range !52, !noundef !11
  %i.fwa = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %i.fwb = load i8, ptr %i.fwa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  switch i8 %i.fvz, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unnecessary_round.exit [
    i8 0, label %bb.bbj
    i8 1, label %bb.bbi
  ]

bb.bbh:                                           ; preds = %bb.bbf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unnecessary_round.exit

bb.bbi:                                           ; preds = %bb.bbg
  %2 = or i8 %i.fwb, %i.fvu
  %or.cond.not.not.i = icmp eq i8 %2, 0
  br i1 %or.cond.not.not.i, label %switch.lookup3191, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unnecessary_round.exit

bb.bbj:                                           ; preds = %bb.bbg
  %.old.i = icmp eq i8 %i.fvu, 0
  br i1 %.old.i, label %switch.lookup3191, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unnecessary_round.exit

switch.lookup3191:                                ; preds = %bb.bbj, %bb.bbi
  %..i1059 = sub i8 2, %i.fvx
  %i.fwc = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.fwd = load ptr, ptr %i.fwc, align 8, !nonnull !11, !align !20, !noundef !11
  %i.fwe = getelementptr inbounds nuw i8, ptr %i.fwd, i64 48
  %i.fwf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fwg = load i32, ptr %i.fwf, align 8, !noundef !11
  %i.fwh = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.fwi = load i32, ptr %i.fwh, align 4, !noundef !11
  %i.fwj = call noundef zeroext i1 @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_13CommentRanges10intersects(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fwe, i32 noundef %i.fwg, i32 noundef %i.fwi)
  %.sroa.05.1.i = select i1 %i.fwj, i8 1, i8 %..i1059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.fwk = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.fwl = load ptr, ptr %i.fwk, align 8, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7014
  %i.fwm = load i32, ptr %i.fvv, align 8, !range !32, !noalias !7014, !noundef !11 ; 2 uses
  %i.fwn = zext nneg i32 %i.fwm to i64
  %switch.gep3192 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.fwn
  %switch.load3193 = load i8, ptr %switch.gep3192, align 1
  %switch.ext3194 = zext i8 %switch.load3193 to i64
  %i.fwo = zext nneg i32 %i.fwm to i64
  %switch.gep3195 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.704, i64 %i.fwo
  %switch.load3196 = load i8, ptr %switch.gep3195, align 1
  %switch.ext3197 = zext i8 %switch.load3196 to i64
  %i.fwp = getelementptr inbounds nuw i8, ptr %i.fvv, i64 %switch.ext3194
  %i.fwq = getelementptr inbounds nuw i8, ptr %i.fvv, i64 %switch.ext3197
  %.sroa.0.0.i.i.i1062 = load i32, ptr %i.fwp, align 4, !noalias !7014, !noundef !11 ; 4 uses
  %.sroa.34.0.i.i.i1063 = load i32, ptr %i.fwq, align 4, !noalias !7014, !noundef !11 ; 4 uses
  %.val11.i.i = load ptr, ptr %i.fwl, align 8, !noalias !7014, !nonnull !11, !noundef !11 ; 5 uses
  %i.fwr = getelementptr i8, ptr %i.fwl, i64 8
  %.val12.i.i = load i64, ptr %i.fwr, align 8, !noalias !7014, !noundef !11 ; 5 uses
  %i.fws = zext i32 %.sroa.0.0.i.i.i1062 to i64   ; 6 uses
  %i.fwt = zext i32 %.sroa.34.0.i.i.i1063 to i64  ; 6 uses
  %.not.i.i.i.i1064 = icmp ugt i32 %.sroa.0.0.i.i.i1062, %.sroa.34.0.i.i.i1063
  br i1 %.not.i.i.i.i1064, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i, label %bb.bbk

bb.bbk:                                           ; preds = %switch.lookup3191
  %i.fwu = icmp eq i32 %.sroa.0.0.i.i.i1062, 0
  br i1 %i.fwu, label %bb.bbm, label %bb.bbl

bb.bbl:                                           ; preds = %bb.bbk
  %.not5.i.i.i.i = icmp ugt i64 %.val12.i.i, %i.fws
  br i1 %.not5.i.i.i.i, label %bb.bbn, label %.split.i.i.i.i

bb.bbm:                                           ; preds = %bb.bbn, %.split.i.i.i.i, %bb.bbk
  %i.fwv = icmp eq i32 %.sroa.34.0.i.i.i1063, 0
  br i1 %i.fwv, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i.i, label %bb.bbo

.split.i.i.i.i:                                   ; preds = %bb.bbl
  %i.fww = icmp eq i64 %.val12.i.i, %i.fws
  br i1 %i.fww, label %bb.bbm, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i

bb.bbn:                                           ; preds = %bb.bbl
  %i.fwx = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 %i.fws
  %i.fwy = load i8, ptr %i.fwx, align 1, !alias.scope !7015, !noalias !7014, !noundef !11
  %i.fwz = icmp sgt i8 %i.fwy, -65
  br i1 %i.fwz, label %bb.bbm, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i

bb.bbo:                                           ; preds = %bb.bbm
  %.not6.i.i.i.i = icmp ugt i64 %.val12.i.i, %i.fwt
  br i1 %.not6.i.i.i.i, label %bb.bbp, label %.split7.i.i.i.i

.split7.i.i.i.i:                                  ; preds = %bb.bbo
  %i.fxa = icmp eq i64 %.val12.i.i, %i.fwt
  br i1 %i.fxa, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i

bb.bbp:                                           ; preds = %bb.bbo
  %i.fxb = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 %i.fwt
  %i.fxc = load i8, ptr %i.fxb, align 1, !alias.scope !7015, !noalias !7014, !noundef !11
  %i.fxd = icmp sgt i8 %i.fxc, -65
  br i1 %i.fxd, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i: ; preds = %bb.bbp, %.split7.i.i.i.i, %bb.bbn, %.split.i.i.i.i, %switch.lookup3191
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i.i, i64 noundef %.val12.i.i, i64 noundef %i.fws, i64 noundef %i.fwt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #46, !noalias !7014
  unreachable

_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i.i: ; preds = %bb.bbp, %.split7.i.i.i.i, %bb.bbm
  %i.fxe = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 %i.fws ; 4 uses
  %i.fxf = sub nuw nsw i64 %i.fwt, %i.fws         ; 6 uses
  store ptr %i.fxe, ptr %i.p, align 8, !noalias !7014
  %i.fxg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.fxf, ptr %i.fxg, align 8, !noalias !7014
  %i.fxh = call noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel25current_expression_parent(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.egx), !noalias !7016
  %.not.i.i1065 = icmp eq ptr %i.fxh, null
  br i1 %.not.i.i1065, label %bb.bbq, label %.split.i.i

.split.i.i:                                       ; preds = %bb.bbs, %bb.bbq, %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7014
  store ptr %i.p, ptr %i.n, align 8, !noalias !7014
  %.sroa.42.0..sroa_idx.i.i1066 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx.i.i1066, align 8, !noalias !7014
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @126, ptr noundef nonnull %i.n), !noalias !7016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7014
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unwrap_round_call.exit.i

bb.bbq:                                           ; preds = %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i.i
  %i.fxi = load i32, ptr %i.fvv, align 8, !range !32, !noalias !7014, !noundef !11
  %i.fxj = icmp eq i32 %i.fxi, 1
  br i1 %i.fxj, label %.split.i.i, label %bb.bbr

bb.bbr:                                           ; preds = %bb.bbq
  %i.fxk = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 %i.fwt
  %i.fxl = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !7017, !nonnull !11, !noundef !11
  %i.fxm = call { i64, ptr } %i.fxl(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.fxe, ptr noundef nonnull readonly %i.fxk), !noalias !7018, !inline_history !6283 ; 2 uses
  %i.fxn = extractvalue { i64, ptr } %i.fxm, 0
  %i.fxo = trunc nuw i64 %i.fxn to i1
  br i1 %i.fxo, label %bb.bbs, label %bb.bbt

bb.bbs:                                           ; preds = %bb.bbr
  %i.fxp = extractvalue { i64, ptr } %i.fxm, 1
  %i.fxq = call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.fxp, ptr noundef nonnull readonly %i.fxe), !noalias !7016
  %.not.i.i13.i.i = icmp ult i64 %i.fxq, %i.fxf
  call void @llvm.assume(i1 %.not.i.i13.i.i)
  br label %.split.i.i

bb.bbt:                                           ; preds = %bb.bbr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7014
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.fxf, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !7016
  %i.fxr = load i64, ptr %i.m, align 8, !range !17, !noalias !7014, !noundef !11
  %i.fxs = trunc nuw i64 %i.fxr to i1
  %i.fxt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fxu = load i64, ptr %i.fxt, align 8, !range !18, !noalias !7014, !noundef !11 ; 3 uses
  %i.fxv = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.fxs, label %bb.bbu, label %bb.bbv, !prof !10

bb.bbu:                                           ; preds = %bb.bbt
  %i.fxw = load i64, ptr %i.fxv, align 8, !noalias !7014
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fxu, i64 %i.fxw) #46, !noalias !7016
  unreachable

bb.bbv:                                           ; preds = %bb.bbt
  %i.fxx = load ptr, ptr %i.fxv, align 8, !noalias !7014, !nonnull !11, !noundef !11 ; 2 uses
  %i.fxy = icmp samesign ule i64 %i.fxf, %i.fxu
  call void @llvm.assume(i1 %i.fxy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7014
  %.not9.i.i = icmp eq i32 %.sroa.34.0.i.i.i1063, %.sroa.0.0.i.i.i1062
  br i1 %.not9.i.i, label %bb.bbw, label %bb.bbx

bb.bbw:                                           ; preds = %bb.bbx, %bb.bbv
  store i64 %i.fxu, ptr %i.o, align 8, !noalias !7014
  %.sroa.45.0..sroa_idx.i.i1068 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.fxx, ptr %.sroa.45.0..sroa_idx.i.i1068, align 8, !noalias !7014
  %.sroa.6.0..sroa_idx.i.i1069 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.fxf, ptr %.sroa.6.0..sroa_idx.i.i1069, align 8, !noalias !7014
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unwrap_round_call.exit.i

bb.bbx:                                           ; preds = %bb.bbv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fxx, ptr nonnull align 1 %i.fxe, i64 %i.fxf, i1 false), !noalias !7016
  br label %bb.bbw

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unwrap_round_call.exit.i: ; preds = %bb.bbw, %.split.i.i
  %i.fxz = load i32, ptr %i.fwf, align 8, !noalias !7014, !noundef !11
  %i.fya = load i32, ptr %i.fwh, align 4, !noalias !7014, !noundef !11
  call void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, i32 noundef %i.fxz, i32 noundef %i.fya)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix15applicable_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t, i8 noundef %.sroa.05.1.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.fyb = load i32, ptr %i.fwf, align 8, !noundef !11
  %i.fyc = load i32, ptr %i.fwh, align 4, !noundef !11
  %i.fyd = load ptr, ptr %i.lh, align 8, !nonnull !11, !align !20, !noundef !11
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules17unnecessary_round16UnnecessaryRoundEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull align 8 %i.fyd, i32 noundef %i.fyb, i32 noundef %i.fyc)
          to label %bb.bby unwind label %bb.bcc

bb.bby:                                           ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unwrap_round_call.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.q)
          to label %bb.bca unwind label %bb.bbz

bb.bbz:                                           ; preds = %bb.bby
  %i.fye = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.r) #49
          to label %common.resume unwind label %bb.bcb

bb.bca:                                           ; preds = %bb.bby
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unnecessary_round.exit

bb.bcb:                                           ; preds = %bb.bcc, %bb.bbz
  %i.fyf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.bcc:                                           ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17unnecessary_round17unwrap_round_call.exit.i
  %i.fyg = landingpad { ptr, i32 }
          cleanup
end_hunk_0
