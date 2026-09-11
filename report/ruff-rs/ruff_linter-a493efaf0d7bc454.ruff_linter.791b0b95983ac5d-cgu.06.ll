Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.06?download=true
inline.NumInlined: 7974
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules27invalid_first_argument_nameNtB5_12FunctionType15diagnostic_kind:bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules27invalid_first_argument_name33InvalidFirstArgumentNameForMethodEBL_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #34
          to label %common.resume unwind label %bb.ad, !noalias !2446

_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules27invalid_first_argument_name33InvalidFirstArgumentNameForMethodEBa_.exit: ; preds = %bb.y
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2446
  br label %bb.af

bb.af:                                            ; preds = %_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules27invalid_first_argument_name33InvalidFirstArgumentNameForMethodEBa_.exit, %_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules27invalid_first_argument_name38InvalidFirstArgumentNameForClassMethodEBa_.exit
  %.sink12 = phi ptr [ %i.az, %_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules27invalid_first_argument_name33InvalidFirstArgumentNameForMethodEBa_.exit ], [ %i.ae, %_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules27invalid_first_argument_name38InvalidFirstArgumentNameForClassMethodEBa_.exit ]
  %.sink = phi i16 [ 478, %_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules27invalid_first_argument_name33InvalidFirstArgumentNameForMethodEBa_.exit ], [ 477, %_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules27invalid_first_argument_name38InvalidFirstArgumentNameForClassMethodEBa_.exit ]
  store ptr %i.p, ptr %0, align 8, !noalias !5
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink12, ptr %i.bg, align 8, !noalias !5
  %.sroa.3.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.3.0..sroa_idx.i9, align 8, !noalias !5
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %.sink, ptr %i.bh, align 8, !noalias !5
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker14in_init_module(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = tail call noundef nonnull ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellbE15get_or_try_initNCINvB2_11get_or_initNCNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB1B_7Checker14in_init_module0E0zEB1F_(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.g = load i8, ptr %i.f, align 1, !range !15, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15rule_is_ignored(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i16 noundef range(i16 0, 968) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1134
  %i.b = load i8, ptr %i.a, align 2, !range !15, !noundef !5
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6, !noundef !5
  %i.k = tail call noundef zeroext i1 @_RNvNtCsEhZmuQNqkz_11ruff_linter4noqa15rule_is_ignored(i16 noundef %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.k, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker18compute_source_row(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = tail call noundef i64 @_RNvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB2_7Locator18compute_line_index(ptr noundef nonnull align 8 %i.b, i32 noundef %2) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.e = load ptr, ptr %i.d, align 8, !align !6, !noundef !5 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_RNvMNtCs8w9c0syp1Hj_13ruff_notebook5indexNtB2_13NotebookIndex4cell(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i64 noundef %i.c)
  %. = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.g = tail call noundef i64 @_RNvMNtCs8w9c0syp1Hj_13ruff_notebook5indexNtB2_13NotebookIndex8cell_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i64 noundef %i.c)
  %.sroa.03.0 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0.sink = phi i64 [ %.sroa.03.0, %bb.b ], [ %i.c, %bb.a ]
  %..sink = phi i64 [ %., %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0.sink, ptr %i.h, align 8
  store i64 %..sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker19default_bytes_flags(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker31interpolated_string_quote_style(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i8, ptr %i.d, align 8, !range !15, !noundef !5
  %.not.i = icmp eq i8 %i.a, 2
  %spec.select.i = select i1 %.not.i, i8 %i.e, i8 %i.a
  ret i8 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker19lazy_import_context(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.g = load i32, ptr %i.f, align 8, !range !35, !noundef !5
  %i.h = add i32 %i.g, -1
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i8, ptr %i.n, align 8, !range !34, !noundef !5
  switch i8 %i.o, label %default.unreachable32 [
    i8 0, label %bb.f
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.d
    i8 4, label %bb.d
    i8 5, label %bb.d
    i8 6, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #35
  unreachable

default.unreachable32:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.c)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.p, %.loopexit
  %.sroa.0.0 = phi i8 [ 2, %bb.p ], [ 0, %bb.e ], [ -1, %.loopexit ], [ 1, %bb.b ]
  ret i8 %.sroa.0.0

thread-pre-split:                                 ; preds = %bb.n
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.d
  %i.r = phi i64 [ %.pr, %thread-pre-split ], [ 1, %bb.d ] ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.m, !prof !25

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !2457)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %i.a, align 8, !noalias !2458
  %.promoted.i = load i32, ptr %i.q, align 8, !alias.scope !2459, !noalias !2460
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2457, !noalias !2460, !nonnull !5, !align !6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %i.u = phi i32 [ %i.ac, %bb.l ], [ %.promoted.i, %bb.h ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.j

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.s, align 8, !noalias !2459, !noundef !5 ; 2 uses
  %i.w = add i32 %i.u, -1
  %i.x = zext i32 %i.w to i64                     ; 3 uses
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !2459
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.t, align 8, !noalias !2459, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !noalias !2459, !noundef !5 ; 2 uses
  store i32 %i.ac, ptr %i.q, align 8, !alias.scope !2459, !noalias !2460
  %i.ad = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtBV_13SemanticModel18current_statements0INtB7_5FnMutTNtNtBX_5nodes6NodeIdEE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef range(i32 1, 0) %i.u), !noalias !2457 ; 2 uses
  %.not7.i = icmp eq ptr %i.ad, null
  br i1 %.not7.i, label %bb.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ae = call fastcc noundef i64 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel18current_statements0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB77_13SpecAdvanceBy15spec_advance_by0E0B5A_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.b, i64 noundef %i.r, ptr noalias noundef align 8 dereferenceable(8) %i.p)
  %.not12 = icmp eq i64 %i.ae, 0
  br i1 %.not12, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.m, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.n:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit, %bb.o
  %.sroa.02.0 = phi ptr [ %i.ad, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.ai, %bb.o ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 84
  %i.ag = load i8, ptr %i.af, align 4, !range !29, !noundef !5
  %i.ah = icmp eq i8 %i.ag, 15
  br i1 %i.ah, label %bb.p, label %thread-pre-split

bb.o:                                             ; preds = %bb.m
  %i.ai = call fastcc noundef align 8 ptr @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(8) %i.p) ; 2 uses
  %.not13 = icmp eq ptr %i.ai, null
  br i1 %.not13, label %.loopexit, label %bb.n

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker20default_string_flags(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker31interpolated_string_quote_style(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i8, ptr %i.d, align 8, !range !15, !noundef !5
  %.not.i = icmp eq i8 %i.a, 2
  %spec.select.i = select i1 %.not.i, i8 %i.e, i8 %i.a
  ret i8 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker21default_fstring_flags(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker31interpolated_string_quote_style(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i8, ptr %i.d, align 8, !range !15, !noundef !5
  %.not.i = icmp eq i8 %i.a, 2
  %spec.select.i = select i1 %.not.i, i8 %i.e, i8 %i.a
  ret i8 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker21parse_type_annotation(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !2475, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.k, align 8, !noalias !2475
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i32, ptr %i.o, align 8, !noalias !2475, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2475
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationRNtNtB2s_5error10ParseErrorENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef %i.p)
          to label %bb.e unwind label %bb.d, !noalias !2475

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #35, !noalias !2475
  unreachable

bb.d:                                             ; preds = %_RNCNvMs7_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB7_22ParsedAnnotationsCache15lookup_or_parse0Bb_.exit.i.i, %bb.l, %bb.f, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.d, align 8, !noalias !2475, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.411.0.copyload.i = load i64, ptr %i.s, align 8, !noalias !2475
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.512.0.copyload.i = load ptr, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !2475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2475
  %i.t = load ptr, ptr %i.e, align 8, !noalias !2475, !nonnull !5, !align !6, !noundef !5 ; 9 uses
  %i.u = ptrtoint ptr %.sroa.512.0.copyload.i to i64
  %.sroa.8.16.extract.trunc.i = trunc i64 %i.u to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2476
  invoke void @_RNvNtCsb6FLkjZuKG_18ruff_python_parser6typing21parse_type_annotation(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  %i.v = load i64, ptr %i.t, align 8, !noalias !2479, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.h, !prof !25

bb.g:                                             ; preds = %.noexc.i
  store i64 -1, ptr %i.t, align 8, !noalias !2479
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !2479, !noundef !5 ; 5 uses
  %i.z = icmp ult i64 %i.y, 88686269585142076
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.w, align 8, !range !12, !noalias !2479, !noundef !5
  %i.ab = icmp samesign ult i64 %i.y, %i.aa
  br i1 %i.ab, label %_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_fast_pathCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i, label %_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_fast_pathCsEhZmuQNqkz_11ruff_linter.exit.i.i.i

bb.h:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35
          to label %bb.j unwind label %bb.k, !noalias !2479

_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_fast_pathCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i: ; preds = %bb.g
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !2480, !noalias !2481
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %.pre.i.i.i.i, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !2482
  %i.ad = add nuw nsw i64 %i.y, 1
  store i64 %i.ad, ptr %i.x, align 8, !alias.scope !2480, !noalias !2481
  %i.ae = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !2479, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw [104 x i8], ptr %i.ae, i64 %i.y
  %.pre10.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !2479
  %i.ag = add i64 %.pre10.i.i.i.i, 1
  store i64 %i.ag, ptr %i.t, align 8, !noalias !2479
  br label %bb.m

bb.i:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !2482
  unreachable

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB11_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b) #34
          to label %bb.o unwind label %bb.i, !noalias !2482

_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_fast_pathCsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.g
  %.sroa.0.0.copyload2.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !2483, !noalias !2476 ; 2 uses
  %.sroa.6.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload4.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx3.i.i.i, align 8, !alias.scope !2483, !noalias !2476 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !2479
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload2.i.i.i, -2
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_fast_pathCsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %.sroa.8.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2476
  store i64 %.sroa.0.0.copyload2.i.i.i, ptr %i.a, align 8, !noalias !2476
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload4.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !2476
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx5.i.i.i, i64 88, i1 false), !noalias !2476
  %i.aj = invoke noundef nonnull align 8 ptr @_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_slow_pathCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 8 %i.t, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %i.a)
          to label %.noexc2.i unwind label %bb.d

.noexc2.i:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2476
  br label %_RNCNvMs7_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB7_22ParsedAnnotationsCache15lookup_or_parse0Bb_.exit.i.i

bb.m:                                             ; preds = %_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_fast_pathCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_fast_pathCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i
  %.sroa.6.010.i.i.i = phi ptr [ %i.af, %_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_fast_pathCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i ], [ %.sroa.6.0.copyload4.i.i.i, %_RNvMCsjHLrQZSr3tO_11typed_arenaINtB2_5ArenaINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1l_5error10ParseErrorEE15alloc_fast_pathCsEhZmuQNqkz_11ruff_linter.exit.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.010.i.i.i) ]
  br label %_RNCNvMs7_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB7_22ParsedAnnotationsCache15lookup_or_parse0Bb_.exit.i.i

_RNCNvMs7_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB7_22ParsedAnnotationsCache15lookup_or_parse0Bb_.exit.i.i: ; preds = %bb.m, %.noexc2.i
  %.sroa.01.0.i.i.i = phi ptr [ %i.aj, %.noexc2.i ], [ %.sroa.6.010.i.i.i, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2476
  %i.ak = load i64, ptr %.sroa.01.0.i.i.i, align 8, !range !10, !noalias !2484, !noundef !5
  %i.al = icmp eq i64 %i.ak, -1                   ; 2 uses
  %.sroa.3.0.idx.i.i.i = select i1 %i.al, i64 8, i64 0
  %.sroa.3.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 %.sroa.3.0.idx.i.i.i
  %.sroa.0.0.i.i.i = zext i1 %i.al to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2485
  store i32 %.sroa.8.16.extract.trunc.i, ptr %i.c, align 8, !noalias !2485
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers25is_named_tuple_assignment
define hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers25is_named_tuple_assignment(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 12 uses
  %i.b = alloca [144 x i8], align 8               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i8, ptr %i.c, align 4, !range !29, !noundef !5
  %i.e = icmp eq i8 %i.d, 6
  br i1 %i.e, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !range !11, !noundef !5
  %i.i = icmp eq i32 %i.h, 16
  br i1 %i.i, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.k)
  %i.l = load i64, ptr %i.b, align 8, !range !26, !noundef !5
  %.not = icmp eq i64 %i.l, 2
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3347)
  %i.m = load i64, ptr %i.a, align 8, !range !7, !alias.scope !3347, !noalias !3348, !noundef !5 ; 2 uses
  %i.n = trunc nuw i64 %i.m to i1                 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !3347, !noalias !3348, !nonnull !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !3347, !noalias !3348
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !alias.scope !3347, !noalias !3348
  %i.u = zext i32 %i.t to i64
  %.sroa.8.0.i = select i1 %i.n, i64 %i.r, i64 %i.u
  %.sroa.01.0.i = select i1 %i.n, ptr %i.p, ptr %i.o
  %i.v = icmp eq i64 %.sroa.8.0.i, 2
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.01.0.i.sroa.sel = select i1 %i.n, ptr %.sroa.gep, ptr %i.q
  %i.w = load i64, ptr %.sroa.01.0.i.sroa.sel, align 8, !noalias !3348, !noundef !5
  %i.x = icmp eq i64 %i.w, 11
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %.sroa.01.0.i, align 8, !noalias !3348, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = load i64, ptr %i.y, align 1
  %i.aa = xor i64 %i.z, 7598807758542761827
  %i.ab = getelementptr i8, ptr %i.y, i64 3
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = xor i64 %i.ac, 8317708060514805100
  %i.ae = or i64 %i.aa, %i.ad
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel4 = select i1 %i.n, ptr %.sroa.gep2, ptr %.sroa.gep3
  %i.ai = load i64, ptr %.sroa.01.0.i.sroa.sel4, align 8, !noalias !3348, !noundef !5
  %i.aj = icmp eq i64 %i.ai, 10
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.gep5 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel7 = select i1 %i.n, ptr %.sroa.gep5, ptr %.sroa.gep6
  %i.ak = load ptr, ptr %.sroa.01.0.i.sroa.sel7, align 8, !noalias !3348, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 8103511079070294382
  %i.an = getelementptr i8, ptr %i.ak, i64 8
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = zext i16 %i.ao to i64
  %i.aq = xor i64 %i.ap, 25964
  %i.ar = or i64 %i.am, %i.aq
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.av = invoke noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27match_typing_qualified_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 10)
          to label %._crit_edge.i unwind label %bb.o

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load i64, ptr %i.a, align 8, !range !7, !alias.scope !3349, !noalias !3348
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %bb.h
  %i.aw = phi i64 [ %i.m, %bb.h ], [ %.pre.i, %._crit_edge.i ]
  %.sroa.0.0.i = phi i1 [ true, %bb.h ], [ %i.av, %._crit_edge.i ]
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.s)
  br label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers25is_named_tuple_assignment0B9_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i:                                  ; preds = %bb.o, %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.ba, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.l
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers25is_named_tuple_assignment0B9_.exit

bb.o:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #34
          to label %common.resume.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers25is_named_tuple_assignment0B9_.exit: ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers25is_named_tuple_assignment0B9_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i, %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers25is_named_tuple_assignment0B9_.exit ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.a, %bb.q
  %.sroa.0.1 = phi i1 [ %.sroa.0.0, %bb.q ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers(i32 noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !3358, !noalias !3359, !nonnull !5, !align !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.promoted.i.pre = load i32, ptr %i.d, align 8, !alias.scope !3360, !noalias !3359
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.promoted.i = phi i32 [ %.promoted.i.pre, %bb.a ], [ %i.o, %.backedge.backedge ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !3361
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.backedge
  %i.g = phi i32 [ %i.o, %bb.e ], [ %.promoted.i, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  %.not.i.i = icmp eq i32 %i.g, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.e, align 8, !noalias !3360, !noundef !5 ; 2 uses
  %i.i = add i32 %i.g, -1
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !3360
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !noalias !3360, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !noalias !3360, !noundef !5 ; 3 uses
  store i32 %i.o, ptr %i.d, align 8, !alias.scope !3360, !noalias !3359
  %i.p = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtBV_13SemanticModel18current_statements0INtB7_5FnMutTNtNtBX_5nodes6NodeIdEE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef range(i32 1, 0) %i.g), !noalias !3358 ; 4 uses
  %.not7.i = icmp eq ptr %i.p, null
  br i1 %.not7.i, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.r = load i8, ptr %i.q, align 4, !range !29, !noundef !5
  %i.s = icmp eq i8 %i.r, 15
  br i1 %i.s, label %bb.h, label %.backedge.backedge

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers0EB2I_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers0EB2I_.exit: ; preds = %.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.w, 6
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.backedge.backedge, label %.lr.ph.i

.backedge.backedge:                               ; preds = %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers0B9_.exit.backedge.i, %bb.h, %bb.f
  br label %.backedge

.lr.ph.i:                                         ; preds = %bb.h, %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers0B9_.exit.backedge.i
  %i.y = phi ptr [ %i.z, %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers0B9_.exit.backedge.i ], [ %i.u, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !noalias !3363, !noundef !5
  %.not.i.i5 = icmp ugt i32 %i.aa, %0
  br i1 %.not.i.i5, label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers0B9_.exit.backedge.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !3363, !noundef !5
  %i.ad = icmp ult i32 %0, %i.ac
  br i1 %i.ad, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers0EB2I_.exit, label %_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers0B9_.exit.backedge.i

_RNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers0B9_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %.not6.i = icmp eq ptr %i.z, %i.x
  br i1 %.not6.i, label %.backedge.backedge, label %.lr.ph.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules17flake8_executable5rules11from_tokens(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull align 8 %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph
  %.sroa.0.012.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph ]
  %.sroa.01.011.ph = phi ptr [ %i.k, %.thread ], [ %i.c, %.lr.ph ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.k
  %.sroa.01.011 = phi ptr [ %i.k, %bb.k ], [ %.sroa.01.011.ph, %.outer ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.011, i64 8 ; 4 uses
  %i.l = load i32, ptr %.sroa.01.011, align 4, !noundef !5 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.011, i64 4
  %i.n = load i32, ptr %i.m, align 4, !noundef !5 ; 7 uses
  %.val = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.val8 = load i64, ptr %i.h, align 8, !noundef !5 ; 5 uses
  %i.o = zext i32 %i.l to i64                     ; 6 uses
  %i.p = zext i32 %i.n to i64                     ; 5 uses
  %.not.i.i = icmp ugt i32 %i.l, %i.n
  br i1 %.not.i.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %i.l, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not5.i.i = icmp ugt i64 %.val8, %i.o
  br i1 %.not5.i.i, label %bb.f, label %.split.i.i

bb.e:                                             ; preds = %bb.f, %.split.i.i, %bb.c
  %i.r = icmp eq i32 %i.n, 0
  br i1 %i.r, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit, label %bb.g

.split.i.i:                                       ; preds = %bb.d
  %i.s = icmp eq i64 %.val8, %i.o
  br i1 %i.s, label %bb.e, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !3366, !noundef !5
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %bb.e, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

bb.g:                                             ; preds = %bb.e
  %.not6.i.i = icmp ugt i64 %.val8, %i.p
  br i1 %.not6.i.i, label %bb.h, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.g
  %i.w = icmp eq i64 %.val8, %i.p
  br i1 %i.w, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !3366, !noundef !5
  %i.z = icmp sgt i8 %i.y, -65
  br i1 %i.z, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i: ; preds = %bb.h, %.split7.i.i, %bb.f, %.split.i.i, %bb.b
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val8, i64 noundef %i.o, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35
  unreachable

_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit: ; preds = %bb.e, %.split7.i.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %i.ab = sub nuw nsw i64 %i.p, %i.o
  %i.ac = call { ptr, i64 } @_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8comments7shebangNtB2_16ShebangDirective11try_extract(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.k, label %bb.i

._crit_edge:                                      ; preds = %bb.k
  br i1 %.sroa.0.012.ph, label %._crit_edge.thread, label %.critedge

bb.i:                                             ; preds = %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ad, ptr %i.a, align 8
  store i64 %i.ae, ptr %i.i, align 8
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules17flake8_executable5rules22shebang_missing_python22shebang_missing_python(i32 noundef %i.l, i32 noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %0)
  %i.af = load i64, ptr %i.j, align 8, !noundef !5
  %i.ag = and i64 %i.af, 4294967296
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules17flake8_executable5rules22shebang_not_executable22shebang_not_executable(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %i.l, i32 noundef %i.n, ptr noundef nonnull align 8 %0)
  br label %.thread

bb.k:                                             ; preds = %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit
  %i.ai = icmp eq ptr %i.k, %i.f
  br i1 %i.ai, label %._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.j, %bb.i
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules17flake8_executable5rules26shebang_leading_whitespace26shebang_leading_whitespace(ptr noundef nonnull align 8 %0, i32 noundef %i.l, i32 noundef %i.n, ptr noundef nonnull align 8 %3)
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules17flake8_executable5rules22shebang_not_first_line22shebang_not_first_line(i32 noundef %i.l, i32 noundef %i.n, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = icmp eq ptr %i.k, %i.f
  br i1 %i.aj, label %._crit_edge.thread, label %.outer

.critedge:                                        ; preds = %bb.a, %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  %i.am = and i64 %i.al, 8589934592
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.thread, label %bb.l

._crit_edge.thread:                               ; preds = %.thread, %bb.l, %.critedge, %._crit_edge
  ret void

bb.l:                                             ; preds = %.critedge
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules17flake8_executable5rules31shebang_missing_executable_file31shebang_missing_executable_file(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull align 8 %0)
  br label %._crit_edge.thread
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules17flake8_executable7helpers10detect_wsl() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [176 x i8], align 8               ; 6 uses
  %i.f = alloca [176 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @_RINvNtCs2AWtUsOyxgP_3std2fs14read_to_stringReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @659, i64 noundef 26)
  %i.k = load i64, ptr %i.j, align 8, !range !10, !noundef !5
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs14read_to_stringReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 13)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator43yield_in_context_manager_in_async_generator:bb.a
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = zext i16 %i.bk to i64
  %i.bm = xor i64 %i.bl, 25193
  %i.bn = or i64 %i.bi, %i.bm
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.r, %bb.p, %bb.o
  %.sroa.gep2.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.01.0.i.sroa.sel4.i.i.i = select i1 %i.ay, ptr %.sroa.gep2.i.i.i, ptr %.sroa.gep12.i.i.i ; 2 uses
  %.sroa.gep5.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.01.0.i.sroa.sel7.i.i.i = select i1 %i.ay, ptr %.sroa.gep5.i.i.i, ptr %.sroa.gep9.i.i.i
  %i.br = load i64, ptr %.sroa.01.0.i.sroa.sel7.i.i.i, align 8, !noalias !3680, !noundef !5 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 7
  br i1 %i.bs, label %bb.t, label %bb.u

bb.r:                                             ; preds = %bb.p
  %.sroa.gep8.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.01.0.i.sroa.sel10.i.i.i = select i1 %i.ay, ptr %.sroa.gep8.i.i.i, ptr %.sroa.gep9.i.i.i
  %i.bt = load i64, ptr %.sroa.01.0.i.sroa.sel10.i.i.i, align 8, !noalias !3680, !noundef !5
  %i.bu = icmp eq i64 %i.bt, 19
  br i1 %i.bu, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %.sroa.gep11.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.01.0.i.sroa.sel13.i.i.i = select i1 %i.ay, ptr %.sroa.gep11.i.i.i, ptr %.sroa.gep12.i.i.i
  %i.bv = load ptr, ptr %.sroa.01.0.i.sroa.sel13.i.i.i, align 8, !noalias !3680, !nonnull !5, !noundef !5 ; 2 uses
  %i.bw = load i128, ptr %i.bv, align 1
  %i.bx = xor i128 %i.bw, 129508244311222750322076114225880200033
  %i.by = getelementptr i8, ptr %i.bv, i64 3
  %i.bz = load i128, ptr %i.by, align 1
  %i.ca = xor i128 %i.bz, 152058510309674500878504988348027986798
  %i.cb = or i128 %i.bx, %i.ca
  %i.cc = icmp ne i128 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.thread.i.i.i.i, label %bb.q

bb.t:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %.sroa.01.0.i.sroa.sel4.i.i.i, align 8, !noalias !3680, !nonnull !5, !noundef !5 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = xor i32 %i.cg, 1954048358
  %i.ci = getelementptr i8, ptr %i.cf, i64 3
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = xor i32 %i.cj, 1701999988
  %i.cl = or i32 %i.ch, %i.ck
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.cp = icmp eq i64 %i.be, 4
  br i1 %i.cp, label %bb.w, label %.thread.i.i.i.i

bb.v:                                             ; preds = %bb.t
  switch i64 %i.be, label %.thread.i.i.i.i [
    i64 6, label %bb.ac
    i64 14, label %bb.ad
  ]

bb.w:                                             ; preds = %bb.u
  %i.cq = load ptr, ptr %.sroa.01.0.i.i.i.i, align 8, !noalias !3680, !nonnull !5, !noundef !5
  %i.cr = load i32, ptr %i.cq, align 1
  %i.cs = icmp ne i32 %i.cr, 1869181556
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = icmp eq i64 %i.br, 15
  %or.cond.i.i.i.i = and i1 %i.cv, %i.cu
  br i1 %or.cond.i.i.i.i, label %bb.x, label %.thread.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr %.sroa.01.0.i.sroa.sel4.i.i.i, align 8, !noalias !3680, !nonnull !5, !noundef !5 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 1
  %i.cy = xor i64 %i.cx, 6874012974984426337
  %i.cz = getelementptr i8, ptr %i.cw, i64 7
  %i.da = load i64, ptr %i.cz, align 1
  %i.db = xor i64 %i.da, 7810770549103682399
  %i.dc = or i64 %i.cy, %i.db
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ad, %bb.ac, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %bb.n
  %.sroa.0.0.i.i.i.i = phi i1 [ false, %bb.n ], [ false, %bb.v ], [ true, %bb.s ], [ false, %bb.u ], [ false, %bb.w ], [ %i.dt, %bb.ac ], [ %i.df, %bb.x ], [ %i.ed, %bb.ad ]
  %i.dg = icmp eq i64 %i.ax, 0
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread.i.i.i.i
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.ap), !noalias !3680
  br label %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator00Bd_.exit.i.i.i

bb.z:                                             ; preds = %.thread.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i unwind label %bb.aa, !noalias !3680

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.resume unwind label %bb.ab, !noalias !3680

bb.ab:                                            ; preds = %bb.aa
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !3680
  unreachable

common.resume:                                    ; preds = %bb.aq, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.aa ], [ %i.gb, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i: ; preds = %bb.z
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap), !noalias !3680
  br label %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator00Bd_.exit.i.i.i

bb.ac:                                            ; preds = %bb.v
  %i.dj = load ptr, ptr %.sroa.01.0.i.i.i.i, align 8, !noalias !3680, !nonnull !5, !noundef !5 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 1
  %i.dl = xor i32 %i.dk, 1702132080
  %i.dm = getelementptr i8, ptr %i.dj, i64 4
  %i.dn = load i16, ptr %i.dm, align 1
  %i.do = zext i16 %i.dn to i32
  %i.dp = xor i32 %i.do, 29811
  %i.dq = or i32 %i.dl, %i.dp
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  br label %.thread.i.i.i.i

bb.ad:                                            ; preds = %bb.v
  %i.du = load ptr, ptr %.sroa.01.0.i.i.i.i, align 8, !noalias !3680, !nonnull !5, !noundef !5 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 1
  %i.dw = xor i64 %i.dv, 7016454783438715248
  %i.dx = getelementptr i8, ptr %i.du, i64 6
  %i.dy = load i64, ptr %i.dx, align 1
  %i.dz = xor i64 %i.dy, 8028057136899776863
  %i.ea = or i64 %i.dw, %i.dz
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = zext i1 %i.eb to i32
  %i.ed = icmp eq i32 %i.ec, 0
  br label %.thread.i.i.i.i

_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator00Bd_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3680
  br i1 %.sroa.0.0.i.i.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator.exit, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator0Bb_.exit.i.i, %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator00Bd_.exit.i.i.i
  %.not6.i.i = icmp eq ptr %i.ar, %i.al
  br i1 %.not6.i.i, label %.loopexit16, label %bb.k

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator0Bb_.exit.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3680
  br label %.backedge.i.i

.loopexit16:                                      ; preds = %.backedge.i.i, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator24enclosing_async_function.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !3682, !noalias !3683, !nonnull !5, !align !6 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.promoted.i.pre = load i32, ptr %i.eg, align 8, !alias.scope !3684, !noalias !3683
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %.loopexit16
  %.promoted.i = phi i32 [ %i.er, %bb.aj ], [ %.promoted.i.pre, %.loopexit16 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ef, ptr %i.f, align 8, !noalias !3685
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %bb.ae
  %i.ej = phi i32 [ %i.er, %bb.ai ], [ %.promoted.i, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  %.not.i.i8 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i8, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ek = load i64, ptr %i.eh, align 8, !noalias !3684, !noundef !5 ; 2 uses
  %i.el = add i32 %i.ej, -1
  %i.em = zext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp ugt i64 %i.ek, %i.em
  br i1 %i.en, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.em, i64 noundef %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !3684
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.eo = load ptr, ptr %i.ei, align 8, !noalias !3684, !nonnull !5, !noundef !5
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i32, ptr %i.eq, align 8, !noalias !3684, !noundef !5 ; 3 uses
  store i32 %i.er, ptr %i.eg, align 8, !alias.scope !3684, !noalias !3683
  %i.es = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtBV_13SemanticModel18current_statements0INtB7_5FnMutTNtNtBX_5nodes6NodeIdEE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef range(i32 1, 0) %i.ej), !noalias !3682 ; 2 uses
  %.not7.i = icmp eq ptr %i.es, null
  br i1 %.not7.i, label %bb.af, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 84
  %i.eu = load i8, ptr %i.et, align 4, !range !29, !noundef !5 ; 2 uses
  %i.ev = icmp samesign ugt i8 %i.eu, 1
  %i.ew = zext nneg i8 %i.eu to i64
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = select i1 %i.ev, i64 %i.ex, i64 0
  switch i64 %i.ey, label %bb.ae [
    i64 0, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator.exit.sink.split
    i64 1, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator.exit.sink.split
    i64 11, label %switch.lookup
  ]

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator.exit.sink.split

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator.exit.sink.split: ; preds = %bb.aj, %bb.aj, %_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules12flake8_async5rules43yield_in_context_manager_in_async_generator37YieldInContextManagerInAsyncGeneratorEBa_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator.exit

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator.exit: ; preds = %bb.i, %bb.i, %bb.d, %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator00Bd_.exit.i.i.i, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator.exit.sink.split, %bb.j
  ret void

switch.lookup:                                    ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ez = load i32, ptr %1, align 8, !range !11, !noundef !5 ; 2 uses
  %i.fa = zext nneg i32 %i.ez to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr.558, i64 %i.fa
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.fb = zext nneg i32 %i.ez to i64
  %switch.gep62 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr.559, i64 %i.fb
  %switch.load63 = load i8, ptr %switch.gep62, align 1
  %switch.ext64 = zext i8 %switch.load63 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext64
  %.sroa.0.0.i10 = load i32, ptr %i.fc, align 4, !noundef !5
  %.sroa.34.0.i = load i32, ptr %i.fd, align 4, !noundef !5
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = call noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellNtCs9BeaGo73rC4_16ruff_source_file10SourceFileE15get_or_try_initNCINvB2_11get_or_initNCNvMs9_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB2k_14LazySourceFile3get0E0zEB2o_(ptr noundef nonnull align 8 %i.fg, ptr noundef nonnull align 8 %i.ff), !noalias !3687
  %.val.i = load ptr, ptr %i.fh, align 8, !noalias !3687 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3687
  call void @llvm.experimental.noalias.scope.decl(metadata !3688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3689
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 67, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3689
  %i.fi = load i64, ptr %i.b, align 8, !range !7, !noalias !3689, !noundef !5
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !8, !noalias !3689, !noundef !5 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.fj, label %bb.al, label %_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generatorNtB2_37YieldInContextManagerInAsyncGeneratorNtNtBa_9violation9Violation7message.exit.i.i, !prof !9

bb.al:                                            ; preds = %switch.lookup
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !3689
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fl, i64 %i.fn) #35, !noalias !3689
  unreachable

_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generatorNtB2_37YieldInContextManagerInAsyncGeneratorNtNtBa_9violation9Violation7message.exit.i.i: ; preds = %switch.lookup
  %i.fo = load ptr, ptr %i.fm, align 8, !noalias !3689, !nonnull !5, !noundef !5 ; 2 uses
  %i.fp = icmp samesign ugt i64 %i.fl, 66
  call void @llvm.assume(i1 %i.fp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.fo, ptr noundef nonnull align 1 dereferenceable(67) @927, i64 67, i1 false), !noalias !3689
  store i64 %i.fl, ptr %i.e, align 8, !alias.scope !3688, !noalias !3687
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.fo, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3688, !noalias !3687
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 67, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !3688, !noalias !3687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3687
  call void @llvm.experimental.noalias.scope.decl(metadata !3690)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3691
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 54, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.aq, !noalias !3687

.noexc.i.i:                                       ; preds = %_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generatorNtB2_37YieldInContextManagerInAsyncGeneratorNtNtBa_9violation9Violation7message.exit.i.i
  %i.fq = load i64, ptr %i.a, align 8, !range !7, !noalias !3691, !noundef !5
  %i.fr = trunc nuw i64 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !range !8, !noalias !3691, !noundef !5 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.fr, label %bb.am, label %bb.an, !prof !9

bb.am:                                            ; preds = %.noexc.i.i
  %i.fv = load i64, ptr %i.fu, align 8, !noalias !3691
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ft, i64 %i.fv) #35
          to label %.noexc9.i.i unwind label %bb.aq, !noalias !3687

.noexc9.i.i:                                      ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %.noexc.i.i
  %i.fw = load ptr, ptr %i.fu, align 8, !noalias !3691, !nonnull !5, !noundef !5 ; 2 uses
  %i.fx = icmp samesign ugt i64 %i.ft, 53
  call void @llvm.assume(i1 %i.fx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.fw, ptr noundef nonnull align 1 dereferenceable(54) @928, i64 54, i1 false), !noalias !3691
  store i64 %i.ft, ptr %i.d, align 8, !alias.scope !3690, !noalias !3687
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.fw, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !3690, !noalias !3687
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 54, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !3690, !noalias !3687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3687
  store i64 -1, ptr %i.c, align 8, !noalias !3687
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.fy = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !3687
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %bb.ao, label %_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules12flake8_async5rules43yield_in_context_manager_in_async_generator37YieldInContextManagerInAsyncGeneratorEBa_.exit

bb.ao:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.aq
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !3687
  unreachable

bb.aq:                                            ; preds = %bb.am, %_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generatorNtB2_37YieldInContextManagerInAsyncGeneratorNtNtBa_9violation9Violation7message.exit.i.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #34
          to label %common.resume unwind label %bb.ap, !noalias !3687

_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules12flake8_async5rules43yield_in_context_manager_in_async_generator37YieldInContextManagerInAsyncGeneratorEBa_.exit: ; preds = %bb.an
  %i.gc = call noundef nonnull ptr @_RINvNtCsEhZmuQNqkz_11ruff_linter7message22create_lint_diagnosticNtNtCscdodAO9FK5_5alloc6string6StringB10_EB4_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i32 noundef %.sroa.0.0.i10, i32 noundef %.sroa.34.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, i32 noundef 0, i32 undef, ptr noundef nonnull %.val.i, i32 noundef 0, i32 undef, i16 noundef 44), !noalias !3687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3687
  store ptr %i.ff, ptr %i.i, align 8, !alias.scope !3687
  %i.gd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.gc, ptr %i.gd, align 8, !alias.scope !3687
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !3687
  %i.ge = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i16 44, ptr %i.ge, align 8, !alias.scope !3687
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_async5rules43yield_in_context_manager_in_async_generator18has_safe_decorator.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_print5rules10print_call10print_call(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [144 x i8], align 8               ; 6 uses
  %i.g = alloca [144 x i8], align 8               ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.h, ptr noundef nonnull align 8 %i.i)
  %i.j = load i64, ptr %i.f, align 8, !range !26, !noundef !5
  %.not = icmp eq i64 %i.j, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = load i64, ptr %i.g, align 8, !range !7, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1                 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  %.sroa.11.0 = select i1 %i.l, i64 %i.p, i64 %i.s
  %.sroa.0.0 = select i1 %i.l, ptr %i.n, ptr %i.m ; 2 uses
  %i.t = icmp eq i64 %.sroa.11.0, 2
  br i1 %i.t, label %bb.d, label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.am

bb.d:                                             ; preds = %bb.b
  %.sroa.gep33 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.gep34 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.0.sroa.sel35 = select i1 %i.l, ptr %.sroa.gep33, ptr %.sroa.gep34 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.gep32 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.0.sroa.sel = select i1 %i.l, ptr %.sroa.gep, ptr %.sroa.gep32
  %i.u = load i64, ptr %.sroa.0.0.sroa.sel, align 8, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 5
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.0.0.sroa.sel35, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = load i32, ptr %i.w, align 1
end_hunk_2
begin_hunk_3_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler30open_file_with_context_handler:bb.a
  %i.qe = zext i1 %i.qd to i32
  %i.qf = icmp eq i32 %i.qe, 0
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %.thread97.i, %bb.bn, %bb.bm, %bb.bl, %bb.bd, %bb.bc
  %.sroa.0.1.i = phi i1 [ false, %bb.bc ], [ true, %bb.bl ], [ %i.pv, %bb.bv ], [ true, %bb.bu ], [ true, %bb.bt ], [ %i.ot, %bb.bs ], [ true, %bb.bn ], [ true, %bb.bm ], [ false, %bb.bd ], [ false, %bb.bp ], [ false, %.thread97.i ], [ false, %bb.bq ], [ false, %bb.bo ], [ %i.qf, %bb.bw ], [ false, %bb.br ]
  %i.qg = icmp eq i64 %i.ku, 0
  br i1 %i.qg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.la)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit

bb.bz:                                            ; preds = %bb.bx
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.la)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i226.i unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.la)
          to label %common.resume unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i226.i: ; preds = %bb.bz
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.la)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit: ; preds = %bb.by, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4191
  br i1 %.sroa.0.1.i, label %bb.cc, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit
  %i.qj = call noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel30current_expression_grandparent(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n) ; 5 uses
  %.not.i4 = icmp eq ptr %i.qj, null
  br i1 %.not.i4, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qk = load i32, ptr %i.qj, align 8, !range !11, !noundef !5
  %i.ql = icmp eq i32 %i.qk, 16
  br i1 %i.ql, label %bb.ce, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.qn = load i64, ptr %i.qm, align 8, !noundef !5
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 32
  %i.qp = load ptr, ptr %i.qo, align 8, !nonnull !5, !noundef !5
  %i.qq = load i64, ptr %i.qp, align 8, !noundef !5
  %i.qr = sub i64 0, %i.qq
  %i.qs = icmp eq i64 %i.qn, %i.qr
  br i1 %i.qs, label %bb.cf, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit.thread

bb.cf:                                            ; preds = %bb.ce
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.qv = load i32, ptr %i.qu, align 8, !range !11, !noundef !5
  %i.qw = icmp eq i32 %i.qv, 25
  br i1 %i.qw, label %bb.cg, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit.thread

bb.cg:                                            ; preds = %bb.cf
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 31
  %i.qy = load i8, ptr %i.qx, align 1, !range !13, !alias.scope !4193, !noundef !5 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %i.ra = load i64, ptr %i.qz, align 8, !alias.scope !4193, !noundef !5
  %i.rb = and i64 %i.ra, 72057594037927935
  %i.rc = icmp ult i8 %i.qy, -48
  %i.rd = zext i8 %i.qy to i64
  %i.re = add nsw i64 %i.rd, -192
  %spec.store.select.i.i6 = call i64 @llvm.umin.i64(i64 %i.re, i64 16)
  %.sroa.0.0.i.i7 = select i1 %i.rc, i64 %spec.store.select.i.i6, i64 %i.rb
  %i.rf = icmp eq i64 %.sroa.0.0.i.i7, 5
  br i1 %i.rf, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit.thread

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit: ; preds = %bb.cg
  %i.rg = icmp ugt i8 %i.qy, -49
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qu, i64 16 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !alias.scope !4193
  %.sroa.01.0.i.i8 = select i1 %i.rg, ptr %i.ri, ptr %i.rh ; 2 uses
  %i.rj = load i32, ptr %.sroa.01.0.i.i8, align 1
  %i.rk = xor i32 %i.rj, 1936682083
  %i.rl = getelementptr i8, ptr %.sroa.01.0.i.i8, i64 4
  %i.rm = load i8, ptr %i.rl, align 1
  %i.rn = zext i8 %i.rm to i32
  %i.ro = xor i32 %i.rn, 101
  %i.rp = or i32 %i.rk, %i.ro
  %i.rq = icmp ne i32 %i.rp, 0
  %i.rr = zext i1 %i.rq to i32
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit.thread

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit.thread: ; preds = %bb.cg, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit
  %i.rt = call noundef nonnull align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17current_statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n)
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 84
  %i.rv = load i8, ptr %i.ru, align 4, !range !29, !noundef !5
  %i.rw = icmp eq i8 %i.rv, 12
  br i1 %i.rw, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit.thread
  %i.rx = call noundef nonnull align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17current_statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n)
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 84
  %i.rz = load i8, ptr %i.ry, align 4, !range !29, !noundef !5
  %i.sa = icmp eq i8 %i.rz, 3
  br i1 %i.sa, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.sb = call noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel25current_expression_parent(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n) ; 3 uses
  %.not.i10 = icmp eq ptr %i.sb, null
  br i1 %.not.i10, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.sc = load i32, ptr %i.sb, align 8, !range !11, !noundef !5
  %i.sd = icmp eq i32 %i.sc, 16
  br i1 %i.sd, label %bb.ck, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.sg = load i32, ptr %i.sf, align 8, !range !11, !noundef !5
  %i.sh = icmp eq i32 %i.sg, 25
  br i1 %i.sh, label %bb.cl, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread

bb.cl:                                            ; preds = %bb.ck
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 31
  %i.sj = load i8, ptr %i.si, align 1, !range !13, !alias.scope !4194, !noundef !5 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sl = load i64, ptr %i.sk, align 8, !alias.scope !4194, !noundef !5
  %i.sm = and i64 %i.sl, 72057594037927935
  %i.sn = icmp ult i8 %i.sj, -48
  %i.so = zext i8 %i.sj to i64
  %i.sp = add nsw i64 %i.so, -192
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.sp, i64 16)
  %.sroa.0.0.i.i.i = select i1 %i.sn, i64 %spec.store.select.i.i.i, i64 %i.sm
  %i.sq = icmp eq i64 %.sroa.0.0.i.i.i, 13
  br i1 %i.sq, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i: ; preds = %bb.cl
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.ss = icmp ugt i8 %i.sj, -49
  %i.st = load ptr, ptr %i.sr, align 8, !alias.scope !4194
  %.sroa.01.0.i.i.i = select i1 %i.ss, ptr %i.st, ptr %i.sr ; 2 uses
  %i.su = load i64, ptr %.sroa.01.0.i.i.i, align 1
  %i.sv = xor i64 %i.su, 8026363905837395557
  %i.sw = getelementptr i8, ptr %.sroa.01.0.i.i.i, i64 5
  %i.sx = load i64, ptr %i.sw, align 1
  %i.sy = xor i64 %i.sx, 8392569456348324703
  %i.sz = or i64 %i.sv, %i.sy
  %i.ta = icmp ne i64 %i.sz, 0
  %i.tb = zext i1 %i.ta to i32
  %i.tc = icmp eq i32 %i.tb, 0
  br i1 %i.tc, label %bb.cm, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread

bb.cm:                                            ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4195
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n)
  %i.td = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %.sroa.gep16.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.gep19.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !4196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4195
  store ptr %i.td, ptr %i.e, align 8, !noalias !4197
  %.promoted.i.i = load i32, ptr %i.te, align 8, !alias.scope !4198, !noalias !4199
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !4196, !noalias !4199, !nonnull !5, !align !6 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.tj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %.loopexit.i
  %i.tk = phi i32 [ %i.ts, %bb.cq ], [ %.promoted.i.i, %.loopexit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4200)
  %.not.i.i.i.not = icmp eq i32 %i.tk, 0
  br i1 %.not.i.i.i.not, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread48, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.tl = load i64, ptr %i.ti, align 8, !noalias !4198, !noundef !5 ; 2 uses
  %i.tm = add i32 %i.tk, -1
  %i.tn = zext i32 %i.tm to i64                   ; 3 uses
  %i.to = icmp ugt i64 %i.tl, %i.tn
  br i1 %i.to, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.tn, i64 noundef %i.tl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !4198
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.tp = load ptr, ptr %i.tj, align 8, !noalias !4198, !nonnull !5, !noundef !5
  %i.tq = getelementptr inbounds nuw [24 x i8], ptr %i.tp, i64 %i.tn
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load i32, ptr %i.tr, align 8, !noalias !4198, !noundef !5 ; 2 uses
  store i32 %i.ts, ptr %i.te, align 8, !alias.scope !4198, !noalias !4199
  %i.tt = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtBV_13SemanticModel18current_statements0INtB7_5FnMutTNtNtBX_5nodes6NodeIdEE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef range(i32 1, 0) %i.tk), !noalias !4196 ; 4 uses
  %.not7.i.i = icmp eq ptr %i.tt, null
  br i1 %.not7.i.i, label %bb.cn, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4195
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 84
  %i.tv = load i8, ptr %i.tu, align 4, !range !29, !noundef !5
  %i.tw = icmp eq i8 %i.tv, 12
  br i1 %i.tw, label %bb.cs, label %.loopexit.i.backedge

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread48: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4195
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread

bb.cs:                                            ; preds = %bb.cr
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.ua = load i64, ptr %i.tz, align 8, !noundef !5 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ua, 96
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 %.idx.i
  %i.uc = icmp eq i64 %i.ua, 0
  br i1 %i.uc, label %.loopexit.i.backedge, label %.lr.ph.i

.loopexit.i.backedge:                             ; preds = %bb.cu, %bb.cs, %bb.cr
  br label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.cs, %bb.cu
  %.sroa.04.030.i = phi ptr [ %i.ud, %bb.cu ], [ %i.ty, %bb.cs ] ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i, i64 96 ; 2 uses
  %i.ue = load i32, ptr %.sroa.04.030.i, align 8, !range !11, !noundef !5
  %i.uf = icmp eq i32 %i.ue, 16
  br i1 %i.uf, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4195
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !nonnull !5, !noundef !5
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n, ptr noundef nonnull align 8 %i.uh)
  %i.ui = load i64, ptr %i.g, align 8, !range !26, !noalias !4195, !noundef !5
  %.not9.i = icmp eq i64 %i.ui, 2
  br i1 %.not9.i, label %bb.df, label %bb.cv

bb.cu:                                            ; preds = %bb.df, %.lr.ph.i
  %i.uj = icmp eq ptr %i.ud, %i.ub
  br i1 %i.uj, label %.loopexit.i.backedge, label %.lr.ph.i

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false), !noalias !4195
  call void @llvm.experimental.noalias.scope.decl(metadata !4201)
  %i.uk = load i64, ptr %i.f, align 8, !range !7, !alias.scope !4201, !noalias !4195, !noundef !5 ; 2 uses
  %i.ul = trunc nuw i64 %i.uk to i1               ; 5 uses
  %i.um = load ptr, ptr %i.tf, align 8, !alias.scope !4201, !noalias !4195, !nonnull !5 ; 4 uses
  %i.un = load i64, ptr %i.tg, align 8, !alias.scope !4201, !noalias !4195
  %i.uo = load i32, ptr %i.th, align 8, !alias.scope !4201, !noalias !4195
  %i.up = zext i32 %i.uo to i64
  %.sroa.7.0.i.i = select i1 %i.ul, i64 %i.un, i64 %i.up
  %.sroa.01.0.i.i12 = select i1 %i.ul, ptr %i.um, ptr %i.tf
  %i.uq = icmp eq i64 %.sroa.7.0.i.i, 2
  br i1 %i.uq, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %.sroa.gep.i13 = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %.sroa.01.0.i.sroa.sel.i = select i1 %i.ul, ptr %.sroa.gep.i13, ptr %i.tg
  %i.ur = load i64, ptr %.sroa.01.0.i.sroa.sel.i, align 8, !noundef !5
  %i.us = icmp eq i64 %i.ur, 10
  br i1 %i.us, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.ut = load ptr, ptr %.sroa.01.0.i.i12, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.uu = load i64, ptr %i.ut, align 1
  %i.uv = xor i64 %i.uu, 7815003630535077731
  %i.uw = getelementptr i8, ptr %i.ut, i64 8
  %i.ux = load i16, ptr %i.uw, align 1
  %i.uy = zext i16 %i.ux to i64
  %i.uz = xor i64 %i.uy, 25193
  %i.va = or i64 %i.uv, %i.uz
  %i.vb = icmp ne i64 %i.va, 0
  %i.vc = zext i1 %i.vb to i32
  %i.vd = icmp eq i32 %i.vc, 0
  br i1 %i.vd, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %.sroa.gep15.i14 = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  %.sroa.01.0.i.sroa.sel17.i = select i1 %i.ul, ptr %.sroa.gep15.i14, ptr %.sroa.gep16.i
  %i.ve = load i64, ptr %.sroa.01.0.i.sroa.sel17.i, align 8, !noundef !5
  %i.vf = icmp eq i64 %i.ve, 9
  br i1 %i.vf, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %.sroa.gep18.i15 = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %.sroa.01.0.i.sroa.sel20.i = select i1 %i.ul, ptr %.sroa.gep18.i15, ptr %.sroa.gep19.i
  %i.vg = load ptr, ptr %.sroa.01.0.i.sroa.sel20.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.vh = load i64, ptr %i.vg, align 1
  %i.vi = xor i64 %i.vh, 7161132784279976005
  %i.vj = getelementptr i8, ptr %i.vg, i64 8
  %i.vk = load i8, ptr %i.vj, align 1
  %i.vl = zext i8 %i.vk to i64
  %i.vm = xor i64 %i.vl, 107
  %i.vn = or i64 %i.vi, %i.vm
  %i.vo = icmp ne i64 %i.vn, 0
  %i.vp = zext i1 %i.vo to i32
  %i.vq = icmp eq i32 %i.vp, 0
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %.sroa.0.0.i12.i = phi i1 [ false, %bb.cv ], [ false, %bb.cw ], [ false, %bb.cx ], [ %i.vq, %bb.cz ], [ false, %bb.cy ]
  %i.vr = icmp eq i64 %i.uk, 0
  br i1 %i.vr, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.th)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack0Bb_.exit.i

