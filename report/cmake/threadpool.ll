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
@switch.table.uv_cancel = private unnamed_addr constant [5 x i8] c"H@@@@", align 8
@switch.table.uv_cancel.4 = private unnamed_addr constant [5 x i16] [i16 336, i16 88, i16 72, i16 72, i16 104], align 8

; Function Attrs: nounwind uwtable
define dso_local void @uv__threadpool_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nthreads, align 4, !tbaa !9
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #7
  store ptr @wq, ptr @exit_message, align 8, !tbaa !10
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14 ; 2 uses
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @exit_message, i64 8), align 8, !tbaa !14
  store ptr @exit_message, ptr %i.c, align 8, !tbaa !10
  store ptr @exit_message, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14
  %i.d = load i32, ptr @idle_threads, align 4, !tbaa !9
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %post.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #7
  br label %post.exit

post.exit:                                        ; preds = %bb.b, %bb.c
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #7
  %i.e = load i32, ptr @nthreads, align 4, !tbaa !9
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = load i32, ptr @nthreads, align 4, !tbaa !9
  %i.g = zext i32 %i.f to i64
  %i.h = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !15

.lr.ph:                                           ; preds = %post.exit, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %post.exit ] ; 2 uses
  %i.i = load ptr, ptr @threads, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = tail call i32 @uv_thread_join(ptr noundef %i.j) #7
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @abort() #8
  unreachable

._crit_edge:                                      ; preds = %bb.d, %post.exit
  %i.l = load ptr, ptr @threads, align 8, !tbaa !17 ; 2 uses
  %.not = icmp eq ptr %i.l, @default_threads
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @uv__free(ptr noundef %i.l) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  tail call void @uv_mutex_destroy(ptr noundef nonnull @mutex) #7
  tail call void @uv_cond_destroy(ptr noundef nonnull @cond) #7
  store ptr null, ptr @threads, align 8, !tbaa !17
  store i32 0, ptr @nthreads, align 4, !tbaa !9
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
define dso_local void @uv__work_submit(ptr noundef %0, ptr noundef initializes((0, 24)) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @uv_once(ptr noundef nonnull @once, ptr noundef nonnull @init_once) #7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %i.a, align 8, !tbaa !19
  store ptr %3, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %4, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #7
  %i.d = icmp eq i32 %2, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @slow_io_pending_wq, ptr %i.c, align 8, !tbaa !10
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slow_io_pending_wq, i64 8), align 8, !tbaa !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.e, ptr %i.f, align 8, !tbaa !14
  store ptr %i.c, ptr %i.e, align 8, !tbaa !10
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @slow_io_pending_wq, i64 8), align 8, !tbaa !14
  %i.g = load ptr, ptr @run_slow_work_message, align 8, !tbaa !10
  %.not.i = icmp eq ptr %i.g, @run_slow_work_message
  br i1 %.not.i, label %bb.c, label %post.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.c, %bb.a ], [ @run_slow_work_message, %bb.b ] ; 4 uses
  store ptr @wq, ptr %.0.i, align 8, !tbaa !10
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !14
  store ptr %.0.i, ptr %i.h, align 8, !tbaa !10
  store ptr %.0.i, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14
  %i.j = load i32, ptr @idle_threads, align 4, !tbaa !9
  %.not2.i = icmp eq i32 %i.j, 0
  br i1 %.not2.i, label %post.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #7
  br label %post.exit

post.exit:                                        ; preds = %bb.b, %bb.c, %bb.d
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #7
  ret void
}

declare void @uv_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @init_once() #0 {
bb.a:
  %0 = alloca %struct.uv_thread_options_s, align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %1 = alloca %union.sem_t, align 8               ; 6 uses
  %i.c = tail call i32 @pthread_atfork(ptr noundef null, ptr noundef null, ptr noundef nonnull @reset_once) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store i32 4, ptr @nthreads, align 4, !tbaa !9
  store i64 16, ptr %i.a, align 8, !tbaa !24
  %i.d = call i32 @uv_os_getenv(ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %thread-pre-split.i

bb.d:                                             ; preds = %bb.c
  %i.e = call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #7, !inline_history !26
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  store i32 %i.f, ptr @nthreads, align 4, !tbaa !9
  br label %bb.e

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i32, ptr @nthreads, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %.pr14.i = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.f, %bb.d ] ; 4 uses
  %i.g = icmp eq i32 %.pr14.i, 0
  br i1 %i.g, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ugt i32 %.pr14.i, 1024
  br i1 %i.h, label %.thread15.i, label %bb.g

