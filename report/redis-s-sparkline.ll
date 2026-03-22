begin_hunk_0
  br i1 %.not84.us, label %48, label %._crit_edge.us.thread

._crit_edge.us.thread:                            ; preds = %43, %77, %._crit_edge.us
  %45 = add i32 %.071108.us, 1                    ; [#uses=1 type=i32]
  %46 = tail call ptr @sdscatlen(ptr noundef %.0109.us, ptr noundef %14, i64 noundef %13) #9 ; [#uses=1 type=ptr]
  %47 = tail call ptr @sdscatlen(ptr noundef %46, ptr noundef nonnull @.str, i64 noundef 1) #9 ; [#uses=1 type=ptr]
  br label %.lr.ph.us, !llvm.loop !29
end_hunk_0
