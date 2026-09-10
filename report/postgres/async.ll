Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/async?download=true
inline.NumInlined: 76
inline.NumDeleted: 40
begin_hunk_0
%struct.GlobalChannelKey = type { i32, [64 x i8] }
%struct.StringInfoData = type { ptr, i32, i32, i32 }
%struct.dshash_seq_status = type { ptr, i32, i32, ptr, i64, i32, i8 }

@AsyncShmemCallbacks = dso_local local_unnamed_addr constant { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @AsyncShmemRequest, ptr @AsyncShmemInit, ptr null, ptr null }, align 8
@notifyInterruptPending = dso_local global i32 0, align 4
@Trace_notify = dso_local local_unnamed_addr global i8 0, align 1
@max_notify_queue_pages = dso_local local_unnamed_addr global i32 1048576, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"NOTIFY\00", align 1
@ParallelWorkerNumber = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot send notifications from a parallel worker\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"async.c\00", align 1
@__func__.Async_Notify = private unnamed_addr constant [13 x i8] c"Async_Notify\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Async_Notify(%s)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"channel name cannot be empty\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"channel name too long\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"payload string too long\00", align 1
@CurTransactionContext = external local_unnamed_addr global ptr, align 8
@pendingNotifies = internal unnamed_addr global ptr null, align 8
@TopTransactionContext = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"Async_Listen(%s,%d)\00", align 1
@MyProcPid = external local_unnamed_addr global i32, align 4
@__func__.Async_Listen = private unnamed_addr constant [13 x i8] c"Async_Listen\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Async_Unlisten(%s,%d)\00", align 1
@__func__.Async_Unlisten = private unnamed_addr constant [15 x i8] c"Async_Unlisten\00", align 1
@pendingActions = internal unnamed_addr global ptr null, align 8
@unlistenExitRegistered = internal unnamed_addr global i1 false, align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Async_UnlistenAll(%d)\00", align 1
@__func__.Async_UnlistenAll = private unnamed_addr constant [18 x i8] c"Async_UnlistenAll\00", align 1
@localChannelTable = internal unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [75 x i8] c"cannot PREPARE a transaction that has executed LISTEN, UNLISTEN, or NOTIFY\00", align 1
@__func__.AtPrepare_Notify = private unnamed_addr constant [17 x i8] c"AtPrepare_Notify\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"PreCommit_Notify\00", align 1
@signalPids = internal unnamed_addr global ptr null, align 8
@TopMemoryContext = external local_unnamed_addr global ptr, align 8
@MaxBackends = external local_unnamed_addr global i32, align 4
@signalProcnos = internal unnamed_addr global ptr null, align 8
@queueHeadBeforeWrite = internal unnamed_addr global %struct.QueuePosition zeroinitializer, align 8
@queueHeadAfterWrite = internal unnamed_addr global %struct.QueuePosition zeroinitializer, align 8
@MainLWLockArray = external local_unnamed_addr global ptr, align 8
@asyncQueueControl = internal global ptr null, align 8
@.str.13 = private unnamed_addr constant [43 x i8] c"too many notifications in the NOTIFY queue\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"AtCommit_Notify\00", align 1
@amRegisteredListener = internal unnamed_addr global i1 false, align 1
@tryAdvanceTail = internal unnamed_addr global i1 false, align 1
@NotifySlruDesc = internal global %struct.SlruDesc zeroinitializer, align 8
@whereToSendOutput = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"NOTIFY for \22%s\22 payload \22%s\22\00", align 1
@__func__.NotifyMyFrontEnd = private unnamed_addr constant [17 x i8] c"NotifyMyFrontEnd\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"notify_buffers\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Async Queue Control\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@notify_buffers = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"pg_notify\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"Could not access async queue at page %ld, offset %d.\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@globalChannelTable = internal unnamed_addr global ptr null, align 8
@globalChannelDSA = internal unnamed_addr global ptr null, align 8
@globalChannelTableDSHParams = internal constant { i64, i64, ptr, ptr, ptr, i32, [4 x i8] } { i64 68, i64 88, ptr @dshash_memcmp, ptr @globalChannelTableHash, ptr @dshash_memcpy, i32 64, [4 x i8] zeroinitializer }, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"Local Listen Channels\00", align 1
@pendingListenActions = internal unnamed_addr global ptr null, align 8
@.str.23 = private unnamed_addr constant [23 x i8] c"Pending Listen Actions\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"BecomeRegisteredListener(%d)\00", align 1
@__func__.BecomeRegisteredListener = private unnamed_addr constant [25 x i8] c"BecomeRegisteredListener\00", align 1
@MyDatabaseId = external local_unnamed_addr global i32, align 4
@MyProcNumber = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [27 x i8] c"CleanupListenersOnExit(%d)\00", align 1
@__func__.CleanupListenersOnExit = private unnamed_addr constant [23 x i8] c"CleanupListenersOnExit\00", align 1
@ExitOnAnyError = external local_unnamed_addr global i8, align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"global channel table missing post-commit/abort\00", align 1
@__func__.ApplyPendingListenActions = private unnamed_addr constant [26 x i8] c"ApplyPendingListenActions\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"could not find listener entry for channel \22%s\22 backend %d\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"NOTIFY queue is %.0f%% full\00", align 1
@.str.29 = private unnamed_addr constant [76 x i8] c"The server process with PID %d is among those with the oldest transactions.\00", align 1
@.str.30 = private unnamed_addr constant [84 x i8] c"The NOTIFY queue cannot be emptied until that process ends its current transaction.\00", align 1
@__func__.asyncQueueFillWarning = private unnamed_addr constant [22 x i8] c"asyncQueueFillWarning\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"could not signal backend with PID %d: %m\00", align 1
@__func__.SignalBackends = private unnamed_addr constant [15 x i8] c"SignalBackends\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"ProcessIncomingNotify\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"notify interrupt\00", align 1
@PqCommMethods = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"ProcessIncomingNotify: done\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Pending Notifies\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Pending Notify Channel Names\00", align 1

