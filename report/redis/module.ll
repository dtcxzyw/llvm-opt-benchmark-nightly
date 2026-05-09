inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@RM_Call:bb.a

bb.cc:                                            ; preds = %bb.cb
  %i.ht = and i32 %i.g, 2
  %.not233 = icmp eq i32 %i.ht, 0
  %spec.select = select i1 %.not233, i32 5, i32 4
  %4 = lshr i32 %i.g, 1
  %5 = and i32 %4, 2
  %6 = or disjoint i32 %spec.select, %5
  %spec.select255 = xor i32 %6, 2
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
end_hunk_0
