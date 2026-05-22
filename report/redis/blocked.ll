inline.NumInlined: 23
inline.NumDeleted: 6
begin_hunk_0_@unblockClient:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  tail call void @listDelNode(ptr noundef %i.d, ptr noundef %i.f) #5
  store ptr null, ptr %i.e, align 8, !tbaa !91
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @.str.4) #5
  tail call void @abort() #6
  unreachable

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.g, %bb.f, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %i.i = and i64 %i.h, 134217728
  %.not24 = icmp eq i64 %i.i, 0
  br i1 %.not24, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.l = load i32, ptr %i.a, align 8, !tbaa !13
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 7824), i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !9
  %i.q = and i64 %i.h, -17
  store i64 %i.q, ptr %i.g, align 8, !tbaa !45
  store i32 0, ptr %i.a, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.r, align 8, !tbaa !43
  tail call void @removeClientFromTimeoutTable(ptr noundef nonnull %0) #5
  %.not25 = icmp eq i32 %1, 0
  br i1 %.not25, label %queueClientForReprocessing.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = load i64, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %i.t = and i64 %i.s, 128
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.m, label %queueClientForReprocessing.exit

bb.m:                                             ; preds = %bb.l
  %i.u = or disjoint i64 %i.s, 128
  store i64 %i.u, ptr %i.g, align 8, !tbaa !45
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7872), align 8, !tbaa !82
  %i.w = tail call ptr @listAddNodeTail(ptr noundef %i.v, ptr noundef nonnull %0) #5 ; 0 uses
  br label %queueClientForReprocessing.exit

queueClientForReprocessing.exit:                  ; preds = %bb.m, %bb.l, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unblockClientWaitingData(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !92
  %i.g = sub i64 0, %i.f
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #5
  %i.i = call ptr @dictNext(ptr noundef nonnull %1) #5 ; 2 uses
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.j = phi ptr [ %i.k, %.lr.ph ], [ %i.i, %bb.b ]
  call fastcc void @releaseBlockedEntry(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 0)
  %i.k = call ptr @dictNext(ptr noundef nonnull %1) #5 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @dictResetIterator(ptr noundef nonnull %1) #5
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !40
  call void @dictEmpty(ptr noundef %i.l, ptr noundef null) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  ret void
}

declare void @unblockClientWaitingReplicas(ptr noundef) local_unnamed_addr #1

declare i32 @moduleClientIsBlockedOnKeys(ptr noundef) local_unnamed_addr #1

declare void @unblockClientFromModule(ptr noundef) local_unnamed_addr #1

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @removeClientFromTimeoutTable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @blockedClientMayTimeout(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  switch i32 %i.b, label %bb.c [
    i32 4, label %bb.b
    i32 1, label %bb.d
    i32 6, label %bb.d
    i32 5, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @moduleBlockedClientMayTimeout(ptr noundef nonnull %0) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.c ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @moduleBlockedClientMayTimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @replyToBlockedClientTimedOut(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  switch i32 %i.b, label %bb.j [
    i32 10, label %bb.b
    i32 1, label %bb.c
    i32 6, label %bb.c
    i32 5, label %bb.c
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @shared, align 8, !tbaa !94
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.c) #5
  br label %updateStatsOnUnblock.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @addReplyNullArray(ptr noundef nonnull %0) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69   ; 4 uses
  tail call void @clusterSlotStatsAddCpuDuration(ptr noundef nonnull %0, i64 noundef %i.e) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176 ; 2 uses
  %i.i = load <2 x i64>, ptr %i.h, align 8, !tbaa !71
  %i.j = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.e, i64 0
  %i.k = add nsw <2 x i64> %i.i, %i.j
  store <2 x i64> %i.k, ptr %i.h, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !72
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2536), align 8, !tbaa !73
  %i.p = add nsw i64 %i.o, 1
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2536), align 8, !tbaa !73
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6624), align 8, !tbaa !80
  %.not19.i = icmp eq i32 %i.q, 0
  br i1 %.not19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.s = mul nsw i64 %i.e, 1000
  tail call void @updateCommandLatencyHistogram(ptr noundef nonnull %i.r, i64 noundef %i.s) #5
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.c ]
  tail call void @slowlogPushCurrentCommand(ptr noundef nonnull %0, ptr noundef %i.t, i64 noundef %i.e) #5
  store i64 0, ptr %i.d, align 8, !tbaa !69
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !81
  %or.cond = icmp sgt i64 %i.u, -1
  br i1 %or.cond, label %updateStatsOnUnblock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @latencyAddSample(ptr noundef nonnull @.str.2, i64 noundef 0) #5
  br label %updateStatsOnUnblock.exit

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.w = load i64, ptr %i.v, align 8, !tbaa !42
  %i.x = tail call i32 @replicationCountAcksByOffset(i64 noundef %i.w) #5
  br label %updateStatsOnUnblock.exit.sink.split

bb.h:                                             ; preds = %bb.a
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #5
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7256), align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !42
  %i.ab = icmp sge i64 %i.y, %i.aa
  %i.ac = zext i1 %i.ab to i64
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ac) #5
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !42
  %i.ae = tail call i32 @replicationCountAOFAcksByOffset(i64 noundef %i.ad) #5
  br label %updateStatsOnUnblock.exit.sink.split

