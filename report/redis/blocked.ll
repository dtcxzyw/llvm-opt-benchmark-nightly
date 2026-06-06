inline.NumInlined: 23
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dictType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.redisServer = type { i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i32, i64, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, ptr, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, [16 x ptr], i32, ptr, ptr, i32, [8 x %struct.connListener], i32, %struct.connListener, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, [4 x %struct.pause_event], [256 x i8], ptr, i64, i32, i32, [128 x i32], i32, i32, %struct.pendingCommandPool, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, ptr, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, [128 x i64], [128 x i64], i64, i64, i64, i64, i64, [7 x %struct.anon], i64, i64, i64, i64, i64, i64, [4 x %struct.durationStats], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.clientBufferLimitsConfig], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i32, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i64, i64, i32, i32, ptr, i64, i64, %struct.replDataBuf, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, i64, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i64, i32, ptr, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [11 x i32], ptr, ptr, i32, i64, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, i32, i32, i32, i64, i64, ptr, i64, i64, i64, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, i64, ptr, i32, %struct.aclInfo, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, ptr, ptr, ptr, ptr, ptr, i64, i32, ptr, i32, i32, i32, i64, i32, i32, ptr, i32, i32 }
%struct.connListener = type { [16 x i32], i32, ptr, i32, i32, ptr, ptr }
%struct.pause_event = type { i32, i64 }
%struct.pendingCommandPool = type { ptr, i32, i32, i32 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.durationStats = type { i64, i64, i64 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.redisOpArray = type { ptr, i32, i32 }
%struct.replDataBuf = type { ptr, i64, i64, i64, i64, i64 }
%struct.aclInfo = type { i64, i64, i64, i64, i64 }
%struct.redisTLSContextConfig = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.sharedObjectsStruct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr], [10000 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], ptr, ptr }
%struct.dictIterator = type { ptr, i64, i32, i32, ptr, ptr, i64 }
%struct.listIter = type { ptr, i32 }

@objectKeyHeapPointerValueDictType = external global %struct.dictType, align 8
@.str = private unnamed_addr constant [147 x i8] c"!(c->flags & CLIENT_MASTER && btype != BLOCKED_MODULE && btype != BLOCKED_LAZYFREE && btype != BLOCKED_POSTPONE && btype != BLOCKED_POSTPONE_TRIM)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"blocked.c\00", align 1
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"command-unblocking\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unknown btype in unblockClient().\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"Unknown btype in replyToBlockedClientTimedOut().\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Errors trying to SHUTDOWN. Check logs.\00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"-UNBLOCKED force unblock from blocking operation, instance state changed (master -> replica?)\00", align 1
@handleClientsBlockedOnKeys.in_handling_blocked_clients = internal unnamed_addr global i1 false, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"server.also_propagate.numops == 0\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"btype == BLOCKED_POSTPONE || btype == BLOCKED_POSTPONE_TRIM\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"l != NULL\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"unblock_on_nokey_entry != NULL\00", align 1
@.str.12 = private unnamed_addr constant [104 x i8] c"c->bstate.btype == BLOCKED_STREAM || c->bstate.btype == BLOCKED_LIST || c->bstate.btype == BLOCKED_ZSET\00", align 1
@getMonotonicUs = external local_unnamed_addr global ptr, align 8
@switch.table.handleClientsBlockedOnKeys = private unnamed_addr constant [6 x i8] c"\01\00\06\00\04\05", align 4
@switch.table.signalKeyAsReadyLogic = private unnamed_addr constant [6 x i8] [i8 1, i8 poison, i8 6, i8 poison, i8 4, i8 5], align 8

