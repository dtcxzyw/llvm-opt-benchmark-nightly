inline.NumInlined: 4585
inline.NumDeleted: 1902
begin_hunk_0_@_ZNK6duckdb24BoundAggregateExpression4HashEv:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.f = load i8, ptr %i.e, align 8, !tbaa !43
  %i.g = icmp eq i8 %i.f, 2
  %i.h = select i1 %i.g, i64 -2960836687051489901, i64 0 ; 2 uses
  %1 = lshr i64 %i.h, 32
  %2 = xor i64 %1, %i.h
  %3 = mul i64 %2, -2960836687051489901           ; 2 uses
  %4 = lshr i64 %3, 32
  %5 = xor i64 %i.d, %4
  %i.i = xor i64 %5, %3
  ret i64 %i.i
}

end_hunk_0
