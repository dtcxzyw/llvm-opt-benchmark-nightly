Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_hash?download=true
inline.NumInlined: 167
inline.NumDeleted: 15
begin_hunk_0_@hstrlenCommand:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !130
  %i.i = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.h) #13 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef 4) #13
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = call i32 @hashTypeGetValue(ptr noundef %i.m, ptr noundef nonnull %i.i, ptr noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null)
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !130
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.t) #13
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !92
  %.not15 = icmp eq ptr %i.u, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.b, align 4, !tbaa !12
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.c, align 8, !tbaa !27
  %i.x = call i32 @sdigits10(i64 noundef %i.w) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.v, %bb.f ], [ %i.x, %bb.g ]
  %i.z = zext i32 %i.y to i64
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.z) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i32 @sdigits10(i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @genericHgetallCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.hashTypeIterator, align 8   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  %i.b = and i32 %1, 2
  %.not37 = icmp eq i32 %i.b, 0                   ; 2 uses
  %i.c = and i32 %1, 3
  %or.cond.not = icmp eq i32 %i.c, 3              ; 3 uses
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !134
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 128), i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.in = phi ptr [ %i.g, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @shared, i64 192), %bb.a ]
  %i.h = load ptr, ptr %.in, align 8, !tbaa !70   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.l, ptr noundef %i.h) #13 ; 9 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 4) #13
  %.not38 = icmp eq i32 %i.o, 0
  br i1 %.not38, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i64 @hashTypeLength(ptr noundef nonnull %i.m, i32 noundef 1) ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.h) #13
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %sext40 = shl i64 %i.p, 32
  %i.s = ashr exact i64 %sext40, 32               ; 2 uses
  br i1 %or.cond.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @addReplyMapLen(ptr noundef nonnull %0, i64 noundef %i.s) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.s) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !60
  %.not41 = icmp eq i32 %i.t, 0
  br i1 %.not41, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.m) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i64 [ %i.u, %bb.k ], [ 0, %bb.j ]
  store ptr %i.m, ptr %2, align 8, !tbaa !120
  %i.v = load i64, ptr %i.m, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = lshr i32 %i.w, 4
  %i.y = and i32 %i.x, 15                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.y, ptr %i.z, align 8, !tbaa !121
  switch i32 %i.y, label %bb.o [
    i32 11, label %bb.m
    i32 12, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store i64 281474976710656, ptr %i.ab, align 8, !tbaa !122
  br label %hashTypeInitIterator.exit

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17
  call void @dictInitIterator(ptr noundef nonnull %i.ac, ptr noundef %i.ae) #13
  br label %hashTypeInitIterator.exit

bb.o:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1368, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

hashTypeInitIterator.exit:                        ; preds = %bb.m, %bb.n
  %i.af = call i32 @hashTypeNext(ptr noundef nonnull %2, i32 noundef 1)
  %.not4248 = icmp eq i32 %i.af, -1
  br i1 %.not4248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hashTypeInitIterator.exit
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not37, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.us
  %i.ag = call i32 @hashTypeNext(ptr noundef nonnull %2, i32 noundef 1)
  %.not42.us.us = icmp eq i32 %i.ag, -1
  br i1 %.not42.us.us, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !174

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split
  %.03449.us = phi i32 [ %i.ah, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.us ]
  call fastcc void @addHashIteratorCursorToReply(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 2)
  %i.ah = add nuw nsw i32 %.03449.us, 1           ; 2 uses
  %i.ai = call i32 @hashTypeNext(ptr noundef nonnull %2, i32 noundef 1)
  %.not42.us = icmp eq i32 %i.ai, -1
  br i1 %.not42.us, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !174

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not37, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.lr.ph.split.split.us
  %.03449.us50 = phi i32 [ %i.aj, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split ]
  call fastcc void @addHashIteratorCursorToReply(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1)
  %i.aj = add nuw nsw i32 %.03449.us50, 1         ; 2 uses
  %i.ak = call i32 @hashTypeNext(ptr noundef nonnull %2, i32 noundef 1)
  %.not42.us52 = icmp eq i32 %i.ak, -1
  br i1 %.not42.us52, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !174

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.lr.ph.split.split
  %.03449 = phi i32 [ %.reass, %.lr.ph.split.split ], [ 0, %.lr.ph.split ]
  call fastcc void @addHashIteratorCursorToReply(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1)
  call fastcc void @addHashIteratorCursorToReply(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 2)
  %.reass = add i32 %.03449, 2                    ; 2 uses
  %i.al = call i32 @hashTypeNext(ptr noundef nonnull %2, i32 noundef 1)
  %.not42 = icmp eq i32 %i.al, -1
  br i1 %.not42, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us, %hashTypeInitIterator.exit
  %.034.lcssa = phi i32 [ 0, %hashTypeInitIterator.exit ], [ %i.aj, %.lr.ph.split.split.us ], [ %i.ah, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.us.split.us ], [ %.reass, %.lr.ph.split.split ] ; 2 uses
  %i.am = load i32, ptr %i.z, align 8, !tbaa !121
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.p, label %hashTypeResetIterator.exit

bb.p:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @dictResetIterator(ptr noundef nonnull %i.ao) #13
  br label %hashTypeResetIterator.exit

hashTypeResetIterator.exit:                       ; preds = %._crit_edge, %bb.p
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !60
  %.not43 = icmp eq i32 %i.ap, 0
  br i1 %.not43, label %bb.r, label %bb.q

bb.q:                                             ; preds = %hashTypeResetIterator.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !129
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !128
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.ax = call i32 @getKeySlot(ptr noundef %i.aw) #13
  %i.ay = call i64 @kvobjAllocSize(ptr noundef nonnull %i.m) #13
  call void @updateSlotAllocSize(ptr noundef %i.ar, i32 noundef %i.ax, ptr noundef nonnull %i.m, i64 noundef %.0, i64 noundef %i.ay) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %hashTypeResetIterator.exit
  %i.az = sdiv i32 %.034.lcssa, 2
  %.3 = select i1 %or.cond.not, i32 %i.az, i32 %.034.lcssa
  %i.ba = icmp eq i32 %.3, %i.q
  br i1 %i.ba, label %bb.t, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  call void @_serverAssert(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 3059) #13
  call void @abort() #14
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.c, %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @addHashIteratorCursorToReply(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !121
  switch i32 %i.f, label %bb.f [
    i32 11, label %hashTypeCurrentFromListpack.exit
    i32 12, label %hashTypeCurrentFromListpack.exit
    i32 2, label %bb.e
  ]

hashTypeCurrentFromListpack.exit:                 ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 -1, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !27
  %i.g = and i32 %2, 1
  %.not.i = icmp eq i32 %i.g, 0
  %..i = select i1 %.not.i, i64 24, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = call ptr @lpGetValue(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %hashTypeCurrentFromListpack.exit
  %i.k = load i32, ptr %i.a, align 4, !tbaa !12
  %i.l = zext i32 %i.k to i64
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.j, i64 noundef %i.l) #13
  br label %bb.d

bb.c:                                             ; preds = %hashTypeCurrentFromListpack.exit
  %i.m = load i64, ptr %i.b, align 8, !tbaa !27
  call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.m) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @hashTypeCurrentFromHashTable(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null)
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.o = load i64, ptr %i.d, align 8, !tbaa !14
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef %i.n, i64 noundef %i.o) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 3010, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hkeysCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @genericHgetallCommand(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hvalsCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @genericHgetallCommand(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hgetallCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @genericHgetallCommand(ptr noundef %0, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hexistsCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !130
  %i.i = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.h) #13 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef 4) #13
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 -1, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 9223372036854775807, ptr %i.c, align 8, !tbaa !27
  %i.s = call i32 @hashTypeGetValue(ptr noundef %i.m, ptr noundef nonnull %i.i, ptr noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null)
  %.not9 = icmp eq i32 %i.s, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  %i.v = select i1 %.not9, ptr %i.t, ptr %i.u
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.v) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hscanCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = call i32 @parseScanCursorOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.a) #13
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !128
end_hunk_0
