inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_ZN5Mixer1pEv:bb.a
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.g
  %i.h = shl i32 %.promoted, 1
  %i.i = and i32 %i.h, 14
  %narrow = sub nuw nsw i32 16, %i.i
  %i.j = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.j, i1 false), !tbaa !33
  %indvars.iv.next = add i32 %.promoted, 1        ; 2 uses
end_hunk_0
