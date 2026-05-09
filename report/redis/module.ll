inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@RM_Call:bb.a

bb.cc:                                            ; preds = %bb.cb
  %i.ht = and i32 %i.g, 2
  %.not233 = icmp eq i32 %i.ht, 0                 ; 2 uses
  %spec.select = select i1 %.not233, i32 5, i32 4
  %4 = and i32 %i.g, 4
  %.not234 = icmp eq i32 %4, 0
  %5 = select i1 %.not233, i32 7, i32 6
  %spec.select255 = select i1 %.not234, i32 %5, i32 %spec.select
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
end_hunk_0
