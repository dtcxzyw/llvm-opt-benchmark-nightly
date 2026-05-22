inline.NumInlined: 167
inline.NumDeleted: 15
begin_hunk_0_@listpackExCreate:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @listpackExExpire(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [21 x i8], align 16               ; 5 uses
  %i.d = load i64, ptr %1, align 8
  %i.e = and i64 %i.d, 240
  %i.f = icmp eq i64 %i.e, 192
  br i1 %i.f, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 361) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call ptr @lpFirst(ptr noundef %i.j) #13 ; 2 uses
  %i.l = tail call ptr @kvobjGetKey(ptr noundef nonnull %1) #13 ; 3 uses
  %.not68 = icmp eq ptr %i.k, null
  br i1 %.not68, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.not54 = icmp eq i32 %3, 0
  %.pre = load i64, ptr %i.m, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %i.p = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %bb.m ]
  %.070 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.m ] ; 3 uses
  %.04669 = phi ptr [ %i.k, %.lr.ph ], [ %i.aj, %bb.m ] ; 2 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !25
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.s = call ptr @lpGet(ptr noundef nonnull %.04669, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #13 ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.u = call ptr @lpNext(ptr noundef %i.t, ptr noundef nonnull %.04669) #13 ; 2 uses
  %.not51 = icmp eq ptr %i.u, null
  br i1 %.not51, label %bb.f, label %bb.g, !prof !26

bb.f:                                             ; preds = %bb.e
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 378) #13
  call void @abort() #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.w = call ptr @lpNext(ptr noundef %i.v, ptr noundef nonnull %i.u) #13 ; 3 uses
  %.not52 = icmp eq ptr %i.w, null
  br i1 %.not52, label %.critedge59, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 @lpGetIntegerValue(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a) #13
  %.not63 = icmp eq i32 %i.x, 0
  br i1 %.not63, label %.critedge59, label %bb.i, !prof !26

.critedge59:                                      ; preds = %bb.g, %bb.h
  call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 380) #13
  call void @abort() #14
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !29
  %i.ab = icmp ugt i64 %i.y, %i.aa
  br i1 %i.ab, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %i.s, null
  %i.ac = select i1 %.not53, ptr %i.c, ptr %i.s
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !13
  call fastcc void @propagateHashFieldDeletion(ptr noundef %0, ptr noundef %i.l, ptr noundef nonnull %i.ac, i64 noundef %i.ad)
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2568), align 8, !tbaa !30
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2568), align 8, !tbaa !30
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2576), align 8, !tbaa !61
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2576), align 8, !tbaa !61
  br label %bb.m

.thread:                                          ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.critedge

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.aj = call ptr @lpNext(ptr noundef %i.ai, ptr noundef nonnull %i.w) #13 ; 2 uses
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !23
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  store i64 %i.al, ptr %i.m, align 8, !tbaa !23
  %i.am = add i64 %.070, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.d, %bb.m, %.thread
  %.067 = phi i64 [ %.070, %.thread ], [ %i.am, %bb.m ], [ %.070, %bb.d ] ; 3 uses
  %.not55 = icmp eq i64 %.067, 0
  br i1 %.not55, label %.critedge.thread, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not56 = icmp eq i32 %i.an, 0
  br i1 %.not56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = call i64 @kvobjAllocSize(ptr noundef nonnull %1) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.044 = phi i64 [ %i.ao, %bb.o ], [ 0, %bb.n ]
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.aq = mul i64 %.067, 3
  %i.ar = call ptr @lpDeleteRange(ptr noundef %i.ap, i64 noundef 0, i64 noundef %i.aq) #13 ; 2 uses
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !18
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not57 = icmp eq i32 %i.as, 0
  br i1 %.not57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = call i32 @getKeySlot(ptr noundef %i.l) #13
  %i.au = call i64 @kvobjAllocSize(ptr noundef nonnull %1) #13
  call void @updateSlotAllocSize(ptr noundef %0, i32 noundef %i.at, ptr noundef nonnull %1, i64 noundef %.044, i64 noundef %i.au) #13
  %.pre76 = load ptr, ptr %i.i, align 8, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.av = phi ptr [ %.pre76, %bb.q ], [ %i.ar, %bb.p ]
  %i.aw = call i64 @lpLength(ptr noundef %i.av) #13
  %i.ax = udiv i64 %i.aw, 3                       ; 2 uses
  %i.ay = call i32 @getKeySlot(ptr noundef %i.l) #13
  %i.az = add i64 %i.ax, %.067
  call void @updateKeysizesHist(ptr noundef %0, i32 noundef %i.ay, i32 noundef 4, i64 noundef %i.az, i64 noundef %i.ax) #13
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %bb.r, %.critedge
  %i.ba = load i64, ptr %1, align 8
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = lshr i32 %i.bb, 4
  %i.bd = and i32 %i.bc, 15
  switch i32 %i.bd, label %bb.t [
    i32 11, label %hashTypeGetMinExpire.exit
    i32 12, label %bb.s
    i32 2, label %bb.u
  ], !prof !63

bb.s:                                             ; preds = %.critedge.thread
  %i.be = call fastcc i64 @listpackExGetMinExpire(ptr noundef nonnull readonly %1)
  br label %hashTypeGetMinExpire.exit

bb.t:                                             ; preds = %.critedge.thread
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 2013) #13
  call void @abort() #14
  unreachable

bb.u:                                             ; preds = %.critedge.thread
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !64
  %.not30.i = icmp eq ptr %.val.i, @entryHashDictTypeWithHFE
  br i1 %.not30.i, label %bb.v, label %hashTypeGetMinExpire.exit

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66
  %i.bi = call i64 @ebGetNextTimeToExpire(ptr noundef %i.bh, ptr noundef nonnull @hashFieldExpireBucketsType) #13
  br label %hashTypeGetMinExpire.exit

hashTypeGetMinExpire.exit:                        ; preds = %.critedge.thread, %bb.s, %bb.u, %bb.v
  %.2.i = phi i64 [ 281474976710656, %bb.u ], [ %i.be, %bb.s ], [ 281474976710656, %.critedge.thread ], [ %i.bi, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %.2.i, ptr %i.bj, align 8, !tbaa !68
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare ptr @lpFirst(ptr noundef) local_unnamed_addr #0

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #0

declare ptr @lpGet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @lpNext(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @lpGetIntegerValue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @propagateHashFieldDeletion(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 608), align 8, !tbaa !69
  store ptr %i.b, ptr %i.a, align 16, !tbaa !72
  %i.c = getelementptr i8, ptr %1, i64 -1
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
  %i.g = getelementptr inbounds i8, ptr %1, i64 -3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !73
  %i.i = zext i8 %i.h to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %1, i64 -5
  %i.k = load i16, ptr %i.j, align 1, !tbaa !74
  %i.l = zext i16 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %1, i64 -9
  %i.n = load i32, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i32 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %1, i64 -17
  %i.q = load i64, ptr %i.p, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = tail call ptr @createStringObject(ptr noundef nonnull %1, i64 noundef %.0.i) #13
  store ptr %i.s, ptr %i.r, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.u = tail call ptr @createStringObject(ptr noundef %2, i64 noundef %3) #13
  store ptr %i.u, ptr %i.t, align 16, !tbaa !72
  tail call void @enterExecutionUnit(i32 noundef 1, i64 noundef 0) #13
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7088), align 8, !tbaa !75
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7088), align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !76
  call void @alsoPropagate(i32 noundef %i.x, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 3) #13
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7088), align 8, !tbaa !75
  call void @exitExecutionUnit() #13
  call void @postExecutionUnitOperations() #13
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !72
  call void @decrRefCount(ptr noundef %i.y) #13
  %i.z = load ptr, ptr %i.t, align 16, !tbaa !72
  call void @decrRefCount(ptr noundef %i.z) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #0

