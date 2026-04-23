inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@Round_To_Half_Grid:bb.a

bb.c:                                             ; preds = %bb.a
  %i.j = sub i64 %i.d, %1
  %i.k = and i64 %i.j, -64
  %3 = xor i64 %i.k, -32                          ; 2 uses
  %4 = icmp sgt i64 %3, 0
  %spec.store.select1 = select i1 %4, i64 -32, i64 %3
  br label %bb.d

end_hunk_0
