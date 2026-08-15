inline.NumInlined: 100
inline.NumDeleted: 46
begin_hunk_0
@.str.90 = private unnamed_addr constant [50 x i8] c"using recovery command file \22%s\22 is not supported\00", align 1
@__func__.readRecoverySignalFile = private unnamed_addr constant [23 x i8] c"readRecoverySignalFile\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"recovery.done\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"standby.signal\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"recovery.signal\00", align 1
@.str.94 = private unnamed_addr constant [53 x i8] c"standby mode is not supported by single-user servers\00", align 1
@.str.95 = private unnamed_addr constant [59 x i8] c"specified neither \22primary_conninfo\22 nor \22restore_command\22\00", align 1
@.str.96 = private unnamed_addr constant [97 x i8] c"The database server will regularly poll the pg_wal subdirectory to check for files placed there.\00", align 1
@__func__.validateRecoveryParameters = private unnamed_addr constant [27 x i8] c"validateRecoveryParameters\00", align 1
@.str.97 = private unnamed_addr constant [64 x i8] c"must specify \22restore_command\22 when standby mode is not enabled\00", align 1
@EnableHotStandby = external local_unnamed_addr global i8, align 1
@.str.98 = private unnamed_addr constant [43 x i8] c"recovery target timeline %u does not exist\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@__func__.read_backup_label = private unnamed_addr constant [18 x i8] c"read_backup_label\00", align 1
@.str.101 = private unnamed_addr constant [46 x i8] c"START WAL LOCATION: %X/%08X (file %08X%16s)%c\00", align 1
@.str.102 = private unnamed_addr constant [26 x i8] c"invalid data in file \22%s\22\00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"CHECKPOINT LOCATION: %X/%08X%c\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"BACKUP METHOD: %19s\0A\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"BACKUP FROM: %19s\0A\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"START TIME: %127[^\0A]\0A\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"backup time %s in file \22%s\22\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"LABEL: %1023[^\0A]\0A\00", align 1
@.str.111 = private unnamed_addr constant [29 x i8] c"backup label %s in file \22%s\22\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"START TIMELINE: %u\0A\00", align 1
@.str.113 = private unnamed_addr constant [43 x i8] c"Timeline ID parsed is %u, but expected %u.\00", align 1
@.str.114 = private unnamed_addr constant [32 x i8] c"backup timeline %u in file \22%s\22\00", align 1
@.str.115 = private unnamed_addr constant [31 x i8] c"INCREMENTAL FROM LSN: %X/%08X\0A\00", align 1
@.str.116 = private unnamed_addr constant [52 x i8] c"this is an incremental backup, not a data directory\00", align 1
@.str.117 = private unnamed_addr constant [60 x i8] c"Use pg_combinebackup to reconstruct a valid data directory.\00", align 1
@__func__.read_tablespace_map = private unnamed_addr constant [20 x i8] c"read_tablespace_map\00", align 1
@.str.118 = private unnamed_addr constant [39 x i8] c"../../../../src/include/storage/spin.h\00", align 1
@__func__.SpinLockAcquire = private unnamed_addr constant [16 x i8] c"SpinLockAcquire\00", align 1
@error_context_stack = external local_unnamed_addr global ptr, align 8
@standbyState = external local_unnamed_addr global i32, align 4
@max_wal_senders = external local_unnamed_addr global i32, align 4
@.str.119 = private unnamed_addr constant [27 x i8] c"WAL redo at %X/%08X for %s\00", align 1
@.str.120 = private unnamed_addr constant [44 x i8] c"; blkref #%d: rel %u/%u/%u, fork %u, blk %u\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"; blkref #%d: rel %u/%u/%u, blk %u\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c" FPW\00", align 1
@.str.123 = private unnamed_addr constant [81 x i8] c"unexpected previous timeline ID %u (current timeline ID %u) in checkpoint record\00", align 1
@__func__.checkTimeLineSwitch = private unnamed_addr constant [20 x i8] c"checkTimeLineSwitch\00", align 1
@.str.124 = private unnamed_addr constant [58 x i8] c"unexpected timeline ID %u (after %u) in checkpoint record\00", align 1
@.str.125 = private unnamed_addr constant [110 x i8] c"unexpected timeline ID %u in checkpoint record, before reaching minimum recovery point %X/%08X on timeline %u\00", align 1
@.str.126 = private unnamed_addr constant [47 x i8] c"mismatching overwritten LSN %X/%08X -> %X/%08X\00", align 1
@__func__.xlogrecovery_redo = private unnamed_addr constant [18 x i8] c"xlogrecovery_redo\00", align 1
@.str.127 = private unnamed_addr constant [70 x i8] c"successfully skipped missing contrecord at %X/%08X, overwritten at %s\00", align 1
@.str.128 = private unnamed_addr constant [29 x i8] c"end of backup record reached\00", align 1
@.str.129 = private unnamed_addr constant [77 x i8] c"saw end-of-backup record for backup starting at %X/%08X, waiting for %X/%08X\00", align 1
@__func__.verifyBackupPageConsistency = private unnamed_addr constant [28 x i8] c"verifyBackupPageConsistency\00", align 1
@.str.130 = private unnamed_addr constant [60 x i8] c"inconsistent page found, rel %u/%u/%u, forknum %u, blkno %u\00", align 1
@LocalBufferBlockPointers = external local_unnamed_addr global ptr, align 8
@BufferBlocks = external local_unnamed_addr global ptr, align 8
@.str.131 = private unnamed_addr constant [22 x i8] c"end of backup reached\00", align 1
@__func__.CheckRecoveryConsistency = private unnamed_addr constant [25 x i8] c"CheckRecoveryConsistency\00", align 1
@.str.132 = private unnamed_addr constant [68 x i8] c"completed backup recovery with redo LSN %X/%08X and end LSN %X/%08X\00", align 1
@.str.133 = private unnamed_addr constant [45 x i8] c"consistent recovery state reached at %X/%08X\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@allow_in_place_tablespaces = external local_unnamed_addr global i8, align 1
@.str.136 = private unnamed_addr constant [44 x i8] c"unexpected directory entry \22%s\22 found in %s\00", align 1
@.str.137 = private unnamed_addr constant [55 x i8] c"All directory entries in %s/ should be symbolic links.\00", align 1
@.str.138 = private unnamed_addr constant [106 x i8] c"Remove those directories, or set \22allow_in_place_tablespaces\22 to ON transiently to let recovery complete.\00", align 1
@__func__.CheckTablespaceDirectory = private unnamed_addr constant [25 x i8] c"CheckTablespaceDirectory\00", align 1
@RmgrTable = external local_unnamed_addr global [0 x %struct.RmgrData], align 8
@.str.139 = private unnamed_addr constant [45 x i8] c"recovery stopping after reaching consistency\00", align 1
@__func__.recoveryStopsBefore = private unnamed_addr constant [20 x i8] c"recoveryStopsBefore\00", align 1
@recoveryStopAfter = internal unnamed_addr global i1 false, align 1
@recoveryStopXid = internal unnamed_addr global i32 0, align 4
@recoveryStopLSN = internal unnamed_addr global i64 0, align 8
@recoveryStopTime = internal unnamed_addr global i64 0, align 8
@recoveryStopName = internal global [64 x i8] zeroinitializer, align 16
@.str.140 = private unnamed_addr constant [54 x i8] c"recovery stopping before WAL location (LSN) \22%X/%08X\22\00", align 1
@.str.141 = private unnamed_addr constant [59 x i8] c"recovery stopping before commit of transaction %u, time %s\00", align 1
@.str.142 = private unnamed_addr constant [58 x i8] c"recovery stopping before abort of transaction %u, time %s\00", align 1
@.str.143 = private unnamed_addr constant [49 x i8] c"recovery stopping at restore point \22%s\22, time %s\00", align 1
@__func__.recoveryStopsAfter = private unnamed_addr constant [19 x i8] c"recoveryStopsAfter\00", align 1
@.str.144 = private unnamed_addr constant [53 x i8] c"recovery stopping after WAL location (LSN) \22%X/%08X\22\00", align 1
@.str.145 = private unnamed_addr constant [58 x i8] c"recovery stopping after commit of transaction %u, time %s\00", align 1
@.str.146 = private unnamed_addr constant [57 x i8] c"recovery stopping after abort of transaction %u, time %s\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"%s transaction %u\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"%s LSN %X/%08X\0A\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"at restore point \22%s\22\00", align 1
@.str.153 = private unnamed_addr constant [20 x i8] c"reached consistency\00", align 1
@.str.154 = private unnamed_addr constant [29 x i8] c"no recovery target specified\00", align 1
@.str.155 = private unnamed_addr constant [31 x i8] c"pausing at the end of recovery\00", align 1
@.str.156 = private unnamed_addr constant [43 x i8] c"Execute pg_wal_replay_resume() to promote.\00", align 1
@__func__.recoveryPausesHere = private unnamed_addr constant [19 x i8] c"recoveryPausesHere\00", align 1
@.str.157 = private unnamed_addr constant [44 x i8] c"Execute pg_wal_replay_resume() to continue.\00", align 1
@.str.158 = private unnamed_addr constant [38 x i8] c"recovery apply delay %ld milliseconds\00", align 1
@__func__.recoveryApplyDelay = private unnamed_addr constant [19 x i8] c"recoveryApplyDelay\00", align 1
@lastSourceFailed = internal unnamed_addr global i1 false, align 1
@__func__.ReadRecord = private unnamed_addr constant [11 x i8] c"ReadRecord\00", align 1
@.str.159 = private unnamed_addr constant [68 x i8] c"unexpected timeline ID %u in WAL segment %s, LSN %X/%08X, offset %u\00", align 1
@.str.160 = private unnamed_addr constant [56 x i8] c"reached end of WAL in pg_wal, entering archive recovery\00", align 1
@emode_for_corrupt_record.lastComplaint = internal unnamed_addr global i64 0, align 8
@readSource = internal unnamed_addr global i32 0, align 4
@.str.161 = private unnamed_addr constant [13 x i8] c"%08X%08X%08X\00", align 1
@readSegNo = internal unnamed_addr global i64 0, align 8
@flushedUpto = internal unnamed_addr global i64 0, align 8
@readLen = internal unnamed_addr global i32 0, align 4
@readOff = internal unnamed_addr global i32 0, align 4
@track_wal_io_timing = external local_unnamed_addr global i8, align 1
@curFileTLI = internal unnamed_addr global i32 0, align 4
@.str.162 = private unnamed_addr constant [63 x i8] c"could not read from WAL segment %s, LSN %X/%08X, offset %u: %m\00", align 1
@__func__.XLogPageRead = private unnamed_addr constant [13 x i8] c"XLogPageRead\00", align 1
@.str.163 = private unnamed_addr constant [75 x i8] c"could not read from WAL segment %s, LSN %X/%08X, offset %u: read %d of %zu\00", align 1
@WaitForWALToBecomeAvailable.last_fail_time = internal unnamed_addr global i64 0, align 8
@wal_retrieve_retry_interval = external local_unnamed_addr global i32, align 4
@.str.164 = private unnamed_addr constant [47 x i8] c"waiting for WAL to become available at %X/%08X\00", align 1
@__func__.WaitForWALToBecomeAvailable = private unnamed_addr constant [28 x i8] c"WaitForWALToBecomeAvailable\00", align 1
@.str.165 = private unnamed_addr constant [25 x i8] c"unexpected WAL source %d\00", align 1
@.str.166 = private unnamed_addr constant [43 x i8] c"switched WAL source from %s to %s after %s\00", align 1
@xlogSourceNames = internal unnamed_addr constant [4 x ptr] [ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176], align 16
@.str.167 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.169 = private unnamed_addr constant [126 x i8] c"according to history file, WAL location %X/%08X belongs to timeline %u, but previous recovered WAL file came from timeline %u\00", align 1
@receiveTLI = internal global i32 0, align 4
@.str.170 = private unnamed_addr constant [62 x i8] c"new timeline %u is not a child of database system timeline %u\00", align 1
@__func__.rescanLatestTimeLine = private unnamed_addr constant [21 x i8] c"rescanLatestTimeLine\00", align 1
@.str.171 = private unnamed_addr constant [101 x i8] c"new timeline %u forked off current database system timeline %u before current recovery point %X/%08X\00", align 1
@.str.172 = private unnamed_addr constant [26 x i8] c"new target timeline is %u\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c"archive\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"pg_wal\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.177 = private unnamed_addr constant [29 x i8] c"got WAL segment from archive\00", align 1
@__func__.XLogFileReadAnyTLI = private unnamed_addr constant [19 x i8] c"XLogFileReadAnyTLI\00", align 1
@.str.178 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"pg_wal/%08X%08X%08X\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"waiting for %s\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"RECOVERYXLOG\00", align 1
@__func__.XLogFileRead = private unnamed_addr constant [13 x i8] c"XLogFileRead\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"pg_wal/%s\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"recovering %s\00", align 1
@my_wait_event_info = external local_unnamed_addr global ptr, align 8
@.str.185 = private unnamed_addr constant [28 x i8] c"invalid checkpoint location\00", align 1
@__func__.ReadCheckpointRecord = private unnamed_addr constant [21 x i8] c"ReadCheckpointRecord\00", align 1
@.str.186 = private unnamed_addr constant [26 x i8] c"invalid checkpoint record\00", align 1
@.str.187 = private unnamed_addr constant [49 x i8] c"invalid resource manager ID in checkpoint record\00", align 1
@.str.188 = private unnamed_addr constant [37 x i8] c"invalid xl_info in checkpoint record\00", align 1
@.str.189 = private unnamed_addr constant [36 x i8] c"invalid length of checkpoint record\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"received promote request\00", align 1
@__func__.CheckForStandbyTrigger = private unnamed_addr constant [23 x i8] c"CheckForStandbyTrigger\00", align 1
@.str.191 = private unnamed_addr constant [36 x i8] c"multiple recovery targets specified\00", align 1
@.str.192 = private unnamed_addr constant [139 x i8] c"At most one of \22recovery_target\22, \22recovery_target_lsn\22, \22recovery_target_name\22, \22recovery_target_time\22, \22recovery_target_xid\22 may be set.\00", align 1
@__func__.error_multiple_recovery_targets = private unnamed_addr constant [32 x i8] c"error_multiple_recovery_targets\00", align 1

