inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@_mi_bitmap_try_find_from_claim_across:bb.a
  %notmask.i.i = shl nsw i64 -1, %3
  %i.e = xor i64 %notmask.i.i, -1                 ; 2 uses
  %.0.i.i = select i1 %i.d, i64 -1, i64 %i.e
  %i.f = add i64 %3, 63
  %i.g = icmp samesign ugt i64 %3, 63
  %.0.i.i.i = select i1 %i.g, i64 -1, i64 %i.e
  br label %bb.c
end_hunk_0
begin_hunk_1_@_mi_bitmap_try_find_from_claim_across:bb.a
  br i1 %.not.not.i.i, label %.loopexit, label %.lr.ph.split.i.i

bb.m:                                             ; preds = %bb.h
  %5 = sub i64 %i.f, %i.ak
  %i.bc = lshr i64 %5, 6
  %.not117.i = icmp ult i64 %i.bc, %i.af
  br i1 %.not117.i, label %.lr.ph.i32, label %.loopexit

end_hunk_1