bb.i:                                             ; preds = %bb.a
  tail call void @moduleBlockedClientTimedOut(ptr noundef nonnull %0) #5
  br label %updateStatsOnUnblock.exit

bb.j:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 255, ptr noundef nonnull @.str.5) #5
  tail call void @abort() #6
  unreachable

updateStatsOnUnblock.exit.sink.split:             ; preds = %bb.g, %bb.h
  %.sink18 = phi i32 [ %i.ae, %bb.h ], [ %i.x, %bb.g ]
  %1 = sext i32 %.sink18 to i64
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %1) #5
  br label %updateStatsOnUnblock.exit

updateStatsOnUnblock.exit:                        ; preds = %updateStatsOnUnblock.exit.sink.split, %bb.f, %bb.e, %bb.i, %bb.b
  ret void
}

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyNullArray(ptr noundef) local_unnamed_addr #1

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @replicationCountAcksByOffset(i64 noundef) local_unnamed_addr #1

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @replicationCountAOFAcksByOffset(i64 noundef) local_unnamed_addr #1

declare void @moduleBlockedClientTimedOut(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @replyToClientsBlockedOnShutdown() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7860), align 4, !tbaa !9
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !97
  call void @listRewind(ptr noundef %i.c, ptr noundef nonnull %0) #5
  %i.d = call ptr @listNext(ptr noundef nonnull %0) #5 ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %i.e = phi ptr [ %i.o, %bb.e ], [ %i.d, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  %i.j = and i64 %i.i, 16
  %.not6 = icmp eq i64 %i.j, 0
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 592
  %i.l = load i32, ptr %i.k, align 8, !tbaa !13
  %i.m = icmp eq i32 %i.l, 9
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  store i64 0, ptr %i.n, align 8, !tbaa !69
  call void @addReplyError(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.6) #5
  call void @unblockClient(ptr noundef nonnull %i.g, i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %i.o = call ptr @listNext(ptr noundef nonnull %0) #5 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @listNext(ptr noundef) local_unnamed_addr #1

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @disconnectAllBlockedClients() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !97
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %0) #5
  %i.b = call ptr @listNext(ptr noundef nonnull %0) #5 ; 2 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.c = phi ptr [ %i.aj, %bb.h ], [ %i.b, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  %i.h = and i64 %i.g, 16
  %.not12 = icmp eq i64 %i.h, 0
  br i1 %.not12, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13
  switch i32 %i.j, label %bb.g [
    i32 7, label %bb.h
    i32 8, label %bb.h
    i32 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @shared, align 8, !tbaa !94
  call void @addReply(ptr noundef nonnull %i.e, ptr noundef %i.k) #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !69   ; 4 uses
  call void @clusterSlotStatsAddCpuDuration(ptr noundef nonnull %i.e, i64 noundef %i.m) #5
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !71
  %i.r = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.m, i64 0
  %i.s = add nsw <2 x i64> %i.q, %i.r
  store <2 x i64> %i.s, ptr %i.p, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 1016 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !72
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2536), align 8, !tbaa !73
  %i.x = add nsw i64 %i.w, 1
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2536), align 8, !tbaa !73
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6624), align 8, !tbaa !80
  %.not19.i = icmp eq i32 %i.y, 0
  br i1 %.not19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.aa = mul nsw i64 %i.m, 1000
  call void @updateCommandLatencyHistogram(ptr noundef nonnull %i.z, i64 noundef %i.aa) #5
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  call void @slowlogPushCurrentCommand(ptr noundef nonnull %i.e, ptr noundef %i.ab, i64 noundef %i.m) #5
  store i64 0, ptr %i.l, align 8, !tbaa !69
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !81
  %or.cond = icmp sgt i64 %i.ac, -1
  br i1 %or.cond, label %updateStatsOnUnblock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @latencyAddSample(ptr noundef nonnull @.str.2, i64 noundef 0) #5
  br label %updateStatsOnUnblock.exit

updateStatsOnUnblock.exit:                        ; preds = %bb.e, %bb.f
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !45
  br label %unblockClientOnError.exit.sink.split

bb.g:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.7) #5
  call void @updateStatsOnUnblock(ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 0, i32 noundef 1)
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !45  ; 2 uses
  %i.af = and i64 %i.ae, 1073741824
  %.not7.i = icmp eq i64 %i.af, 0
  br i1 %.not7.i, label %unblockClientOnError.exit, label %unblockClientOnError.exit.sink.split

unblockClientOnError.exit.sink.split:             ; preds = %bb.g, %updateStatsOnUnblock.exit
  %.sink15 = phi i64 [ %i.ad, %updateStatsOnUnblock.exit ], [ %i.ae, %bb.g ]
  %i.ag = and i64 %.sink15, -1073741825
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !45
  br label %unblockClientOnError.exit

unblockClientOnError.exit:                        ; preds = %unblockClientOnError.exit.sink.split, %bb.g
  call void @unblockClient(ptr noundef nonnull %i.e, i32 noundef 1)
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !45
  %i.ai = or i64 %i.ah, 64
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %unblockClientOnError.exit, %bb.b, %bb.b
  %i.aj = call ptr @listNext(ptr noundef nonnull %0) #5 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @unblockClientOnError(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull %1) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @updateStatsOnUnblock(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = and i64 %i.b, 1073741824
  %.not7 = icmp eq i64 %i.c, 0
  br i1 %.not7, label %bb.e, label %bb.d
end_hunk_0
