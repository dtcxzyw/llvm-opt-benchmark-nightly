begin_hunk_0
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.ai = sub i64 0, %i.ah
  %i.aj = icmp eq i64 %i.af, %i.ai
  br i1 %i.aj, label %dictFindLink.exit.cont.thread.thread, label %dictFindLink.exit.cont.thread, !prof !58

dictFindLink.exit.cont.thread.thread:             ; preds = %.cont43.thread.thread
  store ptr null, ptr %2, align 8, !tbaa !16
  br label %dictFindLink.exit.cont.thread69

dictFindLink.exit.cont:                           ; preds = %.cont43.thread
  %i.ak = tail call fastcc ptr @dictFindLinkInternal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) ; 2 uses
end_hunk_0
begin_hunk_1
  %.not3563 = icmp eq ptr %i.al, null
  br i1 %.not3563, label %dictFindLink.exit.cont.thread69, label %.cont, !prof !67

dictFindLink.exit.cont.thread69:                  ; preds = %.cont43.thread, %dictFindLink.exit.cont.thread.thread, %dictFindLink.exit.cont.thread, %dictFindLink.exit.cont
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 904) #22
  tail call void @abort() #24
  unreachable
end_hunk_1
