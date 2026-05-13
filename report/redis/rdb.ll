inline.NumInlined: 264
inline.NumDeleted: 16
begin_hunk_0
@.str.54 = private unnamed_addr constant [42 x i8] c"Error reading double from module %s value\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"module-dummy-value\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"OOM in dictTryExpand %llu\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"Duplicate set members detected\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"Zset with NAN score detected\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"Duplicate zset fields detected\00", align 1
@hashDictType = external global %struct.dictType, align 8
@.str.60 = private unnamed_addr constant [23 x i8] c"Hash with dup elements\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"Duplicate hash fields detected\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"len == 0\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Hash failed loading minExpire\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"Hash read invalid minExpire value\00", align 1
@entryHashDictTypeWithHFE = external global %struct.dictType, align 8
@.str.65 = private unnamed_addr constant [24 x i8] c"failed reading hash TTL\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"invalid expireAt time: %llu\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"failed reading hash field\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"failed reading hash value\00", align 1
@hashFieldExpireBucketsType = external global %struct.EbucketsType, align 8
@.str.69 = private unnamed_addr constant [34 x i8] c"Quicklist integrity check failed.\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"Listpack integrity check failed.\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"Ziplist integrity check failed.\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"Short read of listpackex min expiration time.\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"Zipmap integrity check failed.\00", align 1
@.str.74 = private unnamed_addr constant [50 x i8] c"Hash zipmap with dup elements, or big length (%u)\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"List ziplist integrity check failed.\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"Intset integrity check failed.\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"Set listpack integrity check failed.\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"Zset ziplist integrity check failed.\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"Zset listpack integrity check failed.\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"Hash ziplist integrity check failed.\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"Hash listpack integrity check failed.\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"Unknown RDB encoding type %d\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"Stream listpacks len loading failed.\00", align 1
@.str.84 = private unnamed_addr constant [64 x i8] c"Stream master ID loading failed: invalid encoding or I/O error.\00", align 1
@.str.85 = private unnamed_addr constant [53 x i8] c"Stream node key entry is not the size of a stream ID\00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"Stream listpacks loading failed.\00", align 1
@.str.87 = private unnamed_addr constant [40 x i8] c"Stream listpack integrity check failed.\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"Empty listpack inside stream\00", align 1
@.str.89 = private unnamed_addr constant [36 x i8] c"Listpack re-added with existing key\00", align 1
@.str.90 = private unnamed_addr constant [39 x i8] c"Stream object metadata loading failed.\00", align 1
@.str.91 = private unnamed_addr constant [44 x i8] c"Stream length inconsistent with rax entries\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"Stream cgroup count loading failed.\00", align 1
@.str.93 = private unnamed_addr constant [50 x i8] c"Error reading the consumer group name from Stream\00", align 1
@.str.94 = private unnamed_addr constant [33 x i8] c"Stream cgroup ID loading failed.\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"Stream cgroup offset loading failed.\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"Duplicated consumer group name %s\00", align 1
@.str.97 = private unnamed_addr constant [32 x i8] c"Stream PEL size loading failed.\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"Stream PEL ID loading failed.\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"Stream PEL NACK loading failed.\00", align 1
@.str.100 = private unnamed_addr constant [58 x i8] c"Duplicated global PEL entry loading stream consumer group\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"Stream consumers num loading failed.\00", align 1
@.str.102 = private unnamed_addr constant [51 x i8] c"Error reading the consumer name from Stream group.\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"Duplicate stream consumer detected.\00", align 1
@.str.104 = private unnamed_addr constant [37 x i8] c"Stream short read reading seen time.\00", align 1
@.str.105 = private unnamed_addr constant [39 x i8] c"Stream short read reading active time.\00", align 1
@.str.106 = private unnamed_addr constant [40 x i8] c"Stream consumer PEL num loading failed.\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"Stream short read reading PEL streamID.\00", align 1
@.str.108 = private unnamed_addr constant [45 x i8] c"Consumer entry not found in group global PEL\00", align 1
@.str.109 = private unnamed_addr constant [63 x i8] c"Duplicated consumer PEL entry  loading a stream consumer group\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"Stream CG PEL entry without consumer\00", align 1
@.str.111 = private unnamed_addr constant [37 x i8] c"Stream IDMP duration loading failed.\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"Stream IDMP duration out of range\00", align 1
@.str.113 = private unnamed_addr constant [40 x i8] c"Stream IDMP max entries loading failed.\00", align 1
@.str.114 = private unnamed_addr constant [37 x i8] c"Stream IDMP max entries out of range\00", align 1
@.str.115 = private unnamed_addr constant [36 x i8] c"Stream IDMP entries loading failed.\00", align 1
@.str.116 = private unnamed_addr constant [34 x i8] c"Stream iids_added loading failed.\00", align 1
@.str.117 = private unnamed_addr constant [39 x i8] c"Stream iids_duplicates loading failed.\00", align 1
@.str.118 = private unnamed_addr constant [40 x i8] c"Pre-release module format not supported\00", align 1
@.str.119 = private unnamed_addr constant [21 x i8] c"Short read module id\00", align 1
@.str.120 = private unnamed_addr constant [77 x i8] c"The RDB file contains module data I can't load: no matching module type '%s'\00", align 1
@.str.121 = private unnamed_addr constant [115 x i8] c"The RDB file contains module data for the module '%s' that is not terminated by the proper module value EOF marker\00", align 1
@.str.122 = private unnamed_addr constant [159 x i8] c"The RDB file contains module data for the module type '%s', that the responsible module is not able to load. Check for modules log above for additional clues.\00", align 1
@.str.123 = private unnamed_addr constant [31 x i8] c"Failed loading library payload\00", align 1
@.str.124 = private unnamed_addr constant [28 x i8] c"Failed creating the library\00", align 1
@.str.125 = private unnamed_addr constant [29 x i8] c"Failed creating function, %s\00", align 1
@.str.127 = private unnamed_addr constant [44 x i8] c"Wrong signature trying to load DB from file\00", align 1
@.str.128 = private unnamed_addr constant [35 x i8] c"Can't handle RDB format version %d\00", align 1
@.str.129 = private unnamed_addr constant [103 x i8] c"FATAL: Data file was created with a Redis server configured to handle more than %d databases. Exiting\0A\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"RDB '%s': %s\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@.str.132 = private unnamed_addr constant [35 x i8] c"Loading RDB produced by version %s\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"RDB age %ld seconds\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"RDB memory usage when created %.2f Mb\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"aof-preamble\00", align 1
@.str.136 = private unnamed_addr constant [20 x i8] c"RDB has an AOF tail\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"RDB is base AOF\00", align 1
@.str.138 = private unnamed_addr constant [33 x i8] c"Unrecognized RDB AUX field: '%s'\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"bad when_opcode\00", align 1
@.str.140 = private unnamed_addr constant [76 x i8] c"The RDB file contains AUX module data I can't load: no matching module '%s'\00", align 1
@.str.141 = private unnamed_addr constant [87 x i8] c"The RDB file contains module AUX data, but the module '%s' doesn't seem to support it.\00", align 1
@.str.142 = private unnamed_addr constant [163 x i8] c"The RDB file contains module AUX data for the module type '%s', that the responsible module is not able to load. Check for modules log above for additional clues.\00", align 1
@.str.143 = private unnamed_addr constant [119 x i8] c"The RDB file contains module AUX data for the module '%s' that is not terminated by the proper module value EOF marker\00", align 1
@.str.144 = private unnamed_addr constant [43 x i8] c"Pre-release function format not supported.\00", align 1
@.str.145 = private unnamed_addr constant [27 x i8] c"Failed loading library, %s\00", align 1
@.str.146 = private unnamed_addr constant [51 x i8] c"DB %d resized: %lu key buckets, %lu expire buckets\00", align 1
@.str.147 = private unnamed_addr constant [37 x i8] c"rdbLoadObject skipping empty key: %s\00", align 1
@.str.148 = private unnamed_addr constant [62 x i8] c"server.repl_backlog != NULL && listLength(server.slaves) == 0\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.149 = private unnamed_addr constant [11 x i8] c"kv != NULL\00", align 1
@.str.150 = private unnamed_addr constant [37 x i8] c"RDB has duplicated key '%s' in DB %d\00", align 1
@.str.151 = private unnamed_addr constant [33 x i8] c"Duplicated key found in RDB file\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.153 = private unnamed_addr constant [63 x i8] c"RDB file was saved with checksum disabled: no check performed.\00", align 1
@.str.154 = private unnamed_addr constant [66 x i8] c"Wrong RDB checksum expected: (%llx) but got (%llx). Aborting now.\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"RDB CRC error\00", align 1
@.str.156 = private unnamed_addr constant [83 x i8] c"Done loading RDB, keys loaded: %lld, keys expired: %lld, empty keys skipped: %lld.\00", align 1
@.str.157 = private unnamed_addr constant [57 x i8] c"Done loading RDB, keys loaded: %lld, keys expired: %lld.\00", align 1
@.str.158 = private unnamed_addr constant [65 x i8] c"Short read or OOM loading DB. Unrecoverable error, aborting now.\00", align 1
@.str.159 = private unnamed_addr constant [32 x i8] c"Unexpected EOF reading RDB file\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.161 = private unnamed_addr constant [56 x i8] c"Fatal error: can't open the RDB file %s for reading: %s\00", align 1
@.str.162 = private unnamed_addr constant [24 x i8] c"Unknown RDB child type.\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"redis-rdb-to-slaves\00", align 1
@.str.164 = private unnamed_addr constant [49 x i8] c"Background RDB transfer started by pid %ld to %s\00", align 1
@.str.165 = private unnamed_addr constant [34 x i8] c"slot migration destination socket\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"replica socket\00", align 1
@.str.167 = private unnamed_addr constant [20 x i8] c"parent process pipe\00", align 1
@.str.168 = private unnamed_addr constant [62 x i8] c"Unrecoverable error creating server.rdb_pipe_read file event.\00", align 1
@.str.169 = private unnamed_addr constant [36 x i8] c"Background save already in progress\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@.str.171 = private unnamed_addr constant [28 x i8] c"Background saving scheduled\00", align 1
@.str.172 = private unnamed_addr constant [133 x i8] c"Another child process is active (AOF?): can't BGSAVE right now. Use BGSAVE SCHEDULE in order to schedule a BGSAVE whenever possible.\00", align 1
@.str.173 = private unnamed_addr constant [26 x i8] c"Background saving started\00", align 1
@__const.rdbPopulateSaveInfo.rsi_init = private unnamed_addr constant { i32, i32, [41 x i8], [7 x i8], i64 } { i32 -1, i32 0, [41 x i8] c"0000000000000000000000000000000000000000\00", [7 x i8] zeroinitializer, i64 -1 }, align 8
@.str.174 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.175 = private unnamed_addr constant [75 x i8] c"Failed opening the temp RDB file %s (in server root dir %s) for saving: %s\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"rdbSaveRio\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"fflush\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"fsync\00", align 1
@.str.179 = private unnamed_addr constant [45 x i8] c"Unable to reclaim cache after saving RDB: %s\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"fclose\00", align 1
@.str.181 = private unnamed_addr constant [48 x i8] c"Write error while saving DB to the disk(%s): %s\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"*redacted*\00", align 1
@.str.184 = private unnamed_addr constant [42 x i8] c"Background saving terminated with success\00", align 1
@.str.185 = private unnamed_addr constant [24 x i8] c"Background saving error\00", align 1
@.str.186 = private unnamed_addr constant [42 x i8] c"Background saving terminated by signal %d\00", align 1
@.str.187 = private unnamed_addr constant [21 x i8] c"rdb-unlink-temp-file\00", align 1
@.str.188 = private unnamed_addr constant [48 x i8] c"Background RDB transfer terminated with success\00", align 1
@.str.189 = private unnamed_addr constant [26 x i8] c"Background transfer error\00", align 1
@.str.190 = private unnamed_addr constant [44 x i8] c"Background transfer terminated by signal %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @rdbReportError(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 9 uses
  %i.b = alloca [2 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2504), align 8, !tbaa !13
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str, i64 noundef %i.c, i32 noundef %1) #20
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  %i.g = sub nsw i64 1024, %i.e
  %i.h = call i32 @vsnprintf(ptr noundef nonnull %i.f, i64 noundef %i.g, ptr noundef %2, ptr noundef nonnull %3) #20 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !47 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !48
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #20
  br label %bb.s

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.o = load i32, ptr @rdbCheckMode, align 4, !tbaa !9
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #20
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @rdbFileBeingLoaded, align 8, !tbaa !64 ; 2 uses
  %.not6 = icmp eq ptr %i.p, null
  br i1 %.not6, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.r = icmp sgt i32 %i.q, 3
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #20
  %.pre = load ptr, ptr @rdbFileBeingLoaded, align 8, !tbaa !64
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.s = phi ptr [ %i.p, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr @.str.2, ptr %i.b, align 16, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !64
  %i.u = call i32 @anetIsFifo(ptr noundef %i.s) #20
  %.not8 = icmp eq i32 %i.u, 0
  br i1 %.not8, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.v = call i32 @redis_check_rdb_main(i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef null) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %4 = load ptr, ptr %i.t, align 8, !tbaa !64
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.3, ptr noundef %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.s

bb.l:                                             ; preds = %bb.g
  %.not7 = icmp eq i32 %0, 0
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.x = icmp sgt i32 %i.w, 3                     ; 2 uses
  br i1 %.not7, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.x, label %.thread9, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #20
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  br i1 %i.x, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a) #20
  br label %bb.s

