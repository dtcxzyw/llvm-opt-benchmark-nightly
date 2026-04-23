inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0_@deflate_find_min_cost_path:bb.a

bb.c:                                             ; preds = %bb.b
  %i.r = zext i16 %i.g to i64
  %3 = xor i64 %i.r, -1
  %.add = shl nsw i64 %3, 2                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
end_hunk_0