bb.dc:                                            ; preds = %bb.da
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.th)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.th)
          to label %common.resume unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.vt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.dc
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.th)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack0Bb_.exit.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack0Bb_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4195
  br i1 %.sroa.0.0.i12.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit, label %bb.df

bb.df:                                            ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack0Bb_.exit.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4195
  br label %bb.cu

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit: ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4195
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread: ; preds = %bb.ci, %bb.cj, %bb.cl, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i, %bb.ck, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread48
  %i.vu = call noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel30current_expression_grandparent(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n) ; 3 uses
  %.not.i16 = icmp eq ptr %i.vu, null
  br i1 %.not.i16, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread
  %i.vv = load i32, ptr %i.vu, align 8, !range !11, !noundef !5
  %i.vw = icmp eq i32 %i.vv, 12
  br i1 %i.vw, label %bb.dh, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 8, !range !11, !noundef !5
  %i.wa = icmp eq i32 %i.vz, 16
  br i1 %i.wa, label %bb.di, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread

bb.di:                                            ; preds = %bb.dh
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.wd = load i32, ptr %i.wc, align 8, !range !11, !noundef !5
  %i.we = icmp eq i32 %i.wd, 25
  br i1 %i.we, label %bb.dj, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread

bb.dj:                                            ; preds = %bb.di
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 31
  %i.wg = load i8, ptr %i.wf, align 1, !range !13, !alias.scope !4202, !noundef !5
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.wi = load i64, ptr %i.wh, align 8, !alias.scope !4202, !noundef !5
  %i.wj = and i64 %i.wi, 72057594037927935
  %i.wk = icmp ugt i8 %i.wg, -49
  %i.wl = icmp eq i64 %i.wj, 19
  %i.wm = and i1 %i.wk, %i.wl
  br i1 %i.wm, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i18, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i18: ; preds = %bb.dj
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8, !alias.scope !4202 ; 2 uses
  %i.wp = load i128, ptr %i.wo, align 1
  %i.wq = xor i128 %i.wp, 154763859386064447833419263223493062245
  %i.wr = getelementptr i8, ptr %i.wo, i64 3
  %i.ws = load i128, ptr %i.wr, align 1
  %i.wt = xor i128 %i.ws, 154815580882089252165853728164561252965
  %i.wu = or i128 %i.wq, %i.wt
  %i.wv = icmp ne i128 %i.wu, 0
  %i.ww = zext i1 %i.wv to i32
  %i.wx = icmp eq i32 %i.ww, 0
  br i1 %i.wx, label %bb.dk, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread

bb.dk:                                            ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4203
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n)
  %i.wy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.wz = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %.sroa.gep16.i20 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.gep19.i21 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %.loopexit.i27

.loopexit.i27:                                    ; preds = %.loopexit.i27.backedge, %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !4204)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4203
  store ptr %i.wy, ptr %i.a, align 8, !noalias !4205
  %.promoted.i.i22 = load i32, ptr %i.wz, align 8, !alias.scope !4206, !noalias !4207
  %.val.i.i.i23 = load ptr, ptr %i.d, align 8, !alias.scope !4204, !noalias !4207, !nonnull !5, !align !6 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.val.i.i.i23, i64 16
  %i.xe = getelementptr inbounds nuw i8, ptr %.val.i.i.i23, i64 8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.do, %.loopexit.i27
  %i.xf = phi i32 [ %i.xn, %bb.do ], [ %.promoted.i.i22, %.loopexit.i27 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4208)
  %.not.i.i.i24.not = icmp eq i32 %i.xf, 0
  br i1 %.not.i.i.i24.not, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread50, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.xg = load i64, ptr %i.xd, align 8, !noalias !4206, !noundef !5 ; 2 uses
  %i.xh = add i32 %i.xf, -1
  %i.xi = zext i32 %i.xh to i64                   ; 3 uses
  %i.xj = icmp ugt i64 %i.xg, %i.xi
  br i1 %i.xj, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.xi, i64 noundef %i.xg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !4206
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.xk = load ptr, ptr %i.xe, align 8, !noalias !4206, !nonnull !5, !noundef !5
  %i.xl = getelementptr inbounds nuw [24 x i8], ptr %i.xk, i64 %i.xi
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %i.xn = load i32, ptr %i.xm, align 8, !noalias !4206, !noundef !5 ; 2 uses
  store i32 %i.xn, ptr %i.wz, align 8, !alias.scope !4206, !noalias !4207
  %i.xo = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtBV_13SemanticModel18current_statements0INtB7_5FnMutTNtNtBX_5nodes6NodeIdEE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef range(i32 1, 0) %i.xf), !noalias !4204 ; 4 uses
  %.not7.i.i26 = icmp eq ptr %i.xo, null
  br i1 %.not7.i.i26, label %bb.dl, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4203
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 84
  %i.xq = load i8, ptr %i.xp, align 4, !range !29, !noundef !5
  %i.xr = icmp eq i8 %i.xq, 12
  br i1 %i.xr, label %bb.dq, label %.loopexit.i27.backedge

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread50: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4203
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread

bb.dq:                                            ; preds = %bb.dp
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %i.xv = load i64, ptr %i.xu, align 8, !noundef !5 ; 2 uses
  %.idx.i28 = mul nuw nsw i64 %i.xv, 96
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.idx.i28
  %i.xx = icmp eq i64 %i.xv, 0
  br i1 %i.xx, label %.loopexit.i27.backedge, label %.lr.ph.i29

.loopexit.i27.backedge:                           ; preds = %bb.ds, %bb.dq, %bb.dp
  br label %.loopexit.i27

.lr.ph.i29:                                       ; preds = %bb.dq, %bb.ds
  %.sroa.04.030.i30 = phi ptr [ %i.xy, %bb.ds ], [ %i.xt, %bb.dq ] ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i30, i64 96 ; 2 uses
  %i.xz = load i32, ptr %.sroa.04.030.i30, align 8, !range !11, !noundef !5
  %i.ya = icmp eq i32 %i.xz, 16
  br i1 %i.ya, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.lr.ph.i29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4203
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i30, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8, !nonnull !5, !noundef !5
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n, ptr noundef nonnull align 8 %i.yc)
  %i.yd = load i64, ptr %i.c, align 8, !range !26, !noalias !4203, !noundef !5
  %.not9.i31 = icmp eq i64 %i.yd, 2
  br i1 %.not9.i31, label %bb.ed, label %bb.dt

bb.ds:                                            ; preds = %bb.ed, %.lr.ph.i29
  %i.ye = icmp eq ptr %i.xy, %i.xw
  br i1 %i.ye, label %.loopexit.i27.backedge, label %.lr.ph.i29

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false), !noalias !4203
  call void @llvm.experimental.noalias.scope.decl(metadata !4209)
  %i.yf = load i64, ptr %i.b, align 8, !range !7, !alias.scope !4209, !noalias !4203, !noundef !5 ; 2 uses
  %i.yg = trunc nuw i64 %i.yf to i1               ; 5 uses
  %i.yh = load ptr, ptr %i.xa, align 8, !alias.scope !4209, !noalias !4203, !nonnull !5 ; 4 uses
  %i.yi = load i64, ptr %i.xb, align 8, !alias.scope !4209, !noalias !4203
  %i.yj = load i32, ptr %i.xc, align 8, !alias.scope !4209, !noalias !4203
  %i.yk = zext i32 %i.yj to i64
  %.sroa.7.0.i.i32 = select i1 %i.yg, i64 %i.yi, i64 %i.yk
  %.sroa.01.0.i.i33 = select i1 %i.yg, ptr %i.yh, ptr %i.xa
  %i.yl = icmp eq i64 %.sroa.7.0.i.i32, 2
  br i1 %i.yl, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %.sroa.gep.i37 = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %.sroa.01.0.i.sroa.sel.i38 = select i1 %i.yg, ptr %.sroa.gep.i37, ptr %i.xb
  %i.ym = load i64, ptr %.sroa.01.0.i.sroa.sel.i38, align 8, !noundef !5
  %i.yn = icmp eq i64 %i.ym, 10
  br i1 %i.yn, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.yo = load ptr, ptr %.sroa.01.0.i.i33, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.yp = load i64, ptr %i.yo, align 1
  %i.yq = xor i64 %i.yp, 7815003630535077731
  %i.yr = getelementptr i8, ptr %i.yo, i64 8
  %i.ys = load i16, ptr %i.yr, align 1
  %i.yt = zext i16 %i.ys to i64
  %i.yu = xor i64 %i.yt, 25193
  %i.yv = or i64 %i.yq, %i.yu
  %i.yw = icmp ne i64 %i.yv, 0
  %i.yx = zext i1 %i.yw to i32
  %i.yy = icmp eq i32 %i.yx, 0
  br i1 %i.yy, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %.sroa.gep15.i40 = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %.sroa.01.0.i.sroa.sel17.i41 = select i1 %i.yg, ptr %.sroa.gep15.i40, ptr %.sroa.gep16.i20
  %i.yz = load i64, ptr %.sroa.01.0.i.sroa.sel17.i41, align 8, !noundef !5
  %i.za = icmp eq i64 %i.yz, 14
  br i1 %i.za, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %.sroa.gep18.i42 = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %.sroa.01.0.i.sroa.sel20.i43 = select i1 %i.yg, ptr %.sroa.gep18.i42, ptr %.sroa.gep19.i21
  %i.zb = load ptr, ptr %.sroa.01.0.i.sroa.sel20.i43, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.zc = load i64, ptr %i.zb, align 1
  %i.zd = xor i64 %i.zc, 7599900664545243969
  %i.ze = getelementptr i8, ptr %i.zb, i64 6
  %i.zf = load i64, ptr %i.ze, align 1
  %i.zg = xor i64 %i.zf, 7738135736996882808
  %i.zh = or i64 %i.zd, %i.zg
  %i.zi = icmp ne i64 %i.zh, 0
  %i.zj = zext i1 %i.zi to i32
  %i.zk = icmp eq i32 %i.zj, 0
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt
  %.sroa.0.0.i12.i34 = phi i1 [ false, %bb.dt ], [ false, %bb.du ], [ false, %bb.dv ], [ %i.zk, %bb.dx ], [ false, %bb.dw ]
  %i.zl = icmp eq i64 %i.yf, 0
  br i1 %i.zl, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.xc)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack0Bb_.exit.i

