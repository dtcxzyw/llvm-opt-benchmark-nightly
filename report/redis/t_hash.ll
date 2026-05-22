inline.NumInlined: 166
inline.NumDeleted: 15
begin_hunk_0_@addHashIteratorCursorToReply:bb.a
  %.not.i = icmp eq i32 %i.g, 0
  %..i = select i1 %.not.i, i64 24, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.j = call ptr @lpGetValue(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %hashTypeCurrentFromListpack.exit
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9
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
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.o = load i64, ptr %i.d, align 8, !tbaa !13
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !150
  %i.i = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.h) #13 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef 4) #13
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 -1, ptr %i.b, align 4, !tbaa !9
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.f = call i32 @parseScanCursorOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.a) #13
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 480), align 8, !tbaa !175
  %i.l = call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef %i.k) #13 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 4) #13
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i64 @kvobjAllocSize(ptr noundef nonnull %i.l) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.p, %bb.e ], [ 0, %bb.d ]
  %i.q = load i64, ptr %i.a, align 8, !tbaa !27
  call void @scanGenericCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.q) #13
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not15 = icmp eq i32 %i.r, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = call i32 @getKeySlot(ptr noundef %i.y) #13
  %i.aa = call i64 @kvobjAllocSize(ptr noundef nonnull %i.l) #13
  call void @updateSlotAllocSize(ptr noundef %i.t, i32 noundef %i.z, ptr noundef nonnull %i.l, i64 noundef %.0, i64 noundef %i.aa) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i32 @parseScanCursorOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @scanGenericCommand(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hrandfieldWithCountCommand(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.hashTypeIterator, align 8   ; 11 uses
  %4 = alloca %struct.dictIterator, align 8       ; 6 uses
  %5 = alloca %struct.dictType, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !176
  %i.f = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #13 ; 20 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.cm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 4) #13
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.cm

bb.c:                                             ; preds = %bb.b
  %.0 = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149
  %i.k = tail call fastcc i32 @hashTypeExpireIfNeeded(ptr noundef %i.j, ptr noundef %i.f)
  %.not194 = icmp eq i32 %i.k, 0
  br i1 %.not194, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !176
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.l) #13
  br label %bb.cm

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.f, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i32 %i.n, 4
  %i.p = and i32 %i.o, 15
  switch i32 %i.p, label %bb.i [
    i32 11, label %bb.f
    i32 12, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = tail call i64 @lpLength(ptr noundef %i.r) #13
  %i.t = lshr i64 %i.s, 1
  br label %hashTypeLength.exit

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.y = tail call i64 @lpLength(ptr noundef %i.x) #13
  %i.z = udiv i64 %i.y, 3
  br label %hashTypeLength.exit

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !13
  %i.ag = add i64 %i.af, %i.ad
  br label %hashTypeLength.exit

bb.i:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

hashTypeLength.exit:                              ; preds = %bb.f, %bb.h, %bb.g
  %.1.i = phi i64 [ %i.t, %bb.f ], [ %i.ag, %bb.h ], [ %i.z, %bb.g ] ; 7 uses
  %i.ah = icmp eq i64 %1, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %hashTypeLength.exit
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !176
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ai) #13
  br label %bb.cm

bb.k:                                             ; preds = %hashTypeLength.exit
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not195 = icmp eq i32 %i.aj, 0
  br i1 %.not195, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0178 = phi i64 [ %i.ak, %bb.l ], [ 0, %bb.k ]
  %i.al = icmp eq i64 %.0, 1
  %.narrow = icmp slt i64 %1, -1
  %or.cond = or i1 %.narrow, %i.al
  br i1 %or.cond, label %bb.n, label %bb.aq

bb.n:                                             ; preds = %bb.m
  %.not202 = icmp eq i32 %2, 0                    ; 3 uses
  br i1 %.not202, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !165
  %i.ao = icmp eq i32 %i.an, 2
  %i.ap = zext i1 %i.ao to i64
  %spec.select = shl nuw i64 %.0, %i.ap
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.sink = phi i64 [ %.0, %bb.n ], [ %spec.select, %bb.o ]
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.0.sink) #13
  %i.aq = load i64, ptr %i.f, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = lshr i32 %i.ar, 4
  %i.at = and i32 %i.as, 15
  switch i32 %i.at, label %.loopexit [
    i32 2, label %.preheader
    i32 11, label %bb.al
    i32 12, label %bb.al
  ]

