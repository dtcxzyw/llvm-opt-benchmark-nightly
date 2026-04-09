inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@cli_strtokenize:bb.a
  %i.f = shl i64 %.017, 3
  %i.g = getelementptr i8, ptr %3, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %4 = shl i64 %2, 3
  %5 = add i64 %4, -8
  %i.h = shl i64 %.017, 3
  %6 = sub i64 %5, %i.h
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %6, i1 false), !tbaa !41
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
end_hunk_0
