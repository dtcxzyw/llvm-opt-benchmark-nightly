inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_:bb.a
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 1), !inline_history !311
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !289
  %i.r = or disjoint i64 %i.q, -9223372036854775808
  %i.s = load i64, ptr %9, align 8, !tbaa !291
  %i.t = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %i.s, i64 %i.r, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !311 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
end_hunk_0
