begin_hunk_0
  br i1 %i.ab, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = icmp sgt i64 %i.aa, -2
  %i.ac = select i1 %3, i64 -2147483648, i64 %i.aa
  br label %bb.g

end_hunk_0