; Function Attrs: nounwind uwtable
define internal void @AsyncShmemRequest(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.ShmemStructOpts, align 8    ; 5 uses
  %2 = alloca %struct.SlruOpts, align 8           ; 15 uses
  %i.a = load i32, ptr @MaxBackends, align 4
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i64 @mul_size(i64 noundef %i.b, i64 noundef 40) #14
  %i.d = tail call i64 @add_size(i64 noundef %i.c, i64 noundef 72) #14
  store ptr @.str.17, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @asyncQueueControl, ptr %i.g, align 8
  call void @ShmemRequestStructWithOpts(ptr noundef nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str.18, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @NotifySlruDesc, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load i32, ptr @notify_buffers, align 4
  store i32 %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 5, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @.str.19, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.q, i8 0, i64 7, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr @asyncQueuePagePrecedes, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr @asyncQueueErrdetailForIoError, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 63, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i32 93, ptr %i.u, align 4
  call void @SimpleLruRequestWithOpts(ptr noundef nonnull %2) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AsyncShmemInit(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @asyncQueueControl, align 8
  store i64 0, ptr %i.a, align 8
  %i.b = load ptr, ptr @asyncQueueControl, align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.j, align 8
  %i.k = load i32, ptr @MaxBackends, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = tail call zeroext i1 @SlruScanDirectory(ptr noundef nonnull @NotifySlruDesc, ptr noundef nonnull @SlruScanDirCbDeleteAll, ptr noundef null) #14 ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 8 uses
  %i.n = load ptr, ptr @asyncQueueControl, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv
  store i32 -1, ptr %i.p, align 8
  %i.q = load ptr, ptr @asyncQueueControl, align 8
  %i.r = getelementptr [40 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = getelementptr i8, ptr %i.r, i64 76
  store i32 0, ptr %i.s, align 4
  %i.t = load ptr, ptr @asyncQueueControl, align 8
  %i.u = getelementptr [40 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 80
  store i32 -1, ptr %i.v, align 8
  %i.w = load ptr, ptr @asyncQueueControl, align 8
  %i.x = getelementptr [40 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 88
  store i64 0, ptr %i.y, align 8
  %i.z = load ptr, ptr @asyncQueueControl, align 8
  %i.aa = getelementptr [40 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = getelementptr i8, ptr %i.aa, i64 96
  store i32 0, ptr %i.ab, align 8
  %i.ac = load ptr, ptr @asyncQueueControl, align 8
  %i.ad = getelementptr [40 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 104
  store i8 0, ptr %i.ae, align 8
  %i.af = load ptr, ptr @asyncQueueControl, align 8
  %i.ag = getelementptr [40 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr i8, ptr %i.ag, i64 105
  store i8 0, ptr %i.ah, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr @MaxBackends, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @pg_notify(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.f) #14
  %i.h = tail call ptr @text_to_cstring(ptr noundef %i.g) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.06 = phi ptr [ %i.h, %bb.b ], [ @.str, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i8, ptr %i.i, align 8, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.n) #14
  %i.p = tail call ptr @text_to_cstring(ptr noundef %i.o) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.p, %bb.d ], [ @.str, %bb.c ]
  tail call void @PreventCommandDuringRecovery(ptr noundef nonnull @.str.1) #14
  tail call void @Async_Notify(ptr noundef %.06, ptr noundef %.0)
  ret i64 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @text_to_cstring(ptr noundef) local_unnamed_addr #2

declare ptr @pg_detoast_datum_packed(ptr noundef) local_unnamed_addr #2

declare void @PreventCommandDuringRecovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Async_Notify(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call i32 @GetCurrentTransactionNestLevel() #14 ; 2 uses
  %i.c = load i32, ptr @ParallelWorkerNumber, align 4
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 903, ptr noundef nonnull @__func__.Async_Notify) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr @Trace_notify, align 1, !range !5, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #14
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, ptr noundef %0) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 906, ptr noundef nonnull @__func__.Async_Notify) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.l = phi i64 [ %i.k, %bb.g ], [ 0, %bb.f ]    ; 6 uses
  %.not40 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.n = phi i64 [ %i.m, %bb.i ], [ 0, %bb.h ]    ; 4 uses
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.q = tail call i32 @errcode(i32 noundef 50856066) #14 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 915, ptr noundef nonnull @__func__.Async_Notify) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.s = icmp ugt i64 %i.l, 63
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.u = tail call i32 @errcode(i32 noundef 50856066) #14 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 921, ptr noundef nonnull @__func__.Async_Notify) #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.w = icmp ugt i64 %i.n, 7999
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.y = tail call i32 @errcode(i32 noundef 50856066) #14 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 926, ptr noundef nonnull @__func__.Async_Notify) #14
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aa = load ptr, ptr @CurTransactionContext, align 8
  %i.ab = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.aa, ptr @CurrentMemoryContext, align 8
  %i.ac = add nuw nsw i64 %i.l, 6
  %i.ad = add nuw nsw i64 %i.ac, %i.n
  %i.ae = tail call ptr @palloc(i64 noundef %i.ad) #14 ; 7 uses
  %i.af = trunc nuw nsw i64 %i.l to i16           ; 2 uses
  store i16 %i.af, ptr %i.ae, align 2
  %i.ag = trunc nuw nsw i64 %i.n to i16           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 3 uses
  %i.aj = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %0) #14 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  br i1 %.not40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %1) #14 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i8 0, ptr %i.al, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.an = load ptr, ptr @pendingNotifies, align 8 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.an, align 8
  %i.aq = icmp sgt i32 %i.b, %i.ap
  br i1 %i.aq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = load ptr, ptr @TopTransactionContext, align 8
  %i.as = tail call ptr @MemoryContextAlloc(ptr noundef %i.ar, i64 noundef 48) #14 ; 5 uses
  store i32 %i.b, ptr %i.as, align 8
  %i.at = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %i.ae) #14
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr @pendingNotifies, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %i.aw, ptr %i.ax, align 8
  store ptr %i.as, ptr @pendingNotifies, align 8
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = call ptr @hash_search(ptr noundef nonnull %i.az, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef null) #14
  %.not22.i = icmp eq ptr %i.ba, null
  br i1 %.not22.i, label %.loopexit42, label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %.not20.i = icmp eq ptr %i.bc, null
  br i1 %.not20.i, label %.loopexit42, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x
end_hunk_0
begin_hunk_1_@PreCommit_Notify:bb.a
  store i64 64, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 68, ptr %i.bc, align 8
  %i.bd = load ptr, ptr @CurTransactionContext, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre146, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %list_length.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = sext i32 %i.bi to i64
  br label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.n, %bb.m
  %i.bk = phi i64 [ %i.bj, %bb.n ], [ 0, %bb.m ]
  %i.bl = call ptr @hash_create(ptr noundef nonnull @.str.23, i64 noundef %i.bk, ptr noundef nonnull %4, i32 noundef 1048) #14
  store ptr %i.bl, ptr @pendingListenActions, align 8
  %.pre = load ptr, ptr @pendingActions, align 8
  br label %initPendingListenActions.exit

initPendingListenActions.exit:                    ; preds = %initLocalChannelTable.exit, %list_length.exit.i
  %i.bm = phi ptr [ %.pre146, %initLocalChannelTable.exit ], [ %.pre, %list_length.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %.not46 = icmp eq ptr %i.bo, null
  br i1 %.not46, label %.critedge57, label %.lr.ph

.lr.ph:                                           ; preds = %initPendingListenActions.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.bp, align 4
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph180, label %.critedge57

.lr.ph180:                                        ; preds = %.lr.ph, %PrepareTableEntriesForUnlisten.exit
  %indvars.iv179 = phi i64 [ %indvars.iv.next, %PrepareTableEntriesForUnlisten.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.bu = load ptr, ptr %i.bq, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv179
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4
  switch i32 %i.bx, label %PrepareTableEntriesForUnlisten.exit [
    i32 0, label %bb.o
    i32 1, label %bb.am
    i32 2, label %bb.ao
  ]

bb.o:                                             ; preds = %.lr.ph180
  %.b35.i = load i1, ptr @amRegisteredListener, align 1
  br i1 %.b35.i, label %BecomeRegisteredListener.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = load i8, ptr @Trace_notify, align 1, !range !5, !noundef !6
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ca = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #14
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = load i32, ptr @MyProcPid, align 4
  %i.cc = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.24, i32 noundef %i.cb) #14 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1444, ptr noundef nonnull @__func__.BecomeRegisteredListener) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.b.i = load i1, ptr @unlistenExitRegistered, align 1
  br i1 %.b.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @before_shmem_exit(ptr noundef nonnull @Async_UnlistenOnExit, i64 noundef 0) #14
  store i1 true, ptr @unlistenExitRegistered, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = load ptr, ptr @MainLWLockArray, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3456
  %i.cf = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.ce, i32 noundef 0) #14 ; 0 uses
  %i.cg = load ptr, ptr @asyncQueueControl, align 8 ; 10 uses
  %.sroa.031.0.copyload.i = load i64, ptr %i.cg, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.ch, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %.038.i = load i32, ptr %i.ci, align 8          ; 2 uses
  %.not39.i = icmp eq i32 %.038.i, -1
  %.pre.i = load i32, ptr @MyProcNumber, align 4  ; 2 uses
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.ck = load i32, ptr @MyDatabaseId, align 4
  br label %bb.v

._crit_edge.i:                                    ; preds = %bb.aa, %bb.u
  %.sroa.11.0.lcssa.i = phi i32 [ %.sroa.11.0.copyload.i, %bb.u ], [ %.sroa.11.1.i, %bb.aa ]
  %.sroa.9.0.lcssa.i = phi i32 [ %.sroa.9.0.copyload.i, %bb.u ], [ %.sroa.9.1.i, %bb.aa ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.u ], [ %.sroa.0.1.i, %bb.aa ] ; 2 uses
  %.032.lcssa.i = phi i32 [ -1, %bb.u ], [ %spec.select.i, %bb.aa ] ; 2 uses
  %i.cl = sext i32 %.pre.i to i64
  %i.cm = getelementptr [40 x i8], ptr %i.cg, i64 %i.cl ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 88
  store i64 %.sroa.0.0.lcssa.i, ptr %i.cn, align 8
  %.sroa.9.0..sroa_idx22.i = getelementptr i8, ptr %i.cm, i64 96
  store i32 %.sroa.9.0.lcssa.i, ptr %.sroa.9.0..sroa_idx22.i, align 8
  %.sroa.11.0..sroa_idx29.i = getelementptr i8, ptr %i.cm, i64 100
  store i32 %.sroa.11.0.lcssa.i, ptr %.sroa.11.0..sroa_idx29.i, align 4
  %i.co = load i32, ptr @MyProcPid, align 4
  %i.cp = load ptr, ptr @asyncQueueControl, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cr = load i32, ptr @MyProcNumber, align 4
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [40 x i8], ptr %i.cq, i64 %i.cs
  store i32 %i.co, ptr %i.ct, align 8
  %i.cu = load i32, ptr @MyDatabaseId, align 4
  %i.cv = load ptr, ptr @asyncQueueControl, align 8
  %i.cw = load i32, ptr @MyProcNumber, align 4
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [40 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 76
  store i32 %i.cu, ptr %i.cz, align 4
  %i.da = load ptr, ptr @asyncQueueControl, align 8
  %i.db = load i32, ptr @MyProcNumber, align 4
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [40 x i8], ptr %i.da, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 104
  store i8 0, ptr %i.de, align 8
  %i.df = load ptr, ptr @asyncQueueControl, align 8
  %i.dg = load i32, ptr @MyProcNumber, align 4
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [40 x i8], ptr %i.df, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 105
  store i8 0, ptr %i.dj, align 1
  %.not36.i = icmp eq i32 %.032.lcssa.i, -1
  %i.dk = load ptr, ptr @asyncQueueControl, align 8 ; 3 uses
  br i1 %.not36.i, label %bb.ac, label %bb.ab

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i
  %.044.i = phi i32 [ %.038.i, %.lr.ph.i ], [ %.0.i, %bb.aa ] ; 3 uses
  %.03243.i = phi i32 [ -1, %.lr.ph.i ], [ %spec.select.i, %bb.aa ]
  %.sroa.0.042.i = phi i64 [ %.sroa.0.0.copyload.i, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.aa ] ; 6 uses
  %.sroa.9.041.i = phi i32 [ %.sroa.9.0.copyload.i, %.lr.ph.i ], [ %.sroa.9.1.i, %bb.aa ] ; 4 uses
  %.sroa.11.040.i = phi i32 [ %.sroa.11.0.copyload.i, %.lr.ph.i ], [ %.sroa.11.1.i, %bb.aa ] ; 3 uses
  %i.dl = sext i32 %.044.i to i64                 ; 3 uses
  %i.dm = getelementptr inbounds [40 x i8], ptr %i.cj, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = icmp eq i32 %i.do, %i.ck
  br i1 %i.dp, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load i64, ptr %i.dq, align 8            ; 3 uses
  %i.ds = icmp slt i64 %.sroa.0.042.i, %i.dr
  %i.dt = getelementptr [40 x i8], ptr %i.cg, i64 %i.dl ; 3 uses
  br i1 %i.ds, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.sroa.9.0..sroa_idx18.i = getelementptr i8, ptr %i.dt, i64 96
  %.sroa.9.0.copyload19.i = load i32, ptr %.sroa.9.0..sroa_idx18.i, align 8
  br label %.sink.split.i

bb.y:                                             ; preds = %bb.w
  %.not37.i = icmp eq i64 %.sroa.0.042.i, %i.dr
  br i1 %.not37.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr i8, ptr %i.dt, i64 96
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  %i.dw = icmp sgt i32 %.sroa.9.041.i, %i.dv
  br i1 %i.dw, label %bb.aa, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.z, %bb.x
  %.sroa.9.1.ph.i = phi i32 [ %.sroa.9.0.copyload19.i, %bb.x ], [ %i.dv, %bb.z ]
  %.sroa.0.1.ph.i = phi i64 [ %i.dr, %bb.x ], [ %.sroa.0.042.i, %bb.z ]
  %.sroa.11.0..sroa_idx25.i = getelementptr i8, ptr %i.dt, i64 100
  %.sroa.11.0.copyload26.i = load i32, ptr %.sroa.11.0..sroa_idx25.i, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i, %bb.z, %bb.y, %bb.v
  %.sroa.11.1.i = phi i32 [ %.sroa.11.040.i, %bb.z ], [ %.sroa.11.040.i, %bb.v ], [ %.sroa.11.040.i, %bb.y ], [ %.sroa.11.0.copyload26.i, %.sink.split.i ] ; 2 uses
  %.sroa.9.1.i = phi i32 [ %.sroa.9.041.i, %bb.z ], [ %.sroa.9.041.i, %bb.v ], [ %.sroa.9.041.i, %bb.y ], [ %.sroa.9.1.ph.i, %.sink.split.i ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.042.i, %bb.z ], [ %.sroa.0.042.i, %bb.v ], [ %.sroa.0.042.i, %bb.y ], [ %.sroa.0.1.ph.i, %.sink.split.i ] ; 2 uses
  %i.dx = icmp slt i32 %.044.i, %.pre.i
  %spec.select.i = select i1 %i.dx, i32 %.044.i, i32 %.03243.i ; 2 uses
  %i.dy = getelementptr [40 x i8], ptr %i.cg, i64 %i.dl
  %i.dz = getelementptr i8, ptr %i.dy, i64 80
  %.0.i = load i32, ptr %i.dz, align 8            ; 2 uses
  %.not.i60 = icmp eq i32 %.0.i, -1
  br i1 %.not.i60, label %._crit_edge.i, label %bb.v, !llvm.loop !9

bb.ab:                                            ; preds = %._crit_edge.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 72 ; 2 uses
  %i.eb = sext i32 %.032.lcssa.i to i64           ; 2 uses
  %i.ec = getelementptr inbounds [40 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = load i32, ptr @MyProcNumber, align 4
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [40 x i8], ptr %i.ea, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.ee, ptr %i.ei, align 8
  %i.ej = load i32, ptr @MyProcNumber, align 4
  %i.ek = load ptr, ptr @asyncQueueControl, align 8
  %i.el = getelementptr [40 x i8], ptr %i.ek, i64 %i.eb
  %i.em = getelementptr i8, ptr %i.el, i64 80
  store i32 %i.ej, ptr %i.em, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = load i32, ptr @MyProcNumber, align 4
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr [40 x i8], ptr %i.dk, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 80
  store i32 %i.eo, ptr %i.es, align 8
  %i.et = load i32, ptr @MyProcNumber, align 4
  %i.eu = load ptr, ptr @asyncQueueControl, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store i32 %i.et, ptr %i.ev, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ew = load ptr, ptr @MainLWLockArray, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 3456
  call void @LWLockRelease(ptr noundef nonnull %i.ex) #14
  store i1 true, ptr @amRegisteredListener, align 1
  %i.ey = icmp eq i64 %.sroa.0.0.lcssa.i, %.sroa.031.0.copyload.i
  %i.ez = icmp eq i32 %.sroa.9.0.lcssa.i, %.sroa.4.0.copyload.i
  %or.cond.i61 = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond.i61, label %BecomeRegisteredListener.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @asyncQueueReadAllNotifications()
  br label %BecomeRegisteredListener.exit

BecomeRegisteredListener.exit:                    ; preds = %bb.o, %bb.ad, %bb.ae
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.fb = load ptr, ptr @pendingListenActions, align 8
  %i.fc = call ptr @hash_search(ptr noundef %i.fb, ptr noundef nonnull %i.fa, i32 noundef 1, ptr noundef null) #14
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  store i32 0, ptr %i.fd, align 4
  %i.fe = load ptr, ptr @localChannelTable, align 8
  %i.ff = call ptr @hash_search(ptr noundef %i.fe, ptr noundef nonnull %i.fa, i32 noundef 1, ptr noundef null) #14 ; 0 uses
  %i.fg = load i32, ptr @MyDatabaseId, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.br, i8 0, i64 64, i1 false)
  store i32 %i.fg, ptr %3, align 4
  %i.fh = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.br, ptr noundef nonnull dereferenceable(1) %i.fa, i64 noundef 64) #14 ; 0 uses
  %i.fi = load ptr, ptr @globalChannelTable, align 8
  %i.fj = call ptr @dshash_find_or_insert_extended(ptr noundef %i.fi, ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef 0) #14 ; 5 uses
  %i.fk = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.fl = trunc nuw i8 %i.fk to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 72 ; 5 uses
  br i1 %i.fl, label %bb.af, label %.thread.i

.thread.i:                                        ; preds = %BecomeRegisteredListener.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  br label %bb.ag

bb.af:                                            ; preds = %BecomeRegisteredListener.exit
  %.pre.i64 = load i64, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %.not.i65 = icmp eq i64 %.pre.i64, 0
  br i1 %.not.i65, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %.thread.i
  %i.fm = load ptr, ptr @globalChannelDSA, align 8
  %i.fn = call i64 @dsa_allocate_extended(ptr noundef %i.fm, i64 noundef 32, i32 noundef 0) #14 ; 2 uses
  store i64 %i.fn, ptr %.phi.trans.insert.i, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 84
  store i32 4, ptr %i.fo, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fp = phi i64 [ %i.fn, %bb.ag ], [ %.pre.i64, %bb.af ]
  %i.fq = load ptr, ptr @globalChannelDSA, align 8
  %i.fr = call ptr @dsa_get_address(ptr noundef %i.fq, i64 noundef %i.fp) #14 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 80 ; 6 uses
  %i.ft = load i32, ptr %i.fs, align 8            ; 4 uses
  %.not4144.i = icmp sgt i32 %i.ft, 0
  br i1 %.not4144.i, label %.lr.ph.i63, label %.critedge.i

.lr.ph.i63:                                       ; preds = %bb.ah
  %i.fu = load i32, ptr @MyProcNumber, align 4
  %wide.trip.count.i = zext nneg i32 %i.ft to i64
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.aj, !llvm.loop !10

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i63
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i, %bb.ai ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.i
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = icmp eq i32 %i.fw, %i.fu
  br i1 %i.fx, label %PrepareTableEntriesForListen.exit, label %bb.ai

.critedge.i:                                      ; preds = %bb.ai, %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 84 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4            ; 2 uses
  %.not42.i = icmp slt i32 %i.ft, %i.fz
  br i1 %.not42.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.critedge.i
  %i.ga = shl i32 %i.fz, 1                        ; 2 uses
  %i.gb = load i64, ptr %.phi.trans.insert.i, align 8
  %i.gc = load ptr, ptr @globalChannelDSA, align 8
  %i.gd = sext i32 %i.ga to i64
  %i.ge = shl nsw i64 %i.gd, 3
  %i.gf = call i64 @dsa_allocate_extended(ptr noundef %i.gc, i64 noundef %i.ge, i32 noundef 0) #14 ; 2 uses
  %i.gg = load ptr, ptr @globalChannelDSA, align 8
  %i.gh = call ptr @dsa_get_address(ptr noundef %i.gg, i64 noundef %i.gf) #14 ; 2 uses
  %i.gi = load i32, ptr %i.fs, align 8
  %i.gj = sext i32 %i.gi to i64
  %i.gk = shl nsw i64 %i.gj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gh, ptr align 4 %i.fr, i64 %i.gk, i1 false)
  store i64 %i.gf, ptr %.phi.trans.insert.i, align 8
  store i32 %i.ga, ptr %i.fy, align 4
  %i.gl = load ptr, ptr @globalChannelDSA, align 8
  call void @dsa_free(ptr noundef %i.gl, i64 noundef %i.gb) #14
  %.pre47.i = load i32, ptr %i.fs, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge.i
  %i.gm = phi i32 [ %.pre47.i, %bb.ak ], [ %i.ft, %.critedge.i ]
  %.0.i62 = phi ptr [ %i.gh, %bb.ak ], [ %i.fr, %.critedge.i ] ; 2 uses
  %i.gn = load i32, ptr @MyProcNumber, align 4
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %.0.i62, i64 %i.go
  store i32 %i.gn, ptr %i.gp, align 4
  %i.gq = load i32, ptr %i.fs, align 8
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %.0.i62, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i8 1, ptr %i.gt, align 4
  %i.gu = load i32, ptr %i.fs, align 8
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.fs, align 8
  br label %PrepareTableEntriesForListen.exit

PrepareTableEntriesForListen.exit:                ; preds = %bb.aj, %bb.al
  %i.gw = load ptr, ptr @globalChannelTable, align 8
  call void @dshash_release_lock(ptr noundef %i.gw, ptr noundef nonnull %i.fj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %PrepareTableEntriesForUnlisten.exit

bb.am:                                            ; preds = %.lr.ph180
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.gy = load ptr, ptr @localChannelTable, align 8
  %i.gz = call ptr @hash_search(ptr noundef %i.gy, ptr noundef nonnull %i.gx, i32 noundef 0, ptr noundef null) #14
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %PrepareTableEntriesForUnlisten.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hb = load ptr, ptr @pendingListenActions, align 8
  %i.hc = call ptr @hash_search(ptr noundef %i.hb, ptr noundef nonnull %i.gx, i32 noundef 1, ptr noundef null) #14
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  store i32 1, ptr %i.hd, align 4
  br label %PrepareTableEntriesForUnlisten.exit

bb.ao:                                            ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.he = load ptr, ptr @localChannelTable, align 8
  call void @hash_seq_init(ptr noundef nonnull %2, ptr noundef %i.he) #14
  %i.hf = call ptr @hash_seq_search(ptr noundef nonnull %2) #14 ; 2 uses
  %.not2.i = icmp eq ptr %i.hf, null
  br i1 %.not2.i, label %PrepareTableEntriesForUnlistenAll.exit, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.ao, %.lr.ph.i66
  %i.hg = phi ptr [ %i.hk, %.lr.ph.i66 ], [ %i.hf, %bb.ao ]
  %i.hh = load ptr, ptr @pendingListenActions, align 8
  %i.hi = call ptr @hash_search(ptr noundef %i.hh, ptr noundef nonnull %i.hg, i32 noundef 1, ptr noundef null) #14
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  store i32 1, ptr %i.hj, align 4
  %i.hk = call ptr @hash_seq_search(ptr noundef nonnull %2) #14 ; 2 uses
  %.not.i67 = icmp eq ptr %i.hk, null
  br i1 %.not.i67, label %PrepareTableEntriesForUnlistenAll.exit, label %.lr.ph.i66, !llvm.loop !11

PrepareTableEntriesForUnlistenAll.exit:           ; preds = %.lr.ph.i66, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %PrepareTableEntriesForUnlisten.exit

PrepareTableEntriesForUnlisten.exit:              ; preds = %bb.an, %bb.am, %PrepareTableEntriesForUnlistenAll.exit, %PrepareTableEntriesForListen.exit, %.lr.ph180
  %indvars.iv.next = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.hl = load i32, ptr %i.bp, align 4
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next, %i.hm
  br i1 %i.hn, label %.lr.ph180, label %.critedge57

.critedge57:                                      ; preds = %PrepareTableEntriesForUnlisten.exit, %.lr.ph, %initPendingListenActions.exit, %initGlobalChannelTable.exit
  %i.ho = load ptr, ptr @pendingNotifies, align 8 ; 5 uses
  %.not48 = icmp eq ptr %i.ho, null
  br i1 %.not48, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %.critedge57
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store ptr null, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %.not49 = icmp eq ptr %i.hr, null
  br i1 %.not49, label %.preheader, label %bb.aq

.preheader:                                       ; preds = %bb.ap
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8            ; 3 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %.loopexit86, label %.lr.ph128

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @hash_seq_init(ptr noundef nonnull %6, ptr noundef nonnull %i.hr) #14
  %i.hv = call ptr @hash_seq_search(ptr noundef nonnull %6) #14 ; 2 uses
  %.not5489 = icmp eq ptr %i.hv, null
  br i1 %.not5489, label %._crit_edge, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.aq, %.lr.ph90
  %i.hw = phi ptr [ %i.id, %.lr.ph90 ], [ %i.hv, %bb.aq ]
  %i.hx = load ptr, ptr @pendingNotifies, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = call ptr @lappend(ptr noundef %i.hz, ptr noundef nonnull %i.hw) #14
  %i.ib = load ptr, ptr @pendingNotifies, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  store ptr %i.ia, ptr %i.ic, align 8
  %i.id = call ptr @hash_seq_search(ptr noundef nonnull %6) #14 ; 2 uses
  %.not54 = icmp eq ptr %i.id, null
  br i1 %.not54, label %._crit_edge, label %.lr.ph90, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph90, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.loopexit86

.lr.ph128:                                        ; preds = %.preheader
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.ig = load i32, ptr %i.ie, align 4
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %.lr.ph182, label %.loopexit86

.lr.ph182:                                        ; preds = %.lr.ph128, %.split105.us
  %indvars.iv140181 = phi i64 [ %indvars.iv.next141, %.split105.us ], [ 0, %.lr.ph128 ] ; 2 uses
  %i.ii = phi ptr [ %i.jb, %.split105.us ], [ %i.ho, %.lr.ph128 ] ; 2 uses
  %i.ij = load ptr, ptr %i.if, align 8
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv140181
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.io = load ptr, ptr %i.in, align 8            ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %.not53 = icmp eq ptr %i.io, null
  br i1 %.not53, label %.critedge134, label %.split

.split:                                           ; preds = %.lr.ph182
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ir = load i32, ptr %i.iq, align 4
  %.fr135 = freeze i32 %i.ir                      ; 2 uses
  %i.is = icmp sgt i32 %.fr135, 0
  br i1 %i.is, label %.lr.ph93.split.us107, label %.critedge134

.lr.ph93.split.us107:                             ; preds = %.split
  %i.it = load ptr, ptr %i.ip, align 8
  %wide.trip.count = zext nneg i32 %.fr135 to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %.lr.ph93.split.us107
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.as ], [ 0, %.lr.ph93.split.us107 ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv137
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.iv, ptr noundef nonnull dereferenceable(1) %i.im) #16
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %.split105.us, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count
  br i1 %exitcond.not, label %.critedge134, label %bb.ar

.critedge134:                                     ; preds = %bb.as, %.split, %.lr.ph182
  %i.iy = call ptr @lappend(ptr noundef %i.io, ptr noundef nonnull %i.im) #14
  %i.iz = load ptr, ptr @pendingNotifies, align 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  store ptr %i.iy, ptr %i.ja, align 8
  br label %.split105.us

.split105.us:                                     ; preds = %bb.ar, %.critedge134
  %i.jb = phi ptr [ %i.iz, %.critedge134 ], [ %i.ii, %bb.ar ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140181, 1 ; 2 uses
  %i.jc = load i32, ptr %i.ie, align 4
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv.next141, %i.jd
  br i1 %i.je, label %.lr.ph182, label %.loopexit86

.loopexit86:                                      ; preds = %.split105.us, %.lr.ph128, %.preheader, %._crit_edge
  %i.jf = load ptr, ptr @signalPids, align 8
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit86
  %i.jh = load ptr, ptr @TopMemoryContext, align 8
  %i.ji = load i32, ptr @MaxBackends, align 4
  %i.jj = sext i32 %i.ji to i64
  %i.jk = shl nsw i64 %i.jj, 2
  %i.jl = call ptr @MemoryContextAlloc(ptr noundef %i.jh, i64 noundef %i.jk) #14
  store ptr %i.jl, ptr @signalPids, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit86
  %i.jm = load ptr, ptr @signalProcnos, align 8
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jo = load ptr, ptr @TopMemoryContext, align 8
  %i.jp = load i32, ptr @MaxBackends, align 4
  %i.jq = sext i32 %i.jp to i64
  %i.jr = shl nsw i64 %i.jq, 2
  %i.js = call ptr @MemoryContextAlloc(ptr noundef %i.jo, i64 noundef %i.jr) #14
  store ptr %i.js, ptr @signalProcnos, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jt = call i32 @GetCurrentTransactionId() #14 ; 0 uses
  call void @LockSharedObject(i32 noundef 1262, i32 noundef 0, i16 noundef zeroext 0, i32 noundef 8) #14
  store i64 0, ptr @queueHeadBeforeWrite, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @queueHeadBeforeWrite, i64 8), align 8
  store i64 0, ptr @queueHeadAfterWrite, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @queueHeadAfterWrite, i64 8), align 8
  %i.ju = load ptr, ptr @pendingNotifies, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8            ; 2 uses
  %.not.i69 = icmp eq ptr %i.jw, null
  br i1 %.not.i69, label %.loopexit, label %list_head.exit

list_head.exit:                                   ; preds = %bb.aw
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8            ; 2 uses
  %.not55130 = icmp eq ptr %i.jy, null
  br i1 %.not55130, label %.loopexit, label %.lr.ph133

.lr.ph133:                                        ; preds = %list_head.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.4..4..4..4..4..sroa_idx183 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.8..8..8..8..8..sroa_idx184 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.16..16..16..16..16..sroa_idx185 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.17..17..17..17..17..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph133, %asyncQueueAddEntries.exit
  %.037132 = phi i1 [ true, %.lr.ph133 ], [ false, %asyncQueueAddEntries.exit ]
  %.039131 = phi ptr [ %i.jy, %.lr.ph133 ], [ %.229.i, %asyncQueueAddEntries.exit ]
  %i.ka = load ptr, ptr @MainLWLockArray, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 3456
  %i.kc = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.kb, i32 noundef 0) #14 ; 0 uses
  %.pre147 = load ptr, ptr @asyncQueueControl, align 8 ; 5 uses
  br i1 %.037132, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @queueHeadBeforeWrite, ptr noundef nonnull align 8 dereferenceable(16) %.pre147, i64 16, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.kd = load i64, ptr %.pre147, align 8         ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.pre147, i64 16
  %i.kf = load i64, ptr %i.ke, align 8            ; 2 uses
  %i.kg = icmp eq i64 %i.kd, %i.kf
  br i1 %i.kg, label %asyncQueueFillWarning.exit, label %asyncQueueUsage.exit.i

asyncQueueUsage.exit.i:                           ; preds = %bb.az
  %i.kh = sub i64 %i.kd, %i.kf
  %i.ki = sitofp i64 %i.kh to double
  %i.kj = load i32, ptr @max_notify_queue_pages, align 4
  %i.kk = sitofp i32 %i.kj to double
  %i.kl = fdiv double %i.ki, %i.kk                ; 2 uses
  %i.km = fcmp olt double %i.kl, 5.000000e-01
  br i1 %i.km, label %asyncQueueFillWarning.exit, label %bb.ba

bb.ba:                                            ; preds = %asyncQueueUsage.exit.i
  %i.kn = call i64 @GetCurrentTimestamp() #14     ; 2 uses
  %i.ko = load ptr, ptr @asyncQueueControl, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = call zeroext i1 @TimestampDifferenceExceeds(i64 noundef %i.kq, i64 noundef %i.kn, i32 noundef 5000) #14
  %.pre150 = load ptr, ptr @asyncQueueControl, align 8 ; 6 uses
  br i1 %i.kr, label %bb.bb, label %asyncQueueFillWarning.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ks = getelementptr inbounds nuw i8, ptr %.pre150, i64 40
  %.037.i = load i32, ptr %i.ks, align 8          ; 2 uses
  %.not38.i = icmp eq i32 %.037.i, -1
  br i1 %.not38.i, label %._crit_edge.i75, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.bb
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre150, i64 8
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i71 = load i64, ptr %.pre150, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %.pre150, i64 72 ; 2 uses
  br label %bb.bc

._crit_edge.i75:                                  ; preds = %bb.bg, %bb.bb
  %.029.lcssa.i = phi i32 [ -1, %bb.bb ], [ %.1.i, %bb.bg ] ; 2 uses
  %i.ku = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #14
  br i1 %i.ku, label %bb.bh, label %bb.bj

bb.bc:                                            ; preds = %bb.bg, %.lr.ph.i70
  %.042.i = phi i32 [ %.037.i, %.lr.ph.i70 ], [ %.0.i73, %bb.bg ]
  %.02941.i = phi i32 [ -1, %.lr.ph.i70 ], [ %.1.i, %bb.bg ] ; 2 uses
  %.sroa.0.040.i = phi i64 [ %.sroa.0.0.copyload.i71, %.lr.ph.i70 ], [ %.sroa.0.151.i, %bb.bg ] ; 6 uses
  %.sroa.8.039.i = phi i32 [ %.sroa.8.0.copyload.i, %.lr.ph.i70 ], [ %.sroa.8.150.i, %bb.bg ] ; 2 uses
  %i.kv = sext i32 %.042.i to i64                 ; 3 uses
  %i.kw = getelementptr [40 x i8], ptr %.pre150, i64 %i.kv ; 3 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 88
  %i.ky = load i64, ptr %i.kx, align 8            ; 4 uses
  %i.kz = icmp slt i64 %.sroa.0.040.i, %i.ky
  br i1 %i.kz, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not35.i = icmp eq i64 %.sroa.0.040.i, %i.ky
  %i.la = getelementptr i8, ptr %i.kw, i64 96
  %i.lb = load i32, ptr %i.la, align 8            ; 2 uses
  br i1 %.not35.i, label %bb.be, label %.thread.i72.thread

bb.be:                                            ; preds = %bb.bd
  %.sroa.8.0..i = call i32 @llvm.smin.i32(i32 %.sroa.8.039.i, i32 %i.lb)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %.sroa.8.1.i = phi i32 [ %.sroa.8.039.i, %bb.bc ], [ %.sroa.8.0..i, %bb.be ] ; 3 uses
  %i.lc = icmp eq i64 %.sroa.0.040.i, %i.ky
  br i1 %i.lc, label %.thread.i72, label %bb.bg

.thread.i72:                                      ; preds = %bb.bf
  %.phi.trans.insert = getelementptr inbounds [40 x i8], ptr %i.kt, i64 %i.kv
  %.phi.trans.insert148 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 24
  %.pre149 = load i32, ptr %.phi.trans.insert148, align 8 ; 2 uses
  %i.ld = icmp eq i32 %.sroa.8.1.i, %.pre149
  br i1 %i.ld, label %.thread.i72.thread, label %bb.bg

.thread.i72.thread:                               ; preds = %bb.bd, %.thread.i72
  %.sroa.0.152.i178 = phi i64 [ %.sroa.0.040.i, %.thread.i72 ], [ %i.ky, %bb.bd ]
  %i.le = phi i32 [ %.pre149, %.thread.i72 ], [ %i.lb, %bb.bd ]
  %i.lf = getelementptr inbounds [40 x i8], ptr %i.kt, i64 %i.kv
  %i.lg = load i32, ptr %i.lf, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %.thread.i72.thread, %.thread.i72, %bb.bf
  %.sroa.0.151.i = phi i64 [ %.sroa.0.152.i178, %.thread.i72.thread ], [ %.sroa.0.040.i, %.thread.i72 ], [ %.sroa.0.040.i, %bb.bf ]
  %.sroa.8.150.i = phi i32 [ %i.le, %.thread.i72.thread ], [ %.sroa.8.1.i, %.thread.i72 ], [ %.sroa.8.1.i, %bb.bf ]
  %.1.i = phi i32 [ %i.lg, %.thread.i72.thread ], [ %.02941.i, %.thread.i72 ], [ %.02941.i, %bb.bf ] ; 2 uses
  %i.lh = getelementptr i8, ptr %i.kw, i64 80
  %.0.i73 = load i32, ptr %i.lh, align 8          ; 2 uses
  %.not.i74 = icmp eq i32 %.0.i73, -1
  br i1 %.not.i74, label %._crit_edge.i75, label %bb.bc, !llvm.loop !13

bb.bh:                                            ; preds = %._crit_edge.i75
  %i.li = fmul double %i.kl, 1.000000e+02
  %i.lj = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.28, double noundef %i.li) #14 ; 0 uses
  %.not34.i = icmp eq i32 %.029.lcssa.i, -1
  br i1 %.not34.i, label %.critedge.i76, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lk = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.29, i32 noundef %.029.lcssa.i) #14 ; 0 uses
  %i.ll = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.30) #14 ; 0 uses
  br label %.critedge.i76

