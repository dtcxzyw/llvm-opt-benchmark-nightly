inline.NumInlined: 95
inline.NumDeleted: 16
begin_hunk_0_@createDumpPayload:bb.a

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 99) #21
  tail call void @abort() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = tail call i64 @rdbSaveObject(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #21
  %.not20 = icmp eq i64 %i.h, 0
  br i1 %.not20, label %bb.g, label %bb.h, !prof !51

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 100) #21
  tail call void @abort() #22
  unreachable

bb.h:                                             ; preds = %bb.f
  store i8 13, ptr %i.a, align 1, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.l = call ptr @sdscatlen(ptr noundef %i.k, ptr noundef nonnull %i.a, i64 noundef 2) #21 ; 8 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !13
  %.not21 = icmp eq i32 %4, 0
  br i1 %.not21, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %.val.i = load i8, ptr %i.m, align 1, !tbaa !13 ; 2 uses
  %i.n = and i8 %.val.i, 7
  switch i8 %i.n, label %sdslen.exit [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.o = lshr i8 %.val.i, 3
  %i.p = zext nneg i8 %i.o to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 -5
  %i.u = load i16, ptr %i.t, align 1, !tbaa !52
  %i.v = zext i16 %i.u to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds i8, ptr %i.l, i64 -9
  %i.x = load i32, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i32 %i.x to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds i8, ptr %i.l, i64 -17
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !50
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi i64 [ %i.aa, %bb.n ], [ %i.p, %bb.j ], [ %i.s, %bb.k ], [ %i.v, %bb.l ], [ %i.y, %bb.m ], [ 0, %bb.i ]
  %i.ab = call i64 @crc64(i64 noundef 0, ptr noundef nonnull %i.l, i64 noundef %.0.i) #21
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !50
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %sdslen.exit, %bb.h
  %i.ac = phi ptr [ %.pre, %sdslen.exit ], [ %i.l, %bb.h ]
  %i.ad = call ptr @sdscatlen(ptr noundef %i.ac, ptr noundef nonnull %i.b, i64 noundef 8) #21
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @rioInitWithBuffer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sdsempty() local_unnamed_addr #2

declare i32 @rdbSaveKeyMetadata(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare i32 @rdbSaveObjectType(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rdbSaveObject(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @crc64(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @verifyDumpPayload(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -10
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.d, ptr %2, align 2, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = icmp ugt i16 %i.d, 13
  br i1 %i.e, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6456), align 8, !tbaa !54
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %i.b, i64 -8
  %.0.copyload = load i64, ptr %i.g, align 1      ; 2 uses
  %i.h = icmp eq i64 %.0.copyload, 0
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = add i64 %1, -8
  %i.j = tail call i64 @crc64(i64 noundef 0, ptr noundef nonnull %0, i64 noundef %i.i) #21
  %i.k = icmp ne i64 %i.j, %.0.copyload
  %i.l = sext i1 %i.k to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.1 = phi i32 [ 0, %bb.e ], [ -1, %bb.a ], [ -1, %bb.d ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @dumpCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._rio, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = tail call ptr @lookupKeyRead(ptr noundef %i.b, ptr noundef %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyNull(ptr noundef nonnull %0) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !72
  call void @createDumpPayload(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef %i.k, i32 noundef %i.n, i32 noundef 0)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13
  call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %i.p) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

declare ptr @lookupKeyRead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyNull(ptr noundef) local_unnamed_addr #2

declare void @addReplyBulkSds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @restoreCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %1 = alloca %struct._rio, align 8               ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.KeyMetaSpec, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 -1, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 -1, ptr %i.c, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 4
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %i.j = phi i32 [ %i.g, %.lr.ph ], [ %i.at, %bb.n ]
  %.0166 = phi i64 [ -1, %.lr.ph ], [ %.2, %bb.n ] ; 3 uses
  %.0103165 = phi i32 [ 4, %.lr.ph ], [ %i.as, %bb.n ] ; 6 uses
  %.0106164 = phi i32 [ 0, %.lr.ph ], [ %.2108, %bb.n ] ; 3 uses
  %.0109163 = phi i32 [ 0, %.lr.ph ], [ %.2111, %bb.n ] ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !70   ; 3 uses
  %i.l = sext i32 %.0103165 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 4 uses
  %i.q = call i32 @strcasecmp(ptr noundef %i.p, ptr noundef nonnull @.str.5) #23
  %.not129 = icmp eq i32 %i.q, 0
  br i1 %.not129, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @strcasecmp(ptr noundef %i.p, ptr noundef nonnull @.str.6) #23
  %.not130 = icmp eq i32 %i.r, 0
  br i1 %.not130, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = call i32 @strcasecmp(ptr noundef %i.p, ptr noundef nonnull @.str.7) #23
  %i.t = icmp eq i32 %i.s, 0
  %i.u = sub i32 %.0103165, %i.j
  %i.v = icmp slt i32 %i.u, -1                    ; 2 uses
  %or.cond = and i1 %i.v, %i.t
  %i.w = load i64, ptr %i.b, align 8
  %i.x = icmp eq i64 %i.w, -1
  %or.cond3 = select i1 %or.cond, i1 %i.x, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i32 %.0103165, 1                 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71
  %i.ac = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ab, ptr noundef nonnull %i.c, ptr noundef null) #21
  %.not132 = icmp eq i32 %i.ac, 0
  br i1 %.not132, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !75
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #21
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.af = call i32 @LRU_CLOCK() #21
  %i.ag = zext i32 %i.af to i64
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.ah = call i32 @strcasecmp(ptr noundef %i.p, ptr noundef nonnull @.str.9) #23
  %i.ai = icmp eq i32 %i.ah, 0
  %or.cond5 = and i1 %i.v, %i.ai
  %i.aj = load i64, ptr %i.c, align 8
  %i.ak = icmp eq i64 %i.aj, -1
  %or.cond7 = select i1 %or.cond5, i1 %i.ak, i1 false
  br i1 %or.cond7, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = add nsw i32 %.0103165, 1                ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ao, ptr noundef nonnull %i.b, ptr noundef null) #21
  %.not131 = icmp eq i32 %i.ap, 0
  br i1 %.not131, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !75
  %or.cond9 = icmp ugt i64 %i.aq, 255
  br i1 %or.cond9, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #21
  br label %.thread

bb.m:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !79
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ar) #21
  br label %.thread

bb.n:                                             ; preds = %bb.k, %bb.c, %bb.b, %bb.h
  %.2111 = phi i32 [ %.0109163, %bb.k ], [ %.0109163, %bb.h ], [ 1, %bb.c ], [ %.0109163, %bb.b ] ; 2 uses
  %.2108 = phi i32 [ %.0106164, %bb.k ], [ %.0106164, %bb.h ], [ %.0106164, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %.2105 = phi i32 [ %i.al, %bb.k ], [ %i.y, %bb.h ], [ %.0103165, %bb.c ], [ %.0103165, %bb.b ]
  %.2 = phi i64 [ %.0166, %bb.k ], [ %i.ag, %bb.h ], [ %.0166, %bb.c ], [ %.0166, %bb.b ] ; 2 uses
  %i.as = add nsw i32 %.2105, 1                   ; 2 uses
  %i.at = load i32, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !81

._crit_edge.loopexit:                             ; preds = %bb.n
  %i.av = icmp eq i32 %.2108, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0109.lcssa = phi i32 [ 0, %bb.a ], [ %.2111, %._crit_edge.loopexit ] ; 2 uses
  %.0106.lcssa = phi i1 [ true, %bb.a ], [ %i.av, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ -1, %bb.a ], [ %.2, %._crit_edge.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !71 ; 11 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bc = call ptr @lookupKeyWrite(ptr noundef %i.bb, ptr noundef %i.az) #21 ; 2 uses
  %.not145 = icmp eq ptr %i.bc, null
  br i1 %.not145, label %.thread138, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 15
  br i1 %.0106.lcssa, label %bb.p, label %.thread138

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 328), align 8, !tbaa !82
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.bg) #21
  br label %.thread

.thread138:                                       ; preds = %._crit_edge, %bb.o
  %i.bh = phi i1 [ false, %bb.o ], [ %.0106.lcssa, %._crit_edge ]
  %i.bi = phi i32 [ %i.bf, %bb.o ], [ -1, %._crit_edge ]
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !70
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !71
  %i.bm = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.bl, ptr noundef nonnull %i.a, ptr noundef null) #21
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.q, label %.thread

bb.q:                                             ; preds = %.thread138
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !75
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #21
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.aw, align 8, !tbaa !70
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !71
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77 ; 9 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  %.val.i = load i8, ptr %i.bu, align 1, !tbaa !13 ; 2 uses
  %i.bv = and i8 %.val.i, 7
  switch i8 %i.bv, label %verifyDumpPayload.exit.thread [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.bw = lshr i8 %.val.i, 3
  %i.bx = zext nneg i8 %i.bw to i64
  br label %sdslen.exit

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 -3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !13
  %i.ca = zext i8 %i.bz to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 -5
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !52
  %i.cd = zext i16 %i.cc to i64
  br label %sdslen.exit

bb.w:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds i8, ptr %i.bt, i64 -9
  %i.cf = load i32, ptr %i.ce, align 1, !tbaa !9
  %i.cg = zext i32 %i.cf to i64
  br label %sdslen.exit

bb.x:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds i8, ptr %i.bt, i64 -17
  %i.ci = load i64, ptr %i.ch, align 1, !tbaa !50
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i = phi i64 [ %i.ci, %bb.x ], [ %i.bx, %bb.t ], [ %i.ca, %bb.u ], [ %i.cd, %bb.v ], [ %i.cg, %bb.w ] ; 3 uses
  %i.cj = icmp ult i64 %.0.i, 10
  br i1 %i.cj, label %verifyDumpPayload.exit.thread, label %bb.y

bb.y:                                             ; preds = %sdslen.exit
  %i.ck = getelementptr i8, ptr %i.bt, i64 %.0.i  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -10
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = icmp ugt i16 %i.cm, 13
  br i1 %i.cn, label %verifyDumpPayload.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6456), align 8, !tbaa !54
  %.not17.i = icmp eq i32 %i.co, 0
  br i1 %.not17.i, label %bb.aa, label %verifyDumpPayload.exit.thread143

bb.aa:                                            ; preds = %bb.z
  %i.cp = getelementptr i8, ptr %i.ck, i64 -8
  %.0.copyload.i = load i64, ptr %i.cp, align 1   ; 2 uses
  %i.cq = icmp eq i64 %.0.copyload.i, 0
  br i1 %i.cq, label %verifyDumpPayload.exit.thread143, label %verifyDumpPayload.exit

verifyDumpPayload.exit:                           ; preds = %bb.aa
  %i.cr = add i64 %.0.i, -8
  %i.cs = call i64 @crc64(i64 noundef 0, ptr noundef nonnull %i.bt, i64 noundef %i.cr) #21
  %.not146 = icmp eq i64 %i.cs, %.0.copyload.i
  br i1 %.not146, label %verifyDumpPayload.exit.verifyDumpPayload.exit.thread143_crit_edge, label %verifyDumpPayload.exit.thread

verifyDumpPayload.exit.verifyDumpPayload.exit.thread143_crit_edge: ; preds = %verifyDumpPayload.exit
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !70
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre169 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !71
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %.pre169, i64 8
  %.pre171 = load ptr, ptr %.phi.trans.insert170, align 8, !tbaa !77
  br label %verifyDumpPayload.exit.thread143

verifyDumpPayload.exit.thread:                    ; preds = %bb.s, %bb.y, %sdslen.exit, %verifyDumpPayload.exit
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #21
  br label %.thread

verifyDumpPayload.exit.thread143:                 ; preds = %verifyDumpPayload.exit.verifyDumpPayload.exit.thread143_crit_edge, %bb.aa, %bb.z
  %i.ct = phi ptr [ %.pre171, %verifyDumpPayload.exit.verifyDumpPayload.exit.thread143_crit_edge ], [ %i.bt, %bb.aa ], [ %i.bt, %bb.z ]
  call void @rioInitWithBuffer(ptr noundef nonnull %1, ptr noundef %i.ct) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 0, ptr %i.cu, align 2, !tbaa !83
  store i16 0, ptr %2, align 8, !tbaa !85
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %.not119 = icmp eq i64 %i.cv, 0
  br i1 %.not119, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %verifyDumpPayload.exit.thread143
  %.not120 = icmp eq i32 %.0109.lcssa, 0
  br i1 %.not120, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cw = call i64 @commandTimeSnapshot() #21
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !75
  %i.cy = add nsw i64 %i.cx, %i.cw                ; 2 uses
  store i64 %i.cy, ptr %i.a, align 8, !tbaa !75
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cz = phi i64 [ %i.cy, %bb.ac ], [ %i.cv, %bb.ab ]
  call void @keyMetaSpecAdd(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %i.cz) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %verifyDumpPayload.exit.thread143
  %i.da = call i32 @rdbLoadType(ptr noundef nonnull %1) #21
  store i32 %i.da, ptr %i.d, align 4, !tbaa !9
  %i.db = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !72
  %i.de = call i32 @rdbResolveKeyType(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef %i.dd, ptr noundef nonnull %2) #21
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #21
  br label %bb.ay

bb.ag:                                            ; preds = %bb.ae
  %i.dg = load i32, ptr %i.d, align 4, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !77
  %i.dj = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !72
  %i.dm = call ptr @rdbLoadObject(i32 noundef %i.dg, ptr noundef nonnull %1, ptr noundef %i.di, i32 noundef %i.dl, ptr noundef null) #21 ; 3 uses
  store ptr %i.dm, ptr %i.e, align 8, !tbaa !71
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @keyMetaSpecCleanup(ptr noundef nonnull %2) #21
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #21
  br label %bb.ay

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.bh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.do = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.dp = call i32 @dbDelete(ptr noundef %i.do, ptr noundef nonnull %i.az) #21
  %i.dq = icmp eq i32 %i.dp, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0112 = phi i1 [ %i.dq, %bb.aj ], [ true, %bb.ai ] ; 2 uses
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %.not122 = icmp eq i64 %i.dr, 0
  br i1 %.not122, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = call i32 @checkAlreadyExpired(i64 noundef %i.dr) #21
  %.not123 = icmp eq i32 %i.ds, 0
  br i1 %.not123, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.0112, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !86
  %.not128 = icmp eq i32 %i.dt, 0
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 408), align 8
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 400), align 8
  %i.dw = select i1 %.not128, ptr %i.dv, ptr %i.du
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.dw, ptr noundef nonnull %i.az) #21
  %i.dx = load ptr, ptr %i.ba, align 8, !tbaa !55
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.dx, ptr noundef nonnull %i.az, ptr noundef null, i32 noundef 1) #21
  %i.dy = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !72
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.az, i32 noundef %i.ea) #21
  %i.eb = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !87
  %i.ec = add nsw i64 %i.eb, 1
  store i64 %i.ec, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !87
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @keyMetaSpecCleanup(ptr noundef nonnull %2) #21
  call void @decrRefCount(ptr noundef nonnull %i.dm) #21
  %i.ed = load ptr, ptr @shared, align 8, !tbaa !88
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ed) #21
  br label %bb.ay

