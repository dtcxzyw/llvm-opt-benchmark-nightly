inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0_@write_and_store_CBP_block_bit:bb.a
  br label %bb.d

bb.d:                                             ; preds = %switch.edge.thread131, %bb.c
  %i.r = phi i32 [ %i.q, %bb.c ], [ 0, %switch.edge.thread131 ] ; 6 uses
  %i.s = phi i32 [ %i.p, %bb.c ], [ 0, %switch.edge.thread131 ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !91
  %.not116 = icmp ne i32 %i.u, 0
end_hunk_0
begin_hunk_1_@write_and_store_CBP_block_bit:bb.a
  br i1 %brmerge125, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.k, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %6 = add nsw i32 %i.r, 19
  %i.bm = add nsw i32 %6, %i.s
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %7 = add nsw i32 %i.r, 35
  %i.bn = add nsw i32 %7, %i.s
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.j, %bb.f, %bb.m, %bb.l
end_hunk_1
