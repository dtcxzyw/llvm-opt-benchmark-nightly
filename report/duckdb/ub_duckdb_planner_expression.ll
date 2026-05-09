inline.NumInlined: 4585
inline.NumDeleted: 1902
begin_hunk_0_@_ZNK6duckdb24BoundAggregateExpression4HashEv:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.f = load i8, ptr %i.e, align 8, !tbaa !43
  %i.g = icmp eq i8 %i.f, 2
  %i.h = select i1 %i.g, i64 4717996019076358352, i64 0
  %i.i = xor i64 %i.d, %i.h
  ret i64 %i.i
}

end_hunk_0
