inline.NumInlined: 27
inline.NumDeleted: 13
begin_hunk_0_@je_buf_writer_init:bb.a
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %9 = shl nuw nsw i32 %i.n, 2
  %10 = xor i32 %9, 252
  %11 = add nsw i32 %10, -20
  %i.o = sub nuw nsw i64 60, %i.m                 ; 2 uses
  %i.p = shl nsw i64 -1, %i.o
  %i.q = add nsw i64 %5, -1
end_hunk_0
begin_hunk_1_@je_buf_writer_init:bb.a
  %i.s = lshr i64 %i.r, %i.o
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 3
  %12 = or disjoint i32 %i.u, %11
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.i, %bb.c ], [ %12, %bb.e ], [ 235, %bb.d ] ; 2 uses
  %i.v = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.w = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.w, label %tsdn_witness_tsdp_get.exit.thread.i, label %tsdn_witness_tsdp_get.exit.i
end_hunk_1