; Function Attrs: nounwind uwtable
define dso_local void @initClientBlockingState(ptr nofree noundef writeonly captures(none) initializes((592, 596), (600, 612), (616, 628), (632, 640), (648, 656)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 0, ptr %i.b, align 8, !tbaa !39
  %i.c = tail call ptr @dictCreate(ptr noundef nonnull @objectKeyHeapPointerValueDictType) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %i.c, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 0, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 0, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr null, ptr %i.h, align 8, !tbaa !44
  ret void
}

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @blockClient(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %.fr15 = freeze i64 %i.b                        ; 3 uses
  %i.c = and i64 %.fr15, 2
  %.not16 = icmp eq i64 %i.c, 0
  br i1 %.not16, label %switch.edge, label %switch.early.test

switch.early.test:                                ; preds = %bb.a
  switch i32 %1, label %.critedge [
    i32 10, label %switch.edge
    i32 7, label %switch.edge
    i32 4, label %switch.edge
    i32 8, label %switch.edge
  ]

.critedge:                                        ; preds = %switch.early.test
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80) #5
  tail call void @abort() #6
  unreachable

switch.edge:                                      ; preds = %switch.early.test, %bb.a, %switch.early.test, %switch.early.test, %switch.early.test
  %i.d = or i64 %.fr15, 16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 %1, ptr %i.e, align 8, !tbaa !13
  %i.f = and i64 %.fr15, 134217728
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.edge
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.edge
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 7824), i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !9
  tail call void @addClientToTimeoutTable(ptr noundef nonnull %0) #5
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

declare void @addClientToTimeoutTable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @updateStatsOnUnblock(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69
  %i.c = add i64 %2, %1
  %i.d = add i64 %i.c, %i.b                       ; 4 uses
  tail call void @clusterSlotStatsAddCpuDuration(ptr noundef %0, i64 noundef %i.d) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 2 uses
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !71
  %i.i = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.d, i64 0
  %i.j = add nsw <2 x i64> %i.h, %i.i
  store <2 x i64> %i.j, ptr %i.g, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !72
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2536), align 8, !tbaa !73
  %i.o = add nsw i64 %i.n, 1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2536), align 8, !tbaa !73
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6624), align 8, !tbaa !80
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.u = mul nsw i64 %i.d, 1000
  tail call void @updateCommandLatencyHistogram(ptr noundef nonnull %i.t, i64 noundef %i.u) #5
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi ptr [ %.pre, %bb.d ], [ %i.f, %bb.c ]
  tail call void @slowlogPushCurrentCommand(ptr noundef nonnull %0, ptr noundef %i.v, i64 noundef %i.d) #5
  store i64 0, ptr %i.a, align 8, !tbaa !69
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !81 ; 2 uses
  %.not20 = icmp eq i64 %i.w, 0
  br i1 %.not20, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = sdiv i64 %2, 1000                        ; 2 uses
  %.not21 = icmp slt i64 %i.x, %i.w
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @latencyAddSample(ptr noundef nonnull @.str.2, i64 noundef %i.x) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @clusterSlotStatsAddCpuDuration(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @updateCommandLatencyHistogram(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @slowlogPushCurrentCommand(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @latencyAddSample(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @processUnblockedClients() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7872), align 8, !tbaa !82 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !83
  %.not19 = icmp eq i64 %i.c, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.d = phi ptr [ %i.o, %.backedge ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 3 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.b, label %bb.c, !prof !86

bb.b:                                             ; preds = %.lr.ph
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 121) #5
  tail call void @abort() #6
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87   ; 7 uses
  tail call void @listDelNode(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.j = and i64 %i.i, -129                       ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !45
  %i.k = and i64 %i.i, 1073741824
  %.not15 = icmp eq i64 %i.k, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @freeClientOriginalArgv(ptr noundef nonnull %i.g) #5
  tail call void @prepareForNextCommand(ptr noundef nonnull %i.g, i32 noundef 0) #5
  %.pre = load i64, ptr %i.h, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %.pre, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = and i64 %i.l, 134217728
  %.not16 = icmp eq i64 %i.m, 0
end_hunk_0
begin_hunk_1_@disconnectAllBlockedClients:bb.a

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

bb.d:                                             ; preds = %bb.c
  %i.d = and i64 %i.b, -1073741825
  store i64 %i.d, ptr %i.a, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @unblockClient(ptr noundef nonnull %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @handleClientsBlockedOnKeys() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %.b = load i1, ptr @handleClientsBlockedOnKeys.in_handling_blocked_clients, align 4
  br i1 %.b, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @handleClientsBlockedOnKeys.in_handling_blocked_clients, align 4
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7080), align 8, !tbaa !99
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.preheader, label %bb.c, !prof !100

.preheader:                                       ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7880), align 8, !tbaa !101 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  %.not25 = icmp eq i64 %i.e, 0
  br i1 %.not25, label %._crit_edge27, label %.lr.ph26

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 346) #5
  tail call void @abort() #6
  unreachable

.lr.ph26:                                         ; preds = %.preheader, %._crit_edge
  %i.f = phi ptr [ %i.dx, %._crit_edge ], [ %i.d, %.preheader ] ; 2 uses
  %i.g = phi ptr [ %i.dw, %._crit_edge ], [ %i.c, %.preheader ] ; 3 uses
  %i.h = call ptr @listCreate() #5
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7880), align 8, !tbaa !101
  %i.i = load i64, ptr %i.f, align 8, !tbaa !83
  %.not1124 = icmp eq i64 %i.i, 0
  br i1 %.not1124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26, %handleClientsBlockedOnKey.exit
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.r = call i32 @dictDelete(ptr noundef %i.o, ptr noundef %i.q) #5 ; 0 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.w = call ptr @dictFind(ptr noundef %i.u, ptr noundef %i.v) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %handleClientsBlockedOnKey.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = call ptr @dictGetVal(ptr noundef nonnull %i.w) #5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @listRewind(ptr noundef %i.x, ptr noundef nonnull %1) #5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !83   ; 2 uses
  %i.aa = call ptr @listNext(ptr noundef nonnull %1) #5 ; 2 uses
  %.not2331.i = icmp eq ptr %i.aa, null
  %.not24.i34 = icmp eq i64 %i.z, 0
  %or.cond = select i1 %.not2331.i, i1 true, i1 %.not24.i34
  br i1 %or.cond, label %.critedge.i, label %.lr.ph35

.lr.ph.i:                                         ; preds = %unblockClientOnKey.exit.i
  %.not24.i = icmp eq i64 %i.ac, 0
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph35, !llvm.loop !109

.lr.ph35:                                         ; preds = %bb.d, %.lr.ph.i
  %.in = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.z, %bb.d ]
  %i.ab = phi ptr [ %i.dt, %.lr.ph.i ], [ %i.aa, %bb.d ]
  %i.ac = add nsw i64 %.in, -1                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87 ; 24 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.ah = call ptr @lookupKeyReadWithFlags(ptr noundef %i.af, ptr noundef %i.ag, i32 noundef 23) #5 ; 2 uses
  %.not25.i = icmp eq ptr %i.ah, null
  br i1 %.not25.i, label %.critedge29.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !13 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 15
  %switch.tableidx = add nsw i32 %i.am, -1        ; 2 uses
  %i.an = icmp ult i32 %switch.tableidx, 6
  br i1 %i.an, label %switch.lookup, label %getBlockedTypeByType.exit.i

