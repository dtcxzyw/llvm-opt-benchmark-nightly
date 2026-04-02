begin_hunk_0
  br i1 %i.b, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 152), ptr noundef nonnull dereferenceable(4) %0, i64 4)
  %.not17 = icmp eq i32 %bcmp, 0
  br i1 %.not17, label %bb.c, label %.preheader.1

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1
  br i1 %i.d, label %.preheader.2, label %bb.e

bb.e:                                             ; preds = %.preheader.1
  %bcmp.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 304), ptr noundef nonnull dereferenceable(4) %0, i64 4)
  %.not17.1 = icmp eq i32 %bcmp.1, 0
  br i1 %.not17.1, label %bb.f, label %.preheader.2

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2
  br i1 %i.f, label %.preheader.3, label %bb.g

bb.g:                                             ; preds = %.preheader.2
  %bcmp.2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 456), ptr noundef nonnull dereferenceable(4) %0, i64 4)
  %.not17.2 = icmp eq i32 %bcmp.2, 0
  br i1 %.not17.2, label %bb.h, label %.preheader.3

bb.h:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3
  br i1 %i.h, label %.preheader.4, label %bb.i

bb.i:                                             ; preds = %.preheader.3
  %bcmp.3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 608), ptr noundef nonnull dereferenceable(4) %0, i64 4)
  %.not17.3 = icmp eq i32 %bcmp.3, 0
  br i1 %.not17.3, label %bb.j, label %.preheader.4

bb.j:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4
  br i1 %i.j, label %.preheader.5, label %bb.k

bb.k:                                             ; preds = %.preheader.4
  %bcmp.4 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 760), ptr noundef nonnull dereferenceable(4) %0, i64 4)
  %.not17.4 = icmp eq i32 %bcmp.4, 0
  br i1 %.not17.4, label %bb.l, label %.preheader.5

bb.l:                                             ; preds = %bb.k
end_hunk_4
begin_hunk_5
  br i1 %i.l, label %.preheader.6, label %bb.m

bb.m:                                             ; preds = %.preheader.5
  %bcmp.5 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 912), ptr noundef nonnull dereferenceable(4) %0, i64 4)
  %.not17.5 = icmp eq i32 %bcmp.5, 0
  br i1 %.not17.5, label %bb.n, label %.preheader.6

bb.n:                                             ; preds = %bb.m
end_hunk_5
begin_hunk_6
  br i1 %i.n, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.6
  %bcmp.6 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1064), ptr noundef nonnull dereferenceable(4) %0, i64 4)
  %.not17.6 = icmp eq i32 %bcmp.6, 0
  br i1 %.not17.6, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_6
begin_hunk_7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #15
end_hunk_7
