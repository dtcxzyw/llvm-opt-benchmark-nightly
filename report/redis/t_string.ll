inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0_@setGenericCommand:bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !40
  call void @incrRefCount(ptr noundef %i.ef) #10
  %.pre193 = load i32, ptr %i.dm, align 8, !tbaa !80 ; 2 uses
  %i.eh = icmp sgt i32 %.pre193, 3
  br i1 %i.eh, label %.peel.next173, label %._crit_edge

.peel.next173:                                    ; preds = %bb.as, %bb.ax
  %i.ei = phi i32 [ %i.ez, %bb.ax ], [ %.pre193, %bb.as ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ax ], [ 3, %bb.as ] ; 2 uses
  %.0126167 = phi i32 [ %.1, %bb.ax ], [ 3, %bb.as ] ; 3 uses
  %i.ej = load ptr, ptr %i.du, align 8, !tbaa !15
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !40 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !45 ; 4 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !84
  switch i8 %i.eo, label %bb.aw [
    i8 103, label %bb.at
    i8 71, label %bb.at
  ]

bb.at:                                            ; preds = %.peel.next173, %.peel.next173
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !84
  switch i8 %i.eq, label %bb.aw [
    i8 101, label %bb.au
    i8 69, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !84
  switch i8 %i.es, label %bb.aw [
    i8 116, label %bb.av
    i8 84, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !84
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.at, %.peel.next173, %bb.av
  %i.ew = add nsw i32 %.0126167, 1
  %i.ex = sext i32 %.0126167 to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ex
  store ptr %i.el, ptr %i.ey, align 8, !tbaa !40
  call void @incrRefCount(ptr noundef nonnull %i.el) #10
  %.pre195 = load i32, ptr %i.dm, align 8, !tbaa !80
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.ez = phi i32 [ %.pre195, %bb.aw ], [ %i.ei, %bb.av ] ; 2 uses
  %.1 = phi i32 [ %i.ew, %bb.aw ], [ %.0126167, %bb.av ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = icmp slt i64 %indvars.iv.next, %i.fa
  br i1 %i.fb, label %.peel.next173, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.ax, %bb.aq, %bb.ar, %bb.as, %.thread206
  %.0126.lcssa = phi i32 [ 0, %.thread206 ], [ 3, %bb.as ], [ 1, %bb.aq ], [ 2, %bb.ar ], [ %.1, %bb.ax ]
  call void @replaceClientCommandVector(ptr noundef nonnull %0, i32 noundef %.0126.lcssa, ptr noundef %i.dr) #10
  br label %.critedge155

.critedge155:                                     ; preds = %bb.ap, %.thread, %bb.ai, %bb.af, %bb.z, %bb.w, %bb.r, %bb.ab, %._crit_edge, %bb.l, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %getExpireMillisecondsOrReply.exit

getExpireMillisecondsOrReply.exit:                ; preds = %bb.i, %thread-pre-split.thread.sink.split.i, %bb.b, %.critedge155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getGenericCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.i) #10 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 0) #10
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef nonnull %i.j) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lookupKeyRead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @getDecodedObject(ptr noundef) local_unnamed_addr #2

declare i32 @sdscmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @decrRefCount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @validateHexDigest(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !84 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit.thread [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !84
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %1, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !88
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %1, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !90
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ]
  %.not = icmp eq i64 %.0.i, 16
  br i1 %.not, label %bb.g, label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.a, %sdslen.exit
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 16) #10
  br label %bb.g

bb.g:                                             ; preds = %sdslen.exit, %sdslen.exit.thread
  %.0 = phi i32 [ -1, %sdslen.exit.thread ], [ 0, %sdslen.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @stringDigest(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = and i64 %i.b, 15
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %.critedge, !prof !92

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.9, i32 noundef 1184) #10
  tail call void @abort() #13
  unreachable

bb.c:                                             ; preds = %bb.b
  %1 = trunc i64 %i.b to i32
  %2 = lshr exact i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.k [
    i32 0, label %bb.d
    i32 8, label %bb.d
    i32 1, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !84 ; 2 uses
  %i.h = and i8 %.val.i, 7
  switch i8 %i.h, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = lshr i8 %.val.i, 3
  %i.j = zext nneg i8 %i.i to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !84
  %i.m = zext i8 %i.l to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.o = load i16, ptr %i.n, align 1, !tbaa !88
  %i.p = zext i16 %i.o to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.r = load i32, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i32 %i.r to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.u = load i64, ptr %i.t, align 1, !tbaa !90
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.u, %bb.i ], [ %i.j, %bb.e ], [ %i.m, %bb.f ], [ %i.p, %bb.g ], [ %i.s, %bb.h ], [ 0, %bb.d ]
  %i.v = tail call i64 @XXH3_64bits(ptr noundef nonnull captures(none) %i.f, i64 noundef %.0.i) #11
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 21, i64 noundef %i.y) #10
  %i.aa = sext i32 %i.z to i64
  %i.ab = call i64 @XXH3_64bits(ptr noundef nonnull captures(none) %i.a, i64 noundef %i.aa) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.9, i32 noundef 1194, ptr noundef nonnull @.str.36) #10
  tail call void @abort() #13
  unreachable