; Function Attrs: nounwind uwtable
define internal void @XLogRecoveryShmemRequest(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.ShmemStructOpts, align 8    ; 5 uses
  store ptr @.str.88, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 104, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @XLogRecoveryCtl, ptr %i.c, align 8
  call void @ShmemRequestStructWithOpts(ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @XLogRecoveryShmemInit(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @XLogRecoveryCtl, align 8  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !4
  store volatile i8 0, ptr %i.b, align 1
  %i.c = load ptr, ptr @XLogRecoveryCtl, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  tail call void @InitSharedLatch(ptr noundef nonnull %i.d) #18
  %i.e = load ptr, ptr @XLogRecoveryCtl, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  tail call void @ConditionVariableInit(ptr noundef nonnull %i.f) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @InitWalRecovery(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i8, align 1                       ; 7 uses
  %i.g = alloca [20 x i8], align 16               ; 6 uses
  %i.h = alloca [20 x i8], align 16               ; 5 uses
  %i.i = alloca [1024 x i8], align 16             ; 5 uses
  %i.j = alloca [128 x i8], align 16              ; 5 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  %4 = alloca %struct.stat, align 8               ; 7 uses
  %5 = alloca %struct.stat, align 8               ; 3 uses
  %6 = alloca %struct.XLogReaderRoutine, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.s = load i32, ptr %i.r, align 8
  %. = tail call i32 @llvm.umax.i32(i32 %i.p, i32 %i.s)
  store i32 %., ptr @recoveryTargetTLI, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.t = load i32, ptr @Mode, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %readRecoverySignalFile.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = call i32 @stat(ptr noundef nonnull @.str.89, ptr noundef nonnull %4) #18
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.y = tail call i32 @errcode_for_file_access() #18 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 998, ptr noundef nonnull @__func__.readRecoverySignalFile) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = tail call i32 @unlink(ptr noundef nonnull @.str.91) #18 ; 0 uses
  %i.ab = call i32 @stat(ptr noundef nonnull @.str.92, ptr noundef nonnull %4) #18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call i32 @BasicOpenFilePerm(ptr noundef nonnull @.str.92, i32 noundef 2, i32 noundef 384) #18 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = tail call i32 @pg_fsync(i32 noundef %i.ad) #18 ; 0 uses
  %i.ag = tail call i32 @close(i32 noundef %i.ad) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i1 true, ptr @standby_signal_file_found, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ah = call i32 @stat(ptr noundef nonnull @.str.93, ptr noundef nonnull %4) #18
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @BasicOpenFilePerm(ptr noundef nonnull @.str.93, i32 noundef 2, i32 noundef 384) #18 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i32 @pg_fsync(i32 noundef %i.aj) #18 ; 0 uses
  %i.am = tail call i32 @close(i32 noundef %i.aj) #18 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i1 true, ptr @recovery_signal_file_found, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  store i1 false, ptr @StandbyModeRequested, align 1
  store i8 0, ptr @ArchiveRecoveryRequested, align 1
  %.b8.i = load i1, ptr @standby_signal_file_found, align 1
  br i1 %.b8.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.b9.i = load i1, ptr @recovery_signal_file_found, align 1
  br i1 %.b9.i, label %.thread.i, label %readRecoverySignalFile.exit.thread244

readRecoverySignalFile.exit.thread244:            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %validateRecoveryParameters.exit

.thread.i:                                        ; preds = %bb.m
  store i8 1, ptr @ArchiveRecoveryRequested, align 1
  br label %readRecoverySignalFile.exit.thread

bb.n:                                             ; preds = %bb.l
  store i1 true, ptr @StandbyModeRequested, align 1
  store i8 1, ptr @ArchiveRecoveryRequested, align 1
  %i.an = load i8, ptr @IsUnderPostmaster, align 1, !range !5
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %readRecoverySignalFile.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.aq = tail call i32 @errcode(i32 noundef 1088) #18 ; 0 uses
  %i.ar = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.94) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1064, ptr noundef nonnull @__func__.readRecoverySignalFile) #18
  unreachable

readRecoverySignalFile.exit.thread:               ; preds = %.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.p

readRecoverySignalFile.exit:                      ; preds = %bb.a
  %.pre = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !5
  %i.as = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %i.as, label %bb.p, label %validateRecoveryParameters.exit

bb.p:                                             ; preds = %readRecoverySignalFile.exit.thread, %readRecoverySignalFile.exit
  %.b.i = load i1, ptr @StandbyModeRequested, align 1
  br i1 %.b.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr @PrimaryConnInfo, align 8 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %strcmpload9.i = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %strcmpload9.i, 0
  br i1 %i.av, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aw = load ptr, ptr @recoveryRestoreCommand, align 8 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %strcmpload10.i = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %strcmpload10.i, 0
  br i1 %i.ay, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.az = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #18
  br i1 %i.az, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ba = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.95) #18 ; 0 uses
  %i.bb = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.96) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1082, ptr noundef nonnull @__func__.validateRecoveryParameters) #18
  br label %bb.z