switch.lookup:                                    ; preds = %bb.e
  %i.ao = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.handleClientsBlockedOnKeys, i64 %i.ao
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %getBlockedTypeByType.exit.i

getBlockedTypeByType.exit.i:                      ; preds = %bb.e, %switch.lookup
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.e ]
  %i.ap = icmp eq i32 %i.aj, %.0.i.i
  %i.aq = icmp eq i32 %i.aj, 4
  %or.cond.i = or i1 %i.aq, %i.ap
  br i1 %or.cond.i, label %bb.f, label %.critedge29.i

.critedge29.i:                                    ; preds = %getBlockedTypeByType.exit.i, %.lr.ph35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !43
  %.not26.i = icmp eq i32 %i.as, 0
  br i1 %.not26.i, label %unblockClientOnKey.exit.i, label %.critedge29._crit_edge.i

.critedge29._crit_edge.i:                         ; preds = %.critedge29.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %.critedge29._crit_edge.i, %getBlockedTypeByType.exit.i
  %i.at = phi i32 [ %.pre.i, %.critedge29._crit_edge.i ], [ %i.aj, %getBlockedTypeByType.exit.i ]
  %.not27.i = icmp eq i32 %i.at, 4
  br i1 %.not27.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 592 ; 3 uses
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 616 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !40
  %i.ay = call ptr @dictFind(ptr noundef %i.ax, ptr noundef %i.av) #5
  call fastcc void @releaseBlockedEntry(ptr noundef nonnull %i.ae, ptr noundef %i.ay, i32 noundef 1)
  %i.az = load i32, ptr %i.au, align 8, !tbaa !13
  switch i32 %i.az, label %bb.h [
    i32 1, label %bb.i
    i32 6, label %bb.i
    i32 5, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 676) #5
  call void @abort() #6
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !40 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !92
  %i.bf = sub i64 0, %i.be
  %i.bg = icmp eq i64 %i.bc, %i.bf
  br i1 %i.bg, label %unblockClientWaitingData.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @dictInitIterator(ptr noundef nonnull %0, ptr noundef nonnull %i.ba) #5
  %i.bh = call ptr @dictNext(ptr noundef nonnull %0) #5 ; 2 uses
  %.not6.i18 = icmp eq ptr %i.bh, null
  br i1 %.not6.i18, label %._crit_edge.i21, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.j, %.lr.ph.i19
  %i.bi = phi ptr [ %i.bj, %.lr.ph.i19 ], [ %i.bh, %bb.j ]
  call fastcc void @releaseBlockedEntry(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.bi, i32 noundef 0)
  %i.bj = call ptr @dictNext(ptr noundef nonnull %0) #5 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i20, label %._crit_edge.i21, label %.lr.ph.i19, !llvm.loop !93