bb.ea:                                            ; preds = %bb.dy
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i36 unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.zm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xc)
          to label %common.resume unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.zn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i36: ; preds = %bb.ea
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xc)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack0Bb_.exit.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack0Bb_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i36, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4203
  br i1 %.sroa.0.0.i12.i34, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit, label %bb.ed

bb.ed:                                            ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack0Bb_.exit.i, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4203
  br label %bb.ds

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit: ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4203
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread: ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit.thread, %bb.dg, %bb.dh, %bb.dj, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i18, %bb.di, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread50
  %i.zo = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler30match_unittest_context_methods(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.n)
  br i1 %i.zo, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread, label %bb.ee

bb.ee:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.zq = load i64, ptr %i.zp, align 8, !noundef !5 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.zs = load i32, ptr %i.zr, align 8, !range !35, !noundef !5
  %i.zt = add i32 %i.zs, -1
  %i.zu = zext i32 %i.zt to i64                   ; 3 uses
  %i.zv = icmp ugt i64 %i.zq, %i.zu
  br i1 %i.zv, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.zx = load ptr, ptr %i.zw, align 8, !nonnull !5, !noundef !5
  %i.zy = getelementptr inbounds nuw [120 x i8], ptr %i.zx, i64 %i.zu ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 24
  %i.aaa = load i8, ptr %i.zz, align 8, !range !34, !noundef !5
  %i.aab = icmp eq i8 %i.aaa, 2
  br i1 %i.aab, label %bb.eh, label %bb.ei

bb.eg:                                            ; preds = %bb.ee
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zu, i64 noundef %i.zq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #35
  unreachable

bb.eh:                                            ; preds = %bb.ef
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 32
  %i.aad = load ptr, ptr %i.aac, align 8, !nonnull !5, !align !6, !noundef !5
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = call fastcc noundef zeroext i1 @_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aae, ptr nonnull @705, i64 9)
  br i1 %i.aaf, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.aag = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.aah = call fastcc { i32, i32 } @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noundef nonnull align 8 %i.aag) ; 2 uses
  %i.aai = extractvalue { i32, i32 } %i.aah, 0
  %i.aaj = extractvalue { i32, i32 } %i.aah, 1
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.aal = load ptr, ptr %i.aak, align 8, !nonnull !5, !align !6, !noundef !5
  call fastcc void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules15flake8_simplify5rules30open_file_with_context_handler26OpenFileWithContextHandlerEBa_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull align 8 %i.aal, i32 noundef %i.aai, i32 noundef %i.aaj)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit.thread: ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack.exit, %bb.ax, %bb.c, %bb.az, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.eh, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack.exit.thread, %bb.ch, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit.thread, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler21is_immediately_closed.exit, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call.exit, %bb.ei
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules11os_readlink11os_readlink(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1135
  %.sroa.01.0.copyload.i = load i8, ptr %i.a, align 1
end_hunk_3
begin_hunk_4_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules10banned_api23banned_attribute_access:bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(144) %i.a) #34
          to label %.body.i unwind label %bb.n, !noalias !4232

bb.i:                                             ; preds = %.noexc6.i
  %i.ac = load i64, ptr %i.a, align 8, !range !7, !alias.scope !4233, !noalias !4230, !noundef !5
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.s)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENCNCNvNtNtB1U_5rules10banned_api23banned_attribute_access00E0B1Y_.exit.i.i unwind label %.loopexit.i

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i unwind label %bb.l, !noalias !4232

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i unwind label %bb.m, !noalias !4232

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !4232
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENCNCNvNtNtB1U_5rules10banned_api23banned_attribute_access00E0B1Y_.exit.i.i unwind label %.loopexit.i

bb.n:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !4232
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENCNCNvNtNtB1U_5rules10banned_api23banned_attribute_access00E0B1Y_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4230
  br i1 %i.aa, label %bb.o, label %bb.f

bb.o:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENCNCNvNtNtB1U_5rules10banned_api23banned_attribute_access00E0B1Y_.exit.i.i, %.noexc.i
  %spec.select.i = phi ptr [ %i.v, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENCNCNvNtNtB1U_5rules10banned_api23banned_attribute_access00E0B1Y_.exit.i.i ], [ undef, %.noexc.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4228
  %i.ah = load i64, ptr %i.c, align 8, !range !7, !alias.scope !4234, !noalias !4235, !noundef !5
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.aj)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules10banned_api23banned_attribute_access0Bb_.exit

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ak, %bb.r ], [ %i.an, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.q
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules10banned_api23banned_attribute_access0Bb_.exit

bb.t:                                             ; preds = %.body.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules10banned_api23banned_attribute_access0Bb_.exit: ; preds = %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not.i.i, label %bb.c, label %bb.v

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.c

bb.v:                                             ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules10banned_api23banned_attribute_access0Bb_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %spec.select.i)
          to label %switch.lookup unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #34
          to label %common.resume unwind label %bb.x

switch.lookup:                                    ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ap = load i32, ptr %1, align 8, !range !11, !noundef !5 ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr.558, i64 %i.aq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ar = zext nneg i32 %i.ap to i64
  %switch.gep20 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr.559, i64 %i.ar
  %switch.load21 = load i8, ptr %switch.gep20, align 1
  %switch.ext22 = zext i8 %switch.load21 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext22
  %.sroa.0.0.i = load i32, ptr %i.as, align 4, !noundef !5
  %.sroa.34.0.i = load i32, ptr %i.at, align 4, !noundef !5
  %i.au = load ptr, ptr %i.i, align 8, !nonnull !5, !align !6, !noundef !5
  call fastcc void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_tidy_imports5rules10banned_api9BannedApiEBa_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull align 8 %i.au, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.f, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.34.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.c

bb.x:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved32lazy_import_immediately_resolved(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1135
  %.sroa.04.0.copyload = load i8, ptr %i.p, align 1
  %i.q = trunc nuw i8 %.sroa.04.0.copyload to i1
  br i1 %i.q, label %bb.b, label %.thread25

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1137
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0.copyload.fr = freeze i8 %.sroa.4.0.copyload ; 2 uses
  %i.r = icmp eq i8 %.sroa.4.0.copyload.fr, 3
  %i.s = icmp ult i8 %.sroa.5.0.copyload, 15
  %i.t = icmp ult i8 %.sroa.4.0.copyload.fr, 3
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t
  br i1 %i.u, label %.thread25, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1138
  %i.x = load i8, ptr %i.w, align 2, !range !14, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4285)
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.aa = load i32, ptr %i.z, align 8, !alias.scope !4285, !noundef !5 ; 2 uses
  %i.ab = and i32 %i.aa, 67244145
  %or.cond3.i = icmp eq i32 %i.ab, 0
  br i1 %or.cond3.i, label %bb.e, label %.thread25

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4285
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.v)
  %i.ac = and i32 %i.aa, 128
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28

bb.f:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4286
  call void @llvm.experimental.noalias.scope.decl(metadata !4287)
  call void @llvm.experimental.noalias.scope.decl(metadata !4288)
  call void @llvm.experimental.noalias.scope.decl(metadata !4289)
  %.promoted.i.i.i.i = load i32, ptr %i.bl, align 8, !alias.scope !4290, !noalias !4291 ; 2 uses
  %.not.i19.not.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not.i19.not.i.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4290, !noalias !4291, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !4292, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %.val.i6.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !4293, !noalias !4294, !nonnull !5, !align !6 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i, i64 72
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aj = phi i32 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4295)
  %i.ak = add i32 %i.aj, -1
  %i.al = zext i32 %i.ak to i64                   ; 6 uses
  %i.am = icmp ugt i64 %i.af, %i.al
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !4292
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.ag, align 8, !noalias !4292, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !noalias !4292, !noundef !5 ; 2 uses
  %i.ar = load i64, ptr %i.ah, align 8, !noalias !4296, !noundef !5 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, %i.al
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.ai, align 8, !noalias !4296, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.al ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !7, !noalias !4296, !noundef !5
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #35, !noalias !4296
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !4296, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 84
  %i.ba = load i8, ptr %i.az, align 4, !range !29, !noalias !4296, !noundef !5 ; 2 uses
  %i.bb = icmp samesign ugt i8 %i.ba, 1
  %i.bc = zext nneg i8 %i.ba to i64
  %i.bd = add nsw i64 %i.bc, -1
  %i.be = select i1 %i.bb, i64 %i.bd, i64 0
  switch i64 %i.be, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i [
    i64 9, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i64 10, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i64 12, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i64 20, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.ay, align 8, !noalias !4296, !nonnull !5, !noundef !5
  %i.bg = load i32, ptr %i.bf, align 8, !range !11, !noalias !4296, !noundef !5
  %i.bh = icmp eq i32 %i.bg, 5
  br i1 %i.bh, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.j
  %.not.i.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.not.i.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.g

bb.n:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4297)
  store i64 0, ptr %i.bi, align 8, !alias.scope !4297, !noalias !4285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  %i.bj = call noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2A_NtB2A_5Nodes12ancestor_ids0ENCNvMs_NtB2C_5modelNtB47_13SemanticModel18current_statements0ENtB4_13SpecAdvanceBy15spec_advance_byCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef range(i64 0, -1) 0)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %bb.o, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !4299)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4300)
  call void @llvm.experimental.noalias.scope.decl(metadata !4301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4286
  store ptr %i.bk, ptr %i.k, align 8, !noalias !4302
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %.promoted.i.i.i.i.i.i = load i32, ptr %i.bl, align 8, !alias.scope !4303, !noalias !4304
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4305, !noalias !4304, !nonnull !5, !align !6 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %i.bo = phi i32 [ %i.bw, %bb.s ], [ %.promoted.i.i.i.i.i.i, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4306)
  store i32 0, ptr %i.bl, align 8, !alias.scope !4303, !noalias !4304
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i.i, label %bb.q

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4286
  br label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bp = load i64, ptr %i.bm, align 8, !noalias !4307, !noundef !5 ; 2 uses
  %i.bq = add i32 %i.bo, -1
  %i.br = zext i32 %i.bq to i64                   ; 3 uses
  %i.bs = icmp ugt i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !4307
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bn, align 8, !noalias !4307, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !noalias !4307, !noundef !5 ; 2 uses
  store i32 %i.bw, ptr %i.bl, align 8, !alias.scope !4303, !noalias !4304
  %i.bx = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtBV_13SemanticModel18current_statements0INtB7_5FnMutTNtNtBX_5nodes6NodeIdEE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef range(i32 1, 0) %i.bo), !noalias !4308
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not7.i.i.i.i.i.i, label %bb.p, label %bb.f

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCINvNtB2a_7helpers21on_conditional_branchINtNtB6_4skip4SkipINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3C_EEE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.f
  store i32 0, ptr %i.bl, align 8, !alias.scope !4290, !noalias !4291
  br label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i: ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i.i, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !4285, !noundef !5 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cb = load i32, ptr %i.ca, align 8, !range !35, !alias.scope !4285, !noundef !5
  %i.cc = add i32 %i.cb, -1
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %i.ce = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !4285, !nonnull !5, !noundef !5 ; 2 uses
  %i.ch = getelementptr inbounds nuw [120 x i8], ptr %i.cg, i64 %i.cd ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load i8, ptr %i.ci, align 8, !range !34, !noundef !5
  switch i8 %i.cj, label %default.unreachable [
    i8 0, label %bb.w
    i8 1, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i8 2, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
    i8 3, label %bb.v
    i8 4, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread30
    i8 5, label %bb.w
    i8 6, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28
  ]

bb.u:                                             ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter.exit.thread.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #35
  unreachable

default.unreachable:                              ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 25
  %i.cl = load i8, ptr %i.ck, align 1, !range !31, !noundef !5
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28, label %.split

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread30: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4285
  br label %bb.x

.split:                                           ; preds = %bb.v
  %i.cn = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved40in_immediate_eager_comprehension_context(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4285
  br i1 %i.cn, label %bb.x, label %.thread25

bb.w:                                             ; preds = %bb.t, %bb.t
  %i.co = call fastcc noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope(ptr nonnull %i.cg, i64 %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ch) ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread28: ; preds = %bb.m, %bb.l, %bb.l, %bb.l, %bb.e, %bb.t, %bb.t, %bb.t, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4285
  br label %.thread25

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit: ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i8, ptr %i.cp, align 8, !range !34, !noundef !5
  %i.cr = icmp eq i8 %i.cq, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4285
  br i1 %i.cr, label %bb.x, label %.thread25

bb.x:                                             ; preds = %.split, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit.thread30, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context.exit
  %i.cs = call noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12resolve_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.v, ptr noundef nonnull align 8 %1) ; 2 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %.thread25, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !5 ; 2 uses
  %i.cv = add i32 %i.cs, -1
  %i.cw = zext i32 %i.cv to i64                   ; 3 uses
  %i.cx = icmp ugt i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !5, !noundef !5
  %i.da = getelementptr inbounds nuw [72 x i8], ptr %i.cz, i64 %i.cw ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load i32, ptr %i.db, align 8, !range !22, !alias.scope !4309, !noalias !4310, !noundef !5
  %.off.i = add nsw i32 %i.dc, -14
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.aa, label %.thread25

bb.aa:                                            ; preds = %bb.z
  %i.dd = call noundef align 8 ptr @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB2_7Binding9statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.da, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.v) ; 5 uses
  %.not.i14 = icmp eq ptr %i.dd, null
  br i1 %.not.i14, label %.thread25, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 84
  %i.df = load i8, ptr %i.de, align 4, !range !29, !noundef !5 ; 4 uses
  %i.dg = icmp samesign ugt i8 %i.df, 1
  %i.dh = zext nneg i8 %i.df to i64
  %i.di = add nsw i64 %i.dh, -1
  %i.dj = select i1 %i.dg, i64 %i.di, i64 0
  switch i64 %i.dj, label %.thread25 [
    i64 16, label %bb.ad
    i64 17, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink.i = phi i64 [ 72, %bb.ac ], [ 36, %bb.ab ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sink.i
  %.sroa.04.0.i = load i8, ptr %i.dk, align 4, !range !15, !noundef !5
  %i.dl = trunc nuw i8 %.sroa.04.0.i to i1
  br i1 %i.dl, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit, label %.thread25

bb.ae:                                            ; preds = %bb.y
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @613) #35
  unreachable

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit: ; preds = %bb.ad
  %i.dm = add nsw i8 %i.df, -17
  %switch = icmp ult i8 %i.dm, 2
  br i1 %switch, label %bb.af, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit

bb.af:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !5 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 115292150460684698
  call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp eq i64 %i.do, 1
  br i1 %i.dq, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit

_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i: ; preds = %bb.af
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !5, !align !6, !noundef !5
  %i.dt = icmp eq i8 %i.df, 18
  %. = select i1 %i.dt, i64 56, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.
  %.sroa.0.0.i.i = load i32, ptr %i.du, align 8, !noalias !4311, !noundef !5
  %i.dv = call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds, i32 noundef %.sroa.0.0.i.i), !noalias !4312 ; 2 uses
  %i.dw = extractvalue { ptr, i64 } %i.dv, 0      ; 3 uses
  %i.dx = extractvalue { ptr, i64 } %i.dv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  %.idx = mul nuw nsw i64 %i.dx, 12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx ; 3 uses
  %i.dz = icmp eq i64 %i.dx, 0
  br i1 %i.dz, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %i.ea = icmp eq ptr %i.ec, %i.dy
  br i1 %i.ea, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i, %bb.ag
  %i.eb = phi ptr [ %i.ec, %bb.ag ], [ %i.dw, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 12 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 10
  %i.ee = load i8, ptr %i.ed, align 2, !range !44, !noalias !4313, !noundef !5 ; 2 uses
  %i.ef = and i8 %i.ee, 125
  %switch.selectcmp.i.not.i.i = icmp eq i8 %i.ef, 12
  br i1 %switch.selectcmp.i.not.i.i, label %bb.ag, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i: ; preds = %.lr.ph
  %.not7.i = icmp ne i8 %i.ee, 103
  %i.eg = icmp eq ptr %i.ec, %i.dy
  %or.cond = select i1 %.not7.i, i1 true, i1 %i.eg
  br i1 %or.cond, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, label %.lr.ph120

.preheader.i:                                     ; preds = %.lr.ph120
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ej, i64 12 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dy
  br i1 %i.ei, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, label %.lr.ph120

.lr.ph120:                                        ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i, %.preheader.i
  %i.ej = phi ptr [ %i.eh, %.preheader.i ], [ %i.ec, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 10
  %i.el = load i8, ptr %i.ek, align 2, !range !44, !noalias !4314, !noundef !5 ; 2 uses
  %i.em = and i8 %i.el, 125
  %switch.selectcmp.i.not.i12.i = icmp eq i8 %i.em, 12
  br i1 %switch.selectcmp.i.not.i12.i, label %.preheader.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i: ; preds = %.lr.ph120
  switch i8 %i.el, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit [
    i8 83, label %bb.ah
    i8 86, label %bb.ah
  ]

bb.ah:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i
  %i.en = load i32, ptr %i.eb, align 4, !noalias !4312, !noundef !5 ; 2 uses
  %i.eo = load i32, ptr %i.ej, align 4, !noalias !4312, !noundef !5 ; 2 uses
  %.not9.i = icmp ugt i32 %i.en, %i.eo
  br i1 %.not9.i, label %bb.ai, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit, !prof !9

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @713) #35, !noalias !4312
  unreachable

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range.exit: ; preds = %bb.ag, %.preheader.i, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i, %bb.ah, %bb.af, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit
  %.sroa.8.0 = phi i32 [ undef, %bb.af ], [ undef, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit ], [ undef, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i ], [ %i.eo, %bb.ah ], [ undef, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i ], [ undef, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i ], [ undef, %.preheader.i ], [ undef, %bb.ag ]
  %.sroa.6.0 = phi i32 [ undef, %bb.af ], [ undef, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement.exit ], [ undef, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i ], [ %i.en, %bb.ah ], [ undef, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_.exit.i ], [ undef, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_.exit.i ], [ undef, %.preheader.i ], [ undef, %bb.ag ]
end_hunk_4
begin_hunk_5_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69512find_generic:bb.a
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69515check_type_vars(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp ult i64 %i.d, 164703072086692426
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.idx = mul nuw nsw i64 %i.d, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %.not3.not.not.i.not = icmp eq ptr %i.j, %i.i
  br i1 %.not3.not.not.i.not, label %.lr.ph31.preheader, label %bb.c

.lr.ph31.preheader:                               ; preds = %bb.b, %bb.h
  br label %.lr.ph31

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 40
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !5550, !align !6, !noundef !5
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %bb.b, label %bb.f

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default.exit: ; preds = %.lr.ph33, %bb.a, %bb.g, %bb.h, %bb.f
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEEB1h_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.an, %bb.l ], [ %lpad.thr_comm, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEEB1h_.exit: ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1135
  %.sroa.01.0.copyload = load i8, ptr %i.o, align 1
  %i.p = trunc nuw i8 %.sroa.01.0.copyload to i1
  br i1 %i.p, label %bb.g, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default.exit

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_whileINtBa_9SkipWhileppENtNtNtBe_6traits8iterator8Iterator4next5checkRNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarNCNvB24_27non_default_follows_default0E0B2c_.exit.i.i.i: ; preds = %.lr.ph31
  br i1 %i.u, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_whileINtBa_9SkipWhileppENtNtNtBe_6traits8iterator8Iterator4next5checkRNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarNCNvB24_27non_default_follows_default0E0B2c_.exit.i.i.i
  %i.q = phi ptr [ %i.r, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_whileINtBa_9SkipWhileppENtNtNtBe_6traits8iterator8Iterator4next5checkRNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarNCNvB24_27non_default_follows_default0E0B2c_.exit.i.i.i ], [ %i.h, %.lr.ph31.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  %i.s = getelementptr i8, ptr %i.q, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !5551, !noalias !5552, !align !6, !noundef !5
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  %i.u = icmp eq ptr %i.r, %i.i                   ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_whileINtBa_9SkipWhileppENtNtNtBe_6traits8iterator8Iterator4next5checkRNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarNCNvB24_27non_default_follows_default0E0B2c_.exit.i.i.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph31
  br i1 %i.u, label %.loopexit, label %.lr.ph33

.preheader.i:                                     ; preds = %.lr.ph33
  %i.v = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %.not.not.not.i.not.not.i.not.i = icmp eq ptr %i.v, %i.i
  br i1 %.not.not.not.i.not.not.i.not.i, label %.loopexit, label %.lr.ph33

.lr.ph33:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %i.w = phi ptr [ %i.v, %.preheader.i ], [ %i.r, %.preheader.i.preheader ] ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 40
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !5551, !noalias !5553, !align !6, !noundef !5
  %.not.i.i.i8.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i8.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default.exit, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1137
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1136
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0.copyload.fr = freeze i8 %.sroa.4.0.copyload ; 2 uses
  %i.y = icmp eq i8 %.sroa.4.0.copyload.fr, 3
  %i.z = icmp ult i8 %.sroa.5.0.copyload, 13
  %i.aa = icmp ult i8 %.sroa.4.0.copyload.fr, 3
  %i.ab = select i1 %i.y, i1 %i.z, i1 %i.aa
  br i1 %i.ab, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !6, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !6, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2409
  %i.ah = load i8, ptr %i.ag, align 1, !range !15, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.lr.ph31.preheader, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default.exit

.loopexit:                                        ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_whileINtBa_9SkipWhileppENtNtNtBe_6traits8iterator8Iterator4next5checkRNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarNCNvB24_27non_default_follows_default0E0B2c_.exit.i.i.i, %.preheader.i, %.preheader.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtCs6Wt4yPw39th_9itertools9Itertools9unique_byReNCNvBL_15check_type_varss_0EBT_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %.loopexit
  %i.aj = invoke noundef i64 @_RNvXs_NtCs6Wt4yPw39th_9itertools11unique_implINtB4_8UniqueByINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEReNCNvB1E_15check_type_varss_0ENtNtNtNtB13_4iter6traits8iterator8Iterator5countB1M_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ak = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 164703072086692426
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.aj, %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br i1 %i.am, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEEB1h_.exit8

bb.n:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.o:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEEB1h_.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEEB1h_.exit8: ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEEB1h_.exit8, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEEB1h_.exit
  ret void

bb.q:                                             ; preds = %bb.i, %.loopexit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %1) #34
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5575)
  store i64 0, ptr %i.d, align 8, !alias.scope !5575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5576)
  %i.e = call noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2A_NtB2A_5Nodes12ancestor_ids0ENCNvMs_NtB2C_5modelNtB47_13SemanticModel18current_statements0ENtB4_13SpecAdvanceBy15spec_advance_byCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef range(i64 0, -1) 0)
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.h, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB6F_.exit

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5577
  call void @llvm.experimental.noalias.scope.decl(metadata !5578)
  call void @llvm.experimental.noalias.scope.decl(metadata !5579)
  call void @llvm.experimental.noalias.scope.decl(metadata !5580)
  %.promoted.i.i.i = load i32, ptr %i.ac, align 8, !alias.scope !5581, !noalias !5580 ; 2 uses
  %.not.i18.not.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not.i18.not.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB6F_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !5581, !noalias !5580, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noalias !5582, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %.val.i6.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !5583, !noalias !5579, !nonnull !5, !align !6 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i, i64 72
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B5G_.exit.backedge.i.i.i, %.lr.ph.i.i.i
  %i.k = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.r, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B5G_.exit.backedge.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5584)
  %i.l = add i32 %i.k, -1
  %i.m = zext i32 %i.l to i64                     ; 6 uses
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !5582
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !noalias !5582, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !noalias !5582, !noundef !5 ; 2 uses
  %i.s = load i64, ptr %i.i, align 8, !noalias !5585, !noundef !5 ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.m
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.j, align 8, !noalias !5585, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.m ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !7, !noalias !5585, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B5G_.exit.backedge.i.i.i, label %.split.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #35, !noalias !5585
  unreachable

