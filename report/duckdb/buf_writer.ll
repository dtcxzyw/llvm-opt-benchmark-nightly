inline.NumInlined: 27
inline.NumDeleted: 13
begin_hunk_0_@duckdb_je_buf_writer_init:bb.a
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = sub nuw nsw i64 60, %i.m                 ; 2 uses
  %i.p = shl nsw i64 -1, %i.o
  %i.q = add nsw i64 %5, -1
end_hunk_0
begin_hunk_1_@duckdb_je_buf_writer_init:bb.a
  %i.s = lshr i64 %i.r, %i.o
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 3
  %9 = shl nuw nsw i32 %i.n, 2
  %reass.sub = sub nsw i32 %i.u, %9
  %i.v = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.e, %bb.d, %bb.c
end_hunk_1