.critedge.i76:                                    ; preds = %bb.bi, %bb.bh
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2243, ptr noundef nonnull @__func__.asyncQueueFillWarning) #14
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge.i76, %._crit_edge.i75
  %i.lm = load ptr, ptr @asyncQueueControl, align 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  store i64 %i.kn, ptr %i.ln, align 8
  br label %asyncQueueFillWarning.exit

asyncQueueFillWarning.exit:                       ; preds = %bb.az, %asyncQueueUsage.exit.i, %bb.ba, %bb.bj
  %i.lo = phi ptr [ %.pre147, %bb.az ], [ %.pre147, %asyncQueueUsage.exit.i ], [ %.pre150, %bb.ba ], [ %i.lm, %bb.bj ] ; 3 uses
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lr = load i64, ptr %i.lq, align 8
  %i.ls = sub i64 %i.lp, %i.lr
  %i.lt = load i32, ptr @max_notify_queue_pages, align 4
  %i.lu = sext i32 %i.lt to i64
  %.not85 = icmp slt i64 %i.ls, %i.lu
  br i1 %.not85, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %asyncQueueFillWarning.exit
  %i.lv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.lw = call i32 @errcode(i32 noundef 261) #14  ; 0 uses
  %i.lx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13) #14 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1355, ptr noundef nonnull @.str.12) #14
  unreachable

