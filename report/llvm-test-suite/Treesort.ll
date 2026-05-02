inline.NumInlined: 6
begin_hunk_0_@Checktree:bb.a
  br i1 %.not14, label %bb.f, label %common.ret17

common.ret17:                                     ; preds = %bb.e, %bb.d, %bb.f
  %common.ret17.op = phi i32 [ %2, %bb.f ], [ 0, %bb.e ], [ %.0, %bb.d ]
  ret i32 %common.ret17.op

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @Checktree(ptr noundef nonnull %i.h)
  %1 = trunc nuw i32 %i.m to i1
  %2 = select i1 %1, i32 %.0, i32 0
  br label %common.ret17
}

end_hunk_0
