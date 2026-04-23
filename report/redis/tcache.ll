inline.NumInlined: 171
inline.NumDeleted: 65
begin_hunk_0_@je_tsd_tcache_data_init:bb.a
bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %i.j, 1
  %i.u = add nsw i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %notmask.i31 = ashr exact i64 -1152921504606846976, %i.v
  %4 = lshr i64 1152921504606846975, %i.v
  %i.w = add nuw nsw i64 %i.j, %4
  %i.x = and i64 %i.w, %notmask.i31
  br label %sz_s2u.exit

end_hunk_0
begin_hunk_1_@je_tsd_tcache_data_init:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ac = shl nuw i64 %i.d, 1
  %i.ad = add i64 %i.ac, -1
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ad, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ae
  %5 = lshr i64 1152921504606846975, %i.ae
  %i.af = add nuw nsw i64 %i.d, %5
  %i.ag = and i64 %i.af, %notmask.i
  br label %sz_s2u.exit27

end_hunk_1
begin_hunk_2_@je_tcache_create_explicit:bb.a
bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %i.j, 1
  %i.u = add nsw i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %notmask.i24 = ashr exact i64 -1152921504606846976, %i.v
  %4 = lshr i64 1152921504606846975, %i.v
  %i.w = add nuw nsw i64 %i.j, %4
  %i.x = and i64 %i.w, %notmask.i24
  br label %sz_s2u.exit

end_hunk_2
begin_hunk_3_@je_tcache_create_explicit:bb.a
sz_s2u.exit20:                                    ; preds = %bb.g
  %i.ab = shl nuw nsw i64 %i.c, 1
  %i.ac = add nsw i64 %i.ab, -1
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ac, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ad
  %5 = lshr i64 1152921504606846975, %i.ad
  %i.ae = add nuw nsw i64 %i.c, %5
  %i.af = and i64 %i.ae, %notmask.i               ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.c
  br i1 %i.ag, label %sz_sa2u.exit, label %.thread29
end_hunk_3
begin_hunk_4_@je_tcache_boot:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.a, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.m
  %2 = lshr i64 1152921504606846975, %i.m
  %i.n = add nuw nsw i64 %i.a, %2
  %i.o = and i64 %i.n, %notmask.i
  br label %sz_s2u.exit

end_hunk_4
begin_hunk_5_@je_tcache_boot:bb.a
bb.g:                                             ; preds = %bb.f
  %i.w = shl nuw i64 %.0.i, 1
  %i.x = add i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.x, i1 true) ; 3 uses
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 2
  %i.ab = xor i32 %i.aa, 252
  %i.ac = add nsw i32 %i.ab, -20
  %i.ad = sub nuw nsw i64 60, %i.y
  %3 = ashr exact i64 -1152921504606846976, %i.y
  %i.ae = add nsw i64 %.0.i, -1
  %i.af = and i64 %3, %i.ae
  %i.ag = lshr i64 %i.af, %i.ad
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3
end_hunk_5