bb.bl:                                            ; preds = %asyncQueueFillWarning.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i64 16, i1 false)
  %i.ly = load i64, ptr %1, align 8               ; 3 uses
  %i.lz = load i16, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 112), align 8
  %i.ma = zext i16 %i.lz to i64
  %i.mb = srem i64 %i.ly, %i.ma
  %i.mc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 56
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = getelementptr inbounds [128 x i8], ptr %i.me, i64 %i.mb ; 5 uses
  %i.mg = call zeroext i1 @LWLockAcquire(ptr noundef %i.mf, i32 noundef 0) #14 ; 0 uses
  %i.mh = icmp eq i64 %i.ly, 0
  %i.mi = load i32, ptr %i.jz, align 8
  %i.mj = icmp eq i32 %i.mi, 0
  %or.cond.i77 = select i1 %i.mh, i1 %i.mj, i1 false
  br i1 %or.cond.i77, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.mk = call i32 @SimpleLruZeroPage(ptr noundef nonnull @NotifySlruDesc, i64 noundef 0) #14
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.ml = call i32 @SimpleLruReadPage(ptr noundef nonnull @NotifySlruDesc, i64 noundef %i.ly, i1 noundef zeroext true, ptr noundef nonnull %1) #14
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.024.i = phi i32 [ %i.mk, %bb.bm ], [ %i.ml, %bb.bn ]
  %i.mm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = sext i32 %.024.i to i64                 ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mo, i64 %i.mp
  store i8 1, ptr %i.mq, align 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %bb.bo
  %.027.i = phi ptr [ %.039131, %bb.bo ], [ %.128.i, %bb.bt ] ; 4 uses
  %.not.i78 = icmp eq ptr %.027.i, null
  br i1 %.not.i78, label %asyncQueueAddEntries.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mr = load ptr, ptr %.027.i, align 8          ; 3 uses
  %i.ms = load i16, ptr %i.mr, align 2
  %i.mt = zext i16 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  %i.mv = load i16, ptr %i.mu, align 2
  %i.mw = zext i16 %i.mv to i64
  %i.mx = add nuw nsw i64 %i.mw, %i.mt            ; 2 uses
  %i.my = trunc nuw nsw i64 %i.mx to i32
  %i.mz = add nuw nsw i32 %i.my, 21
  %i.na = and i32 %i.mz, 262140                   ; 3 uses
  store i32 %i.na, ptr %0, align 4
  %i.nb = load i32, ptr @MyDatabaseId, align 4
  store i32 %i.nb, ptr %.4..4..4..4..4..sroa_idx, align 4
  %i.nc = call i32 @GetCurrentTransactionId() #14
  store i32 %i.nc, ptr %.8..8..8..8..8..sroa_idx, align 4
  %i.nd = load i32, ptr @MyProcPid, align 4
  store i32 %i.nd, ptr %.12..12..12..12..12..sroa_idx, align 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.nf = add nuw nsw i64 %i.mx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.16..16..16..16..16..sroa_idx, ptr noundef nonnull readonly align 2 dereferenceable(1) %i.ne, i64 %i.nf, i1 false)
  %i.ng = load i32, ptr %i.jz, align 8            ; 3 uses
  %i.nh = add i32 %i.ng, %i.na
  %i.ni = icmp slt i32 %i.nh, 8193
  br i1 %i.ni, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.nj = load ptr, ptr @pendingNotifies, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8            ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 4
  %.val.i = load i32, ptr %i.nm, align 4
  %i.nn = getelementptr i8, ptr %i.nl, i64 16
  %.val32.i = load ptr, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  %i.np = sext i32 %.val.i to i64
  %i.nq = getelementptr inbounds [8 x i8], ptr %.val32.i, i64 %i.np
  %i.nr = icmp ult ptr %i.no, %i.nq
  %..i.i = select i1 %i.nr, ptr %i.no, ptr null
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.ns = sub i32 8192, %i.ng                     ; 2 uses
  store i32 %i.ns, ptr %0, align 4
  store i32 0, ptr %.4..4..4..4..4..sroa_idx183, align 4
  store i32 0, ptr %.8..8..8..8..8..sroa_idx184, align 4
  store i8 0, ptr %.16..16..16..16..16..sroa_idx185, align 4
  store i8 0, ptr %.17..17..17..17..17..sroa_idx, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.nt = phi i32 [ %i.na, %bb.br ], [ %i.ns, %bb.bs ] ; 2 uses
  %.128.i = phi ptr [ %..i.i, %bb.br ], [ %.027.i, %bb.bs ] ; 3 uses
  %i.nu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %i.mp
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = sext i32 %i.ng to i64
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 %i.nz
  %i.ob = sext i32 %i.nt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oa, ptr nonnull align 4 %0, i64 %i.ob, i1 false)
  %i.oc = load volatile i64, ptr %1, align 8
  %i.od = load volatile i32, ptr %i.jz, align 8
  %i.oe = add i32 %i.od, %i.nt                    ; 2 uses
  %i.of = sext i32 %i.oe to i64
  %i.og = add nsw i64 %i.of, -8173
  %i.oh = icmp ult i64 %i.og, -8193               ; 3 uses
  %i.oi = zext i1 %i.oh to i64
  %spec.select.i.i = add i64 %i.oc, %i.oi         ; 3 uses
  %spec.select12.i.i = select i1 %i.oh, i32 0, i32 %i.oe
  store volatile i64 %spec.select.i.i, ptr %1, align 8
  store volatile i32 %spec.select12.i.i, ptr %i.jz, align 8
  br i1 %i.oh, label %bb.bu, label %bb.bp

bb.bu:                                            ; preds = %bb.bt
  %i.oj = load i16, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 112), align 8
  %i.ok = zext i16 %i.oj to i64
  %i.ol = srem i64 %spec.select.i.i, %i.ok
  %i.om = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 56
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = getelementptr inbounds [128 x i8], ptr %i.oo, i64 %i.ol ; 3 uses
  %.not31.i = icmp eq ptr %i.op, %i.mf
  br i1 %.not31.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @LWLockRelease(ptr noundef %i.mf) #14
  %i.oq = call zeroext i1 @LWLockAcquire(ptr noundef %i.op, i32 noundef 0) #14 ; 0 uses
  %.pre.i79 = load i64, ptr %1, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.or = phi i64 [ %.pre.i79, %bb.bv ], [ %spec.select.i.i, %bb.bu ]
  %.1.i80 = phi ptr [ %i.op, %bb.bv ], [ %i.mf, %bb.bu ] ; 2 uses
  %i.os = call i32 @SimpleLruZeroPage(ptr noundef nonnull @NotifySlruDesc, i64 noundef %i.or) #14 ; 0 uses
  %i.ot = load i64, ptr %1, align 8
  %i.ou = and i64 %i.ot, 3
  %i.ov = icmp eq i64 %i.ou, 0
  br i1 %i.ov, label %bb.bx, label %asyncQueueAddEntries.exit

bb.bx:                                            ; preds = %bb.bw
  store i1 true, ptr @tryAdvanceTail, align 1
  br label %asyncQueueAddEntries.exit

asyncQueueAddEntries.exit:                        ; preds = %bb.bp, %bb.bw, %bb.bx
  %.229.i = phi ptr [ %.128.i, %bb.bx ], [ %.128.i, %bb.bw ], [ null, %bb.bp ] ; 2 uses
  %.3.i = phi ptr [ %.1.i80, %bb.bx ], [ %.1.i80, %bb.bw ], [ %i.mf, %bb.bp ]
  %i.ow = load ptr, ptr @asyncQueueControl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ow, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @LWLockRelease(ptr noundef %.3.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %i.ox = load ptr, ptr @asyncQueueControl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @queueHeadAfterWrite, ptr noundef nonnull align 8 dereferenceable(16) %i.ox, i64 16, i1 false)
  %i.oy = load ptr, ptr @MainLWLockArray, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 3456
  call void @LWLockRelease(ptr noundef nonnull %i.oz) #14
  %.not55 = icmp eq ptr %.229.i, null
  br i1 %.not55, label %.loopexit, label %bb.ax, !llvm.loop !14

.loopexit:                                        ; preds = %asyncQueueAddEntries.exit, %bb.aw, %list_head.exit, %.critedge57, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @GetCurrentTransactionId() local_unnamed_addr #2

declare void @LockSharedObject(i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @AtCommit_Notify() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.GlobalChannelKey, align 4   ; 5 uses
  %i.a = load ptr, ptr @pendingActions, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = load ptr, ptr @pendingNotifies, align 8
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr @Trace_notify, align 1, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #14
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.14) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1388, ptr noundef nonnull @.str.14) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call fastcc void @ApplyPendingListenActions(i1 noundef zeroext true)
  %.b = load i1, ptr @amRegisteredListener, align 1
  br i1 %.b, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @localChannelTable, align 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i64 @hash_get_num_entries(ptr noundef nonnull %i.i) #14
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call fastcc void @asyncQueueUnregister()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.m = load ptr, ptr @pendingNotifies, align 8
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %SignalBackends.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr @MainLWLockArray, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 3456
  %i.p = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.o, i32 noundef 0) #14 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load ptr, ptr @pendingNotifies, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.split73.us.i, label %.lr.ph67.i

