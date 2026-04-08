inline.NumInlined: 40
inline.NumDeleted: 16
begin_hunk_0_@JPEGDecodeRaw:bb.a
  br i1 %.not139165, label %.preheader157.us.preheader, label %.lr.ph174.split.split

.preheader157.us.preheader:                       ; preds = %.lr.ph174.split
  %i.cq = mul i32 %i.az, %i.bb
  %i.cr = add i32 %.0131187, %i.cq
  br label %._crit_edge

end_hunk_0
begin_hunk_1_@JPEGDecodeRaw:bb.a
  br i1 %i.bh, label %.preheader157.us180.preheader, label %.preheader157.preheader

.preheader157.preheader:                          ; preds = %.lr.ph174.split.split
  %i.cs = mul i32 %i.az, %i.bb
  %i.ct = add i32 %.0131187, %i.cs
  br label %._crit_edge

end_hunk_1
