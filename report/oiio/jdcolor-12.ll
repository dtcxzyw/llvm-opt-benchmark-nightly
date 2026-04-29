inline.NumInlined: 2
begin_hunk_0_@rgb_rgb565_convert:bb.a
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aq, 2147483644              ; 7 uses
  %i.ar = trunc nuw nsw i64 %n.vec to i32
  %i.as = shl nuw nsw i64 %n.vec, 2
  %i.at = getelementptr i8, ptr %.049.i, i64 %i.as ; 2 uses
  %5 = shl nuw nsw i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %.051.i, i64 %5   ; 2 uses
  %6 = shl nuw nsw i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %.053.i, i64 %6   ; 2 uses
  %i.aw = shl nuw nsw i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %.055.i, i64 %i.aw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.049.i, i64 %offset.idx
  %offset.idx32 = shl i64 %index, 2
  %next.gep33.a = getelementptr i8, ptr %.051.i, i64 %offset.idx32
  %offset.idx34 = shl i64 %index, 2
  %next.gep35.a = getelementptr i8, ptr %.053.i, i64 %offset.idx34
  %offset.idx36 = shl i64 %index, 3               ; 4 uses
  %next.gep37.a = getelementptr i8, ptr %.055.i, i64 %offset.idx36
  %i.ay = getelementptr i8, ptr %.055.i, i64 %offset.idx36
end_hunk_0
