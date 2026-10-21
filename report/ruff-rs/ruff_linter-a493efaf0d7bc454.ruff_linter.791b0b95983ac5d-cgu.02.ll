Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.02?download=true
inline.NumInlined: 6474
inline.NumDeleted: 3263
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules24blank_before_after_classNtB4_28IncorrectBlankLineAfterClassNtNtBc_9violation22AlwaysFixableViolation7message:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules24blank_before_after_classNtB4_28IncorrectBlankLineAfterClassNtNtBc_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !14193
  %i.a = tail call noundef dereferenceable_or_null(41) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !14193 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 41) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.a, ptr noundef nonnull align 1 dereferenceable(41) @602, i64 41, i1 false)
  store i64 41, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 41, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules24multi_line_summary_startNtB4_26MultiLineSummarySecondLineNtNtBc_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !14196
  %i.a = tail call noundef dereferenceable_or_null(60) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 60, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !14196 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 60) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.a, ptr noundef nonnull align 1 dereferenceable(60) @603, i64 60, i1 false)
  store i64 60, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 60, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules24multi_line_summary_startNtB4_26MultiLineSummarySecondLineNtNtBc_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !14199
  %i.a = tail call noundef dereferenceable_or_null(54) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 54, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !14199 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 54) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.a, ptr noundef nonnull align 1 dereferenceable(54) @605, i64 54, i1 false)
  store i64 54, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 54, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules27blank_before_after_functionNtB4_22BlankLineAfterFunctionNtNtBc_9violation9Violation7message(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @606, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules27blank_before_after_functionNtB4_22BlankLineAfterFunctionNtNtBc_9violation9Violation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !14202
  %i.a = tail call noundef dereferenceable_or_null(45) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 45, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !14202 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 45) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.a, ptr noundef nonnull align 1 dereferenceable(45) @607, i64 45, i1 false)
  store i64 45, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 45, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_slots5rules31no_slots_in_namedtuple_subclassNtB4_14NamedTupleKindNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !26, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 32, i64 26
  %.1 = select i1 %i.b, ptr @609, ptr @608
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules12flake8_todos5rules5todosNtB4_17MissingTodoAuthorNtNtBc_9violation9Violation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !14205
  %i.a = tail call noundef dereferenceable_or_null(89) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 89, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !14205 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 89) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(89) %i.a, ptr noundef nonnull align 1 dereferenceable(89) @610, i64 89, i1 false)
  store i64 89, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 89, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4_18ConstantLikelihoodINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = load i32, ptr %0, align 8, !range !21, !noundef !12 ; 2 uses
  %.off111122 = add nsw i32 %i.h, -19
  %switch112123 = icmp ult i32 %.off111122, 6
  br i1 %switch112123, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.outer
  %i.i = phi i32 [ %i.ab, %tailrecurse.outer ], [ %i.h, %bb.a ]
  %.tr.ph125 = phi ptr [ %i.aa, %tailrecurse.outer ], [ %0, %bb.a ]
  %accumulator.tr.ph124 = phi i8 [ %.sroa.0.0.i, %tailrecurse.outer ], [ -1, %bb.a ] ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.j = phi i32 [ %i.i, %.lr.ph ], [ %i.cf, %tailrecurse ]
  %.tr113 = phi ptr [ %.tr.ph125, %.lr.ph ], [ %i.ce, %tailrecurse ] ; 13 uses
  switch i32 %i.j, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit [
    i32 2, label %tailrecurse.outer
    i32 3, label %bb.c
    i32 6, label %bb.d
    i32 25, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit.sink.split
    i32 28, label %bb.h
    i32 29, label %bb.i
    i32 30, label %bb.m
  ]

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit.sink.split: ; preds = %bb.b, %bb.h
  %.sink190 = phi i64 [ 8, %bb.h ], [ 16, %bb.b ]
  %.sink189 = phi i64 [ 23, %bb.h ], [ 31, %bb.b ]
  %.sink = phi i64 [ 16, %bb.h ], [ 24, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.tr113, i64 %.sink190 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr113, i64 %.sink189
  %i.m = load i8, ptr %i.l, align 1, !range !27, !noundef !12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr113, i64 %.sink
  %i.o = load i64, ptr %i.n, align 8, !noundef !12
  %i.p = and i64 %i.o, 72057594037927935
  %i.q = icmp ult i8 %i.m, -48
  %i.r = zext i8 %i.m to i64
  %i.s = add nsw i64 %i.r, -192
  %spec.store.select.i19 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 16)
  %.sroa.0.0.i20 = select i1 %i.q, i64 %spec.store.select.i19, i64 %i.p
  %i.t = icmp ugt i8 %i.m, -49
  %i.u = load ptr, ptr %i.k, align 8
  %.sroa.01.0.i21 = select i1 %i.t, ptr %i.u, ptr %i.k
  %i.v = tail call noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib3str18is_cased_uppercase(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i21, i64 noundef range(i64 -192, 72057594037927936) %.sroa.0.0.i20)
  %..i22 = zext i1 %i.v to i8
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit: ; preds = %tailrecurse.outer, %tailrecurse, %bb.b, %bb.c, %bb.p, %bb.l, %bb.g, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit.sink.split, %bb.a, %bb.n, %bb.j, %bb.e, %bb.m, %bb.i, %bb.d
  %accumulator.tr.ph110 = phi i8 [ %accumulator.tr.ph124, %bb.j ], [ %accumulator.tr.ph124, %bb.n ], [ %accumulator.tr.ph124, %tailrecurse ], [ %accumulator.tr.ph124, %bb.e ], [ -1, %bb.a ], [ %accumulator.tr.ph124, %bb.p ], [ %accumulator.tr.ph124, %bb.d ], [ %accumulator.tr.ph124, %bb.i ], [ %accumulator.tr.ph124, %bb.l ], [ %accumulator.tr.ph124, %bb.m ], [ %accumulator.tr.ph124, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit.sink.split ], [ %accumulator.tr.ph124, %bb.g ], [ %accumulator.tr.ph124, %bb.c ], [ %accumulator.tr.ph124, %bb.b ], [ %.sroa.0.0.i, %tailrecurse.outer ]
  %.sroa.0.0 = phi i8 [ %i.bf, %bb.j ], [ %i.bu, %bb.n ], [ 0, %bb.b ], [ %i.ap, %bb.e ], [ 2, %bb.a ], [ %.sroa.0.0.i.i.i43, %bb.p ], [ 2, %bb.d ], [ 2, %bb.i ], [ %.sroa.0.0.i.i.i42, %bb.l ], [ 2, %bb.m ], [ %..i22, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit.sink.split ], [ %i.aw, %bb.g ], [ 0, %bb.c ], [ 2, %tailrecurse ], [ 2, %tailrecurse.outer ]
  %accumulator.ret.tr = tail call noundef range(i8 0, 3) i8 @llvm.umin.i8(i8 range(i8 0, 3) %accumulator.tr.ph110, i8 range(i8 0, 3) %.sroa.0.0)
  ret i8 %accumulator.ret.tr

