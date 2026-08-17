inline.NumInlined: 31
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__sigset_t = type { [16 x i64] }
%struct.ShmemStructOpts = type { ptr, i64, i64, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XLogArchiveLibrary = dso_local local_unnamed_addr global ptr @.str, align 8
@PgArchShmemCallbacks = dso_local local_unnamed_addr constant { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @PgArchShmemRequest, ptr @PgArchShmemInit, ptr null, ptr null }, align 8
@PgArchCanRestart.last_pgarch_start_time = internal unnamed_addr global i64 0, align 8
@UnBlockSig = external global %struct.__sigset_t, align 8
@MyProcNumber = external local_unnamed_addr global i32, align 4
@PgArch = internal global ptr null, align 8
@arch_files = internal unnamed_addr global ptr null, align 8
@TopMemoryContext = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"archiver\00", align 1
@archive_context = internal unnamed_addr global ptr null, align 8
@ProcGlobal = external local_unnamed_addr global ptr, align 8
@arch_module_check_errdetail_string = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Archiver Data\00", align 1
@ready_to_stop = internal global i32 0, align 4
@MyLatch = external local_unnamed_addr global ptr, align 8
@ShutdownRequestPending = external global i32, align 4
@last_sigterm_time = internal unnamed_addr global i64 0, align 8
@ProcSignalBarrierPending = external global i32, align 4
@LogMemoryContextPending = external global i32, align 4
@ConfigReloadPending = external global i32, align 4
@XLogArchiveCommand = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"both \22archive_command\22 and \22archive_library\22 set\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Only one of \22archive_command\22, \22archive_library\22 may be set.\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pgarch.c\00", align 1
@__func__.ProcessPgArchInterrupts = private unnamed_addr constant [24 x i8] c"ProcessPgArchInterrupts\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"restarting archiver process because value of \22archive_library\22 was changed\00", align 1
@ArchiveCallbacks = internal unnamed_addr global ptr null, align 8
@archive_module_state = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [56 x i8] c"\22archive_mode\22 enabled, yet archiving is not configured\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.pgarch_ArchiverCopyLoop = private unnamed_addr constant [24 x i8] c"pgarch_ArchiverCopyLoop\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"pg_wal/%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c".ready\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"removed orphan archive status file \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [87 x i8] c"removal of orphan archive status file \22%s\22 failed too many times, will try again later\00", align 1
@.str.13 = private unnamed_addr constant [80 x i8] c"archiving write-ahead log file \22%s\22 failed too many times, will try again later\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@__func__.pgarch_readyXlog = private unnamed_addr constant [17 x i8] c"pgarch_readyXlog\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"pg_wal/archive_status\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"0123456789ABCDEF.history.backup.partial\00", align 1
@postmaster_possibly_dead = external global i32, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"pg_wal/archive_status/%s%s\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"archiving %s\00", align 1
@error_context_stack = external local_unnamed_addr global ptr, align 8
@InterruptHoldoffCount = external global i32, align 4
@PG_exception_stack = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"last was %s\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"failed on %s\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@my_wait_event_info = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c".done\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"could not rename file \22%s\22 to \22%s\22: %m\00", align 1
@__func__.pgarch_archiveDone = private unnamed_addr constant [19 x i8] c"pgarch_archiveDone\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c".history\00", align 1
@__func__.LoadArchiveLibrary = private unnamed_addr constant [19 x i8] c"LoadArchiveLibrary\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"_PG_archive_module_init\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"archive modules have to define the symbol %s\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"archive modules must register an archive callback\00", align 1

; Function Attrs: nounwind uwtable
define internal void @PgArchShmemRequest(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.ShmemStructOpts, align 8    ; 5 uses
  store ptr @.str.2, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 8, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @PgArch, ptr %i.c, align 8
  call void @ShmemRequestStructWithOpts(ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @PgArchShmemInit(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %1 = load ptr, ptr @PgArch, align 8
  store i64 0, ptr %1, align 1
  %i.a = load ptr, ptr @PgArch, align 8
  store i32 -1, ptr %i.a, align 4
  %i.b = load ptr, ptr @PgArch, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store volatile i32 0, ptr %i.c, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @PgArchCanRestart() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #16 ; 3 uses
  %i.b = load i64, ptr @PgArchCanRestart.last_pgarch_start_time, align 8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = icmp slt i64 %i.a, %i.b
  %i.e = sub i64 %i.a, %i.b
  %i.f = icmp sgt i64 %i.e, 9
  %i.g = or i1 %i.d, %i.f
  %or.cond6 = select i1 %i.c, i1 true, i1 %i.g    ; 2 uses
  br i1 %or.cond6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr @PgArchCanRestart.last_pgarch_start_time, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %or.cond6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noreturn nounwind uwtable
define dso_local void @PgArchiverMain(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  tail call void @AuxiliaryProcessMainCommon() #16
  tail call void @pqsignal_be(i32 noundef 1, ptr noundef nonnull @SignalHandlerForConfigReload) #16
  tail call void @pqsignal_be(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #16
  tail call void @pqsignal_be(i32 noundef 15, ptr noundef nonnull @SignalHandlerForShutdownRequest) #16
  tail call void @pqsignal_be(i32 noundef 14, ptr noundef nonnull inttoptr (i64 1 to ptr)) #16
  tail call void @pqsignal_be(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #16
  tail call void @pqsignal_be(i32 noundef 10, ptr noundef nonnull @procsignal_sigusr1_handler) #16
  tail call void @pqsignal_be(i32 noundef 12, ptr noundef nonnull @pgarch_waken_stop) #16
  tail call void @pqsignal_be(i32 noundef 17, ptr noundef null) #16
  %i.a = tail call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull @UnBlockSig, ptr noundef null) #16 ; 0 uses
  tail call void @on_shmem_exit(ptr noundef nonnull @pgarch_die, i64 noundef 0) #16
  %i.b = load i32, ptr @MyProcNumber, align 4
  %i.c = load ptr, ptr @PgArch, align 8
  store i32 %i.b, ptr %i.c, align 4
  %i.d = tail call ptr @palloc(i64 noundef 3152) #16 ; 2 uses
  store ptr %i.d, ptr @arch_files, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.e, align 8
  %i.f = tail call ptr @binaryheap_allocate(i32 noundef 64, ptr noundef nonnull @ready_file_comparator, ptr noundef null) #16
  %i.g = load ptr, ptr @arch_files, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = load ptr, ptr @TopMemoryContext, align 8
  %i.i = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.h, ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #16
  store ptr %i.i, ptr @archive_context, align 8
  tail call fastcc void @LoadArchiveLibrary()
  tail call fastcc void @pgarch_MainLoop()
  tail call void @proc_exit(i32 noundef 0) #17
  unreachable
}

declare void @AuxiliaryProcessMainCommon() local_unnamed_addr #5

declare void @pqsignal_be(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @SignalHandlerForConfigReload(i32 noundef, ptr noundef) #5

declare void @SignalHandlerForShutdownRequest(i32 noundef, ptr noundef) #5

declare void @procsignal_sigusr1_handler(i32 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @pgarch_waken_stop(i32 %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  store volatile i32 1, ptr @ready_to_stop, align 4
  %i.a = load ptr, ptr @MyLatch, align 8
  tail call void @SetLatch(ptr noundef %i.a) #16
  ret void
}

; Function Attrs: nounwind
declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @on_shmem_exit(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pgarch_die(i32 %0, i64 %1) #6 {
bb.a:
  %i.a = load ptr, ptr @PgArch, align 8
  store i32 -1, ptr %i.a, align 4
  ret void
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #5

declare ptr @binaryheap_allocate(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @ready_file_comparator(i64 noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #18
  %i.d = icmp eq i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %IsTLHistoryFileName.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strspn(ptr noundef nonnull readonly %i.a, ptr noundef nonnull @.str.23) #18
  %i.f = icmp eq i64 %i.e, 8
  br i1 %i.f, label %bb.c, label %IsTLHistoryFileName.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(9) @.str.24) #18
  %i.i = icmp eq i32 %i.h, 0
  br label %IsTLHistoryFileName.exit

IsTLHistoryFileName.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #18
  %i.l = icmp eq i64 %i.k, 16
  br i1 %i.l, label %bb.d, label %IsTLHistoryFileName.exit9.thr_comm

bb.d:                                             ; preds = %IsTLHistoryFileName.exit
  %i.m = tail call i64 @strspn(ptr noundef nonnull readonly %i.b, ptr noundef nonnull @.str.23) #18
  %i.n = icmp eq i64 %i.m, 8
  br i1 %i.n, label %IsTLHistoryFileName.exit9, label %IsTLHistoryFileName.exit9.thr_comm

IsTLHistoryFileName.exit9.thr_comm:               ; preds = %IsTLHistoryFileName.exit, %bb.d
  br i1 %i.j, label %bb.e, label %bb.f

IsTLHistoryFileName.exit9:                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(9) @.str.24) #18
  %i.q = icmp eq i32 %i.p, 0
  %i.r = xor i1 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %IsTLHistoryFileName.exit9.thr_comm, %IsTLHistoryFileName.exit9
  %i.s = select i1 %i.j, i32 -1, i32 1
  br label %bb.g

bb.f:                                             ; preds = %IsTLHistoryFileName.exit9.thr_comm, %IsTLHistoryFileName.exit9
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.s, %bb.e ], [ %i.t, %bb.f ]
  ret i32 %.0
}

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadArchiveLibrary() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @XLogArchiveLibrary, align 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.thread5, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @XLogArchiveCommand, align 8
  %i.d = load i8, ptr %i.c, align 1
  %.not3 = icmp eq i8 %i.d, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 50856066) #16 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #16 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.4) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 924, ptr noundef nonnull @__func__.LoadArchiveLibrary) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call ptr @load_external_function(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.25, i1 noundef zeroext false, ptr noundef null) #16 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.thread5

bb.e:                                             ; preds = %bb.d
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 939, ptr noundef nonnull @__func__.LoadArchiveLibrary) #16
  unreachable

.thread5:                                         ; preds = %bb.a, %bb.d
  %.07 = phi ptr [ %i.i, %bb.d ], [ @shell_archive_init, %bb.a ]
  %i.m = tail call ptr %.07() #16                 ; 2 uses
  store ptr %i.m, ptr @ArchiveCallbacks, align 8
end_hunk_0
