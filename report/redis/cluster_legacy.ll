inline.NumInlined: 443
inline.NumDeleted: 38
begin_hunk_0_@clusterSetNodeAsMaster:bb.a
  %i.af = phi i32 [ %spec.select, %clusterNodeRemoveSlave.exit ], [ %i.b, %bb.b ]
  %i.ag = and i32 %i.af, -4
  %i.ah = or disjoint i32 %i.ag, 1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !89
  store ptr null, ptr %i.d, align 8, !tbaa !65
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 393384 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !67
  %i.al = or i32 %i.ak, 6
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

declare void @replicationUnsetMaster() local_unnamed_addr #2

declare i64 @emptyData(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clusterAsmCancel(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @asmCancelTrimJobs() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @clusterDelSlot(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 262192
  %i.c = sext i32 %0 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !160
  %i.g = tail call i64 @kvstoreDictSize(ptr noundef %i.f, i32 noundef %0) #31
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %removeChannelsInSlot.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @pubsubShardUnsubscribeAllChannelsInSlot(i32 noundef %0) #31
  br label %removeChannelsInSlot.exit

removeChannelsInSlot.exit:                        ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.k = sdiv i32 %0, 8
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = and i32 %0, 7
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.l ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !58    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 1, %i.m                  ; 2 uses
  %i.r = and i32 %i.q, %i.p
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %removeChannelsInSlot.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.18, i32 noundef 5092) #31
  tail call void @abort() #33
  unreachable

bb.e:                                             ; preds = %removeChannelsInSlot.exit
  %i.s = trunc nuw i32 %i.q to i8
  %i.t = xor i8 %i.s, -1                          ; 2 uses
  %i.u = and i8 %i.o, %i.t
  store i8 %i.u, ptr %i.n, align 1, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2164 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !161
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !161
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 262192
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.c
  store ptr null, ptr %i.aa, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 393584
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.l ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !58
  %i.ae = and i8 %i.ad, %i.t
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !58
  tail call void @clusterSlotStatReset(i32 noundef %0) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.a ]
  ret i32 %.0
}