tailrecurse.outer:                                ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.tr113, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  %i.y = tail call noundef i8 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4_18ConstantLikelihoodINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %.tr113, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.0.0.i = tail call noundef range(i8 0, 3) i8 @llvm.umin.i8(i8 range(i8 0, 3) %accumulator.tr.ph124, i8 range(i8 0, 3) %i.y) ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !range !21, !noundef !12 ; 2 uses
  %.off111 = add nsw i32 %i.ab, -19
  %switch112 = icmp ult i32 %.off111, 6
  br i1 %switch112, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr113, i64 28
  %i.ad = load i8, ptr %i.ac, align 4, !range !61, !noundef !12
  %i.ae = icmp eq i8 %i.ad, 1
  br i1 %i.ae, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %tailrecurse

bb.d:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.tr113, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !noundef !12 ; 3 uses
  %.idx94 = mul nuw nsw i64 %i.ag, 144
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr113, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !range !51, !noalias !14258, !noundef !12
  %.not.i.i.i.peel.i.i.i = icmp eq i32 %i.am, -1
  %..i.i.i.peel.i.i.i = select i1 %.not.i.i.i.peel.i.i.i, ptr null, ptr %i.al
  %i.an = tail call noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4_18ConstantLikelihoodINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %i.aj), !noalias !14259, !inline_history !14222 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14260
  store i8 %i.an, ptr %i.g, align 8, !noalias !14260
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 1, ptr %i.ao, align 8, !noalias !14261
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx2.i.i, align 8
  %.sroa.6.8..sroa.5.0..sroa_idx2.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.6.8..sroa.5.0..sroa_idx2.i.i.sroa_idx, align 8
  %.sroa.7.8..sroa.5.0..sroa_idx2.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %..i.i.i.peel.i.i.i, ptr %.sroa.7.8..sroa.5.0..sroa_idx2.i.i.sroa_idx, align 8
  %i.ap = call noundef range(i8 0, 3) i8 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtBb_6option8IntoIterB1s_EENtNtNtB9_6traits8iterator8Iterator4foldNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditions18ConstantLikelihoodQNCINvNtB7_3map8map_foldB1s_B3p_B3p_NvYB3p_INtNtBb_7convert4FromB1s_E4fromNCINvNvB2M_6min_by4foldB3p_NvYB3p_NtNtBb_3cmp3Ord3cmpE0E0EB3z_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ao, i8 noundef range(i8 0, 3) %i.an, ptr noalias noundef nonnull %i.a), !noalias !14260 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14260
  %i.aq = icmp eq i64 %i.ag, 1
  br i1 %i.aq, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %gepdiff95 = add nsw i64 %.idx94, -144
  %i.ar = udiv exact i64 %gepdiff95, 144
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.3.sroa.4.7..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3.sroa.5.7..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.3.sroa.6.7..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ax, %bb.g ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i8 [ %i.ap, %bb.f ], [ %i.aw, %bb.g ] ; 2 uses
  %i.at = getelementptr inbounds nuw [144 x i8], ptr %i.ak, i64 %.sroa.04.0.i.i.i.i.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !range !51, !noalias !14262, !noundef !12
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.av, -1
  %..i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, ptr null, ptr %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14263
  store i8 %.sroa.02.0.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !14263
  store i64 1, ptr %i.as, align 8, !noalias !14264
  store ptr %i.at, ptr %.sroa.3.sroa.4.7..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !14264
  store i64 1, ptr %.sroa.3.sroa.5.7..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !14264
  store ptr %..i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.6.7..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !14264
  %i.aw = call noundef range(i8 0, 3) i8 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtBb_6option8IntoIterB1s_EENtNtNtB9_6traits8iterator8Iterator4foldNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditions18ConstantLikelihoodQNCINvNtB7_3map8map_foldB1s_B3p_B3p_NvYB3p_INtNtBb_7convert4FromB1s_E4fromNCINvNvB2M_6min_by4foldB3p_NvYB3p_NtNtBb_3cmp3Ord3cmpE0E0EB3z_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.as, i8 noundef range(i8 0, 3) %.sroa.02.0.i.i.i.i.i.i, ptr noalias noundef nonnull %i.a), !noalias !14265 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14263
  %i.ax = add nuw i64 %.sroa.04.0.i.i.i.i.i.i, 1  ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.ar
  br i1 %i.ay, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.g

