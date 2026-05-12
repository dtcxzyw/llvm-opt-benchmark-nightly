inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0_@scanmanager:bb.a
  br label %bb.bm

bb.w:                                             ; preds = %bb.u
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.at = call i32 @opt_check(ptr noundef %0, ptr noundef nonnull @.str.23) #19
  %.not207 = icmp eq i32 %i.at, 0
  br i1 %.not207, label %bb.aa, label %bb.x
end_hunk_0