._crit_edge.i21:                                  ; preds = %.lr.ph.i19, %bb.j
  call void @dictResetIterator(ptr noundef nonnull %0) #5
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !40
  call void @dictEmpty(ptr noundef %i.bk, ptr noundef null) #5
  br label %unblockClientWaitingData.exit22

unblockClientWaitingData.exit22:                  ; preds = %bb.i, %._crit_edge.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 8 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !45 ; 2 uses
  %i.bn = and i64 %i.bm, 134217728
  %.not24.i14 = icmp eq i64 %i.bn, 0
  br i1 %.not24.i14, label %bb.k, label %unblockClient.exit

bb.k:                                             ; preds = %unblockClientWaitingData.exit22
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  br label %unblockClient.exit

unblockClient.exit:                               ; preds = %unblockClientWaitingData.exit22, %bb.k
  %i.bq = load i32, ptr %i.au, align 8, !tbaa !13
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 7824), i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !9
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !9
  %i.bv = and i64 %i.bm, -17
  store i64 %i.bv, ptr %i.bl, align 8, !tbaa !45
  store i32 0, ptr %i.au, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  store i32 0, ptr %i.bw, align 8, !tbaa !43
  call void @removeClientFromTimeoutTable(ptr noundef nonnull %i.ae) #5
  %i.bx = load i64, ptr %i.bl, align 8, !tbaa !45 ; 2 uses
  %i.by = and i64 %i.bx, 1073741824
  %.not.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i, label %unblockClientOnKey.exit.i, label %bb.l

bb.l:                                             ; preds = %unblockClient.exit
  %i.bz = and i64 %i.bx, -1125900980584449
  %i.ca = or disjoint i64 %i.bz, 1125899906842624
  store i64 %i.ca, ptr %i.bl, align 8, !tbaa !45
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !110
  store ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !110
  call void @enterExecutionUnit(i32 noundef 1, i64 noundef 0) #5
  %i.cc = call i32 @processCommandAndResetClient(ptr noundef nonnull %i.ae) #5 ; 0 uses
  %i.cd = load i64, ptr %i.bl, align 8, !tbaa !45 ; 4 uses
  %i.ce = and i64 %i.cd, 16
  %.not20.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not20.i.i, label %bb.m, label %queueClientForReprocessing.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.cf = and i64 %i.cd, 134217728
  %.not21.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not21.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @moduleCallCommandUnblockedHandler(ptr noundef nonnull %i.ae) #5
  br label %queueClientForReprocessing.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.cg = and i64 %i.cd, 128
  %.not.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i, label %bb.p, label %queueClientForReprocessing.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.ch = or disjoint i64 %i.cd, 128
  store i64 %i.ch, ptr %i.bl, align 8, !tbaa !45
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7872), align 8, !tbaa !82
  %i.cj = call ptr @listAddNodeTail(ptr noundef %i.ci, ptr noundef nonnull %i.ae) #5 ; 0 uses
  br label %queueClientForReprocessing.exit.i.i

queueClientForReprocessing.exit.i.i:              ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  call void @exitExecutionUnit() #5
  call void @afterCommand(ptr noundef nonnull %i.ae) #5
  %i.ck = load i64, ptr %i.bl, align 8, !tbaa !45
  %i.cl = and i64 %i.ck, -1125899906842625
  store i64 %i.cl, ptr %i.bl, align 8, !tbaa !45
  br label %unblockClientOnKey.exit.sink.split.i

