Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.05?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1068
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstringNtB2_28DocstringExtraneousParameterNtNtBa_9violation9Violation9fix_title:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 50, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 49
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.h, ptr noundef nonnull align 1 dereferenceable(50) @689, i64 50, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 50, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines25whitespace_before_commentNtB2_31TooFewSpacesBeforeInlineCommentNtNtBc_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 !guid !7361 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 51, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 50
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.h, ptr noundef nonnull align 1 dereferenceable(51) @690, i64 51, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 51, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines25whitespace_before_commentNtB2_31TooFewSpacesBeforeInlineCommentNtNtBc_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 !guid !7362 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 13, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 12
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) @692, i64 13, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_5InputINtNtCs4NRVxsYgnAr_4core7convert4FromReE4fromCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 4), (8, 41)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #9 !guid !7363 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.d, align 8
  store i32 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules11blank_linesNtB5_17TooManyBlankLinesNtNtBd_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !7364 {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @696, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules11blank_linesNtB5_17TooManyBlankLinesNtNtBd_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 !guid !7365 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 31, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 30
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.h, ptr noundef nonnull align 1 dereferenceable(31) @697, i64 31, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 31, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules6raisesNtB5_28PytestRaisesWithoutExceptionNtNtBd_9violation9Violation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 !guid !7366 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 47, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 46
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.h, ptr noundef nonnull align 1 dereferenceable(47) @698, i64 47, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 47, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB5_26UselessSuppressionCommentsNtNtB7_27suppression_comment_visitor25CaptureSuppressionComment7capture(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !7372 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7373)
  %i.d = load i64, ptr %1, align 8, !range !7374, !alias.scope !7373, !noundef !7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !7373 ; 6 uses
  %.not.i = icmp eq i64 %i.d, -1
  br i1 %.not.i, label %.thread.i, label %2

2:                                                ; preds = %bb.a
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.b
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
    i64 27, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 28, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 29, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 30, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 31, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 32, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 33, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 34, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 35, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 36, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 37, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 38, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 39, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 40, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 41, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 42, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 43, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 44, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 45, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 46, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 47, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 48, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 49, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 50, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 51, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 52, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 53, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 54, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 55, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 56, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 57, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 58, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 59, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 60, label %bb.b
    i64 61, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 62, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 63, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 64, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 65, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 66, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 67, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 68, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 69, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 70, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 71, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 72, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 73, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 74, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 75, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 76, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 77, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 78, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 79, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 80, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 81, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 82, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 83, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 84, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 85, label %bb.b
    i64 86, label %bb.b
    i64 87, label %bb.b
    i64 88, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 89, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 90, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 91, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 92, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
    i64 93, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
  ]

bb.b:                                             ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.h = load i8, ptr %i.g, align 1, !range !9, !alias.scope !7373, !noundef !7 ; 2 uses
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %bb.c, label %bb.d

.thread.i:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.k = load i8, ptr %i.j, align 1, !range !9, !alias.scope !7373, !noundef !7
  switch i8 %i.k, label %bb.r [
    i8 2, label %bb.c
    i8 0, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit.thread
  ]

default.unreachable:                              ; preds = %2
  unreachable

bb.c:                                             ; preds = %.thread.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !range !21, !alias.scope !7373, !noundef !7
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit.thread, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit

bb.d:                                             ; preds = %bb.b
  switch i64 %i.d, label %bb.e [
    i64 2, label %bb.f
    i64 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.d
  %i.o = icmp eq i8 %i.h, 0
  br i1 %i.o, label %bb.l, label %bb.r

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ 24, %bb.g ], [ 32, %bb.f ]
  %.sroa.010.0.i = phi ptr [ %i.p, %bb.g ], [ %i.f, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i8, ptr %i.r, align 8, !range !21, !alias.scope !7373, !noundef !7
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.i, label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !7373, !noundef !7 ; 2 uses
  %i.w = load i32, ptr %.sroa.010.0.i, align 8, !noalias !7373, !noundef !7
  %i.x = icmp ult i32 %i.v, %i.w
  br i1 %i.x, label %bb.j, label %bb.e

bb.j:                                             ; preds = %bb.i
  %i.y = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !7373 ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !noalias !7373, !nonnull !7, !noundef !7
  %i.aa = load i64, ptr %i.z, align 8, !noalias !7373, !noundef !7
  %.not38.i = icmp eq i64 %i.aa, 0
  br i1 %.not38.i, label %bb.e, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !7373, !noundef !7
  %i.ad = icmp ult i32 %i.ac, %i.v
  br i1 %i.ad, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit, label %bb.e

bb.l:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !range !21, !alias.scope !7373, !noundef !7
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit.thread

bb.m:                                             ; preds = %bb.l
  %.sroa.023.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.023.0.i = load i64, ptr %.sroa.023.0.in.i, align 8, !range !7374, !alias.scope !7373, !noundef !7 ; 3 uses
  %.sroa.4.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.i = load ptr, ptr %.sroa.4.0.in.i, align 8, !alias.scope !7373 ; 2 uses
  %.sroa.026.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.026.0.i = load i64, ptr %.sroa.026.0.in.i, align 8, !range !7374, !alias.scope !7373, !noundef !7 ; 2 uses
  %.not39.i = icmp eq i64 %.sroa.023.0.i, -1
  %.not40.i = icmp eq i64 %.sroa.026.0.i, -1
  %or.cond.i = or i1 %.not39.i, %.not40.i
  br i1 %or.cond.i, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.428.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.428.0.i = load ptr, ptr %.sroa.428.0.in.i, align 8, !alias.scope !7373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7373
  store i64 %.sroa.023.0.i, ptr %i.b, align 8, !noalias !7373
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.4.0.i, ptr %i.ah, align 8, !noalias !7373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7373
  store i64 %.sroa.026.0.i, ptr %i.a, align 8, !noalias !7373
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.428.0.i, ptr %i.ai, align 8, !noalias !7373
  %i.aj = call noundef zeroext i1 @_RNvMst_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB7_9generated10AnyNodeRef36is_first_statement_in_alternate_body(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %i.d, ptr noundef %i.f), !noalias !7373
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !alias.scope !7373, !noundef !7
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !7373, !noundef !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ao = load ptr, ptr %.val, align 8, !noalias !7373, !nonnull !7, !noundef !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !7373, !noundef !7
  %i.ar = call noundef i32 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers25comment_indentation_after(i64 noundef %.sroa.023.0.i, ptr noundef %.sroa.4.0.i, i32 noundef %i.al, i32 noundef %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq), !noalias !7373
  %i.as = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !7373
  %i.at = extractvalue { i32, i32 } %i.as, 0
  %i.au = load ptr, ptr %.val, align 8, !noalias !7373, !nonnull !7, !noundef !7
  %i.av = load i64, ptr %i.ap, align 8, !noalias !7373, !noundef !7
  %i.aw = call { ptr, i64 } @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace21indentation_at_offset(i32 noundef %i.at, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.av), !noalias !7373 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %.not41.i = icmp eq ptr %i.ax, null
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  %.sroa.3.0.i = select i1 %.not41.i, i64 0, i64 %i.ay
  %i.az = call fastcc noundef i32 @_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len(i64 noundef %.sroa.3.0.i), !noalias !7373
  %.not42.i = icmp eq i32 %i.ar, %i.az
  br i1 %.not42.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7373
  br label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit.thread

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7373
  br label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit

bb.r:                                             ; preds = %bb.e, %.thread.i
  %.old.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.old44.i = load i8, ptr %.old.i, align 8, !range !21, !alias.scope !7373, !noundef !7
  %.old45.i = trunc nuw i8 %.old44.i to i1
  br i1 %.old45.i, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit.thread, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit

_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit: ; preds = %bb.q, %bb.k, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %bb.r, %bb.c
  %.sroa.0.0.i = phi i8 [ 4, %bb.q ], [ 1, %bb.k ], [ 3, %bb.r ], [ 2, %bb.c ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load <2 x i32>, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !7375, !noundef !7 ; 3 uses
  %i.be = load i64, ptr %0, align 8, !range !12, !alias.scope !7375, !noundef !7
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.s, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonEE8push_mutB1D_.exit

bb.s:                                             ; preds = %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonEE8grow_oneB1K_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !7376
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonEE8push_mutB1D_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonEE8push_mutB1D_.exit: ; preds = %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit, %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !7375, !nonnull !7, !noundef !7
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.bh, i64 %i.bd ; 2 uses
  store <2 x i32> %i.bb, ptr %i.bi, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i8 %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 4
  %i.bj = add i64 %i.bd, 1
  store i64 %i.bj, ptr %i.bc, align 8, !alias.scope !7375
  br label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit.thread

_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_commentNtB4_26UselessSuppressionComments25check_suppression_comment.exit.thread: ; preds = %bb.c, %bb.r, %bb.m, %bb.p, %bb.l, %.thread.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonEE8push_mutB1D_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstringNtB5_26DocstringExtraneousReturnsNtNtBd_9violation9Violation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 !guid !7377 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 88, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 87
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.h, ptr noundef nonnull align 1 dereferenceable(88) @699, i64 88, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 88, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstringNtB5_26DocstringExtraneousReturnsNtNtBd_9violation9Violation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 !guid !7378 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 27
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.h, ptr noundef nonnull align 1 dereferenceable(28) @700, i64 28, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 28, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines25whitespace_before_commentNtB5_24NoSpaceAfterBlockCommentNtNtBf_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 !guid !7379 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 35
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.h, ptr noundef nonnull align 1 dereferenceable(36) @701, i64 36, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 36, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines25whitespace_before_commentNtB5_24NoSpaceAfterBlockCommentNtNtBf_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 !guid !7380 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 11
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.h, ptr noundef nonnull align 1 dereferenceable(12) @703, i64 12, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 12, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 !guid !7381 {
switch.lookup:
  %i.a = load i32, ptr %0, align 8, !range !35, !noundef !7 ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsi_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstringNtB5_11BodyVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsi_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstringNtB5_11BodyVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt.379, i64 %i.c
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext5 = zext i8 %switch.load4 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext5
  %.sroa.0.0 = load i32, ptr %i.d, align 4, !noundef !7
  %.sroa.34.0 = load i32, ptr %i.e, align 4, !noundef !7
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %.sroa.34.0, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !7393 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !align !8, !noundef !7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !align !8, !noundef !7 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7394)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !7394, !noundef !7
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.preheader.thread.i, label %.lr.ph.i

.preheader.thread.i:                              ; preds = %bb.a
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !7394, !nonnull !7, !noundef !7
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms7compact16cleanup_diff_opsINtNtB4_5utils12OffsetLookupmEB14_ECsEhZmuQNqkz_11ruff_linter.exit

.preheader.i:                                     ; preds = %bb.e
  %i.l = icmp eq i64 %i.ae, 0
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !7394, !nonnull !7, !noundef !7 ; 2 uses
end_hunk_0