.split73.us.i:                                    ; preds = %bb.q, %.lr.ph67.i, %bb.j
  %.us-phi.i = phi i32 [ 0, %bb.j ], [ 0, %.lr.ph67.i ], [ %.4.i, %bb.q ] ; 2 uses
  %i.v = load ptr, ptr @asyncQueueControl, align 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.05074.i = load i32, ptr %i.w, align 8         ; 2 uses
  %.not5775.i = icmp eq i32 %.05074.i, -1
  br i1 %.not5775.i, label %._crit_edge80.i, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.split73.us.i
  %i.x = load i64, ptr @queueHeadBeforeWrite, align 8 ; 2 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @queueHeadBeforeWrite, i64 8), align 8
  %i.z = load i64, ptr @queueHeadAfterWrite, align 8 ; 2 uses
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @queueHeadAfterWrite, i64 8), align 8
  %i.ab = load ptr, ptr @signalPids, align 8
  %i.ac = load ptr, ptr @signalProcnos, align 8
  br label %bb.r

.lr.ph67.i:                                       ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = load i32, ptr %i.ad, align 4
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.split73.us.i

.lr.ph:                                           ; preds = %.lr.ph67.i, %bb.q
  %.164.i4 = phi i32 [ %.4.i, %bb.q ], [ 0, %.lr.ph67.i ] ; 3 uses
  %indvars.iv87.i3 = phi i64 [ %indvars.iv.next88.i, %bb.q ], [ 0, %.lr.ph67.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv87.i3
  %i.aj = load ptr, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  %i.ak = load i32, ptr @MyDatabaseId, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.q, i8 0, i64 64, i1 false)
  store i32 %i.ak, ptr %0, align 4
  %i.al = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.aj, i64 noundef 64) #14 ; 0 uses
  %i.am = load ptr, ptr @globalChannelTable, align 8
  %i.an = call ptr @dshash_find(ptr noundef %i.am, ptr noundef nonnull %0, i1 noundef zeroext false) #14 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr @globalChannelDSA, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = call ptr @dsa_get_address(ptr noundef %i.ap, i64 noundef %i.ar) #14
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 80 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.aw = load ptr, ptr @signalPids, align 8
  %i.ax = load ptr, ptr @signalProcnos, align 8
  %.pre93.i = load ptr, ptr @asyncQueueControl, align 8
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.p, %bb.k
  %.2.lcssa.i = phi i32 [ %.164.i4, %bb.k ], [ %.3.i, %bb.p ]
  %i.ay = load ptr, ptr @globalChannelTable, align 8
  call void @dshash_release_lock(ptr noundef %i.ay, ptr noundef nonnull %i.an) #14
  br label %bb.q

bb.l:                                             ; preds = %bb.p, %.lr.ph.i
  %i.az = phi i32 [ %i.au, %.lr.ph.i ], [ %i.bw, %bb.p ] ; 2 uses
  %i.ba = phi ptr [ %.pre93.i, %.lr.ph.i ], [ %i.bx, %bb.p ] ; 6 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %.262.i = phi i32 [ %.164.i4, %.lr.ph.i ], [ %.3.i, %bb.p ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.be = sext i32 %i.bc to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [40 x i8], ptr %i.bd, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load i32, ptr %i.bf, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.022.0.copyload.i = load i64, ptr %i.bk, align 8
  %i.bl = load i64, ptr %i.ba, align 8
  %i.bm = icmp eq i64 %.sroa.022.0.copyload.i, %i.bl
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = icmp eq i32 %.sroa.4.0.copyload.i, %i.bo
  br i1 %i.bp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bq = getelementptr [40 x i8], ptr %i.ba, i64 %i.be
  %i.br = getelementptr i8, ptr %i.bq, i64 104
  store i8 1, ptr %i.br, align 8
  %i.bs = sext i32 %.262.i to i64                 ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bs
  store i32 %i.bj, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bs
  store i32 %i.bc, ptr %i.bu, align 4
  %i.bv = add i32 %.262.i, 1
  %.pre.i = load ptr, ptr @asyncQueueControl, align 8
  %.pre94.i = load i32, ptr %i.at, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.bw = phi i32 [ %.pre94.i, %bb.o ], [ %i.az, %bb.l ], [ %i.az, %bb.n ] ; 2 uses
  %i.bx = phi ptr [ %.pre.i, %bb.o ], [ %i.ba, %bb.l ], [ %i.ba, %bb.n ]
  %.3.i = phi i32 [ %i.bv, %bb.o ], [ %.262.i, %bb.l ], [ %.262.i, %bb.n ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.by = sext i32 %i.bw to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i, %i.by
  br i1 %i.bz, label %bb.l, label %._crit_edge.i, !llvm.loop !15

bb.q:                                             ; preds = %._crit_edge.i, %.lr.ph
  %.4.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i ], [ %.164.i4, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i3, 1 ; 2 uses
  %i.ca = load i32, ptr %i.ad, align 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next88.i, %i.cb
  br i1 %i.cc, label %.lr.ph, label %.split73.us.i

._crit_edge80.i:                                  ; preds = %bb.aa, %.split73.us.i
  %.5.lcssa.i = phi i32 [ %.us-phi.i, %.split73.us.i ], [ %.7.i, %bb.aa ] ; 2 uses
  %i.cd = load ptr, ptr @MainLWLockArray, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3456
  call void @LWLockRelease(ptr noundef nonnull %i.ce) #14
  %i.cf = icmp sgt i32 %.5.lcssa.i, 0
  br i1 %i.cf, label %.lr.ph84.preheader.i, label %SignalBackends.exit

.lr.ph84.preheader.i:                             ; preds = %._crit_edge80.i
  %wide.trip.count.i = zext nneg i32 %.5.lcssa.i to i64
  br label %.lr.ph84.i

bb.r:                                             ; preds = %bb.aa, %.lr.ph79.i
  %i.cg = phi ptr [ %i.v, %.lr.ph79.i ], [ %i.dj, %bb.aa ] ; 8 uses
  %.05077.i = phi i32 [ %.05074.i, %.lr.ph79.i ], [ %.050.i, %bb.aa ] ; 2 uses
  %.576.i = phi i32 [ %.us-phi.i, %.lr.ph79.i ], [ %.7.i, %bb.aa ] ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.ci = sext i32 %.05077.i to i64               ; 4 uses
  %i.cj = getelementptr inbounds [40 x i8], ptr %i.ch, i64 %i.ci ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i8, ptr %i.ck, align 8, !range !5, !noundef !6
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 33
  %i.co = load i8, ptr %i.cn, align 1, !range !5, !noundef !6
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = load i32, ptr %i.cj, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.cr, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8 ; 2 uses
  %i.cs = icmp slt i64 %.sroa.0.0.copyload.i, %i.x
  br i1 %i.cs, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp eq i64 %.sroa.0.0.copyload.i, %i.x
  %i.cu = icmp slt i32 %.sroa.8.0.copyload.i, %i.y
  %or.cond.i = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = icmp slt i64 %.sroa.0.0.copyload.i, %i.z
  br i1 %i.cv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = icmp eq i64 %.sroa.0.0.copyload.i, %i.z
  %i.cx = icmp slt i32 %.sroa.8.0.copyload.i, %i.aa
  %or.cond61.i = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond61.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cy = getelementptr [40 x i8], ptr %i.cg, i64 %i.ci
  %i.cz = getelementptr i8, ptr %i.cy, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) @queueHeadAfterWrite, i64 16, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.u, %bb.t
  %i.da = load i64, ptr %i.cg, align 8
  %i.db = sub i64 %i.da, %.sroa.0.0.copyload.i
  %i.dc = icmp sgt i64 %i.db, 3
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr [40 x i8], ptr %i.cg, i64 %i.ci
  %i.de = getelementptr i8, ptr %i.dd, i64 104
  store i8 1, ptr %i.de, align 8
  %i.df = sext i32 %.576.i to i64                 ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.df
  store i32 %i.cq, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.df
  store i32 %.05077.i, ptr %i.dh, align 4
  %i.di = add i32 %.576.i, 1
  %.pre95.i = load ptr, ptr @asyncQueueControl, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.s, %bb.r
  %i.dj = phi ptr [ %i.cg, %bb.s ], [ %i.cg, %bb.r ], [ %.pre95.i, %bb.z ], [ %i.cg, %bb.y ], [ %i.cg, %bb.x ] ; 2 uses
  %.7.i = phi i32 [ %.576.i, %bb.s ], [ %.576.i, %bb.r ], [ %i.di, %bb.z ], [ %.576.i, %bb.y ], [ %.576.i, %bb.x ] ; 2 uses
  %i.dk = getelementptr [40 x i8], ptr %i.dj, i64 %i.ci
  %i.dl = getelementptr i8, ptr %i.dk, i64 80
  %.050.i = load i32, ptr %i.dl, align 8          ; 2 uses
  %.not57.i = icmp eq i32 %.050.i, -1
  br i1 %.not57.i, label %._crit_edge80.i, label %bb.r, !llvm.loop !16

.lr.ph84.i:                                       ; preds = %bb.af, %.lr.ph84.preheader.i
  %indvars.iv90.i = phi i64 [ 0, %.lr.ph84.preheader.i ], [ %indvars.iv.next91.i, %bb.af ] ; 3 uses
  %i.dm = load ptr, ptr @signalPids, align 8
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv90.i
  %i.do = load i32, ptr %i.dn, align 4            ; 3 uses
  %i.dp = load i32, ptr @MyProcPid, align 4
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph84.i
  store volatile i32 1, ptr @notifyInterruptPending, align 4
  br label %bb.af

bb.ac:                                            ; preds = %.lr.ph84.i
  %i.dr = load ptr, ptr @signalProcnos, align 8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv90.i
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = call i32 @SendProcSignal(i32 noundef %i.do, i32 noundef 1, i32 noundef %i.dt) #14
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dw = call zeroext i1 @errstart(i32 noundef 12, ptr noundef null) #14
  br i1 %i.dw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.31, i32 noundef %i.do) #14 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2406, ptr noundef nonnull @__func__.SignalBackends) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next91.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SignalBackends.exit, label %.lr.ph84.i, !llvm.loop !17

SignalBackends.exit:                              ; preds = %bb.af, %._crit_edge80.i, %bb.i
  %.b2 = load i1, ptr @tryAdvanceTail, align 1
  br i1 %.b2, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %SignalBackends.exit
  store i1 false, ptr @tryAdvanceTail, align 1
  call fastcc void @asyncQueueAdvanceTail()
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %SignalBackends.exit
  store ptr null, ptr @pendingActions, align 8
  store ptr null, ptr @pendingNotifies, align 8
  store ptr null, ptr @pendingListenActions, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ApplyPendingListenActions(i1 noundef zeroext %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.HASH_SEQ_STATUS, align 8    ; 5 uses
  %2 = alloca %struct.GlobalChannelKey, align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = load ptr, ptr @pendingListenActions, align 8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit59, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @globalChannelTable, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #15 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.26) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1730, ptr noundef nonnull @__func__.ApplyPendingListenActions) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @hash_seq_init(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #14
  %i.g = call ptr @hash_seq_search(ptr noundef nonnull %1) #14 ; 2 uses
  %.not71 = icmp eq ptr %i.g, null
  br i1 %.not71, label %.loopexit59, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph72, %bb.w
  %i.i = phi ptr [ %i.g, %.lr.ph72 ], [ %i.bk, %bb.w ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.j = load i32, ptr @MyDatabaseId, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store i32 %i.j, ptr %2, align 4
  %i.k = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 64) #14 ; 0 uses
  %i.l = load ptr, ptr @globalChannelTable, align 8
  %i.m = call ptr @dshash_find(ptr noundef %i.l, ptr noundef nonnull %2, i1 noundef zeroext true) #14 ; 5 uses
  %.not31 = icmp eq ptr %i.m, null
  br i1 %.not31, label %RemoveListenerFromChannel.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @globalChannelDSA, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call ptr @dsa_get_address(ptr noundef %i.n, i64 noundef %i.p) #14 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.s = load i32, ptr %i.r, align 8              ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.u = load i32, ptr @MyProcNumber, align 4
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4
  %.not32 = icmp eq i32 %i.w, %i.u
  br i1 %.not32, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 6 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 4 uses
  br i1 %0, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i8 0, ptr %i.ac, align 4
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ad = add nsw i32 %i.s, -1                    ; 4 uses
  store i32 %i.ad, ptr %i.r, align 8
  %i.ae = icmp sgt i32 %i.ad, %i.y
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.x, i64 8
  %i.ag = sub nuw i32 %i.ad, %i.y
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.af, i64 %i.ai, i1 false)
  %.pr.i = load i32, ptr %i.r, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = phi i32 [ %.pr.i, %bb.l ], [ %i.ad, %bb.k ]
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.sink.split, label %.loopexit

bb.n:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.am = load i8, ptr %i.al, align 4, !range !5, !noundef !6
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.s, -1                    ; 4 uses
  store i32 %i.ao, ptr %i.r, align 8
  %i.ap = icmp sgt i32 %i.ao, %i.y
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr i8, ptr %i.x, i64 8
  %i.ar = sub nuw i32 %i.ao, %i.y
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.aq, i64 %i.at, i1 false)
  %.pr.i34 = load i32, ptr %i.r, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.au = phi i32 [ %.pr.i34, %bb.p ], [ %i.ao, %bb.o ]
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.sink.split, label %.loopexit

bb.r:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !18

.loopexit:                                        ; preds = %bb.r, %bb.f, %bb.j, %bb.m, %bb.n, %bb.q
  %i.aw = phi i1 [ true, %bb.q ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.j ], [ false, %bb.f ], [ false, %bb.r ]
  %.125.ph = phi i1 [ true, %bb.q ], [ true, %bb.m ], [ false, %bb.n ], [ false, %bb.j ], [ true, %bb.f ], [ true, %bb.r ]
  %i.ax = load ptr, ptr @globalChannelTable, align 8
  call void @dshash_release_lock(ptr noundef %i.ax, ptr noundef nonnull %i.m) #14
  br label %RemoveListenerFromChannel.exit

RemoveListenerFromChannel.exit:                   ; preds = %.loopexit, %bb.e
  %.2 = phi i1 [ true, %bb.e ], [ %.125.ph, %.loopexit ] ; 2 uses
  %.1 = phi i1 [ false, %bb.e ], [ %i.aw, %.loopexit ]
  br i1 %0, label %bb.s, label %bb.u

