inline.NumInlined: 4529
inline.NumDeleted: 1763
begin_hunk_0_@_ZNK6duckdb18FunctionExpression4HashEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = tail call noundef i64 @_ZN6duckdb4HashIPKcEEmT_(ptr noundef %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = tail call noundef i64 @_ZN6duckdb4HashIPKcEEmT_(ptr noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load i8, ptr %i.h, align 8, !tbaa !277, !range !110, !noundef !111
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.j, i64 -2960836687051489901, i64 0 ; 2 uses
  %1 = lshr i64 %i.k, 32
  %i.l = xor i64 %1, %i.k
  %2 = mul i64 %i.l, -2960836687051489901         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load i8, ptr %i.m, align 8, !tbaa !279, !range !110, !noundef !111
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i64 -2960836687051489901, i64 0 ; 2 uses
  %3 = lshr i64 %i.p, 32
  %4 = xor i64 %3, %i.p
  %5 = mul i64 %4, -2960836687051489901           ; 2 uses
  %6 = xor i64 %5, %2
  %7 = lshr i64 %6, 32
  %8 = xor i64 %i.a, %i.d
  %9 = xor i64 %8, %i.g
  %10 = xor i64 %9, %7
  %11 = xor i64 %10, %2
  %i.q = xor i64 %11, %5
  ret i64 %i.q
}

end_hunk_0
