inline.NumInlined: 42
begin_hunk_0_@dgesl:bb.a
  %i.bu = mul i64 %i.bt, %i.bq
  %i.bv = shl i64 %i.bu, 2                        ; 2 uses
  %i.bw = mul nsw i64 %i.bq, -4
  %6 = shl nsw i64 %i.bq, 2
  %7 = sub nuw nsw i64 -4, %6
  %i.bx = add nsw i64 %i.bp, -2
  %i.by = getelementptr i8, ptr %0, i64 %i.bv
  %i.bz = getelementptr i8, ptr %0, i64 %i.bv
end_hunk_0
