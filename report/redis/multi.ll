inline.NumInlined: 13
inline.NumDeleted: 6
begin_hunk_0_@unwatchAllKeys:bb.a

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8156), align 4, !tbaa !70
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8156), align 4, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @flagTransaction(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = and i64 %i.b, 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %i.b, 4096
  store i64 %i.d, ptr %i.a, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @multiCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = and i64 %i.b, 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = or disjoint i64 %i.b, 8
  store i64 %i.d, ptr %i.a, align 8, !tbaa !44
  %i.e = load ptr, ptr @shared, align 8, !tbaa !91
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.e) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @discardCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  %i.c = and i64 %i.b, 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i, label %discardTransaction.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  tail call void @freePendingCommand(ptr noundef nonnull %0, ptr noundef %i.j) #10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !40
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %discardTransaction.exit, !llvm.loop !42

discardTransaction.exit:                          ; preds = %.lr.ph.i.i, %bb.c
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !13
  tail call void @zfree(ptr noundef %i.n) #10
  store ptr null, ptr %i.d, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.o, align 8, !tbaa !39
  %i.p = load i64, ptr %i.a, align 8, !tbaa !44
  %i.q = and i64 %i.p, -4137
  store i64 %i.q, ptr %i.a, align 8, !tbaa !44
  tail call void @unwatchAllKeys(ptr noundef nonnull %0)
  %i.r = load ptr, ptr @shared, align 8, !tbaa !91
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.r) #10
  br label %bb.d

bb.d:                                             ; preds = %discardTransaction.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @execCommandAbort(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i, label %discardTransaction.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  tail call void @freePendingCommand(ptr noundef nonnull %0, ptr noundef %i.g) #10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !40
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %discardTransaction.exit, !llvm.loop !42

discardTransaction.exit:                          ; preds = %.lr.ph.i.i, %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void @zfree(ptr noundef %i.k) #10
  store ptr null, ptr %i.a, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.l, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44
  %i.o = and i64 %i.n, -4137
  store i64 %i.o, ptr %i.m, align 8, !tbaa !44
  tail call void @unwatchAllKeys(ptr noundef nonnull %0)
  %i.p = load i8, ptr %1, align 1, !tbaa !93
  %i.q = icmp eq i8 %i.p, 45
  %spec.select.idx = zext i1 %i.q to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %spec.select) #10
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1488), align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53
  tail call void @replicationFeedMonitors(ptr noundef nonnull %0, ptr noundef %i.r, i32 noundef %i.v, ptr noundef %i.x, i32 noundef %i.z) #10
  ret void
}

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @replicationFeedMonitors(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @execCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44
  %i.d = and i64 %i.c, 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #10
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %isWatchedKeyExpired.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @listRewind(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #10
  %i.j = call ptr @listNext(ptr noundef nonnull %1) #10 ; 2 uses
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %isWatchedKeyExpired.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.backedge.i
  %i.k = phi ptr [ %i.p, %.backedge.i ], [ %i.j, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i8, ptr %i.n, align 8
  %.not7.i = trunc i8 %i.o to i1
  br i1 %.not7.i, label %.backedge.i, label %bb.e

.backedge.i:                                      ; preds = %bb.e, %.lr.ph.i
  %i.p = call ptr @listNext(ptr noundef nonnull %1) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %isWatchedKeyExpired.exit.thread, label %.lr.ph.i, !llvm.loop !97

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !98
  %i.w = call i32 @keyIsExpired(ptr noundef %i.r, ptr noundef %i.v, ptr noundef null) #10
  %.not8.i = icmp eq i32 %i.w, 0
  br i1 %.not8.i, label %.backedge.i, label %bb.f

isWatchedKeyExpired.exit.thread:                  ; preds = %.backedge.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %.pre = load i64, ptr %i.b, align 8, !tbaa !44
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.x = load i64, ptr %i.b, align 8, !tbaa !44
  %i.y = or i64 %i.x, 32                          ; 2 uses
  store i64 %i.y, ptr %i.b, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %isWatchedKeyExpired.exit.thread, %bb.f
  %i.z = phi i64 [ %.pre, %isWatchedKeyExpired.exit.thread ], [ %i.y, %bb.f ] ; 4 uses
  %i.aa = and i64 %i.z, 4128
  %.not81 = icmp eq i64 %i.aa, 0
  br i1 %.not81, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = and i64 %i.z, 4096
  %.not85 = icmp eq i64 %i.ab, 0
  br i1 %.not85, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 304), align 8, !tbaa !100
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ac) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 96), i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !102
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ah) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i, label %discardTransaction.exit

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  call void @freePendingCommand(ptr noundef nonnull %0, ptr noundef %i.ao) #10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i.i, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i, label %discardTransaction.exit, !llvm.loop !42

