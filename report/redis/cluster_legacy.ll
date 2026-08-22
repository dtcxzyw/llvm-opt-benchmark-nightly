Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster_legacy?download=true
inline.NumInlined: 443
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@clusterHandleConfigEpochCollision:bb.a

bb.i:                                             ; preds = %clusterSaveConfigOrDie.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = load ptr, ptr @myself, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !95
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.66, ptr noundef nonnull %i.l, ptr noundef %i.ae, i64 noundef %i.ah) #30
  br label %bb.j

bb.j:                                             ; preds = %clusterSaveConfigOrDie.exit, %bb.d, %bb.a, %bb.b, %bb.c, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @clusterNodeIsMaster(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !89
  %i.c = and i32 %i.b, 1
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterBlacklistCleanup() local_unnamed_addr #3 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  call void @dictInitSafeIterator(ptr noundef nonnull %0, ptr noundef %i.c) #30
  %i.d = call ptr @dictNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.n, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = call i64 @dictGetUnsignedIntegerVal(ptr noundef nonnull %i.e) #30
  %i.g = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !196
  %i.h = icmp slt i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  %i.l = call ptr @dictGetKey(ptr noundef nonnull %i.e) #30
  %i.m = call i32 @dictDelete(ptr noundef %i.k, ptr noundef %i.l) #30 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.n = call ptr @dictNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !197

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %0) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  ret void
}

declare i64 @dictGetUnsignedIntegerVal(ptr noundef) local_unnamed_addr #2

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterBlacklistAddNode(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call ptr @sdsnewlen(ptr noundef nonnull %i.a, i64 noundef 40) #30 ; 3 uses
  tail call void @clusterBlacklistCleanup()
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = tail call i32 @dictAdd(ptr noundef %i.e, ptr noundef %i.b, ptr noundef null) #30
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @sdsdup(ptr noundef %i.b) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  %i.l = tail call ptr @dictFind(ptr noundef %i.k, ptr noundef %.0) #30
  %i.m = tail call i64 @time(ptr noundef null) #30
  %i.n = add nsw i64 %i.m, 60
  tail call void @dictSetUnsignedIntegerVal(ptr noundef %i.l, i64 noundef %i.n) #30
  tail call void @sdsfree(ptr noundef %.0) #30
  ret void
}

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #2