.thread15.i:                                      ; preds = %bb.f
  store i32 1024, ptr @nthreads, align 4, !tbaa !9
  store ptr @default_threads, ptr @threads, align 8, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @default_threads, ptr @threads, align 8, !tbaa !17
  %i.i = icmp samesign ugt i32 %.pr14.i, 4
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.thread15.i
  %i.j = phi i32 [ 1024, %.thread15.i ], [ %.pr14.i, %bb.g ]
  %i.k = shl nuw nsw i32 %i.j, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = call ptr @uv__malloc(i64 noundef %i.l) #7 ; 2 uses
end_hunk_0
begin_hunk_1_@uv__cancelled:bb.a
bb.a:
  tail call void @abort() #8
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -22, 1) i32 @uv_queue_work(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 7, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %3, ptr %i.h, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @uv_once(ptr noundef nonnull @once, ptr noundef nonnull @init_once) #7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %0, ptr %i.j, align 8, !tbaa !19
  store ptr @uv__queue_work, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @uv__queue_done, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #7
  store ptr @wq, ptr %i.l, align 8, !tbaa !10
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.m, ptr %i.n, align 8, !tbaa !14
  store ptr %i.l, ptr %i.m, align 8, !tbaa !10
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14
  %i.o = load i32, ptr @idle_threads, align 4, !tbaa !9
  %.not2.i.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i.i, label %uv__work_submit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #7
  br label %uv__work_submit.exit

uv__work_submit.exit:                             ; preds = %bb.b, %bb.c
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #7
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  tail call void %i.c(ptr noundef nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @uv__queue_done(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
  %i.e = add i32 %i.d, -1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !54
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %0, i64 -88
  tail call void %i.g(ptr noundef nonnull %i.i, i32 noundef %1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -22, 1) i32 @uv_cancel(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
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
  %.0 = load ptr, ptr %i.f, align 8, !tbaa !60    ; 4 uses
  tail call void @uv_once(ptr noundef nonnull @once, ptr noundef nonnull @init_once) #7
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  tail call void @uv_mutex_lock(ptr noundef nonnull %i.j) #7
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 3 uses
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !22
  %.not1.i = icmp eq ptr %i.m, null
  br i1 %.not1.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !14
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.r) #7
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #7
  store ptr @uv__cancelled, ptr %i.g, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 136 ; 2 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull %i.s) #7
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 120
  store ptr %i.t, ptr %i.k, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 128 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  store ptr %i.v, ptr %i.n, align 8, !tbaa !14
  store ptr %i.k, ptr %i.v, align 8, !tbaa !10
  store ptr %i.k, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 176
  %i.x = tail call i32 @uv_async_send(ptr noundef nonnull %i.w) #7 ; 0 uses
  br label %uv__work_cancel.exit

.critedge.i:                                      ; preds = %bb.b, %switch.lookup
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.z) #7
  br label %uv__work_cancel.exit

uv__work_cancel.exit:                             ; preds = %bb.c, %.critedge.i
  %mutex.sink.i = phi ptr [ @mutex, %.critedge.i ], [ %i.s, %bb.c ]
  %.0.i = phi i32 [ -16, %.critedge.i ], [ 0, %bb.c ]
  tail call void @uv_mutex_unlock(ptr noundef nonnull %mutex.sink.i) #7
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

declare i32 @uv_os_getenv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uv__malloc(i64 noundef) local_unnamed_addr #2

declare i32 @uv_cond_init(ptr noundef) local_unnamed_addr #2

declare i32 @uv_mutex_init(ptr noundef) local_unnamed_addr #2

declare i32 @uv_sem_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uv_thread_create_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @worker(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @uv_thread_setname(ptr noundef nonnull @.str.1) #7 ; 0 uses
  tail call void @uv_sem_post(ptr noundef %0) #7
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #7
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.b = load ptr, ptr @wq, align 8, !tbaa !10    ; 22 uses
  %.not = icmp eq ptr %i.b, @wq
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.c = icmp eq ptr %i.b, @run_slow_work_message ; 2 uses
  br i1 %i.c, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @run_slow_work_message, align 8, !tbaa !10
  %i.e = icmp eq ptr %i.d, @wq
  %.pre = load i32, ptr @slow_io_work_running, align 4, !tbaa !9 ; 2 uses
  %.pre37 = load i32, ptr @nthreads, align 4, !tbaa !9
  %i.f = add i32 %.pre37, 1
  %i.g = lshr i32 %i.f, 1
  %.not21 = icmp ult i32 %.pre, %i.g              ; 2 uses
  br i1 %i.e, label %bb.d, label %split

bb.d:                                             ; preds = %bb.c
  br i1 %.not21, label %split.thread, label %.critedge

split.thread:                                     ; preds = %bb.d
  %1 = load ptr, ptr %i.b, align 8, !tbaa !10     ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  store ptr %1, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !14
  store ptr %i.b, ptr %i.b, align 8, !tbaa !10
  store ptr %i.b, ptr %2, align 8, !tbaa !14
  br label %bb.h

.critedge:                                        ; preds = %.backedge, %bb.d
  %i.j = load i32, ptr @idle_threads, align 4, !tbaa !9
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @idle_threads, align 4, !tbaa !9
  tail call void @uv_cond_wait(ptr noundef nonnull @cond, ptr noundef nonnull @mutex) #7
  %i.l = load i32, ptr @idle_threads, align 4, !tbaa !9
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr @idle_threads, align 4, !tbaa !9
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.critedge, %bb.l, %bb.m, %bb.g, %bb.h
  br label %.backedge, !llvm.loop !61

.critedge2:                                       ; preds = %bb.b
  %i.n = icmp eq ptr %i.b, @exit_message
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge2
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #7
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #7
  ret void

bb.f:                                             ; preds = %.critedge2
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !14
  store ptr %i.b, ptr %i.b, align 8, !tbaa !10
  store ptr %i.b, ptr %i.p, align 8, !tbaa !14
  br label %bb.l

split:                                            ; preds = %bb.c
  %3 = load ptr, ptr %i.b, align 8, !tbaa !10     ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  store ptr %3, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !14
  store ptr %i.b, ptr %i.b, align 8, !tbaa !10
  store ptr %i.b, ptr %4, align 8, !tbaa !14
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %split
  store ptr @wq, ptr %i.b, align 8, !tbaa !10
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14 ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !14
  store ptr %i.b, ptr %i.u, align 8, !tbaa !10
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14
  br label %.backedge.backedge

bb.h:                                             ; preds = %split.thread, %split
  %i.v = load ptr, ptr @slow_io_pending_wq, align 8, !tbaa !10 ; 9 uses
  %.not29 = icmp eq ptr %i.v, @slow_io_pending_wq
  br i1 %.not29, label %.backedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nuw nsw i32 %.pre, 1
  store i32 %i.w, ptr @slow_io_work_running, align 4, !tbaa !9
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !10   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14   ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !14
  store ptr %i.v, ptr %i.v, align 8, !tbaa !10
  store ptr %i.v, ptr %i.y, align 8, !tbaa !14
  %i.ab = load ptr, ptr @slow_io_pending_wq, align 8, !tbaa !10
  %.not30 = icmp eq ptr %i.ab, @slow_io_pending_wq
  br i1 %.not30, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @wq, ptr @run_slow_work_message, align 8, !tbaa !10
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14 ; 2 uses
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @run_slow_work_message, i64 8), align 8, !tbaa !14
  store ptr @run_slow_work_message, ptr %i.ac, align 8, !tbaa !10
  store ptr @run_slow_work_message, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8, !tbaa !14
  %i.ad = load i32, ptr @idle_threads, align 4, !tbaa !9
  %.not25 = icmp eq i32 %i.ad, 0
  br i1 %.not25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @uv_cond_signal(ptr noundef nonnull @cond) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.i, %bb.k, %bb.j
  %.019 = phi ptr [ %i.v, %bb.i ], [ %i.v, %bb.k ], [ %i.v, %bb.j ], [ %i.b, %bb.f ] ; 6 uses
  tail call void @uv_mutex_unlock(ptr noundef nonnull @mutex) #7
  %i.ae = getelementptr inbounds i8, ptr %.019, i64 -24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  tail call void %i.af(ptr noundef nonnull %i.ae) #7
  %i.ag = getelementptr inbounds i8, ptr %.019, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  tail call void @uv_mutex_lock(ptr noundef nonnull %i.ai) #7
  store ptr null, ptr %i.ae, align 8, !tbaa !22
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  store ptr %i.ak, ptr %.019, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 128 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !14
  store ptr %.019, ptr %i.am, align 8, !tbaa !10
  store ptr %.019, ptr %i.al, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  %i.ap = tail call i32 @uv_async_send(ptr noundef nonnull %i.ao) #7 ; 0 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.ar) #7
  tail call void @uv_mutex_lock(ptr noundef nonnull @mutex) #7
  br i1 %i.c, label %bb.m, label %.backedge.backedge

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr @slow_io_work_running, align 4, !tbaa !9
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @slow_io_work_running, align 4, !tbaa !9
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"uv__queue", !12, i64 0, !12, i64 8}
!12 = !{!"p1 _ZTS9uv__queue", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!11, !12, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 long", !13, i64 0}
!19 = !{!20, !21, i64 16}
!20 = !{!"uv__work", !13, i64 0, !13, i64 8, !21, i64 16, !11, i64 24}
!21 = !{!"p1 _ZTS9uv_loop_s", !13, i64 0}
!22 = !{!20, !13, i64 0}
!23 = !{!20, !13, i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = distinct !{null}
!27 = !{!28, !6, i64 0}
!28 = !{!"uv_thread_options_s", !6, i64 0, !25, i64 8}
!29 = !{!28, !25, i64 8}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = !{!34, !13, i64 40}
!34 = !{!"uv_loop_s", !13, i64 0, !6, i64 8, !11, i64 16, !7, i64 32, !13, i64 40, !6, i64 48, !25, i64 56, !6, i64 64, !11, i64 72, !11, i64 88, !35, i64 104, !6, i64 112, !6, i64 116, !11, i64 120, !7, i64 136, !37, i64 176, !7, i64 304, !38, i64 360, !11, i64 368, !11, i64 384, !11, i64 400, !11, i64 416, !11, i64 432, !13, i64 448, !39, i64 456, !6, i64 512, !40, i64 520, !25, i64 536, !25, i64 544, !7, i64 552, !39, i64 560, !41, i64 616, !6, i64 768, !39, i64 776, !13, i64 832, !6, i64 840}
!35 = !{!"p2 _ZTS8uv__io_s", !36, i64 0}
!36 = !{!"any p2 pointer", !13, i64 0}
!37 = !{!"uv_async_s", !13, i64 0, !21, i64 8, !6, i64 16, !13, i64 24, !11, i64 32, !7, i64 48, !38, i64 80, !6, i64 88, !13, i64 96, !11, i64 104, !6, i64 120}
!38 = !{!"p1 _ZTS11uv_handle_s", !13, i64 0}
!39 = !{!"uv__io_s", !25, i64 0, !11, i64 8, !11, i64 24, !6, i64 40, !6, i64 44, !6, i64 48}
!40 = !{!"", !13, i64 0, !6, i64 8}
!41 = !{!"uv_signal_s", !13, i64 0, !21, i64 8, !6, i64 16, !13, i64 24, !11, i64 32, !7, i64 48, !38, i64 80, !6, i64 88, !13, i64 96, !6, i64 104, !42, i64 112, !6, i64 144, !6, i64 148}
!42 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !6, i64 24}
!43 = !{!"p1 _ZTS11uv_signal_s", !13, i64 0}
!44 = !{!45, !25, i64 16}
!45 = !{!"uv__loop_internal_fields_s", !6, i64 0, !46, i64 8, !6, i64 192, !48, i64 200, !48, i64 320, !13, i64 440}
!46 = !{!"uv__loop_metrics_s", !47, i64 0, !25, i64 128, !25, i64 136, !7, i64 144}
!47 = !{!"uv_metrics_s", !25, i64 0, !25, i64 8, !25, i64 16, !7, i64 24}
!48 = !{!"uv__iou", !49, i64 0, !49, i64 8, !6, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !6, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !25, i64 80, !25, i64 88, !25, i64 96, !25, i64 104, !6, i64 112, !6, i64 116}
!49 = !{!"p1 int", !13, i64 0}
!50 = !{!45, !6, i64 192}
!51 = !{!45, !25, i64 24}
!52 = !{!53, !6, i64 8}
!53 = !{!"uv_work_s", !13, i64 0, !6, i64 8, !7, i64 16, !21, i64 64, !13, i64 72, !13, i64 80, !20, i64 88}
!54 = !{!7, !7, i64 0}
!55 = !{!53, !21, i64 64}
!56 = !{!53, !13, i64 72}
!57 = !{!53, !13, i64 80}
!58 = !{!59, !6, i64 8}
!59 = !{!"uv_req_s", !13, i64 0, !6, i64 8, !7, i64 16}
!60 = !{!21, !21, i64 0}
!61 = distinct !{!61, !16}
end_hunk_1
