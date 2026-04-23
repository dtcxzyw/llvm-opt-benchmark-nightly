inline.NumInlined: 129
inline.NumDeleted: 61
begin_hunk_0_@base_extent_bump_alloc_post:bb.a
bb.e:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %i.b, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.k, i1 true) ; 2 uses
  %i.m = sub nuw nsw i64 60, %i.l                 ; 2 uses
  %5 = shl nsw i64 -1, %i.m
  %i.n = and i64 %5, %.val
  %i.o = lshr i64 %i.n, %i.m
  %i.p = and i64 %i.o, 3
end_hunk_0
begin_hunk_1_@base_alloc_impl:bb.a
bb.g:                                             ; preds = %bb.f
  %i.aa = shl nuw i64 %i.h, 1
  %i.ab = add i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.ab, i1 true) ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i64 60, %i.ac               ; 2 uses
  %6 = shl nsw i64 -1, %i.ae
  %i.af = add nsw i64 %i.g, -17
  %i.ag = and i64 %6, %i.af
  %i.ah = lshr i64 %i.ag, %i.ae
end_hunk_1
begin_hunk_2_@duckdb_je_b0_alloc_tcache_stack:bb.a
bb.i:                                             ; preds = %bb.h
  %i.as = shl nuw i64 %i.ai, 1
  %i.at = add i64 %i.as, -1
  %i.au = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.at, i1 true)
  %2 = sub nuw nsw i64 60, %i.au
  %notmask.i = shl nsw i64 -1, %2                 ; 2 uses
  %3 = xor i64 %notmask.i, -1
  %i.av = add nuw nsw i64 %i.ai, %3
  %i.aw = and i64 %i.av, %notmask.i
  br label %sz_s2u.exit

end_hunk_2
begin_hunk_3_@duckdb_je_b0_dalloc_tcache_stack:bb.a
bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw i64 %i.r, 1
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2305843009213693952) %i.aa, i1 true) ; 2 uses
  %i.ac = sub nuw nsw i64 60, %i.ab               ; 2 uses
  %2 = shl nsw i64 -1, %i.ac
  %i.ad = and i64 %2, %.val.i
  %i.ae = lshr i64 %i.ad, %i.ac
  %i.af = and i64 %i.ae, 3
end_hunk_3
