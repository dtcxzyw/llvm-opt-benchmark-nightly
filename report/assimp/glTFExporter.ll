inline.NumInlined: 6973
inline.NumDeleted: 2254
begin_hunk_0_@_ZN9rapidjson8internal8PrettifyEPciii:bb.a
.lr.ph.preheader:                                 ; preds = %bb.h
  %scevgep = getelementptr i8, ptr %0, i64 2
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 3)
  %4 = zext nneg i32 %i.aq to i64
  %5 = add nsw i64 %4, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %5, i1 false)
  br label %._crit_edge

end_hunk_0