bb.q:                                             ; preds = %bb.f
  %i.cm = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.cn = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3096), align 8, !tbaa !111
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !110
  store ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !110
  %i.cp = load ptr, ptr @getMonotonicUs, align 8, !tbaa !112
  %i.cq = call i64 %i.cp() #5, !inline_history !113
  %i.cr = call i32 @moduleTryServeClientBlockedOnKey(ptr noundef nonnull %i.ae, ptr noundef %i.cm) #5
  %.not.i30.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i30.i, label %moduleUnblockClientOnKey.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = load ptr, ptr @getMonotonicUs, align 8, !tbaa !112
  %i.ct = call i64 %i.cs() #5, !inline_history !114
  %i.cu = sub i64 %i.ct, %i.cq                    ; 2 uses
  %i.cv = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3096), align 8, !tbaa !111
  %.not23 = icmp eq i64 %i.cv, %i.cn
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ae, i64 288 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !69
  %i.cy = add i64 %i.cx, %i.cu                    ; 4 uses
  call void @clusterSlotStatsAddCpuDuration(ptr noundef nonnull %i.ae, i64 noundef %i.cy) #5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ae, i64 200 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !70 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 176 ; 2 uses
  %i.dc = load <2 x i64>, ptr %i.db, align 8, !tbaa !71
  %i.dd = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.cy, i64 0
  %i.de = add nsw <2 x i64> %i.dc, %i.dd
  store <2 x i64> %i.de, ptr %i.db, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %i.ae, i64 1016 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !72
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !72
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2536), align 8, !tbaa !73
  %i.dj = add nsw i64 %i.di, 1
  store i64 %i.dj, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2536), align 8, !tbaa !73
  br i1 %.not23, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 200 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !74
  %i.dm = add nsw i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !74
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6624), align 8, !tbaa !80
  %.not19.i = icmp eq i32 %i.dn, 0
  br i1 %.not19.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 224
  %i.dp = mul nsw i64 %i.cy, 1000
  call void @updateCommandLatencyHistogram(ptr noundef nonnull %i.do, i64 noundef %i.dp) #5
  %.pre.i13 = load ptr, ptr %i.cz, align 8, !tbaa !70
  br label %bb.v

end_hunk_1
begin_hunk_2_@blockForKeys:bb.a
  call void @dictSetVal(ptr noundef %i.v, ptr noundef nonnull %i.r, ptr noundef %i.s) #5
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !117
  call void @incrRefCount(ptr noundef %i.w) #5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.y = call ptr @dictGetVal(ptr noundef %i.x) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.038.us = phi ptr [ %i.s, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %i.z = call ptr @listAddNodeTail(ptr noundef %.038.us, ptr noundef nonnull %0) #5 ; 0 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %.038.us, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !120
  call void @dictSetVal(ptr noundef %i.aa, ptr noundef nonnull %i.l, ptr noundef %i.ac) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.us
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !121

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 6 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !117
  %i.ag = call ptr @dictAddRaw(ptr noundef %i.ad, ptr noundef %i.af, ptr noundef null) #5 ; 2 uses
  %.not46 = icmp eq ptr %i.ag, null
  br i1 %.not46, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !117
  call void @incrRefCount(ptr noundef %i.ah) #5
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !108
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !117
  %i.am = call ptr @dictAddRaw(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not47 = icmp eq ptr %i.am, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @listCreate() #5               ; 2 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108
  call void @dictSetVal(ptr noundef %i.aq, ptr noundef nonnull %i.am, ptr noundef %i.an) #5
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !117
  call void @incrRefCount(ptr noundef %i.ar) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.at = call ptr @dictGetVal(ptr noundef %i.as) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.038 = phi ptr [ %i.an, %bb.j ], [ %i.at, %bb.k ] ; 2 uses
  %i.au = call ptr @listAddNodeTail(ptr noundef %.038, ptr noundef nonnull %0) #5 ; 0 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !120
  call void @dictSetVal(ptr noundef %i.av, ptr noundef nonnull %i.ag, ptr noundef %i.ax) #5
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !122
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !117
  %i.bc = call ptr @dictAddRaw(ptr noundef %i.ba, ptr noundef %i.bb, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not49 = icmp eq ptr %i.bc, null
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !117
  call void @incrRefCount(ptr noundef %i.bd) #5
  call void @dictSetUnsignedIntegerVal(ptr noundef nonnull %i.bc, i64 noundef 1) #5
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.bf = call i64 @dictIncrUnsignedIntegerVal(ptr noundef %i.be, i64 noundef 1) #5 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count62
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.o, %bb.h, %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 %5, ptr %i.bg, align 8, !tbaa !43
  %.not45 = icmp eq i32 %1, 4
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !45
  %.fr15.i = freeze i64 %i.bh                     ; 6 uses
  br i1 %.not45, label %.split, label %.split40

.split:                                           ; preds = %._crit_edge
  %i.bi = or i64 %.fr15.i, 16
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 4, ptr %i.bj, align 8, !tbaa !13
  %i.bk = and i64 %.fr15.i, 134217728
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %bb.p, label %blockClient.exit

bb.p:                                             ; preds = %.split
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  br label %blockClient.exit

blockClient.exit:                                 ; preds = %.split, %bb.p
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7840), align 8, !tbaa !9
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7840), align 8, !tbaa !9
  br label %bb.r

