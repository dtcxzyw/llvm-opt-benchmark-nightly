inline.NumInlined: 38
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uv__queue = type { ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.uv_thread_options_s = type { i32, i64 }
%union.sem_t = type { i64, [24 x i8] }

@nthreads = internal unnamed_addr global i32 0, align 4
@exit_message = internal global %struct.uv__queue zeroinitializer, align 8
@threads = internal unnamed_addr global ptr null, align 8
@default_threads = internal global [4 x i64] zeroinitializer, align 16
@mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@once = internal global i32 0, align 4
@slow_io_pending_wq = internal global %struct.uv__queue zeroinitializer, align 8
@run_slow_work_message = internal global %struct.uv__queue zeroinitializer, align 8
@wq = internal global %struct.uv__queue zeroinitializer, align 8
@idle_threads = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"UV_THREADPOOL_SIZE\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"libuv-worker\00", align 1
@slow_io_work_running = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"uv__has_active_reqs(req->loop)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"../../deps/uv/src/threadpool.c\00", align 1
@__PRETTY_FUNCTION__.uv__queue_done = private unnamed_addr constant [44 x i8] c"void uv__queue_done(struct uv__work *, int)\00", align 1
@switch.table.uv_cancel = private unnamed_addr constant [5 x i8] c"H@@@@", align 8
@switch.table.uv_cancel.4 = private unnamed_addr constant [5 x i16] [i16 336, i16 88, i16 72, i16 72, i16 104], align 8

; Function Attrs: nounwind uwtable
define hidden void @uv__threadpool_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nthreads, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #9
  store ptr @wq, ptr @exit_message, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8 ; 2 uses
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @exit_message, i64 8), align 8
  store ptr @exit_message, ptr %i.c, align 8
  store ptr @exit_message, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8
  %i.d = load i32, ptr @idle_threads, align 4
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %post.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #9
  br label %post.exit

post.exit:                                        ; preds = %bb.b, %bb.c
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #9
  %i.e = load i32, ptr @nthreads, align 4
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = load i32, ptr @nthreads, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !8

.lr.ph:                                           ; preds = %post.exit, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %post.exit ] ; 2 uses
  %i.i = load ptr, ptr @threads, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = tail call i32 @uv_thread_join(ptr noundef %i.j) #9
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @abort() #10
  unreachable

._crit_edge:                                      ; preds = %bb.d, %post.exit
  %i.l = load ptr, ptr @threads, align 8          ; 2 uses
  %.not = icmp eq ptr %i.l, @default_threads
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @uv__free(ptr noundef %i.l) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  tail call void @uv_mutex_destroy(ptr noundef nonnull @mutex) #9
  tail call void @uv_cond_destroy(ptr noundef nonnull @cond) #9
  store ptr null, ptr @threads, align 8
  store i32 0, ptr @nthreads, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @uv_thread_join(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare void @uv__free(ptr noundef) local_unnamed_addr #2

declare void @uv_mutex_destroy(ptr noundef) local_unnamed_addr #2

declare void @uv_cond_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @uv__work_submit(ptr noundef %0, ptr noundef initializes((0, 24)) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @uv_once(ptr noundef nonnull @once, ptr noundef nonnull @init_once) #9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %i.a, align 8
  store ptr %3, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #9
  %i.d = icmp eq i32 %2, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @slow_io_pending_wq, ptr %i.c, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slow_io_pending_wq, i64 8), align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.e, ptr %i.f, align 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @slow_io_pending_wq, i64 8), align 8
  %i.g = load ptr, ptr @run_slow_work_message, align 8
  %.not.i = icmp eq ptr %i.g, @run_slow_work_message
  br i1 %.not.i, label %bb.c, label %post.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.c, %bb.a ], [ @run_slow_work_message, %bb.b ] ; 4 uses
  store ptr @wq, ptr %.0.i, align 8
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr %.0.i, ptr %i.h, align 8
  store ptr %.0.i, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8
  %i.j = load i32, ptr @idle_threads, align 4
  %.not2.i = icmp eq i32 %i.j, 0
  br i1 %.not2.i, label %post.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #9
  br label %post.exit

post.exit:                                        ; preds = %bb.b, %bb.c, %bb.d
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #9
  ret void
}

declare void @uv_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @init_once() #0 {
bb.a:
  %0 = alloca %struct.uv_thread_options_s, align 8 ; 5 uses
  %1 = alloca %union.sem_t, align 8               ; 6 uses
  %i.a = tail call i32 @pthread_atfork(ptr noundef null, ptr noundef null, ptr noundef nonnull @reset_once) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #10
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i32 4, ptr @nthreads, align 4
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #9, !inline_history !10 ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  store i32 %i.d, ptr @nthreads, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.sink.split.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ugt i32 %i.d, 1024
  br i1 %i.f, label %.thread13.i, label %.thread12.i