bb.w:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr @recoveryRestoreCommand, align 8 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %strcmpload.i = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %strcmpload.i, 0
  br i1 %i.be, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bf = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.bg = tail call i32 @errcode(i32 noundef 50856066) #18 ; 0 uses
  %i.bh = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.97) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1090, ptr noundef nonnull @__func__.validateRecoveryParameters) #18
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.v, %bb.u, %bb.t, %bb.r
  %i.bi = load i32, ptr @recoveryTargetAction, align 4
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = load i8, ptr @EnableHotStandby, align 1, !range !5
  %i.bl = trunc nuw i8 %i.bk to i1
  %or.cond.i = select i1 %i.bj, i1 true, i1 %i.bl
  br i1 %or.cond.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 2, ptr @recoveryTargetAction, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bm = load i32, ptr @recoveryTarget, align 4
  %i.bn = icmp eq i32 %i.bm, 2
  br i1 %i.bn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bo = load ptr, ptr @recovery_target_time_string, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = tail call i64 @DirectFunctionCall3Coll(ptr noundef nonnull @timestamptz_in, i32 noundef 0, i64 noundef %i.bp, i64 noundef 0, i64 noundef -1) #18
  store i64 %i.bq, ptr @recoveryTargetTime, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.br = load i32, ptr @recoveryTargetTimeLineGoal, align 4
  switch i32 %i.br, label %validateRecoveryParameters.exit [
    i32 2, label %bb.ae
    i32 1, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bs = load i32, ptr @recoveryTargetTLIRequested, align 4 ; 4 uses
  %.not.i = icmp eq i32 %i.bs, 1
  br i1 %.not.i, label %.sink.split.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = tail call zeroext i1 @existsTimeLineHistory(i32 noundef %i.bs) #18
  br i1 %i.bt, label %.sink.split.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
end_hunk_0
begin_hunk_1_@InitWalRecovery:bb.a
  %i.dk = load i32, ptr %i.l, align 4
  %i.dl = zext i32 %i.dk to i64
  %i.dm = or disjoint i64 %i.dj, %i.dl
  store i64 %i.dm, ptr @RedoStartLSN, align 8
  %i.dn = load i32, ptr %i.d, align 4
  store i32 %i.dn, ptr @RedoStartTLI, align 4
  %i.do = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.103, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.f) #18
  %i.dp = icmp ne i32 %i.do, 3
  %i.dq = load i8, ptr %i.f, align 1
  %i.dr = icmp ne i8 %i.dq, 10
  %or.cond5.i = select i1 %i.dp, i1 true, i1 %i.dr
  br i1 %or.cond5.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ds = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.dt = call i32 @errcode(i32 noundef 325) #18  ; 0 uses
  %i.du = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.17) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1218, ptr noundef nonnull @__func__.read_backup_label) #18
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.dv = load i32, ptr %i.k, align 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = shl nuw i64 %i.dw, 32
  %i.dy = load i32, ptr %i.l, align 4
  %i.dz = zext i32 %i.dy to i64
  %i.ea = or disjoint i64 %i.dx, %i.dz
  store i64 %i.ea, ptr @CheckPointLoc, align 8
  %i.eb = load i32, ptr %i.d, align 4
  store i32 %i.eb, ptr @CheckPointTLI, align 4
  %i.ec = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.g) #18
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ee = load i64, ptr %i.g, align 16
  %i.ef = xor i64 %i.ee, 7234308641521824883
  %i.eg = getelementptr i8, ptr %i.g, i64 8
  %i.eh = load i8, ptr %i.eg, align 8
  %i.ei = zext i8 %i.eh to i64
  %i.ej = or i64 %i.ef, %i.ei
  %i.ek = icmp ne i64 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr @backupEndRequired, align 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.en = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.106, ptr noundef nonnull %i.h) #18
  %i.eo = icmp eq i32 %i.en, 1
  %lhsv.i = load i64, ptr %i.h, align 16
  %.not28.i = icmp eq i64 %lhsv.i, 34166655670121587
  %or.cond32.i = select i1 %i.eo, i1 %.not28.i, i1 false
  %i.ep = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.j) #18
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.er = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.er, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.es = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.109, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.17) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1261, ptr noundef nonnull @__func__.read_backup_label) #18
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.et = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.110, ptr noundef nonnull %i.i) #18
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ev = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.ev, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ew = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.111, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.17) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1266, ptr noundef nonnull @__func__.read_backup_label) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ex = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.112, ptr noundef nonnull %i.e) #18
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ez = load i32, ptr %i.d, align 4
  %i.fa = load i32, ptr %i.e, align 4
  %.not29.i = icmp eq i32 %i.ez, %i.fa
  br i1 %.not29.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fb = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.fc = call i32 @errcode(i32 noundef 325) #18  ; 0 uses
  %i.fd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.17) #18 ; 0 uses
  %i.fe = load i32, ptr %i.e, align 4
  %i.ff = load i32, ptr %i.d, align 4
  %i.fg = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.113, i32 noundef %i.fe, i32 noundef %i.ff) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1279, ptr noundef nonnull @__func__.read_backup_label) #18
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.fh = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.fh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fi = load i32, ptr %i.e, align 4
  %i.fj = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.114, i32 noundef %i.fi, ptr noundef nonnull @.str.17) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1283, ptr noundef nonnull @__func__.read_backup_label) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bb
  %i.fk = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #18
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fm = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.fn = call i32 @errcode(i32 noundef 325) #18  ; 0 uses
  %i.fo = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.116) #18 ; 0 uses
  %i.fp = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.117) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1290, ptr noundef nonnull @__func__.read_backup_label) #18
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.fq = call i32 @ferror(ptr noundef nonnull %i.cu) #18
  %.not30.i = icmp eq i32 %i.fq, 0
  br i1 %.not30.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fr = call i32 @FreeFile(ptr noundef nonnull %i.cu) #18
  %.not31.i = icmp eq i32 %i.fr, 0
  br i1 %.not31.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fs = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.ft = call i32 @errcode_for_file_access() #18 ; 0 uses
  %i.fu = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.17) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1296, ptr noundef nonnull @__func__.read_backup_label) #18
  unreachable

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  store i8 1, ptr @InArchiveRecovery, align 1
  %.b161 = load i1, ptr @StandbyModeRequested, align 1
  br i1 %.b161, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i8 1, ptr @StandbyMode, align 1
  call void @disable_startup_progress_timeout() #18
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fv = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.fv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fw = load i64, ptr @RedoStartLSN, align 8    ; 2 uses
  %i.fx = lshr i64 %i.fw, 32
  %i.fy = trunc nuw i64 %i.fx to i32
  %i.fz = trunc i64 %i.fw to i32
  %i.ga = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.gb = lshr i64 %i.ga, 32
  %i.gc = trunc nuw i64 %i.gb to i32
  %i.gd = trunc i64 %i.ga to i32
  %i.ge = load i32, ptr @CheckPointTLI, align 4
  %i.gf = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, i32 noundef %i.fy, i32 noundef %i.fz, i32 noundef %i.gc, i32 noundef %i.gd, i32 noundef %i.ge) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 565, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.gg = load ptr, ptr @xlogprefetcher, align 8
  %i.gh = load i64, ptr @CheckPointLoc, align 8
  %i.gi = load i32, ptr @CheckPointTLI, align 4
  %i.gj = call fastcc ptr @ReadCheckpointRecord(ptr noundef %i.gg, i64 noundef %i.gh, i32 noundef %i.gi) ; 2 uses
  %.not167 = icmp eq ptr %i.gj, null
  br i1 %.not167, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gk = load ptr, ptr @xlogreader, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 72
  %i.go = load ptr, ptr %i.gn, align 8            ; 12 uses
  %.sroa.014.0.copyload = load i64, ptr %i.go, align 1 ; 5 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.sroa.20.0.copyload = load i32, ptr %.sroa.20.0..sroa_idx, align 1 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %.sroa.23.sroa.0.0.copyload = load <20 x i8>, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.2339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %.sroa.2339.0.copyload = load i64, ptr %.sroa.2339.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 1
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 44
  %.sroa.26.0.copyload = load i32, ptr %.sroa.26.0..sroa_idx, align 1
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gp = load <4 x i32>, ptr %.sroa.28.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 72
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 1
  %.sroa.3277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 80
  %.sroa.3277.0.copyload = load i32, ptr %.sroa.3277.0..sroa_idx, align 1
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 84
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 1
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 88
  %i.gq = load i64, ptr %.sroa.34.0..sroa_idx, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gs = load i8, ptr %i.gr, align 8
  %i.gt = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.gt, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gu = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.gv = lshr i64 %i.gu, 32
  %i.gw = trunc nuw i64 %i.gv to i32
  %i.gx = trunc i64 %i.gu to i32
  %i.gy = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef %i.gw, i32 noundef %i.gx) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 579, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  store i8 1, ptr @InRecovery, align 1
  %i.gz = load i64, ptr @CheckPointLoc, align 8
  %i.ha = icmp ult i64 %.sroa.014.0.copyload, %i.gz
  br i1 %i.ha, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.hb = load ptr, ptr @xlogprefetcher, align 8
  call void @XLogPrefetcherBeginRead(ptr noundef %i.hb, i64 noundef %.sroa.014.0.copyload) #18
  %i.hc = load ptr, ptr @xlogprefetcher, align 8
  %i.hd = call fastcc ptr @ReadRecord(ptr noundef %i.hc, i32 noundef 15, i1 noundef zeroext false, i32 noundef %.sroa.20.0.copyload)
  %.not168 = icmp eq ptr %i.hd, null
  br i1 %.not168, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.he = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.hf = lshr i64 %.sroa.014.0.copyload, 32
  %i.hg = trunc nuw i64 %i.hf to i32
  %i.hh = trunc i64 %.sroa.014.0.copyload to i32
  %i.hi = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.hj = lshr i64 %i.hi, 32
  %i.hk = trunc nuw i64 %i.hj to i32
  %i.hl = trunc i64 %i.hi to i32
  %i.hm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8, i32 noundef %i.hg, i32 noundef %i.hh, i32 noundef %i.hk, i32 noundef %i.hl) #18 ; 0 uses
  %i.hn = load ptr, ptr @DataDir, align 8         ; 4 uses
  %i.ho = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.9, ptr noundef %i.hn, ptr noundef %i.hn, ptr noundef %i.hn, ptr noundef %i.hn) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 599, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.bv:                                            ; preds = %bb.bp
  %i.hp = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.hq = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.hr = lshr i64 %i.hq, 32
  %i.hs = trunc nuw i64 %i.hr to i32
  %i.ht = trunc i64 %i.hq to i32
  %i.hu = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10, i32 noundef %i.hs, i32 noundef %i.ht) #18 ; 0 uses
  %i.hv = load ptr, ptr @DataDir, align 8         ; 4 uses
  %i.hw = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.9, ptr noundef %i.hv, ptr noundef %i.hv, ptr noundef %i.hv, ptr noundef %i.hv) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 610, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.bw:                                            ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.hx = call ptr @AllocateFile(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.99) #18 ; 6 uses
  %.not43.i = icmp ne ptr %i.hx, null             ; 2 uses
  br i1 %.not43.i, label %.preheader.i, label %bb.bx

