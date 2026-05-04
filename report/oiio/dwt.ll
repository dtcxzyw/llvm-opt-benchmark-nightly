inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_dwt_encode_and_deinterleave_v:bb.a
  %i.m = trunc i64 %i.k to i32
  %i.n = icmp ugt i64 %i.k, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i
end_hunk_0
begin_hunk_1_@opj_dwt_encode_and_deinterleave_v_real:bb.a
  %i.n = trunc i64 %i.l to i32
  %i.o = icmp ugt i64 %i.l, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i
end_hunk_1
