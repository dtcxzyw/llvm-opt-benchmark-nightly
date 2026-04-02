begin_hunk_0
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %4 = load i32, ptr %2, align 1
  %5 = icmp ne i32 %4, 1179937895
  %6 = zext i1 %5 to i32
  %.not4 = icmp eq i32 %6, 0
  br i1 %.not4, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