declare void @dictEmpty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dictInitSafeIterator(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictNext(ptr noundef) local_unnamed_addr #2

declare ptr @dictGetVal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterDelNode(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %.pre24 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.h
  %i.a = phi ptr [ %.pre24, %bb.a ], [ %i.p, %bb.h ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 131120
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = icmp eq ptr %i.h, %0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.g, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 262192
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = tail call i32 @clusterDelSlot(i32 noundef %i.n) ; 0 uses
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = phi ptr [ %i.a, %bb.f ], [ %.pre, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !162

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.r) #31
  %i.s = call ptr @dictNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not22 = icmp eq ptr %i.s, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %i.t = phi ptr [ %i.x, %bb.k ], [ %i.s, %bb.i ]
  %i.u = call ptr @dictGetVal(ptr noundef nonnull %i.t) #31 ; 2 uses
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %bb.k, label %bb.j, !llvm.loop !163

bb.j:                                             ; preds = %.lr.ph
  %i.w = call i32 @clusterNodeDelFailureReport(ptr noundef %i.u, ptr noundef %0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %i.x = call ptr @dictNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.i
  call void @dictResetIterator(ptr noundef nonnull %1) #31
  call void @clusterRemoveNodeFromShard(ptr noundef %0)
  %i.y = call i32 @clusterAsmCancelByNode(ptr noundef %0, ptr noundef nonnull @.str.62) #31 ; 0 uses
  call void @freeClusterNode(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #2

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @createClusterLink(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @zmalloc(i64 noundef 80) #36 ; 12 uses
  %i.b = tail call i64 @mstime() #31
  store i64 %i.b, ptr %i.a, align 8, !tbaa !164
  %i.c = tail call ptr @listCreate() #31          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !166
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @clusterMsgSendBlockDecrRefCount, ptr %i.e, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 48, ptr %i.g, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 1024, ptr %i.h, align 8, !tbaa !169
  %i.i = tail call noalias dereferenceable_or_null(1024) ptr @zmalloc(i64 noundef 1024) #36
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.i, ptr %i.j, align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.k, align 8, !tbaa !171
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.m = add i64 %i.l, 1072
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !173
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %i.o, align 8, !tbaa !174
  %i.p = icmp eq ptr %0, null                     ; 2 uses
  %i.q = zext i1 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.q, ptr %i.r, align 8, !tbaa !175
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store ptr %i.a, ptr %i.s, align 8, !tbaa !176
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare ptr @listCreate() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @clusterMsgSendBlockDecrRefCount(ptr noundef %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !9
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.18, i32 noundef 1161) #31
  tail call void @abort() #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %0, align 8, !tbaa !61
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.h = sub i64 %i.g, %i.f
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  tail call void @zfree(ptr noundef nonnull %0) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @freeClusterLink(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152
  tail call void %i.e(ptr noundef nonnull %i.b) #31, !inline_history !153
  store ptr null, ptr %i.a, align 8, !tbaa !173
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !105
  %.neg = mul i64 %i.i, -24
  %.neg19 = add i64 %.neg, -48
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.k = add i64 %.neg19, %i.j
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  tail call void @listRelease(ptr noundef %i.g) #31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !169
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.o = sub i64 %i.n, %i.m
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !170
  tail call void @zfree(ptr noundef %i.q) #31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !174  ; 3 uses
  %.not20 = icmp eq ptr %i.s, null
  br i1 %.not20, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2344 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !176
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !175
  %.not22 = icmp eq i32 %i.x, 0
  br i1 %.not22, label %bb.g, label %bb.f, !prof !71

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.18, i32 noundef 1202) #31
  tail call void @abort() #33
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.t, align 8, !tbaa !176
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2352 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !177
  %i.aa = icmp eq ptr %i.z, %0
  br i1 %i.aa, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !175
  %.not21 = icmp eq i32 %i.ac, 0
  br i1 %.not21, label %bb.j, label %bb.k, !prof !96

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.18, i32 noundef 1205) #31
  tail call void @abort() #33
  unreachable

bb.k:                                             ; preds = %bb.i
  store ptr null, ptr %i.y, align 8, !tbaa !177
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.h, %bb.c
  tail call void @zfree(ptr noundef nonnull %0) #31
  ret void
}

declare void @listRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @setClusterNodeToInboundClusterLink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.18, i32 noundef 1213) #31
  tail call void @abort() #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !175
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.d, label %bb.e, !prof !96

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.18, i32 noundef 1214) #31
  tail call void @abort() #33
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2352 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177  ; 3 uses
  %.not13 = icmp eq ptr %i.f, null
  br i1 %.not13, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !173
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !178
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !173
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !178
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.54, i32 noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.q) #31
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !177
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi ptr [ %.pre, %bb.g ], [ %i.f, %bb.f ]
  tail call void @freeClusterLink(ptr noundef %i.r)
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !177
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %.thread, label %bb.i, !prof !179

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.18, i32 noundef 1227) #31
  tail call void @abort() #33
  unreachable

.thread:                                          ; preds = %bb.e, %bb.h
  store ptr %1, ptr %i.e, align 8, !tbaa !177
  store ptr %0, ptr %i.a, align 8, !tbaa !174
  ret void
}

