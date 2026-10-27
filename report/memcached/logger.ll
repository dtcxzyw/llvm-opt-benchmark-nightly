Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/logger?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.16 = private unnamed_addr constant [107 x i8] c"type=compact_read_end id=%lu offset=%llu rescues=%lu rescues_realloc=%lu lost=%lu lost_oom=%lu skipped=%lu\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"type=compact_end id=%lu\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"type=compact_fraginfo ratio=%.2f bytes=%lu\00", align 1
@default_entries = internal constant [18 x { i32, i16, [2 x i8], ptr, ptr, ptr }] [{ i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 512, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.8 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 64, [2 x i8] zeroinitializer, ptr @_logger_log_evictions, ptr @_logger_parse_ee, ptr null }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 4, [2 x i8] zeroinitializer, ptr @_logger_log_item_get, ptr @_logger_parse_ige, ptr null }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 8, [2 x i8] zeroinitializer, ptr @_logger_log_item_store, ptr @_logger_parse_ise, ptr null }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 2, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.9 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 2, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.10 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 32, [2 x i8] zeroinitializer, ptr @_logger_log_conn_event, ptr @_logger_parse_cne, ptr null }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 32, [2 x i8] zeroinitializer, ptr @_logger_log_conn_event, ptr @_logger_parse_cce, ptr null }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 32, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.11 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 32, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.12 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 8192, [2 x i8] zeroinitializer, ptr @_logger_log_item_deleted, ptr @_logger_parse_ide, ptr null }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 64, [2 x i8] zeroinitializer, ptr @_logger_log_ext_write, ptr @_logger_parse_extw, ptr null }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 2, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.13 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 2, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.14 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 2, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.15 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 2, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.16 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 2, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.17 }, { i32, i16, [2 x i8], ptr, ptr, ptr } { i32 512, i16 2, [2 x i8] zeroinitializer, ptr @_logger_log_text, ptr @_logger_parse_text, ptr @.str.18 }], align 16
@.str.20 = private unnamed_addr constant [54 x i8] c"LOGGER: Failed to vsnprintf a text entry: (total) %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"ts=%lld.%d gid=%llu %s\0A\00", align 1
@current_time = external global i32, align 4
@.str.22 = private unnamed_addr constant [83 x i8] c"ts=%lld.%d gid=%llu type=eviction key=%s fetch=%s ttl=%lld la=%d clsid=%u size=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"not_found\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"flushed\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"expired\00", align 1
@__const._logger_parse_ige.was_found_map = private unnamed_addr constant [4 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 16
@.str.29 = private unnamed_addr constant [76 x i8] c"ts=%lld.%d gid=%llu type=item_get key=%s status=%s clsid=%u cfd=%d size=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"not_stored\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"stored\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"too_large\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"no_memory\00", align 1
@__const._logger_parse_ise.status_map = private unnamed_addr constant [6 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.25, ptr @.str.34, ptr @.str.35], align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"cas\00", align 1
@__const._logger_parse_ise.cmd_map = private unnamed_addr constant [9 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.40, ptr @.str.41], align 16
@.str.43 = private unnamed_addr constant [92 x i8] c"ts=%lld.%d gid=%llu type=item_store key=%s status=%s cmd=%s ttl=%u clsid=%u cfd=%d size=%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.47 = private unnamed_addr constant [72 x i8] c"ts=%lld.%d gid=%llu type=conn_new rip=%s rport=%hu transport=%s cfd=%d\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@__const._logger_parse_cce.transport_map = private unnamed_addr constant [3 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46], align 16
@.str.49 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"idle_timeout\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@__const._logger_parse_cce.reason_map = private unnamed_addr constant [4 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], align 16
@.str.53 = private unnamed_addr constant [84 x i8] c"ts=%lld.%d gid=%llu type=conn_close rip=%s rport=%hu transport=%s reason=%s cfd=%d\0A\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@__const._logger_parse_ide.cmd_map = private unnamed_addr constant [3 x ptr] [ptr @.str.36, ptr @.str.54, ptr @.str.55], align 16
@.str.56 = private unnamed_addr constant [63 x i8] c"ts=%d.%d gid=%llu type=deleted key=%s cmd=%s clsid=%u size=%d\0A\00", align 1
@.str.57 = private unnamed_addr constant [85 x i8] c"ts=%lld.%d gid=%llu type=extwrite key=%s fetch=%s ttl=%lld la=%d clsid=%u bucket=%u\0A\00", align 1
@logger_count = internal unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local i64 @logger_get_gid() local_unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw add ptr @logger_gid, i64 1 seq_cst, align 8
  %i.b = add i64 %i.a, 1
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @logger_set_gid(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw add ptr @logger_gid, i64 %0 seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @logger_init() local_unnamed_addr #1 {
bb.a:
  store ptr null, ptr @logger_stack_head, align 8, !tbaa !14
  store ptr null, ptr @logger_stack_tail, align 8, !tbaa !14
  %i.a = tail call i32 @pthread_key_create(ptr noundef nonnull @logger_key, ptr noundef null) #18 ; 0 uses
  store volatile i32 1, ptr @do_run_logger_thread, align 4, !tbaa !15
  %i.b = tail call i32 @pthread_create(ptr noundef nonnull @logger_tid, ptr noundef null, ptr noundef nonnull @logger_thread, ptr noundef null) #18 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.d = tail call ptr @strerror(i32 noundef %i.b) #18
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef %i.d) #19 ; 0 uses
  tail call void @abort() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr @logger_tid, align 8, !tbaa !19
  tail call void @thread_setname(i64 noundef %i.f, ptr noundef nonnull @.str.3) #18
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @logger_stop() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @logger_stack_lock) #18 ; 0 uses
  store volatile i32 0, ptr @do_run_logger_thread, align 4, !tbaa !15
  %i.b = tail call i32 @pthread_cond_signal(ptr noundef nonnull @logger_stack_cond) #18 ; 0 uses
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @logger_stack_lock) #18 ; 0 uses
  %i.d = load i64, ptr @logger_tid, align 8, !tbaa !19
  %i.e = tail call i32 @pthread_join(i64 noundef %i.d, ptr noundef null) #18 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @logger_create() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #21 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 252), align 4, !tbaa !62
  %i.d = tail call ptr @bipbuf_new(i32 noundef %i.c) #18 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.d, ptr %i.e, align 8, !tbaa !28
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #18
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr @default_entries, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.h, ptr noundef null) #18 ; 0 uses
  %i.j = load i32, ptr @logger_key, align 4, !tbaa !15
  %i.k = tail call i32 @pthread_setspecific(i32 noundef %i.j, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @logger_stack_lock) #18 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !63
  %i.m = load ptr, ptr @logger_stack_head, align 8, !tbaa !14 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.a, ptr %i.m, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.a, ptr @logger_stack_head, align 8, !tbaa !14
  %i.o = load ptr, ptr @logger_stack_tail, align 8, !tbaa !14
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %logger_link_q.exit

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr @logger_stack_tail, align 8, !tbaa !14
  br label %logger_link_q.exit