.preheader.i:                                     ; preds = %bb.bw
  %i.hy = call i32 @fgetc(ptr noundef nonnull %i.hx) ; 2 uses
  %.not456672.i = icmp eq i32 %i.hy, -1
  br i1 %.not456672.i, label %.outer._crit_edge.thread.i, label %.lr.ph.i

bb.bx:                                            ; preds = %bb.bw
  %i.hz = tail call ptr @__errno_location() #20
  %i.ia = load i32, ptr %i.hz, align 4
  %.not44.i = icmp eq i32 %i.ia, 2
  br i1 %.not44.i, label %read_tablespace_map.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ib = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.ic = call i32 @errcode_for_file_access() #18 ; 0 uses
  %i.id = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.14) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1333, ptr noundef nonnull @__func__.read_tablespace_map) #18
  unreachable

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ci
  %.1182 = phi ptr [ %.4, %bb.ci ], [ %.0, %.lr.ph.i ] ; 4 uses
  %i.ie = phi i32 [ %i.ji, %bb.ci ], [ %i.jp, %.lr.ph.i ] ; 2 uses
  %.03567.i = phi i32 [ 0, %bb.ci ], [ %.035.ph73.i, %.lr.ph.i ] ; 5 uses
  switch i32 %i.ie, label %.thread.i180 [
    i32 13, label %bb.bz
    i32 10, label %bb.bz
    i32 92, label %.outer.i
  ]

bb.bz:                                            ; preds = %.lr.ph.split.i, %.lr.ph.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.if = icmp eq i32 %.03567.i, 0
  br i1 %i.if, label %bb.ci, label %bb.ca, !llvm.loop !7

bb.ca:                                            ; preds = %bb.bz
  %i.ig = sext i32 %.03567.i to i64
  %i.ih = getelementptr inbounds i8, ptr %i.a, i64 %i.ig
  store i8 0, ptr %i.ih, align 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cc, %bb.ca
  %.034.i = phi i32 [ 0, %bb.ca ], [ %i.il, %bb.cc ] ; 5 uses
  %i.ii = sext i32 %.034.i to i64                 ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.a, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1
  switch i8 %i.ik, label %bb.cc [
    i8 0, label %.critedge.i
    i8 32, label %.critedge.i
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.il = add i32 %.034.i, 1
  br label %bb.cb, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.cb, %bb.cb
  %i.im = icmp sgt i32 %.034.i, 0
  %i.in = add i32 %.03567.i, -1
  %.not50.i = icmp slt i32 %.034.i, %i.in
  %or.cond.i179 = select i1 %i.im, i1 %.not50.i, i1 false
  br i1 %or.cond.i179, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.critedge.i
  %i.io = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.ip = call i32 @errcode(i32 noundef 325) #18  ; 0 uses
  %i.iq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.14) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1365, ptr noundef nonnull @__func__.read_tablespace_map) #18
  unreachable

bb.ce:                                            ; preds = %.critedge.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ii
  store i8 0, ptr %i.ir, align 1
  %i.is = call ptr @palloc0(i64 noundef 32) #18   ; 3 uses
  %i.it = tail call ptr @__errno_location() #20   ; 2 uses
  store i32 0, ptr %i.it, align 4
  %i.iu = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10) #18
  %i.iv = trunc i64 %i.iu to i32
  store i32 %i.iv, ptr %i.is, align 8
  %i.iw = load ptr, ptr %i.b, align 8
  %i.ix = load i8, ptr %i.iw, align 1
  %.not51.i = icmp eq i8 %i.ix, 0
  br i1 %.not51.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.iy = load i32, ptr %i.it, align 4
  switch i32 %i.iy, label %bb.ch [
    i32 22, label %bb.cg
    i32 34, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf, %bb.ce
  %i.iz = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.ja = call i32 @errcode(i32 noundef 325) #18  ; 0 uses
  %i.jb = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.14) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1374, ptr noundef nonnull @__func__.read_tablespace_map) #18
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.jc = zext nneg i32 %.034.i to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  %i.jf = call ptr @pstrdup(ptr noundef nonnull %i.je) #18
  %i.jg = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store ptr %i.jf, ptr %i.jg, align 8
  %i.jh = call ptr @lappend(ptr noundef %.1182, ptr noundef nonnull %i.is) #18
  br label %bb.ci, !llvm.loop !7

