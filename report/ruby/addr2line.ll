inline.NumInlined: 199
inline.NumDeleted: 47
begin_hunk_0_@fill_lines:bb.a

bb.dy:                                            ; preds = %.loopexit359
  %i.aby = icmp ne ptr %.0208.lcssa, null
  %20 = trunc nuw i32 %2 to i1                    ; 2 uses
  %or.cond7 = select i1 %i.aby, i1 %20, i1 false
  br i1 %or.cond7, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
end_hunk_0
begin_hunk_1_@fill_lines:bb.a

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.acc = icmp ne ptr %.0211.lcssa, null
  %or.cond9 = select i1 %i.acc, i1 %20, i1 false
  br i1 %or.cond9, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
end_hunk_1
