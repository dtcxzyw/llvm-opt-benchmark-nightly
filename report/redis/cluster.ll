Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster?download=true
inline.NumInlined: 95
inline.NumDeleted: 16
loop-unroll.NumUnrolled: 1
begin_hunk_0_@createStringObject

declare void @replaceClientCommandVector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyErrorSds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -1, 1) i32 @verifyClusterNodeId(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %1, 40
  br i1 %.not, label %.preheader, label %.loopexit

.preheader.1:                                     ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !18    ; 2 uses
  %i.d = add i8 %i.c, -97
  %or.cond.1 = icmp ult i8 %i.d, 26
  %i.e = add i8 %i.c, -48
  %or.cond18.1 = icmp ult i8 %i.e, 10
  %or.cond20.1 = or i1 %or.cond.1, %or.cond18.1
  br i1 %or.cond20.1, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 40
  br i1 %exitcond.not.1, label %.loopexit, label %.preheader, !llvm.loop !153

.preheader:                                       ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18    ; 2 uses
  %i.h = add i8 %i.g, -97
  %or.cond = icmp ult i8 %i.h, 26
  %i.i = add i8 %i.g, -48
  %or.cond18 = icmp ult i8 %i.i, 10
  %or.cond20 = or i1 %or.cond, %or.cond18
  br i1 %or.cond20, label %.preheader.1, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.1, %bb.b, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ -1, %.preheader ], [ -1, %.preheader.1 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @isValidAuxChar(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @__ctype_b_loc() #26
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !57
  %i.f = and i16 %i.e, 8
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.51, i32 %0, i64 23)
  %i.g = icmp eq ptr %memchr, null
  %i.h = zext i1 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 1, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @isValidAuxString(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %.not12 = icmp eq i32 %1, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = tail call ptr @__ctype_b_loc() #26
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %isValidAuxChar.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %isValidAuxChar.exit.thread ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18    ; 2 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !57
  %i.h = and i16 %i.g, 8
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %isValidAuxChar.exit, label %isValidAuxChar.exit.thread

isValidAuxChar.exit:                              ; preds = %bb.b
  %i.i = sext i8 %i.d to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.51, i32 %i.i, i64 23)
  %.not = icmp eq ptr %memchr.i, null
  br i1 %.not, label %isValidAuxChar.exit.thread, label %._crit_edge

isValidAuxChar.exit.thread:                       ; preds = %bb.b, %isValidAuxChar.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !154

._crit_edge:                                      ; preds = %isValidAuxChar.exit, %isValidAuxChar.exit.thread, %bb.a
  %i.j = phi i32 [ 1, %bb.a ], [ 1, %isValidAuxChar.exit.thread ], [ 0, %isValidAuxChar.exit ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterCommandMyId(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getMyClusterNode() #21
  %i.b = tail call ptr @clusterNodeGetName(ptr noundef %i.a) #21 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 40) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.52) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @clusterNodeGetName(ptr noundef) local_unnamed_addr #2

declare ptr @getMyClusterNode() local_unnamed_addr #2

declare void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @getMyClusterId() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getMyClusterNode() #21
  %i.b = tail call ptr @clusterNodeGetName(ptr noundef %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterCommandMyShardId(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getMyClusterNode() #21
  %i.b = tail call ptr @clusterNodeGetShardId(ptr noundef %i.a) #21 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 40) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.53) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @clusterNodeGetShardId(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @countKeysInSlot(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !101
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = tail call i64 @kvstoreDictSize(ptr noundef %i.b, i32 noundef %0) #21
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

declare i64 @kvstoreDictSize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addNodeDetailsToShardReply(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @addReplyDeferredLen(ptr noundef %0) #21
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.54) #21
  %i.b = tail call ptr @clusterNodeGetName(ptr noundef %1) #21
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef %i.b, i64 noundef 40) #21
  %i.c = tail call i32 @clusterNodeTcpPort(ptr noundef %1) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.55) #21
  %i.d = tail call i32 @clusterNodeTcpPort(ptr noundef %1) #21
  %i.e = sext i32 %i.d to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.e) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.052 = phi i64 [ 2, %bb.b ], [ 1, %bb.a ]      ; 2 uses
  %i.f = tail call i32 @clusterNodeTlsPort(ptr noundef %1) #21
  %.not54 = icmp eq i32 %i.f, 0
  br i1 %.not54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.56) #21
  %i.g = tail call i32 @clusterNodeTlsPort(ptr noundef %1) #21
  %i.h = sext i32 %i.g to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.h) #21
  %2 = add nuw nsw i64 %.052, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %2, %bb.d ], [ %.052, %bb.c ]   ; 2 uses
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.57) #21
  %i.i = tail call ptr @clusterNodeIp(ptr noundef %1) #21
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.i) #21
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.58) #21
  %i.j = tail call ptr @clusterNodePreferredEndpoint(ptr noundef %1) #21
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.j) #21
  %3 = add nuw nsw i64 %.1, 2                     ; 2 uses
  %i.k = tail call ptr @clusterNodeHostname(ptr noundef %1) #21 ; 3 uses
  %.not55 = icmp eq ptr %i.k, null
  br i1 %.not55, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  %.not56 = icmp eq i8 %i.l, 0
  br i1 %.not56, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.59) #21
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %i.k) #21
  %4 = add nuw nsw i64 %.1, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.2 = phi i64 [ %4, %bb.g ], [ %3, %bb.f ], [ %3, %bb.e ]
  %i.m = tail call i32 @clusterNodeIsMyself(ptr noundef %1) #21
  %.not57 = icmp eq i32 %i.m, 0
  br i1 %.not57, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @clusterNodeIsSlave(ptr noundef %1) #21
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i64 @replicationGetSlaveOffset() #21
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7232), align 8, !tbaa !155
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.q = tail call i64 @clusterNodeReplOffset(ptr noundef %1) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.051 = phi i64 [ %i.q, %bb.l ], [ %i.o, %bb.j ], [ %i.p, %bb.k ] ; 2 uses
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.60) #21
  %i.r = tail call i32 @clusterNodeIsSlave(ptr noundef %1) #21
  %.not59 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not59, ptr @.str.62, ptr @.str.61
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %i.s) #21
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.63) #21
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %.051) #21
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.64) #21
  %i.t = tail call i32 @clusterNodeIsFailing(ptr noundef %1) #21
  %.not60 = icmp eq i32 %i.t, 0
  br i1 %.not60, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i32 @clusterNodeIsSlave(ptr noundef %1) #21
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp eq i64 %.051, 0
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  %.str.66..str.67 = select i1 %or.cond, ptr @.str.66, ptr @.str.67
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi ptr [ @.str.65, %bb.m ], [ %.str.66..str.67, %bb.n ]
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %.0) #21
  %5 = add nuw nsw i64 %.2, 3
  tail call void @setDeferredMapLen(ptr noundef %0, ptr noundef %i.a, i64 noundef %5) #21
  ret void
}

