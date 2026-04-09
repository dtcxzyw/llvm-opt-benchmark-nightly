inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@luaF_newLclosure:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.i = add i32 %1, -1                           ; 2 uses
  %i.j = sext i32 %i.i to i64
  %3 = zext i32 %i.i to i64
  %4 = sub nsw i64 %i.j, %3
  %i.k = shl nsw i64 %4, 3
  %5 = getelementptr i8, ptr %i.d, i64 %i.k
  %scevgep = getelementptr i8, ptr %5, i64 40
  %i.l = zext i32 %1 to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.m, i1 false), !tbaa !8
end_hunk_0
