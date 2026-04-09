inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@ThunderDecodeRow:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1106.i, i8 %i.ah, i64 %i.am, i1 false), !tbaa !34
  %scevgep.i = getelementptr i8, ptr %.1106.i, i64 1
  %scevgep175.i = getelementptr i8, ptr %scevgep.i, i64 %i.al ; 2 uses
  %4 = add nsw i32 %.0104.i, -2
  %i.an = and i32 %i.aj, 2147483646
  %i.ao = sub nsw i32 %4, %i.an
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.i, label %._crit_edge.thread.i

bb.i:                                             ; preds = %._crit_edge.i
end_hunk_0
