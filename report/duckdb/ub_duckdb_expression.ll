inline.NumInlined: 4529
inline.NumDeleted: 1763
begin_hunk_0_@_ZNK6duckdb18FunctionExpression4HashEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = tail call noundef i64 @_ZN6duckdb4HashIPKcEEmT_(ptr noundef %i.c)
  %1 = xor i64 %i.d, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = tail call noundef i64 @_ZN6duckdb4HashIPKcEEmT_(ptr noundef %i.f)
  %2 = xor i64 %1, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load i8, ptr %i.h, align 8, !tbaa !277, !range !110, !noundef !111
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.j, i64 4717996019076358352, i64 0
  %i.l = xor i64 %2, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load i8, ptr %i.m, align 8, !tbaa !279, !range !110, !noundef !111
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i64 4717996019076358352, i64 0
  %i.q = xor i64 %i.l, %i.p
  ret i64 %i.q
}

end_hunk_0
