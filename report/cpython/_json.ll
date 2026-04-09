inline.NumInlined: 263
inline.NumDeleted: 48
begin_hunk_0_@scan_once_unicode:bb.a
  br i1 %min.iters.check, label %PyUnicode_READ.exit203.us239.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %5 = add i64 %.8207222.i, 32
  %6 = sub i64 %5, %3
  %scevgep = getelementptr i8, ptr %i.tt, i64 %6
  %i.tx = shl i64 %.8207222.i, 1
  %scevgep266 = getelementptr i8, ptr %.0.i.i209, i64 %i.tx
  %bound0 = icmp ult ptr %i.tv, %scevgep266
end_hunk_0
begin_hunk_1_@scan_once_unicode:bb.a
  br i1 %min.iters.check277, label %PyUnicode_READ.exit203.us.i.preheader, label %vector.memcheck275

vector.memcheck275:                               ; preds = %iter.check291
  %7 = add i64 %i.tu, 32
  %i.ur = add i64 %3, %.0.i.i209276
  %i.us = sub i64 %7, %i.ur
  %diff.check = icmp ult i64 %i.us, 32
  br i1 %diff.check, label %PyUnicode_READ.exit203.us.i.preheader, label %vector.main.loop.iter.check278

vector.main.loop.iter.check278:                   ; preds = %vector.memcheck275
end_hunk_1
begin_hunk_2_@scan_once_unicode:bb.a
  br i1 %min.iters.check311, label %PyUnicode_READ.exit203.i.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %PyUnicode_READ.exit203.preheader.i
  %8 = add i64 %.8207222.i, 32
  %9 = sub i64 %8, %3
  %scevgep306 = getelementptr i8, ptr %i.tt, i64 %9
  %i.vi = shl i64 %.8207222.i, 2
  %scevgep307 = getelementptr i8, ptr %.0.i.i209, i64 %i.vi
  %bound0308 = icmp ult ptr %i.tv, %scevgep307
end_hunk_2