bb.s:                                             ; preds = %RemoveListenerFromChannel.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond = or i1 %.1, %i.ba
  br i1 %or.cond, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #15 ; 0 uses
  %i.bc = load i32, ptr @MyProcNumber, align 4
  %i.bd = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.i, i32 noundef %i.bc) #14 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1822, ptr noundef nonnull @__func__.ApplyPendingListenActions) #14
  unreachable

.sink.split:                                      ; preds = %bb.q, %bb.m
  %i.be = load ptr, ptr @globalChannelDSA, align 8
  %i.bf = load i64, ptr %i.o, align 8
  call void @dsa_free(ptr noundef %i.be, i64 noundef %i.bf) #14
  %i.bg = load ptr, ptr @globalChannelTable, align 8
  call void @dshash_delete_entry(ptr noundef %i.bg, ptr noundef nonnull %i.m) #14
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.s, %RemoveListenerFromChannel.exit
  %.250 = phi i1 [ %.2, %bb.s ], [ %.2, %RemoveListenerFromChannel.exit ], [ true, %.sink.split ]
  %i.bh = load ptr, ptr @localChannelTable, align 8 ; 2 uses
  %i.bi = icmp ne ptr %i.bh, null
  %or.cond3 = select i1 %.250, i1 %i.bi, i1 false
  br i1 %or.cond3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = call ptr @hash_search(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.i, i32 noundef 2, ptr noundef null) #14 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.bk = call ptr @hash_seq_search(ptr noundef nonnull %1) #14 ; 2 uses
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %.loopexit59, label %bb.e, !llvm.loop !19

.loopexit59:                                      ; preds = %bb.w, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

declare i64 @hash_get_num_entries(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @asyncQueueUnregister() unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @amRegisteredListener, align 1
  br i1 %.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3456
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 0) #14 ; 0 uses
  %i.d = load ptr, ptr @asyncQueueControl, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i32, ptr @MyProcNumber, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.g
  store i32 -1, ptr %i.h, align 8
  %i.i = load ptr, ptr @asyncQueueControl, align 8
  %i.j = load i32, ptr @MyProcNumber, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [40 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 76
  store i32 0, ptr %i.m, align 4
  %i.n = load ptr, ptr @asyncQueueControl, align 8
  %i.o = load i32, ptr @MyProcNumber, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [40 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 104
  store i8 0, ptr %i.r, align 8
  %i.s = load ptr, ptr @asyncQueueControl, align 8
  %i.t = load i32, ptr @MyProcNumber, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [40 x i8], ptr %i.s, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 105
  store i8 0, ptr %i.w, align 1
  %i.x = load ptr, ptr @asyncQueueControl, align 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8              ; 4 uses
  %i.aa = load i32, ptr @MyProcNumber, align 4    ; 4 uses
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr [40 x i8], ptr %i.x, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 80
  %i.ag = load i32, ptr %i.af, align 8
  store i32 %i.ag, ptr %i.y, align 8
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.e
  %.0 = phi i32 [ %i.ak, %bb.e ], [ %i.z, %.preheader ] ; 2 uses
  %.not = icmp eq i32 %.0, -1
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = sext i32 %.0 to i64
  %i.ai = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.aa
  br i1 %i.al, label %bb.f, label %bb.d, !llvm.loop !20

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = sext i32 %i.aa to i64
  %i.ao = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  store i32 %i.aq, ptr %i.am, align 8
  %.pre = load ptr, ptr @asyncQueueControl, align 8
  %.pre10 = load i32, ptr @MyProcNumber, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.c
  %i.ar = phi i32 [ %i.z, %bb.c ], [ %.pre10, %bb.f ], [ %i.aa, %bb.d ]
  %i.as = phi ptr [ %i.x, %bb.c ], [ %.pre, %bb.f ], [ %i.x, %bb.d ]
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr [40 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 80
  store i32 -1, ptr %i.av, align 8
  %i.aw = load ptr, ptr @MainLWLockArray, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 3456
  tail call void @LWLockRelease(ptr noundef nonnull %i.ax) #14
  store i1 false, ptr @amRegisteredListener, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asyncQueueAdvanceTail() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 6016
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 0) #14 ; 0 uses
  %i.d = load ptr, ptr @MainLWLockArray, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3456
  %i.f = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.e, i32 noundef 0) #14 ; 0 uses
  %i.g = load ptr, ptr @asyncQueueControl, align 8 ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.033 = load i32, ptr %i.h, align 8             ; 2 uses
  %.not34 = icmp eq i32 %.033, -1
  br i1 %.not34, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.10.0.lcssa = phi i32 [ %.sroa.10.0.copyload, %bb.a ], [ %.sroa.10.1, %bb.d ]
  %.sroa.9.0.lcssa = phi i32 [ %.sroa.9.0.copyload, %bb.a ], [ %.sroa.9.1, %bb.d ]
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0.copyload, %bb.a ], [ %.sroa.0.1, %bb.d ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0.0.lcssa, ptr %i.i, align 8
  %.sroa.9.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %.sroa.9.0.lcssa, ptr %.sroa.9.0..sroa_idx22, align 8
  %.sroa.10.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %.sroa.10.0.lcssa, ptr %.sroa.10.0..sroa_idx28, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i64, ptr %i.j, align 8
  %i.l = load ptr, ptr @MainLWLockArray, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3456
  tail call void @LWLockRelease(ptr noundef nonnull %i.m) #14
  %i.n = srem i64 %.sroa.0.0.lcssa, 32
  %i.o = sub i64 %.sroa.0.0.lcssa, %i.n
  %i.p = icmp slt i64 %i.k, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.038 = phi i32 [ %.0, %bb.d ], [ %.033, %bb.a ]
  %.sroa.0.037 = phi i64 [ %.sroa.0.1, %bb.d ], [ %.sroa.0.0.copyload, %bb.a ] ; 5 uses
  %.sroa.9.036 = phi i32 [ %.sroa.9.1, %bb.d ], [ %.sroa.9.0.copyload, %bb.a ] ; 3 uses
  %.sroa.10.035 = phi i32 [ %.sroa.10.1, %bb.d ], [ %.sroa.10.0.copyload, %bb.a ] ; 2 uses
  %i.q = sext i32 %.038 to i64
  %i.r = getelementptr [40 x i8], ptr %i.g, i64 %i.q ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 88
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp slt i64 %.sroa.0.037, %i.t
  br i1 %i.u, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not32 = icmp eq i64 %.sroa.0.037, %i.t
  %i.v = getelementptr i8, ptr %i.r, i64 96
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  br i1 %.not32, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.x = icmp slt i32 %.sroa.9.036, %i.w
  br i1 %i.x, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sroa.0.1.ph = phi i64 [ %i.t, %bb.b ], [ %.sroa.0.037, %bb.c ]
  %.sroa.10.0..sroa_idx26 = getelementptr i8, ptr %i.r, i64 100
  %.sroa.10.0.copyload27 = load i32, ptr %.sroa.10.0..sroa_idx26, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %.lr.ph
  %.sroa.10.1 = phi i32 [ %.sroa.10.035, %.lr.ph ], [ %.sroa.10.035, %bb.c ], [ %.sroa.10.0.copyload27, %.sink.split ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.036, %.lr.ph ], [ %.sroa.9.036, %bb.c ], [ %i.w, %.sink.split ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.037, %.lr.ph ], [ %.sroa.0.037, %bb.c ], [ %.sroa.0.1.ph, %.sink.split ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.r, i64 80
  %.0 = load i32, ptr %i.y, align 8               ; 2 uses
  %.not = icmp eq i32 %.0, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

bb.e:                                             ; preds = %._crit_edge
  tail call void @SimpleLruTruncate(ptr noundef nonnull @NotifySlruDesc, i64 noundef %.sroa.0.0.lcssa) #14
  %i.z = load ptr, ptr @MainLWLockArray, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3456
  %i.ab = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.aa, i32 noundef 0) #14 ; 0 uses
  %i.ac = load ptr, ptr @asyncQueueControl, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %.sroa.0.0.lcssa, ptr %i.ad, align 8
  %i.ae = load ptr, ptr @MainLWLockArray, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3456
  tail call void @LWLockRelease(ptr noundef nonnull %i.af) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.ag = load ptr, ptr @MainLWLockArray, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6016
  tail call void @LWLockRelease(ptr noundef nonnull %i.ah) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_notification_queue_usage(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @asyncQueueAdvanceTail()
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3456
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 1) #14 ; 0 uses
  %i.d = load ptr, ptr @asyncQueueControl, align 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %asyncQueueUsage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 %i.e, %i.g
  %i.j = sitofp i64 %i.i to double
  %i.k = load i32, ptr @max_notify_queue_pages, align 4
  %i.l = sitofp i32 %i.k to double
  %i.m = fdiv double %i.j, %i.l
  %i.n = bitcast double %i.m to i64
  br label %asyncQueueUsage.exit

asyncQueueUsage.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.o = load ptr, ptr @MainLWLockArray, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3456
  tail call void @LWLockRelease(ptr noundef nonnull %i.p) #14
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local void @AtAbort_Notify() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @ApplyPendingListenActions(i1 noundef zeroext false)
  %.b = load i1, ptr @amRegisteredListener, align 1
  br i1 %.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @localChannelTable, align 8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @hash_get_num_entries(ptr noundef nonnull %i.a) #14
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @asyncQueueUnregister()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  store ptr null, ptr @pendingActions, align 8
  store ptr null, ptr @pendingNotifies, align 8
  store ptr null, ptr @pendingListenActions, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AtSubCommit_Notify() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call i32 @GetCurrentTransactionNestLevel() #14 ; 4 uses
  %i.c = load ptr, ptr @pendingActions, align 8   ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not20 = icmp slt i32 %i.d, %i.b
  br i1 %.not20, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.f, align 8
  %i.i = add i32 %i.b, -1
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = add i32 %i.d, -1
  store i32 %i.k, ptr %i.c, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.f, ptr @pendingActions, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @list_concat(ptr noundef %i.m, ptr noundef %i.o) #14
  %i.q = load ptr, ptr @pendingActions, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.r, align 8
  tail call void @pfree(ptr noundef nonnull %i.c) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.a
  %i.s = load ptr, ptr @pendingNotifies, align 8  ; 6 uses
  %.not21 = icmp eq ptr %i.s, null
  br i1 %.not21, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %.not22 = icmp slt i32 %i.t, %i.b
  br i1 %.not22, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %i.v, align 8
  %i.y = add i32 %i.b, -1
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = add i32 %i.t, -1
  store i32 %i.aa, ptr %i.s, align 8
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  store ptr %i.v, ptr @pendingNotifies, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %.not23 = icmp eq ptr %i.ac, null
  br i1 %.not23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load i32, ptr %i.ad, align 4
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph42, label %.critedge

.lr.ph42:                                         ; preds = %.lr.ph, %bb.s
  %indvars.iv41 = phi i64 [ %indvars.iv.next, %bb.s ], [ 0, %.lr.ph ] ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv41
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = load ptr, ptr @pendingNotifies, align 8 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.thread26.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph42
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = call ptr @hash_search(ptr noundef nonnull %i.an, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef null) #14
  %.not22.i = icmp eq ptr %i.ao, null
  br i1 %.not22.i, label %.thread26.i, label %AsyncExistsPendingNotify.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %.not20.i = icmp eq ptr %i.aq, null
  br i1 %.not20.i, label %.thread26.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.av = icmp sgt i32 %i.as, 0
  br i1 %i.av, label %.lr.ph32.i, label %.thread26.i

.lr.ph32.i:                                       ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.az = zext i16 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 2
  %wide.trip.count.i = zext nneg i32 %i.as to i64
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i, %.lr.ph32.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph32.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = icmp eq i16 %i.ay, %i.bd
  br i1 %i.be, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.bf = load i16, ptr %i.at, align 2            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = icmp eq i16 %i.bf, %i.bh
  br i1 %i.bi, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.bj = zext i16 %i.bf to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bl = add nuw nsw i64 %i.ba, %i.bj
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) %i.bk, i64 %i.bl)
  %i.bm = icmp eq i32 %bcmp.i, 0
  br i1 %i.bm, label %AsyncExistsPendingNotify.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %bb.q, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread26.i, label %bb.p

AsyncExistsPendingNotify.exit.thread:             ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

.critedge:                                        ; preds = %bb.s, %.lr.ph, %bb.l
  call void @pfree(ptr noundef nonnull %i.s) #14
  br label %bb.t

.thread26.i:                                      ; preds = %.critedge.i, %bb.n, %bb.o, %.lr.ph.i, %.lr.ph42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @AddEventToPendingNotifies(ptr noundef %i.aj)
  br label %bb.s

bb.s:                                             ; preds = %AsyncExistsPendingNotify.exit.thread, %.thread26.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.bn = load i32, ptr %i.ad, align 4
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %.lr.ph42, label %.critedge

bb.t:                                             ; preds = %bb.k, %.critedge, %bb.h, %bb.g
  ret void
}

declare ptr @list_concat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @AtSubAbort_Notify() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @GetCurrentTransactionNestLevel() #14 ; 2 uses
  %i.b = load ptr, ptr @pendingActions, align 8   ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not6 = icmp slt i32 %i.d, %i.a
  br i1 %.not6, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr @pendingActions, align 8
  tail call void @pfree(ptr noundef nonnull %i.c) #14
  %i.g = load ptr, ptr @pendingActions, align 8   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !22

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %i.h = load ptr, ptr @pendingNotifies, align 8  ; 2 uses
  %.not711 = icmp eq ptr %i.h, null
  br i1 %.not711, label %.critedge2, label %.lr.ph12

