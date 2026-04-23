inline.NumInlined: 91
inline.NumDeleted: 45
begin_hunk_0_@je_large_palloc:bb.a
bb.e:                                             ; preds = %bb.d
  %i.p = shl nuw i64 %i.f, 1
  %i.q = add nsw i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true)
  %5 = sub nuw nsw i64 60, %i.r
  %notmask.i31 = shl nsw i64 -1, %5               ; 2 uses
  %6 = xor i64 %notmask.i31, -1
  %i.s = add nuw nsw i64 %i.f, %6
  %i.t = and i64 %i.s, %notmask.i31
  br label %sz_s2u.exit

end_hunk_0
begin_hunk_1_@je_large_palloc:bb.a
bb.i:                                             ; preds = %bb.h
  %i.y = shl nuw i64 %2, 1
  %i.z = add i64 %i.y, -1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.z, i1 true)
  %7 = sub nuw nsw i64 60, %i.aa
  %notmask.i = shl nsw i64 -1, %7                 ; 2 uses
  %8 = xor i64 %notmask.i, -1
  %i.ab = add nuw nsw i64 %2, %8
  %i.ac = and i64 %i.ab, %notmask.i
  br label %sz_s2u.exit29

end_hunk_1
begin_hunk_2_@je_large_ralloc_no_move:bb.a
bb.t:                                             ; preds = %bb.s
  %i.cx = shl nuw i64 %3, 1
  %i.cy = add i64 %i.cx, -1
  %i.cz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cy, i1 true) ; 2 uses
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 2
  %i.dc = xor i32 %i.db, 252
  %i.dd = add nsw i32 %i.dc, -20
  %i.de = sub nuw nsw i64 60, %i.cz               ; 2 uses
  %5 = shl nsw i64 -1, %i.de
  %i.df = add nsw i64 %3, -1
  %i.dg = and i64 %5, %i.df
  %i.dh = lshr i64 %i.dg, %i.de
end_hunk_2
begin_hunk_3_@large_ralloc_no_move_expand:bb.a
bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = xor i32 %i.x, 252
  %i.z = add nsw i32 %i.y, -20
  %i.aa = sub nuw nsw i64 60, %i.v                ; 2 uses
  %4 = shl nsw i64 -1, %i.aa
  %i.ab = add nsw i64 %2, -1
  %i.ac = and i64 %4, %i.ab
  %i.ad = lshr i64 %i.ac, %i.aa
end_hunk_3
begin_hunk_4_@je_large_ralloc:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ah = shl nuw i64 %i.h, 1
  %i.ai = add i64 %i.ah, -1
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ai, i1 true) ; 2 uses
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 2
  %i.am = xor i32 %i.al, 252
  %i.an = add nsw i32 %i.am, -20
  %i.ao = sub nuw nsw i64 60, %i.aj               ; 2 uses
  %12 = shl nsw i64 -1, %i.ao
  %i.ap = add nsw i64 %i.h, -1
  %i.aq = and i64 %12, %i.ap
  %i.ar = lshr i64 %i.aq, %i.ao
end_hunk_4
begin_hunk_5_@arena_sdalloc_no_tcache:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = xor i32 %i.l, 252
  %i.n = add nsw i32 %i.m, -20
  %i.o = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %3 = shl nsw i64 -1, %i.o
  %i.p = add nsw i64 %2, -1
  %i.q = and i64 %3, %i.p
  %i.r = lshr i64 %i.q, %i.o
end_hunk_5
