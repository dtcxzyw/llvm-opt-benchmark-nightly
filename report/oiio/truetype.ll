inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@tt_glyph_load:bb.a
  %i.qm = phi i8 [ 0, %bb.bm ], [ %i.qg, %.thread192.i ]
  %i.qn = load i32, ptr %i.pg, align 8, !tbaa !7
  %i.qo = icmp eq i32 %i.qn, 40                   ; 2 uses
  %6 = icmp ne i8 %.0109.i.i, 0
  %or.cond4.i.i = and i1 %6, %i.qo
  br i1 %or.cond4.i.i, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
end_hunk_0
begin_hunk_1_@load_truetype_glyph:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.e, align 4, !tbaa !3
  %.not372 = icmp eq i8 %3, 0
  br i1 %.not372, label %bb.ai, label %.thread355

bb.ai:                                            ; preds = %tt_get_metrics.exit
  %i.fr = load i32, ptr %i.cp, align 8, !tbaa !748
end_hunk_1