bb.ci:                                            ; preds = %bb.ch, %bb.bz
  %.4 = phi ptr [ %.1182, %bb.bz ], [ %i.jh, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ji = call i32 @fgetc(ptr noundef nonnull %i.hx) ; 2 uses
  %.not45.i = icmp eq i32 %i.ji, -1
  br i1 %.not45.i, label %.outer._crit_edge.thread.i, label %.lr.ph.split.i

.thread.i180:                                     ; preds = %.lr.ph.split.i, %.lr.ph.i
  %.5 = phi ptr [ %.0, %.lr.ph.i ], [ %.1182, %.lr.ph.split.i ] ; 2 uses
  %.us-phi.i = phi i32 [ %.035.ph73.i, %.lr.ph.i ], [ %.03567.i, %.lr.ph.split.i ] ; 4 uses
  %.us-phi71.i = phi i32 [ %i.jp, %.lr.ph.i ], [ %i.ie, %.lr.ph.split.i ]
  %i.jj = icmp ult i32 %.us-phi.i, 1023
  br i1 %i.jj, label %bb.cj, label %.outer.i

bb.cj:                                            ; preds = %.thread.i180
  %i.jk = zext nneg i32 %.us-phi.i to i64
end_hunk_1
begin_hunk_2_@InitWalRecovery:bb.a
  %.not46.i = icmp eq i32 %i.jx, 0
  br i1 %.not46.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.outer._crit_edge.thread.i
  %i.jy = call i32 @FreeFile(ptr noundef nonnull %i.hx) #18
  %.not47.i = icmp eq i32 %i.jy, 0
  br i1 %.not47.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.outer._crit_edge.thread.i
  %i.jz = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.ka = call i32 @errcode_for_file_access() #18 ; 0 uses
  %i.kb = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.14) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 1400, ptr noundef nonnull @__func__.read_tablespace_map) #18
  unreachable

read_tablespace_map.exit:                         ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.critedge

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not169 = icmp eq ptr %.3, null
  br i1 %.not169, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cn
  %i.kc = getelementptr inbounds nuw i8, ptr %.3, i64 4 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.ke = load i32, ptr %i.kc, align 4
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %.lr.ph208, label %.critedge

.lr.ph208:                                        ; preds = %.lr.ph, %bb.co
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.co ], [ 0, %.lr.ph ] ; 2 uses
  %i.kg = load ptr, ptr %i.kd, align 8
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv
  %i.ki = load ptr, ptr %i.kh, align 8            ; 3 uses
  %i.kj = load i32, ptr %i.ki, align 8
  %i.kk = call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %i.kj) #18 ; 3 uses
  call void @remove_tablespace_symlink(ptr noundef %i.kk) #18
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = call i32 @symlink(ptr noundef %i.km, ptr noundef %i.kk) #18
  %i.ko = icmp slt i32 %i.kn, 0
  br i1 %i.ko, label %.split, label %bb.co

.split:                                           ; preds = %.lr.ph208
  %i.kp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.kq = call i32 @errcode_for_file_access() #18 ; 0 uses
  %i.kr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, ptr noundef %i.kk) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 636, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.co:                                            ; preds = %.lr.ph208
  %i.ks = load ptr, ptr %i.kl, align 8
  call void @pfree(ptr noundef %i.ks) #18
  call void @pfree(ptr noundef nonnull %i.ki) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kt = load i32, ptr %i.kc, align 4
  %i.ku = sext i32 %i.kt to i64
  %i.kv = icmp slt i64 %indvars.iv.next, %i.ku
  br i1 %i.kv, label %.lr.ph208, label %.critedge

.critedge:                                        ; preds = %bb.co, %bb.cn, %.lr.ph, %read_tablespace_map.exit
  %i.kw = zext i1 %.not43.i to i8
  br label %bb.di

bb.cp:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.kx = call i32 @stat(ptr noundef nonnull @.str.14, ptr noundef nonnull %5) #18
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.kz = call i32 @unlink(ptr noundef nonnull @.str.15) #18 ; 0 uses
  %i.la = call i32 @durable_rename(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 14) #18
  %i.lb = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.lb, label %.sink.split, label %bb.cr

.sink.split:                                      ; preds = %bb.cq
  %i.lc = icmp eq i32 %i.la, 0                    ; 2 uses
  %.266 = select i1 %i.lc, i32 671, i32 677
  %.str.18..str.19 = select i1 %i.lc, ptr @.str.18, ptr @.str.19
  %i.ld = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17) #18 ; 0 uses
  %i.le = call i32 (ptr, ...) @errdetail(ptr noundef nonnull %.str.18..str.19, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef %.266, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.sink.split, %bb.cp
  %i.lf = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !5, !noundef !6
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.li = load i64, ptr %i.lh, align 8
  %.not162 = icmp eq i64 %i.li, 0
  br i1 %.not162, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.lk = load i8, ptr %i.lj, align 8, !range !5, !noundef !6
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ln = load i64, ptr %i.lm, align 8
  %.not163 = icmp eq i64 %i.ln, 0
  br i1 %.not163, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.lo = load i32, ptr %i.m, align 8
  %i.lp = icmp eq i32 %i.lo, 1
  br i1 %i.lp, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs
  store i8 1, ptr @InArchiveRecovery, align 1
  %.b160 = load i1, ptr @StandbyModeRequested, align 1
  br i1 %.b160, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i8 1, ptr @StandbyMode, align 1
  call void @disable_startup_progress_timeout() #18
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx, %bb.cv, %bb.cr
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8
  %.not164 = icmp eq i64 %i.lr, 0
  br i1 %.not164, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ls = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.ls, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.lt = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.lu = lshr i64 %i.lt, 32
  %i.lv = trunc nuw i64 %i.lu to i32
  %i.lw = trunc i64 %i.lt to i32
  %i.lx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, i32 noundef %i.lv, i32 noundef %i.lw) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 716, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da, %bb.cy
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lz = load i64, ptr %i.ly, align 8            ; 2 uses
  store i64 %i.lz, ptr @CheckPointLoc, align 8
  %i.ma = load i32, ptr %i.r, align 8             ; 3 uses
  store i32 %i.ma, ptr @CheckPointTLI, align 4
  %i.mb = load i64, ptr %i.q, align 8
  store i64 %i.mb, ptr @RedoStartLSN, align 8
  store i32 %i.ma, ptr @RedoStartTLI, align 4
  %i.mc = load ptr, ptr @xlogprefetcher, align 8
  %i.md = call fastcc ptr @ReadCheckpointRecord(ptr noundef %i.mc, i64 noundef %i.lz, i32 noundef %i.ma) ; 2 uses
  %.not165 = icmp eq ptr %i.md, null
  br i1 %.not165, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.me = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.me, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.mf = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.mg = lshr i64 %i.mf, 32
  %i.mh = trunc nuw i64 %i.mg to i32
  %i.mi = trunc i64 %i.mf to i32
  %i.mj = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef %i.mh, i32 noundef %i.mi) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 729, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.df