bb.l:                                             ; preds = %bb.j, %sdslen.exit
  %.0 = phi i64 [ %i.v, %sdslen.exit ], [ %i.ab, %bb.j ]
  %i.ac = call ptr @sdsempty() #10
  %i.ad = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.37, i64 noundef %.0) #10
  ret ptr %i.ad
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare void @sdsfree(ptr noundef) local_unnamed_addr #2

declare void @setKeyByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @setExpireByLink(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @incrRefCount(ptr noundef) local_unnamed_addr #2

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @createStringObjectFromLongLong(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @setCommand(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.extendedStringArgs, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = call i32 @parseExtendedStringArgumentsOrReply(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %1, i32 noundef 1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = tail call ptr @tryObjectEncoding(ptr noundef %i.e) #10
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !40
  %i.i = load i32, ptr %1, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97
  tail call void @setGenericCommand(ptr noundef %0, i32 noundef %i.i, ptr noundef %i.k, ptr noundef nonnull %i.h, ptr noundef %i.m, i32 noundef %i.o, ptr noundef %i.q, ptr noundef null, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

declare void @rewriteClientCommandArgument(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @rewriteClientCommandVector(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #4

declare void @replaceClientCommandVector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @parseExtendedStringArgumentsOrReply(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) initializes((0, 32)) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !80   ; 3 uses
  %i.e = icmp slt i32 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = add nsw i32 %i.d, -1
  %i.i = add i32 %3, -1
  %or.cond = icmp ult i32 %i.i, 2                 ; 3 uses
  %i.j = icmp eq i32 %3, 1                        ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bh
  %i.m = phi i32 [ 0, %.lr.ph ], [ %i.dy, %bb.bh ] ; 29 uses
  %.0203280 = phi i32 [ %1, %.lr.ph ], [ %i.dz, %bb.bh ] ; 17 uses
  %i.n = sext i32 %.0203280 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45   ; 24 uses
  %i.s = icmp eq i32 %.0203280, %i.h
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.o, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.u, %bb.c ], [ null, %bb.b ] ; 13 uses
  %i.w = load i8, ptr %i.r, align 1, !tbaa !84    ; 7 uses
  switch i8 %i.w, label %bb.s [
    i8 110, label %bb.e
    i8 78, label %bb.e
    i8 120, label %bb.j
    i8 88, label %bb.j
    i8 103, label %bb.o
    i8 71, label %bb.o
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !84
  switch i8 %i.y, label %bb.i [
    i8 120, label %bb.f
    i8 88, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !84
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = and i32 %i.m, 2
  %.not = icmp eq i32 %i.ac, 0
  %or.cond257 = and i1 %or.cond, %.not
end_hunk_0