discardTransaction.exit:                          ; preds = %.lr.ph.i.i, %bb.k
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !13
  call void @zfree(ptr noundef %i.as) #10
  store ptr null, ptr %i.ai, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.at, align 8, !tbaa !39
  %i.au = load i64, ptr %i.b, align 8, !tbaa !44
  %i.av = and i64 %i.au, -4137
  store i64 %i.av, ptr %i.b, align 8, !tbaa !44
  call void @unwatchAllKeys(ptr noundef nonnull %0)
  br label %bb.y

bb.l:                                             ; preds = %bb.g
  %i.aw = or i64 %i.z, 2199023255552
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !44
  call void @unwatchAllKeys(ptr noundef nonnull %0)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 220), align 4, !tbaa !103
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !104 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !50
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !51
  %i.bk = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !105
  %.not82 = icmp eq i32 %i.bk, 0
  br i1 %.not82, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load i64, ptr %0, align 8, !tbaa !106
  %i.bm = icmp eq i64 %i.bl, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = phi i1 [ false, %bb.l ], [ %i.bm, %bb.m ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 5 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !40
  %i.bq = sext i32 %i.bp to i64
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.bq) #10
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !40
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.pre97 = load ptr, ptr %i.bh, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.v
  %i.bv = phi ptr [ %.pre97, %.lr.ph ], [ %i.co, %bb.v ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !41 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !107
  store i32 %i.by, ptr %i.bb, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !108
  store ptr %i.ca, ptr %i.ax, align 8, !tbaa !52
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !109
  store i32 %i.cc, ptr %i.az, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !110 ; 2 uses
  store ptr %i.ce, ptr %i.bt, align 8, !tbaa !111
  store ptr %i.ce, ptr %i.bd, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  br i1 %i.bn, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = call i32 @ACLCheckAllPerm(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #10 ; 2 uses
  switch i32 %i.cf, label %bb.s [
    i32 0, label %.thread
    i32 1, label %bb.t
    i32 2, label %bb.q
    i32 4, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s, %bb.r, %bb.q
  %.0 = phi ptr [ @.str.7, %bb.s ], [ @.str.6, %bb.r ], [ @.str.5, %bb.q ], [ @.str.4, %bb.p ]
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !9
  call void @addACLLogEntry(ptr noundef nonnull %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef %i.cg, ptr noundef null, ptr noundef null) #10
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %.0) #10
  br label %bb.v

.thread:                                          ; preds = %bb.o, %bb.p
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ch, ptr %i.bu, align 8, !tbaa !39
  %i.ci = load i64, ptr %0, align 8, !tbaa !106
  %i.cj = icmp eq i64 %i.ci, -1
  %. = select i1 %i.cj, i32 0, i32 3
  call void @call(ptr noundef nonnull %0, i32 noundef %.) #10
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !44
  %i.cl = and i64 %i.ck, 16
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %bb.u, !prof !112

bb.u:                                             ; preds = %.thread
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 229) #10
  call void @abort() #13
  unreachable

bb.v:                                             ; preds = %.thread, %bb.t
  %i.cn = load i32, ptr %i.bb, align 8, !tbaa !53
  %i.co = load ptr, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41 ; 4 uses
  store i32 %i.cn, ptr %i.cq, align 8, !tbaa !107
  %i.cr = load ptr, ptr %i.ax, align 8, !tbaa !52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !108
  %i.ct = load i32, ptr %i.az, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !109
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !104
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = load i32, ptr %i.bo, align 4, !tbaa !40 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !113

._crit_edge.loopexit:                             ; preds = %bb.v
  %i.da = icmp sgt i32 %i.cx, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %.lcssa = phi i1 [ false, %bb.n ], [ %i.da, %._crit_edge.loopexit ]
  %i.db = and i64 %i.z, 2199023255552
  %.not83 = icmp eq i64 %i.db, 0
  br i1 %.not83, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !44
  %i.dd = and i64 %i.dc, -2199023255553
  store i64 %i.dd, ptr %i.b, align 8, !tbaa !44
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !52
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !54
  store i32 %i.bc, ptr %i.bb, align 8, !tbaa !53
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.be, ptr %i.de, align 8, !tbaa !111
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !104
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !51
  br i1 %.lcssa, label %.lr.ph.i.i86, label %discardTransaction.exit89

.lr.ph.i.i86:                                     ; preds = %bb.x, %.lr.ph.i.i86
  %indvars.iv.i.i87 = phi i64 [ %indvars.iv.next.i.i88, %.lr.ph.i.i86 ], [ 0, %bb.x ] ; 2 uses
  %i.df = load ptr, ptr %i.bh, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i.i87
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41
  call void @freePendingCommand(ptr noundef nonnull %0, ptr noundef %i.dh) #10
  %indvars.iv.next.i.i88 = add nuw nsw i64 %indvars.iv.i.i87, 1 ; 2 uses
  %i.di = load i32, ptr %i.bo, align 4, !tbaa !40
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next.i.i88, %i.dj
  br i1 %i.dk, label %.lr.ph.i.i86, label %discardTransaction.exit89, !llvm.loop !42

discardTransaction.exit89:                        ; preds = %.lr.ph.i.i86, %bb.x
  %i.dl = load ptr, ptr %i.bh, align 8, !tbaa !13
  call void @zfree(ptr noundef %i.dl) #10
  store ptr null, ptr %i.bh, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.dm, align 8, !tbaa !39
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !44
  %i.do = and i64 %i.dn, -4137
  store i64 %i.do, ptr %i.b, align 8, !tbaa !44
  call void @unwatchAllKeys(ptr noundef nonnull %0)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 220), align 4, !tbaa !103
  br label %bb.y

