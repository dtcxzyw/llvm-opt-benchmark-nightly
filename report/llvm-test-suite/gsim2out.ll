inline.NumInlined: 20
begin_hunk_0_@gs_type1imagepath:bb.a

.preheader.lr.ph.i:                               ; preds = %bb.e
  %i.r = icmp sgt i32 %2, 0
  %15 = shl nsw i32 %2, 1
  %narrow.i = sub nuw nsw i32 -2, %15
  %i.s = sext i32 %narrow.i to i64
  br i1 %i.r, label %.preheader.us.preheader.i, label %fill_cells.exit.thread

end_hunk_0
begin_hunk_1_@fill_cells:bb.a

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 0
  %4 = shl nsw i32 %2, 1
  %narrow = sub nuw nsw i32 -2, %4
  %i.g = sext i32 %narrow to i64
  br i1 %i.f, label %.preheader.us.preheader, label %._crit_edge42

end_hunk_1