.lr.ph12:                                         ; preds = %.critedge, %bb.c
  %i.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not8 = icmp slt i32 %i.j, %i.a
  br i1 %.not8, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %.lr.ph12
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  store ptr %i.l, ptr @pendingNotifies, align 8
  tail call void @pfree(ptr noundef nonnull %i.i) #14
  %i.m = load ptr, ptr @pendingNotifies, align 8  ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %.critedge2, label %.lr.ph12, !llvm.loop !23

.critedge2:                                       ; preds = %.lr.ph12, %bb.c, %.critedge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local void @HandleNotifyInterrupt() local_unnamed_addr #7 {
bb.a:
  store volatile i32 1, ptr @notifyInterruptPending, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ProcessNotifyInterrupt(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @IsTransactionOrTransactionBlock() #14
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load volatile i32, ptr @notifyInterruptPending, align 4
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %1 = load ptr, ptr @localChannelTable, align 8  ; 2 uses
  %2 = icmp eq ptr %1, null
  br i1 %2, label %ProcessIncomingNotify.exit.us.a, label %.lr.ph.split

ProcessIncomingNotify.exit.us.a:                  ; preds = %.lr.ph, %ProcessIncomingNotify.exit.us.a
  store volatile i32 0, ptr @notifyInterruptPending, align 4
  %3 = load volatile i32, ptr @notifyInterruptPending, align 4
  %.not.us.a = icmp eq i32 %3, 0
  br i1 %.not.us.a, label %.loopexit, label %ProcessIncomingNotify.exit.us.a, !llvm.loop !24

.lr.ph.splitthread-pre-split:                     ; preds = %ProcessIncomingNotify.exit
  %.pr = load ptr, ptr @localChannelTable, align 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %4 = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %1, %.lr.ph ] ; 2 uses
  store volatile i32 0, ptr @notifyInterruptPending, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %ProcessIncomingNotify.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.c = tail call i64 @hash_get_num_entries(ptr noundef nonnull %4) #14
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %ProcessIncomingNotify.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr @Trace_notify, align 1, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #14
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.32) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 3068, ptr noundef nonnull @.str.32) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call void @set_ps_display_with_len(ptr noundef nonnull @.str.33, i64 noundef 16) #14
  tail call void @StartTransactionCommand() #14
  tail call fastcc void @asyncQueueReadAllNotifications()
  tail call void @CommitTransactionCommand() #14
  br i1 %0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %6 = load ptr, ptr @PqCommMethods, align 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load ptr, ptr %7, align 8
  %8 = tail call i32 %i.i() #14, !inline_history !25 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @set_ps_display_with_len(ptr noundef nonnull @.str.34, i64 noundef 4) #14
  %i.j = load i8, ptr @Trace_notify, align 1, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.i, label %ProcessIncomingNotify.exit

bb.i:                                             ; preds = %bb.h
  %i.l = tail call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #14
  br i1 %i.l, label %bb.j, label %ProcessIncomingNotify.exit

bb.j:                                             ; preds = %bb.i
  %i.m = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.35) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 3092, ptr noundef nonnull @.str.32) #14
  br label %ProcessIncomingNotify.exit

ProcessIncomingNotify.exit:                       ; preds = %.lr.ph.split, %bb.b, %bb.h, %bb.i, %bb.j
  %i.n = load volatile i32, ptr @notifyInterruptPending, align 4
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !26

.loopexit:                                        ; preds = %ProcessIncomingNotify.exit, %ProcessIncomingNotify.exit.us.a, %.preheader, %bb.a
  ret void
}

declare zeroext i1 @IsTransactionOrTransactionBlock() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @AsyncNotifyFreezeXids(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.QueuePosition, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 6016
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 1) #14 ; 0 uses
  %i.d = load ptr, ptr @MainLWLockArray, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3456
  %i.f = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.e, i32 noundef 1) #14 ; 0 uses
  %i.g = load ptr, ptr @asyncQueueControl, align 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.i = load ptr, ptr @MainLWLockArray, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 3456
  tail call void @LWLockRelease(ptr noundef nonnull %i.j) #14
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %1, align 8                ; 2 uses
  %i.m = icmp ne i64 %i.l, %.sroa.0.0.copyload
  %i.n = load i32, ptr %i.k, align 8              ; 2 uses
  %i.o = icmp ne i32 %i.n, %.sroa.4.0.copyload
  %.not3334 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %.not3334, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.p = icmp ugt i32 %0, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.q = phi i32 [ %i.n, %.lr.ph ], [ %spec.select12.i, %bb.j ]
  %i.r = phi i64 [ %i.l, %.lr.ph ], [ %spec.select.i, %bb.j ] ; 5 uses
  %.038 = phi i8 [ 0, %.lr.ph ], [ %.4, %bb.j ]   ; 3 uses
  %.02437 = phi ptr [ null, %.lr.ph ], [ %.125, %bb.j ]
  %.02636 = phi i32 [ -1, %.lr.ph ], [ %.127, %bb.j ] ; 3 uses
  %.02835 = phi i64 [ -1, %.lr.ph ], [ %i.r, %bb.j ] ; 2 uses
  %.not = icmp eq i64 %i.r, %.02835
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp sgt i32 %.02636, -1
  %.pre43 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8 ; 3 uses
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = trunc nuw i8 %.038 to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.pre43, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext nneg i32 %.02636 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 1, ptr %i.x, align 1
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = phi ptr [ %.pre, %bb.e ], [ %.pre43, %bb.d ]
  %i.z = load i16, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 112), align 8
  %i.aa = zext i16 %i.z to i64
  %i.ab = srem i64 %.02835, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds [128 x i8], ptr %i.ad, i64 %i.ab
  call void @LWLockRelease(ptr noundef %i.ae) #14
  %.pre42 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.af = phi ptr [ %.pre42, %bb.f ], [ %.pre43, %bb.c ]
  %.2 = phi i8 [ 0, %bb.f ], [ %.038, %bb.c ]
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 112), align 8
  %i.ah = zext i16 %i.ag to i64
  %i.ai = srem i64 %i.r, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds [128 x i8], ptr %i.ak, i64 %i.ai
  %i.am = call zeroext i1 @LWLockAcquire(ptr noundef %i.al, i32 noundef 0) #14 ; 0 uses
  %i.an = call i32 @SimpleLruReadPage(ptr noundef nonnull @NotifySlruDesc, i64 noundef %i.r, i1 noundef zeroext true, ptr noundef nonnull %1) #14 ; 2 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = sext i32 %i.an to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.127 = phi i32 [ %i.an, %bb.g ], [ %.02636, %bb.b ] ; 3 uses
  %.125 = phi ptr [ %i.at, %bb.g ], [ %.02437, %bb.b ] ; 2 uses
  %.3 = phi i8 [ %.2, %bb.g ], [ %.038, %bb.b ]   ; 2 uses
  %i.au = sext i32 %i.q to i64
  %i.av = getelementptr inbounds i8, ptr %.125, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4            ; 3 uses
  %i.ay = icmp ugt i32 %i.ax, 2
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = sub i32 %i.ax, %0
  %i.ba = icmp slt i32 %i.az, 0
  %.0.i = and i1 %i.p, %i.ba
  br i1 %.0.i, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i
  %i.bb = call zeroext i1 @TransactionIdDidCommit(i32 noundef %i.ax) #14
  %. = select i1 %i.bb, i32 2, i32 0
  store i32 %., ptr %i.aw, align 4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.h
  %.4 = phi i8 [ %.3, %bb.i ], [ %.3, %bb.h ], [ 1, %.sink.split ] ; 2 uses
  %i.bc = load i32, ptr %i.av, align 4
  %i.bd = load volatile i64, ptr %1, align 8
  %i.be = load volatile i32, ptr %i.k, align 8
  %i.bf = add i32 %i.be, %i.bc                    ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = add nsw i64 %i.bg, -8173
  %i.bi = icmp ult i64 %i.bh, -8193               ; 2 uses
  %i.bj = zext i1 %i.bi to i64
  %spec.select.i = add i64 %i.bd, %i.bj           ; 3 uses
  %spec.select12.i = select i1 %i.bi, i32 0, i32 %i.bf ; 3 uses
  store volatile i64 %spec.select.i, ptr %1, align 8
  store volatile i32 %spec.select12.i, ptr %i.k, align 8
  %i.bk = icmp ne i64 %spec.select.i, %.sroa.0.0.copyload
  %i.bl = icmp ne i32 %spec.select12.i, %.sroa.4.0.copyload
  %.not33 = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %.not33, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.j
  %i.bm = icmp sgt i32 %.127, -1
  br i1 %i.bm, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %._crit_edge
  %i.bn = trunc nuw i8 %.4 to i1
  %.pre45 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8 ; 2 uses
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre45, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = zext nneg i32 %.127 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  store i8 1, ptr %i.br, align 1
  %.pre44 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bs = phi ptr [ %.pre44, %bb.l ], [ %.pre45, %bb.k ]
  %i.bt = load i16, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 112), align 8
  %i.bu = zext i16 %i.bt to i64
  %i.bv = srem i64 %i.r, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds [128 x i8], ptr %i.bx, i64 %i.bv
  call void @LWLockRelease(ptr noundef %i.by) #14
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.m, %._crit_edge
  %i.bz = load ptr, ptr @MainLWLockArray, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 6016
  call void @LWLockRelease(ptr noundef nonnull %i.ca) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

