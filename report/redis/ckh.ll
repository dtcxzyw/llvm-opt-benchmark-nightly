inline.NumInlined: 64
inline.NumDeleted: 21
begin_hunk_0_@je_ckh_new:bb.a
bb.f:                                             ; preds = %bb.d
  %i.aa = shl nuw nsw i64 %i.s, 1
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ab, i1 true) ; 2 uses
  %notmask.i29 = ashr exact i64 -1152921504606846976, %i.ac
  %6 = lshr i64 1152921504606846975, %i.ac
  %i.ad = add nuw nsw i64 %i.s, %6
  %i.ae = and i64 %i.ad, %notmask.i29
  br label %sz_s2u.exit

end_hunk_0
begin_hunk_1_@je_ckh_insert:bb.a
bb.f:                                             ; preds = %bb.d
  %i.ad = shl nuw nsw i64 %i.v, 1
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %notmask.i37.i = ashr exact i64 -1152921504606846976, %i.af
  %7 = lshr i64 1152921504606846975, %i.af
  %i.ag = add nuw nsw i64 %7, %i.v
  %i.ah = and i64 %i.ag, %notmask.i37.i
  br label %sz_s2u.exit.i

end_hunk_1
begin_hunk_2_@je_ckh_remove:bb.a
bb.k:                                             ; preds = %bb.i
  %i.am = shl nuw nsw i64 %i.ae, 1
  %i.an = add nsw i64 %i.am, -1
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.an, i1 true) ; 2 uses
  %notmask.i29.i = ashr exact i64 -1152921504606846976, %i.ao
  %8 = lshr i64 1152921504606846975, %i.ao
  %i.ap = add nuw nsw i64 %8, %i.ae
  %i.aq = and i64 %i.ap, %notmask.i29.i
  br label %sz_s2u.exit.i

end_hunk_2