logger_link_q.exit:                               ; preds = %bb.f, %bb.g
  %i.q = load i32, ptr @logger_count, align 4, !tbaa !15
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @logger_count, align 4, !tbaa !15
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @logger_stack_lock) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %logger_link_q.exit, %bb.c
  %.0 = phi ptr [ %i.a, %logger_link_q.exit ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @bipbuf_new(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @logger_log(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #1 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #18 ; 0 uses
  %i.j = add i32 %i.g, 40
  %i.k = tail call ptr @bipbuf_request(ptr noundef %i.b, i32 noundef %i.j) #18 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !65
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !65
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #18 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store i32 %1, ptr %i.k, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i8 0, ptr %i.q, align 4, !tbaa !32
  %i.r = atomicrmw add ptr @logger_gid, i64 1 seq_cst, align 8
  %i.s = add i64 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  store i16 %i.v, ptr %i.w, align 2, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.y = tail call i32 @gettimeofday(ptr noundef nonnull %i.x, ptr noundef null) #18 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  call void %i.aa(ptr noundef nonnull %i.k, ptr noundef nonnull %i.f, ptr noundef %2, ptr noundef nonnull %3) #18
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !15
  %i.ad = add i32 %i.ac, 40
  %i.ae = load i8, ptr %i.q, align 4, !tbaa !32
  %i.af = zext i8 %i.ae to i32
  %i.ag = add i32 %i.ad, %i.af
  %i.ah = call i32 @bipbuf_push(ptr noundef %i.b, i32 noundef %i.ag) #18
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 43, i64 1, ptr %i.aj) #22 ; 0 uses
  %4 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #18 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !68
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !68
  %5 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

declare ptr @bipbuf_request(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare i32 @bipbuf_push(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @logger_add_watcher(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @logger_stack_lock) #18 ; 0 uses
  %i.b = load i32, ptr @watcher_count, align 4, !tbaa !15
  %i.c = icmp sgt i32 %i.b, 19
  br i1 %i.c, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.d = load ptr, ptr @watchers, align 16, !tbaa !34
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 8), align 8, !tbaa !34
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 16), align 16, !tbaa !34
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 24), align 8, !tbaa !34
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 32), align 16, !tbaa !34
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 40), align 8, !tbaa !34
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 48), align 16, !tbaa !34
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.b, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 56), align 8, !tbaa !34
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 64), align 16, !tbaa !34
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 72), align 8, !tbaa !34
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.b, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 80), align 16, !tbaa !34
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 88), align 8, !tbaa !34
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 96), align 16, !tbaa !34
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.b, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 104), align 8, !tbaa !34
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.b, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 112), align 16, !tbaa !34
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.b, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 120), align 8, !tbaa !34
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.b, label %.preheader.16

