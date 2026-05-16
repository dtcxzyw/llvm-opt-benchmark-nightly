inline.NumInlined: 95
inline.NumDeleted: 16
begin_hunk_0
@.str.85 = private unnamed_addr constant [62 x i8] c"    Return cluster configuration seen by node. Output format:\00", align 1
@.str.86 = private unnamed_addr constant [98 x i8] c"    <id> <ip:port@bus-port[,hostname]> <flags> <master> <pings> <pongs> <epoch> <link> <slot> ...\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"REPLICAS <node-id>\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"    Return <node-id> replicas.\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"SLOTS\00", align 1
@.str.90 = private unnamed_addr constant [74 x i8] c"    Return information about slots range mappings. Each range is made of:\00", align 1
@.str.91 = private unnamed_addr constant [64 x i8] c"    start, end, master and replicas IP addresses, ports and ids\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"SLOT-STATS\00", align 1
@.str.93 = private unnamed_addr constant [85 x i8] c"    Return an array of slot usage statistics for slots assigned to the current node.\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"SHARDS\00", align 1
@.str.95 = private unnamed_addr constant [85 x i8] c"    Return information about slot range mappings and the nodes associated with them.\00", align 1
@__const.clusterCommandHelp.help = private unnamed_addr constant [25 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr null], align 16
@.str.96 = private unnamed_addr constant [43 x i8] c"This instance has cluster support disabled\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"myid\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"myshardid\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"shards\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"keyslot\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"countkeysinslot\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"Invalid slot\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"getkeysinslot\00", align 1
@.str.107 = private unnamed_addr constant [31 x i8] c"Invalid slot or number of keys\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"de != NULL\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"slaves\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"replicas\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"Unknown node %s\00", align 1
@.str.112 = private unnamed_addr constant [35 x i8] c"The specified node is not a master\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"migration\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"syncslots\00", align 1
@.str.115 = private unnamed_addr constant [55 x i8] c"-CROSSSLOT Keys in request don't hash to the same slot\00", align 1
@.str.116 = private unnamed_addr constant [57 x i8] c"-TRYAGAIN Multiple keys request during rehashing of slot\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"-CLUSTERDOWN The cluster is down\00", align 1
@.str.118 = private unnamed_addr constant [64 x i8] c"-CLUSTERDOWN The cluster is down and only accepts read commands\00", align 1
@.str.119 = private unnamed_addr constant [34 x i8] c"-CLUSTERDOWN Hash slot not served\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"-%s %d %s:%d\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"ASK\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"MOVED\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"getNodeByQuery() unknown error.\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.125 = private unnamed_addr constant [37 x i8] c"Unrecognized preferred endpoint type\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"length == 0\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"nested_elements == 3\00", align 1
@.str.128 = private unnamed_addr constant [34 x i8] c"invalid number of slot ranges: %d\00", align 1
@.str.129 = private unnamed_addr constant [34 x i8] c"slot range is out of range: %d-%d\00", align 1
@.str.130 = private unnamed_addr constant [56 x i8] c"start slot number %d is greater than end slot number %d\00", align 1
@.str.131 = private unnamed_addr constant [33 x i8] c"Slot %d specified multiple times\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"%d-%d \00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.134 = private unnamed_addr constant [61 x i8] c"slots->num_ranges >= 0 && slots->num_ranges <= CLUSTER_SLOTS\00", align 1
@.str.135 = private unnamed_addr constant [48 x i8] c"slot > slots->ranges[slots->num_ranges - 1].end\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.138 = private unnamed_addr constant [94 x i8] c"I have keys for slot %d, but the slot is assigned to another node. Deleting keys in the slot.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 16384) i32 @patternHashSlot(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not45 = icmp sgt i32 %1, 0
  br i1 %.not45, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %.03146 = phi i32 [ -1, %.lr.ph.preheader ], [ %.1, %.critedge ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13    ; 3 uses
  switch i8 %i.b, label %bb.b [
    i8 42, label %.thread
    i8 63, label %.thread
    i8 91, label %.thread
    i8 92, label %.thread
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.c = icmp eq i32 %.03146, -1
  %i.d = icmp eq i8 %i.b, 123
  %or.cond = and i1 %i.c, %i.d
  %i.e = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %.03146, -1
  br i1 %i.f, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i8 %i.b, 125                     ; 2 uses
  %i.h = add nuw nsw i32 %.03146, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = icmp eq i64 %indvars.iv, %i.i            ; 2 uses
  %or.cond36 = select i1 %i.g, i1 %i.j, i1 false
  %.not39 = xor i1 %i.g, true
  %brmerge = select i1 %.not39, i1 true, i1 %i.j
  %.mux40 = select i1 %or.cond36, i32 -2, i32 %.03146
  br i1 %brmerge, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i32 %.03146 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = xor i32 %.03146, -1
  %i.o = add nsw i32 %i.e, %i.n
  %i.p = tail call zeroext i16 @crc16(ptr noundef nonnull %i.m, i32 noundef %i.o) #21
  %i.q = and i16 %i.p, 16383
  %i.r = zext nneg i16 %i.q to i32
  br label %.thread

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %.mux40, %bb.d ], [ %i.e, %bb.b ], [ %.03146, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %i.s = tail call zeroext i16 @crc16(ptr noundef %0, i32 noundef %1) #21
  %i.t = and i16 %i.s, 16383
  %i.u = zext nneg i16 %i.t to i32
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.e, %._crit_edge
  %.133 = phi i32 [ %i.u, %._crit_edge ], [ %i.r, %bb.e ], [ -1, %.lr.ph ], [ -1, %.lr.ph ], [ -1, %.lr.ph ], [ -1, %.lr.ph ]
  ret i32 %.133
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i16 @crc16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 16384) i32 @getSlotOrReply(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call i32 @getLongLongFromObject(ptr noundef %1, ptr noundef nonnull %i.a) #21
  %i.c = icmp ne i32 %i.b, 0
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp ugt i64 %i.d, 16383
  %or.cond3 = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

declare i32 @getLongLongFromObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @connTypeOfCluster() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @connectionTypeTls() #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @connectionTypeTcp() #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

declare ptr @connectionTypeTls() local_unnamed_addr #2

declare ptr @connectionTypeTcp() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @createDumpPayload(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !50
  %i.c = tail call ptr @sdsempty() #21
  tail call void @rioInitWithBuffer(ptr noundef %0, ptr noundef %i.c) #21
  %.shift = getelementptr inbounds nuw i8, ptr %1, i64 4
  %5 = load i32, ptr %.shift, align 4
  %6 = and i32 %5, 254
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @rdbSaveKeyMetadata(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %1, i32 noundef %3) #21
  %.not18 = icmp eq i32 %i.d, -1
  br i1 %.not18, label %bb.c, label %bb.d, !prof !51

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 98) #21
  tail call void @abort() #22
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @rdbSaveObjectType(ptr noundef %0, ptr noundef nonnull %1) #21
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.e, label %bb.f, !prof !51

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 99) #21
  tail call void @abort() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i64 @rdbSaveObject(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #21
  %.not20 = icmp eq i64 %i.f, 0
  br i1 %.not20, label %bb.g, label %bb.h, !prof !51

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 100) #21
  tail call void @abort() #22
  unreachable

bb.h:                                             ; preds = %bb.f
  store i8 13, ptr %i.a, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.g, align 1, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = call ptr @sdscatlen(ptr noundef %i.i, ptr noundef nonnull %i.a, i64 noundef 2) #21 ; 8 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !13
  %.not21 = icmp eq i32 %4, 0
  br i1 %.not21, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %.val.i = load i8, ptr %i.k, align 1, !tbaa !13 ; 2 uses
  %i.l = and i8 %.val.i, 7
  switch i8 %i.l, label %sdslen.exit [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.m = lshr i8 %.val.i, 3
  %i.n = zext nneg i8 %i.m to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 -5
  %i.s = load i16, ptr %i.r, align 1, !tbaa !52
  %i.t = zext i16 %i.s to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 -9
  %i.v = load i32, ptr %i.u, align 1, !tbaa !9
  %i.w = zext i32 %i.v to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds i8, ptr %i.j, i64 -17
  %i.y = load i64, ptr %i.x, align 1, !tbaa !50
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi i64 [ %i.y, %bb.n ], [ %i.n, %bb.j ], [ %i.q, %bb.k ], [ %i.t, %bb.l ], [ %i.w, %bb.m ], [ 0, %bb.i ]
  %i.z = call i64 @crc64(i64 noundef 0, ptr noundef nonnull %i.j, i64 noundef %.0.i) #21
  store i64 %i.z, ptr %i.b, align 8, !tbaa !50
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %sdslen.exit, %bb.h
  %i.aa = phi ptr [ %.pre, %sdslen.exit ], [ %i.j, %bb.h ]
  %i.ab = call ptr @sdscatlen(ptr noundef %i.aa, ptr noundef nonnull %i.b, i64 noundef 8) #21
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !13
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
end_hunk_0