bb.y:                                             ; preds = %discardTransaction.exit89, %discardTransaction.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @isWatchedKeyExpired(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @listRewind(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #10
  %i.f = call ptr @listNext(ptr noundef nonnull %1) #10 ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.backedge
  %i.g = phi ptr [ %i.l, %.backedge ], [ %i.f, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i8, ptr %i.j, align 8
  %.not7 = trunc i8 %i.k to i1
  br i1 %.not7, label %.backedge, label %bb.c

.backedge:                                        ; preds = %.lr.ph, %bb.c
  %i.l = call ptr @listNext(ptr noundef nonnull %1) #10 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !97

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98
  %i.s = call i32 @keyIsExpired(ptr noundef %i.n, ptr noundef %i.r, ptr noundef null) #10
  %.not8 = icmp eq i32 %i.s, 0
  br i1 %.not8, label %.backedge, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.backedge, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.0
}

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ACLCheckAllPerm(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @addACLLogEntry(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @call(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @watchForKey(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8156), align 4, !tbaa !70
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8156), align 4, !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @listRewind(ptr noundef nonnull %i.b, ptr noundef nonnull %2) #10
  %i.h = call ptr @listNext(ptr noundef nonnull %2) #10 ; 2 uses
  %.not32 = icmp eq ptr %i.h, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.s = call i32 @equalStringObjects(ptr noundef %1, ptr noundef %i.r) #10
  %.not31 = icmp eq i32 %i.s, 0
  br i1 %.not31, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = call ptr @listNext(ptr noundef nonnull %2) #10 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.y = call ptr @dictFetchValue(ptr noundef %i.x, ptr noundef %1) #10 ; 2 uses
  %.not30 = icmp eq ptr %i.y, null
  br i1 %.not30, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.z = call ptr @listCreate() #10               ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ad = call i32 @dictAdd(ptr noundef %i.ac, ptr noundef %1, ptr noundef %i.z) #10 ; 0 uses
  call void @incrRefCount(ptr noundef %1) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.0 = phi ptr [ %i.y, %._crit_edge ], [ %i.z, %bb.g ] ; 2 uses
  %i.ae = call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #11 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %1, ptr %i.af, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %0, ptr %i.ag, align 8, !tbaa !115
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !95  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !98
  %i.al = call i32 @keyIsExpired(ptr noundef %i.ah, ptr noundef %i.ak, ptr noundef null) #10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.an = trunc i32 %i.al to i8
  %i.ao = load i8, ptr %i.am, align 8
  %i.ap = and i8 %i.an, 1
  %i.aq = and i8 %i.ao, -2
  %i.ar = or disjoint i8 %i.aq, %i.ap
  store i8 %i.ar, ptr %i.am, align 8
  call void @incrRefCount(ptr noundef %1) #10
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.at = call ptr @listAddNodeTail(ptr noundef %i.as, ptr noundef %i.ae) #10 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %.0, ptr %i.au, align 8, !tbaa !59
  call void @listLinkNodeTail(ptr noundef %.0, ptr noundef %i.ae) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @listNext(ptr noundef) local_unnamed_addr #3

declare i32 @equalStringObjects(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dictFetchValue(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @listCreate() local_unnamed_addr #3

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @incrRefCount(ptr noundef) local_unnamed_addr #3

declare i32 @keyIsExpired(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @listUnlinkNode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decrRefCount(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @touchWatchedKey(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = sub i64 0, %i.f
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @dictFetchValue(ptr noundef nonnull %i.b, ptr noundef %1) #10 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @listRewind(ptr noundef nonnull %i.i, ptr noundef nonnull %2) #10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = call ptr @listNext(ptr noundef nonnull %2) #10 ; 2 uses
  %.not2125 = icmp eq ptr %i.k, null
  br i1 %.not2125, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %i.l = phi ptr [ %i.ae, %bb.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8
  %.not22 = trunc i8 %i.n to i1
  br i1 %.not22, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = icmp eq ptr %0, %i.p
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  %i.t = call i32 @equalStringObjects(ptr noundef %1, ptr noundef %i.s) #10
  %.not23 = icmp eq i32 %i.t, 0
  br i1 %.not23, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.v = call ptr @dbFind(ptr noundef %0, ptr noundef %i.u) #10
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.m, align 8
  %i.y = and i8 %i.x, -2
  store i8 %i.y, ptr %i.m, align 8
  br label %bb.i, !llvm.loop !117

bb.h:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !115 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ad = or i64 %i.ac, 32
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !44
  call void @unwatchAllKeys(ptr noundef %i.aa)
  br label %bb.i, !llvm.loop !117

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = call ptr @listNext(ptr noundef nonnull %2) #10 ; 2 uses
  %.not21 = icmp eq ptr %i.ae, null
  br i1 %.not21, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.i, %bb.d, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare ptr @dbFind(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @touchAllWatchedKeysInDb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %4 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = sub i64 0, %i.f
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @dictInitSafeIterator(ptr noundef nonnull %4, ptr noundef nonnull %i.b) #10
  %i.i = call ptr @dictNext(ptr noundef nonnull %4) #10 ; 2 uses
  %.not53 = icmp eq ptr %i.i, null
  br i1 %.not53, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.b
  %.not36 = icmp eq ptr %2, null
  %.not39 = icmp eq ptr %1, null                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %.critedge
  %i.j = phi ptr [ %i.i, %.lr.ph54 ], [ %i.ce, %.critedge ] ; 2 uses
  %i.k = call ptr @dictGetKey(ptr noundef nonnull %i.j) #10 ; 2 uses
  br i1 %.not36, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98   ; 10 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %.val.i = load i8, ptr %i.n, align 1, !tbaa !93 ; 2 uses
  %i.o = and i8 %.val.i, 7
  switch i8 %i.o, label %._crit_edge.thread.i [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = lshr i8 %.val.i, 3
  %i.q = zext nneg i8 %i.p to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !93
  %i.t = zext i8 %i.s to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 -5
  %i.v = load i16, ptr %i.u, align 1, !tbaa !118
  %i.w = zext i16 %i.v to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 -9
  %i.y = load i32, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i32 %i.y to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 -17
  %i.ab = load i64, ptr %i.aa, align 1, !tbaa !116
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.ab, %bb.i ], [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.w, %bb.g ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = trunc i64 %.0.i to i32                  ; 8 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %sdslen.exit
  %wide.trip.count.i = and i64 %.0.i, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !93
  %i.ag = icmp eq i8 %i.af, 123
  br i1 %i.ag, label %._crit_edge.loopexit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !120

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %sdslen.exit
  %.025.lcssa.i = phi i32 [ 0, %sdslen.exit ], [ %i.ah, %._crit_edge.loopexit.i ] ; 4 uses
  %i.ai = icmp eq i32 %.025.lcssa.i, %i.ac
  br i1 %i.ai, label %._crit_edge.thread.i, label %bb.k, !prof !121

._crit_edge.thread.i:                             ; preds = %bb.j, %bb.d, %._crit_edge.i
  %i.aj = phi i32 [ %i.ac, %._crit_edge.i ], [ 0, %bb.d ], [ %i.ac, %bb.j ]
  %i.ak = call zeroext i16 @crc16(ptr noundef nonnull %i.m, i32 noundef %i.aj) #10
  br label %keyHashSlot.exit

bb.k:                                             ; preds = %._crit_edge.i
  %i.al = add nuw nsw i32 %.025.lcssa.i, 1        ; 3 uses
  %i.am = icmp slt i32 %i.al, %i.ac
  br i1 %i.am, label %.lr.ph33.preheader.i, label %._crit_edge34.thread.i

.lr.ph33.preheader.i:                             ; preds = %bb.k
  %i.an = zext i32 %i.al to i64
  br label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %bb.l, %.lr.ph33.preheader.i
  %indvars.iv39.i = phi i64 [ %i.an, %.lr.ph33.preheader.i ], [ %indvars.iv.next40.i, %bb.l ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv39.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !93
  %i.aq = icmp eq i8 %i.ap, 125
  br i1 %i.aq, label %._crit_edge34.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph33.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.ar = trunc nuw i64 %indvars.iv.next40.i to i32
  %i.as = icmp sgt i32 %i.ac, %i.ar
  br i1 %i.as, label %.lr.ph33.i, label %._crit_edge34.thread.i, !llvm.loop !122

._crit_edge34.i:                                  ; preds = %.lr.ph33.i
  %i.at = trunc nuw i64 %indvars.iv39.i to i32    ; 3 uses
  %i.au = icmp eq i32 %i.ac, %i.at
  %i.av = icmp eq i32 %i.al, %i.at
  %or.cond.i = or i1 %i.au, %i.av
  br i1 %or.cond.i, label %._crit_edge34.thread.i, label %bb.m

._crit_edge34.thread.i:                           ; preds = %bb.l, %._crit_edge34.i, %bb.k
  %i.aw = call zeroext i16 @crc16(ptr noundef nonnull %i.m, i32 noundef %i.ac) #10
  br label %keyHashSlot.exit

bb.m:                                             ; preds = %._crit_edge34.i
  %i.ax = zext nneg i32 %.025.lcssa.i to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = xor i32 %.025.lcssa.i, -1
  %i.bb = add nsw i32 %i.at, %i.ba
  %i.bc = call zeroext i16 @crc16(ptr noundef nonnull %i.az, i32 noundef %i.bb) #10
  br label %keyHashSlot.exit

keyHashSlot.exit:                                 ; preds = %._crit_edge.thread.i, %._crit_edge34.thread.i, %bb.m
  %.026.in.in.i = phi i16 [ %i.ak, %._crit_edge.thread.i ], [ %i.aw, %._crit_edge34.thread.i ], [ %i.bc, %bb.m ]
  %.026.in.i = and i16 %.026.in.in.i, 16383
  %.026.i = zext nneg i16 %.026.in.i to i32
  %i.bd = call i32 @slotRangeArrayContains(ptr noundef nonnull %2, i32 noundef %.026.i) #10
  %.not37 = icmp eq i32 %i.bd, 0
  br i1 %.not37, label %.critedge, label %bb.n, !llvm.loop !123

bb.n:                                             ; preds = %keyHashSlot.exit, %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.bg = call ptr @dbFind(ptr noundef %0, ptr noundef %i.bf) #10
  %.not38 = icmp eq ptr %i.bg, null               ; 2 uses
  br i1 %.not38, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %.not39, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.bi = call ptr @dbFind(ptr noundef nonnull %1, ptr noundef %i.bh) #10
  %.not40 = icmp eq ptr %i.bi, null
  br i1 %.not40, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bj = call ptr @dictGetVal(ptr noundef nonnull %i.j) #10 ; 2 uses
  %.not41.not = icmp eq ptr %i.bj, null
  br i1 %.not41.not, label %.critedge, label %bb.r, !llvm.loop !123

bb.r:                                             ; preds = %bb.q
  call void @listRewind(ptr noundef nonnull %i.bj, ptr noundef nonnull %3) #10
  %i.bk = call ptr @listNext(ptr noundef nonnull %3) #10 ; 2 uses
  %.not4252 = icmp eq ptr %i.bk, null
  br i1 %.not4252, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.aa
  %i.bl = phi ptr [ %i.cd, %bb.aa ], [ %i.bk, %bb.r ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 5 uses
  %i.bn = load i8, ptr %i.bm, align 8             ; 2 uses
  %.not43 = trunc i8 %i.bn to i1
  br i1 %.not43, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.lr.ph
  br i1 %.not39, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.bp = call ptr @dbFind(ptr noundef nonnull %1, ptr noundef %i.bo) #10
  %.not46 = icmp eq ptr %i.bp, null
  br i1 %.not46, label %._crit_edge57, label %bb.v

._crit_edge57:                                    ; preds = %bb.t
  %.pre = load i8, ptr %i.bm, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge57, %bb.s
  %i.bq = phi i8 [ %.pre, %._crit_edge57 ], [ %i.bn, %bb.s ]
  %i.br = and i8 %i.bq, -2
  store i8 %i.br, ptr %i.bm, align 8
  br label %bb.aa, !llvm.loop !124

bb.v:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.bt = call i32 @keyIsExpired(ptr noundef nonnull %1, ptr noundef %i.bs, ptr noundef null) #10
  %.not47 = icmp eq i32 %i.bt, 0
  br i1 %.not47, label %bb.z, label %bb.aa, !llvm.loop !124

bb.w:                                             ; preds = %.lr.ph
  br i1 %.not38, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.bv = call i32 @keyIsExpired(ptr noundef %1, ptr noundef %i.bu, ptr noundef null) #10
  %.not44 = icmp eq i32 %i.bv, 0
  br i1 %.not44, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = load i8, ptr %i.bm, align 8
  %i.bx = or i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bm, align 8
  br label %bb.aa, !llvm.loop !124

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !115
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !44
  %i.cc = or i64 %i.cb, 32
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.z, %bb.y, %bb.u
  %i.cd = call ptr @listNext(ptr noundef nonnull %3) #10 ; 2 uses
  %.not42 = icmp eq ptr %i.cd, null
  br i1 %.not42, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.aa, %bb.r, %bb.p, %bb.o, %bb.q, %keyHashSlot.exit
  %i.ce = call ptr @dictNext(ptr noundef nonnull %4) #10 ; 2 uses
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  call void @dictResetIterator(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

declare void @dictInitSafeIterator(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dictNext(ptr noundef) local_unnamed_addr #3

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #3

declare i32 @slotRangeArrayContains(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dictGetVal(ptr noundef) local_unnamed_addr #3

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @watchCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = and i64 %i.b, 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 32
  %.not10 = icmp eq i64 %i.d, 0
  br i1 %.not10, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !53
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @shared, align 8, !tbaa !91
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.i) #10
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  tail call void @watchForKey(ptr noundef nonnull %0, ptr noundef %i.l)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.e, align 8, !tbaa !53
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.e, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.p = load ptr, ptr @shared, align 8, !tbaa !91
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.p) #10
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @unwatchCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @unwatchAllKeys(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  %i.c = and i64 %i.b, -33
  store i64 %i.c, ptr %i.a, align 8, !tbaa !44
  %i.d = load ptr, ptr @shared, align 8, !tbaa !91
  tail call void @addReply(ptr noundef %0, ptr noundef %i.d) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @multiStateMemOverhead(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56
  %i.g = mul i64 %i.f, 80
  %i.h = add i64 %i.g, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, 144
  %i.m = add i64 %i.h, %i.l
  ret i64 %i.m
}

declare void @listLinkNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i16 @crc16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
end_hunk_0
