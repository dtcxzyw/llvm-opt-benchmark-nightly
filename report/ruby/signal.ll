begin_hunk_0
@.str.28 = private unnamed_addr constant [27 x i8] c"invalid signal number (%d)\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"bad handler\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"SYSTEM_DEFAULT\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"SIG_IGN\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"SIG_DFL\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
end_hunk_0
begin_hunk_1

bb.l:                                             ; preds = %bb.k
  %i.ak = zext nneg i32 %.0 to i64
  %i.al = getelementptr i8, ptr %i.z, i64 %i.ak
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.al, ptr noundef nonnull dereferenceable(3) @.str.39, i64 3)
  %i.am = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %i.am, i32 %i.ai, i32 %.0
  br label %bb.m

end_hunk_1
begin_hunk_2
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.o, %.thread.i
  %i.al = phi ptr [ %i.ak, %bb.o ], [ %i.aj, %.thread.i ] ; 6 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !62
  switch i64 %i.an, label %trap_handler.exit [
end_hunk_2
begin_hunk_3
  br label %thread-pre-split.thread.sink.split.i

bb.q:                                             ; preds = %RSTRING_PTR.exit.i
  %bcmp21.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %i.al, ptr noundef nonnull dereferenceable(14) @.str.30, i64 14)
  %i.ap = icmp eq i32 %bcmp21.i, 0
  br i1 %i.ap, label %thread-pre-split.thread.sink.split.i, label %trap_handler.exit

bb.r:                                             ; preds = %RSTRING_PTR.exit.i
  %bcmp18.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.al, ptr noundef nonnull dereferenceable(7) @.str.31, i64 7)
  %i.aq = icmp eq i32 %bcmp18.i, 0
  br i1 %i.aq, label %thread-pre-split.thread.sink.split.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %bcmp19.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.al, ptr noundef nonnull dereferenceable(7) @.str.32, i64 7)
  %i.ar = icmp eq i32 %bcmp19.i, 0
  br i1 %i.ar, label %bb.p, label %bb.t

bb.t:                                             ; preds = %bb.s
  %bcmp20.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.al, ptr noundef nonnull dereferenceable(7) @.str.33, i64 7)
  %i.as = icmp eq i32 %bcmp20.i, 0
  br i1 %i.as, label %bb.p, label %trap_handler.exit

bb.u:                                             ; preds = %RSTRING_PTR.exit.i
  %bcmp17.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.al, ptr noundef nonnull dereferenceable(6) @.str.34, i64 6)
  %i.at = icmp eq i32 %bcmp17.i, 0
  br i1 %i.at, label %thread-pre-split.thread.sink.split.i, label %trap_handler.exit

bb.v:                                             ; preds = %RSTRING_PTR.exit.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.al, ptr noundef nonnull dereferenceable(4) @.str.35, i64 4)
  %i.au = icmp eq i32 %bcmp.i, 0
  br i1 %i.au, label %thread-pre-split.thread.sink.split.i, label %trap_handler.exit

thread-pre-split.thread.sink.split.i:             ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %bb.p, %RSTRING_PTR.exit.i
end_hunk_3
