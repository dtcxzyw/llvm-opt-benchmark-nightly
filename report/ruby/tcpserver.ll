begin_hunk_0_@tcp_svr_init:bb.a

bb.b:                                             ; preds = %.preheader2
  %i.b = load i64, ptr %1, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %.preheader2, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 4, %.preheader2 ]
  %.286.i = phi i32 [ 1, %bb.b ], [ 0, %.preheader2 ] ; 2 uses
  %3 = add nuw nsw i32 %.286.i, 1
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
end_hunk_0
begin_hunk_1_@tcp_svr_init:bb.a
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %5 = zext nneg i32 %.286.i to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %5
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = tail call i64 @rsock_init_inetsock(i64 noundef %2, i64 noundef %i.c, i64 noundef %i.e, i64 noundef 4, i64 noundef 4, i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef 4, i64 noundef 0, i64 noundef 4) #4
  ret i64 %i.f
end_hunk_1