declare ptr @addReplyDeferredLen(ptr noundef) local_unnamed_addr #2

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clusterNodeTcpPort(ptr noundef) local_unnamed_addr #2

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @clusterNodeTlsPort(ptr noundef) local_unnamed_addr #2

declare ptr @clusterNodeIp(ptr noundef) local_unnamed_addr #2

declare ptr @clusterNodePreferredEndpoint(ptr noundef) local_unnamed_addr #2

declare ptr @clusterNodeHostname(ptr noundef) local_unnamed_addr #2

declare i32 @clusterNodeIsMyself(ptr noundef) local_unnamed_addr #2

declare i32 @clusterNodeIsSlave(ptr noundef) local_unnamed_addr #2

declare i64 @replicationGetSlaveOffset() local_unnamed_addr #2

declare i64 @clusterNodeReplOffset(ptr noundef) local_unnamed_addr #2

declare i32 @clusterNodeIsFailing(ptr noundef) local_unnamed_addr #2

declare void @setDeferredMapLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addShardReplyForClusterShards(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @clusterGetShardNodeCount(ptr noundef %1) #21
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 930) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 2) #21
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.69) #21
  %i.c = tail call ptr @clusterShardHandleGetNodeIterator(ptr noundef %1) #21 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.d = tail call ptr @clusterShardNodeIteratorNext(ptr noundef %i.c) #21 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %clusterGetMasterFromShard.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @clusterNodeIsFailing(ptr noundef nonnull %i.d) #21
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %clusterGetMasterFromShard.exit, label %bb.d, !llvm.loop !156

clusterGetMasterFromShard.exit.thread:            ; preds = %bb.d
  tail call void @clusterShardNodeIteratorFree(ptr noundef %i.c) #21
  br label %bb.j

