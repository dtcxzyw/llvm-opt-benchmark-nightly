inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@Round_To_Half_Grid:bb.a

bb.c:                                             ; preds = %bb.a
  %i.j = sub i64 %i.d, %1
  %i.k = and i64 %i.j, -64                        ; 2 uses
  %3 = sub nuw nsw i64 -32, %i.k
  %4 = icmp slt i64 %i.k, -32
  %spec.store.select1 = select i1 %4, i64 -32, i64 %3
  br label %bb.d

end_hunk_0