bb.h:                                             ; preds = %bb.b
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit.sink.split

bb.i:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %.tr113, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !noundef !12 ; 3 uses
  %.idx92 = mul nuw nsw i64 %i.ba, 72
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr113, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = tail call noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4_18ConstantLikelihoodINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %i.bd), !noalias !14266, !inline_history !14241 ; 2 uses
  %i.bg = icmp eq i64 %i.ba, 1
  br i1 %i.bg, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %gepdiff93 = add nsw i64 %.idx92, -72
  %i.bh = udiv exact i64 %gepdiff93, 72
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.04.0.i.i = phi i64 [ 0, %bb.k ], [ %i.bm, %bb.l ] ; 2 uses
  %.sroa.02.0.i.i = phi i8 [ %i.bf, %bb.k ], [ %.sroa.0.0.i.i.i42, %bb.l ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [72 x i8], ptr %i.be, i64 %.sroa.04.0.i.i
  %i.bj = call noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4_18ConstantLikelihoodINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %i.bi), !noalias !14267, !inline_history !14244 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14268
  store i8 %.sroa.02.0.i.i, ptr %i.e, align 1, !noalias !14269
  store i8 %i.bj, ptr %i.d, align 1, !noalias !14269
  %i.bk = call noundef i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditions18ConstantLikelihoodNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B32_EE9call_onceB11_(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !inline_history !14249
  %i.bl = icmp slt i8 %i.bk, 1
  %.sroa.0.0.i.i.i42 = select i1 %i.bl, i8 %.sroa.02.0.i.i, i8 %i.bj ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14268
  %i.bm = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.bh
  br i1 %i.bn, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.l

bb.m:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr113, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !12 ; 3 uses
  %.idx = mul nuw nsw i64 %i.bp, 72
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.tr113, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = tail call noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4_18ConstantLikelihoodINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %i.bs), !noalias !14270, !inline_history !14241 ; 2 uses
  %i.bv = icmp eq i64 %i.bp, 1
  br i1 %i.bv, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %gepdiff = add nsw i64 %.idx, -72
  %i.bw = udiv exact i64 %gepdiff, 72
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.sroa.04.0.i.i33 = phi i64 [ 0, %bb.o ], [ %i.cb, %bb.p ] ; 2 uses
  %.sroa.02.0.i.i34 = phi i8 [ %i.bu, %bb.o ], [ %.sroa.0.0.i.i.i43, %bb.p ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [72 x i8], ptr %i.bt, i64 %.sroa.04.0.i.i33
  %i.by = call noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4_18ConstantLikelihoodINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %i.bx), !noalias !14271, !inline_history !14244 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14272
  store i8 %.sroa.02.0.i.i34, ptr %i.c, align 1, !noalias !14273
  store i8 %i.by, ptr %i.b, align 1, !noalias !14273
  %i.bz = call noundef i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditions18ConstantLikelihoodNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B32_EE9call_onceB11_(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !inline_history !14249
  %i.ca = icmp slt i8 %i.bz, 1
  %.sroa.0.0.i.i.i43 = select i1 %i.ca, i8 %.sroa.02.0.i.i34, i8 %i.by ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14272
  %i.cb = add nuw i64 %.sroa.04.0.i.i33, 1        ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.bw
  br i1 %i.cc, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.p

tailrecurse:                                      ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr113, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !range !21, !noundef !12 ; 2 uses
  %.off = add nsw i32 %i.cf, -19
  %switch = icmp ult i32 %.off, 6
  br i1 %switch, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtB1J_9generated4ExprEINtNtBc_6option8IntoIterB3g_EENCNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules15yoda_conditionsNtB4g_18ConstantLikelihoodINtNtBc_7convert4FromB3g_E4from0ENvYB5y_B5Y_4fromENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB6M_6min_by4foldB5y_NvYB5y_NtNtBc_3cmp3Ord3cmpE0EB4o_.exit, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtB4_13SpecAdvanceBy15spec_advance_byCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i = load ptr, ptr %0, align 8, !alias.scope !14278
  %i.a = icmp ne ptr %.pr.i, null
  store ptr null, ptr %0, align 8, !alias.scope !14278
  %i.b = sext i1 %i.a to i64
  %.sroa.0.0.i = add i64 %1, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2A_NtB2A_5Nodes12ancestor_ids0ENCNvMs_NtB2C_5modelNtB47_13SemanticModel18current_statements0ENtB4_13SpecAdvanceBy15spec_advance_byCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14286)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14288)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted.i.i = load i32, ptr %i.b, align 8, !alias.scope !14289
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !14290, !nonnull !12, !align !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %.val.i9.i.i = load ptr, ptr %i.a, align 8, !alias.scope !14291, !nonnull !12, !align !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i9.i.i, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i9.i.i, i64 72
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2U_ENCNvMs_NtB1i_5modelNtB3Y_13SemanticModel18current_statements0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3R_ENtB4X_13SpecAdvanceBy15spec_advance_by0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.b
end_hunk_0