clusterGetMasterFromShard.exit:                   ; preds = %bb.e
  tail call void @clusterShardNodeIteratorFree(ptr noundef %i.c) #21
  %i.f = tail call ptr @clusterNodeGetMaster(ptr noundef nonnull %i.d) #21 ; 7 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %clusterGetMasterFromShard.exit
  %i.g = tail call i32 @clusterNodeHasSlotInfo(ptr noundef nonnull %i.f) #21
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @clusterNodeSlotInfoCount(ptr noundef nonnull %i.f) #21
  %i.i = and i32 %i.h, 1
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.h, !prof !103

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i32 noundef 938) #21
  tail call void @abort() #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = tail call i32 @clusterNodeSlotInfoCount(ptr noundef nonnull %i.f) #21
  %i.l = sext i32 %i.k to i64
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.l) #21
  %i.m = tail call i32 @clusterNodeSlotInfoCount(ptr noundef nonnull %i.f) #21
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.02633 = phi i32 [ %i.q, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.o = tail call zeroext i16 @clusterNodeSlotInfoEntry(ptr noundef nonnull %i.f, i32 noundef %.02633) #21
  %i.p = zext i16 %i.o to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.p) #21
  %i.q = add nuw nsw i32 %.02633, 1               ; 2 uses
  %i.r = tail call i32 @clusterNodeSlotInfoCount(ptr noundef nonnull %i.f) #21
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph, label %.loopexit, !llvm.loop !157

bb.j:                                             ; preds = %clusterGetMasterFromShard.exit.thread, %bb.f, %clusterGetMasterFromShard.exit
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 0) #21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %bb.j
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.71) #21
  %i.t = tail call i32 @clusterGetShardNodeCount(ptr noundef %1) #21
  %i.u = sext i32 %i.t to i64
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.u) #21
  %i.v = tail call ptr @clusterShardHandleGetNodeIterator(ptr noundef %1) #21 ; 3 uses
  %i.w = tail call ptr @clusterShardNodeIteratorNext(ptr noundef %i.v) #21 ; 2 uses
  %.not2934 = icmp eq ptr %i.w, null
  br i1 %.not2934, label %._crit_edge, label %.lr.ph36

._crit_edge:                                      ; preds = %.lr.ph36, %.loopexit
  tail call void @clusterShardNodeIteratorFree(ptr noundef %i.v) #21
  ret void

.lr.ph36:                                         ; preds = %.loopexit, %.lr.ph36
  %.035 = phi ptr [ %i.x, %.lr.ph36 ], [ %i.w, %.loopexit ] ; 2 uses
  tail call void @addNodeDetailsToShardReply(ptr noundef %0, ptr noundef nonnull %.035)
  tail call void @clusterFreeNodesSlotsInfo(ptr noundef nonnull %.035) #21
  %i.x = tail call ptr @clusterShardNodeIteratorNext(ptr noundef %i.v) #21 ; 2 uses
  %.not29 = icmp eq ptr %i.x, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph36, !llvm.loop !158
}

declare i32 @clusterGetShardNodeCount(ptr noundef) local_unnamed_addr #2

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @clusterNodeHasSlotInfo(ptr noundef) local_unnamed_addr #2

declare i32 @clusterNodeSlotInfoCount(ptr noundef) local_unnamed_addr #2

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i16 @clusterNodeSlotInfoEntry(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @clusterShardHandleGetNodeIterator(ptr noundef) local_unnamed_addr #2

declare ptr @clusterShardNodeIteratorNext(ptr noundef) local_unnamed_addr #2

declare void @clusterFreeNodesSlotsInfo(ptr noundef) local_unnamed_addr #2

declare void @clusterShardNodeIteratorFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterCommandShards(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @clusterGetShardCount() #21
  %i.b = sext i32 %i.a to i64
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.b) #21
  tail call void @clusterGenNodesSlotsInfo(i32 noundef 0) #21
  %i.c = tail call ptr @clusterGetShardIterator() #21 ; 3 uses
  %i.d = tail call ptr @clusterNextShardHandle(ptr noundef %i.c) #21 ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @clusterFreeShardIterator(ptr noundef %i.c) #21
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %i.e, %.lr.ph ], [ %i.d, %bb.a ]
  tail call void @addShardReplyForClusterShards(ptr noundef %0, ptr noundef nonnull %.08)
  %i.e = tail call ptr @clusterNextShardHandle(ptr noundef %i.c) #21 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !159
}

declare i32 @clusterGetShardCount() local_unnamed_addr #2

declare void @clusterGenNodesSlotsInfo(i32 noundef) local_unnamed_addr #2

declare ptr @clusterGetShardIterator() local_unnamed_addr #2

declare ptr @clusterNextShardHandle(ptr noundef) local_unnamed_addr #2

declare void @clusterFreeShardIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterCommandHelp(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [25 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 16 dereferenceable(200) @__const.clusterCommandHelp.help, i64 200, i1 false)
  %i.b = tail call ptr @clusterCommandExtendedHelp() #21
  call void @addExtendedReplyHelp(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @addExtendedReplyHelp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @clusterCommandExtendedHelp() local_unnamed_addr #2

end_hunk_0