.preheader.16:                                    ; preds = %.preheader.15
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 128), align 16, !tbaa !34
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.b, label %.preheader.17

.preheader.17:                                    ; preds = %.preheader.16
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 136), align 8, !tbaa !34
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.b, label %.preheader.18

.preheader.18:                                    ; preds = %.preheader.17
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 144), align 16, !tbaa !34
  %i.ao = icmp eq ptr %i.an, null
  %spec.select = select i1 %i.ao, i32 18, i32 19
  br label %bb.b

bb.b:                                             ; preds = %.preheader.18, %.preheader.17, %.preheader.16, %.preheader.15, %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader.preheader ], [ 14, %.preheader.14 ], [ 1, %.preheader.1 ], [ %spec.select, %.preheader.18 ], [ 2, %.preheader.2 ], [ 10, %.preheader.10 ], [ 3, %.preheader.3 ], [ 17, %.preheader.17 ], [ 4, %.preheader.4 ], [ 12, %.preheader.12 ], [ 5, %.preheader.5 ], [ 16, %.preheader.16 ], [ 6, %.preheader.6 ], [ 11, %.preheader.11 ], [ 7, %.preheader.7 ], [ 15, %.preheader.15 ], [ 8, %.preheader.8 ], [ 13, %.preheader.13 ], [ 9, %.preheader.9 ] ; 2 uses
  %i.ap = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #21 ; 10 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.ap, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %1, ptr %i.ar, align 8, !tbaa !37
  %i.as = icmp ne i32 %1, 0
  %i.at = icmp ne ptr %0, null
  %or.cond.not = or i1 %i.at, %i.as
  %spec.select30 = zext i1 %or.cond.not to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  store i32 %spec.select30, ptr %i.au, align 4, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 %.0.lcssa, ptr %i.av, align 4, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i16 %2, ptr %i.aw, align 8, !tbaa !40
  %i.ax = atomicrmw add ptr @logger_gid, i64 1 seq_cst, align 8
  %i.ay = add i64 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !41
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 248), align 8, !tbaa !69
  %i.bb = tail call ptr @bipbuf_new(i32 noundef %i.ba) #18 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !42
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.ap) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.be = tail call i32 @bipbuf_offer(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.1, i32 noundef 4) #18 ; 0 uses
  %i.bf = zext nneg i32 %.0.lcssa to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @watchers, i64 %i.bf
  store ptr %i.ap, ptr %i.bg, align 8, !tbaa !34
  %i.bh = load i32, ptr @watcher_count, align 4, !tbaa !15
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr @watcher_count, align 4, !tbaa !15
  tail call fastcc void @logger_set_flags()
  %i.bj = tail call i32 @pthread_cond_signal(ptr noundef nonnull @logger_stack_cond) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.024 = phi i32 [ 1, %bb.e ], [ 0, %bb.a ], [ 2, %bb.d ], [ 2, %bb.b ]
  %i.bk = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @logger_stack_lock) #18 ; 0 uses
  ret i32 %.024
}

declare i32 @bipbuf_offer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @logger_set_flags() unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @watchers, align 16, !tbaa !34 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load i16, ptr %i.c, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i16 [ %i.d, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 8), align 8, !tbaa !34 ; 2 uses
end_hunk_0
