inline.NumInlined: 2
begin_hunk_0_@rgb_rgb565_convert:bb.a
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aq, 2147483644              ; 5 uses
  %i.ar = trunc nuw nsw i64 %n.vec to i32
  %i.as = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.at = getelementptr i8, ptr %.049.i, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %.051.i, i64 %i.as ; 2 uses
  %i.av = getelementptr i8, ptr %.053.i, i64 %i.as ; 2 uses
  %i.aw = shl nuw nsw i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %.055.i, i64 %i.aw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2                 ; 3 uses
  %next.gep = getelementptr i8, ptr %.049.i, i64 %offset.idx
  %next.gep33.a = getelementptr i8, ptr %.051.i, i64 %offset.idx
  %next.gep35.a = getelementptr i8, ptr %.053.i, i64 %offset.idx
  %offset.idx36 = shl i64 %index, 3               ; 4 uses
  %next.gep37.a = getelementptr i8, ptr %.055.i, i64 %offset.idx36
  %i.ay = getelementptr i8, ptr %.055.i, i64 %offset.idx36
end_hunk_0