declare i32 @anetTcpAccept(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @anetAcceptFailureNeedsRetry(i32 noundef) local_unnamed_addr #2

declare i32 @connEnableTcpNoDelay(ptr noundef) local_unnamed_addr #2

declare i32 @connKeepAlive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @clusterConnAcceptHandler(ptr noundef %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !147
  %.not = icmp eq i32 %.val, 3
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150
  %i.g = tail call ptr %i.f(ptr noundef nonnull %0) #31, !inline_history !151
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef %i.g) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !152
  tail call void %i.j(ptr noundef nonnull %0) #31, !inline_history !153
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noalias dereferenceable_or_null(80) ptr @zmalloc(i64 noundef 80) #36 ; 11 uses
  %i.l = tail call i64 @mstime() #31
  store i64 %i.l, ptr %i.k, align 8, !tbaa !164
  %i.m = tail call ptr @listCreate() #31          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !166
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @clusterMsgSendBlockDecrRefCount, ptr %i.o, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.p, align 8, !tbaa !167
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 48, ptr %i.q, align 8, !tbaa !168
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 1024, ptr %i.r, align 8, !tbaa !169
  %i.s = tail call noalias dereferenceable_or_null(1024) ptr @zmalloc(i64 noundef 1024) #36
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !170
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 0, ptr %i.u, align 8, !tbaa !171
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.w = add i64 %i.v, 1072
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr null, ptr %i.y, align 8, !tbaa !174
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i32 1, ptr %i.z, align 8, !tbaa !175
  store ptr %0, ptr %i.x, align 8, !tbaa !173
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %i.aa, align 8, !tbaa !180
  %i.ab = load ptr, ptr %0, align 8, !tbaa !149
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !181
  %i.ae = tail call i32 %i.ad(ptr noundef nonnull %0, ptr noundef nonnull @clusterReadHandler) #31, !inline_history !182 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -2, -3) i64 @getClusterConnectionsCount() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !183
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !61
  %i.i = add i64 %i.h, %i.f
  %i.j = shl i64 %i.i, 1
  %i.k = add i64 %i.j, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.l
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clusterNodeAddFailureReport(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %2) #31
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = call ptr @listNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !186
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.d, label %bb.b, !llvm.loop !188

bb.d:                                             ; preds = %bb.c
  %i.h = call i64 @mstime() #31
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !189
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #36 ; 3 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !186
  %i.k = call i64 @mstime() #31
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !189
  %i.m = call ptr @listAddNodeTail(ptr noundef %i.b, ptr noundef nonnull %i.j) #31 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret i32 %.0
}

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @listNext(ptr noundef) local_unnamed_addr #2

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterNodeCleanupFailureReports(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !154
  %i.d = shl nsw i64 %i.c, 1
  %i.e = tail call i64 @mstime() #31
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #31
  %i.f = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.n, %bb.c ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !189
  %i.l = sub nsw i64 %i.e, %i.k
  %i.m = icmp sgt i64 %i.l, %i.d
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @listDelNode(ptr noundef %i.b, ptr noundef nonnull %i.g) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.n = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !190

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clusterNodeDelFailureReport(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  %3 = alloca %struct.listIter, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %3) #31
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = call ptr @listNext(ptr noundef nonnull %3) #31 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !186
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.d, label %bb.b, !llvm.loop !191

bb.d:                                             ; preds = %bb.c
  call void @listDelNode(ptr noundef %i.b, ptr noundef nonnull %i.c) #31
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !154
  %i.j = shl nsw i64 %i.i, 1
  %i.k = call i64 @mstime() #31
  call void @listRewind(ptr noundef %i.h, ptr noundef nonnull %2) #31
  %i.l = call ptr @listNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not7.i = icmp eq ptr %i.l, null
  br i1 %.not7.i, label %clusterNodeCleanupFailureReports.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.m = phi ptr [ %i.t, %bb.f ], [ %i.l, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !189
  %i.r = sub nsw i64 %i.k, %i.q
  %i.s = icmp sgt i64 %i.r, %i.j
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  call void @listDelNode(ptr noundef %i.h, ptr noundef nonnull %i.m) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.t = call ptr @listNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %clusterNodeCleanupFailureReports.exit, label %.lr.ph.i, !llvm.loop !190

clusterNodeCleanupFailureReports.exit:            ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %clusterNodeCleanupFailureReports.exit
  %.0 = phi i32 [ 1, %clusterNodeCleanupFailureReports.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clusterNodeFailureReportsCount(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
end_hunk_0
begin_hunk_1_@clusterHandleManualFailover:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @replicationGetSlaveOffset() #31
  %i.k = icmp eq i64 %i.h, %i.j
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 3 uses
  br i1 %i.k, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 393368
  store i32 1, ptr %i.m, align 8, !tbaa !129
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.o = icmp sgt i32 %i.n, 2
  br i1 %i.o, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.149) #31
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.f, %bb.e
  %.sink4 = phi ptr [ %.pre, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  %.sink3 = phi i32 [ 1, %bb.f ], [ 1, %bb.e ], [ 16, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sink4, i64 393384 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !67
  %i.r = or i32 %i.q, %.sink3
  store i32 %i.r, ptr %i.p, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterCron() local_unnamed_addr #3 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  %i.a = tail call i64 @mstime() #31
  %i.b = load i64, ptr @clusterCron.iteration, align 8, !tbaa !232
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr @clusterCron.iteration, align 8, !tbaa !232
  %i.d = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %clusterUpdateMyselfHostname.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8264), align 8, !tbaa !118
  tail call fastcc void @updateAnnouncedHostname(ptr noundef nonnull %i.d, ptr noundef %i.e)
  br label %clusterUpdateMyselfHostname.exit

clusterUpdateMyselfHostname.exit:                 ; preds = %bb.a, %bb.b
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !154
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.f, i64 1000)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 393568
  store i64 0, ptr %i.h, align 8, !tbaa !246
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %0, ptr noundef %i.j) #31
  %i.k = call ptr @dictNext(ptr noundef nonnull %0) #31 ; 2 uses
  %.not144 = icmp eq ptr %i.k, null
  br i1 %.not144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %clusterUpdateMyselfHostname.exit, %clusterNodeCronHandleReconnect.exit
  %i.l = phi ptr [ %i.da, %clusterNodeCronHandleReconnect.exit ], [ %i.k, %clusterUpdateMyselfHostname.exit ]
  %i.m = call ptr @dictGetVal(ptr noundef nonnull %i.l) #31 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2344 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !176  ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8312), align 8 ; 4 uses
  %i.r = icmp eq i64 %i.q, 0
  %or.cond.i.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond.i.i, label %freeClusterLinkOnBufferLimitReached.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !168  ; 2 uses
  %i.u = icmp ugt i64 %i.t, %i.q
  br i1 %i.u, label %bb.d, label %freeClusterLinkOnBufferLimitReached.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.w = icmp sgt i32 %i.v, 3
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.y = load i32, ptr %i.x, align 8, !tbaa !175
  %.not.i.i = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not.i.i, ptr @.str.176, ptr @.str.175
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !174 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %spec.select.i.i = select i1 %.not11.i.i, ptr @.str.306, ptr %i.ac
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.310, ptr noundef nonnull %i.z, ptr noundef nonnull %spec.select.i.i, i64 noundef %i.t) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @freeClusterLink(ptr noundef nonnull %i.o)
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 393576 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !291
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !291
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8312), align 8
  br label %freeClusterLinkOnBufferLimitReached.exit.i