declare void @dictSetUnsignedIntegerVal(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clusterBlacklistExists(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @sdsnewlen(ptr noundef %0, i64 noundef %1) #30 ; 2 uses
  tail call void @clusterBlacklistCleanup()
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.e = tail call ptr @dictFind(ptr noundef %i.d, ptr noundef %i.a) #30
  %i.f = icmp ne ptr %i.e, null
  %i.g = zext i1 %i.f to i32
  tail call void @sdsfree(ptr noundef %i.a) #30
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local void @markNodeAsFailingIfNeeded(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !121
  %i.d = sdiv i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !89
  %i.g = and i32 %i.f, 12
  %or.cond = icmp eq i32 %i.g, 4
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !154
  %i.k = shl nsw i64 %i.j, 1
  %i.l = tail call i64 @mstime() #30
  call void @listRewind(ptr noundef %i.i, ptr noundef nonnull %1) #30
  %i.m = call ptr @listNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.m, null
  br i1 %.not7.i.i, label %clusterNodeFailureReportsCount.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.n = phi ptr [ %i.u, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !189
  %i.s = sub nsw i64 %i.l, %i.r
  %i.t = icmp sgt i64 %i.s, %i.k
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @listDelNode(ptr noundef %i.i, ptr noundef nonnull %i.n) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.u = call ptr @listNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %clusterNodeFailureReportsCount.exit, label %.lr.ph.i.i, !llvm.loop !190

clusterNodeFailureReportsCount.exit:              ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !105
  %i.y = trunc i64 %i.x to i32
  %i.z = load ptr, ptr @myself, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !89
  %i.ac = and i32 %i.ab, 1
  %spec.select = add nsw i32 %i.ac, %i.y
  %.not13 = icmp sgt i32 %spec.select, %i.d
  br i1 %.not13, label %bb.e, label %bb.k

bb.e:                                             ; preds = %clusterNodeFailureReportsCount.exit
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ae = icmp sgt i32 %i.ad, 2
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull %i.af, ptr noundef %i.ah) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !89
  %i.aj = and i32 %i.ai, -13
  %i.ak = or disjoint i32 %i.aj, 8
  store i32 %i.ak, ptr %i.e, align 8, !tbaa !89
  %i.al = call i64 @mstime() #30
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2224
  store i64 %i.al, ptr %i.am, align 8, !tbaa !90
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = call fastcc ptr @createClusterMsgSendBlock(i32 noundef 3, i32 noundef 2296) ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.an, i64 40, i1 false)
  call void @clusterBroadcastMessage(ptr noundef %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !9  ; 2 uses
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !9
  %i.at = icmp sgt i32 %i.ar, 0
  br i1 %i.at, label %bb.i, label %bb.h, !prof !71

bb.h:                                             ; preds = %bb.g
  call void @_serverAssert(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.18, i32 noundef 1161) #30
  call void @abort() #32
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.au = icmp eq i32 %i.as, 0
  br i1 %i.au, label %bb.j, label %clusterSendFail.exit

bb.j:                                             ; preds = %bb.i
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !61
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.ax = sub i64 %i.aw, %i.av
  store i64 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  call void @zfree(ptr noundef nonnull %i.ao) #30
  br label %clusterSendFail.exit

clusterSendFail.exit:                             ; preds = %bb.i, %bb.j
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 393384 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !67
  %i.bb = or i32 %i.ba, 6
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %clusterNodeFailureReportsCount.exit, %bb.a, %clusterSendFail.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterSendFail(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc ptr @createClusterMsgSendBlock(i32 noundef 3, i32 noundef 2296) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 1 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @clusterBroadcastMessage(ptr noundef %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !9
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.18, i32 noundef 1161) #30
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.d, label %clusterMsgSendBlockDecrRefCount.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !61
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.j = sub i64 %i.i, %i.h
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  tail call void @zfree(ptr noundef nonnull %i.a) #30
  br label %clusterMsgSendBlockDecrRefCount.exit

clusterMsgSendBlockDecrRefCount.exit:             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clearNodeFailureIfNeeded(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @mstime() #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !89   ; 4 uses
  %i.d = and i32 %i.c, 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !96

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.18, i32 noundef 1942) #30
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 2
  %.not13 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2164
  %i.g = load i32, ptr %i.f, align 4, !tbaa !161
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.j = icmp sgt i32 %i.i, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = select i1 %.not13, ptr @.str.71, ptr @.str.70
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.k, ptr noundef %i.m, ptr noundef nonnull %i.n) #30
  %.pre = load i32, ptr %i.b, align 8, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = phi i32 [ %i.c, %bb.e ], [ %.pre, %bb.f ]
  %i.p = and i32 %i.o, -9                         ; 2 uses
  store i32 %i.p, ptr %i.b, align 8, !tbaa !89
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 393384 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !67
  %i.t = or i32 %i.s, 6
  store i32 %i.t, ptr %i.r, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.u = phi i32 [ %i.p, %bb.g ], [ %i.c, %bb.d ] ; 2 uses
  %i.v = and i32 %i.u, 1
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2164
  %i.x = load i32, ptr %i.w, align 4, !tbaa !161
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !90
  %i.ab = sub nsw i64 %i.a, %i.aa
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !154
  %i.ad = shl nsw i64 %i.ac, 1
  %i.ae = icmp sgt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !57
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.ah, ptr noundef %i.aj) #30
  %.pre16 = load i32, ptr %i.b, align 8, !tbaa !89
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ak = phi i32 [ %i.u, %bb.k ], [ %.pre16, %bb.l ]
  %i.al = and i32 %i.ak, -9
  store i32 %i.al, ptr %i.b, align 8, !tbaa !89
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 393384 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !67
  %i.ap = or i32 %i.ao, 6
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !67
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clusterHandshakeInProgress(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %3, ptr noundef %i.c) #30
  %i.d = call ptr @dictNext(ptr noundef nonnull %3) #30 ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.e = phi ptr [ %i.r, %bb.e ], [ %i.d, %bb.a ]
  %i.f = call ptr @dictGetVal(ptr noundef nonnull %i.e) #30 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !89
  %i.i = and i32 %i.h, 32
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !198

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2264
  %i.k = call i32 @strcasecmp(ptr noundef nonnull %i.j, ptr noundef %0) #31
  %.not10 = icmp eq i32 %i.k, 0
  br i1 %.not10, label %bb.c, label %bb.e

end_hunk_0
begin_hunk_1_@clusterProcessGossipSection:bb.a
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.ca = icmp sgt i32 %i.bz, 1
  %or.cond3 = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond3, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 2320
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !57
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.r, ptr noundef %i.cb, ptr noundef nonnull %i.cc, ptr noundef %i.ce) #30
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w, %bb.p, %bb.o
  %i.cf = zext i16 %rev.i125 to i32               ; 2 uses
  %i.cg = and i32 %i.cf, 12
  %.not110.not = icmp eq i32 %i.cg, 0
  br i1 %.not110.not, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.az, i64 2200
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !93
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 2360 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !98 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !154
  %i.cn = shl nsw i64 %i.cm, 1
  %i.co = call i64 @mstime() #30
  call void @listRewind(ptr noundef %i.cl, ptr noundef nonnull %2) #30
  %i.cp = call ptr @listNext(ptr noundef nonnull %2) #30 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.cp, null
  br i1 %.not7.i.i, label %clusterNodeFailureReportsCount.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %bb.ac
  %i.cq = phi ptr [ %i.cx, %bb.ac ], [ %i.cp, %bb.aa ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !184
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !189
  %i.cv = sub nsw i64 %i.co, %i.cu
  %i.cw = icmp sgt i64 %i.cv, %i.cn
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i
  call void @listDelNode(ptr noundef %i.cl, ptr noundef nonnull %i.cq) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i.i
  %i.cx = call ptr @listNext(ptr noundef nonnull %2) #30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i, label %clusterNodeFailureReportsCount.exit, label %.lr.ph.i.i, !llvm.loop !190

clusterNodeFailureReportsCount.exit:              ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cy = load ptr, ptr %i.ck, align 8, !tbaa !98
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !105
  %i.db = and i64 %i.da, 4294967295
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %clusterNodeFailureReportsCount.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %.094157, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !209
  %i.df = call noundef i32 @llvm.bswap.i32(i32 %i.de)
  %i.dg = zext i32 %i.df to i64
  %i.dh = mul nuw nsw i64 %i.dg, 1000             ; 3 uses
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !210
  %i.dj = add nsw i64 %i.di, 500
  %.not111 = icmp sgt i64 %i.dh, %i.dj
  br i1 %.not111, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %i.az, i64 2208 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !94
  %i.dm = icmp sgt i64 %i.dh, %i.dl
  br i1 %i.dm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 %i.dh, ptr %i.dk, align 8, !tbaa !94
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af, %clusterNodeFailureReportsCount.exit, %bb.z, %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.az, i64 88 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !89 ; 2 uses
  %i.dp = and i32 %i.do, 12
  %.not112 = icmp eq i32 %i.dp, 0
  %i.dq = and i32 %i.cf, 76
  %i.dr = icmp ne i32 %i.dq, 0
  %brmerge = or i1 %i.dr, %.not112
  br i1 %brmerge, label %bb.at, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %i.az, i64 2264 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.094157, i64 48 ; 2 uses
  %i.du = call i32 @strcasecmp(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dt) #31
  %.not114 = icmp eq i32 %i.du, 0
  br i1 %.not114, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %i.az, i64 2332
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !64 ; 2 uses
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !13
  %.not115 = icmp eq i32 %i.dx, 0
  br i1 %.not115, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %.094157, i64 100
  %i.dz = load i16, ptr %i.dy, align 4, !tbaa !211
  %rev.i134 = call noundef i16 @llvm.bswap.i16(i16 %i.dz)
  %i.ea = zext i16 %rev.i134 to i32
  %.not116 = icmp eq i32 %i.dw, %i.ea
  br i1 %.not116, label %bb.ak, label %bb.am

.thread:                                          ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %.094157, i64 94
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !207
  %rev.i133 = call noundef i16 @llvm.bswap.i16(i16 %i.ec)
  %i.ed = zext i16 %rev.i133 to i32
  %.not116152 = icmp eq i32 %i.dw, %i.ed
  br i1 %.not116152, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj, %.thread
  %.sink173 = phi i64 [ 100, %.thread ], [ 94, %bb.aj ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.094157, i64 %.sink173
  %.sink171 = load i16, ptr %i.ee, align 2, !tbaa !59
  %rev.i136 = call noundef i16 @llvm.bswap.i16(i16 %.sink171)
  %.in = getelementptr inbounds nuw i8, ptr %i.az, i64 2328
  %i.ef = load i32, ptr %.in, align 8, !tbaa !63
  %i.eg = zext i16 %rev.i136 to i32
  %.not119 = icmp eq i32 %i.ef, %i.eg
  br i1 %.not119, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eh = getelementptr inbounds nuw i8, ptr %i.az, i64 2336
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !87
  %i.ej = getelementptr inbounds nuw i8, ptr %.094157, i64 96
  %i.ek = load i16, ptr %i.ej, align 4, !tbaa !208
  %rev.i137 = call noundef i16 @llvm.bswap.i16(i16 %i.ek)
  %i.el = zext i16 %rev.i137 to i32
  %.not120 = icmp eq i32 %i.ei, %i.el
  br i1 %.not120, label %bb.at, label %bb.am

bb.am:                                            ; preds = %.thread, %bb.al, %bb.ak, %bb.aj, %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.az, i64 2344
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !176 ; 2 uses
  %.not121 = icmp eq ptr %i.en, null
  br i1 %.not121, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @freeClusterLink(ptr noundef nonnull %i.en)
  %.pre = load i32, ptr %i.dn, align 8, !tbaa !89
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.eo = phi i32 [ %.pre, %bb.an ], [ %i.do, %bb.am ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %i.ds, ptr noundef nonnull align 4 dereferenceable(46) %i.dt, i64 46, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.az, i64 2328
  store i32 %storemerge.i, ptr %i.ep, align 8, !tbaa !63
  %i.eq = getelementptr inbounds nuw i8, ptr %i.az, i64 2332
  store i32 %.sink.i, ptr %i.eq, align 4, !tbaa !64
  %i.er = getelementptr inbounds nuw i8, ptr %.094157, i64 96
  %i.es = load i16, ptr %i.er, align 4, !tbaa !208
  %rev.i138 = call noundef i16 @llvm.bswap.i16(i16 %i.es)
  %i.et = zext i16 %rev.i138 to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.az, i64 2336
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !87
  %i.ev = and i32 %i.eo, -65
  store i32 %i.ev, ptr %i.dn, align 8, !tbaa !89
  br label %bb.at

clusterLookupNode.exit131.thread:                 ; preds = %bb.n, %getClientPortFromGossip.exit, %clusterLookupNode.exit131
  %.not103148 = phi i1 [ %.not103, %clusterLookupNode.exit131 ], [ true, %getClientPortFromGossip.exit ], [ true, %bb.n ]
  %or.cond5 = select i1 %.not103148, i1 %i.t, i1 false
  br i1 %or.cond5, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %clusterLookupNode.exit131.thread
  %i.ew = zext i16 %rev.i125 to i32               ; 2 uses
  %i.ex = and i32 %i.ew, 64
  %.not105 = icmp eq i32 %i.ex, 0
  br i1 %.not105, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ey = call ptr @sdsnewlen(ptr noundef nonnull %.094157, i64 noundef 40) #30 ; 2 uses
  call void @clusterBlacklistCleanup()
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !122
  %i.fc = call ptr @dictFind(ptr noundef %i.fb, ptr noundef %i.ey) #30
  %.not155 = icmp eq ptr %i.fc, null
  call void @sdsfree(ptr noundef %i.ey) #30
  br i1 %.not155, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fd = call noalias dereferenceable_or_null(2368) ptr @zmalloc(i64 noundef 2368) #35 ; 18 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fe, ptr noundef nonnull readonly align 2 dereferenceable(40) %.094157, i64 40, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 48 ; 2 uses
  call void @getRandomHexChars(ptr noundef nonnull %i.ff, i64 noundef 40) #30
  %i.fg = call i64 @mstime() #30
  store i64 %i.fg, ptr %i.fd, align 8, !tbaa !97
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 96
  store i64 0, ptr %i.fh, align 8, !tbaa !95
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 88
  store i32 %i.ew, ptr %i.fi, align 8, !tbaa !89
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 104
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 2176
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 2344
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 2264 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %i.fm, i8 0, i64 46, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2068) %i.fj, i8 0, i64 2068, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fk, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  %i.fn = call ptr @sdsempty() #30
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 2312
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !82
  %i.fp = call ptr @sdsempty() #30
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 2320
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !57
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 2328 ; 2 uses
  store i32 0, ptr %i.fr, align 8, !tbaa !63
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 2336 ; 2 uses
  store i32 0, ptr %i.fs, align 8, !tbaa !87
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fd, i64 2332 ; 2 uses
  store i32 0, ptr %i.ft, align 4, !tbaa !64
  %i.fu = call ptr @listCreate() #30              ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fd, i64 2360
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !98
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fd, i64 2232
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, i8 0, i64 32, i1 false)
  store ptr @zfree, ptr %i.fx, align 8, !tbaa !99
  %i.fy = getelementptr inbounds nuw i8, ptr %.094157, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %i.fm, ptr noundef nonnull align 4 dereferenceable(46) %i.fy, i64 46, i1 false)
  store i32 %storemerge.i, ptr %i.fr, align 8, !tbaa !63
  store i32 %.sink.i, ptr %i.ft, align 4, !tbaa !64
  %i.fz = getelementptr inbounds nuw i8, ptr %.094157, i64 96
  %i.ga = load i16, ptr %i.fz, align 4, !tbaa !208
  %rev.i140 = call noundef i16 @llvm.bswap.i16(i16 %i.ga)
  %i.gb = zext i16 %rev.i140 to i32
  store i32 %i.gb, ptr %i.fs, align 8, !tbaa !87
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !81
  %i.gf = call ptr @sdsnewlen(ptr noundef nonnull %i.fe, i64 noundef 40) #30
  %i.gg = call i32 @dictAdd(ptr noundef %i.ge, ptr noundef %i.gf, ptr noundef nonnull %i.fd) #30
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %clusterAddNode.exit, label %bb.as, !prof !71

bb.as:                                            ; preds = %bb.ar
  call void @_serverAssert(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.18, i32 noundef 1540) #30
  call void @abort() #32
  unreachable

clusterAddNode.exit:                              ; preds = %bb.ar
  call void @clusterAddNodeToShard(ptr noundef nonnull %i.ff, ptr noundef nonnull %i.fd)
  br label %bb.at

bb.at:                                            ; preds = %bb.ag, %clusterLookupNode.exit131.thread, %clusterAddNode.exit, %bb.aq, %bb.ap, %bb.al, %bb.ao
  %i.gi = getelementptr inbounds nuw i8, ptr %.094157, i64 104
  %.not102 = icmp eq i16 %i.z, 0
  br i1 %.not102, label %.loopexit, label %bb.j, !llvm.loop !212

.loopexit:                                        ; preds = %bb.at, %.preheader, %bb.f, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @representClusterNodeFlags(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !58 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit [
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
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !58
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !59
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !61
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.p = and i16 %1, 16
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sdslen.exit
  %i.q = tail call ptr @sdscat(ptr noundef nonnull %0, ptr noundef nonnull @.str.312) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sdslen.exit
  %.1 = phi ptr [ %i.q, %bb.g ], [ %0, %sdslen.exit ] ; 2 uses
  %i.r = and i16 %1, 1
  %.not.1 = icmp eq i16 %i.r, 0
  br i1 %.not.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @sdscat(ptr noundef %.1, ptr noundef nonnull @.str.313) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.1 = phi ptr [ %i.s, %bb.i ], [ %.1, %bb.h ] ; 2 uses
  %i.t = and i16 %1, 2
  %.not.2 = icmp eq i16 %i.t, 0
  br i1 %.not.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @sdscat(ptr noundef %.1.1, ptr noundef nonnull @.str.314) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.2 = phi ptr [ %i.u, %bb.k ], [ %.1.1, %bb.j ] ; 2 uses
  %i.v = and i16 %1, 4
  %.not.3 = icmp eq i16 %i.v, 0
  br i1 %.not.3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = tail call ptr @sdscat(ptr noundef %.1.2, ptr noundef nonnull @.str.315) #30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.3 = phi ptr [ %i.w, %bb.m ], [ %.1.2, %bb.l ] ; 2 uses
  %i.x = and i16 %1, 8
  %.not.4 = icmp eq i16 %i.x, 0
  br i1 %.not.4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = tail call ptr @sdscat(ptr noundef %.1.3, ptr noundef nonnull @.str.316) #30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.4 = phi ptr [ %i.y, %bb.o ], [ %.1.3, %bb.n ] ; 2 uses
  %i.z = and i16 %1, 32
  %.not.5 = icmp eq i16 %i.z, 0
  br i1 %.not.5, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call ptr @sdscat(ptr noundef %.1.4, ptr noundef nonnull @.str.317) #30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.5 = phi ptr [ %i.aa, %bb.q ], [ %.1.4, %bb.p ] ; 2 uses
  %i.ab = and i16 %1, 64
  %.not.6 = icmp eq i16 %i.ab, 0
  br i1 %.not.6, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = tail call ptr @sdscat(ptr noundef %.1.5, ptr noundef nonnull @.str.318) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.6 = phi ptr [ %i.ac, %bb.s ], [ %.1.5, %bb.r ] ; 2 uses
  %i.ad = and i16 %1, 512
  %.not.7 = icmp eq i16 %i.ad, 0
  br i1 %.not.7, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = tail call ptr @sdscat(ptr noundef %.1.6, ptr noundef nonnull @.str.319) #30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.7 = phi ptr [ %i.ae, %bb.u ], [ %.1.6, %bb.t ] ; 7 uses
  %i.af = getelementptr i8, ptr %.1.7, i64 -1
  %.val.i14 = load i8, ptr %i.af, align 1, !tbaa !58 ; 2 uses
  %i.ag = and i8 %.val.i14, 7
  switch i8 %i.ag, label %sdslen.exit16 [
    i8 0, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  %i.ah = lshr i8 %.val.i14, 3
  %i.ai = zext nneg i8 %i.ah to i64
  br label %sdslen.exit16

bb.x:                                             ; preds = %bb.v
  %i.aj = getelementptr inbounds i8, ptr %.1.7, i64 -3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !58
  %i.al = zext i8 %i.ak to i64
  br label %sdslen.exit16

bb.y:                                             ; preds = %bb.v
  %i.am = getelementptr inbounds i8, ptr %.1.7, i64 -5
  %i.an = load i16, ptr %i.am, align 1, !tbaa !59
  %i.ao = zext i16 %i.an to i64
  br label %sdslen.exit16

bb.z:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds i8, ptr %.1.7, i64 -9
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !9
  %i.ar = zext i32 %i.aq to i64
  br label %sdslen.exit16

bb.aa:                                            ; preds = %bb.v
  %i.as = getelementptr inbounds i8, ptr %.1.7, i64 -17
  %i.at = load i64, ptr %i.as, align 1, !tbaa !61
  br label %sdslen.exit16

sdslen.exit16:                                    ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i15 = phi i64 [ %i.at, %bb.aa ], [ %i.ai, %bb.w ], [ %i.al, %bb.x ], [ %i.ao, %bb.y ], [ %i.ar, %bb.z ], [ 0, %bb.v ]
  %i.au = icmp eq i64 %.0.i15, %.0.i
  br i1 %i.au, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %sdslen.exit16
  %i.av = tail call ptr @sdscat(ptr noundef nonnull %.1.7, ptr noundef nonnull @.str.159) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %sdslen.exit16
  %.2 = phi ptr [ %i.av, %bb.ab ], [ %.1.7, %sdslen.exit16 ] ; 2 uses
  tail call void @sdsIncrLen(ptr noundef %.2, i64 noundef -1) #30
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @nodeIp2String(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !58
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %0, ptr noundef nonnull align 1 dereferenceable(46) %2, i64 45, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 0, ptr %i.b, align 1, !tbaa !58
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %connAddrPeerName.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i, label %connAddrPeerName.exit.thread, label %connAddrPeerName.exit

connAddrPeerName.exit:                            ; preds = %bb.d
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef 46, ptr noundef null, i32 noundef 1) #30, !inline_history !214
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %connAddrPeerName.exit.thread, label %bb.h

connAddrPeerName.exit.thread:                     ; preds = %bb.c, %bb.d, %connAddrPeerName.exit
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.k = icmp sgt i32 %i.j, 2
  br i1 %i.k, label %bb.h, label %bb.e

bb.e:                                             ; preds = %connAddrPeerName.exit.thread
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !173  ; 3 uses
  %.not9 = icmp eq ptr %i.l, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !150
  %i.p = tail call ptr %i.o(ptr noundef nonnull %i.l) #30, !inline_history !151
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ @.str.82, %bb.e ]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.81, ptr noundef %i.q) #30
  br label %bb.h

bb.h:                                             ; preds = %connAddrPeerName.exit, %bb.g, %connAddrPeerName.exit.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.g ], [ -1, %connAddrPeerName.exit.thread ], [ 0, %connAddrPeerName.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @nodeUpdateAddressIfNeeded(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(46) %i.a, i8 0, i64 46, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2248
  %i.c = load i16, ptr %i.b, align 8, !tbaa !215
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  %i.d = zext i16 %rev.i to i32                   ; 2 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.e, 0                   ; 2 uses
  %..i = select i1 %.not.i, i64 2246, i64 10
  %.17.i = select i1 %.not.i, i64 10, i64 2246
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %..i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !59
  %rev.i9.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.17.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !59
  %rev.i10.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %.sink.i = zext i16 %rev.i9.i to i32            ; 2 uses
  %storemerge.i = zext i16 %rev.i10.i to i32      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2344 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.l = icmp eq ptr %1, %i.k
  br i1 %i.l, label %nodeIp2String.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2168 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !58
  %.not.i30 = icmp eq i8 %i.n, 0
  br i1 %.not.i30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(46) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(46) %i.m, i64 45, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 45
  store i8 0, ptr %i.o, align 1, !tbaa !58
  br label %nodeIp2String.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !173  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %connAddrPeerName.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !213  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i, label %connAddrPeerName.exit.thread.i, label %connAddrPeerName.exit.i

connAddrPeerName.exit.i:                          ; preds = %bb.e
  %i.u = call i32 %i.t(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, i64 noundef 46, ptr noundef null, i32 noundef 1) #30, !inline_history !216
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %connAddrPeerName.exit.thread.i, label %nodeIp2String.exit

connAddrPeerName.exit.thread.i:                   ; preds = %connAddrPeerName.exit.i, %bb.e, %bb.d
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.x = icmp sgt i32 %i.w, 2
  br i1 %i.x, label %nodeIp2String.exit.thread, label %bb.f

bb.f:                                             ; preds = %connAddrPeerName.exit.thread.i
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !173  ; 3 uses
  %.not9.i = icmp eq ptr %i.y, null
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !149
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !150
  %i.ac = call ptr %i.ab(ptr noundef nonnull %i.y) #30, !inline_history !217
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ @.str.82, %bb.f ]
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.81, ptr noundef %i.ad) #30
  br label %nodeIp2String.exit.thread

nodeIp2String.exit:                               ; preds = %connAddrPeerName.exit.i, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2328 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !63
  %i.ag = icmp eq i32 %i.af, %storemerge.i
  br i1 %i.ag, label %bb.i, label %bb.l

bb.i:                                             ; preds = %nodeIp2String.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !87
  %i.aj = icmp eq i32 %i.ai, %i.d
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2332
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !64
  %i.am = icmp eq i32 %i.al, %.sink.i
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.ao = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.an) #31
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %nodeIp2String.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %nodeIp2String.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %i.aq, ptr noundef nonnull align 16 dereferenceable(46) %i.a, i64 46, i1 false)
  store i32 %storemerge.i, ptr %i.ae, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2332
  store i32 %.sink.i, ptr %i.ar, align 4, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2336
  store i32 %i.d, ptr %i.as, align 8, !tbaa !87
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !176 ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @freeClusterLink(ptr noundef nonnull %i.at)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !89
  %i.aw = and i32 %i.av, -65
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !89
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ay = icmp sgt i32 %i.ax, 2
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !13
  %.not.i31 = icmp eq i32 %i.bc, 0
  %.in.v.i = select i1 %.not.i31, i64 2328, i64 2332
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.bd = load i32, ptr %.in.i, align 4, !tbaa !9
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.83, ptr noundef nonnull %i.az, ptr noundef %i.bb, ptr noundef nonnull %i.aq, i32 noundef %i.bd) #30
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.be = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !89
  %i.bh = and i32 %i.bg, 2
  %.not29 = icmp eq i32 %i.bh, 0
  br i1 %.not29, label %nodeIp2String.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 2184
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.bk = icmp eq ptr %i.bj, %0
  br i1 %i.bk, label %bb.r, label %nodeIp2String.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8492), align 4, !tbaa !218
  %.not.i32 = icmp eq i32 %i.bl, 0
  %.in.v.i33 = select i1 %.not.i32, i64 2328, i64 2332
  %.in.i34 = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i33
  %i.bm = load i32, ptr %.in.i34, align 4, !tbaa !9
  call void @replicationSetMaster(ptr noundef nonnull %i.aq, i32 noundef %i.bm) #30
  br label %nodeIp2String.exit.thread