bb.de:                                            ; preds = %bb.db
  %i.mk = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.ml = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.mm = lshr i64 %i.ml, 32
  %i.mn = trunc nuw i64 %i.mm to i32
  %i.mo = trunc i64 %i.ml to i32
  %i.mp = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21, i32 noundef %i.mn, i32 noundef %i.mo) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 741, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.df:                                            ; preds = %bb.dc, %bb.dd
  %i.mq = load ptr, ptr @xlogreader, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 104
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 72
  %i.mu = load ptr, ptr %i.mt, align 8            ; 12 uses
  %.sroa.014.0.copyload29 = load i64, ptr %i.mu, align 1 ; 6 uses
  %.sroa.20.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %.sroa.20.0.copyload32 = load i32, ptr %.sroa.20.0..sroa_idx31, align 1 ; 3 uses
  %.sroa.23.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  %.sroa.23.sroa.0.0.copyload298 = load <20 x i8>, ptr %.sroa.23.0..sroa_idx37, align 1 ; 2 uses
  %.sroa.2339.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %.sroa.2339.0.copyload41 = load i64, ptr %.sroa.2339.0..sroa_idx40, align 1 ; 2 uses
  %.sroa.25.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  %.sroa.25.0.copyload46 = load i32, ptr %.sroa.25.0..sroa_idx45, align 1 ; 2 uses
  %.sroa.26.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.mu, i64 44
  %.sroa.26.0.copyload50 = load i32, ptr %.sroa.26.0..sroa_idx49, align 1 ; 2 uses
  %.sroa.27.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.mu, i64 48
  %.sroa.27.0.copyload54 = load i64, ptr %.sroa.27.0..sroa_idx53, align 1 ; 2 uses
  %.sroa.28.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %i.mv = load <4 x i32>, ptr %.sroa.28.0..sroa_idx57, align 1 ; 2 uses
  %.sroa.32.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  %.sroa.32.0.copyload74 = load i64, ptr %.sroa.32.0..sroa_idx73, align 1 ; 2 uses
  %.sroa.3277.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.mu, i64 80
  %.sroa.3277.0.copyload79 = load i32, ptr %.sroa.3277.0..sroa_idx78, align 1 ; 2 uses
  %.sroa.33.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.mu, i64 84
  %.sroa.33.0.copyload83 = load i32, ptr %.sroa.33.0..sroa_idx82, align 1 ; 2 uses
  %.sroa.34.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.mu, i64 88
  %i.mw = load i64, ptr %.sroa.34.0..sroa_idx86, align 1 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.my = load i8, ptr %i.mx, align 8             ; 2 uses
  %i.mz = load i64, ptr @CheckPointLoc, align 8
  %i.na = icmp ult i64 %.sroa.014.0.copyload29, %i.mz
  br i1 %i.na, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.nb = load ptr, ptr @xlogprefetcher, align 8
  call void @XLogPrefetcherBeginRead(ptr noundef %i.nb, i64 noundef %.sroa.014.0.copyload29) #18
  %i.nc = load ptr, ptr @xlogprefetcher, align 8
  %i.nd = call fastcc ptr @ReadRecord(ptr noundef %i.nc, i32 noundef 15, i1 noundef zeroext false, i32 noundef %.sroa.20.0.copyload32)
  %.not166 = icmp eq ptr %i.nd, null
  br i1 %.not166, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ne = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.nf = lshr i64 %.sroa.014.0.copyload29, 32
  %i.ng = trunc nuw i64 %i.nf to i32
  %i.nh = trunc i64 %.sroa.014.0.copyload29 to i32
  %i.ni = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.nj = lshr i64 %i.ni, 32
  %i.nk = trunc nuw i64 %i.nj to i32
  %i.nl = trunc i64 %i.ni to i32
  %i.nm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8, i32 noundef %i.ng, i32 noundef %i.nh, i32 noundef %i.nk, i32 noundef %i.nl) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 753, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.di:                                            ; preds = %bb.df, %bb.dg, %.critedge
  %.sroa.23.sroa.0.0 = phi <20 x i8> [ %.sroa.23.sroa.0.0.copyload, %.critedge ], [ %.sroa.23.sroa.0.0.copyload298, %bb.dg ], [ %.sroa.23.sroa.0.0.copyload298, %bb.df ]
  %.1184186 = phi i1 [ %or.cond32.i, %.critedge ], [ false, %bb.dg ], [ false, %bb.df ]
  %.sroa.34.sroa.0.0 = phi i64 [ %i.gq, %.critedge ], [ %i.mw, %bb.dg ], [ %i.mw, %bb.df ]
  %.sroa.3277.0 = phi i32 [ %.sroa.3277.0.copyload, %.critedge ], [ %.sroa.3277.0.copyload79, %bb.dg ], [ %.sroa.3277.0.copyload79, %bb.df ] ; 2 uses
  %.sroa.32.0 = phi i64 [ %.sroa.32.0.copyload, %.critedge ], [ %.sroa.32.0.copyload74, %bb.dg ], [ %.sroa.32.0.copyload74, %bb.df ]
  %.sroa.27.0 = phi i64 [ %.sroa.27.0.copyload, %.critedge ], [ %.sroa.27.0.copyload54, %bb.dg ], [ %.sroa.27.0.copyload54, %bb.df ] ; 2 uses
  %.sroa.26.0 = phi i32 [ %.sroa.26.0.copyload, %.critedge ], [ %.sroa.26.0.copyload50, %bb.dg ], [ %.sroa.26.0.copyload50, %bb.df ] ; 2 uses
  %.sroa.25.0 = phi i32 [ %.sroa.25.0.copyload, %.critedge ], [ %.sroa.25.0.copyload46, %bb.dg ], [ %.sroa.25.0.copyload46, %bb.df ] ; 2 uses
  %.sroa.2339.0 = phi i64 [ %.sroa.2339.0.copyload, %.critedge ], [ %.sroa.2339.0.copyload41, %bb.dg ], [ %.sroa.2339.0.copyload41, %bb.df ] ; 3 uses
  %.sroa.20.0 = phi i32 [ %.sroa.20.0.copyload, %.critedge ], [ %.sroa.20.0.copyload32, %bb.dg ], [ %.sroa.20.0.copyload32, %bb.df ] ; 2 uses
  %.sroa.014.0 = phi i64 [ %.sroa.014.0.copyload, %.critedge ], [ %.sroa.014.0.copyload29, %bb.dg ], [ %.sroa.014.0.copyload29, %bb.df ] ; 8 uses
  %.sroa.33.0 = phi i32 [ %.sroa.33.0.copyload, %.critedge ], [ %.sroa.33.0.copyload83, %bb.dg ], [ %.sroa.33.0.copyload83, %bb.df ] ; 2 uses
  %.1 = phi i8 [ %i.kw, %.critedge ], [ 0, %bb.dg ], [ 0, %bb.df ]
  %.0.in.in = phi i8 [ %i.gs, %.critedge ], [ %i.my, %bb.dg ], [ %i.my, %bb.df ]
  %i.nn = phi <4 x i32> [ %i.gp, %.critedge ], [ %i.mv, %bb.dg ], [ %i.mv, %bb.df ] ; 5 uses
  %.0.in = icmp ult i8 %.0.in.in, 16              ; 3 uses
  %i.no = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !5, !noundef !6
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.dj, label %bb.dz

bb.dj:                                            ; preds = %bb.di
  %.b = load i1, ptr @StandbyModeRequested, align 1
  br i1 %.b, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.nq = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.nq, label %bb.dl, label %bb.dz

bb.dl:                                            ; preds = %bb.dk
  %i.nr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22) #18 ; 0 uses
  br label %.sink.split264

bb.dm:                                            ; preds = %bb.dj
  %i.ns = load i32, ptr @recoveryTarget, align 4
  %i.nt = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18 ; 6 uses
  switch i32 %i.ns, label %bb.dx [
    i32 1, label %bb.dn
    i32 2, label %bb.dp
    i32 3, label %bb.dr
    i32 4, label %bb.dt
    i32 5, label %bb.dv
  ]

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.do, label %bb.dz

bb.do:                                            ; preds = %bb.dn
  %i.nu = load i32, ptr @recoveryTargetXid, align 4
  %i.nv = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23, i32 noundef %i.nu) #18 ; 0 uses
  br label %.sink.split264

bb.dp:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.dq, label %bb.dz

bb.dq:                                            ; preds = %bb.dp
  %i.nw = load i64, ptr @recoveryTargetTime, align 8
  %i.nx = call ptr @timestamptz_to_str(i64 noundef %i.nw) #18
  %i.ny = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.24, ptr noundef %i.nx) #18 ; 0 uses
  br label %.sink.split264

bb.dr:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.ds, label %bb.dz

bb.ds:                                            ; preds = %bb.dr
  %i.nz = load ptr, ptr @recoveryTargetName, align 8
  %i.oa = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25, ptr noundef %i.nz) #18 ; 0 uses
  br label %.sink.split264

bb.dt:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.du, label %bb.dz

bb.du:                                            ; preds = %bb.dt
  %i.ob = load i64, ptr @recoveryTargetLSN, align 8 ; 2 uses
  %i.oc = lshr i64 %i.ob, 32
  %i.od = trunc nuw i64 %i.oc to i32
  %i.oe = trunc i64 %i.ob to i32
  %i.of = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26, i32 noundef %i.od, i32 noundef %i.oe) #18 ; 0 uses
  br label %.sink.split264

bb.dv:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.og = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.27) #18 ; 0 uses
  br label %.sink.split264

bb.dx:                                            ; preds = %bb.dm
  br i1 %i.nt, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.oh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.28) #18 ; 0 uses
  br label %.sink.split264