declare i32 @SimpleLruReadPage(ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @TransactionIdDidCommit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @NotifyMyFrontEnd(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.StringInfoData, align 8     ; 9 uses
  %i.a = load i32, ptr @whereToSendOutput, align 4
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @pq_beginmessage(ptr noundef nonnull %3, i8 noundef signext 65) #14
  call void @enlargeStringInfo(ptr noundef nonnull %3, i32 noundef 4) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.c = call i32 @llvm.bswap.i32(i32 %2)
  %i.d = load ptr, ptr %3, align 8, !alias.scope !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !30 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  store i32 %i.c, ptr %i.h, align 1, !noalias !30
  %i.i = add i32 %i.f, 4
  store i32 %i.i, ptr %i.e, align 8, !alias.scope !30
  call void @pq_sendstring(ptr noundef nonnull %3, ptr noundef %0) #14
  call void @pq_sendstring(ptr noundef nonnull %3, ptr noundef %1) #14
  call void @pq_endmessage(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = tail call zeroext i1 @errstart(i32 noundef 17, ptr noundef null) #14
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.15, ptr noundef %0, ptr noundef %1) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 3118, ptr noundef nonnull @__func__.NotifyMyFrontEnd) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

declare void @pq_beginmessage(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare void @pq_sendstring(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pq_endmessage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @check_notify_buffers(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @check_slru_buffers(ptr noundef nonnull @.str.16, ptr noundef %0) #14
  ret i1 %i.a
}

declare zeroext i1 @check_slru_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @mul_size(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @add_size(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ShmemRequestStructWithOpts(ptr noundef) local_unnamed_addr #2

declare void @SimpleLruRequestWithOpts(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @asyncQueuePagePrecedes(i64 noundef %0, i64 noundef %1) #8 {
bb.a:
  %i.a = icmp slt i64 %0, %1
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @asyncQueueErrdetailForIoError(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.20, i64 noundef %i.a, i32 noundef %i.c) #14
  ret i32 %i.d
}

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @SlruScanDirectory(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SlruScanDirCbDeleteAll(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare ptr @dsa_create_ext(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @dsa_pin(ptr noundef) local_unnamed_addr #2

declare void @dsa_pin_mapping(ptr noundef) local_unnamed_addr #2

declare ptr @dshash_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dsa_get_handle(ptr noundef) local_unnamed_addr #2

declare i64 @dshash_get_hash_table_handle(ptr noundef) local_unnamed_addr #2

declare ptr @dsa_attach(i32 noundef) local_unnamed_addr #2

declare ptr @dshash_attach(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dshash_memcmp(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @globalChannelTableHash(ptr noundef %0, i64 %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = tail call i32 @hash_bytes_uint32(i32 noundef %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 64) #16
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call i32 @hash_bytes(ptr noundef nonnull %i.c, i32 noundef %i.e) #14
  %i.g = xor i32 %i.f, %i.b
  ret i32 %i.g
}

declare void @dshash_memcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare i32 @hash_bytes_uint32(i32 noundef) local_unnamed_addr #2

declare i32 @hash_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @hash_create(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @before_shmem_exit(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @Async_UnlistenOnExit(i32 %0, i64 %1) #0 {
bb.a:
  %2 = alloca %struct.dshash_seq_status, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = load i8, ptr @Trace_notify, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #14
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @MyProcPid, align 4
  %i.e = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.25, i32 noundef %i.d) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1849, ptr noundef nonnull @__func__.CleanupListenersOnExit) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr @localChannelTable, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @hash_destroy(ptr noundef nonnull %i.f) #14
  store ptr null, ptr @localChannelTable, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = load ptr, ptr @globalChannelTable, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %CleanupListenersOnExit.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @dshash_seq_init(ptr noundef nonnull %2, ptr noundef nonnull %i.g, i1 noundef zeroext true) #14
  %i.i = call ptr @dshash_seq_next(ptr noundef nonnull %2) #14 ; 2 uses
  %.not2230.i = icmp eq ptr %i.i, null
  br i1 %.not2230.i, label %._crit_edge.i, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %bb.g, %.loopexit.i
  %i.j = phi ptr [ %i.aj, %.loopexit.i ], [ %i.i, %bb.g ] ; 3 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = load i32, ptr @MyDatabaseId, align 4
  %.not23.i = icmp eq i32 %i.k, %i.l
  br i1 %.not23.i, label %bb.h, label %.loopexit.i, !llvm.loop !31

bb.h:                                             ; preds = %.lr.ph31.i
  %i.m = load ptr, ptr @globalChannelDSA, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call ptr @dsa_get_address(ptr noundef %i.m, i64 noundef %i.o) #14 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.t = load i32, ptr @MyProcNumber, align 4
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %i.u = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, %i.t
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.x = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.y = add nsw i32 %i.r, -1                     ; 4 uses
  store i32 %i.y, ptr %i.q, align 8
  %i.z = icmp sgt i32 %i.y, %i.x
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = sub nuw i32 %i.y, %i.x
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.ab, i64 %i.ae, i1 false)
  %.pr.i = load i32, ptr %i.q, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = phi i32 [ %.pr.i, %bb.k ], [ %i.y, %bb.j ]
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %.loopexit.i

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr @globalChannelDSA, align 8
  %i.ai = load i64, ptr %i.n, align 8
  call void @dsa_free(ptr noundef %i.ah, i64 noundef %i.ai) #14
  call void @dshash_delete_current(ptr noundef nonnull %2) #14
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.i, !llvm.loop !32

.loopexit.i:                                      ; preds = %bb.n, %bb.m, %bb.l, %bb.h, %.lr.ph31.i
  %i.aj = call ptr @dshash_seq_next(ptr noundef nonnull %2) #14 ; 2 uses
  %.not22.i = icmp eq ptr %i.aj, null
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph31.i

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.g
  call void @dshash_seq_term(ptr noundef nonnull %2) #14
  br label %CleanupListenersOnExit.exit

CleanupListenersOnExit.exit:                      ; preds = %bb.f, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @asyncQueueUnregister()
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asyncQueueReadAllNotifications() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.StringInfoData, align 8     ; 9 uses
  %i.a = alloca [8192 x i8], align 4              ; 6 uses
  %1 = alloca %struct.QueuePosition, align 8      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.b = load ptr, ptr @MainLWLockArray, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3456
  %i.d = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.c, i32 noundef 1) #14 ; 0 uses
  %i.e = load ptr, ptr @asyncQueueControl, align 8
  %i.f = load i32, ptr @MyProcNumber, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [40 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 104
  store i8 0, ptr %i.i, align 8
  %i.j = load ptr, ptr @asyncQueueControl, align 8 ; 3 uses
  %i.k = load i32, ptr @MyProcNumber, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [40 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = icmp eq i64 %i.o, %.sroa.0.0.copyload
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, %.sroa.5.0.copyload
  %or.cond = select i1 %i.p, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @MainLWLockArray, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3456
  tail call void @LWLockRelease(ptr noundef nonnull %i.u) #14
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr i8, ptr %i.m, i64 105
  store i8 1, ptr %i.v, align 1
  %i.w = load ptr, ptr @MainLWLockArray, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 3456
  tail call void @LWLockRelease(ptr noundef nonnull %i.x) #14
  %i.y = tail call ptr @GetLatestSnapshot() #14
  %i.z = tail call ptr @RegisterSnapshot(ptr noundef %i.y) #14 ; 2 uses
  %i.aa = load i8, ptr @ExitOnAnyError, align 1, !range !5, !noundef !6
  store i8 1, ptr @ExitOnAnyError, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.c
  %i.ac = phi i64 [ %i.o, %bb.c ], [ %i.bz, %.backedge.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ad = call i32 @SimpleLruReadPage_ReadOnly(ptr noundef nonnull @NotifySlruDesc, i64 noundef %i.ac, ptr noundef nonnull %1) #14
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %.backedge
  %.045.i = phi ptr [ %i.a, %.backedge ], [ %.2.i, %bb.l ] ; 8 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8 ; 2 uses
  %i.ak = load <2 x i32>, ptr %i.q, align 8
  %.sroa.5.0.copyload.i = load i32, ptr %i.q, align 8 ; 2 uses
  %i.al = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload
  %i.am = icmp eq i32 %.sroa.5.0.copyload.i, %.sroa.5.0.copyload
  %or.cond.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = sext i32 %.sroa.5.0.copyload.i to i64
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.an ; 6 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = load volatile i64, ptr %1, align 8
  %i.ar = load volatile i32, ptr %i.q, align 8
  %i.as = add i32 %i.ar, %i.ap                    ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = add nsw i64 %i.at, -8173
  %i.av = icmp ult i64 %i.au, -8193               ; 3 uses
  %i.aw = zext i1 %i.av to i64
  %spec.select.i.i = add i64 %i.aq, %i.aw
  %spec.select12.i.i = select i1 %i.av, i32 0, i32 %i.as
  store volatile i64 %spec.select.i.i, ptr %1, align 8
  store volatile i32 %spec.select12.i.i, ptr %i.q, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = load i32, ptr @MyDatabaseId, align 4
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = call zeroext i1 @XidInMVCCSnapshot(i32 noundef %i.bc, ptr noundef %i.z) #14
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %.sroa.0.0.copyload.i, ptr %1, align 8
  store <2 x i32> %i.ak, ptr %i.q, align 8
  br label %.thread.i

bb.h:                                             ; preds = %bb.f
  %i.be = load ptr, ptr @localChannelTable, align 8 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = call i64 @hash_get_num_entries(ptr noundef nonnull %i.be) #14
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = load i32, ptr %i.bb, align 4
  %i.bj = call zeroext i1 @TransactionIdDidCommit(i32 noundef %i.bi) #14
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = load i32, ptr %i.ao, align 4
  %i.bl = sext i32 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.045.i, ptr nonnull align 4 %i.ao, i64 %i.bl, i1 false)
  %i.bm = load i32, ptr %i.ao, align 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.045.i, i64 %i.bn
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.e
  %.2.i = phi ptr [ %.045.i, %bb.h ], [ %.045.i, %bb.j ], [ %.045.i, %bb.e ], [ %.045.i, %bb.i ], [ %i.bo, %bb.k ] ; 2 uses
  br i1 %i.av, label %.thread.i, label %bb.d, !llvm.loop !33

.thread.i:                                        ; preds = %bb.l, %bb.d, %bb.g
  %.259.i = phi ptr [ %.045.i, %bb.g ], [ %.2.i, %bb.l ], [ %.045.i, %bb.d ] ; 2 uses
  %.14958.i = phi i1 [ true, %bb.g ], [ false, %bb.d ], [ false, %bb.l ] ; 2 uses
  %i.bp = load i16, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 112), align 8
  %i.bq = zext i16 %i.bp to i64
  %i.br = srem i64 %i.ac, %i.bq
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NotifySlruDesc, i64 104), align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds [128 x i8], ptr %i.bu, i64 %i.br
  call void @LWLockRelease(ptr noundef %i.bv) #14
  %i.bw = icmp uge ptr %i.a, %.259.i
  %i.bx = load ptr, ptr @localChannelTable, align 8 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  %or.cond82.i = select i1 %i.bw, i1 true, i1 %i.by
  br i1 %or.cond82.i, label %._crit_edge.i, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %IsListeningOn.exit.thread.i, %.thread.i
  %i.bz = load i64, ptr %1, align 8               ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %.sroa.0.0.copyload
  br i1 %i.ca, label %.split, label %asyncQueueProcessPageEntries.exit

.lr.ph.splitthread-pre-split.i:                   ; preds = %IsListeningOn.exit.thread.i
  %.pr.i = load ptr, ptr @localChannelTable, align 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.thread.i, %.lr.ph.splitthread-pre-split.i
  %i.cb = phi ptr [ %.pr.i, %.lr.ph.splitthread-pre-split.i ], [ %i.bx, %.thread.i ] ; 2 uses
  %.068.i = phi ptr [ %i.cw, %.lr.ph.splitthread-pre-split.i ], [ %i.a, %.thread.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.068.i, i64 16 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, null
  br i1 %i.cd, label %IsListeningOn.exit.thread.i, label %IsListeningOn.exit.i

IsListeningOn.exit.i:                             ; preds = %.lr.ph.split.i
  %i.ce = call ptr @hash_search(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc, i32 noundef 0, ptr noundef null) #14
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %IsListeningOn.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %IsListeningOn.exit.i
  %i.cf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cc) #16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  %i.ci = load i32, ptr @whereToSendOutput, align 4
  %i.cj = icmp eq i32 %i.ci, 2
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %.068.i, i64 12
  %i.cl = load i32, ptr %i.ck, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @pq_beginmessage(ptr noundef nonnull %0, i8 noundef signext 65) #14
  call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.cm = call i32 @llvm.bswap.i32(i32 %i.cl)
  %i.cn = load ptr, ptr %0, align 8, !alias.scope !38
  %i.co = load i32, ptr %i.ab, align 8, !alias.scope !38 ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %i.cp
  store i32 %i.cm, ptr %i.cq, align 1, !noalias !38
  %i.cr = add i32 %i.co, 4
  store i32 %i.cr, ptr %i.ab, align 8, !alias.scope !38
  call void @pq_sendstring(ptr noundef nonnull %0, ptr noundef nonnull %i.cc) #14
  call void @pq_sendstring(ptr noundef nonnull %0, ptr noundef nonnull %i.ch) #14
  call void @pq_endmessage(ptr noundef nonnull %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  br label %IsListeningOn.exit.thread.i

bb.o:                                             ; preds = %bb.m
  %i.cs = call zeroext i1 @errstart(i32 noundef 17, ptr noundef null) #14
  br i1 %i.cs, label %bb.p, label %IsListeningOn.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.ct = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.ch) #14 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 3118, ptr noundef nonnull @__func__.NotifyMyFrontEnd) #14
  br label %IsListeningOn.exit.thread.i

IsListeningOn.exit.thread.i:                      ; preds = %bb.p, %bb.o, %bb.n, %IsListeningOn.exit.i, %.lr.ph.split.i
  %i.cu = load i32, ptr %.068.i, align 4
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %.068.i, i64 %i.cv ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %.259.i
  br i1 %i.cx, label %.lr.ph.splitthread-pre-split.i, label %._crit_edge.i, !llvm.loop !36

.split:                                           ; preds = %._crit_edge.i
  %i.cy = load i32, ptr %i.q, align 8
  %i.cz = icmp eq i32 %i.cy, %.sroa.5.0.copyload
  %spec.select.i = or i1 %.14958.i, %i.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %spec.select.i, label %bb.q, label %.backedge.backedge

asyncQueueProcessPageEntries.exit:                ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.14958.i, label %bb.q, label %.backedge.backedge

.backedge.backedge:                               ; preds = %asyncQueueProcessPageEntries.exit, %.split
  br label %.backedge, !llvm.loop !37

bb.q:                                             ; preds = %.split, %asyncQueueProcessPageEntries.exit
  %i.da = load ptr, ptr @MainLWLockArray, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 3456
  %i.dc = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.db, i32 noundef 1) #14 ; 0 uses
  %i.dd = load ptr, ptr @asyncQueueControl, align 8 ; 2 uses
  %i.de = load i32, ptr @MyProcNumber, align 4
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [40 x i8], ptr %i.dd, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.di = load i32, ptr @MyProcNumber, align 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [40 x i8], ptr %i.dd, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 105
  store i8 0, ptr %i.dl, align 1
  %i.dm = load ptr, ptr @MainLWLockArray, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 3456
  call void @LWLockRelease(ptr noundef nonnull %i.dn) #14
  store i8 %i.aa, ptr @ExitOnAnyError, align 1
  call void @UnregisterSnapshot(ptr noundef %i.z) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

declare void @hash_destroy(ptr noundef) local_unnamed_addr #2

declare void @dshash_seq_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @dshash_seq_next(ptr noundef) local_unnamed_addr #2

declare ptr @dsa_get_address(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @dsa_free(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @dshash_delete_current(ptr noundef) local_unnamed_addr #2

declare void @dshash_seq_term(ptr noundef) local_unnamed_addr #2

declare ptr @RegisterSnapshot(ptr noundef) local_unnamed_addr #2

declare ptr @GetLatestSnapshot() local_unnamed_addr #2

declare void @UnregisterSnapshot(ptr noundef) local_unnamed_addr #2

declare i32 @SimpleLruReadPage_ReadOnly(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @XidInMVCCSnapshot(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hash_search(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dshash_find_or_insert_extended(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @dsa_allocate_extended(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @dshash_release_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare ptr @dshash_find(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @dshash_delete_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SimpleLruZeroPage(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @GetCurrentTimestamp() local_unnamed_addr #2

declare zeroext i1 @TimestampDifferenceExceeds(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare i32 @SendProcSignal(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @SimpleLruTruncate(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @StartTransactionCommand() local_unnamed_addr #2

declare void @CommitTransactionCommand() local_unnamed_addr #2

declare void @set_ps_display_with_len(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nounwind uwtable
define internal i32 @notification_hash(ptr nofree noundef readonly captures(none) %0, i64 %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i16, ptr %i.a, align 2
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = zext i16 %i.f to i32
  %i.h = add nuw nsw i32 %i.d, 1
  %i.i = add nuw nsw i32 %i.h, %i.g
  %i.j = tail call i32 @hash_bytes(ptr noundef nonnull %i.b, i32 noundef %i.i) #14
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @notification_match(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = load i16, ptr %i.a, align 2              ; 2 uses
  %i.d = zext i16 %i.c to i64
  %i.e = load i16, ptr %i.b, align 2
  %i.f = icmp eq i16 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = load i16, ptr %i.g, align 2              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.j = load i16, ptr %i.i, align 2
  %i.k = icmp eq i16 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = zext i16 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = add nuw nsw i64 %i.d, 2
  %i.p = add nuw nsw i64 %i.o, %i.l
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.n, i64 %i.p)
  %i.q = icmp eq i32 %bcmp, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.unswitch.partial.disable"}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{null}
!26 = distinct !{!26, !4, !7}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !"pq_writeint32"}
!29 = distinct !{!29, !28, !"pq_writeint32: argument 0"}
!30 = !{!29}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !"pq_writeint32"}
!35 = distinct !{!35, !34, !"pq_writeint32: argument 0"}
!36 = distinct !{!36, !4, !7}
!37 = distinct !{!37, !4}
!38 = !{!35}
end_hunk_1
