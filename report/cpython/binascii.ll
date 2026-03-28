begin_hunk_0
  br i1 %i.z, label %binascii_b2a_ascii85_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = icmp ugt i64 %.140, 1
  br i1 %5, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l
  %.036 = phi i32 [ %i.y, %bb.n ], [ 0, %bb.l ]
end_hunk_0
begin_hunk_1
  br i1 %i.v, label %binascii_a2b_ascii85_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %6 = icmp ugt i64 %.033, 1
  br i1 %6, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0 = phi i32 [ %i.u, %bb.k ], [ 0, %bb.i ]
end_hunk_1
begin_hunk_2
  br i1 %i.v, label %binascii_b2a_qp_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %5 = icmp ugt i64 %.036, 1
  br i1 %5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.033 = phi i32 [ %i.u, %bb.k ], [ 1, %bb.i ]
end_hunk_2