nodeIp2String.exit.thread:                        ; preds = %connAddrPeerName.exit.thread.i, %bb.h, %bb.p, %bb.q, %bb.r, %bb.k, %bb.a
  %.0 = phi i32 [ 0, %bb.k ], [ 0, %bb.a ], [ 1, %bb.p ], [ 1, %bb.r ], [ 1, %bb.q ], [ 0, %bb.h ], [ 0, %connAddrPeerName.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.0
}

declare void @replicationSetMaster(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterUpdateSlotsConfigWith(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16384 x i16], align 16           ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = load ptr, ptr @myself, align 8, !tbaa !54 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !89
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2184
  %.in = select i1 %.not, ptr %i.g, ptr @myself
  %i.h = load ptr, ptr %.in, align 8, !tbaa !54   ; 2 uses
  %i.i = icmp eq ptr %0, %i.c
  br i1 %i.i, label %bb.b, label %.preheader97

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.k = icmp sgt i32 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.84) #30
  br label %.loopexit

.preheader97:                                     ; preds = %bb.a, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %bb.a ] ; 11 uses
  %.056104 = phi ptr [ %.2, %bb.q ], [ null, %bb.a ] ; 7 uses
  %.057103 = phi i32 [ %.259, %bb.q ], [ 0, %bb.a ] ; 6 uses
  %.060102 = phi i32 [ %.161, %bb.q ], [ 0, %bb.a ] ; 3 uses
  %.062101 = phi i32 [ %.264, %bb.q ], [ 0, %bb.a ] ; 10 uses
  %.065100 = phi ptr [ %.267, %bb.q ], [ null, %bb.a ] ; 6 uses
  %i.l = trunc nuw nsw i64 %indvars.iv to i32     ; 6 uses
  %.zext = lshr i64 %indvars.iv, 3
  %i.m = and i64 %.zext, 536870911                ; 5 uses
  %i.n = and i32 %i.l, 7
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !58
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 1, %i.n                  ; 5 uses
  %i.s = and i32 %i.r, %i.q
  %.not85 = icmp eq i32 %i.s, 0
  br i1 %.not85, label %bb.o, label %bb.d

bb.d:                                             ; preds = %.preheader97
  %i.t = add nsw i32 %.060102, 1                  ; 4 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 262192
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 4 uses
  %i.y = icmp eq ptr %i.x, %0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 393584
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.m ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !58
  %i.ac = trunc nuw i32 %i.r to i8
  %i.ad = xor i8 %i.ac, -1
  %i.ae = and i8 %i.ab, %i.ad
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !58
  br label %bb.q

