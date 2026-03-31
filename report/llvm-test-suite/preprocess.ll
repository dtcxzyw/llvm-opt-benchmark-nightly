begin_hunk_0
  br i1 %i.ab, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notsub = add nsw i64 %i.aa, 1
  %3 = icmp ult i64 %notsub, -2147483647
  %i.ac = select i1 %3, i64 -2147483648, i64 %i.aa
  br label %bb.g

end_hunk_0
