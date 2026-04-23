inline.NumInlined: 94
inline.NumDeleted: 48
begin_hunk_0_@duckdb_je_large_ralloc_no_move:bb.a
  %i.dh = add i64 %i.dg, -1
  %i.di = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dh, i1 true) ; 2 uses
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = sub nuw nsw i64 60, %i.di               ; 2 uses
  %i.dl = shl nsw i64 -1, %i.dk
  %i.dm = add nsw i64 %3, -1
end_hunk_0
begin_hunk_1_@duckdb_je_large_ralloc_no_move:bb.a
  %i.do = lshr i64 %i.dn, %i.dk
  %i.dp = trunc i64 %i.do to i32
  %i.dq = and i32 %i.dp, 3
  %5 = shl nuw nsw i32 %i.dj, 2
  %reass.sub = sub nsw i32 %i.dq, %5
  %i.dr = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.w, %bb.v, %bb.u
end_hunk_1
begin_hunk_2_@large_ralloc_no_move_expand:bb.a
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v                 ; 2 uses
  %i.y = shl nsw i64 -1, %i.x
  %i.z = add nsw i64 %2, -1
end_hunk_2
begin_hunk_3_@large_ralloc_no_move_expand:bb.a
  %i.ab = lshr i64 %i.aa, %i.x
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %4 = shl nuw nsw i32 %i.w, 2
  %reass.sub = sub nsw i32 %i.ad, %4
  %i.ae = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
end_hunk_3
begin_hunk_4_@duckdb_je_large_ralloc:bb.a
  %i.ai = add i64 %i.ah, -1
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ai, i1 true) ; 2 uses
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = sub nuw nsw i64 60, %i.aj               ; 2 uses
  %i.am = shl nsw i64 -1, %i.al
  %i.an = add nsw i64 %i.h, -1
end_hunk_4
begin_hunk_5_@duckdb_je_large_ralloc:bb.a
  %i.ap = lshr i64 %i.ao, %i.al
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 3
  %12 = shl nuw nsw i32 %i.ak, 2
  %reass.sub = sub nsw i32 %i.ar, %12
  %i.as = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.j, %bb.h
end_hunk_5
begin_hunk_6_@arena_sdalloc_no_tcache:bb.a
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %i.m = shl nsw i64 -1, %i.l
  %i.n = add nsw i64 %2, -1
end_hunk_6
begin_hunk_7_@arena_sdalloc_no_tcache:bb.a
  %i.p = lshr i64 %i.o, %i.l
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %3 = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.r, %3
  %i.s = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
end_hunk_7