end_hunk_1
begin_hunk_2_@nextPingExt:bb.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @writePingExt(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  %.not = icmp eq ptr %0, null                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [104 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %.047 = select i1 %.not, ptr null, ptr %i.c     ; 2 uses
  %i.d = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2312 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 19 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !58 ; 5 uses
  %i.h = and i8 %.val.i, 7                        ; 3 uses
  switch i8 %i.h, label %getHostnamePingExtSize.exit76 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i8 %.val.i, 3
  %i.j = zext nneg i8 %i.i to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !58
  %i.m = zext i8 %i.l to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.o = load i16, ptr %i.n, align 1, !tbaa !59
  %i.p = zext i16 %i.o to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.r = load i32, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i32 %i.r to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.u = load i64, ptr %i.t, align 1, !tbaa !61
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.u, %bb.f ], [ %i.j, %bb.b ], [ %i.m, %bb.c ], [ %i.p, %bb.d ], [ %i.s, %bb.e ]
  %.not56 = icmp eq i64 %.0.i, 0
  br i1 %.not56, label %getHostnamePingExtSize.exit76, label %bb.g

bb.g:                                             ; preds = %sdslen.exit
  br i1 %.not, label %bb.y, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.h, label %default.unreachable107 [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = lshr i8 %.val.i, 3
  %i.w = zext nneg i8 %i.v to i64
  br label %sdslen.exit.i

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !58
  %i.z = zext i8 %i.y to i64
  br label %sdslen.exit.i

bb.k:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !59
  %i.ac = zext i16 %i.ab to i64
  br label %sdslen.exit.i

bb.l:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !9
  %i.af = zext i32 %i.ae to i64
  br label %sdslen.exit.i

bb.m:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.ah = load i64, ptr %i.ag, align 1, !tbaa !61
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.ah, %bb.m ], [ %i.w, %bb.i ], [ %i.z, %bb.j ], [ %i.ac, %bb.k ], [ %i.af, %bb.l ]
  %i.ai = icmp eq i64 %.0.i.i, 0
  br i1 %i.ai, label %getHostnamePingExtSize.exit, label %bb.n

bb.n:                                             ; preds = %sdslen.exit.i
  switch i8 %i.h, label %default.unreachable.i [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.aj = lshr i8 %.val.i, 3
  %i.ak = zext nneg i8 %i.aj to i64
  br label %sdslen.exit3.i

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !58
  %i.an = zext i8 %i.am to i64
  br label %sdslen.exit3.i

bb.q:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !59
  %i.aq = zext i16 %i.ap to i64
  br label %sdslen.exit3.i

bb.r:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !9
  %i.at = zext i32 %i.as to i64
  br label %sdslen.exit3.i

bb.s:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.av = load i64, ptr %i.au, align 1, !tbaa !61
  br label %sdslen.exit3.i

default.unreachable.i:                            ; preds = %bb.n
  unreachable

sdslen.exit3.i:                                   ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i2.i = phi i64 [ %i.av, %bb.s ], [ %i.ak, %bb.o ], [ %i.an, %bb.p ], [ %i.aq, %bb.q ], [ %i.at, %bb.r ]
  %i.aw = trunc i64 %.0.i2.i to i32
  %i.ax = and i32 %i.aw, -8
  %i.ay = add i32 %i.ax, 16
  br label %getHostnamePingExtSize.exit

default.unreachable107:                           ; preds = %bb.h
  unreachable

getHostnamePingExtSize.exit:                      ; preds = %sdslen.exit.i, %sdslen.exit3.i
  %.0.i65 = phi i32 [ %i.ay, %sdslen.exit3.i ], [ 0, %sdslen.exit.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 0, ptr %i.az, align 4, !tbaa !59
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %.0.i65)
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i66 = load i8, ptr %i.g, align 1, !tbaa !58 ; 2 uses
  %i.bc = and i8 %.val.i66, 7
  switch i8 %i.bc, label %sdslen.exit68 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.t:                                             ; preds = %getHostnamePingExtSize.exit
  %i.bd = lshr i8 %.val.i66, 3
  %i.be = zext nneg i8 %i.bd to i64
  br label %sdslen.exit68

bb.u:                                             ; preds = %getHostnamePingExtSize.exit
  %i.bf = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !58
  %i.bh = zext i8 %i.bg to i64
  br label %sdslen.exit68

bb.v:                                             ; preds = %getHostnamePingExtSize.exit
  %i.bi = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !59
  %i.bk = zext i16 %i.bj to i64
  br label %sdslen.exit68

bb.w:                                             ; preds = %getHostnamePingExtSize.exit
  %i.bl = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !9
  %i.bn = zext i32 %i.bm to i64
  br label %sdslen.exit68

bb.x:                                             ; preds = %getHostnamePingExtSize.exit
  %i.bo = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.bp = load i64, ptr %i.bo, align 1, !tbaa !61
  br label %sdslen.exit68

sdslen.exit68:                                    ; preds = %getHostnamePingExtSize.exit, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i67 = phi i64 [ %i.bp, %bb.x ], [ %i.be, %bb.t ], [ %i.bh, %bb.u ], [ %i.bk, %bb.v ], [ %i.bn, %bb.w ], [ 0, %getHostnamePingExtSize.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 1 %i.f, i64 %.0.i67, i1 false)
  %i.bq = zext i32 %.0.i65 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !82  ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -1
  %.val.i.i69.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %sdslen.exit68, %bb.g
  %.val.i.i69 = phi i8 [ %.val.i.i69.pre, %sdslen.exit68 ], [ %.val.i, %bb.g ] ; 3 uses
  %i.bs = phi ptr [ %.pre, %sdslen.exit68 ], [ %i.f, %bb.g ] ; 8 uses
  %.148 = phi ptr [ %i.br, %sdslen.exit68 ], [ null, %bb.g ] ; 3 uses
  %i.bt = and i8 %.val.i.i69, 7                   ; 2 uses
  switch i8 %i.bt, label %getHostnamePingExtSize.exit76 [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.bu = lshr i8 %.val.i.i69, 3
  %i.bv = zext nneg i8 %i.bu to i64
  br label %sdslen.exit.i70

bb.aa:                                            ; preds = %bb.y
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 -3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !58
  %i.by = zext i8 %i.bx to i64
  br label %sdslen.exit.i70

bb.ab:                                            ; preds = %bb.y
  %i.bz = getelementptr inbounds i8, ptr %i.bs, i64 -5
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !59
  %i.cb = zext i16 %i.ca to i64
  br label %sdslen.exit.i70

bb.ac:                                            ; preds = %bb.y
  %i.cc = getelementptr inbounds i8, ptr %i.bs, i64 -9
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !9
  %i.ce = zext i32 %i.cd to i64
  br label %sdslen.exit.i70

bb.ad:                                            ; preds = %bb.y
  %i.cf = getelementptr inbounds i8, ptr %i.bs, i64 -17
  %i.cg = load i64, ptr %i.cf, align 1, !tbaa !61
  br label %sdslen.exit.i70

sdslen.exit.i70:                                  ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.0.i.i71 = phi i64 [ %i.cg, %bb.ad ], [ %i.bv, %bb.z ], [ %i.by, %bb.aa ], [ %i.cb, %bb.ab ], [ %i.ce, %bb.ac ]
  %i.ch = icmp eq i64 %.0.i.i71, 0
  br i1 %i.ch, label %getHostnamePingExtSize.exit76, label %bb.ae

bb.ae:                                            ; preds = %sdslen.exit.i70
  switch i8 %i.bt, label %default.unreachable.i75 [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ci = lshr i8 %.val.i.i69, 3
  %i.cj = zext nneg i8 %i.ci to i64
  br label %sdslen.exit3.i72

bb.ag:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds i8, ptr %i.bs, i64 -3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !58
  %i.cm = zext i8 %i.cl to i64
  br label %sdslen.exit3.i72

bb.ah:                                            ; preds = %bb.ae
  %i.cn = getelementptr inbounds i8, ptr %i.bs, i64 -5
  %i.co = load i16, ptr %i.cn, align 1, !tbaa !59
  %i.cp = zext i16 %i.co to i64
  br label %sdslen.exit3.i72

bb.ai:                                            ; preds = %bb.ae
  %i.cq = getelementptr inbounds i8, ptr %i.bs, i64 -9
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !9
  %i.cs = zext i32 %i.cr to i64
  br label %sdslen.exit3.i72

bb.aj:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds i8, ptr %i.bs, i64 -17
  %i.cu = load i64, ptr %i.ct, align 1, !tbaa !61
  br label %sdslen.exit3.i72

default.unreachable.i75:                          ; preds = %bb.ae
  unreachable

sdslen.exit3.i72:                                 ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.0.i2.i73 = phi i64 [ %i.cu, %bb.aj ], [ %i.cj, %bb.af ], [ %i.cm, %bb.ag ], [ %i.cp, %bb.ah ], [ %i.cs, %bb.ai ]
  %i.cv = trunc i64 %.0.i2.i73 to i32
  %i.cw = and i32 %i.cv, -8
  %i.cx = add i32 %i.cw, 16
  br label %getHostnamePingExtSize.exit76

getHostnamePingExtSize.exit76:                    ; preds = %bb.a, %sdslen.exit3.i72, %sdslen.exit.i70, %bb.y, %sdslen.exit
  %.249 = phi ptr [ %.148, %sdslen.exit3.i72 ], [ %.047, %sdslen.exit ], [ %.148, %bb.y ], [ %.148, %sdslen.exit.i70 ], [ %.047, %bb.a ] ; 7 uses
  %.043 = phi i32 [ %i.cx, %sdslen.exit3.i72 ], [ 0, %sdslen.exit ], [ 0, %bb.y ], [ 0, %sdslen.exit.i70 ], [ 0, %bb.a ] ; 3 uses
  %.0 = phi i16 [ 1, %sdslen.exit3.i72 ], [ 0, %sdslen.exit ], [ 1, %bb.y ], [ 1, %sdslen.exit.i70 ], [ 0, %bb.a ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 2320 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !57 ; 19 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 -1     ; 2 uses
  %.val.i77 = load i8, ptr %i.da, align 1, !tbaa !58 ; 5 uses
  %i.db = and i8 %.val.i77, 7                     ; 3 uses
  switch i8 %i.db, label %sdslen.exit79.thread [
    i8 0, label %bb.ak
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.an
    i8 4, label %bb.ao
  ]

bb.ak:                                            ; preds = %getHostnamePingExtSize.exit76
  %i.dc = lshr i8 %.val.i77, 3
  %i.dd = zext nneg i8 %i.dc to i64
  br label %sdslen.exit79

bb.al:                                            ; preds = %getHostnamePingExtSize.exit76
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 -3
  %i.df = load i8, ptr %i.de, align 1, !tbaa !58
  %i.dg = zext i8 %i.df to i64
  br label %sdslen.exit79

bb.am:                                            ; preds = %getHostnamePingExtSize.exit76
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 -5
  %i.di = load i16, ptr %i.dh, align 1, !tbaa !59
  %i.dj = zext i16 %i.di to i64
  br label %sdslen.exit79

bb.an:                                            ; preds = %getHostnamePingExtSize.exit76
  %i.dk = getelementptr inbounds i8, ptr %i.cz, i64 -9
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !9
  %i.dm = zext i32 %i.dl to i64
  br label %sdslen.exit79

bb.ao:                                            ; preds = %getHostnamePingExtSize.exit76
  %i.dn = getelementptr inbounds i8, ptr %i.cz, i64 -17
  %i.do = load i64, ptr %i.dn, align 1, !tbaa !61
  br label %sdslen.exit79

sdslen.exit79:                                    ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.0.i78 = phi i64 [ %i.do, %bb.ao ], [ %i.dd, %bb.ak ], [ %i.dg, %bb.al ], [ %i.dj, %bb.am ], [ %i.dm, %bb.an ]
  %.not58 = icmp eq i64 %.0.i78, 0
  br i1 %.not58, label %sdslen.exit79.thread, label %bb.ap

bb.ap:                                            ; preds = %sdslen.exit79
  %.not59 = icmp eq ptr %.249, null
  br i1 %.not59, label %bb.bh, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  switch i8 %i.db, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
    i8 4, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.dp = lshr i8 %.val.i77, 3
  %i.dq = zext nneg i8 %i.dp to i64
  br label %sdslen.exit.i81

bb.as:                                            ; preds = %bb.aq
  %i.dr = getelementptr inbounds i8, ptr %i.cz, i64 -3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !58
  %i.dt = zext i8 %i.ds to i64
  br label %sdslen.exit.i81

bb.at:                                            ; preds = %bb.aq
  %i.du = getelementptr inbounds i8, ptr %i.cz, i64 -5
  %i.dv = load i16, ptr %i.du, align 1, !tbaa !59
  %i.dw = zext i16 %i.dv to i64
  br label %sdslen.exit.i81

bb.au:                                            ; preds = %bb.aq
  %i.dx = getelementptr inbounds i8, ptr %i.cz, i64 -9
  %i.dy = load i32, ptr %i.dx, align 1, !tbaa !9
  %i.dz = zext i32 %i.dy to i64
  br label %sdslen.exit.i81

bb.av:                                            ; preds = %bb.aq
  %i.ea = getelementptr inbounds i8, ptr %i.cz, i64 -17
  %i.eb = load i64, ptr %i.ea, align 1, !tbaa !61
  br label %sdslen.exit.i81

sdslen.exit.i81:                                  ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %.0.i.i82 = phi i64 [ %i.eb, %bb.av ], [ %i.dq, %bb.ar ], [ %i.dt, %bb.as ], [ %i.dw, %bb.at ], [ %i.dz, %bb.au ]
  %i.ec = icmp eq i64 %.0.i.i82, 0
  br i1 %i.ec, label %getHumanNodenamePingExtSize.exit, label %bb.aw

bb.aw:                                            ; preds = %sdslen.exit.i81
  switch i8 %i.db, label %default.unreachable.i86 [
    i8 0, label %bb.ax
    i8 1, label %bb.ay
    i8 2, label %bb.az
    i8 3, label %bb.ba
    i8 4, label %bb.bb
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ed = lshr i8 %.val.i77, 3
  %i.ee = zext nneg i8 %i.ed to i64
  br label %sdslen.exit3.i83

bb.ay:                                            ; preds = %bb.aw
  %i.ef = getelementptr inbounds i8, ptr %i.cz, i64 -3
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !58
  %i.eh = zext i8 %i.eg to i64
  br label %sdslen.exit3.i83

bb.az:                                            ; preds = %bb.aw
  %i.ei = getelementptr inbounds i8, ptr %i.cz, i64 -5
  %i.ej = load i16, ptr %i.ei, align 1, !tbaa !59
  %i.ek = zext i16 %i.ej to i64
  br label %sdslen.exit3.i83

bb.ba:                                            ; preds = %bb.aw
  %i.el = getelementptr inbounds i8, ptr %i.cz, i64 -9
  %i.em = load i32, ptr %i.el, align 1, !tbaa !9
  %i.en = zext i32 %i.em to i64
  br label %sdslen.exit3.i83

bb.bb:                                            ; preds = %bb.aw
  %i.eo = getelementptr inbounds i8, ptr %i.cz, i64 -17
  %i.ep = load i64, ptr %i.eo, align 1, !tbaa !61
  br label %sdslen.exit3.i83

default.unreachable.i86:                          ; preds = %bb.aw
  unreachable

sdslen.exit3.i83:                                 ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax
  %.0.i2.i84 = phi i64 [ %i.ep, %bb.bb ], [ %i.ee, %bb.ax ], [ %i.eh, %bb.ay ], [ %i.ek, %bb.az ], [ %i.en, %bb.ba ]
  %i.eq = trunc i64 %.0.i2.i84 to i32
  %i.er = and i32 %i.eq, -8
  %i.es = add i32 %i.er, 16
  br label %getHumanNodenamePingExtSize.exit

default.unreachable:                              ; preds = %bb.aq
  unreachable

getHumanNodenamePingExtSize.exit:                 ; preds = %sdslen.exit.i81, %sdslen.exit3.i83
  %.0.i85 = phi i32 [ %i.es, %sdslen.exit3.i83 ], [ 0, %sdslen.exit.i81 ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.249, i64 4
  store i16 256, ptr %i.et, align 4, !tbaa !59
  %i.eu = tail call noundef i32 @llvm.bswap.i32(i32 %.0.i85)
  store i32 %i.eu, ptr %.249, align 8, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %.249, i64 8
  %.val.i87 = load i8, ptr %i.da, align 1, !tbaa !58 ; 2 uses
  %i.ew = and i8 %.val.i87, 7
  switch i8 %i.ew, label %sdslen.exit89 [
    i8 0, label %bb.bc
    i8 1, label %bb.bd
    i8 2, label %bb.be
    i8 3, label %bb.bf
    i8 4, label %bb.bg
  ]

bb.bc:                                            ; preds = %getHumanNodenamePingExtSize.exit
  %i.ex = lshr i8 %.val.i87, 3
  %i.ey = zext nneg i8 %i.ex to i64
  br label %sdslen.exit89

bb.bd:                                            ; preds = %getHumanNodenamePingExtSize.exit
  %i.ez = getelementptr inbounds i8, ptr %i.cz, i64 -3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !58
  %i.fb = zext i8 %i.fa to i64
  br label %sdslen.exit89

bb.be:                                            ; preds = %getHumanNodenamePingExtSize.exit
  %i.fc = getelementptr inbounds i8, ptr %i.cz, i64 -5
  %i.fd = load i16, ptr %i.fc, align 1, !tbaa !59
  %i.fe = zext i16 %i.fd to i64
  br label %sdslen.exit89

bb.bf:                                            ; preds = %getHumanNodenamePingExtSize.exit
  %i.ff = getelementptr inbounds i8, ptr %i.cz, i64 -9
  %i.fg = load i32, ptr %i.ff, align 1, !tbaa !9
  %i.fh = zext i32 %i.fg to i64
  br label %sdslen.exit89

bb.bg:                                            ; preds = %getHumanNodenamePingExtSize.exit
  %i.fi = getelementptr inbounds i8, ptr %i.cz, i64 -17
  %i.fj = load i64, ptr %i.fi, align 1, !tbaa !61
  br label %sdslen.exit89

sdslen.exit89:                                    ; preds = %getHumanNodenamePingExtSize.exit, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg
  %.0.i88 = phi i64 [ %i.fj, %bb.bg ], [ %i.ey, %bb.bc ], [ %i.fb, %bb.bd ], [ %i.fe, %bb.be ], [ %i.fh, %bb.bf ], [ 0, %getHumanNodenamePingExtSize.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr nonnull align 1 %i.cz, i64 %.0.i88, i1 false)
  %i.fk = zext i32 %.0.i85 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.249, i64 %i.fk
  %.pre123 = load ptr, ptr %i.cy, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert124 = getelementptr i8, ptr %.pre123, i64 -1
  %.val.i.i90.pre = load i8, ptr %.phi.trans.insert124, align 1, !tbaa !58
  br label %bb.bh

bb.bh:                                            ; preds = %sdslen.exit89, %bb.ap
  %.val.i.i90 = phi i8 [ %.val.i.i90.pre, %sdslen.exit89 ], [ %.val.i77, %bb.ap ] ; 3 uses
  %i.fm = phi ptr [ %.pre123, %sdslen.exit89 ], [ %i.cz, %bb.ap ] ; 8 uses
  %.350 = phi ptr [ %i.fl, %sdslen.exit89 ], [ null, %bb.ap ]
  %i.fn = and i8 %.val.i.i90, 7                   ; 2 uses
  switch i8 %i.fn, label %getHumanNodenamePingExtSize.exit97 [
    i8 0, label %bb.bi
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bl
    i8 4, label %bb.bm
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fo = lshr i8 %.val.i.i90, 3
  %i.fp = zext nneg i8 %i.fo to i64
  br label %sdslen.exit.i91

bb.bj:                                            ; preds = %bb.bh
  %i.fq = getelementptr inbounds i8, ptr %i.fm, i64 -3
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !58
  %i.fs = zext i8 %i.fr to i64
  br label %sdslen.exit.i91

bb.bk:                                            ; preds = %bb.bh
  %i.ft = getelementptr inbounds i8, ptr %i.fm, i64 -5
  %i.fu = load i16, ptr %i.ft, align 1, !tbaa !59
  %i.fv = zext i16 %i.fu to i64
  br label %sdslen.exit.i91

bb.bl:                                            ; preds = %bb.bh
  %i.fw = getelementptr inbounds i8, ptr %i.fm, i64 -9
  %i.fx = load i32, ptr %i.fw, align 1, !tbaa !9
  %i.fy = zext i32 %i.fx to i64
  br label %sdslen.exit.i91

bb.bm:                                            ; preds = %bb.bh
  %i.fz = getelementptr inbounds i8, ptr %i.fm, i64 -17
  %i.ga = load i64, ptr %i.fz, align 1, !tbaa !61
  br label %sdslen.exit.i91

sdslen.exit.i91:                                  ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %.0.i.i92 = phi i64 [ %i.ga, %bb.bm ], [ %i.fp, %bb.bi ], [ %i.fs, %bb.bj ], [ %i.fv, %bb.bk ], [ %i.fy, %bb.bl ]
  %i.gb = icmp eq i64 %.0.i.i92, 0
  br i1 %i.gb, label %getHumanNodenamePingExtSize.exit97, label %bb.bn

bb.bn:                                            ; preds = %sdslen.exit.i91
  switch i8 %i.fn, label %default.unreachable.i96 [
    i8 0, label %bb.bo
    i8 1, label %bb.bp
    i8 2, label %bb.bq
    i8 3, label %bb.br
    i8 4, label %bb.bs
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.gc = lshr i8 %.val.i.i90, 3
  %i.gd = zext nneg i8 %i.gc to i64
  br label %sdslen.exit3.i93

bb.bp:                                            ; preds = %bb.bn
  %i.ge = getelementptr inbounds i8, ptr %i.fm, i64 -3
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !58
  %i.gg = zext i8 %i.gf to i64
  br label %sdslen.exit3.i93

bb.bq:                                            ; preds = %bb.bn
  %i.gh = getelementptr inbounds i8, ptr %i.fm, i64 -5
  %i.gi = load i16, ptr %i.gh, align 1, !tbaa !59
  %i.gj = zext i16 %i.gi to i64
  br label %sdslen.exit3.i93

bb.br:                                            ; preds = %bb.bn
  %i.gk = getelementptr inbounds i8, ptr %i.fm, i64 -9
  %i.gl = load i32, ptr %i.gk, align 1, !tbaa !9
  %i.gm = zext i32 %i.gl to i64
  br label %sdslen.exit3.i93

bb.bs:                                            ; preds = %bb.bn
  %i.gn = getelementptr inbounds i8, ptr %i.fm, i64 -17
  %i.go = load i64, ptr %i.gn, align 1, !tbaa !61
  br label %sdslen.exit3.i93

default.unreachable.i96:                          ; preds = %bb.bn
  unreachable

sdslen.exit3.i93:                                 ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.0.i2.i94 = phi i64 [ %i.go, %bb.bs ], [ %i.gd, %bb.bo ], [ %i.gg, %bb.bp ], [ %i.gj, %bb.bq ], [ %i.gm, %bb.br ]
  %i.gp = trunc i64 %.0.i2.i94 to i32
  %i.gq = and i32 %i.gp, -8
  %i.gr = add i32 %i.gq, 16
  br label %getHumanNodenamePingExtSize.exit97

getHumanNodenamePingExtSize.exit97:               ; preds = %bb.bh, %sdslen.exit.i91, %sdslen.exit3.i93
  %.0.i95 = phi i32 [ %i.gr, %sdslen.exit3.i93 ], [ 0, %sdslen.exit.i91 ], [ 0, %bb.bh ]
  %i.gs = add i32 %.0.i95, %.043
  %i.gt = add nuw nsw i16 %.0, 1
  br label %sdslen.exit79.thread

sdslen.exit79.thread:                             ; preds = %getHostnamePingExtSize.exit76, %getHumanNodenamePingExtSize.exit97, %sdslen.exit79
  %.4 = phi ptr [ %.350, %getHumanNodenamePingExtSize.exit97 ], [ %.249, %sdslen.exit79 ], [ %.249, %getHostnamePingExtSize.exit76 ]
  %.144 = phi i32 [ %i.gs, %getHumanNodenamePingExtSize.exit97 ], [ %.043, %sdslen.exit79 ], [ %.043, %getHostnamePingExtSize.exit76 ] ; 2 uses
  %.1 = phi i16 [ %i.gt, %getHumanNodenamePingExtSize.exit97 ], [ %.0, %sdslen.exit79 ], [ %.0, %getHostnamePingExtSize.exit76 ] ; 2 uses
  %.4.fr = freeze ptr %.4                         ; 2 uses
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !122 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !61
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !61
  %i.hb = sub i64 0, %i.ha
  %.not60 = icmp eq i64 %i.gy, %i.hb
  br i1 %.not60, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %sdslen.exit79.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef nonnull %i.gw) #30
  br label %.outer

.outer:                                           ; preds = %.loopexit.split.us, %bb.bt
  %.5.ph = phi ptr [ %.7, %.loopexit.split.us ], [ %.4.fr, %bb.bt ] ; 8 uses
  %.245.ph = phi i32 [ %i.hs, %.loopexit.split.us ], [ %.144, %bb.bt ] ; 2 uses
  %.2.ph = phi i16 [ %i.ht, %.loopexit.split.us ], [ %.1, %bb.bt ] ; 2 uses
  %.not64 = icmp eq ptr %.5.ph, null
  br i1 %.not64, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer
  %i.hc = call ptr @dictNext(ptr noundef nonnull %2) #30
  %.not61.us = icmp eq ptr %i.hc, null
  br i1 %.not61.us, label %.split.us, label %.loopexit.split.us

.outer.split:                                     ; preds = %.outer, %bb.bu
  %i.hd = call ptr @dictNext(ptr noundef nonnull %2) #30 ; 3 uses
  %.not61 = icmp eq ptr %i.hd, null
  br i1 %.not61, label %.split.us, label %bb.bu

bb.bu:                                            ; preds = %.outer.split
  %i.he = call i64 @dictGetUnsignedIntegerVal(ptr noundef nonnull %i.hd) #30 ; 2 uses
  %i.hf = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !196
  %i.hg = icmp slt i64 %i.he, %i.hf
  br i1 %i.hg, label %.outer.split, label %.thread, !llvm.loop !224

.thread:                                          ; preds = %bb.bu
  %i.hh = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !196
  %i.hi = sub i64 %i.he, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %.5.ph, i64 4
  store i16 512, ptr %i.hj, align 4, !tbaa !59
  store i32 939524096, ptr %.5.ph, align 8, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %.5.ph, i64 8
  %i.hl = call ptr @dictGetKey(ptr noundef nonnull %i.hd) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hk, ptr noundef nonnull align 1 dereferenceable(40) %i.hl, i64 40, i1 false)
  %i.hm = call i64 @llvm.bswap.i64(i64 %i.hi)
  %i.hn = getelementptr inbounds nuw i8, ptr %.5.ph, i64 48
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !225
  %i.ho = load i32, ptr %.5.ph, align 8, !tbaa !9
  %i.hp = call noundef i32 @llvm.bswap.i32(i32 %i.ho)
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr i8, ptr %.5.ph, i64 %i.hq
  br label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %.outer.split.us, %.thread
  %.7 = phi ptr [ %i.hr, %.thread ], [ null, %.outer.split.us ]
  %i.hs = add i32 %.245.ph, 56
  %i.ht = add i16 %.2.ph, 1
  br label %.outer, !llvm.loop !224

.split.us:                                        ; preds = %.outer.split.us, %.outer.split
  call void @dictResetIterator(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.bv

bb.bv:                                            ; preds = %.split.us, %sdslen.exit79.thread
  %.8 = phi ptr [ %.5.ph, %.split.us ], [ %.4.fr, %sdslen.exit79.thread ] ; 7 uses
  %.346 = phi i32 [ %.245.ph, %.split.us ], [ %.144, %sdslen.exit79.thread ]
  %.3 = phi i16 [ %.2.ph, %.split.us ], [ %.1, %sdslen.exit79.thread ]
  %.not62 = icmp eq ptr %.8, null
  br i1 %.not62, label %.thread104, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hu = getelementptr inbounds nuw i8, ptr %.8, i64 4
  store i16 768, ptr %i.hu, align 4, !tbaa !59
  store i32 805306368, ptr %.8, align 8, !tbaa !9
  %i.hv = getelementptr inbounds nuw i8, ptr %.8, i64 8
  %i.hw = load ptr, ptr @myself, align 8, !tbaa !54
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hv, ptr noundef nonnull align 8 dereferenceable(40) %i.hx, i64 40, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.8, i64 48
  %i.hz = getelementptr inbounds nuw i8, ptr %.8, i64 52
  store i16 1024, ptr %i.hz, align 4, !tbaa !59
  store i32 805306368, ptr %i.hy, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw i8, ptr %.8, i64 56
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 393264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ia, ptr noundef nonnull align 8 dereferenceable(40) %i.ic, i64 40, i1 false)
  br label %.thread104

.thread104:                                       ; preds = %bb.bv, %bb.bw
  br i1 %.not, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.thread104
  %i.id = add i16 %.3, 2
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.id)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 2214
  store i16 %rev.i, ptr %i.ie, align 2, !tbaa !227
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.thread104
  %i.if = add i32 %.346, 96
  ret i32 %i.if
}

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #26

; Function Attrs: nounwind uwtable
define dso_local void @clusterProcessPingExtensions(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %clusterLookupNode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = tail call i32 @verifyClusterNodeId(ptr noundef nonnull %i.c, i32 noundef 40) #30
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %clusterLookupNode.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @sdsnewlen(ptr noundef nonnull %i.c, i64 noundef 40) #30 ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = tail call ptr @dictFind(ptr noundef %i.h, ptr noundef %i.e) #30 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.e) #30
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %clusterLookupNode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @dictGetVal(ptr noundef nonnull %i.i) #30
  br label %clusterLookupNode.exit

clusterLookupNode.exit:                           ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = phi ptr [ %i.b, %bb.a ], [ null, %bb.b ], [ %i.k, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2214
  %i.n = load i16, ptr %i.m, align 2, !tbaa !227  ; 2 uses
  %.not5669 = icmp eq i16 %i.n, 0
  br i1 %.not5669, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %clusterLookupNode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.q = load i16, ptr %i.p, align 2, !tbaa !203
  %rev.i61 = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.r = zext i16 %rev.i61 to i64
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %i.r
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clusterLookupNode.exit65.thread
  %.in = phi i16 [ %i.t, %clusterLookupNode.exit65.thread ], [ %rev.i, %.lr.ph.preheader ]
  %.073 = phi ptr [ %.1, %clusterLookupNode.exit65.thread ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.04572 = phi ptr [ %.146, %clusterLookupNode.exit65.thread ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.04771 = phi ptr [ %.148, %clusterLookupNode.exit65.thread ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.04970 = phi ptr [ %i.bo, %clusterLookupNode.exit65.thread ], [ %i.s, %.lr.ph.preheader ] ; 9 uses
  %i.t = add i16 %.in, -1                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04970, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !59
  %rev.i62 = tail call noundef i16 @llvm.bswap.i16(i16 %i.v) ; 2 uses
  %i.w = zext i16 %rev.i62 to i32
  switch i16 %rev.i62, label %bb.r [
    i16 0, label %bb.e
    i16 1, label %bb.f
    i16 2, label %bb.g
    i16 3, label %bb.o
    i16 4, label %bb.p
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.04970, i64 8
  br label %clusterLookupNode.exit65.thread

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.04970, i64 8
  br label %clusterLookupNode.exit65.thread

bb.g:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.04970, i64 8 ; 3 uses
  %i.aa = tail call i32 @verifyClusterNodeId(ptr noundef nonnull %i.z, i32 noundef 40) #30
  %.not.i63 = icmp eq i32 %i.aa, 0
  br i1 %.not.i63, label %bb.h, label %clusterLookupNode.exit65.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @sdsnewlen(ptr noundef nonnull %i.z, i64 noundef 40) #30 ; 2 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.af = tail call ptr @dictFind(ptr noundef %i.ae, ptr noundef %i.ab) #30 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.ab) #30
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %clusterLookupNode.exit65.thread, label %clusterLookupNode.exit65

clusterLookupNode.exit65:                         ; preds = %bb.h
  %i.ah = tail call ptr @dictGetVal(ptr noundef nonnull %i.af) #30 ; 4 uses
  %.not57 = icmp eq ptr %i.ah, null
  br i1 %.not57, label %clusterLookupNode.exit65.thread, label %bb.i

bb.i:                                             ; preds = %clusterLookupNode.exit65
  %i.ai = load ptr, ptr @myself, align 8, !tbaa !54 ; 3 uses
  %.not58 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not58, label %clusterLookupNode.exit65.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !89
  %i.al = and i32 %i.ak, 2
  %.not59 = icmp eq i32 %i.al, 0
  br i1 %.not59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 2184
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = icmp eq ptr %i.an, %i.ah
  br i1 %i.ao, label %clusterLookupNode.exit65.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = tail call ptr @sdsnewlen(ptr noundef nonnull %i.z, i64 noundef 40) #30 ; 3 uses
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !122
  %i.at = tail call ptr @dictAddOrFind(ptr noundef %i.as, ptr noundef %i.ap) #30 ; 2 uses
  %i.au = tail call ptr @dictGetKey(ptr noundef %i.at) #30
  %.not60 = icmp eq ptr %i.au, %i.ap
  br i1 %.not60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @sdsfree(ptr noundef %i.ap) #30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !196
  %i.aw = getelementptr inbounds nuw i8, ptr %.04970, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !225
  %i.ay = tail call i64 @llvm.bswap.i64(i64 %i.ax)
  %i.az = add i64 %i.ay, %i.av
  tail call void @dictSetUnsignedIntegerVal(ptr noundef %i.at, i64 noundef %i.az) #30
  tail call void @clusterDelNode(ptr noundef nonnull %i.ah)
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 393384 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !67
  %i.bd = or i32 %i.bc, 6
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !67
  br label %clusterLookupNode.exit65.thread

bb.o:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.04970, i64 8
  br label %clusterLookupNode.exit65.thread

bb.p:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %.04970, i64 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 393264 ; 2 uses
  %i.bi = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(40) %i.bh, ptr noundef nonnull dereferenceable(40) %i.bf, i64 noundef 40) #31
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %clusterLookupNode.exit65.thread

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 4 dereferenceable(40) %i.bf, i64 40, i1 false)
  br label %clusterLookupNode.exit65.thread

bb.r:                                             ; preds = %.lr.ph
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %clusterLookupNode.exit65.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.89, i32 noundef %i.w) #30
  br label %clusterLookupNode.exit65.thread

clusterLookupNode.exit65.thread:                  ; preds = %bb.h, %bb.g, %bb.p, %bb.q, %clusterLookupNode.exit65, %bb.i, %bb.k, %bb.n, %bb.f, %bb.o, %bb.s, %bb.r, %bb.e
  %.148 = phi ptr [ %.04771, %bb.e ], [ %.04771, %bb.f ], [ %.04771, %bb.s ], [ %i.be, %bb.o ], [ %.04771, %clusterLookupNode.exit65 ], [ %.04771, %bb.r ], [ %.04771, %bb.n ], [ %.04771, %bb.k ], [ %.04771, %bb.i ], [ %.04771, %bb.q ], [ %.04771, %bb.p ], [ %.04771, %bb.g ], [ %.04771, %bb.h ] ; 2 uses
  %.146 = phi ptr [ %.04572, %bb.e ], [ %i.y, %bb.f ], [ %.04572, %bb.s ], [ %.04572, %bb.o ], [ %.04572, %clusterLookupNode.exit65 ], [ %.04572, %bb.r ], [ %.04572, %bb.n ], [ %.04572, %bb.k ], [ %.04572, %bb.i ], [ %.04572, %bb.q ], [ %.04572, %bb.p ], [ %.04572, %bb.g ], [ %.04572, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %i.x, %bb.e ], [ %.073, %bb.f ], [ %.073, %bb.s ], [ %.073, %bb.o ], [ %.073, %clusterLookupNode.exit65 ], [ %.073, %bb.r ], [ %.073, %bb.n ], [ %.073, %bb.k ], [ %.073, %bb.i ], [ %.073, %bb.q ], [ %.073, %bb.p ], [ %.073, %bb.g ], [ %.073, %bb.h ] ; 2 uses
  %.val.i = load i32, ptr %.04970, align 8, !tbaa !9
  %i.bm = tail call noundef i32 @llvm.bswap.i32(i32 %.val.i)
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.04970, i64 %i.bn
  %.not56 = icmp eq i16 %i.t, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph, !llvm.loop !228

._crit_edge:                                      ; preds = %clusterLookupNode.exit65.thread, %clusterLookupNode.exit
  %.047.lcssa = phi ptr [ null, %clusterLookupNode.exit ], [ %.148, %clusterLookupNode.exit65.thread ] ; 2 uses
  %.045.lcssa = phi ptr [ null, %clusterLookupNode.exit ], [ %.146, %clusterLookupNode.exit65.thread ]
  %.0.lcssa = phi ptr [ null, %clusterLookupNode.exit ], [ %.1, %clusterLookupNode.exit65.thread ]
  tail call fastcc void @updateAnnouncedHostname(ptr noundef %i.l, ptr noundef %.0.lcssa)
  tail call fastcc void @updateAnnouncedHumanNodename(ptr noundef %i.l, ptr noundef %.045.lcssa)
  %i.bp = icmp eq ptr %.047.lcssa, null
  br i1 %i.bp, label %.preheader, label %bb.t

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %.0.i = phi ptr [ %i.br, %.preheader ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i, i64 2184
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65 ; 2 uses
  %.not.i66 = icmp eq ptr %i.br, null
  br i1 %.not.i66, label %clusterNodeGetMaster.exit, label %.preheader, !llvm.loop !229

clusterNodeGetMaster.exit:                        ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  br label %bb.t

bb.t:                                             ; preds = %clusterNodeGetMaster.exit, %._crit_edge
  %.2 = phi ptr [ %i.bs, %clusterNodeGetMaster.exit ], [ %.047.lcssa, %._crit_edge ]
  tail call fastcc void @updateShardId(ptr noundef %i.l, ptr noundef nonnull %.2)
  ret void
}

declare ptr @dictAddOrFind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @clusterNodeGetMaster(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #22 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 2184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !229

bb.c:                                             ; preds = %bb.b
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clusterProcessPacket(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 5 uses
  %i.b = alloca [46 x i8], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 44 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !230
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %i.f) ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.i = load i16, ptr %i.h, align 4, !tbaa !231  ; 7 uses
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.i) ; 11 uses
  %i.j = tail call i64 @mstime() #30              ; 7 uses
  %i.k = zext i16 %rev.i to i32                   ; 4 uses
  %i.l = icmp ult i16 %rev.i, 11
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 393480
  %i.o = zext nneg i16 %rev.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !232
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !232
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i16 %rev.i, 11
  br i1 %i.u, label %switch.lookup, label %clusterGetMessageTypeString.exit

switch.lookup:                                    ; preds = %bb.d
  %i.v = zext nneg i16 %rev.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.clusterGetMessageTypeString, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %clusterGetMessageTypeString.exit

clusterGetMessageTypeString.exit:                 ; preds = %bb.d, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.193, %bb.d ]
  %i.w = zext i32 %i.g to i64
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull %.0.i, i64 noundef %i.w) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %clusterGetMessageTypeString.exit
  %i.x = icmp ult i32 %i.g, 16
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %i.g to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !171
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !233
  %.not = icmp eq i16 %i.ad, 256
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8320), align 8, !tbaa !234
  %i.af = icmp eq i32 %i.ae, %i.k
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.91) #30
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 2250
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !235
  %rev.i490 = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 2214
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !227 ; 2 uses
  %rev.i491 = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.am = icmp eq i16 %i.i, 0
  %i.an = icmp eq i16 %i.i, 256
  %i.ao = icmp eq i16 %i.i, 512                   ; 2 uses
  %or.cond9 = icmp ult i16 %rev.i, 3              ; 2 uses
  br i1 %or.cond9, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !203
  %rev.i492 = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq) ; 2 uses
  %i.ar = zext i16 %rev.i492 to i32
  %i.as = mul nuw nsw i32 %i.ar, 104
  %i.at = add nuw nsw i32 %i.as, 2256             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 2253
  %i.av = load i8, ptr %i.au, align 1, !tbaa !58
  %i.aw = and i8 %i.av, 4
  %.not431 = icmp eq i8 %i.aw, 0
  %.not432544 = icmp eq i16 %i.al, 0
  %or.cond591 = select i1 %.not431, i1 true, i1 %.not432544
  br i1 %or.cond591, label %.thread504, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 2256
  %i.ay = zext i16 %rev.i492 to i64
  %i.az = getelementptr inbounds nuw [104 x i8], ptr %i.ax, i64 %i.ay
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.in = phi i16 [ %i.ba, %bb.p ], [ %rev.i491, %.lr.ph.preheader ]
  %.0387546 = phi ptr [ %i.bo, %bb.p ], [ %i.az, %.lr.ph.preheader ] ; 2 uses
  %.0389545 = phi i32 [ %i.bm, %bb.p ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %i.ba = add i16 %.in, -1                        ; 2 uses
  %.0387.val = load i32, ptr %.0387546, align 8, !tbaa !9
  %i.bb = tail call noundef i32 @llvm.bswap.i32(i32 %.0387.val) ; 3 uses
  %i.bc = and i32 %i.bb, 65535                    ; 3 uses
  %i.bd = and i32 %i.bb, 7
  %.not433 = icmp eq i32 %i.bd, 0
  br i1 %.not433, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.bf = icmp sgt i32 %i.be, 3
  br i1 %i.bf, label %.critedge, label %switch.lookup597

switch.lookup597:                                 ; preds = %bb.m
  %i.bg = zext nneg i16 %rev.i to i64
  %switch.gep598 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.clusterProcessPacket.17, i64 %i.bg
end_hunk_2
begin_hunk_3_@clusterProcessPacket:bb.a
  %i.df = load i64, ptr %i.de, align 8, !tbaa !239
  %i.dg = tail call i64 @llvm.bswap.i64(i64 %i.df) ; 9 uses
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !78
  %i.dk = icmp ugt i64 %i.dd, %i.dj
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.dd, ptr %i.di, align 8, !tbaa !78
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i497, i64 96 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !95
  %i.dn = icmp ugt i64 %i.dg, %i.dm
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 %i.dg, ptr %i.dl, align 8, !tbaa !95
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 393384 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !67
  %i.dq = or i32 %i.dp, 12
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !67
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !240
  %i.dt = tail call i64 @llvm.bswap.i64(i64 %i.ds) ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i497, i64 2256
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !241
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i497, i64 2240
  store i64 %i.j, ptr %i.dv, align 8, !tbaa !242
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 393344
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !243
  %.not437 = icmp eq i64 %i.dx, 0
  br i1 %.not437, label %.critedge479, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !89
  %i.eb = and i32 %i.ea, 2
  %.not438 = icmp eq i32 %i.eb, 0
  br i1 %.not438, label %.critedge479, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 2184
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !65
  %i.ee = icmp eq ptr %i.ed, %.0.i497
  br i1 %i.ee, label %bb.aj, label %.critedge479

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load i8, ptr %i.cu, align 1, !tbaa !58
  %i.eg = and i8 %i.ef, 1
  %.not439 = icmp eq i8 %i.eg, 0
  br i1 %.not439, label %.critedge479, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dh, i64 393360 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !130
  %i.ej = icmp eq i64 %i.ei, -1
  br i1 %i.ej, label %bb.al, label %.critedge479

bb.al:                                            ; preds = %bb.ak
  store i64 %i.dt, ptr %i.eh, align 8, !tbaa !130
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 393384 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !67
  %i.em = or i32 %i.el, 16
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !67
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.eo = icmp sgt i32 %i.en, 2
  br i1 %i.eo, label %.critedge479, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.95, i64 noundef %i.dt) #30
  br label %.critedge479

.critedge479:                                     ; preds = %bb.y, %bb.x, %clusterLookupNode.exit.i, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %.critedge478
  %.not472511 = phi i1 [ false, %.critedge478 ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ag ], [ true, %clusterLookupNode.exit.i ], [ true, %bb.x ], [ true, %bb.y ] ; 11 uses
  %.0.i497510 = phi ptr [ %.0.i497, %.critedge478 ], [ %.0.i497, %bb.al ], [ %.0.i497, %bb.am ], [ %.0.i497, %bb.ak ], [ %.0.i497, %bb.aj ], [ %.0.i497, %bb.ai ], [ %.0.i497, %bb.ah ], [ %.0.i497, %bb.ag ], [ null, %clusterLookupNode.exit.i ], [ null, %bb.x ], [ null, %bb.y ] ; 41 uses
  %.0396 = phi i64 [ 0, %.critedge478 ], [ %i.dd, %bb.al ], [ %i.dd, %bb.am ], [ %i.dd, %bb.ak ], [ %i.dd, %bb.aj ], [ %i.dd, %bb.ai ], [ %i.dd, %bb.ah ], [ %i.dd, %bb.ag ], [ 0, %clusterLookupNode.exit.i ], [ 0, %bb.x ], [ 0, %bb.y ]
  %.0395 = phi i64 [ 0, %.critedge478 ], [ %i.dg, %bb.al ], [ %i.dg, %bb.am ], [ %i.dg, %bb.ak ], [ %i.dg, %bb.aj ], [ %i.dg, %bb.ai ], [ %i.dg, %bb.ah ], [ %i.dg, %bb.ag ], [ 0, %clusterLookupNode.exit.i ], [ 0, %bb.x ], [ 0, %bb.y ] ; 7 uses
  switch i16 %rev.i, label %bb.bc [
    i16 2, label %bb.an
    i16 0, label %bb.an
  ]

bb.an:                                            ; preds = %.critedge479, %.critedge479
  br i1 %i.ao, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ep = load ptr, ptr @myself, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2264
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !58
  %i.es = icmp eq i8 %i.er, 0
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8256), align 8
  %i.eu = icmp eq ptr %i.et, null
  %or.cond23 = select i1 %i.es, i1 %i.eu, i1 false
  br i1 %or.cond23, label %bb.aq, label %.thread522

bb.ap:                                            ; preds = %bb.an
  %.old = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8256), align 8, !tbaa !117
  %.old22 = icmp eq ptr %.old, null
  br i1 %.old22, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !173 ; 3 uses
  %.not.i.i498 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i498, label %connAddrSockName.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !149
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !213 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ez, null
  br i1 %.not10.i.i, label %connAddrSockName.exit.thread, label %connAddrSockName.exit

connAddrSockName.exit:                            ; preds = %bb.ar
  %i.fa = call i32 %i.ez(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.a, i64 noundef 46, ptr noundef null, i32 noundef 0) #30, !inline_history !244
  %.not440 = icmp eq i32 %i.fa, -1
  br i1 %.not440, label %connAddrSockName.exit.thread, label %bb.as

bb.as:                                            ; preds = %connAddrSockName.exit
  %i.fb = load ptr, ptr @myself, align 8, !tbaa !54
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2264 ; 3 uses
  %i.fd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.fc) #31
  %.not441 = icmp eq i32 %i.fd, 0
  br i1 %.not441, label %connAddrSockName.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %i.fc, ptr noundef nonnull align 16 dereferenceable(46) %i.a, i64 46, i1 false)
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ff = icmp sgt i32 %i.fe, 2
  br i1 %i.ff, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.fc) #30
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 393384 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !67
  %i.fj = or i32 %i.fi, 4
  store i32 %i.fj, ptr %i.fh, align 8, !tbaa !67
  br label %connAddrSockName.exit.thread

