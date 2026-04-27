inline.NumInlined: 27
inline.NumDeleted: 13
begin_hunk_0_@je_buf_writer_init:bb.a
bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw i64 %5, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 2
  %i.p = xor i32 %i.o, 252
  %i.q = add nsw i32 %i.p, -20
  %i.r = sub nuw nsw i64 60, %i.m                 ; 2 uses
  %9 = shl nsw i64 -1, %i.r
  %i.s = add nsw i64 %5, -1
  %i.t = and i64 %9, %i.s
  %i.u = lshr i64 %i.t, %i.r
end_hunk_0
