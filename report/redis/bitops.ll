inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@getObjectReadOnlyString:bb.a
  br label %.sink.split

.critedge24:                                      ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 12 uses
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.critedge24
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %.val.i = load i8, ptr %i.m, align 1, !tbaa !13 ; 2 uses
  %i.n = and i8 %.val.i, 7
  switch i8 %i.n, label %.sink.split [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = lshr i8 %.val.i, 3
  %i.p = zext nneg i8 %i.o to i64
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i64
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 -5
  %i.u = load i16, ptr %i.t, align 1, !tbaa !54
  %i.v = zext i16 %i.u to i64
  br label %.sink.split

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.l, i64 -9
  %i.x = load i32, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i32 %i.x to i64
  br label %.sink.split

bb.k:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.l, i64 -17
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !20
  br label %.sink.split

.critedge25:                                      ; preds = %bb.a
  %.not21 = icmp eq ptr %1, null
  br i1 %.not21, label %bb.l, label %.sink.split

.sink.split:                                      ; preds = %.critedge25, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i.sink = phi i64 [ %i.j, %bb.e ], [ 0, %bb.f ], [ %i.aa, %bb.k ], [ %i.p, %bb.g ], [ %i.s, %bb.h ], [ %i.v, %bb.i ], [ %i.y, %bb.j ], [ 0, %.critedge25 ]
  %.0.ph = phi ptr [ %2, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.k ], [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ %i.l, %bb.j ], [ null, %.critedge25 ]
  store i64 %.0.i.sink, ptr %1, align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %.critedge24, %.critedge25, %bb.d
  %.0 = phi ptr [ %i.l, %.critedge24 ], [ %2, %bb.d ], [ null, %.critedge25 ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @setbitCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105
  %i.i = call i32 @getBitOffsetFromArgument(ptr noundef %0, ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8) #23
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.b, align 8, !tbaa !20
  %.not32 = icmp ult i64 %i.n, 2
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #23
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.o = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.p = call fastcc ptr @lookupStringForBitCommand(ptr noundef nonnull %0, i64 noundef %i.o, ptr noundef %i.c, ptr noundef %i.d) ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i64 %i.o, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = and i64 %i.o, 7
  %i.y = xor i64 %i.x, 7                          ; 2 uses
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = shl nuw nsw i32 1, %i.z                 ; 2 uses
  %i.ab = and i32 %i.aa, %i.w                     ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %.not33 = icmp eq i64 %i.ac, 0
  %.pre = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp ne i32 %i.ab, 0
  %i.ae = zext i1 %i.ad to i64
  %.not34 = icmp eq i64 %.pre, %i.ae
  br i1 %.not34, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = xor i32 %i.aa, -1
  %i.ag = and i32 %i.w, %i.af
  %i.ah = and i64 %.pre, 1
  %i.ai = shl nuw nsw i64 %i.ah, %i.y
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = or i32 %i.ag, %i.aj
  %i.al = trunc nuw i32 %i.ak to i8
  store i8 %i.al, ptr %i.u, align 1, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !106
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !105
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.an, ptr noundef %i.aq, ptr noundef nonnull %i.p, i32 noundef 1) #23
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !105
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !107
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.9, ptr noundef %i.at, i32 noundef %i.aw) #23
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !110
  %i.ay = add nsw i64 %i.ax, 1
  store i64 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !110
  %i.az = load i64, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = icmp ne i64 %i.ac, 0
  %or.cond = and i1 %i.bb, %i.ba
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !106
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !105
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !51
  %i.bi = call i32 @getKeySlot(ptr noundef %i.bh) #23
  %i.bj = add i64 %i.az, %i.ac
  call void @updateKeysizesHist(ptr noundef %i.bc, i32 noundef %i.bi, i32 noundef 0, i64 noundef %i.az, i64 noundef %i.bj) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.not35 = icmp eq i32 %i.ab, 0
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  %i.bm = select i1 %.not35, ptr %i.bl, ptr %i.bk
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.bm) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare i32 @getLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lookupStringForBitCommand(ptr noundef %0, i64 noundef %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.c = lshr i64 %1, 3                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.j = call ptr @lookupKeyWriteWithLink(ptr noundef %i.e, ptr noundef %i.i, ptr noundef nonnull %i.a) #23 ; 3 uses
  %i.k = call i32 @checkType(ptr noundef %0, ptr noundef %i.j, i32 noundef 0) #23
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.n = call ptr @sdsnewlen(ptr noundef null, i64 noundef %i.m) #23
  %i.o = call ptr @createObject(i32 noundef 0, ptr noundef %i.n) #23
  store ptr %i.o, ptr %i.b, align 8, !tbaa !105
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105
  %i.t = call ptr @dbAddByLink(ptr noundef %i.p, ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #23 ; 0 uses
  store i64 %i.m, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %2, align 8, !tbaa !20
  %.pre27.a = load ptr, ptr %i.b, align 8, !tbaa !105
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105
  %i.y = call ptr @dbUnshareStringValue(ptr noundef %i.u, ptr noundef %i.x, ptr noundef nonnull %i.j) #23 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51  ; 6 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %.val.i = load i8, ptr %i.ab, align 1, !tbaa !13 ; 2 uses
  %i.ac = and i8 %.val.i, 7
  switch i8 %i.ac, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = lshr i8 %.val.i, 3
  %i.ae = zext nneg i8 %i.ad to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 -3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 -5
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !54
  %i.ak = zext i16 %i.aj to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 -9
  %i.am = load i32, ptr %i.al, align 1, !tbaa !9
  %i.an = zext i32 %i.am to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds i8, ptr %i.aa, i64 -17
  %i.ap = load i64, ptr %i.ao, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.ap, %bb.i ], [ %i.ae, %bb.e ], [ %i.ah, %bb.f ], [ %i.ak, %bb.g ], [ %i.an, %bb.h ], [ 0, %bb.d ]
  store i64 %.0.i, ptr %2, align 8, !tbaa !20
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !111
  %.not21 = icmp eq i32 %i.aq, 0
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %sdslen.exit
  %i.ar = call i64 @kvobjAllocSize(ptr noundef nonnull %i.y) #23
  %.pre.a = load ptr, ptr %i.z, align 8, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %sdslen.exit
  %i.as = phi ptr [ %.pre.a, %bb.j ], [ %i.aa, %sdslen.exit ]
  %.0 = phi i64 [ %i.ar, %bb.j ], [ 0, %sdslen.exit ]
  %i.at = add nuw nsw i64 %i.c, 1
  %i.au = call ptr @sdsgrowzero(ptr noundef %i.as, i64 noundef %i.at) #23 ; 2 uses
  store ptr %i.au, ptr %i.z, align 8, !tbaa !51
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !111
  %.not22 = icmp eq i32 %i.av, 0
  br i1 %.not22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !105
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51
  %i.bc = call i32 @getKeySlot(ptr noundef %i.bb) #23
  %i.bd = call i64 @kvobjAllocSize(ptr noundef nonnull %i.y) #23
  call void @updateSlotAllocSize(ptr noundef %i.aw, i32 noundef %i.bc, ptr noundef nonnull %i.y, i64 noundef %.0, i64 noundef %i.bd) #23
  %.pre26 = load ptr, ptr %i.z, align 8, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = phi ptr [ %.pre26, %bb.l ], [ %i.au, %bb.k ] ; 5 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %.val.i23 = load i8, ptr %i.bf, align 1, !tbaa !13 ; 2 uses
  %i.bg = and i8 %.val.i23, 7
  switch i8 %i.bg, label %sdslen.exit25 [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.bh = lshr i8 %.val.i23, 3
  %i.bi = zext nneg i8 %i.bh to i64
  br label %sdslen.exit25

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 -3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i64
  br label %sdslen.exit25

bb.p:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds i8, ptr %i.be, i64 -5
  %i.bn = load i16, ptr %i.bm, align 1, !tbaa !54
  %i.bo = zext i16 %i.bn to i64
  br label %sdslen.exit25

bb.q:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds i8, ptr %i.be, i64 -9
  %i.bq = load i32, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i32 %i.bq to i64
  br label %sdslen.exit25

bb.r:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds i8, ptr %i.be, i64 -17
  %i.bt = load i64, ptr %i.bs, align 1, !tbaa !20
  br label %sdslen.exit25

sdslen.exit25:                                    ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i24 = phi i64 [ %i.bt, %bb.r ], [ %i.bi, %bb.n ], [ %i.bl, %bb.o ], [ %i.bo, %bb.p ], [ %i.br, %bb.q ], [ 0, %bb.m ]
  %i.bu = load i64, ptr %2, align 8, !tbaa !20
  %i.bv = sub i64 %.0.i24, %i.bu
  store i64 %i.bv, ptr %3, align 8, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %sdslen.exit25, %bb.a
  %.019 = phi ptr [ null, %bb.a ], [ %i.y, %sdslen.exit25 ], [ %.pre27.a, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %.019
}

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @updateKeysizesHist(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #8

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @getbitCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.g = call i32 @getBitOffsetFromArgument(ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !112
  %i.l = tail call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef %i.k) #23 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 0) #23
  %.not22 = icmp eq i32 %i.n, 0
  br i1 %.not22, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.p = lshr i64 %i.o, 3                         ; 3 uses
  %i.q = load i64, ptr %i.l, align 8
  %i.r = trunc i64 %i.q to i32
  %i.s = lshr i32 %i.r, 4
  %i.t = and i32 %i.s, 15
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51   ; 7 uses
  switch i32 %i.t, label %bb.k [
    i32 0, label %bb.e
    i32 8, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %.val.i = load i8, ptr %i.w, align 1, !tbaa !13 ; 2 uses
  %i.x = and i8 %.val.i, 7
  switch i8 %i.x, label %.thread [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i8 %.val.i, 3
  %i.z = zext nneg i8 %i.y to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 -5
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !54
  %i.af = zext i16 %i.ae to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 -9
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !9
  %i.ai = zext i32 %i.ah to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -17
  %i.ak = load i64, ptr %i.aj, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ak, %bb.j ], [ %i.z, %bb.f ], [ %i.ac, %bb.g ], [ %i.af, %bb.h ], [ %i.ai, %bb.i ]
  %i.al = icmp ult i64 %i.p, %.0.i
  br i1 %i.al, label %bb.l, label %.thread

bb.k:                                             ; preds = %bb.d
  %i.am = ptrtoint ptr %i.v to i64
  %i.an = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.am) #23
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp ult i64 %i.p, %i.ao
  br i1 %i.ap, label %bb.l, label %.thread

.thread:                                          ; preds = %sdslen.exit, %bb.k, %bb.e
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %sdslen.exit
  %.sink = phi ptr [ %i.v, %sdslen.exit ], [ %i.a, %bb.k ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.p
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i32
  %i.au = trunc i64 %i.o to i32
  %i.av = and i32 %i.au, 7
  %i.aw = lshr exact i32 128, %i.av
  %i.ax = and i32 %i.aw, %i.at
  %.0.shrunk.fr = freeze i32 %i.ax
  %.not23 = icmp eq i32 %.0.shrunk.fr, 0
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  %spec.select = select i1 %.not23, ptr %i.az, ptr %i.ay
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %i.ba = phi ptr [ %spec.select, %bb.l ], [ %i.aq, %.thread ]
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ba) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare ptr @lookupKeyReadOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define dso_local i64 @bitopCommandAVX(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 7 uses
  %i.b = icmp ult i64 %4, 32
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, -7
  %or.cond3 = icmp ult i64 %i.c, -3
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.a, i64 %4, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i64 %2, label %.loopexit216 [
    i64 0, label %.lr.ph266
    i64 4, label %.lr.ph255
    i64 5, label %.lr.ph255
    i64 6, label %.lr.ph255
    i64 1, label %.lr.ph255
    i64 2, label %.lr.ph243
    i64 3, label %.lr.ph
    i64 7, label %.lr.ph231
  ]

.lr.ph231:                                        ; preds = %bb.d
  %i.d = icmp ugt i64 %3, 1
  br i1 %i.d, label %.lr.ph.us.preheader, label %.lr.ph231.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph231
  %i.e = add i64 %3, -1                           ; 2 uses
  %i.f = add i64 %3, -2
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.f, 3
  %unroll_iter = and i64 %i.e, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod392 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.4230.us = phi ptr [ %i.be, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 3 uses
  %.4130229.us = phi i64 [ %i.bg, %._crit_edge.us ], [ %4, %.lr.ph.us.preheader ]
  %.4142228.us = phi i64 [ %i.bf, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 6 uses
  %i.h = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.4230.us)
  %i.i = bitcast <32 x i8> %i.h to <4 x i64>      ; 2 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.3134226.us = phi i64 [ %i.as, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 5 uses
  %.0148225.us = phi <4 x i64> [ %i.aq, %.lr.ph.us.new ], [ zeroinitializer, %.lr.ph.us ]
  %.0149224.us = phi <4 x i64> [ %i.ar, %.lr.ph.us.new ], [ %i.i, %.lr.ph.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
end_hunk_0