.split.i.i.i:                                     ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !5585, !nonnull !5, !align !6, !noundef !5
  %i.aa = getelementptr i8, ptr %i.z, i64 84
  %.val5.i.i.i.i = load i8, ptr %i.aa, align 4, !range !29, !noalias !5585, !noundef !5
  %switch.i.i.i.i.i.i = icmp samesign ult i8 %.val5.i.i.i.i, 3
  br i1 %switch.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB6F_.exit, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B5G_.exit.backedge.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B5G_.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %bb.f
  %.not.i.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.not.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB6F_.exit, label %bb.c

bb.h:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5586)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5587)
  call void @llvm.experimental.noalias.scope.decl(metadata !5588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5577
  store ptr %i.ab, ptr %i.a, align 8, !noalias !5589
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.ac, align 8, !alias.scope !5590, !noalias !5591
  %.val.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !5592, !noalias !5591, !nonnull !5, !align !6 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %i.af = phi i32 [ %i.an, %bb.l ], [ %.promoted.i.i.i.i.i, %bb.h ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5593)
  %.not.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i, label %bb.j

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5577
  br label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB6F_.exit

bb.j:                                             ; preds = %bb.i
  %i.ag = load i64, ptr %i.ad, align 8, !noalias !5594, !noundef !5 ; 2 uses
  %i.ah = add i32 %i.af, -1
  %i.ai = zext i32 %i.ah to i64                   ; 3 uses
  %i.aj = icmp ugt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !5594
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.ae, align 8, !noalias !5594, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !noalias !5594, !noundef !5 ; 2 uses
  store i32 %i.an, ptr %i.ac, align 8, !alias.scope !5590, !noalias !5591
  %i.ao = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtBV_13SemanticModel18current_statements0INtB7_5FnMutTNtNtBX_5nodes6NodeIdEE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef range(i32 1, 0) %i.af), !noalias !5595
  %.not7.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not7.i.i.i.i.i, label %bb.i, label %bb.b

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB6F_.exit: ; preds = %.split.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B5G_.exit.backedge.i.i.i, %bb.b, %bb.a, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ false, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.thread7.i ], [ false, %bb.b ], [ false, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB1i_5modelNtB3J_13SemanticModel18current_statements0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB25_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B5G_.exit.backedge.i.i.i ], [ true, %.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69521expr_name_to_type_var(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !range !13, !alias.scope !5609, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !5609, !noundef !5
  %i.g = and i64 %i.f, 72057594037927935
  %i.h = icmp ult i8 %i.d, -48
  %i.i = zext i8 %i.d to i64
  %i.j = add nsw i64 %i.i, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 16)
  %.sroa.0.0.i = select i1 %i.h, i64 %spec.store.select.i, i64 %i.g
  %i.k = icmp ugt i8 %i.d, -49
  %i.l = load ptr, ptr %2, align 8, !alias.scope !5609
  %.sroa.01.0.i = select i1 %i.k, ptr %i.l, ptr %2
  %i.m = tail call { i32, i32 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel13lookup_symbol(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i) ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { i32, i32 } %i.m, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.s = add i32 %i.p, -1
  %i.t = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = zext i32 %i.s to i64                     ; 3 uses
  %i.v = icmp ugt i64 %i.r, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.x, i64 %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.aa = load i32, ptr %i.z, align 4, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.y, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @613) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5611)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !5612, !noalias !5613 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !5612, !noalias !5613, !nonnull !5
  br label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.h, %bb.e
  %i.af = phi i32 [ %i.al, %bb.h ], [ %i.aa, %bb.e ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.ag = add i32 %i.af, -1
  %i.ah = zext i32 %i.ag to i64                   ; 3 uses
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !5614
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ah ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !noalias !5614, !noundef !5
  %i.am = load i64, ptr %i.aj, align 8, !range !7, !noalias !5615, !noundef !5
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement.exit

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1k_5modelNtB33_13SemanticModel9statement0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @633, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @634) #35, !noalias !5610
  unreachable

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement.exit: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !5615, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 84
  %i.ar = load i8, ptr %i.aq, align 4, !range !29, !noundef !5
  %i.as = icmp eq i8 %i.ar, 6
  br i1 %i.as, label %bb.j, label %bb.y

bb.j:                                             ; preds = %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.av = load i32, ptr %i.au, align 8, !range !11, !noundef !5
  switch i32 %i.av, label %bb.k [
    i32 16, label %bb.l
    i32 26, label %bb.m
  ]

bb.k:                                             ; preds = %bb.r, %bb.q, %bb.m, %bb.j
  store i64 -2, ptr %0, align 8
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 4 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.az = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7)
  br i1 %i.az, label %bb.q, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  %i.bc = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.bb, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7)
  br i1 %i.bc, label %bb.x, label %bb.k

bb.n:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.be = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @894, i64 noundef 12)
  br i1 %i.be, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.bg = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 9)
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 -2, ptr %0, align 8
  br label %bb.w

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.sroa.013.0 = phi i8 [ 1, %bb.n ], [ 0, %bb.l ], [ 2, %bb.o ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5
  %.not33 = icmp eq i64 %i.bi, 0
  br i1 %.not33, label %bb.k, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.bk = load i32, ptr %i.bj, align 8, !range !11, !noundef !5
  %i.bl = icmp eq i32 %i.bk, 19
  br i1 %i.bl, label %bb.s, label %bb.k

bb.s:                                             ; preds = %bb.r
  %i.bm = tail call noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8 %i.ax, ptr noalias noundef nonnull readonly captures(address, read_provenance) @723, i64 noundef 7)
  %i.bn = tail call noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8 %i.ax, ptr noalias noundef nonnull readonly captures(address, read_provenance) @895, i64 noundef 5) ; 2 uses
  %.not35 = icmp eq ptr %i.bn, null
  br i1 %.not35, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bo = load i64, ptr %i.bh, align 8, !noundef !5 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 1
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bq = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.br = getelementptr inbounds nuw [72 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bq, ptr %i.a, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.bt, align 8
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtNtB2v_5slice4iter4IterB13_EEE9from_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.053.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx54, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u
  %.sroa.7.0 = phi i64 [ %.sroa.5.0.copyload, %bb.u ], [ undef, %bb.s ], [ undef, %bb.t ]
  %.sroa.6.0 = phi ptr [ %.sroa.4.0.copyload, %bb.u ], [ %i.bn, %bb.s ], [ undef, %bb.t ]
  %.sroa.0.0 = phi i64 [ %.sroa.053.0.copyload, %bb.u ], [ -9223372036854775808, %bb.s ], [ -1, %bb.t ]
  %i.bu = load i8, ptr %i.c, align 1, !range !13, !alias.scope !5616, !noundef !5 ; 3 uses
  %i.bv = load i64, ptr %i.e, align 8, !alias.scope !5616, !noundef !5
  %i.bw = and i64 %i.bv, 72057594037927935
  %i.bx = icmp ult i8 %i.bu, -48
  %i.by = zext i8 %i.bu to i64
  %i.bz = add nsw i64 %i.by, -192
  %spec.store.select.i36 = call i64 @llvm.umin.i64(i64 %i.bz, i64 16)
  %.sroa.0.0.i37 = select i1 %i.bx, i64 %spec.store.select.i36, i64 %i.bw
  %i.ca = icmp ugt i8 %i.bu, -49
  %i.cb = load ptr, ptr %2, align 8, !alias.scope !5616
  %.sroa.01.0.i38 = select i1 %i.ca, ptr %i.cb, ptr %2
end_hunk_5
begin_hunk_6_@_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep695NtB5_23TypeVarReferenceVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @1063, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 6, ptr %i.m, align 8
  store i64 -9223372036854775806, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7249, !noalias !7250, !noundef !5 ; 3 uses
  %i.r = load i64, ptr %0, align 8, !range !12, !alias.scope !7249, !noalias !7250, !noundef !5
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8push_mutBO_.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8grow_oneBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8push_mutBO_.exit unwind label %bb.g, !noalias !7250

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #34
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.aj, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8push_mutBO_.exit: ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !7249, !noalias !7250, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.y = add i64 %i.q, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !7249, !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.i:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aa = load i8, ptr %i.z, align 4, !range !31, !noundef !5
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  tail call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_exprNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69523TypeVarReferenceVisitorEB11_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %1)
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6, !noundef !5
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69521expr_name_to_type_var(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.ad, ptr noundef nonnull align 8 %i.ac)
  %i.ae = load i64, ptr %i.b, align 8, !range !7251, !noundef !5
  %.not = icmp eq i64 %i.ae, -2
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !7252, !noalias !7253, !noundef !5 ; 3 uses
  %i.ah = load i64, ptr %0, align 8, !range !12, !alias.scope !7252, !noalias !7253, !noundef !5
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.m, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8push_mutBO_.exit3

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8grow_oneBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8push_mutBO_.exit3 unwind label %bb.n, !noalias !7253

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #34
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8push_mutBO_.exit3: ; preds = %bb.l, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !7252, !noalias !7253, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.ao = add i64 %i.ag, 1
  store i64 %i.ao, ptr %i.af, align 8, !alias.scope !7252, !noalias !7253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ap, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8push_mutBO_.exit3, %bb.p, %bb.j, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarE8push_mutBO_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines11indentationNtB5_28UnexpectedIndentationCommentNtNtBf_9violation9Violation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !8, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 31
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) @1065, i64 32, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 32, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext15in_loop_context(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17current_statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.c)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.g = phi i64 [ %.pr, %bb.k ], [ 1, %bb.a ]    ; 2 uses
  %.sroa.01.0 = phi ptr [ %.sroa.04.0, %bb.k ], [ %i.d, %bb.a ] ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.h, !prof !25

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !7259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8, !noalias !7260
  %.promoted.i = load i32, ptr %i.f, align 8, !alias.scope !7261, !noalias !7262
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7259, !noalias !7262, !nonnull !5, !align !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.j = phi i32 [ %i.r, %bb.g ], [ %.promoted.i, %bb.c ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7263)
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.e

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.h, align 8, !noalias !7261, !noundef !5 ; 2 uses
  %i.l = add i32 %i.j, -1
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #35, !noalias !7261
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.i, align 8, !noalias !7261, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !noalias !7261, !noundef !5 ; 2 uses
  store i32 %i.r, ptr %i.f, align 8, !alias.scope !7261, !noalias !7262
  %i.s = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtBV_13SemanticModel18current_statements0INtB7_5FnMutTNtNtBX_5nodes6NodeIdEE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef range(i32 1, 0) %i.j), !noalias !7259 ; 2 uses
  %.not7.i = icmp eq ptr %i.s, null
  br i1 %.not7.i, label %bb.d, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.t = call fastcc noundef i64 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel18current_statements0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB77_13SpecAdvanceBy15spec_advance_by0E0B5A_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.b, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(8) %i.e)
  %.not15 = icmp eq i64 %i.t, 0
  br i1 %.not15, label %bb.j, label %.loopexit

bb.i:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit, %bb.j
  %.sroa.04.0 = phi ptr [ %i.s, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.aa, %bb.j ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 84
  %i.v = load i8, ptr %i.u, align 4, !range !29, !noundef !5 ; 2 uses
  %i.w = icmp samesign ugt i8 %i.v, 1
  %i.x = zext nneg i8 %i.v to i64
  %i.y = add nsw i64 %i.x, -1
  %i.z = select i1 %i.w, i64 %i.y, i64 0
  switch i64 %i.z, label %bb.k [
    i64 0, label %.loopexit
    i64 1, label %.loopexit
    i64 8, label %bb.l
    i64 9, label %bb.m
  ]

bb.j:                                             ; preds = %bb.h
  %i.aa = call fastcc noundef align 8 ptr @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(8) %i.e) ; 2 uses
  %.not16 = icmp eq ptr %i.aa, null
  br i1 %.not16, label %.loopexit, label %bb.i

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.i
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.b

bb.l:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24 ; 2 uses
  %i.ac = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNtB5_13SliceContains14slice_containsCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 8 %.sroa.01.0, ptr noundef nonnull align 8 %i.ac, i64 noundef %i.ae)
  br i1 %i.af, label %bb.k, label %.loopexit

