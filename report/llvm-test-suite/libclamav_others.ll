inline.NumInlined: 21
inline.NumDeleted: 3
begin_hunk_0_@cl_settempdir:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35, i64 noundef %i.b)
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.b) #27 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %cli_malloc.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %i.b)
  tail call void @perror(ptr noundef nonnull @.str.37) #26
  unreachable

cli_malloc.exit:                                  ; preds = %bb.d
  %i.e = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %0) #25 ; 0 uses
  %i.f = tail call i32 @putenv(ptr noundef nonnull %i.d) #25
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %bb.f, label %bb.h

end_hunk_0