connAddrSockName.exit.thread:                     ; preds = %bb.aq, %bb.ar, %bb.av, %bb.as, %connAddrSockName.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aw

bb.aw:                                            ; preds = %connAddrSockName.exit.thread, %bb.ap
  %or.cond27 = select i1 %.not472511, i1 %i.ao, i1 false
  br i1 %or.cond27, label %bb.ax, label %.thread522

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(46) %i.b, i8 0, i64 46, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 2168
  %i.fl = call i32 @nodeIp2String(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.fk)
  %.not442 = icmp eq i32 %i.fl, 0
  br i1 %.not442, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.fn = icmp sgt i32 %i.fm, 2
  br i1 %i.fn, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.97) #30
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @freeClusterLink(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.critedge

bb.bb:                                            ; preds = %bb.ax
  %i.fo = call ptr @createClusterNode(ptr noundef null, i32 noundef 32) ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %i.fp, ptr noundef nonnull align 16 dereferenceable(46) %i.b, i64 46, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 2332
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 2328
  %i.fs = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !13
  %.not.i499 = icmp eq i32 %i.fs, 0               ; 2 uses
  %..i = select i1 %.not.i499, i64 2246, i64 10
  %.17.i = select i1 %.not.i499, i64 10, i64 2246
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 %..i
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !59
  %rev.i9.i = call noundef i16 @llvm.bswap.i16(i16 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 %.17.i
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !59
  %rev.i10.i = call noundef i16 @llvm.bswap.i16(i16 %i.fw)
  %.sink.i = zext i16 %rev.i9.i to i32
  store i32 %.sink.i, ptr %i.fq, align 4, !tbaa !9
  %storemerge.i = zext i16 %rev.i10.i to i32
  store i32 %storemerge.i, ptr %i.fr, align 8, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 2248
  %i.fy = load i16, ptr %i.fx, align 8, !tbaa !215
  %rev.i500 = call noundef i16 @llvm.bswap.i16(i16 %i.fy)
  %i.fz = zext i16 %rev.i500 to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 2336
  store i32 %i.fz, ptr %i.ga, align 8, !tbaa !87
  call void @clusterAddNode(ptr noundef %i.fo)
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 393384 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !67
  %i.ge = or i32 %i.gd, 4
  store i32 %i.ge, ptr %i.gc, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @clusterProcessGossipSection(ptr noundef nonnull %i.d, ptr noundef nonnull %0)
  br label %.thread522

.thread522:                                       ; preds = %bb.bb, %bb.aw, %bb.ao
  call void @clusterSendPing(ptr noundef nonnull %0, i32 noundef 1)
  br label %bb.bd

bb.bc:                                            ; preds = %.critedge479
  br i1 %or.cond9, label %bb.bd, label %bb.di

bb.bd:                                            ; preds = %.thread522, %bb.bc
  %i.gf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gh = call ptr @clusterGetMessageTypeString(i32 noundef %i.k)
  %i.gi = load ptr, ptr %i.cf, align 8, !tbaa !174 ; 2 uses
  %.not451 = icmp eq ptr %i.gi, null
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %spec.select = select i1 %.not451, ptr @.str.99, ptr %i.gj
  call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.98, ptr noundef nonnull %i.gh, ptr noundef nonnull %spec.select) #30
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !175 ; 3 uses
  %.not452 = icmp eq i32 %i.gl, 0
  br i1 %.not452, label %bb.bg, label %bb.bt

bb.bg:                                            ; preds = %bb.bf
  %i.gm = load ptr, ptr %i.cf, align 8, !tbaa !174 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 88
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !89 ; 3 uses
  %i.gp = and i32 %i.go, 32
  %.not453 = icmp eq i32 %i.gp, 0
  br i1 %.not453, label %bb.bp, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not472511, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.gr = icmp sgt i32 %i.gq, 1
  br i1 %i.gr, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2320
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !57
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %i.gs, ptr noundef %i.gu) #30
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.gv = call i32 @nodeUpdateAddressIfNeeded(ptr noundef %.0.i497510, ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  %.not455 = icmp eq i32 %i.gv, 0
  br i1 %.not455, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 393384 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !67
  %i.gz = or i32 %i.gy, 6
  store i32 %i.gz, ptr %i.gx, align 8, !tbaa !67
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ha = load ptr, ptr %i.cf, align 8, !tbaa !174
  call void @clusterDelNode(ptr noundef %i.ha)
  br label %.critedge

bb.bn:                                            ; preds = %bb.bh
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @clusterRenameNode(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.hb)
  %i.hc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %.thread524, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.he = load ptr, ptr %i.cf, align 8, !tbaa !174
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.hf) #30
  br label %.thread524

