inline.NumInlined: 283
inline.NumDeleted: 32
begin_hunk_0_@zsetDel:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = tail call fastcc i32 @zsetRemoveFromSkiplist(ptr noundef %i.l, ptr noundef %1)
  %.not.not = icmp eq i32 %i.m, 0
  br i1 %.not.not, label %.thread, label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1791, ptr noundef nonnull @.str.7) #18
end_hunk_0
begin_hunk_1_@zrangeGenericCommand:bb.a

bb.l:                                             ; preds = %._crit_edge
  %spec.store.select11 = call i32 @llvm.umax.i32(i32 %.2154, i32 1)
  %7 = icmp ne i32 %.2123151, 0
  %i.aw = icmp eq i32 %.2154, 3                   ; 2 uses
  %or.cond6 = select i1 %7, i1 %i.aw, i1 false
  br i1 %or.cond6, label %bb.m, label %bb.n
end_hunk_1
