inline.NumInlined: 81
inline.NumDeleted: 6
begin_hunk_0_@srandmemberWithCountCommand:bb.a
bb.m:                                             ; preds = %bb.l, %._crit_edge160
  %.1 = phi i64 [ %.0, %bb.l ], [ %i.ba, %._crit_edge160 ] ; 3 uses
  %i.az = call i64 @llvm.umin.i64(i64 %.1, i64 %i.au) ; 3 uses
  %i.ba = sub i64 %.1, %i.az                      ; 2 uses
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.bc = trunc nuw nsw i64 %i.az to i32
  call void @lpRandomEntries(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef %i.aw) #12
end_hunk_0
begin_hunk_1_@srandmemberWithCountCommand:bb.a
  %i.be = and i64 %i.bd, 1024
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = icmp ne i64 %i.ba, 0
  %or.cond5 = and i1 %i.bg, %i.bf
  br i1 %or.cond5, label %bb.m, label %bb.q, !llvm.loop !126

.lr.ph159:                                        ; preds = %bb.m, %bb.p
end_hunk_1