.thread13.i:                                      ; preds = %bb.e
  store i32 1024, ptr @nthreads, align 4
  store ptr @default_threads, ptr @threads, align 8
  br label %bb.f

.thread12.i:                                      ; preds = %bb.e
  store ptr @default_threads, ptr @threads, align 8
  %i.g = icmp samesign ugt i32 %i.d, 4
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread12.i, %.thread13.i
  %i.h = phi i64 [ 1024, %.thread13.i ], [ %i.c, %.thread12.i ]
  %i.i = shl i64 %i.h, 3
  %i.j = and i64 %i.i, 16376
  %i.k = tail call ptr @uv__malloc(i64 noundef %i.j) #9 ; 2 uses
  store ptr %i.k, ptr @threads, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.sink.split.sink.split.i, label %bb.g

.sink.split.sink.split.i:                         ; preds = %bb.f, %bb.d
  %.sink.i = phi i32 [ 1, %bb.d ], [ 4, %bb.f ]
  store i32 %.sink.i, ptr @nthreads, align 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.c
end_hunk_0
begin_hunk_1_@uv_queue_work:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 7, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @uv_once(ptr noundef nonnull @once, ptr noundef nonnull @init_once) #9
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %0, ptr %i.j, align 8
  store ptr @uv__queue_work, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @uv__queue_done, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #9
  store ptr @wq, ptr %i.l, align 8
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.m, ptr %i.n, align 8
  store ptr %i.l, ptr %i.m, align 8
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8
  %i.o = load i32, ptr @idle_threads, align 4
  %.not2.i.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i.i, label %uv__work_submit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #9
  br label %uv__work_submit.exit

uv__work_submit.exit:                             ; preds = %bb.b, %bb.c
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %uv__work_submit.exit
  %.0 = phi i32 [ 0, %uv__work_submit.exit ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @uv__queue_work(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -88
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @uv__queue_done(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -88
  %i.b = getelementptr inbounds i8, ptr %0, i64 -24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 360, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__queue_done) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = add i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.h(ptr noundef nonnull %i.a, i32 noundef %1) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -22, 1) i32 @uv_cancel(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %switch.tableidx = add i32 %i.b, -6             ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 5
  br i1 %i.c, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uv_cancel, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep19 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.uv_cancel.4, i64 %i.e
  %switch.load20 = load i16, ptr %switch.gep19, align 2
  %switch.ext21 = zext i16 %switch.load20 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext21 ; 5 uses
  %.0 = load ptr, ptr %i.f, align 8               ; 4 uses
  tail call void @uv_once(ptr noundef nonnull @once, ptr noundef nonnull @init_once) #9
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  tail call void @uv_mutex_lock(ptr noundef nonnull %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.m = load ptr, ptr %i.g, align 8
  %.not1.i = icmp eq ptr %i.m, null
  br i1 %.not1.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.l, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.s) #9
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #9
  store ptr @uv__cancelled, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 136 ; 2 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull %i.t) #9
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 120
  store ptr %i.u, ptr %i.k, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 128 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  store ptr %i.w, ptr %i.n, align 8
  store ptr %i.k, ptr %i.w, align 8
  store ptr %i.k, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 176
  %i.y = tail call i32 @uv_async_send(ptr noundef nonnull %i.x) #9 ; 0 uses
  br label %uv__work_cancel.exit

.critedge.i:                                      ; preds = %bb.b, %switch.lookup
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.aa) #9
  br label %uv__work_cancel.exit

uv__work_cancel.exit:                             ; preds = %bb.c, %.critedge.i
  %mutex.sink.i = phi ptr [ @mutex, %.critedge.i ], [ %i.t, %bb.c ]
  %.0.i = phi i32 [ -16, %.critedge.i ], [ 0, %bb.c ]
  tail call void @uv_mutex_unlock(ptr noundef nonnull %mutex.sink.i) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %uv__work_cancel.exit
  %.015 = phi i32 [ %.0.i, %uv__work_cancel.exit ], [ -22, %bb.a ]
  ret i32 %.015
}

declare void @uv_cond_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_atfork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @reset_once() #6 {
bb.a:
  store i32 0, ptr @once, align 4
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @uv__malloc(i64 noundef) local_unnamed_addr #2

declare i32 @uv_cond_init(ptr noundef) local_unnamed_addr #2

declare i32 @uv_mutex_init(ptr noundef) local_unnamed_addr #2

