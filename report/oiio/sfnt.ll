inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_cmap6_char_next:bb.a
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %exitcond = icmp eq i32 %.13641, 65535
  br i1 %exitcond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = add nuw nsw i32 %.13641, 1
end_hunk_0
