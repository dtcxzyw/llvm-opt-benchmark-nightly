inline.NumInlined: 130
inline.NumDeleted: 5
begin_hunk_0_@ACLLoadFromFile:bb.a
bb.ap:                                            ; preds = %sdslen.exit156
  %i.fa = tail call ptr @__errno_location() #29
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !9
  switch i32 %i.fb, label %ACLSetUserStringError.exit.thread178 [
    i32 2, label %bb.aq
    i32 22, label %ACLSetUserStringError.exit.thread
    i32 17, label %bb.ar
    i32 21, label %bb.as
    i32 19, label %bb.at
    i32 74, label %bb.au
    i32 114, label %bb.av
    i32 10, label %ACLSetUserStringError.exit.a
  ]

bb.aq:                                            ; preds = %bb.ap
  %2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8400), align 8, !tbaa !232
  %3 = load ptr, ptr %i.eh, align 8, !tbaa !38
  %4 = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.2188, ptr noundef nonnull @.str.110, ptr noundef %2, i32 noundef %i.ee, ptr noundef %3, ptr noundef nonnull @.str.80) #26
  br label %bb.ax

bb.ar:                                            ; preds = %bb.ap
  br label %ACLSetUserStringError.exit.thread
end_hunk_0
begin_hunk_1_@ACLLoadFromFile:bb.a
  br label %ACLSetUserStringError.exit.thread

ACLSetUserStringError.exit.thread178:             ; preds = %bb.ap
  br label %ACLSetUserStringError.exit.thread

ACLSetUserStringError.exit.thread:                ; preds = %bb.ap, %ACLSetUserStringError.exit.a, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %ACLSetUserStringError.exit.thread178
  %.0.i157177 = phi ptr [ @.str.79, %ACLSetUserStringError.exit.thread178 ], [ @.str.87, %ACLSetUserStringError.exit.a ], [ @.str.86, %bb.av ], [ @.str.85, %bb.au ], [ @.str.84, %bb.at ], [ @.str.83, %bb.as ], [ @.str.82, %bb.ar ], [ @.str.81, %bb.ap ]
  %i.fc = icmp eq i32 %.0119186, 0
  br i1 %i.fc, label %bb.aw, label %bb.ax

end_hunk_1
begin_hunk_2_@ACLLoadFromFile:bb.a
  %i.fe = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.2188, ptr noundef nonnull @.str.111, ptr noundef %i.fd, i32 noundef %i.ef, ptr noundef nonnull %.0.i157177) #26
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aq, %bb.aw, %ACLSetUserStringError.exit.thread, %sdslen.exit156
  %.2121 = phi i32 [ %.0119186, %sdslen.exit156 ], [ %.0119186, %bb.aq ], [ 1, %bb.aw ], [ 1, %ACLSetUserStringError.exit.thread ]
  %.4 = phi ptr [ %.2188, %sdslen.exit156 ], [ %4, %bb.aq ], [ %i.fe, %bb.aw ], [ %.2188, %ACLSetUserStringError.exit.thread ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ff = load i32, ptr %i.f, align 4, !tbaa !9   ; 3 uses
  %i.fg = sext i32 %i.ff to i64
end_hunk_2