declare i32 @uv_sem_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uv_thread_create_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @worker(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @uv_thread_setname(ptr noundef nonnull @.str.1) #9 ; 0 uses
  tail call void @uv_sem_post(ptr noundef %0) #9
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #9
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.b = load ptr, ptr @wq, align 8               ; 12 uses
  %.not = icmp eq ptr %i.b, @wq
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.c = icmp eq ptr %i.b, @run_slow_work_message ; 3 uses
  br i1 %i.c, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @run_slow_work_message, align 8
  %i.e = icmp eq ptr %i.d, @wq
  br i1 %i.e, label %bb.d, label %.critedge2.thread

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @slow_io_work_running, align 4
  %i.g = load i32, ptr @nthreads, align 4
  %i.h = add i32 %i.g, 1
  %i.i = lshr i32 %i.h, 1
  %.not21 = icmp ult i32 %i.f, %i.i
  br i1 %.not21, label %.critedge2.thread, label %.critedge

.critedge:                                        ; preds = %.backedge, %bb.d
  %i.j = load i32, ptr @idle_threads, align 4
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @idle_threads, align 4
  tail call void @uv_cond_wait(ptr noundef nonnull @cond, ptr noundef nonnull @mutex) #9
  %i.l = load i32, ptr @idle_threads, align 4
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr @idle_threads, align 4
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.critedge, %bb.l, %bb.m, %bb.g, %bb.h
  br label %.backedge, !llvm.loop !14

.critedge2:                                       ; preds = %bb.b
  %i.n = icmp eq ptr %i.b, @exit_message
  br i1 %i.n, label %bb.e, label %.critedge2.thread

bb.e:                                             ; preds = %.critedge2
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #9
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #9
  ret void

.critedge2.thread:                                ; preds = %bb.d, %bb.c, %.critedge2
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  store ptr %.pre, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.b, ptr %i.b, align 8
  store ptr %i.b, ptr %i.o, align 8
  br i1 %i.c, label %bb.f, label %bb.l

bb.f:                                             ; preds = %.critedge2.thread
  %i.s = load i32, ptr @slow_io_work_running, align 4 ; 2 uses
  %i.t = load i32, ptr @nthreads, align 4
  %i.u = add i32 %i.t, 1
  %i.v = lshr i32 %i.u, 1
  %.not22 = icmp ult i32 %i.s, %i.v
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @wq, ptr %i.b, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8 ; 2 uses
  store ptr %i.w, ptr %i.o, align 8
  store ptr %i.b, ptr %i.w, align 8
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8
  br label %.backedge.backedge

bb.h:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @slow_io_pending_wq, align 8 ; 9 uses
  %.not29 = icmp eq ptr %i.x, @slow_io_pending_wq
  br i1 %.not29, label %.backedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nuw nsw i32 %i.s, 1
  store i32 %i.y, ptr @slow_io_work_running, align 4
  %i.z = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store ptr %i.x, ptr %i.x, align 8
  store ptr %i.x, ptr %i.aa, align 8
  %i.ae = load ptr, ptr @slow_io_pending_wq, align 8
  %.not30 = icmp eq ptr %i.ae, @slow_io_pending_wq
  br i1 %.not30, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @wq, ptr @run_slow_work_message, align 8
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8 ; 2 uses
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @run_slow_work_message, i64 8), align 8
  store ptr @run_slow_work_message, ptr %i.af, align 8
  store ptr @run_slow_work_message, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8
  %i.ag = load i32, ptr @idle_threads, align 4
  %.not25 = icmp eq i32 %i.ag, 0
  br i1 %.not25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %.critedge2.thread
  %.019 = phi ptr [ %i.x, %bb.i ], [ %i.x, %bb.k ], [ %i.x, %bb.j ], [ %i.b, %.critedge2.thread ] ; 6 uses
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #9
  %i.ah = getelementptr inbounds i8, ptr %.019, i64 -24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull %i.ah) #9
  %i.aj = getelementptr inbounds i8, ptr %.019, i64 -8 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  tail call void @uv_mutex_lock(ptr noundef nonnull %i.al) #9
  store ptr null, ptr %i.ah, align 8
  %i.am = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  store ptr %i.an, ptr %.019, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store ptr %.019, ptr %i.ap, align 8
  store ptr %.019, ptr %i.ao, align 8
  %i.ar = load ptr, ptr %i.aj, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.at = tail call i32 @uv_async_send(ptr noundef nonnull %i.as) #9 ; 0 uses
  %i.au = load ptr, ptr %i.aj, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.av) #9
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #9
  br i1 %i.c, label %bb.m, label %.backedge.backedge

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr @slow_io_work_running, align 4
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @slow_io_work_running, align 4
  br label %.backedge.backedge
}

declare void @uv_sem_wait(ptr noundef) local_unnamed_addr #2

declare void @uv_sem_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @uv_thread_setname(ptr noundef) local_unnamed_addr #2

declare void @uv_sem_post(ptr noundef) local_unnamed_addr #2

declare void @uv_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uv_async_send(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{null}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
end_hunk_1
