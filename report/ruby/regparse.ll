inline.NumInlined: 253
inline.NumDeleted: 55
begin_hunk_0_@fetch_name:bb.a
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not134.not = icmp eq i32 %6, 0
  br i1 %.not134.not, label %.thread, label %.preheader

bb.n:                                             ; preds = %bb.l
  %i.z = icmp eq i32 %i.n, 45
end_hunk_0
begin_hunk_1_@and_code_range_buf:bb.a
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %6 = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %6, %i.b
  br i1 %or.cond, label %bb.c, label %bbuf_clone.exit

bb.c:                                             ; preds = %bb.b
end_hunk_1
