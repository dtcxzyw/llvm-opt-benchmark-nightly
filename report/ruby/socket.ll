inline.NumInlined: 117
inline.NumDeleted: 39
begin_hunk_0_@sock_sockaddr:bb.a
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 16, %bb.b ], [ 4, %bb.a ]
  %.05 = phi i64 [ 8, %bb.b ], [ 4, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.05
  %i.e = tail call i64 @rb_str_new(ptr noundef nonnull %i.d, i64 noundef %.sink) #16
  ret i64 %i.e
}

end_hunk_0
