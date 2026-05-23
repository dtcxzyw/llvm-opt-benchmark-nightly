inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@sdslen:bb.a
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_StringToLongLong(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %.val.i = load i8, ptr %i.c, align 1, !tbaa !73 ; 2 uses
  %i.d = and i8 %.val.i, 7
  switch i8 %i.d, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i8 %.val.i, 3
  %i.f = zext nneg i8 %i.e to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !73
  %i.i = zext i8 %i.h to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -5
  %i.k = load i16, ptr %i.j, align 1, !tbaa !284
  %i.l = zext i16 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -9
  %i.n = load i32, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i32 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -17
  %i.q = load i64, ptr %i.p, align 1, !tbaa !29
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.a ]
  %i.r = tail call i32 @string2ll(ptr noundef nonnull %i.b, i64 noundef %.0.i, ptr noundef %1) #33
  %.not = icmp eq i32 %i.r, 0
  %i.s = zext i1 %.not to i32
  ret i32 %i.s
}

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_StringToULongLong(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.c = tail call i32 @string2ull(ptr noundef %i.b, ptr noundef %1) #33
  %.not = icmp eq i32 %i.c, 0
  %i.d = zext i1 %.not to i32
  ret i32 %i.d
}

declare i32 @string2ull(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_StringToDouble(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @getDoubleFromObject(ptr noundef %0, ptr noundef %1) #33
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare i32 @getDoubleFromObject(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_StringToLongDouble(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %.val.i = load i8, ptr %i.c, align 1, !tbaa !73 ; 2 uses
  %i.d = and i8 %.val.i, 7
  switch i8 %i.d, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i8 %.val.i, 3
  %i.f = zext nneg i8 %i.e to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !73
  %i.i = zext i8 %i.h to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -5
  %i.k = load i16, ptr %i.j, align 1, !tbaa !284
  %i.l = zext i16 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -9
  %i.n = load i32, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i32 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -17
  %i.q = load i64, ptr %i.p, align 1, !tbaa !29
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.a ]
  %i.r = tail call i32 @string2ld(ptr noundef nonnull %i.b, i64 noundef %.0.i, ptr noundef %1) #33
  %.not = icmp eq i32 %i.r, 0
  %i.s = zext i1 %.not to i32
  ret i32 %i.s
}

declare i32 @string2ld(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_StringToStreamID(ptr noundef %0, ptr noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.streamID, align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = call i32 @streamParseID(ptr noundef %0, ptr noundef nonnull %2) #33
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x i64>, ptr %2, align 16, !tbaa !29
  store <2 x i64> %i.c, ptr %1, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i32 %.0
}

declare i32 @streamParseID(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @RM_StringCompare(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @compareStringObjects(ptr noundef %0, ptr noundef %1) #33
  ret i32 %i.a
}

declare i32 @compareStringObjects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @moduleAssertUnsharedString(ptr noundef captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 2147483392
  %.not = icmp eq i64 %i.b, 256
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.37) #33
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i8
  %trunc = and i8 %1, -16
  switch i8 %trunc, label %bb.l [
    i8 -128, label %bb.e
    i8 16, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !282  ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !73 ; 2 uses
  %i.h = and i8 %.val.i, 7
  switch i8 %i.h, label %sdslen.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i8 %.val.i, 3
  %i.j = zext nneg i8 %i.i to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !73
  %i.m = zext i8 %i.l to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.o = load i16, ptr %i.n, align 1, !tbaa !284
  %i.p = zext i16 %i.o to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.r = load i32, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i32 %i.r to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.u = load i64, ptr %i.t, align 1, !tbaa !29
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.u, %bb.j ], [ %i.j, %bb.f ], [ %i.m, %bb.g ], [ %i.p, %bb.h ], [ %i.s, %bb.i ], [ 0, %bb.e ]
  %i.v = tail call ptr @sdsnewlen(ptr noundef nonnull %i.f, i64 noundef %.0.i) #33
  store ptr %i.v, ptr %i.e, align 8, !tbaa !282
  %i.w = load i64, ptr %0, align 8
  %i.x = and i64 %i.w, -241
  store i64 %i.x, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !282
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = tail call ptr @sdsfromlonglong(i64 noundef %i.aa) #33
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !282
  %i.ac = load i64, ptr %0, align 8
  %i.ad = and i64 %i.ac, -241
  store i64 %i.ad, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %sdslen.exit, %bb.k, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ %0, %bb.d ], [ %0, %bb.k ], [ %0, %sdslen.exit ]
  ret ptr %.0
}

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @sdsfromlonglong(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_StringAppendBuffer(ptr readnone captures(none) %0, ptr noundef captures(address) %1, ptr noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @moduleAssertUnsharedString(ptr noundef %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282
  %i.e = tail call ptr @sdscatlen(ptr noundef %i.d, ptr noundef %2, i64 noundef %3) #33
  store ptr %i.e, ptr %i.c, align 8, !tbaa !282
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RM_TrimStringAllocation(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @trimStringObjectIfNeeded(ptr noundef nonnull %0, i32 noundef 1) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RM_WrongArity(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  tail call void @addReplyErrorArity(ptr noundef %i.b) #33
  ret i32 0
}

declare void @addReplyErrorArity(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @moduleGetReplyClient(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286  ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !287
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RM_ReplyWithLongLong(ptr noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286  ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %moduleGetReplyClient.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  br label %moduleGetReplyClient.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %moduleGetReplyClient.exit

moduleGetReplyClient.exit:                        ; preds = %bb.c, %bb.d
  %.0.i.in = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !33 ; 2 uses
  %i.h = icmp eq ptr %.0.i, null
  br i1 %i.h, label %moduleGetReplyClient.exit.thread, label %bb.e

bb.e:                                             ; preds = %moduleGetReplyClient.exit
  tail call void @addReplyLongLong(ptr noundef nonnull %.0.i, i64 noundef %1) #33
  br label %moduleGetReplyClient.exit.thread

moduleGetReplyClient.exit.thread:                 ; preds = %bb.b, %moduleGetReplyClient.exit, %bb.e
  ret i32 0
}

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RM_ReplyWithError(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286  ; 2 uses
end_hunk_0
begin_hunk_1_@RM_ZsetRem:bb.a
  store i32 1, ptr %2, align 4, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.p = tail call i64 @zsetLength(ptr noundef %i.o) #33 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !282
  %i.w = tail call i32 @getKeySlot(ptr noundef %i.v) #33
  %i.x = add nsw i64 %i.p, 1
  tail call void @updateKeysizesHist(ptr noundef %i.r, i32 noundef %i.w, i32 noundef 3, i64 noundef %i.x, i64 noundef %i.p) #33
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !348
  %.not37 = icmp eq i32 %i.y, 0
  br i1 %.not37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !282
  %i.ad = tail call i32 @getKeySlot(ptr noundef %i.ac) #33
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %i.af = tail call i64 @kvobjAllocSize(ptr noundef %i.ae) #33
  tail call void @updateSlotAllocSize(ptr noundef %i.z, i32 noundef %i.ad, ptr noundef %i.ae, i64 noundef %.028, i64 noundef %i.af) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = tail call i32 @moduleDelKeyIfEmpty(ptr noundef nonnull %0) ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %bb.h
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %2, align 4, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !348
  %.not35 = icmp eq i32 %i.ah, 0
  br i1 %.not35, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !72
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !282
  %i.ao = tail call i32 @getKeySlot(ptr noundef %i.an) #33
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %i.aq = tail call i64 @kvobjAllocSize(ptr noundef %i.ap) #33
  tail call void @updateSlotAllocSize(ptr noundef %i.aj, i32 noundef %i.ao, ptr noundef %i.ap, i64 noundef %.028, i64 noundef %i.aq) #33
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q, %bb.p, %bb.e, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.m ]
  ret i32 %.0
}

declare i32 @zsetDel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_ZsetScore(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = and i64 %i.d, 15
  %.not = icmp eq i64 %i.e, 3
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !282
  %i.h = tail call i32 @zsetScore(ptr noundef nonnull %i.b, ptr noundef %i.g, ptr noundef %2) #33
  %i.i = icmp eq i32 %i.h, -1
  %. = zext i1 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

declare i32 @zsetScore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RM_ZsetRangeStop(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 15
  %.not5 = icmp eq i64 %i.d, 3
  br i1 %.not5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @zslFreeLexRange(ptr noundef nonnull %i.h) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.i, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.j, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e
  ret void
}

declare void @zslFreeLexRange(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @RM_ZsetRangeEndReached(ptr noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 15
  %.not4 = icmp eq i64 %i.d, 3
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @zsetInitScoreRange(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 15
  %.not34 = icmp eq i64 %i.d, 3
  br i1 %.not34, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %RM_ZsetRangeStop.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @zslFreeLexRange(ptr noundef nonnull %i.h) #33
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %RM_ZsetRangeStop.exit

RM_ZsetRangeStop.exit:                            ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i32 2, ptr %i.e, align 8, !tbaa !73
  store i32 0, ptr %i.k, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store double %1, ptr %i.l, align 8, !tbaa !355
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %2, ptr %i.m, align 8, !tbaa !357
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %3, ptr %i.n, align 8, !tbaa !358
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %4, ptr %i.o, align 4, !tbaa !359
  %i.p = load i64, ptr %i.i, align 8
  %6 = trunc i64 %i.p to i8
  %trunc = and i8 %6, -16
  switch i8 %trunc, label %bb.k [
    i8 -80, label %bb.e
    i8 112, label %bb.h
  ]

bb.e:                                             ; preds = %RM_ZsetRangeStop.exit
  %.not36 = icmp eq i32 %5, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !282  ; 2 uses
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @zzlFirstInRange(ptr noundef %i.r, ptr noundef nonnull %i.l) #33
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.t = tail call ptr @zzlLastInRange(ptr noundef %i.r, ptr noundef nonnull %i.l) #33
  br label %bb.l

bb.h:                                             ; preds = %RM_ZsetRangeStop.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !282
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !360  ; 2 uses
  %.not35 = icmp eq i32 %5, 0
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @zslNthInRange(ptr noundef %i.x, ptr noundef nonnull %i.l, i64 noundef 0, ptr noundef null) #33
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.z = tail call ptr @zslNthInRange(ptr noundef %i.x, ptr noundef nonnull %i.l, i64 noundef -1, ptr noundef null) #33
  br label %bb.l

bb.k:                                             ; preds = %RM_ZsetRangeStop.exit
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 5324, ptr noundef nonnull @.str.46) #33
  tail call void @abort() #36
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.g
  %i.aa = phi ptr [ %i.t, %bb.g ], [ %i.s, %bb.f ], [ %i.y, %bb.i ], [ %i.z, %bb.j ] ; 2 uses
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !73
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.k, align 8, !tbaa !73
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.m ], [ 0, %bb.l ]
  ret i32 %.0
}

declare ptr @zzlFirstInRange(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @zzlLastInRange(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @zslNthInRange(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_ZsetFirstInScoreRange(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @zsetInitScoreRange(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_ZsetLastInScoreRange(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @zsetInitScoreRange(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @zsetInitLexRange(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 15
  %.not29 = icmp eq i64 %i.d, 3
  br i1 %.not29, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %RM_ZsetRangeStop.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @zslFreeLexRange(ptr noundef nonnull %i.h) #33
  br label %RM_ZsetRangeStop.exit

RM_ZsetRangeStop.exit:                            ; preds = %bb.c, %bb.d
  store i32 0, ptr %i.e, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = tail call i32 @zslParseLexRange(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.k) #33
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.o, label %bb.e

bb.e:                                             ; preds = %RM_ZsetRangeStop.exit
  store i32 1, ptr %i.e, align 8, !tbaa !73
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.o = load i64, ptr %i.n, align 8
  %4 = trunc i64 %i.o to i8
  %trunc = and i8 %4, -16
  switch i8 %trunc, label %bb.l [
    i8 -80, label %bb.f
    i8 112, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %.not31 = icmp eq i32 %3, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !282  ; 2 uses
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @zzlFirstInLexRange(ptr noundef %i.q, ptr noundef nonnull %i.k) #33
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = tail call ptr @zzlLastInLexRange(ptr noundef %i.q, ptr noundef nonnull %i.k) #33
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !282
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !360  ; 2 uses
  %.not30 = icmp eq i32 %3, 0
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call ptr @zslNthInLexRange(ptr noundef %i.w, ptr noundef nonnull %i.k, i64 noundef 0, ptr noundef null) #33
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = tail call ptr @zslNthInLexRange(ptr noundef %i.w, ptr noundef nonnull %i.k, i64 noundef -1, ptr noundef null) #33
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 5388, ptr noundef nonnull @.str.46) #33
  tail call void @abort() #36
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.h
  %i.z = phi ptr [ %i.s, %bb.h ], [ %i.r, %bb.g ], [ %i.x, %bb.j ], [ %i.y, %bb.k ] ; 2 uses
  store ptr %i.z, ptr %i.i, align 8, !tbaa !73
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.j, align 8, !tbaa !73
  br label %bb.o

bb.o:                                             ; preds = %RM_ZsetRangeStop.exit, %bb.n, %bb.m, %bb.a, %bb.b
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %RM_ZsetRangeStop.exit ], [ 0, %bb.n ], [ 0, %bb.m ]
  ret i32 %.1
}

declare i32 @zslParseLexRange(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @zzlFirstInLexRange(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @zzlLastInLexRange(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @zslNthInLexRange(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_ZsetFirstInLexRange(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @zsetInitLexRange(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_ZsetLastInLexRange(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @zsetInitLexRange(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_ZsetRangeCurrentElement(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %autoMemoryAdd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 15
  %.not29 = icmp eq i64 %i.d, 3
  br i1 %.not29, label %bb.c, label %autoMemoryAdd.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %autoMemoryAdd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = trunc i64 %i.c to i8
  %trunc = and i8 %2, -16
  switch i8 %trunc, label %bb.p [
    i8 -80, label %bb.e
    i8 112, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @lpGetObject(ptr noundef nonnull %i.f) #33
  %.not31 = icmp eq ptr %1, null
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !282
  %i.l = tail call ptr @lpNext(ptr noundef %i.k, ptr noundef nonnull %i.f) #33
  %i.m = tail call double @zzlGetScore(ptr noundef %i.l) #33
  store double %i.m, ptr %1, align 8, !tbaa !363
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.h) #33
  br label %bb.q

bb.h:                                             ; preds = %bb.d
  %.not30 = icmp eq ptr %1, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load double, ptr %i.f, align 8, !tbaa !363
  store double %i.o, ptr %1, align 8, !tbaa !363
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = tail call ptr @zslGetNodeElement(ptr noundef nonnull %i.f) #33 ; 6 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.val.i = load i8, ptr %i.q, align 1, !tbaa !73 ; 2 uses
  %i.r = and i8 %.val.i, 7
  switch i8 %i.r, label %sdslen.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.s = lshr i8 %.val.i, 3
  %i.t = zext nneg i8 %i.s to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !73
  %i.w = zext i8 %i.v to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds i8, ptr %i.p, i64 -5
  %i.y = load i16, ptr %i.x, align 1, !tbaa !284
  %i.z = zext i16 %i.y to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds i8, ptr %i.p, i64 -9
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !9
  %i.ac = zext i32 %i.ab to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds i8, ptr %i.p, i64 -17
  %i.ae = load i64, ptr %i.ad, align 1, !tbaa !29
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.ae, %bb.o ], [ %i.t, %bb.k ], [ %i.w, %bb.l ], [ %i.z, %bb.m ], [ %i.ac, %bb.n ], [ 0, %bb.j ]
  %i.af = tail call ptr @createStringObject(ptr noundef nonnull %i.p, i64 noundef %.0.i) #33
  br label %bb.q

bb.p:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 5440, ptr noundef nonnull @.str.46) #33
  tail call void @abort() #36
  unreachable

bb.q:                                             ; preds = %sdslen.exit, %bb.g
  %.024 = phi ptr [ %i.n, %bb.g ], [ %i.af, %sdslen.exit ] ; 3 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !281   ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !102
  %i.aj = and i32 %i.ai, 1
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %autoMemoryAdd.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 44 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !111 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !277
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.s, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !112
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.al, i32 8)
  %spec.select.i = shl nuw i32 %i.ap, 1           ; 2 uses
  store i32 %spec.select.i, ptr %i.am, align 8, !tbaa !277
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !112
  %i.as = sext i32 %spec.select.i to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = tail call ptr @zrealloc(ptr noundef %i.ar, i64 noundef %i.at) #35 ; 2 uses
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !112
  %.pre15.i = load i32, ptr %i.ak, align 4, !tbaa !111
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %i.av = phi i32 [ %i.al, %._crit_edge.i ], [ %.pre15.i, %bb.s ] ; 2 uses
  %i.aw = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.au, %bb.s ]
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 1, ptr %i.az, align 8, !tbaa !115
  store ptr %.024, ptr %i.ay, align 8, !tbaa !113
  %i.ba = add nsw i32 %i.av, 1
  store i32 %i.ba, ptr %i.ak, align 4, !tbaa !111
  br label %autoMemoryAdd.exit

autoMemoryAdd.exit:                               ; preds = %bb.t, %bb.q, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ], [ %.024, %bb.q ], [ %.024, %bb.t ]
  ret ptr %.0
}

declare ptr @lpGetObject(ptr noundef) local_unnamed_addr #1

declare ptr @lpNext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @zzlGetScore(ptr noundef) local_unnamed_addr #1

declare ptr @zslGetNodeElement(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_ZsetRangeNext(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 15
  %.not56 = icmp eq i64 %i.d, 3
  br i1 %.not56, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73   ; 3 uses
  %.not57 = icmp eq i32 %i.f, 0
  br i1 %.not57, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 3 uses
  %.not58 = icmp eq ptr %i.h, null
  br i1 %.not58, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %1 = trunc i64 %i.c to i8
  %trunc = and i8 %1, -16
  switch i8 %trunc, label %bb.v [
    i8 -80, label %bb.f
    i8 112, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !282  ; 3 uses
  %i.k = tail call ptr @lpNext(ptr noundef %i.j, ptr noundef nonnull %i.h) #33 ; 2 uses
  %.not61 = icmp eq ptr %i.k, null
  br i1 %.not61, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @lpNext(ptr noundef %i.j, ptr noundef nonnull %i.k) #33 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.n, align 8, !tbaa !73
  br label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.e, align 8, !tbaa !73
  switch i32 %i.o, label %bb.l [
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @lpNext(ptr noundef %i.j, ptr noundef nonnull %i.l) #33
  %i.q = tail call double @zzlGetScore(ptr noundef %i.p) #33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = tail call i32 @zslValueLteMax(double noundef %i.q, ptr noundef nonnull %i.r) #33
  %.not63.not = icmp eq i32 %i.s, 0
  br i1 %.not63.not, label %.thread65, label %bb.l

.thread65:                                        ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.t, align 8, !tbaa !73
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = tail call i32 @zzlLexValueLteMax(ptr noundef nonnull %i.l, ptr noundef nonnull %i.u) #33
  %.not62 = icmp eq i32 %i.v, 0
  br i1 %.not62, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.w, align 8, !tbaa !73
  br label %bb.w

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.j
  store ptr %i.l, ptr %i.g, align 8, !tbaa !73
  br label %bb.w

bb.m:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !364  ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.aa, align 8, !tbaa !73
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.ab = icmp eq i32 %i.f, 2
  br i1 %i.ab, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ac = load double, ptr %i.y, align 8, !tbaa !363
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = tail call i32 @zslValueLteMax(double noundef %i.ac, ptr noundef nonnull %i.ad) #33
  %.not59 = icmp eq i32 %i.ae, 0
  br i1 %.not59, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre = load i32, ptr %i.e, align 8, !tbaa !73
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.af, align 8, !tbaa !73
  br label %bb.w

bb.r:                                             ; preds = %._crit_edge, %bb.o
  %i.ag = phi i32 [ %.pre, %._crit_edge ], [ %i.f, %bb.o ]
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call ptr @zslGetNodeElement(ptr noundef nonnull %i.y) #33
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = tail call i32 @zslLexValueLteMax(ptr noundef %i.ai, ptr noundef nonnull %i.aj) #33
  %.not60 = icmp eq i32 %i.ak, 0
  br i1 %.not60, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.al, align 8, !tbaa !73
  br label %bb.w

bb.u:                                             ; preds = %bb.r, %bb.s
  store ptr %i.y, ptr %i.g, align 8, !tbaa !73
  br label %bb.w

bb.v:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 5506, ptr noundef nonnull @.str.46) #33
  tail call void @abort() #36
  unreachable

bb.w:                                             ; preds = %.thread65, %bb.n, %bb.q, %bb.t, %bb.u, %.thread, %bb.k, %bb.l, %bb.c, %bb.d, %bb.a, %bb.b
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %.thread ], [ 1, %bb.l ], [ 0, %.thread65 ], [ 0, %bb.n ], [ 1, %bb.u ], [ 0, %bb.t ], [ 0, %bb.q ]
  ret i32 %.3
}

declare i32 @zslValueLteMax(double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @zzlLexValueLteMax(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @zslLexValueLteMax(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_ZsetRangePrev(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 15
  %.not56 = icmp eq i64 %i.d, 3
  br i1 %.not56, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73   ; 3 uses
  %.not57 = icmp eq i32 %i.f, 0
  br i1 %.not57, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 3 uses
  %.not58 = icmp eq ptr %i.h, null
  br i1 %.not58, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %1 = trunc i64 %i.c to i8
  %trunc = and i8 %1, -16
  switch i8 %trunc, label %bb.v [
    i8 -80, label %bb.f
    i8 112, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !282  ; 3 uses
  %i.k = tail call ptr @lpPrev(ptr noundef %i.j, ptr noundef nonnull %i.h) #33 ; 2 uses
  %.not61 = icmp eq ptr %i.k, null
  br i1 %.not61, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @lpPrev(ptr noundef %i.j, ptr noundef nonnull %i.k) #33 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.n, align 8, !tbaa !73
  br label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.e, align 8, !tbaa !73
  switch i32 %i.o, label %bb.l [
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @lpNext(ptr noundef %i.j, ptr noundef nonnull %i.l) #33
  %i.q = tail call double @zzlGetScore(ptr noundef %i.p) #33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = tail call i32 @zslValueGteMin(double noundef %i.q, ptr noundef nonnull %i.r) #33
  %.not63.not = icmp eq i32 %i.s, 0
  br i1 %.not63.not, label %.thread65, label %bb.l

.thread65:                                        ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.t, align 8, !tbaa !73
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = tail call i32 @zzlLexValueGteMin(ptr noundef nonnull %i.l, ptr noundef nonnull %i.u) #33
  %.not62 = icmp eq i32 %i.v, 0
  br i1 %.not62, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.w, align 8, !tbaa !73
  br label %bb.w

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.j
  store ptr %i.l, ptr %i.g, align 8, !tbaa !73
  br label %bb.w

bb.m:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !367  ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.aa, align 8, !tbaa !73
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.ab = icmp eq i32 %i.f, 2
  br i1 %i.ab, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ac = load double, ptr %i.y, align 8, !tbaa !363
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = tail call i32 @zslValueGteMin(double noundef %i.ac, ptr noundef nonnull %i.ad) #33
  %.not59 = icmp eq i32 %i.ae, 0
  br i1 %.not59, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre = load i32, ptr %i.e, align 8, !tbaa !73
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.af, align 8, !tbaa !73
  br label %bb.w

bb.r:                                             ; preds = %._crit_edge, %bb.o
  %i.ag = phi i32 [ %.pre, %._crit_edge ], [ %i.f, %bb.o ]
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call ptr @zslGetNodeElement(ptr noundef nonnull %i.y) #33
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = tail call i32 @zslLexValueGteMin(ptr noundef %i.ai, ptr noundef nonnull %i.aj) #33
  %.not60 = icmp eq i32 %i.ak, 0
  br i1 %.not60, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.al, align 8, !tbaa !73
  br label %bb.w

bb.u:                                             ; preds = %bb.r, %bb.s
  store ptr %i.y, ptr %i.g, align 8, !tbaa !73
  br label %bb.w

bb.v:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 5570, ptr noundef nonnull @.str.46) #33
  tail call void @abort() #36
  unreachable

bb.w:                                             ; preds = %.thread65, %bb.n, %bb.q, %bb.t, %bb.u, %.thread, %bb.k, %bb.l, %bb.c, %bb.d, %bb.a, %bb.b
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %.thread ], [ 1, %bb.l ], [ 0, %.thread65 ], [ 0, %bb.n ], [ 1, %bb.u ], [ 0, %bb.t ], [ 0, %bb.q ]
  ret i32 %.3
}

declare ptr @lpPrev(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @zslValueGteMin(double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @zzlLexValueGteMin(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @zslLexValueGteMin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @RM_HashSet(ptr noundef captures(address_is_null) %0, i32 noundef %1, ...) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 11 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %.not = icmp ne ptr %0, null
  %i.c = and i32 %1, -24
  %.not96 = icmp eq i32 %i.c, 0
  %or.cond109 = and i1 %.not, %.not96
  br i1 %or.cond109, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %.not97 = icmp eq ptr %i.e, null
  br i1 %.not97, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 15
  %.not98 = icmp eq i64 %i.g, 4
  br i1 %.not98, label %.thread, label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %i.j = and i32 %i.i, 2
  %.not99 = icmp eq i32 %i.j, 0
  br i1 %.not99, label %.sink.split, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !67
  %i.m = and i32 %i.l, 2
  %.not99113 = icmp eq i32 %i.m, 0
  br i1 %.not99113, label %.sink.split, label %.thread114

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.n = tail call ptr @createHashObject() #33
  store ptr %i.n, ptr %i.a, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72
  %i.s = call ptr @dbAdd(ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %i.a) #33 ; 3 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !69
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 15
  switch i32 %i.v, label %moduleCreateEmptyKey.exit [
    i32 3, label %bb.f
    i32 6, label %.sink.split.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.w, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.x, align 8, !tbaa !73
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink4.i.i = phi i64 [ 120, %bb.f ], [ 72, %bb.e ]
  %.sink.i.i = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sink4.i.i
  store i32 %.sink.i.i, ptr %i.y, align 8, !tbaa !73
  br label %moduleCreateEmptyKey.exit

moduleCreateEmptyKey.exit:                        ; preds = %bb.e, %.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.thread114

.thread114:                                       ; preds = %.thread, %moduleCreateEmptyKey.exit
end_hunk_1
