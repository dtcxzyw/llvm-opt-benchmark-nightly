begin_hunk_0
  br i1 %i.b, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 152), align 1
  %3 = load i32, ptr %0, align 1
  %4 = icmp ne i32 %2, %3
  %5 = zext i1 %4 to i32
  %.not17 = icmp eq i32 %5, 0
  br i1 %.not17, label %bb.c, label %.preheader.1

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1
  br i1 %i.d, label %.preheader.2, label %bb.e

bb.e:                                             ; preds = %.preheader.1
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 304), align 1
  %7 = load i32, ptr %0, align 1
  %8 = icmp ne i32 %6, %7
  %9 = zext i1 %8 to i32
  %.not17.1 = icmp eq i32 %9, 0
  br i1 %.not17.1, label %bb.f, label %.preheader.2

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2
  br i1 %i.f, label %.preheader.3, label %bb.g

bb.g:                                             ; preds = %.preheader.2
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 456), align 1
  %11 = load i32, ptr %0, align 1
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  %.not17.2 = icmp eq i32 %13, 0
  br i1 %.not17.2, label %bb.h, label %.preheader.3

bb.h:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3
  br i1 %i.h, label %.preheader.4, label %bb.i

bb.i:                                             ; preds = %.preheader.3
  %14 = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 608), align 1
  %15 = load i32, ptr %0, align 1
  %16 = icmp ne i32 %14, %15
  %17 = zext i1 %16 to i32
  %.not17.3 = icmp eq i32 %17, 0
  br i1 %.not17.3, label %bb.j, label %.preheader.4

bb.j:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4
  br i1 %i.j, label %.preheader.5, label %bb.k

bb.k:                                             ; preds = %.preheader.4
  %18 = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 760), align 1
  %19 = load i32, ptr %0, align 1
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  %.not17.4 = icmp eq i32 %21, 0
  br i1 %.not17.4, label %bb.l, label %.preheader.5

bb.l:                                             ; preds = %bb.k
end_hunk_4
begin_hunk_5
  br i1 %i.l, label %.preheader.6, label %bb.m

bb.m:                                             ; preds = %.preheader.5
  %22 = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 912), align 1
  %23 = load i32, ptr %0, align 1
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  %.not17.5 = icmp eq i32 %25, 0
  br i1 %.not17.5, label %bb.n, label %.preheader.6

bb.n:                                             ; preds = %bb.m
end_hunk_5
begin_hunk_6
  br i1 %i.n, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.6
  %26 = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1064), align 1
  %27 = load i32, ptr %0, align 1
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  %.not17.6 = icmp eq i32 %29, 0
  br i1 %.not17.6, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_6
begin_hunk_7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #15
end_hunk_7
