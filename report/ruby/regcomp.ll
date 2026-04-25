inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@disable_noname_group_capture:bb.a
.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr nuw i8, ptr %i.g, i64 4
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 2)
  %3 = zext nneg i32 %smax to i64
  %4 = shl nuw nsw i64 %3, 2
  %5 = add nsw i64 %4, -4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep, i8 0, i64 %5, i1 false), !tbaa !119
  br label %._crit_edge

end_hunk_0