bb.q:                                             ; preds = %.thread, %bb.n, %bb.f
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !63
  %i.y = icmp sgt i32 %.pr, 3
  br i1 %i.y, label %.thread9, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.6) #20
  br label %.thread9

.thread9:                                         ; preds = %bb.m, %bb.q, %bb.r
  call void @exit(i32 noundef 1) #21
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.p, %bb.o, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @rdbCheckError(ptr noundef, ...) local_unnamed_addr #4

declare i32 @anetIsFifo(ptr noundef) local_unnamed_addr #4

declare i32 @redis_check_rdb_main(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @rdbWriteRaw(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %rioWrite.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %i.c = and i64 %i.b, 2
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.preheader.i, label %rioWrite.exit

.preheader.i:                                     ; preds = %bb.b
  %.not3136.i = icmp eq i64 %2, 0
  br i1 %.not3136.i, label %rioWrite.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.02538.i = phi i64 [ %2, %.lr.ph.i ], [ %i.r, %bb.f ] ; 3 uses
  %.02737.i = phi ptr [ %1, %.lr.ph.i ], [ %i.q, %bb.f ] ; 3 uses
  %i.h = load i64, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i = icmp eq i64 %i.h, 0
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %.02538.i)
  %i.j = select i1 %.not32.not.i, i64 %.02538.i, i64 %i.i ; 5 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %.not33.i = icmp eq ptr %i.k, null
  br i1 %.not33.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.k(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.j) #20, !inline_history !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.m = tail call i64 %i.l(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.j) #20, !inline_history !69
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !65
  %i.p = or i64 %i.o, 2
  store i64 %i.p, ptr %i.a, align 8, !tbaa !65
  br label %rioWrite.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.02737.i, i64 %i.j
  %i.r = sub i64 %.02538.i, %i.j                  ; 2 uses
  %i.s = load i64, ptr %i.g, align 8, !tbaa !71
  %i.t = add i64 %i.s, %i.j
  store i64 %i.t, ptr %i.g, align 8, !tbaa !71
  %.not31.i = icmp eq i64 %i.r, 0
  br i1 %.not31.i, label %rioWrite.exit, label %bb.c

rioWrite.exit:                                    ; preds = %bb.f, %.thread.i, %bb.b, %bb.a, %.preheader.i
  %.0 = phi i64 [ %2, %bb.a ], [ -1, %.thread.i ], [ 0, %.preheader.i ], [ -1, %bb.b ], [ %2, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @rdbSaveType(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !72
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %rdbWriteRaw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65
  %i.d = and i64 %i.c, 2
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %rdbWriteRaw.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.h, null
  br i1 %.not33.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void %i.h(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #20, !inline_history !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.j = call i64 %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #20, !inline_history !73
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.thread.i.i, label %rdbWriteRaw.exit.loopexit

.thread.i.i:                                      ; preds = %bb.e
  %i.l = load i64, ptr %i.b, align 8, !tbaa !65
  %i.m = or i64 %i.l, 2
  store i64 %i.m, ptr %i.b, align 8, !tbaa !65
  br label %rdbWriteRaw.exit

rdbWriteRaw.exit.loopexit:                        ; preds = %bb.e
  %i.n = load i64, ptr %i.g, align 8, !tbaa !71
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.g, align 8, !tbaa !71
  br label %rdbWriteRaw.exit

rdbWriteRaw.exit:                                 ; preds = %rdbWriteRaw.exit.loopexit, %bb.a, %bb.b, %.thread.i.i
  %.0.i = phi i32 [ 1, %bb.a ], [ -1, %.thread.i.i ], [ -1, %bb.b ], [ 1, %rdbWriteRaw.exit.loopexit ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @rdbLoadType(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !74
end_hunk_0
begin_hunk_1_@rioRead:bb.a
.loopexit:                                        ; preds = %bb.e, %.preheader, %.thread, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ 0, %.thread ], [ 1, %.preheader ], [ 1, %bb.e ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @rdbLoadTime(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.preheader.i
  %.02538.i = phi i64 [ 4, %.preheader.i ], [ %i.r, %bb.e ] ; 3 uses
  %.02737.i = phi ptr [ %i.a, %.preheader.i ], [ %i.q, %bb.e ] ; 3 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i = icmp eq i64 %i.h, 0
  %i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %.02538.i)
  %i.j = select i1 %.not32.not.i, i64 %.02538.i, i64 %i.i ; 5 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !74
  %i.l = call i64 %i.k(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.j) #20, !inline_history !75
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.n = load i64, ptr %i.b, align 8, !tbaa !65
  %i.o = or i64 %i.n, 1
  store i64 %i.o, ptr %i.b, align 8, !tbaa !65
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !68   ; 2 uses
  %.not33.i = icmp eq ptr %i.p, null
  br i1 %.not33.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void %i.p(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.j) #20, !inline_history !75
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.02737.i, i64 %i.j
  %i.r = sub i64 %.02538.i, %i.j                  ; 2 uses
  %i.s = load i64, ptr %i.g, align 8, !tbaa !71
  %i.t = add i64 %i.s, %i.j
  store i64 %i.t, ptr %i.g, align 8, !tbaa !71
  %.not31.i = icmp eq i64 %i.r, 0
  br i1 %.not31.i, label %rioRead.exit, label %bb.b

rioRead.exit:                                     ; preds = %bb.e
  %i.u = load i32, ptr %i.a, align 4
  %i.v = sext i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.a, %rioRead.exit
  %i.w = phi i64 [ %i.v, %rioRead.exit ], [ -1, %bb.a ], [ -1, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %i.w
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, 9) i64 @rdbSaveMillisecondTime(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %1, ptr %i.a, align 8, !tbaa !76
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %rdbWriteRaw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65
  %i.d = and i64 %i.c, 2
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %rdbWriteRaw.exit

.preheader.i.i:                                   ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.preheader.i.i
  %.02538.i.i = phi i64 [ 8, %.preheader.i.i ], [ %i.s, %bb.f ] ; 3 uses
  %.02737.i.i = phi ptr [ %i.a, %.preheader.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i.i = icmp eq i64 %i.i, 0
  %i.j = call i64 @llvm.umin.i64(i64 %i.i, i64 %.02538.i.i)
  %i.k = select i1 %.not32.not.i.i, i64 %.02538.i.i, i64 %i.j ; 5 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !68   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.l, null
  br i1 %.not33.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void %i.l(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.k) #20, !inline_history !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.n = call i64 %i.m(ptr noundef nonnull %0, ptr noundef %.02737.i.i, i64 noundef %i.k) #20, !inline_history !73
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %bb.e
  %i.p = load i64, ptr %i.b, align 8, !tbaa !65
  %i.q = or i64 %i.p, 2
  store i64 %i.q, ptr %i.b, align 8, !tbaa !65
  br label %rdbWriteRaw.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.02737.i.i, i64 %i.k
  %i.s = sub i64 %.02538.i.i, %i.k                ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !tbaa !71
  %i.u = add i64 %i.t, %i.k
  store i64 %i.u, ptr %i.h, align 8, !tbaa !71
  %.not31.i.i = icmp eq i64 %i.s, 0
  br i1 %.not31.i.i, label %rdbWriteRaw.exit, label %bb.c

rdbWriteRaw.exit:                                 ; preds = %bb.f, %bb.a, %bb.b, %.thread.i.i
  %.0.i = phi i64 [ 8, %bb.a ], [ -1, %.thread.i.i ], [ -1, %bb.b ], [ 8, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rdbLoadMillisecondTime(ptr noundef %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.preheader.i
  %.02538.i = phi i64 [ 8, %.preheader.i ], [ %i.r, %bb.e ] ; 3 uses
  %.02737.i = phi ptr [ %i.a, %.preheader.i ], [ %i.q, %bb.e ] ; 3 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not32.not.i = icmp eq i64 %i.h, 0
  %i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %.02538.i)
  %i.j = select i1 %.not32.not.i, i64 %.02538.i, i64 %i.i ; 5 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !74
  %i.l = call i64 %i.k(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.j) #20, !inline_history !75
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.n = load i64, ptr %i.b, align 8, !tbaa !65
  %i.o = or i64 %i.n, 1
  store i64 %i.o, ptr %i.b, align 8, !tbaa !65
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !68   ; 2 uses
  %.not33.i = icmp eq ptr %i.p, null
  br i1 %.not33.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void %i.p(ptr noundef nonnull %0, ptr noundef %.02737.i, i64 noundef %i.j) #20, !inline_history !75
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.02737.i, i64 %i.j
  %i.r = sub i64 %.02538.i, %i.j                  ; 2 uses
  %i.s = load i64, ptr %i.g, align 8, !tbaa !71
  %i.t = add i64 %i.s, %i.j
  store i64 %i.t, ptr %i.g, align 8, !tbaa !71
  %.not31.i = icmp eq i64 %i.r, 0
  br i1 %.not31.i, label %rioRead.exit, label %bb.b

rioRead.exit:                                     ; preds = %bb.e
  %i.u = load i64, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.a, %rioRead.exit
  %i.v = phi i64 [ %i.u, %rioRead.exit ], [ 9223372036854775807, %bb.a ], [ 9223372036854775807, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 10) i32 @rdbSaveLen(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 14 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.d = icmp ult i64 %1, 64
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw nsw i64 %1 to i8
  store i8 %i.e, ptr %i.b, align 1, !tbaa !72
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %rdbWriteRaw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65
  %i.h = and i64 %i.g, 2
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.d, label %rdbWriteRaw.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.l, null
  br i1 %.not33.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void %i.l(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #20, !inline_history !73
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.n = call i64 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #20, !inline_history !73
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.thread.i.i, label %rdbWriteRaw.exit.loopexit

.thread.i.i:                                      ; preds = %bb.f
  %i.p = load i64, ptr %i.f, align 8, !tbaa !65
  %i.q = or i64 %i.p, 2
  store i64 %i.q, ptr %i.f, align 8, !tbaa !65
  br label %rdbWriteRaw.exit

bb.g:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %1, 16384
  br i1 %i.r, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i64 %1, 8
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = or disjoint i8 %i.t, 64
  store i8 %i.u, ptr %i.b, align 1, !tbaa !72
  %i.v = trunc i64 %1 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !72
  %.not.i13 = icmp eq ptr %0, null
  br i1 %.not.i13, label %rdbWriteRaw.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !65
  %i.z = and i64 %i.y, 2
  %.not.i.i14 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i14, label %.preheader.i.i16, label %rdbWriteRaw.exit

.preheader.i.i16:                                 ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.preheader.i.i16
  %.02538.i.i17 = phi i64 [ 2, %.preheader.i.i16 ], [ %i.ao, %bb.m ] ; 3 uses
  %.02737.i.i18 = phi ptr [ %i.b, %.preheader.i.i16 ], [ %i.an, %bb.m ] ; 3 uses
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i19 = icmp eq i64 %i.ae, 0
  %i.af = call i64 @llvm.umin.i64(i64 %i.ae, i64 %.02538.i.i17)
  %i.ag = select i1 %.not32.not.i.i19, i64 %.02538.i.i17, i64 %i.af ; 5 uses
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i20 = icmp eq ptr %i.ah, null
  br i1 %.not33.i.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void %i.ah(ptr noundef nonnull %0, ptr noundef %.02737.i.i18, i64 noundef %i.ag) #20, !inline_history !73
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.aj = call i64 %i.ai(ptr noundef nonnull %0, ptr noundef %.02737.i.i18, i64 noundef %i.ag) #20, !inline_history !73
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.thread.i.i22, label %bb.m

.thread.i.i22:                                    ; preds = %bb.l
  %i.al = load i64, ptr %i.x, align 8, !tbaa !65
  %i.am = or i64 %i.al, 2
  store i64 %i.am, ptr %i.x, align 8, !tbaa !65
  br label %rdbWriteRaw.exit

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.02737.i.i18, i64 %i.ag
  %i.ao = sub i64 %.02538.i.i17, %i.ag            ; 2 uses
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !71
  %i.aq = add i64 %i.ap, %i.ag
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !71
  %.not31.i.i21 = icmp eq i64 %i.ao, 0
  br i1 %.not31.i.i21, label %rdbWriteRaw.exit, label %bb.j

bb.n:                                             ; preds = %bb.g
  %i.ar = icmp ult i64 %1, 4294967296
  %.not.i24 = icmp eq ptr %0, null                ; 2 uses
  br i1 %i.ar, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  store i8 -128, ptr %i.b, align 1, !tbaa !72
  br i1 %.not.i24, label %rdbWriteRaw.exit34.thread71, label %bb.p

rdbWriteRaw.exit34.thread71:                      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  br label %rdbWriteRaw.exit45

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !65
  %i.au = and i64 %i.at, 2
  %.not.i.i25 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i25, label %bb.q, label %rdbWriteRaw.exit

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i31 = icmp eq ptr %i.az, null
  br i1 %.not33.i.i31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.az(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #20, !inline_history !73
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !70
  %i.bb = call i64 %i.ba(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #20, !inline_history !73
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.thread.i.i33, label %bb.t

.thread.i.i33:                                    ; preds = %bb.s
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !65
  %i.be = or i64 %i.bd, 2
  store i64 %i.be, ptr %i.as, align 8, !tbaa !65
  br label %rdbWriteRaw.exit

bb.t:                                             ; preds = %bb.s
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !71
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %2 = load i64, ptr %i.a, align 8, !tbaa !76
  %i.bh = trunc i64 %2 to i32
  %i.bi = call noundef i32 @llvm.bswap.i32(i32 %i.bh)
  store i32 %i.bi, ptr %i.c, align 4, !tbaa !9
  %i.bj = load i64, ptr %i.as, align 8, !tbaa !65
  %i.bk = and i64 %i.bj, 2
  %.not.i.i36 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i36, label %.preheader.i.i38, label %rdbWriteRaw.exit45.thread

.preheader.i.i38:                                 ; preds = %bb.t, %bb.w
  %.02538.i.i39 = phi i64 [ %i.bv, %bb.w ], [ 4, %bb.t ] ; 3 uses
  %.02737.i.i40 = phi ptr [ %i.bu, %bb.w ], [ %i.c, %bb.t ] ; 3 uses
  %i.bl = load i64, ptr %i.av, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i41 = icmp eq i64 %i.bl, 0
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bl, i64 %.02538.i.i39)
  %i.bn = select i1 %.not32.not.i.i41, i64 %.02538.i.i39, i64 %i.bm ; 5 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i42 = icmp eq ptr %i.bo, null
  br i1 %.not33.i.i42, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.i.i38
  call void %i.bo(ptr noundef nonnull %0, ptr noundef %.02737.i.i40, i64 noundef %i.bn) #20, !inline_history !73
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader.i.i38
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !70
  %i.bq = call i64 %i.bp(ptr noundef nonnull %0, ptr noundef %.02737.i.i40, i64 noundef %i.bn) #20, !inline_history !73
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.thread.i.i44, label %bb.w

.thread.i.i44:                                    ; preds = %bb.v
  %i.bs = load i64, ptr %i.as, align 8, !tbaa !65
  %i.bt = or i64 %i.bs, 2
  store i64 %i.bt, ptr %i.as, align 8, !tbaa !65
  br label %rdbWriteRaw.exit45.thread

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %.02737.i.i40, i64 %i.bn
  %i.bv = sub i64 %.02538.i.i39, %i.bn            ; 2 uses
  %i.bw = load i64, ptr %i.ay, align 8, !tbaa !71
  %i.bx = add i64 %i.bw, %i.bn
  store i64 %i.bx, ptr %i.ay, align 8, !tbaa !71
  %.not31.i.i43 = icmp eq i64 %i.bv, 0
  br i1 %.not31.i.i43, label %rdbWriteRaw.exit45, label %.preheader.i.i38

rdbWriteRaw.exit45.thread:                        ; preds = %.thread.i.i44, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %rdbWriteRaw.exit

rdbWriteRaw.exit45:                               ; preds = %bb.w, %rdbWriteRaw.exit34.thread71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %rdbWriteRaw.exit

bb.x:                                             ; preds = %bb.n
  store i8 -127, ptr %i.b, align 1, !tbaa !72
  br i1 %.not.i24, label %rdbWriteRaw.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !65
  %i.ca = and i64 %i.bz, 2
  %.not.i.i47 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i47, label %bb.z, label %rdbWriteRaw.exit

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i53 = icmp eq ptr %i.cf, null
  br i1 %.not33.i.i53, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void %i.cf(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #20, !inline_history !73
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !70
  %i.ch = call i64 %i.cg(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #20, !inline_history !73
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.thread.i.i55, label %bb.ac

.thread.i.i55:                                    ; preds = %bb.ab
  %i.cj = load i64, ptr %i.by, align 8, !tbaa !65
  %i.ck = or i64 %i.cj, 2
  store i64 %i.ck, ptr %i.by, align 8, !tbaa !65
  br label %rdbWriteRaw.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.ce, align 8, !tbaa !71
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !71
  %3 = load i64, ptr %i.a, align 8, !tbaa !76
  %i.cn = call i64 @llvm.bswap.i64(i64 %3)
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !76
  %i.co = load i64, ptr %i.by, align 8, !tbaa !65
  %i.cp = and i64 %i.co, 2
  %.not.i.i58 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i58, label %.preheader.i.i60, label %rdbWriteRaw.exit

.preheader.i.i60:                                 ; preds = %bb.ac, %bb.af
  %.02538.i.i61 = phi i64 [ %i.da, %bb.af ], [ 8, %bb.ac ] ; 3 uses
  %.02737.i.i62 = phi ptr [ %i.cz, %bb.af ], [ %i.a, %bb.ac ] ; 3 uses
  %i.cq = load i64, ptr %i.cb, align 8, !tbaa !67 ; 2 uses
  %.not32.not.i.i63 = icmp eq i64 %i.cq, 0
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cq, i64 %.02538.i.i61)
  %i.cs = select i1 %.not32.not.i.i63, i64 %.02538.i.i61, i64 %i.cr ; 5 uses
  %i.ct = load ptr, ptr %i.cc, align 8, !tbaa !68 ; 2 uses
  %.not33.i.i64 = icmp eq ptr %i.ct, null
  br i1 %.not33.i.i64, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.preheader.i.i60
  call void %i.ct(ptr noundef nonnull %0, ptr noundef %.02737.i.i62, i64 noundef %i.cs) #20, !inline_history !73
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.preheader.i.i60
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !70
  %i.cv = call i64 %i.cu(ptr noundef nonnull %0, ptr noundef %.02737.i.i62, i64 noundef %i.cs) #20, !inline_history !73
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.thread.i.i66, label %bb.af

.thread.i.i66:                                    ; preds = %bb.ae
  %i.cx = load i64, ptr %i.by, align 8, !tbaa !65
  %i.cy = or i64 %i.cx, 2
  store i64 %i.cy, ptr %i.by, align 8, !tbaa !65
  br label %rdbWriteRaw.exit

bb.af:                                            ; preds = %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %.02737.i.i62, i64 %i.cs
  %i.da = sub i64 %.02538.i.i61, %i.cs            ; 2 uses
  %i.db = load i64, ptr %i.ce, align 8, !tbaa !71
  %i.dc = add i64 %i.db, %i.cs
  store i64 %i.dc, ptr %i.ce, align 8, !tbaa !71
  %.not31.i.i65 = icmp eq i64 %i.da, 0
  br i1 %.not31.i.i65, label %rdbWriteRaw.exit, label %.preheader.i.i60

rdbWriteRaw.exit.loopexit:                        ; preds = %bb.f
  %i.dd = load i64, ptr %i.k, align 8, !tbaa !71
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.k, align 8, !tbaa !71
  br label %rdbWriteRaw.exit

rdbWriteRaw.exit:                                 ; preds = %bb.af, %bb.m, %bb.x, %rdbWriteRaw.exit.loopexit, %bb.ac, %.thread.i.i66, %bb.y, %.thread.i.i55, %bb.p, %.thread.i.i33, %bb.i, %.thread.i.i22, %bb.c, %.thread.i.i, %bb.b, %bb.h, %rdbWriteRaw.exit45, %rdbWriteRaw.exit45.thread
  %.110 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ 9, %bb.x ], [ -1, %bb.c ], [ -1, %rdbWriteRaw.exit45.thread ], [ -1, %bb.i ], [ -1, %bb.ac ], [ 1, %rdbWriteRaw.exit.loopexit ], [ 5, %rdbWriteRaw.exit45 ], [ 1, %bb.b ], [ 2, %bb.h ], [ 2, %bb.m ], [ -1, %.thread.i.i ], [ -1, %.thread.i.i22 ], [ -1, %.thread.i.i33 ], [ -1, %.thread.i.i55 ], [ -1, %.thread.i.i66 ], [ 9, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i32 %.110
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadLenByRef(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !65
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %rioRead.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !74
  %i.k = call i64 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #20, !inline_history !75
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.m = load i64, ptr %i.d, align 8, !tbaa !65
  %i.n = or i64 %i.m, 1
  store i64 %i.n, ptr %i.d, align 8, !tbaa !65
  br label %rioRead.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %rioRead.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.o(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #20, !inline_history !75
  br label %rioRead.exit

rioRead.exit:                                     ; preds = %bb.e, %bb.f
  %i.p = load i64, ptr %i.i, align 8, !tbaa !71
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.i, align 8, !tbaa !71
  %i.r = load i8, ptr %i.a, align 1, !tbaa !72    ; 4 uses
  %i.s = lshr i8 %i.r, 6
  switch i8 %i.s, label %default.unreachable [
    i8 3, label %bb.g
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.o
  ]

bb.g:                                             ; preds = %rioRead.exit
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %1, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i64
  store i64 %i.u, ptr %2, align 8, !tbaa !76
  br label %rioRead.exit.thread

bb.j:                                             ; preds = %rioRead.exit
  %i.v = zext nneg i8 %i.r to i64
  store i64 %i.v, ptr %2, align 8, !tbaa !76
  br label %rioRead.exit.thread

bb.k:                                             ; preds = %rioRead.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !65
  %i.y = and i64 %i.x, 1
  %.not.i30 = icmp eq i64 %i.y, 0
  br i1 %.not.i30, label %bb.l, label %rioRead.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %0, align 8, !tbaa !74
  %i.aa = call i64 %i.z(ptr noundef nonnull %0, ptr noundef nonnull %i.w, i64 noundef 1) #20, !inline_history !75
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.thread.i38, label %bb.m

.thread.i38:                                      ; preds = %bb.l
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !65
  %i.ad = or i64 %i.ac, 1
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !65
  br label %rioRead.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !68  ; 2 uses
  %.not33.i36 = icmp eq ptr %i.ae, null
  br i1 %.not33.i36, label %rioRead.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void %i.ae(ptr noundef nonnull %0, ptr noundef nonnull %i.w, i64 noundef 1) #20, !inline_history !75
  br label %rioRead.exit39

rioRead.exit39:                                   ; preds = %bb.m, %bb.n
  %i.af = load i64, ptr %i.i, align 8, !tbaa !71
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !71
  %i.ah = load i8, ptr %i.a, align 1, !tbaa !72
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = load i8, ptr %i.w, align 1, !tbaa !72
  %i.am = zext i8 %i.al to i64
  %i.an = or disjoint i64 %i.ak, %i.am
  store i64 %i.an, ptr %2, align 8, !tbaa !76
  br label %rioRead.exit.thread

default.unreachable:                              ; preds = %rioRead.exit
  unreachable

bb.o:                                             ; preds = %rioRead.exit
  switch i8 %i.r, label %bb.x [
    i8 -128, label %bb.p
    i8 -127, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !65
  %i.ap = and i64 %i.ao, 1
  %.not.i40 = icmp eq i64 %i.ap, 0
  br i1 %.not.i40, label %.preheader.i42, label %.critedge

.preheader.i42:                                   ; preds = %bb.p, %bb.s
  %.02538.i43 = phi i64 [ %i.ba, %bb.s ], [ 4, %bb.p ] ; 3 uses
  %.02737.i44 = phi ptr [ %i.az, %bb.s ], [ %i.b, %bb.p ] ; 3 uses
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %.not32.not.i45 = icmp eq i64 %i.aq, 0
  %i.ar = call i64 @llvm.umin.i64(i64 %i.aq, i64 %.02538.i43)
  %i.as = select i1 %.not32.not.i45, i64 %.02538.i43, i64 %i.ar ; 5 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !74
  %i.au = call i64 %i.at(ptr noundef nonnull %0, ptr noundef %.02737.i44, i64 noundef %i.as) #20, !inline_history !75
end_hunk_1