.split40:                                         ; preds = %._crit_edge
  %i.bp = or i64 %.fr15.i, 1073741824
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !45
  %i.bq = and i64 %.fr15.i, 2
  %.not16.i51 = icmp eq i64 %i.bq, 0
  br i1 %.not16.i51, label %switch.edge.i53, label %switch.early.test.i52

switch.early.test.i52:                            ; preds = %.split40
  switch i32 %1, label %.critedge.i [
    i32 10, label %switch.edge.i53
    i32 7, label %switch.edge.i53
    i32 8, label %switch.edge.i53
  ]

.critedge.i:                                      ; preds = %switch.early.test.i52
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80) #5
  call void @abort() #6
  unreachable

switch.edge.i53:                                  ; preds = %switch.early.test.i52, %switch.early.test.i52, %switch.early.test.i52, %.split40
  %i.br = or i64 %.fr15.i, 1073741840
  store i64 %i.br, ptr %i.b, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 %1, ptr %i.bs, align 8, !tbaa !13
  %i.bt = and i64 %.fr15.i, 134217728
  %.not.i54 = icmp eq i64 %i.bt, 0
  br i1 %.not.i54, label %bb.q, label %blockClient.exit55

bb.q:                                             ; preds = %switch.edge.i53
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  br label %blockClient.exit55

blockClient.exit55:                               ; preds = %switch.edge.i53, %bb.q
  %i.bw = sext i32 %1 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 7824), i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !9
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %blockClient.exit, %blockClient.exit55
  call void @addClientToTimeoutTable(ptr noundef nonnull %0) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare ptr @dictAddRaw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @incrRefCount(ptr noundef) local_unnamed_addr #1

declare void @dictSetVal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dictGetVal(ptr noundef) local_unnamed_addr #1

