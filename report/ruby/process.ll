begin_hunk_0
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !54
  %i.w = and i32 %i.v, 127                        ; 2 uses
  %sext = add nsw i32 %i.w, -1
  %1 = icmp ult i32 %sext, 126
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = or disjoint i32 %i.x, 1
  %narrow = select i1 %1, i32 %i.y, i32 4
  %.0 = zext nneg i32 %narrow to i64
  ret i64 %.0
}
end_hunk_0
begin_hunk_1

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.h = and i32 %1, 127                          ; 5 uses
  %sext = add nsw i32 %i.h, -1
  %2 = icmp ult i32 %sext, 126
  br i1 %2, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @ruby_signal_name(i32 noundef %i.h) #28 ; 2 uses
end_hunk_1
begin_hunk_2

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.235, ptr noundef nonnull %i.i, i32 noundef %i.h) #27 ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.k = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.236, i32 noundef %i.h) #27 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.l = icmp eq i32 %i.h, 0
  br i1 %i.l, label %bb.j, label %bb.k

end_hunk_2
begin_hunk_3
  %i.o = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.237, i32 noundef %i.n) #27 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.j, %bb.i
  %i.p = and i32 %1, 128
  %.not25 = icmp eq i32 %i.p, 0
  br i1 %.not25, label %bb.m, label %bb.l
end_hunk_3
