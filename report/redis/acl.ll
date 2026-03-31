begin_hunk_0
bb.ap:                                            ; preds = %sdslen.exit156
  %i.fa = tail call ptr @__errno_location() #29
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !9
  switch i32 %i.fb, label %ACLSetUserStringError.exit.a [
    i32 2, label %ACLSetUserStringError.exit.thread178
    i32 22, label %ACLSetUserStringError.exit.thread
    i32 17, label %bb.aq
    i32 21, label %bb.ar
    i32 19, label %bb.as
end_hunk_0
begin_hunk_1
  %i.fe = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.2188, ptr noundef nonnull @.str.110, ptr noundef %i.fc, i32 noundef %i.ee, ptr noundef %i.fd, ptr noundef nonnull @.str.80) #26
  br label %bb.ax

ACLSetUserStringError.exit.thread:                ; preds = %ACLSetUserStringError.exit.a, %bb.ap, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0.i157177 = phi ptr [ @.str.79, %ACLSetUserStringError.exit.a ], [ @.str.87, %bb.av ], [ @.str.86, %bb.au ], [ @.str.85, %bb.at ], [ @.str.84, %bb.as ], [ @.str.83, %bb.ar ], [ @.str.82, %bb.aq ], [ @.str.81, %bb.ap ]
  %i.ff = icmp eq i32 %.0119186, 0
  br i1 %i.ff, label %bb.aw, label %bb.ax

end_hunk_1