declare void @dictSetUnsignedIntegerVal(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @dictIncrUnsignedIntegerVal(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @signalKeyAsReady(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @signalKeyAsReadyLogic(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @signalKeyAsReadyLogic(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %switch.tableidx = add i32 %2, -1               ; 3 uses
  %i.b = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 53, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond21 = select i1 %i.b, i1 %switch.lobit, i1 false
  br i1 %or.cond21, label %switch.lookup, label %getBlockedTypeByType.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.signalKeyAsReadyLogic, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 7824), i64 %switch.ext
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = icmp ne i32 %i.e, 0
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7840), align 8
  %i.h = icmp ne i32 %i.g, 0
  %or.cond = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %getBlockedTypeByType.exit

bb.b:                                             ; preds = %switch.lookup
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.k = tail call ptr @dictFind(ptr noundef %i.j, ptr noundef %1) #5
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %getBlockedTypeByType.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !108
  %i.o = tail call ptr @dictFind(ptr noundef %i.n, ptr noundef %1) #5
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %getBlockedTypeByType.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !104
  %i.s = call ptr @dictAddRaw(ptr noundef %i.r, ptr noundef %1, ptr noundef nonnull %i.a) #5
  %.not18 = icmp eq ptr %i.s, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @incrRefCount(ptr noundef %1) #5
  %i.t = call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #7 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %1, ptr %i.u, align 8, !tbaa !107
  store ptr %0, ptr %i.t, align 8, !tbaa !102
  call void @incrRefCount(ptr noundef %1) #5
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7880), align 8, !tbaa !101
  %i.w = call ptr @listAddNodeTail(ptr noundef %i.v, ptr noundef nonnull %i.t) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %getBlockedTypeByType.exit

getBlockedTypeByType.exit:                        ; preds = %bb.a, %bb.d, %bb.c, %switch.lookup, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @signalDeletedKeyAsReady(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @signalKeyAsReadyLogic(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blockForReplication(ptr noundef initializes((600, 608), (624, 628), (632, 640)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 %1, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 %2, ptr %i.b, align 8, !tbaa !42
  %i.c = trunc i64 %3 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 %i.c, ptr %i.d, align 8, !tbaa !41
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7696), align 8, !tbaa !123
  %i.f = tail call ptr @listAddNodeHead(ptr noundef %i.e, ptr noundef %0) #5 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %.fr15.i = freeze i64 %i.h                      ; 3 uses
  %i.i = and i64 %.fr15.i, 2
  %.not16.i = icmp eq i64 %i.i, 0
  br i1 %.not16.i, label %switch.edge.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80) #5
  tail call void @abort() #6
  unreachable

switch.edge.i:                                    ; preds = %bb.a
  %i.j = or i64 %.fr15.i, 16
  store i64 %i.j, ptr %i.g, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 2, ptr %i.k, align 8, !tbaa !13
  %i.l = and i64 %.fr15.i, 134217728
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.b, label %blockClient.exit

bb.b:                                             ; preds = %switch.edge.i
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  br label %blockClient.exit

blockClient.exit:                                 ; preds = %switch.edge.i, %bb.b
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7832), align 8, !tbaa !9
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7832), align 8, !tbaa !9
  tail call void @addClientToTimeoutTable(ptr noundef nonnull %0) #5
  ret void
}

declare ptr @listAddNodeHead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @blockForAofFsync(ptr noundef initializes((600, 608), (624, 640)) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 %1, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 %2, ptr %i.b, align 8, !tbaa !42
  %i.c = trunc i64 %4 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 %i.c, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i32 %3, ptr %i.e, align 4, !tbaa !124
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7696), align 8, !tbaa !123
  %i.g = tail call ptr @listAddNodeHead(ptr noundef %i.f, ptr noundef %0) #5 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  %.fr15.i = freeze i64 %i.i                      ; 3 uses
  %i.j = and i64 %.fr15.i, 2
  %.not16.i = icmp eq i64 %i.j, 0
  br i1 %.not16.i, label %switch.edge.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80) #5
  tail call void @abort() #6
  unreachable

switch.edge.i:                                    ; preds = %bb.a
  %i.k = or i64 %.fr15.i, 16
  store i64 %i.k, ptr %i.h, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 3, ptr %i.l, align 8, !tbaa !13
  %i.m = and i64 %.fr15.i, 134217728
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.b, label %blockClient.exit

bb.b:                                             ; preds = %switch.edge.i
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  br label %blockClient.exit

blockClient.exit:                                 ; preds = %switch.edge.i, %bb.b
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7836), align 4, !tbaa !9
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7836), align 4, !tbaa !9
  tail call void @addClientToTimeoutTable(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blockPostponeClientWithType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -7
  %i.b = icmp ult i32 %i.a, 2
  br i1 %i.b, label %switch.edge.i, label %bb.b, !prof !100

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 643) #5
  tail call void @abort() #6
  unreachable

switch.edge.i:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 0, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %.fr15.i = freeze i64 %i.e                      ; 2 uses
  %i.f = or i64 %.fr15.i, 16
  store i64 %i.f, ptr %i.d, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 %1, ptr %i.g, align 8, !tbaa !13
  %i.h = and i64 %.fr15.i, 134217728
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %blockClient.exit

bb.c:                                             ; preds = %switch.edge.i
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7820), align 4, !tbaa !46
  br label %blockClient.exit

blockClient.exit:                                 ; preds = %switch.edge.i, %bb.c
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 7824), i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !9
  tail call void @addClientToTimeoutTable(ptr noundef nonnull %0) #5
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1552), align 8, !tbaa !90
  %i.p = tail call ptr @listAddNodeTail(ptr noundef %i.o, ptr noundef nonnull %0) #5 ; 0 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1552), align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
end_hunk_2