freeClusterLinkOnBufferLimitReached.exit.i:       ; preds = %bb.f, %bb.c, %.lr.ph
  %i.ah = phi i64 [ %i.q, %.lr.ph ], [ %i.q, %bb.c ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 2352
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !177 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = icmp eq i64 %i.ah, 0
  %or.cond.i2.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i2.i, label %clusterNodeCronFreeLinkOnBufferLimitReached.exit, label %bb.g

bb.g:                                             ; preds = %freeClusterLinkOnBufferLimitReached.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !168 ; 2 uses
  %i.ao = icmp ugt i64 %i.an, %i.ah
  br i1 %i.ao, label %bb.h, label %clusterNodeCronFreeLinkOnBufferLimitReached.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.aq = icmp sgt i32 %i.ap, 3
  br i1 %i.aq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !175
  %.not.i3.i = icmp eq i32 %i.as, 0
  %i.at = select i1 %.not.i3.i, ptr @.str.176, ptr @.str.175
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !174 ; 2 uses
  %.not11.i4.i = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %spec.select.i5.i = select i1 %.not11.i4.i, ptr @.str.306, ptr %i.aw
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.310, ptr noundef nonnull %i.at, ptr noundef nonnull %spec.select.i5.i, i64 noundef %i.an) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @freeClusterLink(ptr noundef nonnull %i.aj)
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 393576 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !291
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !291
  br label %clusterNodeCronFreeLinkOnBufferLimitReached.exit

clusterNodeCronFreeLinkOnBufferLimitReached.exit: ; preds = %freeClusterLinkOnBufferLimitReached.exit.i, %bb.g, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !89 ; 3 uses
  %i.bd = and i32 %i.bc, 80
  %.not.i131 = icmp eq i32 %i.bd, 0
  br i1 %.not.i131, label %bb.k, label %clusterNodeCronHandleReconnect.exit

bb.k:                                             ; preds = %clusterNodeCronFreeLinkOnBufferLimitReached.exit
  %i.be = and i32 %i.bc, 4
  %.not22.i = icmp eq i32 %i.be, 0
  br i1 %.not22.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 393568 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !246
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !246
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = and i32 %i.bc, 32
  %.not23.i = icmp eq i32 %i.bj, 0
  br i1 %.not23.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !97
  %i.bl = sub nsw i64 %i.a, %i.bk
  %i.bm = icmp sgt i64 %i.bl, %spec.store.select
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @clusterDelNode(ptr noundef nonnull %i.m)
  br label %clusterNodeCronHandleReconnect.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !176
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %createClusterLink.exit.i, label %clusterNodeCronHandleReconnect.exit