declare ptr @lpDeleteRange(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #0

declare i64 @lpLength(ptr noundef) local_unnamed_addr #0

declare void @updateKeysizesHist(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i64 @hashTypeGetMinExpire(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15                         ; 2 uses
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.d [
    i32 11, label %.thread
    i32 12, label %bb.c
    i32 2, label %bb.e
  ], !prof !63

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1990) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.val27 = load ptr, ptr %i.h, align 8, !tbaa !64
  %.not31 = icmp eq ptr %.val27, @entryHashDictTypeWithHFE
  br i1 %.not31, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.121 = phi ptr [ %i.f, %bb.c ], [ %i.i, %bb.f ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.121, i64 6
  %i.k = load i16, ptr %i.j, align 2
  %i.l = and i16 %i.k, 256
  %.not25 = icmp eq i16 %i.l, 0
  br i1 %.not25, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.121.val = load i32, ptr %.121, align 8, !tbaa !79
  %i.m = getelementptr i8, ptr %.121, i64 4
  %.121.val28 = load i16, ptr %i.m, align 4, !tbaa !80
  %i.n = zext i16 %.121.val28 to i64
  %i.o = shl nuw nsw i64 %i.n, 32
  %i.p = zext i32 %.121.val to i64
  %i.q = or disjoint i64 %i.o, %i.p
  br label %.thread

bb.i:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.k [
    i32 11, label %.thread
    i32 12, label %bb.j
    i32 2, label %bb.l
  ], !prof !63

bb.j:                                             ; preds = %bb.i
  %i.r = tail call fastcc i64 @listpackExGetMinExpire(ptr noundef nonnull %0)
  br label %.thread

bb.k:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 2013) #13
  tail call void @abort() #14
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !64
  %.not30 = icmp eq ptr %.val, @entryHashDictTypeWithHFE
  br i1 %.not30, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.w = tail call i64 @ebGetNextTimeToExpire(ptr noundef %i.v, ptr noundef nonnull @hashFieldExpireBucketsType) #13
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.m, %bb.l, %bb.i, %bb.g, %bb.b, %bb.j, %bb.h
  %.2 = phi i64 [ 281474976710656, %bb.g ], [ %i.r, %bb.j ], [ 281474976710656, %bb.i ], [ 281474976710656, %bb.e ], [ 281474976710656, %bb.l ], [ %i.q, %bb.h ], [ 281474976710656, %bb.b ], [ %i.w, %bb.m ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @listpackExAddNew(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.lpFingArgs, align 8         ; 6 uses
  %7 = alloca [3 x %struct.listpackEntry], align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %1, ptr %7, align 16, !tbaa !81
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = trunc i64 %2 to i32
  store i32 %i.b, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.d, align 16, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.g = trunc i64 %4 to i32
  store i32 %i.g, ptr %i.f, align 16, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i64 %5, ptr %i.i, align 16, !tbaa !84
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !15  ; 2 uses
  %i.k = icmp eq i64 %5, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = call ptr @lpBatchAppend(ptr noundef %i.m, ptr noundef nonnull %7, i64 noundef 3) #13
  store ptr %i.n, ptr %i.l, align 8, !tbaa !18
  br label %listpackExAddInternal.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i64 -1, ptr %6, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %5, ptr %i.o, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = call ptr @lpFindCb(ptr noundef %i.r, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull @cbFindInListpack, i32 noundef 0) #13 ; 0 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !88   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call ptr @lpBatchInsert(ptr noundef %i.u, ptr noundef nonnull %i.t, i32 noundef 0, ptr noundef nonnull %7, i32 noundef 3, ptr noundef null) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = call ptr @lpBatchAppend(ptr noundef %i.u, ptr noundef nonnull %7, i64 noundef 3) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i = phi ptr [ %i.w, %bb.e ], [ %i.v, %bb.d ]
  store ptr %storemerge.i, ptr %i.q, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %listpackExAddInternal.exit

listpackExAddInternal.exit:                       ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @hashTypeSetExpiryListpack(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @lpGetIntegerValue(ptr noundef %4, ptr noundef nonnull %i.a) #13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 505) #13
  call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not39 = icmp eq i64 %i.c, 0
  %spec.select = select i1 %.not39, i64 281474976710656, i64 %i.c ; 5 uses
  %i.d = icmp eq i64 %5, 281474976710656
  %i.e = icmp eq i64 %spec.select, 281474976710656 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  call fastcc void @listpackExUpdateExpiry(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0)
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !91     ; 4 uses
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = and i32 %i.h, 6
  %.not42 = icmp eq i32 %i.i, 0
  br i1 %.not42, label %bb.l, label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.j = icmp ne i32 %i.h, 4
  %.not40 = icmp ult i64 %spec.select, %5
  %or.cond = select i1 %i.j, i1 true, i1 %.not40
  br i1 %or.cond, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.k = icmp eq i32 %i.h, 8
  %.not41 = icmp ule i64 %spec.select, %5
  %or.cond44.not47 = select i1 %i.k, i1 %.not41, i1 false
  %i.l = icmp eq i32 %i.h, 1
  %or.cond45 = or i1 %i.l, %or.cond44.not47
  br i1 %or.cond45, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !92
  %i.o = icmp ugt i64 %i.n, %spec.select
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %spec.select, ptr %i.m, align 8, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g
  %i.p = call i32 @checkAlreadyExpired(i64 noundef %5) #13
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.n, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = call fastcc i64 @sdslen(ptr noundef %1)
  call fastcc void @propagateHashFieldDeletion(ptr noundef %i.r, ptr noundef %i.v, ptr noundef %1, i64 noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89
  %i.z = call i32 @hashTypeDelete(ptr noundef %i.y, ptr noundef %1) ; 0 uses
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2568), align 8, !tbaa !30
  %i.ab = add nsw i64 %i.aa, 1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2568), align 8, !tbaa !30
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !92
  %i.ae = icmp ugt i64 %i.ad, %5
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %5, ptr %i.ac, align 8, !tbaa !92
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !89
  call fastcc void @listpackExUpdateExpiry(ptr noundef %i.ag, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.d, %bb.p, %bb.m, %bb.e
  %.036 = phi i32 [ 0, %bb.g ], [ 1, %bb.e ], [ 0, %bb.d ], [ 2, %bb.m ], [ 1, %bb.p ], [ 0, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc void @listpackExUpdateExpiry(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef range(i64 281474976710657, 281474976710656) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.lpFingArgs, align 8         ; 6 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [512 x i8], align 16              ; 5 uses
  %6 = alloca [3 x %struct.listpackEntry], align 16 ; 12 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 0, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@hashTypeSet:bb.a
  tail call void @abort() #14
  unreachable

bb.dg:                                            ; preds = %hashTypeConvert.exit176, %bb.de, %hashTypeConvert.exit158
  %.3 = phi i32 [ %.0110183, %hashTypeConvert.exit158 ], [ %.1189, %hashTypeConvert.exit176 ], [ %.2, %bb.de ]
  %.0 = phi i32 [ %4, %hashTypeConvert.exit158 ], [ %4, %hashTypeConvert.exit176 ], [ %i.jo, %bb.de ] ; 2 uses
  %i.ks = trunc i32 %.0 to i1
  %i.kt = icmp ne ptr %2, null
  %or.cond = and i1 %i.kt, %i.ks
  br i1 %or.cond, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @sdsfree(ptr noundef nonnull %2) #13
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ku = and i32 %.0, 2
  %i.kv = icmp ne i32 %i.ku, 0
  %i.kw = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.kw, %i.kv
  br i1 %or.cond3, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  call void @sdsfree(ptr noundef nonnull %3) #13
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  ret i32 %.3
}

declare ptr @lpReplace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @lpBatchAppend(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare ptr @lpPrev(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @dictFindLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @entryCreate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @dictSetKeyAtLink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @entryUpdate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ebAdd(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @sdsfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 3) i32 @hashTypeSetExpiryHT(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.g = tail call ptr @dictFindLink(ptr noundef %i.f, ptr noundef %1, ptr noundef null) #13 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !120
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %hfieldPersist.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.j = tail call ptr @dictGetKey(ptr noundef %i.i) #13 ; 10 uses
  %i.k = icmp eq i64 %2, 281474976710656
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 @entryGetExpiry(ptr noundef %i.j) #13
  %i.m = icmp eq i64 %i.l, 281474976710656
  br i1 %i.m, label %hfieldPersist.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.o = tail call i64 @entryGetExpiry(ptr noundef %i.j) #13
  %i.p = icmp eq i64 %i.o, 281474976710656
  br i1 %i.p, label %hfieldPersist.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 70
  %i.t = load i16, ptr %i.s, align 2
  %i.u = and i16 %i.t, 256
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 3451) #13
  tail call void @abort() #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.x = tail call i32 @ebRemove(ptr noundef nonnull %i.w, ptr noundef nonnull @hashFieldExpireBucketsType, ptr noundef %i.j) #13 ; 0 uses
  br label %hfieldPersist.exit

bb.h:                                             ; preds = %bb.b
  %i.y = tail call i32 @entryHasExpiry(ptr noundef %i.j) #13
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %0, align 8, !tbaa !91
  %i.aa = and i32 %i.z, 6
  %.not60 = icmp eq i32 %i.aa, 0
  br i1 %.not60, label %.thread, label %hfieldPersist.exit

.thread:                                          ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ac = call ptr @entryUpdate(ptr noundef %i.j, ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.b) #13
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.ag = tail call i64 @entryGetExpiry(ptr noundef %i.j) #13 ; 6 uses
  %.not61 = icmp eq i64 %i.ag, 281474976710656
  %i.ah = load i32, ptr %0, align 8, !tbaa !91    ; 4 uses
  br i1 %.not61, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ne i32 %i.ah, 4
  %.not63 = icmp ult i64 %i.ag, %2
  %or.cond = or i1 %.not63, %i.ai
  br i1 %or.cond, label %bb.l, label %hfieldPersist.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp eq i32 %i.ah, 8
  %.not64 = icmp ule i64 %i.ag, %2
  %or.cond66.not74 = and i1 %.not64, %i.aj
  %i.ak = icmp eq i32 %i.ah, 1
  %or.cond72 = or i1 %i.ak, %or.cond66.not74
  br i1 %or.cond72, label %hfieldPersist.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp eq i64 %i.ag, %2
  br i1 %i.al, label %hfieldPersist.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.an = tail call i32 @ebRemove(ptr noundef nonnull %i.am, ptr noundef nonnull @hashFieldExpireBucketsType, ptr noundef %i.j) #13 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !92
  %i.aq = icmp ugt i64 %i.ap, %i.ag
  br i1 %i.aq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store i64 %i.ag, ptr %i.ao, align 8, !tbaa !92
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.ar = and i32 %i.ah, 6
  %.not62 = icmp eq i32 %i.ar, 0
  br i1 %.not62, label %bb.q, label %hfieldPersist.exit

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %.thread
  %.255 = phi ptr [ %i.ac, %.thread ], [ %i.j, %bb.p ], [ %i.j, %bb.o ], [ %i.j, %bb.n ] ; 2 uses
  call void @dictSetKeyAtLink(ptr noundef %i.f, ptr noundef %.255, ptr noundef nonnull %i.a, i32 noundef 0) #13
  %i.as = call i32 @checkAlreadyExpired(i64 noundef %2) #13
  %.not65 = icmp eq i32 %i.as, 0
  br i1 %.not65, label %bb.s, label %bb.r, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.az = call fastcc i64 @sdslen(ptr noundef %1)
  call fastcc void @propagateHashFieldDeletion(ptr noundef %i.au, ptr noundef %i.ay, ptr noundef %1, i64 noundef %i.az)
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.bb = call i32 @hashTypeDelete(ptr noundef %i.ba, ptr noundef %1) ; 0 uses
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2568), align 8, !tbaa !30
  %i.bd = add nsw i64 %i.bc, 1
  store i64 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2568), align 8, !tbaa !30
  br label %hfieldPersist.exit

bb.s:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !92
  %i.bg = icmp ugt i64 %i.bf, %2
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 %2, ptr %i.be, align 8, !tbaa !92
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.bi = call i32 @ebAdd(ptr noundef nonnull %i.bh, ptr noundef nonnull @hashFieldExpireBucketsType, ptr noundef %.255, i64 noundef %2) #13 ; 0 uses
  br label %hfieldPersist.exit

hfieldPersist.exit:                               ; preds = %bb.p, %bb.k, %bb.l, %bb.m, %bb.g, %bb.d, %bb.r, %bb.u, %bb.c, %bb.i, %bb.a
  %.3 = phi i32 [ -2, %bb.a ], [ 0, %bb.i ], [ 0, %bb.c ], [ 2, %bb.r ], [ 1, %bb.u ], [ 1, %bb.g ], [ 1, %bb.d ], [ 0, %bb.p ], [ 0, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.3
}

declare i32 @entryHasExpiry(ptr noundef) local_unnamed_addr #0

declare i32 @ebRemove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 3) i32 @hashTypeSetEx(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15
  switch i32 %i.d, label %bb.p [
    i32 12, label %bb.b
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call ptr @lpFirst(ptr noundef %i.h) #13 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.k = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.k, align 1, !tbaa !73 ; 2 uses
  %i.l = and i8 %.val.i, 7
  switch i8 %i.l, label %bb.i [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i8 %.val.i, 3
  %i.n = zext nneg i8 %i.m to i64
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %1, i64 -3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !73
  %i.q = zext i8 %i.p to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %1, i64 -5
  %i.s = load i16, ptr %i.r, align 1, !tbaa !74
  %i.t = zext i16 %i.s to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %1, i64 -9
  %i.v = load i32, ptr %i.u, align 1, !tbaa !9
  %i.w = zext i32 %i.v to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %1, i64 -17
  %i.y = load i64, ptr %i.x, align 1, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i = phi i64 [ %i.y, %bb.h ], [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.w, %bb.g ], [ 0, %bb.c ]
  %i.z = trunc i64 %.0.i to i32
  %i.aa = tail call ptr @lpFind(ptr noundef %i.j, ptr noundef nonnull %i.i, ptr noundef nonnull %1, i32 noundef %i.z, i32 noundef 2) #13 ; 3 uses
  %.not31 = icmp eq ptr %i.aa, null
  br i1 %.not31, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ac = tail call ptr @lpNext(ptr noundef %i.ab, ptr noundef nonnull %i.aa) #13 ; 3 uses
  %.not32 = icmp eq ptr %i.ac, null
  br i1 %.not32, label %bb.k, label %bb.l, !prof !26

bb.k:                                             ; preds = %bb.j
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1150) #13
  tail call void @abort() #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ae = tail call ptr @lpNext(ptr noundef %i.ad, ptr noundef nonnull %i.ac) #13 ; 2 uses
  %.not33 = icmp eq ptr %i.ae, null
  br i1 %.not33, label %bb.m, label %bb.n, !prof !26

bb.m:                                             ; preds = %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1153) #13
  tail call void @abort() #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.af = tail call i32 @hashTypeSetExpiryListpack(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ae, i64 noundef %2)
  br label %.thread

bb.o:                                             ; preds = %bb.a
  %i.ag = tail call i32 @hashTypeSetExpiryHT(ptr noundef %3, ptr noundef %1, i64 noundef %2)
  br label %.thread

bb.p:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1161, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

.thread:                                          ; preds = %bb.b, %bb.n, %bb.i, %bb.o
  %.1 = phi i32 [ %i.ag, %bb.o ], [ %i.af, %bb.n ], [ -2, %bb.i ], [ -2, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @initDictExpireMetadata(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr null, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 70 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2
  %i.f = or i16 %i.e, 256
  store i16 %i.f, ptr %i.d, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hashTypeSetExInit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef writeonly captures(none) initializes((0, 4), (8, 56)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !123
  store i32 %4, ptr %5, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 281474976710656, ptr %i.d, align 8, !tbaa !124
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.e, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.g, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %1, ptr %i.h, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 281474976710656, ptr %i.i, align 8, !tbaa !92
  %i.j = load i64, ptr %1, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 4
  %i.m = and i32 %i.l, 15
  switch i32 %i.m, label %bb.d [
    i32 11, label %hashTypeConvert.exit
    i32 2, label %bb.b
  ]

hashTypeConvert.exit:                             ; preds = %bb.a
  tail call void @hashTypeConvertListpack(ptr noundef nonnull %1, i32 noundef 12)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8, !tbaa !64
  %.not = icmp eq ptr %.val, @entryHashDictTypeWithHFE
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @dictTypeAddMeta(ptr noundef nonnull %i.a, ptr noundef nonnull @entryHashDictTypeWithHFE) #13
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !123  ; 3 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr null, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 70 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2
  %i.r = or i16 %i.q, 256
  store i16 %i.r, ptr %i.p, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b, %hashTypeConvert.exit
  %i.s = load i64, ptr %1, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = lshr i32 %i.t, 4
  %i.v = and i32 %i.u, 15
  switch i32 %i.v, label %bb.f [
    i32 11, label %hashTypeGetMinExpire.exit
    i32 12, label %bb.e
    i32 2, label %bb.g
  ], !prof !63

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !15
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1990) #13
  call void @abort() #14
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %.val27.i = load ptr, ptr %i.x, align 8, !tbaa !64
  %.not31.i = icmp eq ptr %.val27.i, @entryHashDictTypeWithHFE
  br i1 %.not31.i, label %bb.h, label %hashTypeGetMinExpire.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.121.i = phi ptr [ %i.w, %bb.e ], [ %i.y, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = and i16 %i.aa, 256
  %.not25.i = icmp eq i16 %i.ab, 0
  br i1 %.not25.i, label %bb.j, label %hashTypeGetMinExpire.exit

bb.j:                                             ; preds = %bb.i
  %.121.val.i = load i32, ptr %.121.i, align 8, !tbaa !79
  %i.ac = getelementptr i8, ptr %.121.i, i64 4
  %.121.val28.i = load i16, ptr %i.ac, align 4, !tbaa !80
  %i.ad = zext i16 %.121.val28.i to i64
  %i.ae = shl nuw nsw i64 %i.ad, 32
  %i.af = zext i32 %.121.val.i to i64
  %i.ag = or disjoint i64 %i.ae, %i.af
  br label %hashTypeGetMinExpire.exit

hashTypeGetMinExpire.exit:                        ; preds = %bb.d, %bb.g, %bb.i, %bb.j
  %.2.i = phi i64 [ 281474976710656, %bb.i ], [ 281474976710656, %bb.d ], [ %i.ag, %bb.j ], [ 281474976710656, %bb.g ]
  store i64 %.2.i, ptr %i.d, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 0
}

declare void @dictTypeAddMeta(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hashTypeSetExDone(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 4 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.e [
    i32 11, label %bb.b
    i32 12, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = tail call i64 @lpLength(ptr noundef %i.h) #13
  %i.j = lshr i64 %i.i, 1
  br label %hashTypeLength.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = tail call i64 @lpLength(ptr noundef %i.n) #13
  %i.p = udiv i64 %i.o, 3
  br label %hashTypeLength.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = add i64 %i.v, %i.t
  br label %hashTypeLength.exit

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

hashTypeLength.exit:                              ; preds = %bb.b, %bb.d, %bb.c
  %.1.i = phi i64 [ %i.j, %bb.b ], [ %i.w, %bb.d ], [ %i.p, %bb.c ]
  %i.x = icmp eq i64 %.1.i, 0
  br i1 %i.x, label %bb.r, label %bb.f

bb.f:                                             ; preds = %hashTypeLength.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !92
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !89  ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = trunc i64 %i.ae to i32
  %i.ag = lshr i32 %i.af, 4
  %i.ah = and i32 %i.ag, 15
  switch i32 %i.ah, label %bb.i [
    i32 11, label %hashTypeGetMinExpire.exit
    i32 12, label %bb.h
    i32 2, label %bb.j
  ], !prof !63

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call fastcc i64 @listpackExGetMinExpire(ptr noundef nonnull readonly %i.ad)
  br label %hashTypeGetMinExpire.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 2013) #13
  tail call void @abort() #14
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15 ; 2 uses
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !64
  %.not30.i = icmp eq ptr %.val.i, @entryHashDictTypeWithHFE
  br i1 %.not30.i, label %bb.k, label %hashTypeGetMinExpire.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66
  %i.an = tail call i64 @ebGetNextTimeToExpire(ptr noundef %i.am, ptr noundef nonnull @hashFieldExpireBucketsType) #13
  br label %hashTypeGetMinExpire.exit

hashTypeGetMinExpire.exit:                        ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.2.i = phi i64 [ 281474976710656, %bb.j ], [ %i.ai, %bb.h ], [ 281474976710656, %bb.g ], [ %i.an, %bb.k ] ; 6 uses
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !124 ; 3 uses
  %i.ap = icmp ugt i64 %i.ao, %.2.i
  %i.aq = sub nuw i64 %i.ao, %.2.i
  %i.ar = sub nuw i64 %.2.i, %i.ao
  %i.as = select i1 %i.ap, i64 %i.aq, i64 %i.ar
  %i.at = icmp ult i64 %i.as, 4000
  br i1 %i.at, label %bb.r, label %bb.l

bb.l:                                             ; preds = %hashTypeGetMinExpire.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !94
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.ay = tail call i32 @getKeySlot(ptr noundef %i.ax) #13 ; 3 uses
  %i.az = load i64, ptr %i.y, align 8, !tbaa !124
  %.not = icmp eq i64 %i.az, 281474976710656
  %.not27 = icmp eq i64 %.2.i, 281474976710656    ; 2 uses
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !93
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !126 ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @estoreUpdate(ptr noundef %i.bd, i32 noundef %i.ay, ptr noundef %i.be, i64 noundef %.2.i) #13
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bf = tail call i64 @estoreRemove(ptr noundef %i.bd, i32 noundef %i.ay, ptr noundef %i.be) #13 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  br i1 %.not27, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !93
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !126
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !89
  tail call void @estoreAdd(ptr noundef %i.bj, i32 noundef %i.ay, ptr noundef %i.bk, i64 noundef %.2.i) #13
  br label %bb.r

bb.r:                                             ; preds = %hashTypeGetMinExpire.exit, %bb.p, %bb.q, %bb.n, %bb.o, %bb.f, %hashTypeLength.exit
  ret void
}

declare void @estoreUpdate(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare i64 @estoreRemove(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @estoreAdd(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare ptr @lpDeleteRangeWithEntry(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i64 @ebExpireDryRun(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i64 @hashTypeAllocSize(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1338) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.a to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.g [
    i32 11, label %bb.d
    i32 12, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = tail call i64 @lpBytes(ptr noundef %i.h) #13
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = tail call i64 @lpBytes(ptr noundef %i.m) #13
  %i.o = add i64 %i.n, 24
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15   ; 2 uses
  %i.r = tail call i64 @dictMemUsage(ptr noundef %i.q) #13
  %i.s = add i64 %i.r, 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13
  %i.v = add i64 %i.s, %i.u
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1349, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ %i.o, %bb.e ], [ %i.v, %bb.f ]
  ret i64 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i64 @lpBytes(ptr noundef) local_unnamed_addr #0

declare i64 @dictMemUsage(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hashTypeInitIterator(ptr noundef initializes((0, 12)) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !127
  %i.a = load i64, ptr %1, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8, !tbaa !130
  switch i32 %i.d, label %bb.d [
    i32 11, label %bb.b
    i32 12, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i64 281474976710656, ptr %i.g, align 8, !tbaa !131
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  tail call void @dictInitIterator(ptr noundef nonnull %i.h, ptr noundef %i.j) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1368, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hashTypeResetIterator(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !130
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @dictResetIterator(ptr noundef nonnull %i.d) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @hashTypeNext(ptr noundef initializes((40, 48)) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8, !tbaa !96
  %.fr = freeze i32 %i.b
  %.not = icmp eq i32 %.fr, 0
  %spec.store.select = select i1 %.not, i32 %1, i32 0 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 281474976710656, ptr %i.c, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !130
  switch i32 %i.e, label %bb.ai [
end_hunk_1
begin_hunk_2_@hrandfieldWithCountCommand:bb.a

bb.q:                                             ; preds = %bb.ak, %.preheader
  %.in = phi i64 [ %.0, %.preheader ], [ %i.ay, %bb.ak ]
  %i.ay = add i64 %.in, -1                        ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ba = tail call ptr @dictGetFairRandomKey(ptr noundef %i.az) #13
  %i.bb = tail call ptr @dictGetKey(ptr noundef %i.ba) #13 ; 13 uses
  br i1 %.not202, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !165
  %i.bd = icmp sgt i32 %i.bc, 2
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.be = getelementptr i8, ptr %i.bb, i64 -1
  %.val.i = load i8, ptr %i.be, align 1, !tbaa !73 ; 2 uses
  %i.bf = and i8 %.val.i, 7
  switch i8 %i.bf, label %bb.z [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.bg = lshr i8 %.val.i, 3
  %i.bh = zext nneg i8 %i.bg to i64
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds i8, ptr %i.bb, i64 -3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !73
  %i.bk = zext i8 %i.bj to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds i8, ptr %i.bb, i64 -5
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !74
  %i.bn = zext i16 %i.bm to i64
  br label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds i8, ptr %i.bb, i64 -9
  %i.bp = load i32, ptr %i.bo, align 1, !tbaa !9
  %i.bq = zext i32 %i.bp to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds i8, ptr %i.bb, i64 -17
  %i.bs = load i64, ptr %i.br, align 1, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.0.i = phi i64 [ %i.bs, %bb.y ], [ %i.bh, %bb.u ], [ %i.bk, %bb.v ], [ %i.bn, %bb.w ], [ %i.bq, %bb.x ], [ 0, %bb.t ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bb, i64 noundef %.0.i) #13
  %i.bt = tail call ptr @entryGetValue(ptr noundef nonnull %i.bb) #13 ; 6 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  %.val.i210 = load i8, ptr %i.bu, align 1, !tbaa !73 ; 2 uses
  %i.bv = and i8 %.val.i210, 7
  switch i8 %i.bv, label %sdslen.exit212 [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
    i8 4, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bw = lshr i8 %.val.i210, 3
  %i.bx = zext nneg i8 %i.bw to i64
  br label %sdslen.exit212

bb.ab:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 -3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !73
  %i.ca = zext i8 %i.bz to i64
  br label %sdslen.exit212

bb.ac:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 -5
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !74
  %i.cd = zext i16 %i.cc to i64
  br label %sdslen.exit212

bb.ad:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds i8, ptr %i.bt, i64 -9
  %i.cf = load i32, ptr %i.ce, align 1, !tbaa !9
  %i.cg = zext i32 %i.cf to i64
  br label %sdslen.exit212

bb.ae:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds i8, ptr %i.bt, i64 -17
  %i.ci = load i64, ptr %i.ch, align 1, !tbaa !13
  br label %sdslen.exit212

sdslen.exit212:                                   ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0.i211 = phi i64 [ %i.ci, %bb.ae ], [ %i.bx, %bb.aa ], [ %i.ca, %bb.ab ], [ %i.cd, %bb.ac ], [ %i.cg, %bb.ad ], [ 0, %bb.z ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bt, i64 noundef %.0.i211) #13
  br label %bb.ak

.critedge:                                        ; preds = %bb.q
  %i.cj = getelementptr i8, ptr %i.bb, i64 -1
  %.val.i213 = load i8, ptr %i.cj, align 1, !tbaa !73 ; 2 uses
  %i.ck = and i8 %.val.i213, 7
  switch i8 %i.ck, label %sdslen.exit215 [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.af:                                            ; preds = %.critedge
  %i.cl = lshr i8 %.val.i213, 3
  %i.cm = zext nneg i8 %i.cl to i64
  br label %sdslen.exit215

bb.ag:                                            ; preds = %.critedge
  %i.cn = getelementptr inbounds i8, ptr %i.bb, i64 -3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !73
  %i.cp = zext i8 %i.co to i64
  br label %sdslen.exit215

bb.ah:                                            ; preds = %.critedge
  %i.cq = getelementptr inbounds i8, ptr %i.bb, i64 -5
  %i.cr = load i16, ptr %i.cq, align 1, !tbaa !74
  %i.cs = zext i16 %i.cr to i64
  br label %sdslen.exit215

bb.ai:                                            ; preds = %.critedge
  %i.ct = getelementptr inbounds i8, ptr %i.bb, i64 -9
  %i.cu = load i32, ptr %i.ct, align 1, !tbaa !9
  %i.cv = zext i32 %i.cu to i64
  br label %sdslen.exit215

bb.aj:                                            ; preds = %.critedge
  %i.cw = getelementptr inbounds i8, ptr %i.bb, i64 -17
  %i.cx = load i64, ptr %i.cw, align 1, !tbaa !13
  br label %sdslen.exit215

sdslen.exit215:                                   ; preds = %.critedge, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.0.i214 = phi i64 [ %i.cx, %bb.aj ], [ %i.cm, %bb.af ], [ %i.cp, %bb.ag ], [ %i.cs, %bb.ah ], [ %i.cv, %bb.ai ], [ 0, %.critedge ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bb, i64 noundef %.0.i214) #13
  br label %bb.ak

bb.ak:                                            ; preds = %sdslen.exit215, %sdslen.exit212
  %i.cy = load i64, ptr %i.ax, align 8, !tbaa !103
  %i.cz = and i64 %i.cy, 1024
  %.not204 = icmp ne i64 %i.cz, 0
  %.not203 = icmp eq i64 %i.ay, 0
  %or.cond256 = select i1 %.not204, i1 true, i1 %.not203
  br i1 %or.cond256, label %.loopexit, label %bb.q

bb.al:                                            ; preds = %bb.p, %bb.p
  %i.da = tail call ptr @hashTypeListpackGetLp(ptr noundef nonnull %i.f)
  %i.db = load i64, ptr %i.f, align 8
  %i.dc = and i64 %i.db, 240
  %i.dd = icmp eq i64 %i.dc, 176
  %i.de = select i1 %i.dd, i32 2, i32 3
  %i.df = tail call i64 @llvm.umin.i64(i64 %.0, i64 1000) ; 2 uses
  %i.dg = mul nuw nsw i64 %i.df, 24               ; 2 uses
  %i.dh = tail call noalias ptr @zmalloc(i64 noundef %i.dg) #15 ; 3 uses
  br i1 %.not202, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = tail call noalias ptr @zmalloc(i64 noundef %i.dg) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0182 = phi ptr [ %i.di, %bb.am ], [ null, %bb.al ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ao
  %.2 = phi i64 [ %.0, %bb.an ], [ %i.dl, %bb.ao ] ; 2 uses
  %i.dk = tail call i64 @llvm.umin.i64(i64 %.2, i64 %i.df) ; 2 uses
  %i.dl = sub i64 %.2, %i.dk                      ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dk to i32          ; 2 uses
  tail call void @lpRandomPairs(ptr noundef %i.da, i32 noundef %i.dm, ptr noundef %i.dh, ptr noundef %.0182, i32 noundef %i.de) #13
  tail call fastcc void @hrandfieldReplyWithListpack(ptr noundef nonnull %0, i32 noundef %i.dm, ptr noundef %i.dh, ptr noundef %.0182)
  %i.dn = load i64, ptr %i.dj, align 8, !tbaa !103
  %i.do = and i64 %i.dn, 1024
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = icmp ne i64 %i.dl, 0
  %or.cond4 = and i1 %i.dq, %i.dp
  br i1 %or.cond4, label %bb.ao, label %bb.ap, !llvm.loop !177

bb.ap:                                            ; preds = %bb.ao
  tail call void @zfree(ptr noundef %i.dh) #13
  tail call void @zfree(ptr noundef %.0182) #13
  br label %.loopexit

bb.aq:                                            ; preds = %bb.m
  %i.dr = tail call i64 @llvm.umin.i64(i64 %1, i64 %.1.i) ; 2 uses
  %.not196 = icmp eq i32 %2, 0                    ; 5 uses
  br i1 %.not196, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !165
  %i.du = icmp eq i32 %i.dt, 2
  %i.dv = zext i1 %i.du to i64
  %spec.select254 = shl nuw nsw i64 %i.dr, %i.dv
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink = phi i64 [ %i.dr, %bb.aq ], [ %spec.select254, %bb.ar ]
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.sink) #13
  %.not197 = icmp ult i64 %1, %.1.i
  br i1 %.not197, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @hashTypeInitIterator(ptr noundef nonnull %3, ptr noundef nonnull %i.f)
  %i.dw = call i32 @hashTypeNext(ptr noundef nonnull %3, i32 noundef 0)
  %.not201226 = icmp eq i32 %i.dw, -1
  br i1 %.not201226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.at
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 28
  br i1 %.not196, label %.critedge207.us, label %.lr.ph.split

.critedge207.us:                                  ; preds = %.lr.ph, %.critedge207.us
  call fastcc void @addHashIteratorCursorToReply(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 1)
  %i.dy = call i32 @hashTypeNext(ptr noundef nonnull %3, i32 noundef 0)
  %.not201.us = icmp eq i32 %i.dy, -1
  br i1 %.not201.us, label %._crit_edge, label %.critedge207.us, !llvm.loop !178

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.av
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !165
  %i.ea = icmp sgt i32 %i.dz, 2
  br i1 %i.ea, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.split
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #13
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph.split, %bb.au
  call fastcc void @addHashIteratorCursorToReply(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 1)
  call fastcc void @addHashIteratorCursorToReply(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 2)
  %i.eb = call i32 @hashTypeNext(ptr noundef nonnull %3, i32 noundef 0)
  %.not201 = icmp eq i32 %i.eb, -1
  br i1 %.not201, label %._crit_edge, label %.lr.ph.split, !llvm.loop !178

._crit_edge:                                      ; preds = %bb.av, %.critedge207.us, %bb.at
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !130
  %i.ee = icmp eq i32 %i.ed, 2
  br i1 %i.ee, label %bb.aw, label %hashTypeResetIterator.exit

bb.aw:                                            ; preds = %._crit_edge
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @dictResetIterator(ptr noundef nonnull %i.ef) #13
  br label %hashTypeResetIterator.exit

hashTypeResetIterator.exit:                       ; preds = %._crit_edge, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.loopexit

bb.ax:                                            ; preds = %bb.as
  %i.eg = load i64, ptr %i.f, align 8
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = lshr i32 %i.eh, 4
  %i.ej = and i32 %i.ei, 15
  %.off = add nsw i32 %i.ej, -11
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.ek = tail call ptr @hashTypeListpackGetLp(ptr noundef nonnull %i.f)
  %i.el = load i64, ptr %i.f, align 8
  %i.em = and i64 %i.el, 240
  %i.en = icmp eq i64 %i.em, 176
  %i.eo = select i1 %i.en, i32 2, i32 3
  %i.ep = mul i64 %1, 24                          ; 2 uses
  %i.eq = tail call noalias ptr @zmalloc(i64 noundef %i.ep) #15 ; 3 uses
  br i1 %.not196, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.er = tail call noalias ptr @zmalloc(i64 noundef %i.ep) #15
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0183 = phi ptr [ %i.er, %bb.az ], [ null, %bb.ay ] ; 3 uses
  %i.es = trunc i64 %1 to i32                     ; 2 uses
  %i.et = tail call i32 @lpRandomPairsUnique(ptr noundef %i.ek, i32 noundef %i.es, ptr noundef %i.eq, ptr noundef %.0183, i32 noundef %i.eo) #13
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp eq i64 %1, %i.eu
  br i1 %i.ev, label %bb.bc, label %bb.bb, !prof !22

bb.bb:                                            ; preds = %bb.ba
  tail call void @_serverAssert(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 3252) #13
  tail call void @abort() #14
  unreachable

bb.bc:                                            ; preds = %bb.ba
  tail call fastcc void @hrandfieldReplyWithListpack(ptr noundef nonnull %0, i32 noundef %i.es, ptr noundef %i.eq, ptr noundef %.0183)
  tail call void @zfree(ptr noundef %i.eq) #13
  tail call void @zfree(ptr noundef %.0183) #13
  br label %.loopexit

bb.bd:                                            ; preds = %bb.ax
  %i.ew = mul i64 %1, 3
  %i.ex = icmp ugt i64 %i.ew, %.1.i
  br i1 %i.ex, label %bb.be, label %bb.bu

bb.be:                                            ; preds = %bb.bd
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.fa = shl i64 %.1.i, 4
  %i.fb = tail call noalias ptr @zmalloc(i64 noundef %i.fa) #15 ; 6 uses
  call void @dictInitIterator(ptr noundef nonnull %4, ptr noundef %i.ez) #13
  %i.fc = call ptr @dictNext(ptr noundef nonnull %4) #13 ; 2 uses
  %.not200228 = icmp eq ptr %i.fc, null
  br i1 %.not200228, label %._crit_edge232, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.be, %.lr.ph231
  %i.fd = phi ptr [ %i.fi, %.lr.ph231 ], [ %i.fc, %bb.be ]
  %.0184229 = phi i64 [ %i.ff, %.lr.ph231 ], [ 0, %bb.be ] ; 2 uses
  %i.fe = call ptr @dictGetKey(ptr noundef nonnull %i.fd) #13 ; 2 uses
  %i.ff = add i64 %.0184229, 1
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.0184229 ; 2 uses
  %i.fh = call ptr @entryGetValue(ptr noundef %i.fe) #13
  store ptr %i.fe, ptr %i.fg, align 8, !tbaa !95
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fh, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !95
  %i.fi = call ptr @dictNext(ptr noundef nonnull %4) #13 ; 2 uses
  %.not200 = icmp eq ptr %i.fi, null
  br i1 %.not200, label %._crit_edge232, label %.lr.ph231, !llvm.loop !179

._crit_edge232:                                   ; preds = %.lr.ph231, %bb.be
  call void @dictResetIterator(ptr noundef nonnull %4) #13
  %i.fj = icmp ugt i64 %.1.i, %.0
  br i1 %i.fj, label %.lr.ph235, label %.lr.ph237

.preheader225:                                    ; preds = %.lr.ph235
  %.not239 = icmp eq i64 %i.fp, 0
  br i1 %.not239, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %._crit_edge232, %.preheader225
  %.0176.lcssa249 = phi i64 [ %i.fp, %.preheader225 ], [ %.1.i, %._crit_edge232 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 28
  br i1 %.not196, label %.critedge209.us, label %bb.bf

.critedge209.us:                                  ; preds = %.lr.ph237, %sdslen.exit226.us
  %.1185241.us = phi i64 [ %28, %sdslen.exit226.us ], [ 0, %.lr.ph237 ] ; 2 uses
  %6 = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.1185241.us
  %7 = load ptr, ptr %6, align 8, !tbaa !180      ; 6 uses
  %8 = getelementptr i8, ptr %7, i64 -1
  %.val.i224.us = load i8, ptr %8, align 1, !tbaa !73 ; 2 uses
  %9 = and i8 %.val.i224.us, 7
  switch i8 %9, label %sdslen.exit226.us [
    i8 0, label %25
    i8 1, label %21
    i8 2, label %17
    i8 3, label %13
    i8 4, label %10
  ]

10:                                               ; preds = %.critedge209.us
  %11 = getelementptr inbounds i8, ptr %7, i64 -17
  %12 = load i64, ptr %11, align 1, !tbaa !13
  br label %sdslen.exit226.us

13:                                               ; preds = %.critedge209.us
  %14 = getelementptr inbounds i8, ptr %7, i64 -9
  %15 = load i32, ptr %14, align 1, !tbaa !9
  %16 = zext i32 %15 to i64
  br label %sdslen.exit226.us

17:                                               ; preds = %.critedge209.us
  %18 = getelementptr inbounds i8, ptr %7, i64 -5
  %19 = load i16, ptr %18, align 1, !tbaa !74
  %20 = zext i16 %19 to i64
  br label %sdslen.exit226.us

21:                                               ; preds = %.critedge209.us
  %22 = getelementptr inbounds i8, ptr %7, i64 -3
  %23 = load i8, ptr %22, align 1, !tbaa !73
  %24 = zext i8 %23 to i64
  br label %sdslen.exit226.us

25:                                               ; preds = %.critedge209.us
  %26 = lshr i8 %.val.i224.us, 3
  %27 = zext nneg i8 %26 to i64
  br label %sdslen.exit226.us

sdslen.exit226.us:                                ; preds = %25, %21, %17, %13, %10, %.critedge209.us
  %.0.i225.us = phi i64 [ %12, %10 ], [ %27, %25 ], [ %24, %21 ], [ %20, %17 ], [ %16, %13 ], [ 0, %.critedge209.us ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef %.0.i225.us) #13
  %28 = add nuw i64 %.1185241.us, 1               ; 2 uses
  %exitcond247.not = icmp eq i64 %28, %.0176.lcssa249
  br i1 %exitcond247.not, label %._crit_edge238, label %.critedge209.us, !llvm.loop !182

.lr.ph235:                                        ; preds = %._crit_edge232, %.lr.ph235
  %.0176233 = phi i64 [ %i.fp, %.lr.ph235 ], [ %.1.i, %._crit_edge232 ] ; 2 uses
  %i.fl = call i32 @rand() #13
  %i.fm = sext i32 %i.fl to i64
  %i.fn = urem i64 %i.fm, %.0176233
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fn
  %i.fp = add i64 %.0176233, -1                   ; 5 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false), !tbaa.struct !183
  %i.fr = icmp ugt i64 %i.fp, %.0
  br i1 %i.fr, label %.lr.ph235, label %.preheader225, !llvm.loop !184

bb.bf:                                            ; preds = %.lr.ph237, %bb.bt
  %.1185241 = phi i64 [ %i.hc, %bb.bt ], [ 0, %.lr.ph237 ] ; 2 uses
  %i.fs = load i32, ptr %i.fk, align 4, !tbaa !165
  %i.ft = icmp sgt i32 %i.fs, 2
  br i1 %i.ft, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #13
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.1185241 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !180 ; 6 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -1
  %.val.i216 = load i8, ptr %i.fw, align 1, !tbaa !73 ; 2 uses
  %i.fx = and i8 %.val.i216, 7
  switch i8 %i.fx, label %bb.bn [
    i8 0, label %bb.bi
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bl
    i8 4, label %bb.bm
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fy = lshr i8 %.val.i216, 3
  %i.fz = zext nneg i8 %i.fy to i64
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bh
  %i.ga = getelementptr inbounds i8, ptr %i.fv, i64 -3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !73
  %i.gc = zext i8 %i.gb to i64
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bh
  %i.gd = getelementptr inbounds i8, ptr %i.fv, i64 -5
  %i.ge = load i16, ptr %i.gd, align 1, !tbaa !74
  %i.gf = zext i16 %i.ge to i64
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bh
  %i.gg = getelementptr inbounds i8, ptr %i.fv, i64 -9
  %i.gh = load i32, ptr %i.gg, align 1, !tbaa !9
  %i.gi = zext i32 %i.gh to i64
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bh
  %i.gj = getelementptr inbounds i8, ptr %i.fv, i64 -17
  %i.gk = load i64, ptr %i.gj, align 1, !tbaa !13
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %.0.i219 = phi i64 [ %i.gk, %bb.bm ], [ %i.fz, %bb.bi ], [ %i.gc, %bb.bj ], [ %i.gf, %bb.bk ], [ %i.gi, %bb.bl ], [ 0, %bb.bh ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.fv, i64 noundef %.0.i219) #13
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !185 ; 6 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 -1
  %.val.i219 = load i8, ptr %i.gn, align 1, !tbaa !73 ; 2 uses
  %i.go = and i8 %.val.i219, 7
  switch i8 %i.go, label %bb.bt [
    i8 0, label %bb.bo
    i8 1, label %bb.bp
    i8 2, label %bb.bq
    i8 3, label %bb.br
    i8 4, label %bb.bs
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.gp = lshr i8 %.val.i219, 3
  %i.gq = zext nneg i8 %i.gp to i64
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  %i.gr = getelementptr inbounds i8, ptr %i.gm, i64 -3
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !73
  %i.gt = zext i8 %i.gs to i64
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bn
  %i.gu = getelementptr inbounds i8, ptr %i.gm, i64 -5
  %i.gv = load i16, ptr %i.gu, align 1, !tbaa !74
  %i.gw = zext i16 %i.gv to i64
  br label %bb.bt

bb.br:                                            ; preds = %bb.bn
  %i.gx = getelementptr inbounds i8, ptr %i.gm, i64 -9
  %i.gy = load i32, ptr %i.gx, align 1, !tbaa !9
  %i.gz = zext i32 %i.gy to i64
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bn
  %i.ha = getelementptr inbounds i8, ptr %i.gm, i64 -17
  %i.hb = load i64, ptr %i.ha, align 1, !tbaa !13
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.i222 = phi i64 [ %i.hb, %bb.bs ], [ %i.gq, %bb.bo ], [ %i.gt, %bb.bp ], [ %i.gw, %bb.bq ], [ %i.gz, %bb.br ], [ 0, %bb.bn ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.gm, i64 noundef %.0.i222) #13
  %i.hc = add nuw i64 %.1185241, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.hc, %.0176.lcssa249
  br i1 %exitcond.not, label %._crit_edge238, label %bb.bf, !llvm.loop !182

._crit_edge238:                                   ; preds = %bb.bt, %sdslen.exit226.us, %.preheader225
  call void @zfree(ptr noundef nonnull %i.fb) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.loopexit

bb.bu:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(120) @__const.hrandfieldWithCountCommand.uniqueDictType, i64 120, i1 false)
  %i.hd = call ptr @dictCreate(ptr noundef nonnull %5) #13 ; 3 uses
  %i.he = call i32 @dictExpand(ptr noundef %i.hd, i64 noundef %1) #13 ; 0 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.ci
  %.0179227 = phi i64 [ 0, %bb.bu ], [ %.1180, %bb.ci ] ; 2 uses
  %i.hh = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.hi = call ptr @dictGetFairRandomKey(ptr noundef %i.hh) #13 ; 2 uses
  %.not198 = icmp eq ptr %i.hi, null
  br i1 %.not198, label %bb.bw, label %bb.bx, !prof !26

bb.bw:                                            ; preds = %bb.bv
  call void @_serverAssert(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 3325) #13
  call void @abort() #14
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.hj = call ptr @dictGetKey(ptr noundef nonnull %i.hi) #13 ; 9 uses
  %i.hk = call ptr @entryGetValue(ptr noundef %i.hj) #13 ; 2 uses
  %i.hl = call i32 @dictAdd(ptr noundef %i.hd, ptr noundef %i.hj, ptr noundef %i.hk) #13
  %.not199 = icmp eq i32 %i.hl, 0
  br i1 %.not199, label %bb.by, label %bb.ci, !llvm.loop !186

bb.by:                                            ; preds = %bb.bx
  %i.hm = add nuw nsw i64 %.0179227, 1
  br i1 %.not196, label %.sink.split, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hn = load i32, ptr %i.hg, align 4, !tbaa !165
  %i.ho = icmp sgt i32 %i.hn, 2
  br i1 %i.ho, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #13
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.hp = getelementptr i8, ptr %i.hj, i64 -1
  %.val.i222 = load i8, ptr %i.hp, align 1, !tbaa !73 ; 2 uses
  %i.hq = and i8 %.val.i222, 7
  switch i8 %i.hq, label %bb.ch [
    i8 0, label %bb.cc
    i8 1, label %bb.cd
    i8 2, label %bb.ce
    i8 3, label %bb.cf
    i8 4, label %bb.cg
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.hr = lshr i8 %.val.i222, 3
  %i.hs = zext nneg i8 %i.hr to i64
  br label %bb.ch

bb.cd:                                            ; preds = %bb.cb
  %i.ht = getelementptr inbounds i8, ptr %i.hj, i64 -3
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !73
  %i.hv = zext i8 %i.hu to i64
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cb
  %i.hw = getelementptr inbounds i8, ptr %i.hj, i64 -5
  %i.hx = load i16, ptr %i.hw, align 1, !tbaa !74
  %i.hy = zext i16 %i.hx to i64
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cb
  %i.hz = getelementptr inbounds i8, ptr %i.hj, i64 -9
  %i.ia = load i32, ptr %i.hz, align 1, !tbaa !9
  %i.ib = zext i32 %i.ia to i64
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cb
  %i.ic = getelementptr inbounds i8, ptr %i.hj, i64 -17
  %i.id = load i64, ptr %i.ic, align 1, !tbaa !13
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %.0.i223 = phi i64 [ %i.id, %bb.cg ], [ %i.hs, %bb.cc ], [ %i.hv, %bb.cd ], [ %i.hy, %bb.ce ], [ %i.ib, %bb.cf ], [ 0, %bb.cb ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.hj, i64 noundef %.0.i223) #13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.by, %bb.ch
  %.sink253 = phi ptr [ %i.hk, %bb.ch ], [ %i.hj, %bb.by ] ; 2 uses
  %i.ie = call fastcc i64 @sdslen(ptr noundef %.sink253)
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef %.sink253, i64 noundef %i.ie) #13
  br label %bb.ci

bb.ci:                                            ; preds = %.sink.split, %bb.bx
  %.1180 = phi i64 [ %.0179227, %bb.bx ], [ %i.hm, %.sink.split ] ; 2 uses
  %i.if = icmp ult i64 %.1180, %.0
  br i1 %i.if, label %bb.bv, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @dictRelease(ptr noundef %i.hd) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ak, %bb.p, %bb.bc, %hashTypeResetIterator.exit, %._crit_edge238, %bb.cj, %bb.ap
  %i.ig = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not205 = icmp eq i32 %i.ig, 0
  br i1 %.not205, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.loopexit
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.ii = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !72
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !15
  %i.in = call i32 @getKeySlot(ptr noundef %i.im) #13
  %i.io = call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #13
  call void @updateSlotAllocSize(ptr noundef %i.ih, i32 noundef %i.in, ptr noundef nonnull %i.f, i64 noundef %.0178, i64 noundef %i.io) #13
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit, %bb.ck, %bb.a, %bb.b, %bb.j, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hashTypeExpireIfNeeded(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 4
  %i.e = and i32 %i.d, 15
  switch i32 %i.e, label %bb.c [
    i32 11, label %hashTypeGetMinExpire.exit
    i32 12, label %bb.b
    i32 2, label %bb.d
  ], !prof !63

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i64 @listpackExGetMinExpire(ptr noundef nonnull readonly %1)
  br label %hashTypeGetMinExpire.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 2013) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %.not30.i = icmp eq ptr %.val.i, @entryHashDictTypeWithHFE
  br i1 %.not30.i, label %bb.e, label %hashTypeGetMinExpire.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = tail call i64 @ebGetNextTimeToExpire(ptr noundef %i.j, ptr noundef nonnull @hashFieldExpireBucketsType) #13
  br label %hashTypeGetMinExpire.exit

hashTypeGetMinExpire.exit:                        ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.2.i = phi i64 [ 281474976710656, %bb.d ], [ %i.f, %bb.b ], [ 281474976710656, %bb.a ], [ %i.k, %bb.e ]
  %i.l = tail call i64 @commandTimeSnapshot() #13
  %.not = icmp slt i64 %.2.i, %i.l
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %hashTypeGetMinExpire.exit
  %i.m = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !117
  %i.n = icmp ne i32 %i.m, 0
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8
  %i.p = icmp ne i32 %i.o, 0
  %or.cond = select i1 %i.n, i1 true, i1 %i.p
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8
  %i.r = icmp ne ptr %i.q, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.r
  br i1 %or.cond3, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @isPausedActionsWithUpdate(i32 noundef 4) #13
  %.not8 = icmp eq i32 %i.s, 0
  br i1 %.not8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 -1, ptr %i.a, align 4, !tbaa !9
  %i.t = call i64 @hashTypeExpire(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 0)
  %i.u = icmp eq i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %hashTypeGetMinExpire.exit, %bb.h
  %.0 = phi i32 [ %i.v, %bb.h ], [ 0, %hashTypeGetMinExpire.exit ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

declare void @lpRandomPairs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @hrandfieldReplyWithListpack(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(address_is_null) %3) unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %.not32 = icmp eq i32 %1, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.031.us = phi i64 [ %i.j, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.031.us ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not29.us = icmp eq ptr %i.d, null
  br i1 %.not29.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !83
  %i.g = zext i32 %i.f to i64
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %i.g) #13
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !84
  tail call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.i) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = add nuw nsw i64 %.031.us, 1              ; 2 uses
  %exitcond34.not = icmp eq i64 %i.j, %i.a
  br i1 %exitcond34.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.l, %bb.d, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.031 = phi i64 [ %i.aa, %bb.l ], [ 0, %.lr.ph ] ; 3 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !165
  %i.l = icmp sgt i32 %i.k, 2
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.031 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %.not29 = icmp eq ptr %i.n, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !83
  %i.q = zext i32 %i.p to i64
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i64 noundef %i.q) #13
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !84
  tail call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.s) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.031 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81   ; 2 uses
  %.not30 = icmp eq ptr %i.u, null
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !83
  %i.x = zext i32 %i.w to i64
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i64 noundef %i.x) #13
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !84
  tail call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.z) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = add nuw nsw i64 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !187
}

declare i32 @lpRandomPairsUnique(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #11

declare i64 @dictPtrHash(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @hrandfieldCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.listpackEntry, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !153
  %i.d = icmp sgt i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.h, i64 noundef -9223372036854775807, i64 noundef 9223372036854775807, ptr noundef nonnull %i.a, ptr noundef null) #13
  %.not38 = icmp eq i32 %i.i, 0
  br i1 %.not38, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 4
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %i.j, 4
  br i1 %i.l, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !148
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.r = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.52) #16
  %.not39 = icmp eq i32 %i.r, 0
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !188
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.s) #13
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.u = add i64 %i.t, -4611686018427387904
  %or.cond = icmp ult i64 %i.u, -9223372036854775807
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #13
  br label %bb.y

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.v = phi i64 [ %i.t, %bb.g ], [ %.pre, %._crit_edge ]
  %.030 = phi i32 [ 1, %bb.g ], [ 0, %._crit_edge ]
  call void @hrandfieldWithCountCommand(ptr noundef nonnull %0, i64 noundef %i.v, i32 noundef %.030)
end_hunk_2
begin_hunk_3_@llvm.abs.i64
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !11, i64 0}
!15 = !{!16, !17, i64 8}
!16 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !17, i64 8}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!19, !17, i64 16}
!19 = !{!"listpackEx", !20, i64 0, !17, i64 16}
!20 = !{!"ExpireMeta", !10, i64 0, !21, i64 4, !10, i64 6, !10, i64 6, !10, i64 6, !10, i64 6, !10, i64 7, !10, i64 7, !10, i64 7, !17, i64 8}
!21 = !{!"short", !11, i64 0}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!24, !14, i64 32}
!24 = !{!"ExpireInfo", !17, i64 0, !14, i64 8, !17, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!25 = !{!24, !14, i64 8}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!28, !28, i64 0}
!28 = !{!"long long", !11, i64 0}
!29 = !{!24, !14, i64 24}
!30 = !{!31, !28, i64 2568}
!31 = !{!"redisServer", !10, i64 0, !14, i64 8, !32, i64 16, !32, i64 24, !33, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !35, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !38, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !28, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !32, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !14, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !32, i64 232, !32, i64 240, !10, i64 248, !10, i64 252, !14, i64 256, !11, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !39, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !32, i64 472, !32, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !40, i64 1336, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !42, i64 1496, !42, i64 1504, !17, i64 1512, !38, i64 1520, !10, i64 1528, !38, i64 1536, !10, i64 1544, !39, i64 1552, !11, i64 1560, !11, i64 1624, !36, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !43, i64 2424, !10, i64 2448, !28, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !14, i64 2488, !14, i64 2496, !14, i64 2504, !14, i64 2512, !14, i64 2520, !14, i64 2528, !28, i64 2536, !28, i64 2544, !28, i64 2552, !28, i64 2560, !28, i64 2568, !28, i64 2576, !45, i64 2584, !28, i64 2592, !28, i64 2600, !28, i64 2608, !28, i64 2616, !28, i64 2624, !28, i64 2632, !14, i64 2640, !28, i64 2648, !28, i64 2656, !28, i64 2664, !28, i64 2672, !28, i64 2680, !28, i64 2688, !28, i64 2696, !28, i64 2704, !14, i64 2712, !14, i64 2720, !14, i64 2728, !28, i64 2736, !28, i64 2744, !28, i64 2752, !28, i64 2760, !28, i64 2768, !45, i64 2776, !28, i64 2784, !28, i64 2792, !28, i64 2800, !28, i64 2808, !28, i64 2816, !39, i64 2824, !28, i64 2832, !28, i64 2840, !14, i64 2848, !46, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !14, i64 2976, !14, i64 2984, !14, i64 2992, !14, i64 3000, !14, i64 3008, !14, i64 3016, !14, i64 3024, !14, i64 3032, !45, i64 3040, !11, i64 3048, !14, i64 3080, !28, i64 3088, !28, i64 3096, !28, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !28, i64 5168, !28, i64 5176, !28, i64 5184, !28, i64 5192, !11, i64 5200, !28, i64 6264, !28, i64 6272, !14, i64 6280, !28, i64 6288, !28, i64 6296, !14, i64 6304, !11, i64 6312, !47, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !14, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !14, i64 6496, !14, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !32, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !48, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !32, i64 6680, !32, i64 6688, !10, i64 6696, !10, i64 6700, !14, i64 6704, !14, i64 6712, !14, i64 6720, !14, i64 6728, !14, i64 6736, !10, i64 6744, !10, i64 6748, !32, i64 6752, !10, i64 6760, !10, i64 6764, !28, i64 6768, !28, i64 6776, !14, i64 6784, !14, i64 6792, !14, i64 6800, !10, i64 6808, !10, i64 6812, !14, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !14, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !17, i64 6872, !10, i64 6880, !28, i64 6888, !28, i64 6896, !28, i64 6904, !28, i64 6912, !10, i64 6920, !49, i64 6928, !10, i64 6936, !32, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !14, i64 6968, !14, i64 6976, !14, i64 6984, !14, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !50, i64 7024, !10, i64 7032, !10, i64 7036, !32, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !51, i64 7072, !10, i64 7088, !32, i64 7096, !10, i64 7104, !32, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !28, i64 7232, !28, i64 7240, !11, i64 7248, !28, i64 7256, !10, i64 7264, !10, i64 7268, !53, i64 7272, !28, i64 7280, !28, i64 7288, !54, i64 7296, !14, i64 7344, !14, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !14, i64 7400, !39, i64 7408, !14, i64 7416, !32, i64 7424, !32, i64 7432, !32, i64 7440, !10, i64 7448, !10, i64 7452, !42, i64 7456, !42, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !14, i64 7488, !14, i64 7496, !14, i64 7504, !14, i64 7512, !14, i64 7520, !55, i64 7528, !55, i64 7536, !10, i64 7544, !32, i64 7552, !14, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !14, i64 7584, !14, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !32, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !28, i64 7680, !10, i64 7688, !39, i64 7696, !10, i64 7704, !28, i64 7712, !28, i64 7720, !14, i64 7728, !14, i64 7736, !10, i64 7744, !28, i64 7752, !14, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !28, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !39, i64 7872, !39, i64 7880, !10, i64 7888, !14, i64 7896, !39, i64 7904, !39, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !14, i64 7936, !14, i64 7944, !14, i64 7952, !14, i64 7960, !14, i64 7968, !14, i64 7976, !14, i64 7984, !14, i64 7992, !14, i64 8000, !28, i64 8008, !28, i64 8016, !28, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !14, i64 8048, !11, i64 8056, !28, i64 8064, !28, i64 8072, !10, i64 8080, !14, i64 8088, !28, i64 8096, !14, i64 8104, !28, i64 8112, !56, i64 8120, !36, i64 8128, !10, i64 8136, !56, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !28, i64 8168, !28, i64 8176, !32, i64 8184, !28, i64 8192, !28, i64 8200, !28, i64 8208, !10, i64 8216, !57, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !32, i64 8256, !32, i64 8264, !32, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !28, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !28, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !28, i64 8384, !36, i64 8392, !32, i64 8400, !14, i64 8408, !32, i64 8416, !10, i64 8424, !58, i64 8432, !10, i64 8472, !14, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !59, i64 8504, !32, i64 8624, !32, i64 8632, !32, i64 8640, !32, i64 8648, !60, i64 8656, !28, i64 8664, !10, i64 8672, !32, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !14, i64 8704, !10, i64 8712, !10, i64 8716, !32, i64 8720, !10, i64 8728, !10, i64 8732}
!32 = !{!"p1 omnipotent char", !17, i64 0}
!33 = !{!"p2 omnipotent char", !34, i64 0}
!34 = !{!"any p2 pointer", !17, i64 0}
!35 = !{!"p1 _ZTS7redisDb", !17, i64 0}
!36 = !{!"p1 _ZTS4dict", !17, i64 0}
!37 = !{!"p1 _ZTS11aeEventLoop", !17, i64 0}
!38 = !{!"p1 _ZTS3rax", !17, i64 0}
!39 = !{!"p1 _ZTS4list", !17, i64 0}
!40 = !{!"connListener", !11, i64 0, !10, i64 64, !33, i64 72, !10, i64 80, !10, i64 84, !41, i64 88, !17, i64 96}
!41 = !{!"p1 _ZTS14ConnectionType", !17, i64 0}
!42 = !{!"p1 _ZTS6client", !17, i64 0}
!43 = !{!"pendingCommandPool", !44, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!44 = !{!"p2 _ZTS14pendingCommand", !34, i64 0}
!45 = !{!"double", !11, i64 0}
!46 = !{!"malloc_stats", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!47 = !{!"p1 _ZTS11hotkeyStats", !17, i64 0}
!48 = !{!"p1 double", !17, i64 0}
!49 = !{!"p1 _ZTS9saveparam", !17, i64 0}
!50 = !{!"p2 _ZTS10connection", !34, i64 0}
!51 = !{!"redisOpArray", !52, i64 0, !10, i64 8, !10, i64 12}
!52 = !{!"p1 _ZTS7redisOp", !17, i64 0}
!53 = !{!"p1 _ZTS11replBacklog", !17, i64 0}
!54 = !{!"replDataBuf", !39, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!55 = !{!"p1 _ZTS10connection", !17, i64 0}
!56 = !{!"p1 _ZTS8_kvstore", !17, i64 0}
!57 = !{!"p1 _ZTS12clusterState", !17, i64 0}
!58 = !{!"aclInfo", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32}
!59 = !{!"redisTLSContextConfig", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !10, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !32, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!60 = !{!"p1 _ZTS14sentinelConfig", !17, i64 0}
!61 = !{!31, !28, i64 2576}
!62 = !{!31, !10, i64 6644}
!63 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 _ZTS8dictType", !17, i64 0}
!66 = !{!67, !17, i64 24}
!67 = !{!"htMetadataEx", !14, i64 0, !20, i64 8, !17, i64 24}
!68 = !{!24, !14, i64 40}
!69 = !{!70, !71, i64 608}
!70 = !{!"sharedObjectsStruct", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !11, i64 64, !11, i64 96, !11, i64 128, !11, i64 160, !71, i64 192, !71, i64 200, !71, i64 208, !71, i64 216, !71, i64 224, !71, i64 232, !71, i64 240, !71, i64 248, !71, i64 256, !71, i64 264, !71, i64 272, !71, i64 280, !71, i64 288, !71, i64 296, !71, i64 304, !71, i64 312, !71, i64 320, !71, i64 328, !71, i64 336, !71, i64 344, !71, i64 352, !71, i64 360, !71, i64 368, !71, i64 376, !71, i64 384, !71, i64 392, !71, i64 400, !71, i64 408, !71, i64 416, !71, i64 424, !71, i64 432, !71, i64 440, !71, i64 448, !71, i64 456, !71, i64 464, !71, i64 472, !71, i64 480, !71, i64 488, !71, i64 496, !71, i64 504, !71, i64 512, !71, i64 520, !71, i64 528, !71, i64 536, !71, i64 544, !71, i64 552, !71, i64 560, !71, i64 568, !71, i64 576, !71, i64 584, !71, i64 592, !71, i64 600, !71, i64 608, !71, i64 616, !71, i64 624, !71, i64 632, !71, i64 640, !71, i64 648, !71, i64 656, !71, i64 664, !71, i64 672, !71, i64 680, !71, i64 688, !71, i64 696, !71, i64 704, !71, i64 712, !71, i64 720, !71, i64 728, !71, i64 736, !71, i64 744, !71, i64 752, !71, i64 760, !71, i64 768, !71, i64 776, !71, i64 784, !71, i64 792, !71, i64 800, !71, i64 808, !11, i64 816, !11, i64 896, !11, i64 80896, !11, i64 81152, !11, i64 81408, !11, i64 81664, !32, i64 81920, !32, i64 81928}
!71 = !{!"p1 _ZTS11redisObject", !17, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!11, !11, i64 0}
!74 = !{!21, !21, i64 0}
!75 = !{!31, !10, i64 7088}
!76 = !{!77, !10, i64 72}
!77 = !{!"redisDb", !56, i64 0, !56, i64 8, !78, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !10, i64 72, !28, i64 80, !14, i64 88}
!78 = !{!"p1 _ZTS7_estore", !17, i64 0}
!79 = !{!20, !10, i64 0}
!80 = !{!20, !21, i64 4}
!81 = !{!82, !32, i64 0}
!82 = !{!"", !32, i64 0, !10, i64 8, !28, i64 16}
!83 = !{!82, !10, i64 8}
!84 = !{!82, !28, i64 16}
!85 = !{!86, !14, i64 0}
!86 = !{!"lpFingArgs", !14, i64 0, !14, i64 8, !32, i64 16, !10, i64 24, !10, i64 28, !32, i64 32}
!87 = !{!86, !14, i64 8}
!88 = !{!86, !32, i64 16}
!89 = !{!90, !71, i64 32}
!90 = !{!"HashTypeSetEx", !10, i64 0, !14, i64 8, !35, i64 16, !71, i64 24, !71, i64 32, !14, i64 40, !42, i64 48, !32, i64 56}
!91 = !{!90, !10, i64 0}
!92 = !{!90, !14, i64 40}
!93 = !{!90, !35, i64 16}
!94 = !{!90, !71, i64 24}
!95 = !{!32, !32, i64 0}
!96 = !{!31, !10, i64 6440}
!97 = !{!17, !17, i64 0}
!98 = !{!31, !14, i64 7936}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!31, !32, i64 7440}
!102 = !{!31, !42, i64 1496}
!103 = !{!104, !14, i64 8}
!104 = !{!"client", !14, i64 0, !14, i64 8, !55, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !35, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !32, i64 64, !14, i64 72, !14, i64 80, !10, i64 88, !105, i64 96, !10, i64 104, !10, i64 108, !105, i64 112, !14, i64 120, !106, i64 128, !107, i64 152, !108, i64 160, !10, i64 168, !105, i64 176, !10, i64 184, !10, i64 188, !109, i64 192, !109, i64 200, !109, i64 208, !109, i64 216, !17, i64 224, !10, i64 232, !10, i64 236, !14, i64 240, !39, i64 248, !28, i64 256, !39, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !10, i64 296, !10, i64 300, !110, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !28, i64 336, !28, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !14, i64 368, !14, i64 376, !32, i64 384, !28, i64 392, !28, i64 400, !28, i64 408, !28, i64 416, !28, i64 424, !28, i64 432, !28, i64 440, !28, i64 448, !28, i64 456, !28, i64 464, !28, i64 472, !11, i64 480, !10, i64 524, !32, i64 528, !10, i64 536, !10, i64 540, !14, i64 544, !111, i64 552, !112, i64 592, !28, i64 664, !39, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !32, i64 704, !32, i64 712, !113, i64 720, !113, i64 728, !113, i64 736, !17, i64 744, !17, i64 752, !17, i64 760, !17, i64 768, !17, i64 776, !14, i64 784, !38, i64 792, !14, i64 800, !10, i64 808, !113, i64 816, !17, i64 824, !113, i64 832, !14, i64 840, !113, i64 848, !14, i64 856, !113, i64 864, !14, i64 872, !114, i64 880, !114, i64 904, !14, i64 928, !14, i64 936, !14, i64 944, !28, i64 952, !14, i64 960, !14, i64 968, !32, i64 976, !11, i64 984, !115, i64 992, !28, i64 1000, !28, i64 1008, !28, i64 1016, !116, i64 1024, !32, i64 1032, !11, i64 1040}
!105 = !{!"p2 _ZTS11redisObject", !34, i64 0}
!106 = !{!"pendingCommandList", !107, i64 0, !107, i64 8, !10, i64 16, !10, i64 20}
!107 = !{!"p1 _ZTS14pendingCommand", !17, i64 0}
!108 = !{!"p1 _ZTS14deferredObject", !17, i64 0}
!109 = !{!"p1 _ZTS12redisCommand", !17, i64 0}
!110 = !{!"p1 _ZTS9dictEntry", !17, i64 0}
!111 = !{!"multiState", !44, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !14, i64 24, !10, i64 32}
!112 = !{!"blockingState", !10, i64 0, !28, i64 8, !10, i64 16, !36, i64 24, !10, i64 32, !10, i64 36, !28, i64 40, !17, i64 48, !17, i64 56, !14, i64 64}
!113 = !{!"p1 _ZTS8listNode", !17, i64 0}
!114 = !{!"listNode", !113, i64 0, !113, i64 8, !17, i64 16}
!115 = !{!"p1 _ZTS13payloadHeader", !17, i64 0}
!116 = !{!"p1 _ZTS7asmTask", !17, i64 0}
!117 = !{!31, !10, i64 2476}
!118 = !{!86, !10, i64 24}
!119 = !{!31, !14, i64 7944}
!120 = !{!121, !121, i64 0}
!121 = !{!"p2 _ZTS9dictEntry", !34, i64 0}
!122 = !{!110, !110, i64 0}
!123 = !{!36, !36, i64 0}
!124 = !{!90, !14, i64 8}
!125 = !{!90, !42, i64 48}
!126 = !{!77, !78, i64 16}
!127 = !{!128, !71, i64 0}
!128 = !{!"", !71, i64 0, !10, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !14, i64 40, !129, i64 48, !110, i64 96}
!129 = !{!"dictIterator", !36, i64 0, !14, i64 8, !10, i64 16, !10, i64 20, !110, i64 24, !110, i64 32, !28, i64 40}
!130 = !{!128, !10, i64 8}
!131 = !{!128, !14, i64 40}
!132 = !{!128, !110, i64 96}
!133 = !{!128, !32, i64 16}
!134 = !{!128, !32, i64 24}
!135 = !{!128, !32, i64 32}
!136 = distinct !{!136, !100}
!137 = distinct !{!137, !100}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = distinct !{!139, !100}
!140 = distinct !{!140, !100}
!141 = distinct !{!141, !100}
!142 = distinct !{!142, !100}
!143 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!144 = !{!145, !71, i64 0}
!145 = !{!"OnFieldExpireCtx", !71, i64 0, !35, i64 8, !10, i64 16}
!146 = !{!145, !35, i64 8}
!147 = !{!145, !10, i64 16}
!148 = !{!104, !105, i64 96}
!149 = !{!104, !35, i64 32}
!150 = !{!70, !71, i64 24}
!151 = !{!70, !71, i64 32}
!152 = !{!31, !28, i64 6888}
!153 = !{!104, !10, i64 88}
!154 = distinct !{!154, !100}
!155 = !{!70, !71, i64 0}
!156 = distinct !{!156, !100}
!157 = distinct !{!157, !100}
!158 = !{!70, !71, i64 648}
!159 = distinct !{!159, !100}
!160 = !{!161, !161, i64 0}
!161 = !{!"long double", !11, i64 0}
!162 = !{!70, !71, i64 632}
!163 = !{!70, !71, i64 720}
!164 = !{!70, !71, i64 744}
!165 = !{!104, !10, i64 28}
!166 = distinct !{!166, !100}
!167 = distinct !{!167, !100}
!168 = distinct !{!168, !100}
!169 = distinct !{!169, !100}
!170 = !{!70, !71, i64 624}
!171 = !{!70, !71, i64 616}
!172 = distinct !{!172, !100}
!173 = distinct !{!173, !100}
!174 = distinct !{!174, !100}
!175 = !{!70, !71, i64 480}
!176 = !{!70, !71, i64 192}
!177 = distinct !{!177, !100}
!178 = distinct !{!178, !100}
!179 = distinct !{!179, !100}
!180 = !{!181, !32, i64 0}
!181 = !{!"FieldValPair", !32, i64 0, !32, i64 8}
!182 = distinct !{!182, !100}
!183 = !{i64 0, i64 8, !95, i64 8, i64 8, !95}
!184 = distinct !{!184, !100}
!185 = !{!181, !32, i64 8}
!186 = distinct !{!186, !100}
!187 = distinct !{!187, !100}
!188 = !{!70, !71, i64 216}
!189 = distinct !{!189, !100}
!190 = distinct !{!190, !100}
!191 = distinct !{!191, !100}
!192 = !{!104, !109, i64 192}
!193 = !{!194, !17, i64 96}
!194 = !{!"redisCommand", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !10, i64 32, !32, i64 40, !32, i64 48, !10, i64 56, !17, i64 64, !10, i64 72, !33, i64 80, !10, i64 88, !17, i64 96, !10, i64 104, !14, i64 112, !14, i64 120, !17, i64 128, !10, i64 136, !17, i64 144, !10, i64 152, !109, i64 160, !195, i64 168, !28, i64 176, !28, i64 184, !28, i64 192, !28, i64 200, !10, i64 208, !32, i64 216, !196, i64 224, !197, i64 232, !36, i64 288, !109, i64 296, !198, i64 304}
!195 = !{!"p1 _ZTS15redisCommandArg", !17, i64 0}
!196 = !{!"p1 _ZTS13hdr_histogram", !17, i64 0}
!197 = !{!"", !32, i64 0, !14, i64 8, !10, i64 16, !11, i64 24, !10, i64 40, !11, i64 44}
!198 = !{!"p1 _ZTS18RedisModuleCommand", !17, i64 0}
!199 = distinct !{!199, !100}
!200 = distinct !{!200, !100}
!201 = distinct !{!201, !100}
!202 = distinct !{!202, !100}
!203 = distinct !{!203, !100}
!204 = distinct !{!204, !100}
!205 = distinct !{!205, !100}
!206 = distinct !{!206, !100}
!207 = distinct !{!207, !100}
!208 = !{!86, !10, i64 28}
!209 = !{!86, !32, i64 32}
end_hunk_3
