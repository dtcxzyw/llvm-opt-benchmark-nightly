inline.NumInlined: 107
inline.NumDeleted: 56
begin_hunk_0_@base_extent_bump_alloc_post:bb.a
bb.e:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %i.b, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.k, i1 true) ; 3 uses
  %i.m = sub nuw nsw i64 60, %i.l
  %5 = ashr exact i64 -1152921504606846976, %i.l
  %i.n = and i64 %5, %.val17
  %i.o = lshr i64 %i.n, %i.m
  %i.p = and i64 %i.o, 3
end_hunk_0
begin_hunk_1_@base_alloc_impl:bb.a
bb.g:                                             ; preds = %bb.f
  %i.aa = shl nuw i64 %i.h, 1
  %i.ab = add i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.ab, i1 true) ; 3 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i64 60, %i.ac
  %5 = ashr exact i64 -1152921504606846976, %i.ac
  %i.af = add nsw i64 %i.g, -9
  %i.ag = and i64 %5, %i.af
  %i.ah = lshr i64 %i.ag, %i.ae
end_hunk_1