bb.m:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %i.ah = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag)
  %i.ai = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  %i.ak = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNtB5_13SliceContains14slice_containsCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 8 %.sroa.01.0, ptr noundef nonnull align 8 %i.ah, i64 noundef %i.aj)
  br i1 %i.ak, label %bb.k, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.i, %bb.h, %bb.j, %bb.l, %bb.m, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit.thread
  %.sroa.0.0 = phi i1 [ false, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter.exit.thread ], [ true, %bb.l ], [ true, %bb.m ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext16in_async_context(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16in_async_context(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext18is_bound_parameter(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i32, ptr %i.c, align 8, !range !35, !noundef !5
  %i.e = add i32 %i.d, -1
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i8, ptr %i.k, align 8, !range !34, !noundef !5
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !6, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.r = tail call noundef zeroext i1 @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters8includes(ptr noundef nonnull align 8 %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i1 [ %i.r, %bb.d ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext19lazy_import_context(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker19lazy_import_context(ptr noundef nonnull align 8 %0)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext20has_nonlocal_binding(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = tail call { i32, i32 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel8nonlocal(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext20in_generator_context(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load i32, ptr %i.a, align 8, !range !35, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = add i32 %i.b, -1
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @618) #35
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.j
  %.sroa.5.011 = phi ptr [ %i.j, %bb.b ], [ %.sroa.5.1.ph, %bb.j ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.5.011, i64 104
  %i.l = load i32, ptr %i.k, align 8, !noalias !7266, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %i.l, -1
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp ugt i64 %i.d, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %i.n
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #35, !noalias !7266
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.f
  %.sroa.5.1.ph = phi ptr [ null, %bb.d ], [ %i.p, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.5.011, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !34, !noundef !5
  %i.s = icmp eq i8 %i.r, 3
  br i1 %i.s, label %bb.i, label %bb.j

_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.i, %bb.j
  %.not.i.lcssa = phi i1 [ true, %bb.i ], [ false, %bb.j ]
  ret i1 %.not.i.lcssa

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.5.011, i64 25
  %i.u = load i8, ptr %i.t, align 1, !range !31, !noundef !5
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.not.i.not = icmp eq ptr %.sroa.5.1.ph, null
  br i1 %.not.i.not, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21in_sync_comprehension(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load i32, ptr %i.a, align 8, !range !35, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = add i32 %i.b, -1
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %i.f
  br label %bb.d
end_hunk_6
begin_hunk_7_@llvm.vector.reduce.add.v2i64
!4045 = distinct !{!4045, !4017, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotes6TriviaEEINtB5_7ZipImplBW_B2b_E4nextB38_: argument 1:h.rot"}
!4046 = distinct !{!4046, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_quotes5rules19check_string_quotes24BadQuotesMultilineStringEBa_"}
!4047 = distinct !{!4047, !4046, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_quotes5rules19check_string_quotes24BadQuotesMultilineStringEBa_: argument 0"}
!4048 = distinct !{!4048, !"_RNvXs_NtCsEhZmuQNqkz_11ruff_linter9violationNtNtNtNtNtB6_5rules13flake8_quotes5rules19check_string_quotes24BadQuotesMultilineStringNtB4_9Violation7messageB6_"}
!4049 = distinct !{!4049, !4048, !"_RNvXs_NtCsEhZmuQNqkz_11ruff_linter9violationNtNtNtNtNtB6_5rules13flake8_quotes5rules19check_string_quotes24BadQuotesMultilineStringNtB4_9Violation7messageB6_: argument 0"}
!4050 = distinct !{!4050, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotesNtB4_24BadQuotesMultilineStringNtNtBc_9violation22AlwaysFixableViolation7message"}
!4051 = distinct !{!4051, !4050, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotesNtB4_24BadQuotesMultilineStringNtNtBc_9violation22AlwaysFixableViolation7message: argument 0"}
!4052 = distinct !{!4052, !4050, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotesNtB4_24BadQuotesMultilineStringNtNtBc_9violation22AlwaysFixableViolation7message: argument 1"}
!4053 = distinct !{!4053, !"_RNvXs_NtCsEhZmuQNqkz_11ruff_linter9violationNtNtNtNtNtB6_5rules13flake8_quotes5rules19check_string_quotes24BadQuotesMultilineStringNtB4_9Violation9fix_titleB6_"}
!4054 = distinct !{!4054, !4053, !"_RNvXs_NtCsEhZmuQNqkz_11ruff_linter9violationNtNtNtNtNtB6_5rules13flake8_quotes5rules19check_string_quotes24BadQuotesMultilineStringNtB4_9Violation9fix_titleB6_: argument 0"}
!4055 = distinct !{!4055, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotesNtB4_24BadQuotesMultilineStringNtNtBc_9violation22AlwaysFixableViolation9fix_title"}
!4056 = distinct !{!4056, !4055, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotesNtB4_24BadQuotesMultilineStringNtNtBc_9violation22AlwaysFixableViolation9fix_title: argument 1"}
!4057 = distinct !{!4057, !4055, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes5rules19check_string_quotesNtB4_24BadQuotesMultilineStringNtNtBc_9violation22AlwaysFixableViolation9fix_title: argument 0"}
!4058 = distinct !{!4058, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!4059 = distinct !{!4059, !4058, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!4060 = distinct !{!4060, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!4061 = distinct !{!4061, !4060, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4062 = distinct !{!4062, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!4063 = distinct !{!4063, !4062, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4064 = distinct !{!4064, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!4065 = distinct !{!4065, !4064, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4066 = distinct !{!4066, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!4067 = distinct !{!4067, !4066, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4068 = distinct !{!4068, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4069 = distinct !{!4069, !4068, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 1"}
!4070 = distinct !{!4070, !4068, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4071 = distinct !{!4071, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!4072 = distinct !{!4072, !4071, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!4073 = distinct !{!4073, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!4074 = distinct !{!4074, !4073, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!4075 = distinct !{!4075, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw"}
!4076 = distinct !{!4076, !4075, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw: argument 0"}
!4077 = distinct !{!4077, !"_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in"}
!4078 = distinct !{!4078, !4077, !"_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in: argument 0"}
!4079 = distinct !{!4079, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr"}
!4080 = distinct !{!4080, !4079, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr: argument 0"}
!4081 = distinct !{!4081, !"_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in"}
!4082 = distinct !{!4082, !4081, !"_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in: argument 0"}
!4083 = distinct !{!4083, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr"}
!4084 = distinct !{!4084, !4083, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr: argument 0"}
!4085 = distinct !{!4085, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!4086 = distinct !{!4086, !4085, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!4087 = distinct !{!4087, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!4088 = distinct !{!4088, !4087, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4089 = distinct !{!4089, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!4090 = distinct !{!4090, !4089, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4091 = distinct !{!4091, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!4092 = distinct !{!4092, !4091, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4093 = distinct !{!4093, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!4094 = distinct !{!4094, !4093, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4095 = distinct !{!4095, !4068, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 1:h.rot"}
!4096 = !{!4001}
!4097 = !{!4003}
!4098 = !{!4004}
!4099 = !{!4006}
!4100 = !{!4004, !4003}
!4101 = !{!4008}
!4102 = !{!4006, !4004, !4003}
!4103 = !{!4012, !4010}
!4104 = !{!4016, !4014}
!4105 = !{!4018}
!4106 = !{!4020, !4018}
!4107 = !{!4021, !4001}
!4108 = !{!4023}
!4109 = !{!4023, !4018}
!4110 = !{!4024, !4021, !4001}
!4111 = !{!4023, !4021, !4018}
!4112 = !{!4026}
!4113 = !{!4028}
!4114 = !{!4030}
!4115 = !{!4032}
!4116 = !{!4034}
!4117 = !{!4036}
!4118 = !{!4038}
!4119 = !{!4040}
!4120 = !{!4042}
!4121 = !{!4044}
!4122 = !{!4020, !4045}
!4123 = !{!4047}
!4124 = !{!4047, !4001}
!4125 = !{!4049}
!4126 = !{!4051}
!4127 = !{!4051, !4052, !4049, !4047, !4001}
!4128 = !{!4051, !4052, !4049, !4047}
!4129 = !{!4051, !4049}
!4130 = !{!4052, !4047, !4001}
!4131 = !{!4057, !4056, !4054, !4047, !4001}
!4132 = !{!4054}
!4133 = !{!4057, !4056, !4054, !4047}
!4134 = !{!4059}
!4135 = !{!4061}
!4136 = !{!4063}
!4137 = !{!4065}
!4138 = !{!4067}
!4139 = !{!4069}
!4140 = !{!4070}
!4141 = !{!4070, !4069}
!4142 = !{!4072}
!4143 = !{!4074}
!4144 = !{!4076}
!4145 = !{!4080, !4078}
!4146 = !{!4084, !4082}
!4147 = !{!4086}
!4148 = !{!4088}
!4149 = !{!4090}
!4150 = !{!4092}
!4151 = !{!4094}
!4152 = !{!4095}
!4153 = distinct !{!4153, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4154 = distinct !{!4154, !4153, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4155 = distinct !{!4155, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4156 = distinct !{!4156, !4155, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4157 = !{!4154}
!4158 = !{!4156}
!4159 = distinct !{!4159, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call"}
!4160 = distinct !{!4160, !4159, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler12is_open_call: argument 0"}
!4161 = distinct !{!4161, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4162 = distinct !{!4162, !4161, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4163 = distinct !{!4163, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4164 = distinct !{!4164, !4163, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4165 = distinct !{!4165, !"_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq"}
!4166 = distinct !{!4166, !4165, !"_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq: argument 0"}
!4167 = distinct !{!4167, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4168 = distinct !{!4168, !4167, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4169 = distinct !{!4169, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack"}
!4170 = distinct !{!4170, !4169, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack: argument 0"}
!4171 = distinct !{!4171, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!4172 = distinct !{!4172, !4171, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4173 = distinct !{!4173, !4171, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4174 = distinct !{!4174, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4175 = distinct !{!4175, !4174, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4176 = distinct !{!4176, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack0Bb_"}
!4177 = distinct !{!4177, !4176, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler16match_exit_stack0Bb_: argument 0"}
!4178 = distinct !{!4178, !"_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq"}
!4179 = distinct !{!4179, !4178, !"_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq: argument 0"}
!4180 = distinct !{!4180, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4181 = distinct !{!4181, !4180, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4182 = distinct !{!4182, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack"}
!4183 = distinct !{!4183, !4182, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack: argument 0"}
!4184 = distinct !{!4184, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!4185 = distinct !{!4185, !4184, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4186 = distinct !{!4186, !4184, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4187 = distinct !{!4187, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4188 = distinct !{!4188, !4187, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4189 = distinct !{!4189, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack0Bb_"}
!4190 = distinct !{!4190, !4189, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules30open_file_with_context_handler22match_async_exit_stack0Bb_: argument 0"}
!4191 = !{!4160}
!4192 = !{!4162}
!4193 = !{!4164}
!4194 = !{!4168, !4166}
!4195 = !{!4170}
!4196 = !{!4172}
!4197 = !{!4172, !4173, !4170}
!4198 = !{!4175, !4172}
!4199 = !{!4173, !4170}
!4200 = !{!4175}
!4201 = !{!4177}
!4202 = !{!4181, !4179}
!4203 = !{!4183}
!4204 = !{!4185}
!4205 = !{!4185, !4186, !4183}
!4206 = !{!4188, !4185}
!4207 = !{!4186, !4183}
!4208 = !{!4188}
!4209 = !{!4190}
!4210 = distinct !{!4210, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules10banned_api23banned_attribute_access0Bb_"}
!4211 = distinct !{!4211, !4210, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules10banned_api23banned_attribute_access0Bb_: argument 1"}
!4212 = distinct !{!4212, !4210, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules10banned_api23banned_attribute_access0Bb_: argument 0"}
!4213 = distinct !{!4213, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENCNCNvNtNtB1U_5rules10banned_api23banned_attribute_access00E0B1Y_"}
!4214 = distinct !{!4214, !4213, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENCNCNvNtNtB1U_5rules10banned_api23banned_attribute_access00E0B1Y_: argument 0"}
!4215 = distinct !{!4215, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2M_4find5checkTRBV_RB1w_ENCNCNvNtNtB1A_5rules10banned_api23banned_attribute_access00E0INtNtNtB2U_3ops12control_flow11ControlFlowB4d_EEB1E_"}
!4216 = distinct !{!4216, !4215, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2M_4find5checkTRBV_RB1w_ENCNCNvNtNtB1A_5rules10banned_api23banned_attribute_access00E0INtNtNtB2U_3ops12control_flow11ControlFlowB4d_EEB1E_: argument 1"}
!4217 = distinct !{!4217, !4215, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2M_4find5checkTRBV_RB1w_ENCNCNvNtNtB1A_5rules10banned_api23banned_attribute_access00E0INtNtNtB2U_3ops12control_flow11ControlFlowB4d_EEB1E_: argument 0"}
!4218 = distinct !{!4218, !4213, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings6ApiBanENCNCNvNtNtB1U_5rules10banned_api23banned_attribute_access00E0B1Y_: argument 1"}
!4219 = distinct !{!4219, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter"}
!4220 = distinct !{!4220, !4219, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4221 = distinct !{!4221, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter"}
!4222 = distinct !{!4222, !4221, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4223 = distinct !{!4223, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter"}
!4224 = distinct !{!4224, !4223, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4225 = distinct !{!4225, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter"}
!4226 = distinct !{!4226, !4225, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4227 = !{!4211}
!4228 = !{!4212, !4211}
!4229 = !{!4214}
!4230 = !{!4214, !4218, !4217, !4216, !4212, !4211}
!4231 = !{!4218}
!4232 = !{!4214, !4218}
!4233 = !{!4222, !4220}
!4234 = !{!4226, !4224, !4211}
!4235 = !{!4212}
!4236 = distinct !{!4236, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context"}
!4237 = distinct !{!4237, !4236, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved31is_immediate_resolution_context: argument 0"}
!4238 = distinct !{!4238, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter"}
!4239 = distinct !{!4239, !4238, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5J_7helpers21on_conditional_branchBN_E0E0INtNtNtBb_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4240 = distinct !{!4240, !"_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter"}
!4241 = distinct !{!4241, !4240, !"_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4242 = distinct !{!4242, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4243 = distinct !{!4243, !4242, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4244 = distinct !{!4244, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8find_mapRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4c_13SemanticModel18current_statements0ECsEhZmuQNqkz_11ruff_linter"}
!4245 = distinct !{!4245, !4244, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8find_mapRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4c_13SemanticModel18current_statements0ECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4246 = distinct !{!4246, !4244, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8find_mapRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4c_13SemanticModel18current_statements0ECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4247 = distinct !{!4247, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1T_NtB1T_5Nodes12ancestor_ids0ENCNvMs_NtB1V_5modelNtB3q_13SemanticModel18current_statements0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4j_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5r_7helpers21on_conditional_branchINtNtB8_4skip4SkipBV_EE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter"}
!4248 = distinct !{!4248, !4247, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1T_NtB1T_5Nodes12ancestor_ids0ENCNvMs_NtB1V_5modelNtB3q_13SemanticModel18current_statements0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4j_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCINvNtB5r_7helpers21on_conditional_branchINtNtB8_4skip4SkipBV_EE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4249 = distinct !{!4249, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvMs_NtB1a_5modelNtB5Q_13SemanticModel18current_statements0NCINvNvB2y_3any5checkB4c_NCINvNtB4h_7helpers21on_conditional_branchINtNtB3n_4skip4SkipINtB3l_9FilterMapB3_B5J_EEE0E0E0B52_ECsEhZmuQNqkz_11ruff_linter"}
!4250 = distinct !{!4250, !4249, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvMs_NtB1a_5modelNtB5Q_13SemanticModel18current_statements0NCINvNvB2y_3any5checkB4c_NCINvNtB4h_7helpers21on_conditional_branchINtNtB3n_4skip4SkipINtB3l_9FilterMapB3_B5J_EEE0E0E0B52_ECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4251 = distinct !{!4251, !4249, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvMs_NtB1a_5modelNtB5Q_13SemanticModel18current_statements0NCINvNvB2y_3any5checkB4c_NCINvNtB4h_7helpers21on_conditional_branchINtNtB3n_4skip4SkipINtB3l_9FilterMapB3_B5J_EEE0E0E0B52_ECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4252 = distinct !{!4252, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4253 = distinct !{!4253, !4252, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4254 = distinct !{!4254, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!4255 = distinct !{!4255, !4254, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4256 = distinct !{!4256, !4254, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4257 = distinct !{!4257, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4258 = distinct !{!4258, !4257, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4259 = distinct !{!4259, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement"}
!4260 = distinct !{!4260, !4259, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement: argument 0"}
!4261 = distinct !{!4261, !4259, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved21lazy_import_statement: argument 1"}
!4262 = distinct !{!4262, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range"}
!4263 = distinct !{!4263, !4262, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range: argument 1"}
!4264 = distinct !{!4264, !4262, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range: argument 0"}
!4265 = distinct !{!4265, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_"}
!4266 = distinct !{!4266, !4265, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_range0EB2y_: argument 0"}
!4267 = distinct !{!4267, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_"}
!4268 = distinct !{!4268, !4267, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved24lazy_import_prefix_ranges_0EB2y_: argument 0"}
!4269 = distinct !{!4269, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter"}
!4270 = distinct !{!4270, !4269, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter: argument 1"}
!4271 = distinct !{!4271, !4269, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4272 = distinct !{!4272, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved29LazyImportImmediatelyResolvedEBa_"}
!4273 = distinct !{!4273, !4272, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved29LazyImportImmediatelyResolvedEBa_: argument 1"}
!4274 = distinct !{!4274, !4272, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved29LazyImportImmediatelyResolvedEBa_: argument 0"}
!4275 = distinct !{!4275, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved29LazyImportImmediatelyResolvedNtNtBc_9violation9Violation15into_diagnosticBc_"}
!4276 = distinct !{!4276, !4275, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolved29LazyImportImmediatelyResolvedNtNtBc_9violation9Violation15into_diagnosticBc_: argument 0"}
!4277 = distinct !{!4277, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB2_29LazyImportImmediatelyResolvedNtNtBa_9violation9Violation7message"}
!4278 = distinct !{!4278, !4277, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB2_29LazyImportImmediatelyResolvedNtNtBa_9violation9Violation7message: argument 1"}
!4279 = distinct !{!4279, !4277, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB2_29LazyImportImmediatelyResolvedNtNtBa_9violation9Violation7message: argument 0"}
!4280 = distinct !{!4280, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB2_29LazyImportImmediatelyResolvedNtNtBa_9violation9Violation9fix_title"}
!4281 = distinct !{!4281, !4280, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB2_29LazyImportImmediatelyResolvedNtNtBa_9violation9Violation9fix_title: argument 0"}
!4282 = distinct !{!4282, !4280, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB2_29LazyImportImmediatelyResolvedNtNtBa_9violation9Violation9fix_title: argument 1"}
!4283 = distinct !{!4283, !"_RNCNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB4_29LazyImportImmediatelyResolvedNtNtBc_9violation9Violation9fix_title0Bc_"}
!4284 = distinct !{!4284, !4283, !"_RNCNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules32lazy_import_immediately_resolvedNtB4_29LazyImportImmediatelyResolvedNtNtBc_9violation9Violation9fix_title0Bc_: argument 0"}
!4285 = !{!4237}
!4286 = !{!4246, !4245, !4243, !4241, !4239, !4237}
!4287 = !{!4248}
!4288 = !{!4250}
!4289 = !{!4251}
!4290 = !{!4253, !4250, !4248, !4239}
!4291 = !{!4251, !4237}
!4292 = !{!4253, !4250, !4251, !4248}
!4293 = !{!4251, !4248, !4239}
!4294 = !{!4250, !4237}
!4295 = !{!4253}
!4296 = !{!4250, !4251, !4248}
!4297 = !{!4239}
!4298 = !{!4241}
!4299 = !{!4243}
!4300 = !{!4246}
!4301 = !{!4255}
!4302 = !{!4255, !4256, !4246, !4245, !4243, !4241, !4239, !4237}
!4303 = !{!4258, !4255, !4246, !4243, !4241, !4239}
!4304 = !{!4256, !4245, !4237}
!4305 = !{!4255, !4246, !4243, !4241, !4239}
!4306 = !{!4258}
!4307 = !{!4258, !4255, !4246}
!4308 = !{!4255, !4246}
!4309 = !{!4260}
!4310 = !{!4261}
!4311 = !{!4264, !4263}
!4312 = !{!4264}
!4313 = !{!4266, !4264}
!4314 = !{!4268, !4264}
!4315 = !{!4271, !4270}
!4316 = !{!4271}
!4317 = !{!4274, !4273}
!4318 = !{!4274}
!4319 = !{!4276}
!4320 = !{!4276, !4274, !4273}
!4321 = !{!4279, !4278, !4276, !4274, !4273}
!4322 = !{!4281}
!4323 = !{!4282}
!4324 = !{!4282, !4276}
!4325 = !{!4281, !4274, !4273}
!4326 = !{!4282, !4276, !4274, !4273}
!4327 = !{!4284, !4281, !4282, !4276, !4274, !4273}
!4328 = !{!4284, !4281, !4282, !4274, !4273}
!4329 = !{!4273}
!4330 = distinct !{!4330, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4331 = distinct !{!4331, !4330, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4332 = distinct !{!4332, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope"}
!4333 = distinct !{!4333, !4332, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope: argument 0"}
!4334 = !{!4331}
!4335 = !{!4333}
!4336 = distinct !{!4336, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules20flake8_type_checking5rules26typing_only_runtime_import31TypingOnlyStandardLibraryImportEBa_"}
!4337 = distinct !{!4337, !4336, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules20flake8_type_checking5rules26typing_only_runtime_import31TypingOnlyStandardLibraryImportEBa_: argument 1"}
!4338 = distinct !{!4338, !4336, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules20flake8_type_checking5rules26typing_only_runtime_import31TypingOnlyStandardLibraryImportEBa_: argument 0"}
!4339 = distinct !{!4339, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_import31TypingOnlyStandardLibraryImportNtNtBc_9violation9Violation15into_diagnosticBc_"}
!4340 = distinct !{!4340, !4339, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_import31TypingOnlyStandardLibraryImportNtNtBc_9violation9Violation15into_diagnosticBc_: argument 0"}
!4341 = distinct !{!4341, !"_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB5_31TypingOnlyStandardLibraryImportNtNtBd_9violation9Violation7message"}
!4342 = distinct !{!4342, !4341, !"_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB5_31TypingOnlyStandardLibraryImportNtNtBd_9violation9Violation7message: argument 1"}
!4343 = distinct !{!4343, !4341, !"_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB5_31TypingOnlyStandardLibraryImportNtNtBd_9violation9Violation7message: argument 0"}
!4344 = distinct !{!4344, !"_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB5_31TypingOnlyStandardLibraryImportNtNtBd_9violation9Violation9fix_title"}
!4345 = distinct !{!4345, !4344, !"_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB5_31TypingOnlyStandardLibraryImportNtNtBd_9violation9Violation9fix_title: argument 0"}
!4346 = distinct !{!4346, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyThirdPartyImportEBa_"}
!4347 = distinct !{!4347, !4346, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyThirdPartyImportEBa_: argument 1"}
!4348 = distinct !{!4348, !4346, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyThirdPartyImportEBa_: argument 0"}
!4349 = distinct !{!4349, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyThirdPartyImportNtNtBc_9violation9Violation15into_diagnosticBc_"}
!4350 = distinct !{!4350, !4349, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyThirdPartyImportNtNtBc_9violation9Violation15into_diagnosticBc_: argument 0"}
!4351 = distinct !{!4351, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB4_26TypingOnlyThirdPartyImportNtNtBc_9violation9Violation7message"}
!4352 = distinct !{!4352, !4351, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB4_26TypingOnlyThirdPartyImportNtNtBc_9violation9Violation7message: argument 1"}
!4353 = distinct !{!4353, !4351, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB4_26TypingOnlyThirdPartyImportNtNtBc_9violation9Violation7message: argument 0"}
!4354 = distinct !{!4354, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB4_26TypingOnlyThirdPartyImportNtNtBc_9violation9Violation9fix_title"}
!4355 = distinct !{!4355, !4354, !"_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB4_26TypingOnlyThirdPartyImportNtNtBc_9violation9Violation9fix_title: argument 0"}
!4356 = distinct !{!4356, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyFirstPartyImportEBa_"}
!4357 = distinct !{!4357, !4356, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyFirstPartyImportEBa_: argument 1"}
!4358 = distinct !{!4358, !4356, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyFirstPartyImportEBa_: argument 0"}
!4359 = distinct !{!4359, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyFirstPartyImportNtNtBc_9violation9Violation15into_diagnosticBc_"}
!4360 = distinct !{!4360, !4359, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_import26TypingOnlyFirstPartyImportNtNtBc_9violation9Violation15into_diagnosticBc_: argument 0"}
!4361 = distinct !{!4361, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB2_26TypingOnlyFirstPartyImportNtNtBa_9violation9Violation7message"}
!4362 = distinct !{!4362, !4361, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB2_26TypingOnlyFirstPartyImportNtNtBa_9violation9Violation7message: argument 1"}
!4363 = distinct !{!4363, !4361, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB2_26TypingOnlyFirstPartyImportNtNtBa_9violation9Violation7message: argument 0"}
!4364 = distinct !{!4364, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB2_26TypingOnlyFirstPartyImportNtNtBa_9violation9Violation9fix_title"}
!4365 = distinct !{!4365, !4364, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_importNtB2_26TypingOnlyFirstPartyImportNtNtBa_9violation9Violation9fix_title: argument 0"}
!4366 = !{!4338, !4337}
!4367 = !{!4340, !4338, !4337}
!4368 = !{!4343, !4342, !4340, !4338, !4337}
!4369 = !{!4345}
!4370 = !{!4345, !4340, !4338, !4337}
!4371 = !{!4345, !4338, !4337}
!4372 = !{!4348, !4347}
!4373 = !{!4350, !4348, !4347}
!4374 = !{!4353, !4352, !4350, !4348, !4347}
!4375 = !{!4355}
!4376 = !{!4355, !4350, !4348, !4347}
!4377 = !{!4355, !4348, !4347}
!4378 = !{!4358, !4357}
!4379 = !{!4360, !4358, !4357}
!4380 = !{!4363, !4362, !4360, !4358, !4357}
!4381 = !{!4365}
!4382 = !{!4365, !4360, !4358, !4357}
!4383 = !{!4365, !4358, !4357}
!4384 = distinct !{!4384, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_import11fix_imports"}
!4385 = distinct !{!4385, !4384, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_import11fix_imports: argument 0"}
!4386 = distinct !{!4386, !4384, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules26typing_only_runtime_import11fix_imports: argument 1"}
!4387 = distinct !{!4387, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement"}
!4388 = distinct !{!4388, !4387, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement: argument 0"}
!4389 = distinct !{!4389, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!4390 = distinct !{!4390, !4389, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4391 = distinct !{!4391, !4389, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4392 = distinct !{!4392, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4393 = distinct !{!4393, !4392, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4394 = distinct !{!4394, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16parent_statement"}
!4395 = distinct !{!4395, !4394, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16parent_statement: argument 0"}
!4396 = distinct !{!4396, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel16parent_statement0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB75_13SpecAdvanceBy15spec_advance_by0E0B5A_ECsEhZmuQNqkz_11ruff_linter"}
!4397 = distinct !{!4397, !4396, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel16parent_statement0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB75_13SpecAdvanceBy15spec_advance_by0E0B5A_ECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4398 = distinct !{!4398, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4399 = distinct !{!4399, !4398, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4400 = distinct !{!4400, !4396, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel16parent_statement0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB75_13SpecAdvanceBy15spec_advance_by0E0B5A_ECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4401 = distinct !{!4401, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel16parent_statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!4402 = distinct !{!4402, !4401, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel16parent_statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4403 = distinct !{!4403, !4401, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel16parent_statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4404 = distinct !{!4404, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!4405 = distinct !{!4405, !4404, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4406 = distinct !{!4406, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENCNvNtNtB1l_5rules26typing_only_runtime_import11fix_importss_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB3G_6min_by4foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYB4I_NtNtBc_3cmp3Ord3cmpE0EB1p_"}
!4407 = distinct !{!4407, !4406, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENCNvNtNtB1l_5rules26typing_only_runtime_import11fix_importss_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB3G_6min_by4foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYB4I_NtNtBc_3cmp3Ord3cmpE0EB1p_: argument 0"}
!4408 = distinct !{!4408, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENCNvNtNtB1q_5rules26typing_only_runtime_import11fix_importss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_"}
!4409 = distinct !{!4409, !4408, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENCNvNtNtB1q_5rules26typing_only_runtime_import11fix_importss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_: argument 0"}
!4410 = distinct !{!4410, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_"}
!4411 = distinct !{!4411, !4410, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!4412 = distinct !{!4412, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtBU_5rules26typing_only_runtime_import11fix_importss0_0EBY_"}
!4413 = distinct !{!4413, !4412, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtBU_5rules26typing_only_runtime_import11fix_importss0_0EBY_: argument 0"}
!4414 = distinct !{!4414, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEINtNtNtBa_7sources4once4OnceB1j_EENtNtNtBa_6traits8iterator8Iterator5chainINtNtCscdodAO9FK5_5alloc3vec3VecB1j_EECsEhZmuQNqkz_11ruff_linter"}
!4415 = distinct !{!4415, !4414, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEINtNtNtBa_7sources4once4OnceB1j_EENtNtNtBa_6traits8iterator8Iterator5chainINtNtCscdodAO9FK5_5alloc3vec3VecB1j_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4416 = distinct !{!4416, !4414, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEINtNtNtBa_7sources4once4OnceB1j_EENtNtNtBa_6traits8iterator8Iterator5chainINtNtCscdodAO9FK5_5alloc3vec3VecB1j_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4417 = distinct !{!4417, !4414, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBc_6option8IntoIterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEINtNtNtBa_7sources4once4OnceB1j_EENtNtNtBa_6traits8iterator8Iterator5chainINtNtCscdodAO9FK5_5alloc3vec3VecB1j_EECsEhZmuQNqkz_11ruff_linter: argument 2"}
!4418 = distinct !{!4418, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEINtNtBc_6option8IntoIterB1n_EENtNtNtBa_6traits8iterator8Iterator5chainBV_ECsEhZmuQNqkz_11ruff_linter"}
!4419 = distinct !{!4419, !4418, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEINtNtBc_6option8IntoIterB1n_EENtNtNtBa_6traits8iterator8Iterator5chainBV_ECsEhZmuQNqkz_11ruff_linter: argument 1"}
!4420 = distinct !{!4420, !4418, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEINtNtBc_6option8IntoIterB1n_EENtNtNtBa_6traits8iterator8Iterator5chainBV_ECsEhZmuQNqkz_11ruff_linter: argument 2"}
!4421 = distinct !{!4421, !4418, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEINtNtBc_6option8IntoIterB1n_EENtNtNtBa_6traits8iterator8Iterator5chainBV_ECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4422 = distinct !{!4422, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter"}
!4423 = distinct !{!4423, !4422, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4424 = distinct !{!4424, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_"}
!4425 = distinct !{!4425, !4424, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_: argument 1"}
!4426 = distinct !{!4426, !4424, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_: argument 0"}
!4427 = distinct !{!4427, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter"}
!4428 = distinct !{!4428, !4427, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter: argument 1"}
!4429 = distinct !{!4429, !4427, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4430 = distinct !{!4430, !"_RNvXsd_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut"}
!4431 = distinct !{!4431, !4430, !"_RNvXsd_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut: argument 0"}
!4432 = distinct !{!4432, !"_RNvXse_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!4433 = distinct !{!4433, !4432, !"_RNvXse_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!4434 = distinct !{!4434, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE8push_mutCsEhZmuQNqkz_11ruff_linter"}
!4435 = distinct !{!4435, !4434, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4436 = distinct !{!4436, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!4437 = distinct !{!4437, !4436, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4438 = distinct !{!4438, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!4439 = distinct !{!4439, !4438, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4440 = distinct !{!4440, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!4441 = distinct !{!4441, !4440, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4442 = distinct !{!4442, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!4443 = distinct !{!4443, !4442, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4444 = distinct !{!4444, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!4445 = distinct !{!4445, !4444, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4446 = distinct !{!4446, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!4447 = distinct !{!4447, !4446, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4448 = distinct !{!4448, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter"}
!4449 = distinct !{!4449, !4448, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4450 = distinct !{!4450, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_"}
!4451 = distinct !{!4451, !4450, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_: argument 0"}
!4452 = distinct !{!4452, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!4453 = distinct !{!4453, !4452, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4454 = distinct !{!4454, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!4455 = distinct !{!4455, !4454, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4456 = distinct !{!4456, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!4457 = distinct !{!4457, !4456, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4458 = distinct !{!4458, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter"}
!4459 = distinct !{!4459, !4458, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4460 = distinct !{!4460, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!4461 = distinct !{!4461, !4460, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4462 = distinct !{!4462, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!4463 = distinct !{!4463, !4462, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4464 = distinct !{!4464, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!4465 = distinct !{!4465, !4464, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4466 = distinct !{!4466, !4424, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_: argument 1:h.rot"}
!4467 = distinct !{!4467, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_"}
!4468 = distinct !{!4468, !4467, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_: argument 1"}
!4469 = distinct !{!4469, !4467, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7imports13ImportBindingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB13_: argument 0"}
!4470 = distinct !{!4470, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter"}
!4471 = distinct !{!4471, !4470, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter: argument 1"}
!4472 = distinct !{!4472, !4470, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4473 = distinct !{!4473, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEECsEhZmuQNqkz_11ruff_linter"}
!4474 = distinct !{!4474, !4473, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4475 = distinct !{!4475, !"_RNvXsd_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut"}
!4476 = distinct !{!4476, !4475, !"_RNvXsd_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut: argument 0"}
!4477 = distinct !{!4477, !"_RNvXse_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!4478 = distinct !{!4478, !4477, !"_RNvXse_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!4479 = distinct !{!4479, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE8push_mutCsEhZmuQNqkz_11ruff_linter"}
!4480 = distinct !{!4480, !4479, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4481 = distinct !{!4481, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!4482 = distinct !{!4482, !4481, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4483 = distinct !{!4483, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!4484 = distinct !{!4484, !4483, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4485 = distinct !{!4485, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!4486 = distinct !{!4486, !4485, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4487 = distinct !{!4487, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!4488 = distinct !{!4488, !4487, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4489 = distinct !{!4489, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!4490 = distinct !{!4490, !4489, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4491 = distinct !{!4491, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!4492 = distinct !{!4492, !4491, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4493 = distinct !{!4493, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter"}
!4494 = distinct !{!4494, !4493, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4495 = distinct !{!4495, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_"}
!4496 = distinct !{!4496, !4495, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_: argument 0"}
!4497 = distinct !{!4497, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!4498 = distinct !{!4498, !4497, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4499 = distinct !{!4499, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!4500 = distinct !{!4500, !4499, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4501 = distinct !{!4501, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!4502 = distinct !{!4502, !4501, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!4503 = distinct !{!4503, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter"}
!4504 = distinct !{!4504, !4503, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4505 = distinct !{!4505, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!4506 = distinct !{!4506, !4505, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!4507 = distinct !{!4507, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!4508 = distinct !{!4508, !4507, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
end_hunk_7
begin_hunk_8_@llvm.vector.reduce.add.v2i64
!5361 = distinct !{!5361, !5360, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5362 = distinct !{!5362, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement"}
!5363 = distinct !{!5363, !5362, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement: argument 0"}
!5364 = distinct !{!5364, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!5365 = distinct !{!5365, !5364, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!5366 = distinct !{!5366, !5364, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5367 = distinct !{!5367, !"_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportEBa_"}
!5368 = distinct !{!5368, !5367, !"_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportEBa_: argument 0"}
!5369 = distinct !{!5369, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportEBa_"}
!5370 = distinct !{!5370, !5369, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportEBa_: argument 0"}
!5371 = distinct !{!5371, !5367, !"_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportEBa_: argument 1"}
!5372 = distinct !{!5372, !5369, !"_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportEBa_: argument 1"}
!5373 = distinct !{!5373, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportNtNtBc_9violation9Violation15into_diagnosticBc_"}
!5374 = distinct !{!5374, !5373, !"_RNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportNtNtBc_9violation9Violation15into_diagnosticBc_: argument 0"}
!5375 = distinct !{!5375, !"_RNvXs_NtCsEhZmuQNqkz_11ruff_linter9violationNtNtNtNtNtB6_5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportNtB4_9Violation9fix_titleB6_"}
!5376 = distinct !{!5376, !5375, !"_RNvXs_NtCsEhZmuQNqkz_11ruff_linter9violationNtNtNtNtNtB6_5rules9pyupgrade5rules25unnecessary_future_import23UnnecessaryFutureImportNtB4_9Violation9fix_titleB6_: argument 0"}
!5377 = distinct !{!5377, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_importNtB2_23UnnecessaryFutureImportNtNtBa_9violation22AlwaysFixableViolation9fix_title"}
!5378 = distinct !{!5378, !5377, !"_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_importNtB2_23UnnecessaryFutureImportNtNtBa_9violation22AlwaysFixableViolation9fix_title: argument 0"}
!5379 = distinct !{!5379, !"_RINvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_15DiagnosticGuard11try_set_fixNCNvNtNtNtNtBa_5rules9pyupgrade5rules25unnecessary_future_import25unnecessary_future_imports0_0EBa_"}
!5380 = distinct !{!5380, !5379, !"_RINvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_15DiagnosticGuard11try_set_fixNCNvNtNtNtNtBa_5rules9pyupgrade5rules25unnecessary_future_import25unnecessary_future_imports0_0EBa_: argument 0"}
!5381 = distinct !{!5381, !5379, !"_RINvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_15DiagnosticGuard11try_set_fixNCNvNtNtNtNtBa_5rules9pyupgrade5rules25unnecessary_future_import25unnecessary_future_imports0_0EBa_: argument 1"}
!5382 = distinct !{!5382, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import25unnecessary_future_imports0_0Bb_"}
!5383 = distinct !{!5383, !5382, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import25unnecessary_future_imports0_0Bb_: argument 1"}
!5384 = distinct !{!5384, !5382, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import25unnecessary_future_imports0_0Bb_: argument 0"}
!5385 = distinct !{!5385, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement"}
!5386 = distinct !{!5386, !5385, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement: argument 0"}
!5387 = distinct !{!5387, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!5388 = distinct !{!5388, !5387, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!5389 = distinct !{!5389, !5387, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5390 = distinct !{!5390, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!5391 = distinct !{!5391, !5390, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5392 = distinct !{!5392, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16parent_statement"}
!5393 = distinct !{!5393, !5392, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16parent_statement: argument 0"}
!5394 = distinct !{!5394, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel16parent_statement0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB75_13SpecAdvanceBy15spec_advance_by0E0B5A_ECsEhZmuQNqkz_11ruff_linter"}
!5395 = distinct !{!5395, !5394, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel16parent_statement0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB75_13SpecAdvanceBy15spec_advance_by0E0B5A_ECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5396 = distinct !{!5396, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!5397 = distinct !{!5397, !5396, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5398 = distinct !{!5398, !5394, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel16parent_statement0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB75_13SpecAdvanceBy15spec_advance_by0E0B5A_ECsEhZmuQNqkz_11ruff_linter: argument 1"}
!5399 = distinct !{!5399, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel16parent_statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!5400 = distinct !{!5400, !5399, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel16parent_statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!5401 = distinct !{!5401, !5399, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel16parent_statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5402 = distinct !{!5402, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!5403 = distinct !{!5403, !5402, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5404 = distinct !{!5404, !"_RNvXsc_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref"}
!5405 = distinct !{!5405, !5404, !"_RNvXsc_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref: argument 0"}
!5406 = !{!5332}
!5407 = !{!5334}
!5408 = !{!5337, !5336, !5332}
!5409 = !{!5339}
!5410 = !{!5341}
!5411 = !{!5341, !5339, !5334}
!5412 = !{!5343, !5342, !5337, !5336, !5332}
!5413 = !{!5345, !5341, !5343, !5339, !5332}
!5414 = !{!5347}
!5415 = !{!5349}
!5416 = !{!5349, !5347}
!5417 = !{!5350}
!5418 = !{!5352, !5350, !5349, !5347}
!5419 = !{!5350, !5349, !5347}
!5420 = !{!5354}
!5421 = !{!5356}
!5422 = !{!5356, !5357}
!5423 = !{!5359}
!5424 = !{!5361}
!5425 = !{!5363}
!5426 = !{!5365}
!5427 = !{!5365, !5363}
!5428 = !{!5366}
!5429 = !{!5366, !5365, !5363}
!5430 = !{!5368}
!5431 = !{!5370}
!5432 = !{!5370, !5372, !5368, !5371}
!5433 = !{!5374, !5370, !5372, !5368, !5371}
!5434 = !{!5376}
!5435 = !{!5378, !5376, !5374, !5370, !5372, !5368, !5371}
!5436 = !{!5370, !5368}
!5437 = !{!5378, !5376, !5370, !5368}
!5438 = !{!5374, !5370, !5368}
!5439 = !{!5372, !5371}
!5440 = !{!5380}
!5441 = !{!5381}
!5442 = !{!5383}
!5443 = !{!5384, !5383, !5380, !5381}
!5444 = !{!5386}
!5445 = !{!5388}
!5446 = !{!5388, !5386}
!5447 = !{!5389, !5384, !5383, !5380, !5381}
!5448 = !{!5391, !5389, !5388, !5386, !5384, !5383, !5380, !5381}
!5449 = !{!5389, !5388, !5386, !5384, !5383, !5380, !5381}
!5450 = !{!5393, !5384, !5383, !5380, !5381}
!5451 = !{!5395}
!5452 = !{!5397}
!5453 = !{!5397, !5395, !5398, !5384, !5383, !5380, !5381}
!5454 = !{!5395, !5398, !5384, !5383, !5380, !5381}
!5455 = !{!5397, !5395}
!5456 = !{!5398, !5393, !5384, !5383, !5380, !5381}
!5457 = !{!5401, !5400, !5393, !5384, !5383, !5380, !5381}
!5458 = !{!5403, !5401, !5384, !5383, !5380, !5381}
!5459 = !{!5383, !5381}
!5460 = !{!5384, !5380}
!5461 = !{!5383, !5380, !5381}
!5462 = !{!5380, !5381}
!5463 = !{!5405, !5380}
!5464 = distinct !{!5464, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5465 = distinct !{!5465, !5464, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5466 = distinct !{!5466, !"_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in"}
!5467 = distinct !{!5467, !5466, !"_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in: argument 0"}
!5468 = distinct !{!5468, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr"}
!5469 = distinct !{!5469, !5468, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr: argument 0"}
!5470 = distinct !{!5470, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5471 = distinct !{!5471, !5470, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5472 = distinct !{!5472, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsEhZmuQNqkz_11ruff_linter"}
!5473 = distinct !{!5473, !5472, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5474 = distinct !{!5474, !"_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!5475 = distinct !{!5475, !5474, !"_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5476 = distinct !{!5476, !"_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsEhZmuQNqkz_11ruff_linter"}
!5477 = distinct !{!5477, !5476, !"_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5478 = distinct !{!5478, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!5479 = distinct !{!5479, !5478, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!5480 = distinct !{!5480, !5478, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!5481 = distinct !{!5481, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr"}
!5482 = distinct !{!5482, !5481, !"_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr: argument 0"}
!5483 = distinct !{!5483, !"_RINvXsF_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_11SegmentsVecINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB19_3str4iter5SplitcEECsEhZmuQNqkz_11ruff_linter"}
!5484 = distinct !{!5484, !5483, !"_RINvXsF_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_11SegmentsVecINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB19_3str4iter5SplitcEECsEhZmuQNqkz_11ruff_linter: argument 1"}
!5485 = distinct !{!5485, !5483, !"_RINvXsF_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_11SegmentsVecINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB19_3str4iter5SplitcEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5486 = distinct !{!5486, !"_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkRBX_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isorts_0E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3C_"}
!5487 = distinct !{!5487, !5486, !"_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkRBX_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isorts_0E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3C_: argument 1"}
!5488 = distinct !{!5488, !5486, !"_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkRBX_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isorts_0E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3C_: argument 0"}
!5489 = distinct !{!5489, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isorts_0E0B2m_"}
!5490 = distinct !{!5490, !5489, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isorts_0E0B2m_: argument 0"}
!5491 = distinct !{!5491, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isorts_0Bb_"}
!5492 = distinct !{!5492, !5491, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isorts_0Bb_: argument 0"}
!5493 = distinct !{!5493, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter"}
!5494 = distinct !{!5494, !5493, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5495 = distinct !{!5495, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter"}
!5496 = distinct !{!5496, !5495, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5497 = distinct !{!5497, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter"}
!5498 = distinct !{!5498, !5497, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5499 = distinct !{!5499, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter"}
!5500 = distinct !{!5500, !5499, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5501 = distinct !{!5501, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5502 = distinct !{!5502, !5501, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5503 = distinct !{!5503, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5504 = distinct !{!5504, !5503, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5505 = distinct !{!5505, !"_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkRBX_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isort0E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3C_"}
!5506 = distinct !{!5506, !5505, !"_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkRBX_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isort0E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3C_: argument 1"}
!5507 = distinct !{!5507, !5505, !"_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkRBX_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isort0E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3C_: argument 0"}
!5508 = distinct !{!5508, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isort0E0B2m_"}
!5509 = distinct !{!5509, !5508, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isort0E0B2m_: argument 0"}
!5510 = distinct !{!5510, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isort0Bb_"}
!5511 = distinct !{!5511, !5510, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import27is_import_required_by_isort0Bb_: argument 0"}
!5512 = distinct !{!5512, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter"}
!5513 = distinct !{!5513, !5512, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5514 = distinct !{!5514, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter"}
!5515 = distinct !{!5515, !5514, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5516 = distinct !{!5516, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter"}
!5517 = distinct !{!5517, !5516, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5518 = distinct !{!5518, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter"}
!5519 = distinct !{!5519, !5518, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5520 = !{!5465}
!5521 = !{!5469, !5467}
!5522 = !{!5471}
!5523 = !{!5480, !5479, !5477, !5475, !5473}
!5524 = !{!5482}
!5525 = !{!5485, !5484}
!5526 = !{!5485}
!5527 = !{!5492, !5490, !5488, !5487}
!5528 = !{!5496, !5494}
!5529 = !{!5500, !5498}
!5530 = !{!5502}
!5531 = !{!5504}
!5532 = !{!5511, !5509, !5507, !5506}
!5533 = !{!5515, !5513}
!5534 = !{!5519, !5517}
!5535 = distinct !{!5535, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1E_8adapters9enumerateINtB2x_9EnumeratepEB1y_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjRNtBL_13ExprSubscriptEENCINvNvB1y_8find_map5checkTjB3E_EB4o_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69512find_generic0E0E0B3J_EB5A_"}
!5536 = distinct !{!5536, !5535, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1E_8adapters9enumerateINtB2x_9EnumeratepEB1y_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjRNtBL_13ExprSubscriptEENCINvNvB1y_8find_map5checkTjB3E_EB4o_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69512find_generic0E0E0B3J_EB5A_: argument 2"}
!5537 = distinct !{!5537, !5535, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1E_8adapters9enumerateINtB2x_9EnumeratepEB1y_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjRNtBL_13ExprSubscriptEENCINvNvB1y_8find_map5checkTjB3E_EB4o_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69512find_generic0E0E0B3J_EB5A_: argument 0"}
!5538 = !{!5537, !5536}
!5539 = distinct !{!5539, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvBS_15check_type_vars0EB10_"}
!5540 = distinct !{!5540, !5539, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvBS_15check_type_vars0EB10_: argument 0"}
!5541 = distinct !{!5541, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default"}
!5542 = distinct !{!5542, !5541, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69527non_default_follows_default: argument 0"}
!5543 = distinct !{!5543, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtNtBc_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENCNvB1D_27non_default_follows_default0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3q_3any5checkRB1B_NCB2P_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1L_"}
!5544 = distinct !{!5544, !5543, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtNtBc_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENCNvB1D_27non_default_follows_default0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3q_3any5checkRB1B_NCB2P_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1L_: argument 0"}
!5545 = distinct !{!5545, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNvXs0_NtNtB28_8adapters10skip_whileINtB2X_9SkipWhileppEB22_4next5checkRBQ_NCNvBS_27non_default_follows_default0E0EB10_"}
!5546 = distinct !{!5546, !5545, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNvXs0_NtNtB28_8adapters10skip_whileINtB2X_9SkipWhileppEB22_4next5checkRBQ_NCNvBS_27non_default_follows_default0E0EB10_: argument 1"}
!5547 = distinct !{!5547, !5545, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNvXs0_NtNtB28_8adapters10skip_whileINtB2X_9SkipWhileppEB22_4next5checkRBQ_NCNvBS_27non_default_follows_default0E0EB10_: argument 0"}
!5548 = distinct !{!5548, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1V_3any5checkRBJ_NCNvBL_27non_default_follows_defaults_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBT_"}
!5549 = distinct !{!5549, !5548, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1V_3any5checkRBJ_NCNvBL_27non_default_follows_defaults_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBT_: argument 0"}
!5550 = !{!5540}
!5551 = !{!5542}
!5552 = !{!5547, !5546, !5544}
!5553 = !{!5549, !5544}
!5554 = distinct !{!5554, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB6F_"}
!5555 = distinct !{!5555, !5554, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2a_NtB2a_5Nodes12ancestor_ids0ENCNvMs_NtB2c_5modelNtB3H_13SemanticModel18current_statements0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4B_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB6F_: argument 0"}
!5556 = distinct !{!5556, !"_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter"}
!5557 = distinct !{!5557, !5556, !"_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1M_NtB1M_5Nodes12ancestor_ids0ENCNvMs_NtB1O_5modelNtB3j_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5558 = distinct !{!5558, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!5559 = distinct !{!5559, !5558, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel18current_statements0ENtNtNtB9_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5560 = distinct !{!5560, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8find_mapRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4c_13SemanticModel18current_statements0ECsEhZmuQNqkz_11ruff_linter"}
!5561 = distinct !{!5561, !5560, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8find_mapRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4c_13SemanticModel18current_statements0ECsEhZmuQNqkz_11ruff_linter: argument 1"}
!5562 = distinct !{!5562, !5560, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8find_mapRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4c_13SemanticModel18current_statements0ECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5563 = distinct !{!5563, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1T_NtB1T_5Nodes12ancestor_ids0ENCNvMs_NtB1V_5modelNtB3q_13SemanticModel18current_statements0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4j_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB6n_"}
!5564 = distinct !{!5564, !5563, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1T_NtB1T_5Nodes12ancestor_ids0ENCNvMs_NtB1V_5modelNtB3q_13SemanticModel18current_statements0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4j_3any5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB6n_: argument 0"}
!5565 = distinct !{!5565, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvMs_NtB1a_5modelNtB5Q_13SemanticModel18current_statements0NCINvNvB2y_3any5checkB4c_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B52_EB7j_"}
!5566 = distinct !{!5566, !5565, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvMs_NtB1a_5modelNtB5Q_13SemanticModel18current_statements0NCINvNvB2y_3any5checkB4c_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B52_EB7j_: argument 0"}
!5567 = distinct !{!5567, !5565, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvMs_NtB1a_5modelNtB5Q_13SemanticModel18current_statements0NCINvNvB2y_3any5checkB4c_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep69517in_nested_context0E0E0B52_EB7j_: argument 1"}
!5568 = distinct !{!5568, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!5569 = distinct !{!5569, !5568, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5570 = distinct !{!5570, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!5571 = distinct !{!5571, !5570, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5572 = distinct !{!5572, !5570, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1a_5modelNtB4H_13SemanticModel18current_statements0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!5573 = distinct !{!5573, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!5574 = distinct !{!5574, !5573, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5575 = !{!5555}
!5576 = !{!5557}
!5577 = !{!5562, !5561, !5559, !5557, !5555}
!5578 = !{!5564}
!5579 = !{!5566}
!5580 = !{!5567}
!5581 = !{!5569, !5566, !5564, !5555}
!5582 = !{!5569, !5566, !5567, !5564}
!5583 = !{!5567, !5564, !5555}
!5584 = !{!5569}
!5585 = !{!5566, !5567, !5564}
!5586 = !{!5559}
!5587 = !{!5562}
!5588 = !{!5571}
!5589 = !{!5571, !5572, !5562, !5561, !5559, !5557, !5555}
!5590 = !{!5574, !5571, !5562, !5559, !5557, !5555}
!5591 = !{!5572, !5561}
!5592 = !{!5571, !5562, !5559, !5557, !5555}
!5593 = !{!5574}
!5594 = !{!5574, !5571, !5562}
!5595 = !{!5571, !5562}
!5596 = distinct !{!5596, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5597 = distinct !{!5597, !5596, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5598 = distinct !{!5598, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement"}
!5599 = distinct !{!5599, !5598, !"_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel9statement: argument 0"}
!5600 = distinct !{!5600, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter"}
!5601 = distinct !{!5601, !5600, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!5602 = distinct !{!5602, !5600, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_8find_map5checkB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtNCNvMs_NtB1a_5modelNtB4G_13SemanticModel9statement0E0INtNtNtBc_3ops12control_flow11ControlFlowB3K_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!5603 = distinct !{!5603, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!5604 = distinct !{!5604, !5603, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!5605 = distinct !{!5605, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5606 = distinct !{!5606, !5605, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5607 = distinct !{!5607, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5608 = distinct !{!5608, !5607, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5609 = !{!5597}
!5610 = !{!5599}
!5611 = !{!5601}
!5612 = !{!5601, !5599}
!5613 = !{!5602}
!5614 = !{!5604, !5602, !5601, !5599}
!5615 = !{!5602, !5601, !5599}
!5616 = !{!5606}
!5617 = !{!5608}
!5618 = distinct !{!5618, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtNtBc_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENCNvB1D_27non_default_follows_default0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3q_3any5checkRB1B_NCB2P_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1L_"}
!5619 = distinct !{!5619, !5618, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtNtBc_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENCNvB1D_27non_default_follows_default0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3q_3any5checkRB1B_NCB2P_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1L_: argument 0"}
!5620 = distinct !{!5620, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNvXs0_NtNtB28_8adapters10skip_whileINtB2X_9SkipWhileppEB22_4next5checkRBQ_NCNvBS_27non_default_follows_default0E0EB10_"}
!5621 = distinct !{!5621, !5620, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNvXs0_NtNtB28_8adapters10skip_whileINtB2X_9SkipWhileppEB22_4next5checkRBQ_NCNvBS_27non_default_follows_default0E0EB10_: argument 1"}
!5622 = distinct !{!5622, !5620, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNvXs0_NtNtB28_8adapters10skip_whileINtB2X_9SkipWhileppEB22_4next5checkRBQ_NCNvBS_27non_default_follows_default0E0EB10_: argument 0"}
!5623 = distinct !{!5623, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1V_3any5checkRBJ_NCNvBL_27non_default_follows_defaults_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBT_"}
!5624 = distinct !{!5624, !5623, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules6pep6957TypeVarENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1V_3any5checkRBJ_NCNvBL_27non_default_follows_defaults_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBT_: argument 0"}
!5625 = !{!5622, !5621, !5619}
!5626 = !{!5624, !5619}
!5627 = distinct !{!5627, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5628 = distinct !{!5628, !5627, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5629 = distinct !{!5629, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5630 = distinct !{!5630, !5629, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5631 = distinct !{!5631, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5632 = distinct !{!5632, !5631, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5633 = distinct !{!5633, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5634 = distinct !{!5634, !5633, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5635 = distinct !{!5635, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5636 = distinct !{!5636, !5635, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5637 = distinct !{!5637, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5638 = distinct !{!5638, !5637, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5639 = distinct !{!5639, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5640 = distinct !{!5640, !5639, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5641 = distinct !{!5641, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5642 = distinct !{!5642, !5641, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5643 = distinct !{!5643, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5644 = distinct !{!5644, !5643, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5645 = distinct !{!5645, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5646 = distinct !{!5646, !5645, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5647 = distinct !{!5647, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5648 = distinct !{!5648, !5647, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5649 = distinct !{!5649, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5650 = distinct !{!5650, !5649, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5651 = distinct !{!5651, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5652 = distinct !{!5652, !5651, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5653 = distinct !{!5653, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5654 = distinct !{!5654, !5653, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5655 = distinct !{!5655, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5656 = distinct !{!5656, !5655, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5657 = distinct !{!5657, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5658 = distinct !{!5658, !5657, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5659 = distinct !{!5659, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5660 = distinct !{!5660, !5659, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5661 = distinct !{!5661, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5662 = distinct !{!5662, !5661, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5663 = distinct !{!5663, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5664 = distinct !{!5664, !5663, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5665 = distinct !{!5665, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5666 = distinct !{!5666, !5665, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5667 = distinct !{!5667, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5668 = distinct !{!5668, !5667, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5669 = distinct !{!5669, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5670 = distinct !{!5670, !5669, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5671 = distinct !{!5671, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5672 = distinct !{!5672, !5671, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5673 = distinct !{!5673, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5674 = distinct !{!5674, !5673, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5675 = distinct !{!5675, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5676 = distinct !{!5676, !5675, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5677 = distinct !{!5677, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5678 = distinct !{!5678, !5677, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5679 = distinct !{!5679, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5680 = distinct !{!5680, !5679, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5681 = distinct !{!5681, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5682 = distinct !{!5682, !5681, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5683 = distinct !{!5683, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5684 = distinct !{!5684, !5683, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5685 = distinct !{!5685, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5686 = distinct !{!5686, !5685, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5687 = distinct !{!5687, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5688 = distinct !{!5688, !5687, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5689 = distinct !{!5689, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5690 = distinct !{!5690, !5689, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5691 = distinct !{!5691, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5692 = distinct !{!5692, !5691, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5693 = distinct !{!5693, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5694 = distinct !{!5694, !5693, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5695 = distinct !{!5695, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5696 = distinct !{!5696, !5695, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5697 = distinct !{!5697, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5698 = distinct !{!5698, !5697, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5699 = distinct !{!5699, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5700 = distinct !{!5700, !5699, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5701 = distinct !{!5701, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5702 = distinct !{!5702, !5701, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5703 = distinct !{!5703, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5704 = distinct !{!5704, !5703, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5705 = distinct !{!5705, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5706 = distinct !{!5706, !5705, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5707 = distinct !{!5707, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5708 = distinct !{!5708, !5707, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5709 = distinct !{!5709, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5710 = distinct !{!5710, !5709, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5711 = distinct !{!5711, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5712 = distinct !{!5712, !5711, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5713 = distinct !{!5713, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5714 = distinct !{!5714, !5713, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5715 = distinct !{!5715, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5716 = distinct !{!5716, !5715, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5717 = distinct !{!5717, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5718 = distinct !{!5718, !5717, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5719 = distinct !{!5719, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5720 = distinct !{!5720, !5719, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5721 = distinct !{!5721, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5722 = distinct !{!5722, !5721, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5723 = distinct !{!5723, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5724 = distinct !{!5724, !5723, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5725 = distinct !{!5725, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5726 = distinct !{!5726, !5725, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5727 = distinct !{!5727, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5728 = distinct !{!5728, !5727, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5729 = distinct !{!5729, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5730 = distinct !{!5730, !5729, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5731 = distinct !{!5731, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5732 = distinct !{!5732, !5731, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5733 = distinct !{!5733, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5734 = distinct !{!5734, !5733, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5735 = distinct !{!5735, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5736 = distinct !{!5736, !5735, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5737 = distinct !{!5737, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5738 = distinct !{!5738, !5737, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5739 = distinct !{!5739, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5740 = distinct !{!5740, !5739, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5741 = distinct !{!5741, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any"}
!5742 = distinct !{!5742, !5741, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any: argument 0"}
!5743 = distinct !{!5743, !"_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled"}
!5744 = distinct !{!5744, !5743, !"_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled: argument 0"}
!5745 = distinct !{!5745, !5741, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any: argument 1"}
!5746 = distinct !{!5746, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5747 = distinct !{!5747, !5746, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5748 = distinct !{!5748, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5749 = distinct !{!5749, !5748, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5750 = distinct !{!5750, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5751 = distinct !{!5751, !5750, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5752 = distinct !{!5752, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5753 = distinct !{!5753, !5752, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5754 = distinct !{!5754, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5755 = distinct !{!5755, !5754, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5756 = distinct !{!5756, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5757 = distinct !{!5757, !5756, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5758 = distinct !{!5758, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5759 = distinct !{!5759, !5758, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5760 = distinct !{!5760, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5761 = distinct !{!5761, !5760, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5762 = distinct !{!5762, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5763 = distinct !{!5763, !5762, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5764 = distinct !{!5764, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5765 = distinct !{!5765, !5764, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5766 = distinct !{!5766, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5767 = distinct !{!5767, !5766, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5768 = distinct !{!5768, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any"}
!5769 = distinct !{!5769, !5768, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any: argument 0"}
!5770 = distinct !{!5770, !"_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled"}
!5771 = distinct !{!5771, !5770, !"_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled: argument 0"}
!5772 = distinct !{!5772, !5768, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any: argument 1"}
!5773 = distinct !{!5773, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5774 = distinct !{!5774, !5773, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5775 = distinct !{!5775, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any"}
!5776 = distinct !{!5776, !5775, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any: argument 0"}
!5777 = distinct !{!5777, !"_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled"}
!5778 = distinct !{!5778, !5777, !"_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled: argument 0"}
!5779 = distinct !{!5779, !5775, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet3any: argument 1"}
!5780 = distinct !{!5780, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5781 = distinct !{!5781, !5780, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5782 = distinct !{!5782, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5783 = distinct !{!5783, !5782, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5784 = distinct !{!5784, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5785 = distinct !{!5785, !5784, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5786 = distinct !{!5786, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5787 = distinct !{!5787, !5786, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5788 = distinct !{!5788, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5789 = distinct !{!5789, !5788, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5790 = distinct !{!5790, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!5791 = distinct !{!5791, !5790, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!5792 = distinct !{!5792, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5793 = distinct !{!5793, !5792, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
!5794 = distinct !{!5794, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains"}
!5795 = distinct !{!5795, !5794, !"_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet8contains: argument 0"}
end_hunk_8
