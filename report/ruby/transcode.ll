inline.NumInlined: 403
inline.NumDeleted: 97
begin_hunk_0_@rb_econv_prepare_options:bb.a
  %i.cp = and i64 %i.bz, -5
  %.not70.i = icmp eq i64 %i.cp, 0
  %i.cq = and i64 %i.bu, -5
  %.not69.i = icmp eq i64 %i.cq, 0
  %spec.select.i = select i1 %.not69.i, i32 0, i32 256 ; 2 uses
  %3 = or disjoint i32 %spec.select.i, 4096
  %.1.i = select i1 %.not70.i, i32 %spec.select.i, i32 %3 ; 2 uses
  %i.cr = or disjoint i32 %.1.i, 8192
  %.2.i = select i1 %.not71.i, i32 %.1.i, i32 %i.cr ; 2 uses
end_hunk_0
begin_hunk_1_@econv_primitive_convert:bb.a
  %i.bq = load i64, ptr @sym_partial_input, align 8, !tbaa !25
  %i.br = tail call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bq) #19
  %i.bs = and i64 %i.br, -5
  %.not61 = icmp eq i64 %i.bs, 0
  %spec.select = select i1 %.not61, i32 0, i32 131072 ; 2 uses
  %i.bt = load i64, ptr @sym_after_output, align 8, !tbaa !25
  %i.bu = tail call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bt) #19
  %i.bv = and i64 %i.bu, -5
  %.not62 = icmp eq i64 %i.bv, 0
  %3 = or disjoint i32 %spec.select, 262144
  %.1 = select i1 %.not62, i32 %spec.select, i32 %3
  br label %bb.z

end_hunk_1