.preheader:                                       ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.ak, %.preheader
  %.in = phi i64 [ %.0, %.preheader ], [ %i.ax, %bb.ak ]
  %i.ax = add i64 %.in, -1                        ; 2 uses
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.az = tail call ptr @dictGetFairRandomKey(ptr noundef %i.ay) #13
  %i.ba = tail call ptr @dictGetKey(ptr noundef %i.az) #13 ; 13 uses
  br i1 %.not202, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !165
  %i.bc = icmp sgt i32 %i.bb, 2
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bd = getelementptr i8, ptr %i.ba, i64 -1
  %.val.i = load i8, ptr %i.bd, align 1, !tbaa !73 ; 2 uses
  %i.be = and i8 %.val.i, 7
  switch i8 %i.be, label %bb.z [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.bf = lshr i8 %.val.i, 3
  %i.bg = zext nneg i8 %i.bf to i64
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds i8, ptr %i.ba, i64 -3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !73
  %i.bj = zext i8 %i.bi to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds i8, ptr %i.ba, i64 -5
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !74
  %i.bm = zext i16 %i.bl to i64
  br label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds i8, ptr %i.ba, i64 -9
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !9
  %i.bp = zext i32 %i.bo to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds i8, ptr %i.ba, i64 -17
  %i.br = load i64, ptr %i.bq, align 1, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.0.i = phi i64 [ %i.br, %bb.y ], [ %i.bg, %bb.u ], [ %i.bj, %bb.v ], [ %i.bm, %bb.w ], [ %i.bp, %bb.x ], [ 0, %bb.t ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i64 noundef %.0.i) #13
  %i.bs = tail call ptr @entryGetValue(ptr noundef nonnull %i.ba) #13 ; 6 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -1
  %.val.i210 = load i8, ptr %i.bt, align 1, !tbaa !73 ; 2 uses
  %i.bu = and i8 %.val.i210, 7
  switch i8 %i.bu, label %sdslen.exit212 [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
    i8 4, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bv = lshr i8 %.val.i210, 3
  %i.bw = zext nneg i8 %i.bv to i64
  br label %sdslen.exit212

bb.ab:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 -3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !73
  %i.bz = zext i8 %i.by to i64
  br label %sdslen.exit212

bb.ac:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds i8, ptr %i.bs, i64 -5
  %i.cb = load i16, ptr %i.ca, align 1, !tbaa !74
  %i.cc = zext i16 %i.cb to i64
  br label %sdslen.exit212

bb.ad:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds i8, ptr %i.bs, i64 -9
  %i.ce = load i32, ptr %i.cd, align 1, !tbaa !9
  %i.cf = zext i32 %i.ce to i64
  br label %sdslen.exit212

bb.ae:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds i8, ptr %i.bs, i64 -17
  %i.ch = load i64, ptr %i.cg, align 1, !tbaa !13
  br label %sdslen.exit212

sdslen.exit212:                                   ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0.i211 = phi i64 [ %i.ch, %bb.ae ], [ %i.bw, %bb.aa ], [ %i.bz, %bb.ab ], [ %i.cc, %bb.ac ], [ %i.cf, %bb.ad ], [ 0, %bb.z ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bs, i64 noundef %.0.i211) #13
  br label %bb.ak

.critedge:                                        ; preds = %bb.q
  %i.ci = getelementptr i8, ptr %i.ba, i64 -1
  %.val.i213 = load i8, ptr %i.ci, align 1, !tbaa !73 ; 2 uses
  %i.cj = and i8 %.val.i213, 7
  switch i8 %i.cj, label %sdslen.exit215 [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.af:                                            ; preds = %.critedge
  %i.ck = lshr i8 %.val.i213, 3
  %i.cl = zext nneg i8 %i.ck to i64
  br label %sdslen.exit215

bb.ag:                                            ; preds = %.critedge
  %i.cm = getelementptr inbounds i8, ptr %i.ba, i64 -3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !73
  %i.co = zext i8 %i.cn to i64
  br label %sdslen.exit215

bb.ah:                                            ; preds = %.critedge
  %i.cp = getelementptr inbounds i8, ptr %i.ba, i64 -5
  %i.cq = load i16, ptr %i.cp, align 1, !tbaa !74
  %i.cr = zext i16 %i.cq to i64
  br label %sdslen.exit215

bb.ai:                                            ; preds = %.critedge
  %i.cs = getelementptr inbounds i8, ptr %i.ba, i64 -9
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !9
  %i.cu = zext i32 %i.ct to i64
  br label %sdslen.exit215

bb.aj:                                            ; preds = %.critedge
  %i.cv = getelementptr inbounds i8, ptr %i.ba, i64 -17
  %i.cw = load i64, ptr %i.cv, align 1, !tbaa !13
  br label %sdslen.exit215

sdslen.exit215:                                   ; preds = %.critedge, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.0.i214 = phi i64 [ %i.cw, %bb.aj ], [ %i.cl, %bb.af ], [ %i.co, %bb.ag ], [ %i.cr, %bb.ah ], [ %i.cu, %bb.ai ], [ 0, %.critedge ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i64 noundef %.0.i214) #13
  br label %bb.ak

bb.ak:                                            ; preds = %sdslen.exit215, %sdslen.exit212
  %i.cx = load i64, ptr %i.aw, align 8, !tbaa !103
  %i.cy = and i64 %i.cx, 1024
  %.not204 = icmp ne i64 %i.cy, 0
  %.not203 = icmp eq i64 %i.ax, 0
  %or.cond256 = select i1 %.not204, i1 true, i1 %.not203
  br i1 %or.cond256, label %.loopexit, label %bb.q

bb.al:                                            ; preds = %bb.p, %bb.p
  %i.cz = tail call ptr @hashTypeListpackGetLp(ptr noundef nonnull %i.f)
  %i.da = load i64, ptr %i.f, align 8
  %i.db = and i64 %i.da, 240
  %i.dc = icmp eq i64 %i.db, 176
  %i.dd = select i1 %i.dc, i32 2, i32 3
  %i.de = tail call i64 @llvm.umin.i64(i64 %.0, i64 1000) ; 2 uses
  %i.df = mul nuw nsw i64 %i.de, 24               ; 2 uses
  %i.dg = tail call noalias ptr @zmalloc(i64 noundef %i.df) #15 ; 3 uses
end_hunk_0
