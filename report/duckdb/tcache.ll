inline.NumInlined: 256
inline.NumDeleted: 85
begin_hunk_0_@duckdb_je_tcache_create_explicit:bb.a
bb.e:                                             ; preds = %bb.d
  %i.w = shl nuw i64 %i.m, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.x, i1 true)
  %4 = sub nuw nsw i64 60, %i.y
  %notmask.i26 = shl nsw i64 -1, %4               ; 2 uses
  %5 = xor i64 %notmask.i26, -1
  %i.z = add nuw nsw i64 %i.m, %5
  %i.aa = and i64 %i.z, %notmask.i26
  br label %sz_s2u.exit

end_hunk_0
begin_hunk_1_@duckdb_je_tcache_create_explicit:bb.a
sz_s2u.exit21:                                    ; preds = %bb.g
  %i.ae = shl nuw nsw i64 %i.f, 1
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.af, i1 true)
  %6 = sub nuw nsw i64 60, %i.ag
  %notmask.i = shl nsw i64 -1, %6                 ; 2 uses
  %7 = xor i64 %notmask.i, -1
  %i.ah = add nuw nsw i64 %i.f, %7
  %i.ai = and i64 %i.ah, %notmask.i               ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.f
  br i1 %i.aj, label %sz_sa2u.exit, label %.thread30
end_hunk_1
begin_hunk_2_@duckdb_je_tsd_tcache_data_init:bb.a
bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %i.n, 1
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.y, i1 true)
  %4 = sub nuw nsw i64 60, %i.z
  %notmask.i36.i = shl nsw i64 -1, %4             ; 2 uses
  %5 = xor i64 %notmask.i36.i, -1
  %i.aa = add nuw nsw i64 %i.n, %5
  %i.ab = and i64 %i.aa, %notmask.i36.i
  br label %sz_s2u.exit.i

end_hunk_2
begin_hunk_3_@duckdb_je_tsd_tcache_data_init:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ag = shl nuw i64 %i.g, 1
  %i.ah = add i64 %i.ag, -1
  %i.ai = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %6 = sub nuw nsw i64 60, %i.ai
  %notmask.i.i = shl nsw i64 -1, %6               ; 2 uses
  %7 = xor i64 %notmask.i.i, -1
  %i.aj = add nuw nsw i64 %i.g, %7
  %i.ak = and i64 %i.aj, %notmask.i.i
  br label %sz_s2u.exit31.i

end_hunk_3
begin_hunk_4_@duckdb_je_tcache_boot:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.a, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.l, i1 true)
  %2 = sub nuw nsw i64 60, %i.m
  %notmask.i = shl nsw i64 -1, %2                 ; 2 uses
  %3 = xor i64 %notmask.i, -1
  %i.n = add nuw nsw i64 %i.a, %3
  %i.o = and i64 %i.n, %notmask.i
  br label %sz_s2u.exit

end_hunk_4