.sink.split264:                                   ; preds = %bb.do, %bb.ds, %bb.dw, %bb.dy, %bb.du, %bb.dq, %bb.dl
  %.sink265 = phi i32 [ 761, %bb.dl ], [ 769, %bb.dq ], [ 777, %bb.du ], [ 783, %bb.dy ], [ 780, %bb.dw ], [ 773, %bb.ds ], [ 765, %bb.do ]
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef %.sink265, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.dz

bb.dz:                                            ; preds = %.sink.split264, %bb.dk, %bb.dp, %bb.dt, %bb.dx, %bb.dv, %bb.dr, %bb.dn, %bb.di
  %i.oi = load i64, ptr @CheckPointLoc, align 8
  %i.oj = load ptr, ptr @expectedTLEs, align 8
  %i.ok = call i32 @tliOfPointInHistory(i64 noundef %i.oi, ptr noundef %i.oj) #18
  %i.ol = load i32, ptr @CheckPointTLI, align 4   ; 2 uses
  %.not171 = icmp eq i32 %i.ok, %i.ol
  br i1 %.not171, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.om = load ptr, ptr @expectedTLEs, align 8
  %i.on = call i64 @tliSwitchPoint(i32 noundef %i.ol, ptr noundef %i.om, ptr noundef null) #18 ; 2 uses
  %i.oo = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.op = load i32, ptr @recoveryTargetTLI, align 4
  %i.oq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.29, i32 noundef %i.op) #18 ; 0 uses
  %i.or = select i1 %.not.i177, ptr @.str.17, ptr @.str.31
  %i.os = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.ot = lshr i64 %i.os, 32
  %i.ou = trunc nuw i64 %i.ot to i32
  %i.ov = trunc i64 %i.os to i32
  %i.ow = load i32, ptr @CheckPointTLI, align 4
  %i.ox = lshr i64 %i.on, 32
  %i.oy = trunc nuw i64 %i.ox to i32
  %i.oz = trunc i64 %i.on to i32
  %i.pa = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.30, ptr noundef nonnull %i.or, i32 noundef %i.ou, i32 noundef %i.ov, i32 noundef %i.ow, i32 noundef %i.oy, i32 noundef %i.oz) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 811, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.pc = load i64, ptr %i.pb, align 8            ; 2 uses
  %.not172 = icmp eq i64 %i.pc, 0
  br i1 %.not172, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pd = add i64 %i.pc, -1
  %i.pe = load ptr, ptr @expectedTLEs, align 8
  %i.pf = call i32 @tliOfPointInHistory(i64 noundef %i.pd, ptr noundef %i.pe) #18
  %i.pg = load i32, ptr %i.o, align 8
  %.not173 = icmp eq i32 %i.pf, %i.pg
  br i1 %.not173, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ph = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.pi = load i32, ptr @recoveryTargetTLI, align 4
  %i.pj = load i64, ptr %i.pb, align 8            ; 2 uses
  %i.pk = lshr i64 %i.pj, 32
  %i.pl = trunc nuw i64 %i.pk to i32
  %i.pm = trunc i64 %i.pj to i32
  %i.pn = load i32, ptr %i.o, align 8
  %i.po = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, i32 noundef %i.pi, i32 noundef %i.pl, i32 noundef %i.pm, i32 noundef %i.pn) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 825, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.ee:                                            ; preds = %bb.ec, %bb.eb
  %i.pp = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.pp, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.pq = lshr i64 %.sroa.014.0, 32
  %i.pr = trunc nuw i64 %i.pq to i32
  %i.ps = trunc i64 %.sroa.014.0 to i32
  %i.pt = select i1 %.0.in, ptr @.str.34, ptr @.str.35
  %i.pu = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.33, i32 noundef %i.pr, i32 noundef %i.ps, ptr noundef nonnull %i.pt) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 830, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.pv = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.pv, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.pw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.36, i64 noundef %.sroa.2339.0, i32 noundef %.sroa.25.0) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 834, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.px = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.px, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.py = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.37, i32 noundef %.sroa.26.0, i64 noundef %.sroa.27.0) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 837, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.pz = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.pz, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.qa = extractelement <4 x i32> %i.nn, i64 0
  %i.qb = extractelement <4 x i32> %i.nn, i64 1
  %i.qc = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.38, i32 noundef %i.qa, i32 noundef %i.qb) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 840, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.qd = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.qd, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.qe = extractelement <4 x i32> %i.nn, i64 2
  %i.qf = extractelement <4 x i32> %i.nn, i64 3
  %i.qg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.39, i32 noundef %i.qe, i32 noundef %i.qf) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 843, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.qh = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #18
  br i1 %i.qh, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.qi = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.40, i32 noundef %.sroa.3277.0, i32 noundef %.sroa.33.0) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 847, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.qj = trunc i64 %.sroa.2339.0 to i32
  %i.qk = icmp ugt i32 %i.qj, 2
  br i1 %i.qk, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ql = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.qm = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 850, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.es:                                            ; preds = %bb.eq
  %i.qn = load i64, ptr @CheckPointLoc, align 8   ; 2 uses
  %i.qo = icmp ugt i64 %.sroa.014.0, %i.qn
  br i1 %i.qo, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.qp = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.qq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.42) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 855, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.qr = icmp ult i64 %.sroa.014.0, %i.qn
  br i1 %i.qr, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  br i1 %.0.in, label %bb.ew, label %.thread

bb.ew:                                            ; preds = %bb.ev
  %i.qs = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.qt = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 866, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.ex:                                            ; preds = %bb.eu
  %i.qu = load i32, ptr %i.m, align 8
  %.not174 = icmp ne i32 %i.qu, 1
  %i.qv = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !5
  %i.qw = trunc nuw i8 %i.qv to i1
  %or.cond = select i1 %.not174, i1 true, i1 %i.qw
  br i1 %or.cond, label %.thread, label %bb.ey

.thread:                                          ; preds = %bb.ex, %bb.ev
  store i8 1, ptr @InRecovery, align 1
  %.pre226245 = load i8, ptr @InArchiveRecovery, align 1, !range !5
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %.pre225 = load i8, ptr @InRecovery, align 1, !range !5
  %i.qx = trunc nuw i8 %.pre225 to i1
  %.pre226 = load i8, ptr @InArchiveRecovery, align 1, !range !5 ; 2 uses
  br i1 %i.qx, label %bb.ez, label %bb.fn

bb.ez:                                            ; preds = %.thread, %bb.ey
  %.pre226246 = phi i8 [ %.pre226245, %.thread ], [ %.pre226, %bb.ey ]
  %i.qy = trunc nuw i8 %.pre226246 to i1
  br i1 %i.qy, label %bb.ff, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.qz = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.qz, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ra = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.44) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 896, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.rb = load i32, ptr @recoveryTargetTLI, align 4
  %i.rc = load i32, ptr %i.r, align 8
  %i.rd = icmp ugt i32 %i.rb, %i.rc
  br i1 %i.rd, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.re = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #18
  br i1 %i.re, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.rf = load i32, ptr %i.r, align 8
  %i.rg = load i32, ptr @recoveryTargetTLI, align 4
  %i.rh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.45, i32 noundef %i.rf, i32 noundef %i.rg) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 902, ptr noundef nonnull @__func__.InitWalRecovery) #18
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fc, %bb.fe, %bb.fd, %bb.ez
  %storemerge175 = phi i32 [ 5, %bb.ez ], [ 4, %bb.fd ], [ 4, %bb.fe ], [ 4, %bb.fc ]
  store i32 %storemerge175, ptr %i.m, align 8
  %i.ri = load i64, ptr @CheckPointLoc, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ri, ptr %i.rj, align 8
  store i64 %.sroa.014.0, ptr %i.q, align 8
  store i32 %.sroa.20.0, ptr %i.r, align 8
  %.sroa.23.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <20 x i8> %.sroa.23.sroa.0.0, ptr %.sroa.23.0..sroa_idx38, align 4
  %.sroa.2339.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.2339.0, ptr %.sroa.2339.0..sroa_idx42, align 8
  %.sroa.25.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sroa.25.0, ptr %.sroa.25.0..sroa_idx47, align 8
  %.sroa.26.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.sroa.26.0, ptr %.sroa.26.0..sroa_idx51, align 4
  %.sroa.27.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.27.0, ptr %.sroa.27.0..sroa_idx55, align 8
  %.sroa.28.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> %i.nn, ptr %.sroa.28.0..sroa_idx59, align 8
  %.sroa.32.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.32.0, ptr %.sroa.32.0..sroa_idx75, align 8
  %.sroa.3277.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %.sroa.3277.0, ptr %.sroa.3277.0..sroa_idx80, align 8
  %.sroa.33.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.sroa.33.0, ptr %.sroa.33.0..sroa_idx84, align 4
  %.sroa.34.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.34.sroa.0.0, ptr %.sroa.34.0..sroa_idx87, align 8
  %i.rk = load i8, ptr @InArchiveRecovery, align 1, !range !5, !noundef !6 ; 4 uses
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.rm = load i64, ptr %i.pb, align 8
  %i.rn = icmp ult i64 %i.rm, %.sroa.014.0
  br i1 %i.rn, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i64 %.sroa.014.0, ptr %i.pb, align 8
  store i32 %.sroa.20.0, ptr %i.o, align 8
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.fh, %bb.ff
  br i1 %.not.i177, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.014.0, ptr %i.ro, align 8
  %i.rp = load i8, ptr @backupEndRequired, align 1, !range !5, !noundef !6
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.rp, ptr %i.rq, align 8
  br i1 %.1184186, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %bb.fj
  switch i32 %i.n, label %bb.fl [
    i32 5, label %bb.fm
    i32 2, label %bb.fm
  ]

