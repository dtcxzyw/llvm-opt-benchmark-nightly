inline.NumInlined: 44
inline.NumDeleted: 7
begin_hunk_0_@redisNetWrite:bb.a
  switch i32 %i.h, label %hi_sdslen.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i32 %i.g, 3
  %i.j = zext nneg i32 %i.i to i64
  br label %hi_sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23
  %i.m = zext i8 %i.l to i64
  br label %hi_sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.o = load i16, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i16 %i.o to i64
  br label %hi_sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.r = load i32, ptr %i.q, align 1, !tbaa !6
  %i.s = zext i32 %i.r to i64
  br label %hi_sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.u = load i64, ptr %i.t, align 1, !tbaa !26
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.u, %bb.f ], [ %i.j, %bb.b ], [ %i.m, %bb.c ], [ %i.p, %bb.d ], [ %i.s, %bb.e ], [ 0, %bb.a ]
  %i.v = tail call i64 @send(i32 noundef %i.b, ptr noundef nonnull %i.d, i64 noundef %.0.i, i32 noundef 0) #9 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %hi_sdslen.exit
  %i.x = tail call ptr @__errno_location() #10
  %i.y = load i32, ptr %i.x, align 4, !tbaa !6    ; 2 uses
  switch i32 %i.y, label %.thread [
    i32 11, label %bb.h
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !21
  %i.ab = and i32 %i.aa, 1
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.ac = tail call ptr @strerror(i32 noundef %i.y) #9
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.ac) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %hi_sdslen.exit, %bb.h, %.thread
  %.0 = phi i64 [ 0, %bb.h ], [ -1, %.thread ], [ 0, %bb.g ], [ %i.v, %hi_sdslen.exit ]
  ret i64 %.0
}

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisKeepAlive(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 1, ptr %i.a, align 4, !tbaa !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10   ; 4 uses
  %i.d = call i32 @setsockopt(i32 noundef %i.c, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %i.a, i32 noundef 4) #9
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !6
  %i.f = call i32 @setsockopt(i32 noundef %i.c, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %i.a, i32 noundef 4) #9
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sdiv i32 %1, 3
  %.off = add i32 %1, 2
  %i.i = icmp ult i32 %.off, 5
  %spec.store.select = select i1 %i.i, i32 1, i32 %i.h
  store i32 %spec.store.select, ptr %i.a, align 4
  %i.j = call i32 @setsockopt(i32 noundef %i.c, i32 noundef 6, i32 noundef 5, ptr noundef nonnull %i.a, i32 noundef 4) #9
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %i.a, align 4, !tbaa !6
  %i.l = call i32 @setsockopt(i32 noundef %i.c, i32 noundef 6, i32 noundef 6, ptr noundef nonnull %i.a, i32 noundef 4) #9
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = tail call ptr @__errno_location() #10
  %i.o = load i32, ptr %i.n, align 4, !tbaa !6
  %i.p = call ptr @strerror(i32 noundef %i.o) #9
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.p) #9
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisSetTcpNoDelay(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 1, ptr %i.b, align 4, !tbaa !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = call i32 @setsockopt(i32 noundef %i.d, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 4) #9
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %redisNetClose.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #9
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.l = sub nsw i64 128, %i.j
  %i.m = call i32 @__xpg_strerror_r(i32 noundef %i.h, ptr noundef nonnull %i.k, i64 noundef %i.l) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.n = load i32, ptr %i.c, align 4, !tbaa !10   ; 2 uses
  %.not5.i = icmp eq i32 %i.n, -1
  br i1 %.not5.i, label %redisNetClose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 @close(i32 noundef %i.n) #9     ; 0 uses
  store i32 -1, ptr %i.c, align 4, !tbaa !10
  br label %redisNetClose.exit

redisNetClose.exit:                               ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisContextSetTcpUserTimeout(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.b, align 4, !tbaa !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = call i32 @setsockopt(i32 noundef %i.d, i32 noundef 6, i32 noundef 18, ptr noundef nonnull %i.b, i32 noundef 4) #9
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %redisNetClose.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #9
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.l = sub nsw i64 128, %i.j
  %i.m = call i32 @__xpg_strerror_r(i32 noundef %i.h, ptr noundef nonnull %i.k, i64 noundef %i.l) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.n = load i32, ptr %i.c, align 4, !tbaa !10   ; 2 uses
  %.not5.i = icmp eq i32 %i.n, -1
  br i1 %.not5.i, label %redisNetClose.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 @close(i32 noundef %i.n) #9     ; 0 uses
  store i32 -1, ptr %i.c, align 4, !tbaa !10
  br label %redisNetClose.exit

redisNetClose.exit:                               ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisCheckConnectDone(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @connect(i32 noundef %i.d, ptr noundef %i.f, i32 noundef %i.i) #9
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 4, !tbaa !6
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.l = tail call ptr @__errno_location() #10    ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !6    ; 2 uses
  %i.n = icmp eq i32 %i.m, 115
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 4, ptr %i.b, align 4, !tbaa !6
  %i.o = load i32, ptr %i.c, align 4, !tbaa !10
  %i.p = call i32 @getsockopt(i32 noundef %i.o, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.e
  store i32 1, ptr %1, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  store i32 %i.r, ptr %i.l, align 4, !tbaa !6
  %2 = load i32, ptr %i.a, align 4, !tbaa !6
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.114 = phi i32 [ 115, %bb.d ], [ %2, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.215 = phi i32 [ %.114, %bb.g ], [ %i.m, %bb.c ]
  switch i32 %.215, label %bb.k [
    i32 106, label %bb.i
    i32 114, label %bb.j
    i32 11, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %1, align 4, !tbaa !6
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.h
  store i32 0, ptr %1, align 4, !tbaa !6
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %.critedge, %bb.h, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %.critedge ], [ 0, %bb.i ], [ 0, %bb.j ], [ -1, %bb.h ]
  ret i32 %.2
}

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisCheckSocketError(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4, !tbaa !6
  %i.e = tail call ptr @__errno_location() #10    ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !6    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 4, ptr %i.d, align 4, !tbaa !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %i.i = call i32 @getsockopt(i32 noundef %i.h, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.e, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4) #9
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  %i.o = sub nsw i64 128, %i.m
  %i.p = call i32 @__xpg_strerror_r(i32 noundef %i.k, ptr noundef nonnull %i.n, i64 noundef %i.o) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.c, align 4, !tbaa !6    ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %i.c, align 4, !tbaa !6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %i.f, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  store i32 %i.s, ptr %i.e, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.t = call i32 @__xpg_strerror_r(i32 noundef %i.s, ptr noundef nonnull %i.a, i64 noundef 128) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %.thread ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisContextSetTimeout(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %3 = alloca %struct.timeval, align 8            ; 6 uses
  store i64 %1, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %i.f = icmp eq ptr %i.e, %3
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !30
  %i.i = call ptr %i.h(i64 noundef 16) #9, !inline_history !32 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !29
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %redisContextUpdateCommandTimeout.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.e

redisContextUpdateCommandTimeout.exit:            ; preds = %bb.c
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @.str.5) #9
  br label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10
  %i.n = call i32 @setsockopt(i32 noundef %i.m, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %3, i32 noundef 16) #9
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__errno_location() #10
  %i.q = load i32, ptr %i.p, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #9
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  %i.u = sub nsw i64 128, %i.s
  %i.v = call i32 @__xpg_strerror_r(i32 noundef %i.q, ptr noundef nonnull %i.t, i64 noundef %i.u) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.l, align 4, !tbaa !10
  %i.x = call i32 @setsockopt(i32 noundef %i.w, i32 noundef 1, i32 noundef 21, ptr noundef nonnull %3, i32 noundef 16) #9
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @__errno_location() #10
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #9
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  %i.ae = sub nsw i64 128, %i.ac
  %i.af = call i32 @__xpg_strerror_r(i32 noundef %i.aa, ptr noundef nonnull %i.ad, i64 noundef %i.ae) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %redisContextUpdateCommandTimeout.exit
  %.0 = phi i32 [ -1, %redisContextUpdateCommandTimeout.exit ], [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisContextUpdateCommandTimeout(ptr noundef captures(none) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !30
  %i.f = tail call ptr %i.e(i64 noundef 16) #9, !inline_history !33 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !29
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisContextUpdateConnectTimeout(ptr noundef captures(none) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@redisContextConnectUnix:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not39 = icmp eq ptr %2, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 5 uses
  br i1 %.not39, label %redisContextUpdateConnectTimeout.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %redisContextUpdateConnectTimeout.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !30
  %i.x = tail call ptr %i.w(i64 noundef 16) #9, !inline_history !44 ; 3 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !34
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %redisContextUpdateConnectTimeout.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ %i.x, %bb.h ], [ %i.t, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !34
  br label %redisContextUpdateConnectTimeout.exit.thread

redisContextUpdateConnectTimeout.exit.thread.thread: ; preds = %bb.e
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !40
  tail call void %i.aa(ptr noundef %i.t) #9, !inline_history !41
  store ptr null, ptr %i.s, align 8, !tbaa !34
  br label %bb.m

redisContextUpdateConnectTimeout.exit.thread:     ; preds = %bb.f, %bb.i
  %i.ab = phi ptr [ %i.t, %bb.f ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %redisContextUpdateConnectTimeout.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 1000000
  br i1 %i.ae, label %redisContextTimeoutMsec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 9223372036854774
  br i1 %i.ag, label %redisContextTimeoutMsec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = mul nsw i64 %i.af, 1000
  %i.ai = add nsw i64 %i.ad, 999
  %i.aj = sdiv i64 %i.ai, 1000
  %i.ak = add nsw i64 %i.ah, %i.aj
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2147483647)
  br label %bb.m

redisContextTimeoutMsec.exit:                     ; preds = %bb.j, %bb.k
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.15) #9
  br label %bb.v

bb.m:                                             ; preds = %redisContextUpdateConnectTimeout.exit.thread.thread, %bb.l, %redisContextUpdateConnectTimeout.exit.thread
  %storemerge.i.ph = phi i64 [ -1, %redisContextUpdateConnectTimeout.exit.thread ], [ %spec.store.select.i, %bb.l ], [ -1, %redisContextUpdateConnectTimeout.exit.thread.thread ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27 ; 2 uses
  %.not41 = icmp eq ptr %i.am, null
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !40
  tail call void %i.an(ptr noundef nonnull %i.am) #9, !inline_history !41
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !30
  %i.ap = tail call ptr %i.ao(i64 noundef 110) #9, !inline_history !33 ; 5 uses
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !27
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %redisContextUpdateConnectTimeout.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 110, ptr %i.ar, align 8, !tbaa !28
  store i16 1, ptr %i.ap, align 2, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.at = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 107) #9 ; 0 uses
  %i.au = load i32, ptr %i.j, align 4, !tbaa !10
  %i.av = tail call i32 @connect(i32 noundef %i.au, ptr noundef nonnull %i.ap, i32 noundef 110) #9
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call ptr @__errno_location() #10
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !6
  %i.az = icmp ne i32 %i.ay, 115
  %i.ba = trunc i32 %i.c to i1
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = tail call fastcc i32 @redisContextWaitReady(ptr noundef nonnull %0, i64 noundef %storemerge.i.ph)
  %.not42 = icmp eq i32 %i.bb, 0
  br i1 %.not42, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.not43 = icmp eq i32 %i.d, 0
  br i1 %.not43, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = tail call fastcc i32 @redisSetBlocking(ptr noundef nonnull %0, i32 noundef 1)
  %.not44 = icmp eq i32 %i.bc, 0
  br i1 %.not44, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !21
  %i.be = or i32 %i.bd, 2
  store i32 %i.be, ptr %i.b, align 8, !tbaa !21
  br label %bb.v

redisContextUpdateConnectTimeout.exit:            ; preds = %bb.h, %bb.o, %bb.d
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @.str.5) #9
  br label %bb.v

bb.v:                                             ; preds = %redisContextTimeoutMsec.exit, %redisCreateSocket.exit.thread, %bb.t, %bb.r, %bb.b, %redisContextUpdateConnectTimeout.exit, %bb.u
  %.0 = phi i32 [ 0, %bb.u ], [ -1, %redisCreateSocket.exit.thread ], [ -1, %redisContextUpdateConnectTimeout.exit ], [ -1, %bb.b ], [ -1, %redisContextTimeoutMsec.exit ], [ -1, %bb.r ], [ -1, %bb.t ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @redisSetBlocking(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.d, i32 noundef 3) #9 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13) #9
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j
  %i.l = sub nsw i64 128, %i.j
  %i.m = call i32 @__xpg_strerror_r(i32 noundef %i.h, ptr noundef nonnull %i.k, i64 noundef %i.l) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.n = load i32, ptr %i.c, align 4, !tbaa !10   ; 2 uses
  %.not5.i = icmp eq i32 %i.n, -1
  br i1 %.not5.i, label %redisNetClose.exit, label %redisNetClose.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.o = and i32 %i.e, -2049
  %masksel = select i1 %.not, i32 2048, i32 0
  %.0 = or disjoint i32 %i.o, %masksel
  %i.p = load i32, ptr %i.c, align 4, !tbaa !10
  %i.q = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.p, i32 noundef 4, i32 noundef %.0) #9
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %redisNetClose.exit

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @__errno_location() #10
  %i.t = load i32, ptr %i.s, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14) #9
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.x = sub nsw i64 128, %i.v
  %i.y = call i32 @__xpg_strerror_r(i32 noundef %i.t, ptr noundef nonnull %i.w, i64 noundef %i.x) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.z = load i32, ptr %i.c, align 4, !tbaa !10   ; 2 uses
  %.not5.i13 = icmp eq i32 %i.z, -1
  br i1 %.not5.i13, label %redisNetClose.exit, label %redisNetClose.exit.sink.split

redisNetClose.exit.sink.split:                    ; preds = %bb.d, %bb.b
  %.sink = phi i32 [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  %i.aa = call i32 @close(i32 noundef %.sink) #9  ; 0 uses
  store i32 -1, ptr %i.c, align 4, !tbaa !10
  br label %redisNetClose.exit

redisNetClose.exit:                               ; preds = %redisNetClose.exit.sink.split, %bb.d, %bb.b, %bb.c
  %.010 = phi i32 [ 0, %bb.c ], [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %redisNetClose.exit.sink.split ]
  ret i32 %.010
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @redisContextWaitReady(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca [128 x i8], align 16              ; 6 uses
  %2 = alloca [1 x %struct.pollfd], align 4       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  store i32 %i.g, ptr %2, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 4, ptr %i.h, align 4, !tbaa !60
  %i.i = tail call ptr @__errno_location() #10    ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !6    ; 2 uses
  %i.k = icmp eq i32 %i.j, 115
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = trunc i64 %1 to i32
  %i.m = call i32 @poll(ptr noundef nonnull %2, i64 noundef 1, i32 noundef %i.l) #9
  switch i32 %i.m, label %bb.g [
    i32 -1, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.i, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16) #9
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %i.r = sub nsw i64 128, %i.p
  %i.s = call i32 @__xpg_strerror_r(i32 noundef %i.n, ptr noundef nonnull %i.q, i64 noundef %i.r) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.t = load i32, ptr %i.f, align 4, !tbaa !10   ; 2 uses
  %.not5.i = icmp eq i32 %i.t, -1
  br i1 %.not5.i, label %redisNetClose.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = call i32 @close(i32 noundef %i.t) #9     ; 0 uses
  store i32 -1, ptr %i.f, align 4, !tbaa !10
  br label %redisNetClose.exit

bb.e:                                             ; preds = %bb.b
  store i32 110, ptr %i.i, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  %i.v = call i32 @__xpg_strerror_r(i32 noundef 110, ptr noundef nonnull %i.d, i64 noundef 128) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.w = load i32, ptr %i.f, align 4, !tbaa !10   ; 2 uses
  %.not5.i13 = icmp eq i32 %i.w, -1
  br i1 %.not5.i13, label %redisNetClose.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = call i32 @close(i32 noundef %i.w) #9     ; 0 uses
  store i32 -1, ptr %i.f, align 4, !tbaa !10
  br label %redisNetClose.exit

bb.g:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.f, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = call i32 @connect(i32 noundef %i.y, ptr noundef %i.aa, i32 noundef %i.ad) #9
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %redisNetClose.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !6   ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 115
  br i1 %i.ah, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 4, ptr %i.c, align 4, !tbaa !6
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !10
  %i.aj = call i32 @getsockopt(i32 noundef %i.ai, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.b, align 4, !tbaa !6   ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.critedge.i, label %bb.k

.critedge.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %redisNetClose.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.al, ptr %i.i, align 4, !tbaa !6
  %3 = load i32, ptr %i.b, align 4, !tbaa !6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.114.i = phi i32 [ 115, %bb.i ], [ %3, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.215.i = phi i32 [ %.114.i, %bb.l ], [ %i.ag, %bb.h ]
  %cond.not = icmp eq i32 %.215.i, 106
  br i1 %cond.not, label %redisNetClose.exit, label %redisCheckConnectDone.exit.thread

redisCheckConnectDone.exit.thread:                ; preds = %bb.m
  %i.an = call i32 @redisCheckSocketError(ptr noundef nonnull %0) ; 0 uses
  br label %redisNetClose.exit

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.ao = call i32 @__xpg_strerror_r(i32 noundef %i.j, ptr noundef nonnull %i.a, i64 noundef 128) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !10  ; 2 uses
  %.not5.i16 = icmp eq i32 %i.ap, -1
  br i1 %.not5.i16, label %redisNetClose.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = call i32 @close(i32 noundef %i.ap) #9   ; 0 uses
  store i32 -1, ptr %i.f, align 4, !tbaa !10
  br label %redisNetClose.exit

redisNetClose.exit:                               ; preds = %.critedge.i, %bb.g, %bb.m, %bb.o, %bb.n, %redisCheckConnectDone.exit.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.1 = phi i32 [ -1, %bb.f ], [ 0, %bb.m ], [ -1, %bb.d ], [ -1, %redisCheckConnectDone.exit.thread ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.n ], [ -1, %bb.o ], [ 0, %bb.g ], [ 0, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__xpg_strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #1

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 140}
!11 = !{!"redisContext", !12, i64 0, !7, i64 8, !8, i64 12, !7, i64 140, !7, i64 144, !14, i64 152, !15, i64 160, !7, i64 168, !16, i64 176, !16, i64 184, !17, i64 192, !18, i64 216, !19, i64 224, !20, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264}
!12 = !{!"p1 _ZTS17redisContextFuncs", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS11redisReader", !13, i64 0}
!16 = !{!"p1 _ZTS7timeval", !13, i64 0}
!17 = !{!"", !14, i64 0, !14, i64 8, !7, i64 16}
!18 = !{!"", !14, i64 0}
!19 = !{!"p1 _ZTS8sockaddr", !13, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!11, !7, i64 144}
!22 = !{!11, !14, i64 152}
!23 = !{!8, !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !8, i64 0}
!26 = !{!20, !20, i64 0}
!27 = !{!11, !19, i64 224}
!28 = !{!11, !20, i64 232}
!29 = !{!11, !16, i64 184}
!30 = !{!31, !13, i64 0}
!31 = !{!"hiredisAllocFuncs", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!32 = distinct !{ptr @redisContextUpdateCommandTimeout, null}
!33 = distinct !{null}
!34 = !{!11, !16, i64 176}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS8addrinfo", !13, i64 0}
!37 = !{!11, !7, i64 168}
!38 = !{!11, !7, i64 208}
!39 = !{!11, !14, i64 192}
!40 = !{!31, !13, i64 32}
!41 = distinct !{null}
!42 = !{!31, !13, i64 24}
!43 = distinct !{null}
!44 = distinct !{ptr @redisContextUpdateConnectTimeout, null}
!45 = !{!46, !20, i64 8}
!46 = !{!"timeval", !20, i64 0, !20, i64 8}
!47 = !{!46, !20, i64 0}
!48 = !{!11, !14, i64 200}
!49 = !{!50, !7, i64 8}
!50 = !{!"addrinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !19, i64 24, !14, i64 32, !36, i64 40}
!51 = !{!50, !7, i64 4}
!52 = !{!50, !7, i64 12}
!53 = !{!50, !19, i64 24}
!54 = !{!50, !7, i64 16}
!55 = !{!11, !14, i64 216}
!56 = !{!57, !25, i64 0}
!57 = !{!"sockaddr_un", !25, i64 0, !8, i64 2}
!58 = !{!59, !7, i64 0}
!59 = !{!"pollfd", !7, i64 0, !25, i64 4, !25, i64 6}
!60 = !{!59, !25, i64 4}
end_hunk_1