createClusterLink.exit.i:                         ; preds = %bb.p
  %i.bp = call noalias dereferenceable_or_null(80) ptr @zmalloc(i64 noundef 80) #36 ; 13 uses
  %i.bq = call i64 @mstime() #31
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !164
  %i.br = call ptr @listCreate() #31              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr @clusterMsgSendBlockDecrRefCount, ptr %i.bt, align 8, !tbaa !99
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !167
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i64 48, ptr %i.bv, align 8, !tbaa !168
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i64 1024, ptr %i.bw, align 8, !tbaa !169
  %i.bx = call noalias dereferenceable_or_null(1024) ptr @zmalloc(i64 noundef 1024) #36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !170
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i64 0, ptr %i.bz, align 8, !tbaa !171
  %i.ca = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.cb = add i64 %i.ca, 1072
  store i64 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !173
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  store ptr %i.m, ptr %i.cd, align 8, !tbaa !174
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  store i32 0, ptr %i.ce, align 8, !tbaa !175
  store ptr %i.bp, ptr %i.n, align 8, !tbaa !176
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !144
  %i.cg = call ptr @connTypeOfCluster() #31
  %i.ch = getelementptr i8, ptr %i.cg, i64 72
  %.val.i = load ptr, ptr %i.ch, align 8, !tbaa !292
  %i.ci = call ptr %.val.i(ptr noundef %i.cf) #31, !inline_history !293 ; 4 uses
  store ptr %i.ci, ptr %i.cc, align 8, !tbaa !173
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store ptr %i.bp, ptr %i.cj, align 8, !tbaa !180
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 2264 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 2336 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !87
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 472), align 8, !tbaa !294
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !295
  %i.cr = call i32 %i.cq(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.ck, i32 noundef %i.cm, ptr noundef %i.cn, ptr noundef nonnull @clusterLinkConnectHandler) #31, !inline_history !296
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %bb.q, label %clusterNodeCronHandleReconnect.exit

bb.q:                                             ; preds = %createClusterLink.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 2200 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !93
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = call i64 @mstime() #31
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !93
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = load i32, ptr %i.cl, align 8, !tbaa !87
  call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.311, ptr noundef nonnull %i.ck, i32 noundef %i.cz, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1624)) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @freeClusterLink(ptr noundef nonnull %i.bp)
  br label %clusterNodeCronHandleReconnect.exit

clusterNodeCronHandleReconnect.exit:              ; preds = %clusterNodeCronFreeLinkOnBufferLimitReached.exit, %bb.o, %bb.p, %createClusterLink.exit.i, %bb.u
  %i.da = call ptr @dictNext(ptr noundef nonnull %0) #31 ; 2 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %clusterNodeCronHandleReconnect.exit, %clusterUpdateMyselfHostname.exit
  call void @dictResetIterator(ptr noundef nonnull %0) #31
  %i.db = load i64, ptr @clusterCron.iteration, align 8, !tbaa !232
  %i.dc = urem i64 %i.db, 10
  %.not103 = icmp eq i64 %i.dc, 0
  br i1 %.not103, label %.preheader.preheader, label %bb.ar

.preheader.preheader:                             ; preds = %._crit_edge
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !81
  %i.dg = call ptr @dictGetRandomKey(ptr noundef %i.df) #31
  %i.dh = call ptr @dictGetVal(ptr noundef %i.dg) #31 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2344
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !176
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.preheader.1, label %bb.v

bb.v:                                             ; preds = %.preheader.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 2200
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !93
  %.not105 = icmp eq i64 %i.dm, 0
  br i1 %.not105, label %bb.w, label %.preheader.1

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !89
  %i.dp = and i32 %i.do, 48
  %.not106 = icmp eq i32 %i.dp, 0
  br i1 %.not106, label %._crit_edge160, label %.preheader.1

._crit_edge160:                                   ; preds = %bb.w
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dh, i64 2208
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !94
  br label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge160, %bb.w, %.preheader.preheader, %bb.v
  %.292 = phi ptr [ null, %bb.w ], [ null, %.preheader.preheader ], [ null, %bb.v ], [ %i.dh, %._crit_edge160 ] ; 5 uses
  %.288 = phi i64 [ 0, %bb.w ], [ 0, %.preheader.preheader ], [ 0, %bb.v ], [ %.pre, %._crit_edge160 ] ; 5 uses
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !81
  %i.dt = call ptr @dictGetRandomKey(ptr noundef %i.ds) #31
  %i.du = call ptr @dictGetVal(ptr noundef %i.dt) #31 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2344
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !176
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.preheader.2, label %bb.x

