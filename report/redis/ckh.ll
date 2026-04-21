inline.NumInlined: 64
inline.NumDeleted: 21
begin_hunk_0_@je_ckh_new:bb.a
bb.f:                                             ; preds = %bb.d
  %i.aa = shl nuw nsw i64 %i.s, 1
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ab, i1 true)
  %6 = sub nuw nsw i64 60, %i.ac
  %notmask.i29 = shl nsw i64 -1, %6               ; 2 uses
  %7 = xor i64 %notmask.i29, -1
  %i.ad = add nuw nsw i64 %i.s, %7
  %i.ae = and i64 %i.ad, %notmask.i29
  br label %sz_s2u.exit

end_hunk_0
begin_hunk_1_@je_ckh_insert:bb.a
bb.f:                                             ; preds = %bb.d
  %i.ad = shl nuw nsw i64 %i.v, 1
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true)
  %7 = sub nuw nsw i64 60, %i.af
  %notmask.i37.i = shl nsw i64 -1, %7             ; 2 uses
  %8 = xor i64 %notmask.i37.i, -1
  %i.ag = add nuw nsw i64 %i.v, %8
  %i.ah = and i64 %i.ag, %notmask.i37.i
  br label %sz_s2u.exit.i

end_hunk_1
begin_hunk_2_@je_ckh_remove:bb.a
bb.k:                                             ; preds = %bb.i
  %i.am = shl nuw nsw i64 %i.ae, 1
  %i.an = add nsw i64 %i.am, -1
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.an, i1 true)
  %8 = sub nuw nsw i64 60, %i.ao
  %notmask.i29.i = shl nsw i64 -1, %8             ; 2 uses
  %9 = xor i64 %notmask.i29.i, -1
  %i.ap = add nuw nsw i64 %i.ae, %9
  %i.aq = and i64 %i.ap, %notmask.i29.i
  br label %sz_s2u.exit.i

end_hunk_2