bb.ap:                                            ; preds = %bb.al, %bb.ak
  %i.ee = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.ef = call ptr @dbAddInternal(ptr noundef %i.ee, ptr noundef nonnull %i.az, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %2) #21 ; 5 uses
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = and i64 %i.eg, 15
  %i.ei = icmp eq i64 %i.eh, 4
  br i1 %i.ei, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ej = call i64 @hashTypeGetMinExpire(ptr noundef nonnull %i.ef, i32 noundef 1) #21 ; 2 uses
  %.not124 = icmp eq i64 %i.ej, 281474976710656
  br i1 %.not124, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ek = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !89
  %i.en = load ptr, ptr %i.dh, align 8, !tbaa !77
  %i.eo = call i32 @getKeySlot(ptr noundef %i.en) #21
  call void @estoreAdd(ptr noundef %i.em, i32 noundef %i.eo, ptr noundef nonnull %i.ef, i64 noundef %i.ej) #21
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ap
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = icmp ne i32 %.0109.lcssa, 0
  %or.cond13 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond13, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.es = call ptr @createStringObjectFromLongLong(i64 noundef %i.ep) #21 ; 2 uses
  call void @rewriteClientCommandArgument(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.es) #21
  call void @decrRefCount(ptr noundef %i.es) #21
  %i.et = load i32, ptr %i.f, align 8, !tbaa !76
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 656), align 8, !tbaa !90
  call void @rewriteClientCommandArgument(ptr noundef nonnull %0, i32 noundef %i.et, ptr noundef %i.eu) #21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !75
  %i.ew = load i64, ptr %i.c, align 8, !tbaa !75
  %i.ex = call i32 @objectSetLRUOrLFU(ptr noundef nonnull %i.ef, i64 noundef %i.ev, i64 noundef %i.ew, i64 noundef %.0.lcssa, i32 noundef 1000) #21 ; 0 uses
  %i.ey = load ptr, ptr %i.ba, align 8, !tbaa !55
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ey, ptr noundef nonnull %i.az, ptr noundef null, i32 noundef 1) #21
  %i.ez = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !72
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.az, i32 noundef %i.fb) #21
  br i1 %.0112, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fc = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !72
  call void @notifyKeyspaceEvent(i32 noundef 32768, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.az, i32 noundef %i.fe) #21
  %i.ff = load i64, ptr %i.ef, align 8
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = and i32 %i.fg, 15
  %.not126 = icmp eq i32 %i.bi, %i.fh
  br i1 %.not126, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fi = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 72
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !72
  call void @notifyKeyspaceEvent(i32 noundef 65536, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.az, i32 noundef %i.fk) #21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.au
  %i.fl = load ptr, ptr @shared, align 8, !tbaa !88
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.fl) #21
  %i.fm = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !87
  %i.fn = add nsw i64 %i.fm, 1
  store i64 %i.fn, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !87
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ao, %bb.ax, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.j, %bb.l, %bb.g, %bb.m, %bb.p, %bb.r, %verifyDumpPayload.exit.thread, %bb.ay, %.thread138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @getLongLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @LRU_CLOCK() local_unnamed_addr #2

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lookupKeyWrite(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @commandTimeSnapshot() local_unnamed_addr #2

declare void @keyMetaSpecAdd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rdbLoadType(ptr noundef) local_unnamed_addr #2

declare i32 @rdbResolveKeyType(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rdbLoadObject(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @keyMetaSpecCleanup(ptr noundef) local_unnamed_addr #2

declare i32 @dbDelete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @checkAlreadyExpired(i64 noundef) local_unnamed_addr #2

declare void @rewriteClientCommandVector(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @decrRefCount(ptr noundef) local_unnamed_addr #2

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dbAddInternal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @hashTypeGetMinExpire(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @estoreAdd(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #2

declare ptr @createStringObjectFromLongLong(i64 noundef) local_unnamed_addr #2

declare void @rewriteClientCommandArgument(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @objectSetLRUOrLFU(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @migrateGetSocket(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsempty() #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !13 ; 2 uses
  %i.e = and i8 %.val.i, 7
  switch i8 %i.e, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i8 %.val.i, 3
  %i.g = zext nneg i8 %i.f to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.l = load i16, ptr %i.k, align 1, !tbaa !52
  %i.m = zext i16 %i.l to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.o = load i32, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i32 %i.o to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 -17
  %i.r = load i64, ptr %i.q, align 1, !tbaa !50
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ 0, %bb.a ]
  %i.s = tail call ptr @sdscatlen(ptr noundef %i.a, ptr noundef nonnull %i.c, i64 noundef %.0.i) #21
  %i.t = tail call ptr @sdscatlen(ptr noundef %i.s, ptr noundef nonnull @.str.18, i64 noundef 1) #21
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77   ; 6 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %.val.i33 = load i8, ptr %i.w, align 1, !tbaa !13 ; 2 uses
  %i.x = and i8 %.val.i33, 7
  switch i8 %i.x, label %sdslen.exit35 [
end_hunk_0
