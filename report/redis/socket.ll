inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0_@connSocketAddr
define internal range(i32 -1, 1) i32 @connSocketAddr(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call i32 @anetFdToString(i32 noundef %i.b, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #11
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.f, ptr %i.g, align 4, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @connSocketIsLocal(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca [47 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(47) %i.a, i8 0, i64 47, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = call i32 @anetFdToString(i32 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 46, ptr noundef null, i32 noundef 1) #11
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %connSocketAddr.exit, label %connSocketAddr.exit.thread

connSocketAddr.exit.thread:                       ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !22
  br label %bb.b

connSocketAddr.exit:                              ; preds = %bb.a
  %lhsv = load i32, ptr %i.a, align 16            ; 2 uses
  %.not = icmp eq i32 %lhsv, 775369265
  %.not4 = icmp eq i32 %lhsv, 3226170
  %narrow = or i1 %.not, %.not4
  %i.i = zext i1 %narrow to i32
  br label %bb.b

bb.b:                                             ; preds = %connSocketAddr.exit.thread, %connSocketAddr.exit
  %.0 = phi i32 [ %i.i, %connSocketAddr.exit ], [ -1, %connSocketAddr.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @connSocketListen(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @listenToPort(ptr noundef %0) #11
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @connCreateSocket(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @zcalloc(i64 noundef 72) #13 ; 5 uses
  store ptr @CT_Socket, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 -1, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 1024, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %i.d, align 8, !tbaa !24
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @connCreateAcceptedSocket(ptr noundef %0, i32 noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @zcalloc(i64 noundef 72) #13, !inline_history !67 ; 6 uses
  store ptr @CT_Socket, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 1024, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %i.d, align 8, !tbaa !24
  store i32 %1, ptr %i.b, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 2, ptr %i.e, align 8, !tbaa !19
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @connSocketShutdown(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @shutdown(i32 noundef %i.b, i32 noundef 2) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @connSocketClose(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @aeDeleteFileEvent(ptr noundef nonnull %i.d, i32 noundef %i.b, i32 noundef 3) #11
  %.pre = load i32, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i32 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.f = tail call i32 @close(i32 noundef %i.e) #11 ; 0 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 22
  %.val = load i16, ptr %i.g, align 2, !tbaa !25
  %.not11 = icmp eq i16 %.val, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !21
  %i.j = or i16 %i.i, 1
  store i16 %i.j, ptr %i.h, align 4, !tbaa !21
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @zfree(ptr noundef nonnull %0) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @connSocketConnect(ptr noundef initializes((8, 12)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @anetTcpNonBlockBestEffortBindConnect(ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef %3) #11 ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.c, align 8, !tbaa !19
  %i.d = tail call ptr @__errno_location() #12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.a, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.o = tail call i32 @aeCreateFileEvent(ptr noundef %i.k, i32 noundef %i.a, i32 noundef 2, ptr noundef %i.n, ptr noundef nonnull %0) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @connSocketBlockingConnect(ptr noundef writeonly captures(none) initializes((8, 12)) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @anetTcpNonBlockConnect(ptr noundef null, ptr noundef %1, i32 noundef %2) #11 ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.c, align 8, !tbaa !19
  %i.d = tail call ptr @__errno_location() #12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %4, align 4, !tbaa !22
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @aeWait(i32 noundef %i.a, i32 noundef 2, i64 noundef %3) #11
  %i.g = and i32 %i.f, 2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.i, align 8, !tbaa !19
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 110, ptr %5, align 4, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.a, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.k, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @connSocketAccept(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 6 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !25   ; 2 uses
  %i.e = add i16 %i.d, 1
  %i.f = add i16 %i.d, 2
  store i16 %i.f, ptr %i.c, align 2, !tbaa !25
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %1(ptr noundef nonnull %0) #11, !inline_history !26
  %.pre.i = load i16, ptr %i.c, align 2, !tbaa !25
  %i.g = add i16 %.pre.i, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i16 [ %i.g, %bb.c ], [ %i.e, %bb.b ] ; 4 uses
  store i16 %i.h, ptr %i.c, align 2, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i16, ptr %i.i, align 4, !tbaa !21
  %i.k = and i16 %i.j, 1
  %.not9.i = icmp eq i16 %i.k, 0
  br i1 %.not9.i, label %callHandler.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not10.i = icmp eq i16 %i.h, 0
  br i1 %.not10.i, label %bb.f, label %callHandler.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  tail call void %i.n(ptr noundef nonnull %0) #11, !inline_history !69
  %.pre = load i16, ptr %i.c, align 2, !tbaa !25
  br label %callHandler.exit

callHandler.exit:                                 ; preds = %bb.f, %bb.e, %bb.d
  %i.o = phi i16 [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %.pre, %bb.f ]
  %i.p = phi i32 [ 0, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ]
  %i.q = add i16 %i.o, -1
  store i16 %i.q, ptr %i.c, align 2, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %callHandler.exit
  %.07 = phi i32 [ %i.p, %callHandler.exit ], [ -1, %bb.a ]
  ret i32 %.07
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @connSocketWrite(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call i64 @write(i32 noundef %i.b, ptr noundef %1, i64 noundef %2) #11
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #12    ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.g, 11
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !22
  %i.i = load i32, ptr %i.f, align 4, !tbaa !9
  %.not7 = icmp eq i32 %i.i, 4
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 5, ptr %i.j, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @connSocketWritev(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call i64 @writev(i32 noundef %i.b, ptr noundef %1, i32 noundef %2) #11
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #12    ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.g, 11
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !22
  %i.i = load i32, ptr %i.f, align 4, !tbaa !9
  %.not7 = icmp eq i32 %i.i, 4
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 5, ptr %i.j, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  ret i32 %i.d
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @connSocketRead(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call i64 @read(i32 noundef %i.b, ptr noundef %1, i64 noundef %2) #11
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.e, align 8, !tbaa !19
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #12    ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9    ; 2 uses
  %.not10 = icmp eq i32 %i.h, 11
  br i1 %.not10, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.h, ptr %i.i, align 4, !tbaa !22
  %i.j = load i32, ptr %i.g, align 4, !tbaa !9
  %.not11 = icmp eq i32 %i.j, 4
  br i1 %.not11, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !19
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 5, ptr %i.k, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.f, %bb.e, %bb.b
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @connSocketSetWriteHandler(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !23
  %.not = icmp eq i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !21
  %i.f = and i16 %i.e, -3
  %masksel = select i1 %.not, i16 0, i16 2
  %.sink = or disjoint i16 %i.f, %masksel
  store i16 %.sink, ptr %i.d, align 4, !tbaa !21
  %.not15 = icmp eq ptr %1, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
end_hunk_0
