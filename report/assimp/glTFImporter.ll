begin_hunk_0
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %2, ptr noundef nonnull dereferenceable(4) @.str, i64 4)
  %.not4 = icmp eq i32 %bcmp, 0
  br i1 %.not4, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