.thread524:                                       ; preds = %bb.bo, %bb.bn
  %i.hg = load ptr, ptr %i.cf, align 8, !tbaa !174
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 88 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !89
  %i.hj = and i32 %i.hi, -33
  %i.hk = and i16 %rev.i490, 3
  %i.hl = zext nneg i16 %i.hk to i32
  %i.hm = or i32 %i.hj, %i.hl
  store i32 %i.hm, ptr %i.hh, align 8, !tbaa !89
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 393384 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !67
  %i.hq = or i32 %i.hp, 4
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !67
  %.pre558 = load i32, ptr %i.gk, align 8, !tbaa !175
  br label %.critedge481

bb.bp:                                            ; preds = %bb.bg
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %i.hr, ptr noundef nonnull dereferenceable(40) %i.hs, i64 40)
  %.not454 = icmp eq i32 %bcmp, 0
  br i1 %.not454, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ht = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hv = load i64, ptr %i.gm, align 8, !tbaa !97
  %i.hw = sub nsw i64 %i.j, %i.hv
  %i.hx = trunc i64 %i.hw to i32
  call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.102, ptr noundef nonnull %i.hr, i32 noundef %i.hx, i32 noundef %i.go) #30
  %.pre555 = load ptr, ptr %i.cf, align 8, !tbaa !174 ; 2 uses
  %.phi.trans.insert556 = getelementptr inbounds nuw i8, ptr %.pre555, i64 88
  %.pre557 = load i32, ptr %.phi.trans.insert556, align 8, !tbaa !89
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.hy = phi i32 [ %i.go, %bb.bq ], [ %.pre557, %bb.br ]
  %i.hz = phi ptr [ %i.gm, %bb.bq ], [ %.pre555, %bb.br ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 88
  %i.ib = or i32 %i.hy, 64
  store i32 %i.ib, ptr %i.ia, align 8, !tbaa !89
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 2264
  store i8 0, ptr %i.ic, align 8, !tbaa !58
  %i.id = load ptr, ptr %i.cf, align 8, !tbaa !174 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2328
  store i32 0, ptr %i.ie, align 8, !tbaa !63
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 2332
  store i32 0, ptr %i.if, align 4, !tbaa !64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 2336
  store i32 0, ptr %i.ig, align 8, !tbaa !87
  call void @freeClusterLink(ptr noundef nonnull %0)
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 393384 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !67
  %i.ik = or i32 %i.ij, 4
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !67
  br label %.critedge

bb.bt:                                            ; preds = %bb.bp, %bb.bf
  br i1 %.not472511, label %.critedge481, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.il = and i16 %rev.i490, 512
  %i.im = zext nneg i16 %i.il to i32
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 88 ; 2 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !89 ; 2 uses
  %i.ip = and i32 %i.io, -513
  %i.iq = or disjoint i32 %i.ip, %i.im
  store i32 %i.iq, ptr %i.in, align 8, !tbaa !89
  br i1 %i.am, label %bb.bv, label %.critedge481

bb.bv:                                            ; preds = %bb.bu
  %i.ir = and i32 %i.io, 32
  %.not456 = icmp eq i32 %i.ir, 0
  br i1 %.not456, label %bb.bw, label %.thread526

bb.bw:                                            ; preds = %bb.bv
  %i.is = call i32 @nodeUpdateAddressIfNeeded(ptr noundef nonnull %.0.i497510, ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  %.not457 = icmp eq i32 %i.is, 0
  br i1 %.not457, label %.thread526, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 393384 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !67
  %i.iw = or i32 %i.iv, 6
  store i32 %i.iw, ptr %i.iu, align 8, !tbaa !67
  br label %.thread526

.critedge481:                                     ; preds = %.thread524, %bb.bt, %bb.bu
  %i.ix = phi i32 [ %.pre558, %.thread524 ], [ %i.gl, %bb.bt ], [ %i.gl, %bb.bu ]
  %i.iy = icmp eq i32 %i.ix, 0
  %or.cond47 = select i1 %i.iy, i1 %i.an, i1 false
  br i1 %or.cond47, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %.critedge481
  %i.iz = load ptr, ptr %i.cf, align 8, !tbaa !174 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2208
  store i64 %i.j, ptr %i.ja, align 8, !tbaa !94
end_hunk_3