bb.fl:                                            ; preds = %bb.fk
  %i.rr = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #19 ; 0 uses
  %i.rs = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46) #18 ; 0 uses
  %i.rt = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.47) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.5, i32 noundef 944, ptr noundef nonnull @__func__.InitWalRecovery) #18
  unreachable

bb.fm:                                            ; preds = %bb.fk, %bb.fk
  %i.ru = load i64, ptr %i.pb, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.ru, ptr %i.rv, align 8
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fi, %bb.fm, %bb.fj, %bb.ey
  %i.rw = phi i8 [ %i.rk, %bb.fi ], [ %i.rk, %bb.fm ], [ %i.rk, %bb.fj ], [ %.pre226, %bb.ey ]
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ry = load i64, ptr %i.rx, align 8
  store i64 %i.ry, ptr @backupStartPoint, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.sa = load i8, ptr %i.rz, align 8, !range !5, !noundef !6
  store i8 %i.sa, ptr @backupEndRequired, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.sc = load i64, ptr %i.sb, align 8
  store i64 %i.sc, ptr @backupEndPoint, align 8
  %i.sd = trunc nuw i8 %i.rw to i1
  br i1 %i.sd, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.se = load i64, ptr %i.pb, align 8
  %i.sf = load i32, ptr %i.o, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink = phi i64 [ %i.se, %bb.fo ], [ 0, %bb.fn ]
  %storemerge176 = phi i32 [ %i.sf, %bb.fo ], [ 0, %bb.fn ]
  store i64 %.sink, ptr @minRecoveryPoint, align 8
  store i32 %storemerge176, ptr @minRecoveryPointTLI, align 4
  store i64 0, ptr @abortedRecPtr, align 8
  store i64 0, ptr @missingContrecPtr, align 8
  %i.sg = zext i1 %.0.in to i8
  store i8 %i.sg, ptr %1, align 1
  %i.sh = zext i1 %.not.i177 to i8
  store i8 %i.sh, ptr %2, align 1
  store i8 %.1, ptr %3, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @OwnLatch(ptr noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare ptr @XLogReaderAllocate(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @XLogPageRead(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %i.g = load i32, ptr @wal_segment_size, align 4 ; 4 uses
  %i.h = add i32 %i.g, -1
  %i.i = trunc i64 %1 to i32                      ; 3 uses
  %i.j = and i32 %i.h, %i.i                       ; 2 uses
  %i.k = load i32, ptr @readFile, align 4
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %i.g to i64
  %i.n = udiv i64 %1, %i.m
  %i.o = load i64, ptr @readSegNo, align 8        ; 2 uses
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr @ArchiveRecoveryRequested, align 1, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i8, ptr @IsUnderPostmaster, align 1, !range !5
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = tail call zeroext i1 @XLogCheckpointNeeded(i64 noundef %i.o) #18
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @GetRedoRecPtr() #18       ; 0 uses
  %i.w = load i64, ptr @readSegNo, align 8
  %i.x = tail call zeroext i1 @XLogCheckpointNeeded(i64 noundef %i.w) #18
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @RequestCheckpoint(i32 noundef 128) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  %i.y = load i32, ptr @readFile, align 4
  %i.z = tail call i32 @close(i32 noundef %i.y) #18 ; 0 uses
  store i32 -1, ptr @readFile, align 4
  store i32 0, ptr @readSource, align 4
  %.pre = load i32, ptr @wal_segment_size, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.a
  %.pr = phi i1 [ true, %bb.g ], [ false, %bb.b ], [ true, %bb.a ]
  %i.aa = phi i32 [ %.pre, %bb.g ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.ab = sext i32 %i.aa to i64
  %i.ac = udiv i64 %1, %i.ab
  store i64 %i.ac, ptr @readSegNo, align 8
  %i.ad = sext i32 %2 to i64
  %i.ae = add i64 %1, %i.ad                       ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1313 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = lshr i64 %i.ae, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = trunc i64 %i.ae to i32
  %i.an = icmp eq i32 %i.f, 15                    ; 3 uses
  %i.ao = lshr i64 %1, 32
  %i.ap = trunc nuw i64 %i.ao to i32              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  br i1 %.pr, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.dl, %bb.h
  %.pre113 = load i8, ptr %i.af, align 1, !range !5
  %i.as = trunc nuw i8 %.pre113 to i1
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr @readSource, align 4
  %i.au = icmp eq i32 %i.at, 3
  br i1 %i.au, label %bb.j, label %.thread76

bb.j:                                             ; preds = %bb.i
  %i.av = load i64, ptr @flushedUpto, align 8
  %i.aw = icmp ult i64 %i.av, %i.ae
  br i1 %i.aw, label %bb.k, label %WaitForWALToBecomeAvailable.exit.thread73.thread146

bb.k:                                             ; preds = %bb.j
  %i.ax = load i8, ptr %i.af, align 1, !range !5, !noundef !6
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %WaitForWALToBecomeAvailable.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.az = phi i1 [ %i.as, %._crit_edge ], [ false, %bb.k ] ; 2 uses
  %i.ba = load i8, ptr %i.ag, align 1, !range !5, !noundef !6
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = load i8, ptr %i.ah, align 4, !range !5, !noundef !6
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.bf = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.bg = load i8, ptr @InArchiveRecovery, align 1, !range !5, !noundef !6
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.m, label %.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.bi = load i32, ptr @currentSource, align 4   ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load i8, ptr @StandbyMode, align 1, !range !5, !noundef !6
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = icmp ne i32 %i.bi, 3
  %or.cond.not.i = or i1 %i.bm, %i.bl
  br i1 %or.cond.not.i, label %.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i1 false, ptr @lastSourceFailed, align 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.l
  %.sink.i = phi i32 [ 1, %bb.o ], [ 2, %bb.l ]   ; 2 uses
  store i32 %.sink.i, ptr @currentSource, align 4
  br label %.preheader

.preheader:                                       ; preds = %.sink.split.i, %bb.n
  %.ph = phi i32 [ %.sink.i, %.sink.split.i ], [ %i.bi, %bb.n ]
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.ci
  %i.bn = phi i32 [ %.pre.i, %bb.ci ], [ %.ph, %.preheader ] ; 6 uses
  %.053.i = phi i1 [ %.356.i, %bb.ci ], [ false, %.preheader ] ; 5 uses
  %.b66.i = load i1, ptr @lastSourceFailed, align 1
  br i1 %.b66.i, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %bb.p
  br i1 %i.az, label %WaitForWALToBecomeAvailable.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i32 %i.bn, label %bb.ag [
    i32 1, label %bb.s
    i32 2, label %bb.s
    i32 3, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bo = load i8, ptr @StandbyMode, align 1, !range !5, !noundef !6
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.bq = call fastcc zeroext i1 @CheckForStandbyTrigger()
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @XLogShutdownWalRcv() #18
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %.pre113.i = load i8, ptr @StandbyMode, align 1, !range !5
  %i.br = trunc nuw i8 %.pre113.i to i1
  br i1 %i.br, label %bb.ai, label %.loopexit

bb.w:                                             ; preds = %bb.r
  %i.bs = call zeroext i1 @WalRcvStreaming() #18
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @XLogShutdownWalRcv() #18
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @ResetInstallXLogFileSegmentActive() #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bt = load i32, ptr @recoveryTargetTimeLineGoal, align 4
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bv = call fastcc zeroext i1 @rescanLatestTimeLine(i32 noundef %i.be, i64 noundef %i.bf)
end_hunk_2
