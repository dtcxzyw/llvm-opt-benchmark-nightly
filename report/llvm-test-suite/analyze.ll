inline.NumInlined: 246
inline.NumDeleted: 77
begin_hunk_0_@ana_AutoConfiguration:bb.a
  %.val.i = load i32, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %.0109.val148.i, i64 68 ; 2 uses
  %.val149.i = load i32, ptr %i.cw, align 4
  %i.cx = add i32 %.val149.i, %.val.i             ; 2 uses
  %i.cy = getelementptr i8, ptr %.0109.val148.i, i64 72 ; 2 uses
  %.val.i.i224.i = load i32, ptr %i.cy, align 8
  %3 = sub i32 0, %.val.i.i224.i
  %.not136225.i = icmp ugt i32 %i.cx, %3
  br i1 %.not136225.i, label %._crit_edge.i99, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph232.i
end_hunk_0
begin_hunk_1_@ana_AutoConfiguration:bb.a
  %.val3.i.i.i = load i32, ptr %i.cv, align 8
  %.val4.i.i.i = load i32, ptr %i.cw, align 4
  %.val.i.i.i = load i32, ptr %i.cy, align 8
  %i.ew = add i32 %.val3.i.i.i, %.val4.i.i.i
  %i.ex = add i32 %i.ew, %.val.i.i.i
  %i.ey = add i32 %i.ex, -1
  %.not136.i = icmp ugt i32 %i.ev, %i.ey
  br i1 %.not136.i, label %._crit_edge.i99, label %bb.q, !llvm.loop !19

end_hunk_1
