begin_hunk_0_@SHA1Final:bb.a
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ac = and i32 %i.ab, 504
  %.not18 = icmp eq i32 %i.ac, 448
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !15
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %.lr.ph.a
  call void @SHA1Update(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ae = and i32 %i.ad, 504
end_hunk_0