bb.x:                                             ; preds = %.preheader.1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 2200
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !93
  %.not105.1 = icmp eq i64 %i.dz, 0
  br i1 %.not105.1, label %bb.y, label %.preheader.2

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 88
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !89
  %i.ec = and i32 %i.eb, 48
  %.not106.1 = icmp eq i32 %i.ec, 0
  br i1 %.not106.1, label %bb.z, label %.preheader.2

bb.z:                                             ; preds = %bb.y
  %i.ed = icmp eq ptr %.292, null
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %i.du, i64 2208
  %.pre163 = load i64, ptr %.phi.trans.insert162, align 8, !tbaa !94 ; 3 uses
  br i1 %i.ed, label %.preheader.2, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = icmp sgt i64 %.288, %.pre163
  %spec.select194 = select i1 %i.ee, ptr %i.du, ptr %.292
  %spec.select195 = call i64 @llvm.smin.i64(i64 %.288, i64 %.pre163)
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %.preheader.1
  %.292.1 = phi ptr [ %.292, %bb.y ], [ %.292, %.preheader.1 ], [ %.292, %bb.x ], [ %spec.select194, %bb.aa ], [ %i.du, %bb.z ] ; 5 uses
  %.288.1 = phi i64 [ %.288, %bb.y ], [ %.288, %.preheader.1 ], [ %.288, %bb.x ], [ %spec.select195, %bb.aa ], [ %.pre163, %bb.z ] ; 5 uses
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !81
  %i.ei = call ptr @dictGetRandomKey(ptr noundef %i.eh) #31
  %i.ej = call ptr @dictGetVal(ptr noundef %i.ei) #31 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2344
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !176
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %.preheader.3, label %bb.ab

bb.ab:                                            ; preds = %.preheader.2
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 2200
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !93
  %.not105.2 = icmp eq i64 %i.eo, 0
  br i1 %.not105.2, label %bb.ac, label %.preheader.3

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 88
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !89
  %i.er = and i32 %i.eq, 48
  %.not106.2 = icmp eq i32 %i.er, 0
  br i1 %.not106.2, label %bb.ad, label %.preheader.3

bb.ad:                                            ; preds = %bb.ac
  %i.es = icmp eq ptr %.292.1, null
  %.phi.trans.insert165 = getelementptr inbounds nuw i8, ptr %i.ej, i64 2208
  %.pre166 = load i64, ptr %.phi.trans.insert165, align 8, !tbaa !94 ; 3 uses
  br i1 %i.es, label %.preheader.3, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = icmp sgt i64 %.288.1, %.pre166
  %spec.select196 = select i1 %i.et, ptr %i.ej, ptr %.292.1
  %spec.select197 = call i64 @llvm.smin.i64(i64 %.288.1, i64 %.pre166)
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.preheader.2
  %.292.2 = phi ptr [ %.292.1, %bb.ac ], [ %.292.1, %.preheader.2 ], [ %.292.1, %bb.ab ], [ %spec.select196, %bb.ae ], [ %i.ej, %bb.ad ] ; 5 uses
  %.288.2 = phi i64 [ %.288.1, %bb.ac ], [ %.288.1, %.preheader.2 ], [ %.288.1, %bb.ab ], [ %spec.select197, %bb.ae ], [ %.pre166, %bb.ad ] ; 5 uses
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !81
  %i.ex = call ptr @dictGetRandomKey(ptr noundef %i.ew) #31
  %i.ey = call ptr @dictGetVal(ptr noundef %i.ex) #31 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2344
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !176
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %.preheader.4, label %bb.af

bb.af:                                            ; preds = %.preheader.3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 2200
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !93
  %.not105.3 = icmp eq i64 %i.fd, 0
  br i1 %.not105.3, label %bb.ag, label %.preheader.4

bb.ag:                                            ; preds = %bb.af
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !89
  %i.fg = and i32 %i.ff, 48
  %.not106.3 = icmp eq i32 %i.fg, 0
  br i1 %.not106.3, label %bb.ah, label %.preheader.4

bb.ah:                                            ; preds = %bb.ag
  %i.fh = icmp eq ptr %.292.2, null
  %.phi.trans.insert168 = getelementptr inbounds nuw i8, ptr %i.ey, i64 2208
  %.pre169 = load i64, ptr %.phi.trans.insert168, align 8, !tbaa !94 ; 3 uses
  br i1 %i.fh, label %.preheader.4, label %bb.ai
end_hunk_1
