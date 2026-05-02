inline.NumInlined: 6
begin_hunk_0_@Checktree:bb.a
  br i1 %.not14, label %bb.f, label %common.ret17

common.ret17:                                     ; preds = %bb.e, %bb.d, %bb.f
  %common.ret17.op = phi i32 [ %4, %bb.f ], [ 0, %bb.e ], [ %.0, %bb.d ]
  ret i32 %common.ret17.op

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @Checktree(ptr noundef nonnull %i.h)
  %1 = icmp ne i32 %i.m, 0
  %2 = icmp ne i32 %.0, 0
  %3 = select i1 %1, i1 %2, i1 false
  %4 = zext i1 %3 to i32
  br label %common.ret17
}

end_hunk_0
