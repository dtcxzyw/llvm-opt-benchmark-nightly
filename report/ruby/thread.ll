inline.NumInlined: 1396
inline.NumDeleted: 321
begin_hunk_0
@.str.101 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"native_thread_id\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@rb_eIOError = external local_unnamed_addr global i64, align 8
@.str.106 = private unnamed_addr constant [32 x i8] c"stream closed in another thread\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"ThreadGroup\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@cThGroup = internal unnamed_addr global i64 0, align 8
@.str.108 = private unnamed_addr constant [8 x i8] c"enclose\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"enclosed?\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"RUBY_THREAD_TIMESLICE\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"ThreadError\00", align 1
@rb_eStandardError = external local_unnamed_addr global i64, align 8
@specific_key_count = internal unnamed_addr global i32 0, align 4
@.str.114 = private unnamed_addr constant [83 x i8] c"The first rb_internal_thread_specific_key_create() is called with multiple ractors\00", align 1
@.str.115 = private unnamed_addr constant [70 x i8] c"rb_internal_thread_specific_key_create() is called more than %d times\00", align 1
@condattr_mono = internal global %union.pthread_condattr_t zeroinitializer, align 4
@.str.119 = private unnamed_addr constant [23 x i8] c"pthread_cond_timedwait\00", align 1
@ruby_current_vm_ptr = external local_unnamed_addr global ptr, align 8
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@nt_machine_stack_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@nt_free_stack_chunks = internal unnamed_addr global ptr null, align 8
@get_sysconf_page_size.page_size = internal unnamed_addr global i64 0, align 8
@nt_thread_stack_size.msz = internal unnamed_addr global i64 0, align 8
@.str.132 = private unnamed_addr constant [37 x i8] c"rb_thread_wakeup_timer_thread: write\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@timer_th = internal global { i64, i64, [2 x i32], i32, [16 x %struct.epoll_event], [4 x i8], %struct.ccan_list_head, %union.pthread_mutex_t } zeroinitializer, align 8
@rb_thread_fork_rw_lock = internal global { { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32, [4 x i8] } } zeroinitializer, align 8
@rb_internal_thread_event_hooks_rw_lock = internal global { { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32, [4 x i8] } } zeroinitializer, align 8
@.str.137 = private unnamed_addr constant [6 x i8] c"mutex\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@.str.139 = private unnamed_addr constant [34 x i8] c"can't be called from trap context\00", align 1
@.str.140 = private unnamed_addr constant [28 x i8] c"deadlock; recursive locking\00", align 1
@.str.142 = private unnamed_addr constant [75 x i8] c"deadlock; lock already owned by another fiber belonging to the same thread\00", align 1
@.str.147 = private unnamed_addr constant [55 x i8] c"sleeper must not be more than vm_living_thread_num(vm)\00", align 1
@rb_eFatal = external local_unnamed_addr global i64, align 8
@.str.150 = private unnamed_addr constant [32 x i8] c"No live threads left. Deadlock?\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.152 = private unnamed_addr constant [50 x i8] c"\0A%d threads, %d sleeps current:%p main thread:%p\0A\00", align 1
@.str.154 = private unnamed_addr constant [43 x i8] c"* %+li\0B\0A   rb_thread_t:%p native:%p int:%u\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c" mutex:%llu cond:%zu\00", align 1
@.str.157 = private unnamed_addr constant [34 x i8] c"\0A    depended by: tb_thread_id:%p\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"queue empty\00", align 1
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.162 = private unnamed_addr constant [22 x i8] c"%+li\0B not initialized\00", align 1
@queue_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.164, %struct.anon.16 { ptr @queue_mark_and_move, ptr inttoptr (i64 -1 to ptr), ptr @queue_memsize, ptr @queue_mark_and_move, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 33 }, align 8
@.str.164 = private unnamed_addr constant [14 x i8] c"Thread::Queue\00", align 1
@szqueue_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.165, %struct.anon.16 { ptr @szqueue_mark_and_move, ptr inttoptr (i64 -1 to ptr), ptr @szqueue_memsize, ptr @szqueue_mark_and_move, [1 x ptr] zeroinitializer }, ptr @queue_data_type, ptr null, i64 33 }, align 8
@.str.165 = private unnamed_addr constant [19 x i8] c"Thread::SizedQueue\00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c"queue full\00", align 1
@rb_eClosedQueueError = internal unnamed_addr global i64 0, align 8
@.str.170 = private unnamed_addr constant [13 x i8] c"queue closed\00", align 1
@cv_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.172, %struct.anon.16 { ptr null, ptr inttoptr (i64 -1 to ptr), ptr @condvar_memsize, ptr null, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 33 }, align 8
@.str.172 = private unnamed_addr constant [8 x i8] c"condvar\00", align 1
@id_sleep = internal unnamed_addr global i64 0, align 8
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8
@.str.174 = private unnamed_addr constant [46 x i8] c"Attempt to unlock a mutex which is not locked\00", align 1
@.str.175 = private unnamed_addr constant [66 x i8] c"Attempt to unlock a mutex which is locked by another thread/fiber\00", align 1
@.str.178 = private unnamed_addr constant [26 x i8] c"unexpected THREAD_STOPPED\00", align 1
@.str.179 = private unnamed_addr constant [25 x i8] c"unexpected THREAD_KILLED\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.183 = private unnamed_addr constant [43 x i8] c"register/epoll_ctl failed(fd:%d, errno:%d)\00", align 1
@.str.189 = private unnamed_addr constant [37 x i8] c"unregister/epoll_ctl fails. errno:%d\00", align 1
@native_main_thread.0 = internal unnamed_addr global i64 0, align 8
@native_main_thread.1 = internal unnamed_addr global i64 0, align 8
@native_main_thread.2 = internal unnamed_addr global ptr null, align 8
@__libc_stack_end = external local_unnamed_addr global ptr, align 8
@.str.190 = private unnamed_addr constant [46 x i8] c"can't start a new thread (frozen ThreadGroup)\00", align 1
@.str.191 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.192 = private unnamed_addr constant [24 x i8] c"can't create Thread: %s\00", align 1
@.str.193 = private unnamed_addr constant [25 x i8] c"pthread_attr_init(&attr)\00", align 1
@.str.194 = private unnamed_addr constant [45 x i8] c"pthread_attr_setstacksize(&attr, stack_size)\00", align 1
@.str.195 = private unnamed_addr constant [59 x i8] c"pthread_attr_setinheritsched(&attr, PTHREAD_INHERIT_SCHED)\00", align 1
@.str.196 = private unnamed_addr constant [60 x i8] c"pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED)\00", align 1
@.str.197 = private unnamed_addr constant [28 x i8] c"pthread_attr_destroy(&attr)\00", align 1
@.str.198 = private unnamed_addr constant [59 x i8] c" terminated with exception (report_on_exception is true):\0A\00", align 1
@.str.199 = private unnamed_addr constant [60 x i8] c"thread_start_func_2: locking_mutex must not be set (%p:%lx)\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@nt_stack_chunks = internal unnamed_addr global ptr null, align 8
@.str.201 = private unnamed_addr constant [33 x i8] c"Ruby:nt_alloc_thread_stack_chunk\00", align 1
@ruby_threadptr_data_type = external constant %struct.rb_data_type_struct, align 8
@ubf_list_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@ubf_list_head = internal global %struct.ccan_list_head { %struct.ccan_list_node { ptr @ubf_list_head, ptr @ubf_list_head } }, align 8
@.str.209 = private unnamed_addr constant [23 x i8] c"unknown mask signature\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.211 = private unnamed_addr constant [21 x i8] c"uninitialized thread\00", align 1
@.str.212 = private unnamed_addr constant [36 x i8] c"close_invalidate: timer_th.comm_fds\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"close event_fd\00", align 1
@.str.214 = private unnamed_addr constant [34 x i8] c"can not create communication pipe\00", align 1
@.str.215 = private unnamed_addr constant [24 x i8] c"epoll_create (errno:%d)\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"event_wait\00", align 1
@.str.220 = private unnamed_addr constant [20 x i8] c"event_wait errno:%d\00", align 1
@.str.225 = private unnamed_addr constant [33 x i8] c"consume_communication_pipe: read\00", align 1
@.str.228 = private unnamed_addr constant [14 x i8] c"thread_shield\00", align 1
@.str.229 = private unnamed_addr constant [23 x i8] c"waiting count overflow\00", align 1
@.str.230 = private unnamed_addr constant [24 x i8] c"waiting count underflow\00", align 1
@.str.231 = private unnamed_addr constant [29 x i8] c"destroyed thread shield - %p\00", align 1
@.str.232 = private unnamed_addr constant [49 x i8] c"invalid inspect_tbl pair_list for %+li\0B in %+li\0B\00", align 1
@.str.233 = private unnamed_addr constant [19 x i8] c"can't alloc thread\00", align 1
@.str.234 = private unnamed_addr constant [47 x i8] c"uninitialized thread - check '%li\0B#initialize'\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.235 = private unnamed_addr constant [17 x i8] c"block is needed.\00", align 1
@rb_eException = external local_unnamed_addr global i64, align 8
@rb_cModule = external local_unnamed_addr global i64, align 8
@.str.236 = private unnamed_addr constant [43 x i8] c"class or module required for rescue clause\00", align 1
@.str.237 = private unnamed_addr constant [28 x i8] c"must be called with a block\00", align 1
@.str.238 = private unnamed_addr constant [39 x i8] c"already initialized thread - %li\0B:%li\0B\00", align 1
@.str.239 = private unnamed_addr constant [27 x i8] c"already initialized thread\00", align 1
@.str.240 = private unnamed_addr constant [41 x i8] c"Target thread must not be current thread\00", align 1
@.str.241 = private unnamed_addr constant [38 x i8] c"Target thread must not be main thread\00", align 1
@.str.242 = private unnamed_addr constant [48 x i8] c"thread_join: Fixnum (%d) should not reach here.\00", align 1
@.str.243 = private unnamed_addr constant [47 x i8] c"thread_join: THROW_DATA should not reach here.\00", align 1
@.str.244 = private unnamed_addr constant [40 x i8] c"block supersedes default value argument\00", align 1
@.str.245 = private unnamed_addr constant [21 x i8] c"key not found: %+li\0B\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"aborting\00", align 1
@.str.247 = private unnamed_addr constant [14 x i8] c"sleep_forever\00", align 1
@.str.248 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.249 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.251 = private unnamed_addr constant [33 x i8] c"ASCII incompatible encoding (%s)\00", align 1
@.str.252 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"#<%li\0B:%p\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"@%li\0B\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c" %li\0B:%li\0B\00", align 1
@.str.256 = private unnamed_addr constant [5 x i8] c" %s>\00", align 1
@thgroup_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.257, %struct.anon.16 { ptr null, ptr inttoptr (i64 -1 to ptr), ptr null, ptr null, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 35 }, align 8
@.str.257 = private unnamed_addr constant [8 x i8] c"thgroup\00", align 1
@.str.259 = private unnamed_addr constant [38 x i8] c"can't move to the frozen thread group\00", align 1
@.str.260 = private unnamed_addr constant [40 x i8] c"can't move to the enclosed thread group\00", align 1
@.str.261 = private unnamed_addr constant [40 x i8] c"can't move from the frozen thread group\00", align 1
@.str.262 = private unnamed_addr constant [42 x i8] c"can't move from the enclosed thread group\00", align 1
@.str.263 = private unnamed_addr constant [6 x i8] c"Mutex\00", align 1
@.str.264 = private unnamed_addr constant [6 x i8] c"Queue\00", align 1
@rb_cQueue = internal unnamed_addr global i64 0, align 8
@.str.265 = private unnamed_addr constant [17 x i8] c"ClosedQueueError\00", align 1
@rb_eStopIteration = external local_unnamed_addr global i64, align 8
@.str.266 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"marshal_dump\00", align 1
@.str.268 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.269 = private unnamed_addr constant [8 x i8] c"closed?\00", align 1
@.str.270 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.271 = private unnamed_addr constant [7 x i8] c"empty?\00", align 1
@.str.272 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.274 = private unnamed_addr constant [12 x i8] c"num_waiting\00", align 1
@.str.275 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c"enq\00", align 1
@.str.277 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"SizedQueue\00", align 1
@rb_cSizedQueue = internal unnamed_addr global i64 0, align 8
@.str.280 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"max=\00", align 1
@.str.282 = private unnamed_addr constant [18 x i8] c"ConditionVariable\00", align 1
@.str.283 = private unnamed_addr constant [10 x i8] c"thread.rb\00", align 1
@.str.286 = private unnamed_addr constant [16 x i8] c"can't dump %li\0B\00", align 1
@.str.287 = private unnamed_addr constant [20 x i8] c"cannot freeze %+li\0B\00", align 1
@.str.288 = private unnamed_addr constant [28 x i8] c"queue size must be positive\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_vm_check_ints_blocking(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  %i.b = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.c = inttoptr i64 %.val15.i to ptr            ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = and i64 %i.d, 8192
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 15
  %i.g = and i64 %i.f, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %.not.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load atomic volatile i32, ptr %i.j monotonic, align 8
  %i.l = getelementptr i8, ptr %0, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %i.k, %i.n
  %.not16.i = icmp eq i32 %i.o, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.f, !prof !49

bb.e:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.p = getelementptr i8, ptr %.val.i, i64 248   ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, -65
  store i8 %i.r, ptr %i.p, align 8
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = atomicrmw volatile or ptr %i.s, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51 ; 3 uses
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load atomic volatile i32, ptr %i.v monotonic, align 8
  %i.x = getelementptr i8, ptr %0, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !50
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %i.w, 10
  %i.ab = and i32 %i.aa, %i.z
  %.not17.i = icmp eq i32 %i.ab, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.ac, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ac) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.d, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.d ], [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ 0, %bb.g ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_native_mutex_lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_bug_errno(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_native_mutex_unlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef %0) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 17) i32 @rb_native_mutex_trylock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef %0) #17 ; 3 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.c
    i32 16, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.5, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_native_mutex_initialize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef null) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.7, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_native_mutex_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef %0) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.9, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_native_cond_initialize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @condattr_monotonic, align 8, !tbaa !52
  %i.b = tail call i32 @pthread_cond_init(ptr noundef %0, ptr noundef %i.a) #17 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.10, i32 noundef %i.b) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_native_cond_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_cond_destroy(ptr noundef %0) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.11, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_native_cond_signal(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call i32 @pthread_cond_signal(ptr noundef %0) #17 ; 2 uses
  switch i32 %i.a, label %bb.c [
    i32 11, label %bb.b
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.12, i32 noundef %i.a) #41
  unreachable

bb.d:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_native_cond_broadcast(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call i32 @pthread_cond_broadcast(ptr noundef %0) #17 ; 2 uses
  switch i32 %i.a, label %bb.c [
    i32 11, label %bb.b
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.13, i32 noundef %i.a) #41
  unreachable

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@rb_thread_sched_init:bb.a
  %i.c = getelementptr i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.c, align 8, !tbaa !59
  store ptr %i.b, ptr %i.b, align 8, !tbaa !58
  %i.d = getelementptr i8, ptr %0, i64 72
  store i32 0, ptr %i.d, align 8, !tbaa !60
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_initialize.exit
  %i.e = getelementptr i8, ptr %0, i64 50
  store i8 1, ptr %i.e, align 2, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_native_mutex_initialize.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_sched_wait(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.b, align 8, !tbaa !11
  store volatile ptr %.val, ptr %i.a, align 8, !tbaa !63
  %.0..0..0..0.5 = load volatile ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr i8, ptr %.0..0..0..0.5, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 216      ; 4 uses
  %.0..0..0..0.6 = load volatile ptr, ptr %i.a, align 8, !tbaa !63
  %i.f = call fastcc zeroext i1 @ubf_set(ptr noundef %.0..0..0..0.6, ptr noundef %2, ptr noundef %3)
  br i1 %i.f, label %ubf_clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0.7 = load volatile ptr, ptr %i.a, align 8, !tbaa !63 ; 0 uses
  %i.g = call i32 @pthread_mutex_lock(ptr noundef %i.e) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %thread_sched_lock_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.g) #41
  unreachable

thread_sched_lock_.exit:                          ; preds = %bb.b
  call void @rb_ractor_unlock_self(ptr noundef %1) #17
  %.0..0..0..0.8 = load volatile ptr, ptr %i.a, align 8, !tbaa !63
  %i.h = getelementptr i8, ptr %.0..0..0..0.8, i64 40
  %.0.8.val = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr i8, ptr %.0.8.val, i64 104
  %.0.8.val.val = load i32, ptr %i.i, align 8, !tbaa !65
  %i.j = icmp slt i32 %.0.8.val.val, 1            ; 2 uses
  %.0..0..0..0.9 = load volatile ptr, ptr %i.a, align 8, !tbaa !63
  %i.k = getelementptr i8, ptr %.0..0..0..0.9, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = getelementptr i8, ptr %i.l, i64 200
  %i.n = call i32 @_setjmp(ptr noundef %i.m) #45  ; 0 uses
  %.0..0..0..0.10 = load volatile ptr, ptr %i.a, align 8, !tbaa !63
  %i.o = getelementptr i8, ptr %.0..0..0..0.10, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = getelementptr i8, ptr %i.p, i64 184
  %i.r = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !68
  store ptr %i.r, ptr %i.q, align 8, !tbaa !69
  %.0..0..0..0.11 = load volatile ptr, ptr %i.a, align 8, !tbaa !63
  %i.s = getelementptr i8, ptr %.0..0..0..0.11, i64 248 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = and i8 %i.t, -4
  %i.v = or disjoint i8 %i.u, 2
  store i8 %i.v, ptr %i.s, align 8
  %i.w = load ptr, ptr @rb_internal_thread_event_hooks, align 8, !tbaa !70
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %thread_sched_lock_.exit
  %.0..0..0..0.12 = load volatile ptr, ptr %i.a, align 8, !tbaa !63
  call fastcc void @rb_thread_execute_hooks(i32 noundef 8, ptr noundef %.0..0..0..0.12)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %thread_sched_lock_.exit
  %.0..0..0..0.13 = load volatile ptr, ptr %i.a, align 8, !tbaa !63 ; 3 uses
  %i.x = getelementptr i8, ptr %i.d, i64 272      ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58   ; 7 uses
  %.not.i.i23 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i23, label %thread_sched_deq.exit.i, label %ccan_list_pop_.exit.i.i

ccan_list_pop_.exit.i.i:                          ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.y, i64 8        ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72  ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !73  ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !72
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !73
  %i.ad = getelementptr i8, ptr %i.y, i64 -72
  %i.ae = getelementptr i8, ptr %i.d, i64 288     ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !60
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !60
  store ptr %i.y, ptr %i.z, align 8, !tbaa !72
  store ptr %i.y, ptr %i.y, align 8, !tbaa !73
  br label %thread_sched_deq.exit.i

thread_sched_deq.exit.i:                          ; preds = %ccan_list_pop_.exit.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.ad, %ccan_list_pop_.exit.i.i ], [ null, %bb.e ] ; 3 uses
  %i.ah = getelementptr i8, ptr %i.d, i64 256
  store ptr %.0.i.i, ptr %i.ah, align 8, !tbaa !74
  call fastcc void @thread_sched_wakeup_running_thread(ptr noundef %.0.i.i, i1 noundef zeroext %i.j)
  %.not.i = icmp eq ptr %.0..0..0..0.13, %.0.i.i
  br i1 %.not.i, label %thread_sched_wakeup_next_thread.exit, label %bb.f

bb.f:                                             ; preds = %thread_sched_deq.exit.i
  %i.ai = getelementptr i8, ptr %.0..0..0..0.13, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !57
  call fastcc void @thread_sched_setup_running_threads(ptr noundef nonnull %i.e, ptr noundef %i.aj, ptr noundef null, ptr noundef %.0..0..0..0.13, ptr noundef null)
  br label %thread_sched_wakeup_next_thread.exit

thread_sched_wakeup_next_thread.exit:             ; preds = %thread_sched_deq.exit.i, %bb.f
  %.0..0..0..0.14 = load volatile ptr, ptr %i.a, align 8, !tbaa !63
  call fastcc void @thread_sched_wait_running_turn(ptr noundef %i.e, ptr noundef %.0..0..0..0.14, i1 noundef zeroext %i.j)
  %.0..0..0..0.15 = load volatile ptr, ptr %i.a, align 8, !tbaa !63
  %i.ak = getelementptr i8, ptr %.0..0..0..0.15, i64 248 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = and i8 %i.al, -4
  store i8 %i.am, ptr %i.ak, align 8
  %.0..0..0..0.16 = load volatile ptr, ptr %i.a, align 8, !tbaa !63 ; 0 uses
  %i.an = call i32 @pthread_mutex_unlock(ptr noundef %i.e) #17 ; 2 uses
  %.not.i.i24 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i24, label %thread_sched_unlock_.exit, label %bb.g

bb.g:                                             ; preds = %thread_sched_wakeup_next_thread.exit
  call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.an) #41
  unreachable

thread_sched_unlock_.exit:                        ; preds = %thread_sched_wakeup_next_thread.exit
  call void @rb_ractor_lock_self(ptr noundef %1) #17
  %.0..0..0..0.17 = load volatile ptr, ptr %i.a, align 8, !tbaa !63 ; 2 uses
  %i.ao = getelementptr i8, ptr %.0..0..0..0.17, i64 336 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75
  %.not.i25 = icmp eq ptr %i.ap, null
  br i1 %.not.i25, label %ubf_clear.exit, label %bb.h

bb.h:                                             ; preds = %thread_sched_unlock_.exit
  %i.aq = getelementptr i8, ptr %.0..0..0..0.17, i64 296 ; 2 uses
  %i.ar = call i32 @pthread_mutex_lock(ptr noundef %i.aq) #17 ; 2 uses
  %.not.i.i26 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i26, label %rb_native_mutex_lock.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.ar) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.as = call i32 @pthread_mutex_unlock(ptr noundef %i.aq) #17 ; 2 uses
  %.not.i5.i = icmp eq i32 %i.as, 0
  br i1 %.not.i5.i, label %ubf_clear.exit, label %bb.j

bb.j:                                             ; preds = %rb_native_mutex_lock.exit.i
  call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.as) #41
  unreachable

ubf_clear.exit:                                   ; preds = %rb_native_mutex_lock.exit.i, %thread_sched_unlock_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @ubf_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 296        ; 3 uses
  br label %rb_native_mutex_unlock.exit

rb_native_mutex_unlock.exit:                      ; preds = %bb.e, %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %i.e = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.f = getelementptr i8, ptr %i.c, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.e, 10
  %i.j = and i32 %i.i, %i.h
  %.not25.not.not.not.not = icmp ne i32 %i.j, 0   ; 2 uses
  br i1 %.not25.not.not.not.not, label %rb_native_mutex_unlock.exit13, label %bb.b

bb.b:                                             ; preds = %rb_native_mutex_unlock.exit
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef %i.b) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %rb_native_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.k) #41
  unreachable

rb_native_mutex_lock.exit:                        ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 144
  %i.n = load i8, ptr %i.m, align 8, !tbaa !76
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %rb_native_mutex_lock.exit
  %i.o = getelementptr i8, ptr %i.l, i64 32
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 8
  %i.q = getelementptr i8, ptr %i.l, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !50
  %i.s = xor i32 %i.r, -1
  %i.t = and i32 %i.p, 10
  %i.u = and i32 %i.t, %i.s
  %.not14 = icmp eq i32 %i.u, 0
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef %i.b) #17 ; 2 uses
  %.not.i11 = icmp eq i32 %i.v, 0
  br i1 %.not.i11, label %rb_native_mutex_unlock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.v) #41
  unreachable

bb.g:                                             ; preds = %bb.d, %rb_native_mutex_lock.exit
  %i.w = getelementptr i8, ptr %0, i64 336
  store ptr %1, ptr %i.w, align 8, !tbaa !75
  %i.x = getelementptr i8, ptr %0, i64 344
  store ptr %2, ptr %i.x, align 8, !tbaa !77
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef %i.b) #17 ; 2 uses
  %.not.i12 = icmp eq i32 %i.y, 0
  br i1 %.not.i12, label %rb_native_mutex_unlock.exit13, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.y) #41
  unreachable

rb_native_mutex_unlock.exit13:                    ; preds = %rb_native_mutex_unlock.exit, %bb.g
  ret i1 %.not25.not.not.not.not
}

declare void @rb_ractor_unlock_self(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_thread_execute_hooks(i32 noundef range(i32 1, 17) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rb_internal_thread_event_data, align 8 ; 4 uses
  %i.a = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull @rb_internal_thread_event_hooks_rw_lock) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.27, i32 noundef %i.a) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @rb_internal_thread_event_hooks, align 8, !tbaa !70 ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.c = getelementptr i8, ptr %1, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.f
  %.0 = phi ptr [ %i.l, %bb.f ], [ %i.b, %.preheader ] ; 4 uses
  %i.d = getelementptr i8, ptr %.0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !78
  %i.f = and i32 %i.e, %0
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = load i64, ptr %i.c, align 8, !tbaa !80
  store i64 %i.g, ptr %2, align 8, !tbaa !81
  %i.h = load ptr, ptr %.0, align 8, !tbaa !83
  %i.i = getelementptr i8, ptr %.0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84
  call void %i.h(i32 noundef %0, ptr noundef nonnull %2, ptr noundef %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.k = getelementptr i8, ptr %.0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %.loopexit, label %bb.d, !llvm.loop !86

.loopexit:                                        ; preds = %bb.f, %bb.c
  %i.m = call i32 @pthread_rwlock_unlock(ptr noundef nonnull @rb_internal_thread_event_hooks_rw_lock) #17 ; 2 uses
  %.not15 = icmp eq i32 %i.m, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  call void @rb_bug_errno(ptr noundef nonnull @.str.24, i32 noundef %i.m) #41
  unreachable

bb.h:                                             ; preds = %.loopexit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @thread_sched_wait_running_turn(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %1, %i.b
  br i1 %.not, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 40         ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 24         ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 200        ; 3 uses
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_native_thread)
  %i.g = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 252        ; 2 uses
  br i1 %2, label %.preheader.split, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us.backedge
  %.val.us = load ptr, ptr %i.c, align 8, !tbaa !64 ; 3 uses
  %i.i = getelementptr i8, ptr %.val.us, i64 104
  %.val.val.us = load i32, ptr %i.i, align 8, !tbaa !65
  %i.j = icmp sgt i32 %.val.val.us, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  store ptr null, ptr %i.c, align 8, !tbaa !64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !56
  tail call void @rb_current_ec_set(ptr noundef null) #17
  %i.l = getelementptr i8, ptr %i.k, i64 312
  store ptr null, ptr %i.l, align 8, !tbaa !88
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.n = getelementptr i8, ptr %.val.us, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.p = tail call ptr @coroutine_transfer(ptr noundef %i.m, ptr noundef %i.o) #17 ; 0 uses
  %.pr.us.pre = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.q = icmp eq ptr %.pr.us.pre, %1
  br i1 %i.q, label %.split48.us, label %.preheader.split.us.backedge

bb.c:                                             ; preds = %.preheader.split.us
  %i.r = getelementptr i8, ptr %.val.us, i64 40
  %i.s = tail call i32 @pthread_cond_wait(ptr noundef %i.r, ptr noundef nonnull %0) #17 ; 2 uses
  %.not.i.us = icmp eq i32 %i.s, 0
  br i1 %.not.i.us, label %rb_native_cond_wait.exit.us, label %.split.us

rb_native_cond_wait.exit.us:                      ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.u = icmp eq ptr %1, %i.t
  br i1 %i.u, label %bb.d, label %.preheader.split.us.backedge

.preheader.split.us.backedge:                     ; preds = %rb_native_cond_wait.exit.us, %bb.b
  br label %.preheader.split.us, !llvm.loop !99

bb.d:                                             ; preds = %rb_native_cond_wait.exit.us
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.w = getelementptr i8, ptr %i.v, i64 312      ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %.not46.us = icmp eq ptr %i.x, %i.y
  br i1 %.not46.us, label %.split48.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 4, !tbaa !100
  store ptr %i.y, ptr %i.w, align 8, !tbaa !88
  br label %.split48.us

.preheader.split:                                 ; preds = %.preheader, %rb_ractor_thread_switch.exit
  %i.z = phi ptr [ %.pr, %rb_ractor_thread_switch.exit ], [ %i.b, %.preheader ] ; 8 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !64  ; 3 uses
  %i.aa = getelementptr i8, ptr %.val, i64 104
  %.val.val = load i32, ptr %i.aa, align 8, !tbaa !65
  %i.ab = icmp sgt i32 %.val.val, 0
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.preheader.split
  %i.ac = getelementptr i8, ptr %.val, i64 40
  %i.ad = tail call i32 @pthread_cond_wait(ptr noundef %i.ac, ptr noundef nonnull %0) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %rb_native_cond_wait.exit, label %.split.us

.split.us:                                        ; preds = %bb.c, %bb.f
  %.us-phi = phi i32 [ %i.ad, %bb.f ], [ %i.s, %bb.c ]
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.14, i32 noundef %.us-phi) #41
  unreachable

rb_native_cond_wait.exit:                         ; preds = %bb.f
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.af = icmp eq ptr %1, %i.ae
  br i1 %i.af, label %bb.g, label %rb_ractor_thread_switch.exit

bb.g:                                             ; preds = %rb_native_cond_wait.exit
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.ah = getelementptr i8, ptr %i.ag, i64 312    ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !88
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %.not46 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not46, label %rb_ractor_thread_switch.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.h, align 4, !tbaa !100
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !88
  br label %rb_ractor_thread_switch.exit

end_hunk_1
begin_hunk_2_@do_mutex_lock:bb.a
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %do_mutex_trylock.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.e, ptr %i.v, align 8, !tbaa !183
  store i64 %.val, ptr %i.j, align 8, !tbaa !180
  %i.w = getelementptr i8, ptr %i.e, i64 360      ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !184  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %do_mutex_trylock.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.j, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !185
  br label %do_mutex_trylock.exit.thread

do_mutex_trylock.exit.thread:                     ; preds = %bb.e, %bb.f
  store ptr %i.j, ptr %i.w, align 8, !tbaa !184
  br label %bb.al

do_mutex_trylock.exit:                            ; preds = %bb.d
  %i.z = icmp eq i64 %i.t, %.val
  br i1 %i.z, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %do_mutex_trylock.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 24      ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 32      ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = ptrtoint ptr %2 to i64
  %i.ah = getelementptr i8, ptr %i.j, i64 8       ; 4 uses
  %i.ai = getelementptr i8, ptr %i.e, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.am = getelementptr i8, ptr %i.e, i64 248     ; 4 uses
  %i.an = getelementptr i8, ptr %i.e, i64 24      ; 3 uses
  %i.ao = getelementptr i8, ptr %i.e, i64 352     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.not80 = icmp eq i32 %1, 0
  %i.aq = getelementptr i8, ptr %i.e, i64 48      ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %do_mutex_trylock.exit
  %i.ar = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.140) #41
  unreachable

bb.h:                                             ; preds = %.lr.ph, %bb.ah
  %.093 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ah ] ; 5 uses
  %i.as = call i64 @rb_fiber_scheduler_current() #17
  %.not76 = icmp eq i64 %i.as, 4
  br i1 %.not76, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 %i.a, ptr %2, align 8, !tbaa !191
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !193
  %i.at = call i32 @rb_fiberptr_blocking(ptr noundef %i.g) #17
  %.not.i = icmp eq i32 %i.at, 0
  %..i = select i1 %.not.i, ptr %i.g, ptr null
  store ptr %..i, ptr %i.ab, align 8, !tbaa !194
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !73
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 2 uses
  store ptr %i.au, ptr %i.af, align 8, !tbaa !72
  store ptr %i.ac, ptr %i.au, align 8, !tbaa !73
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !72
  %i.av = call i64 @rb_ensure(ptr noundef nonnull @call_rb_fiber_scheduler_block, i64 noundef %i.a, ptr noundef nonnull @delete_from_waitq, i64 noundef %i.ag) #17 ; 0 uses
  %i.aw = load i64, ptr %i.j, align 8, !tbaa !180
  %.not79 = icmp eq i64 %i.aw, 0
  br i1 %.not79, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.e, ptr %i.ah, align 8, !tbaa !183
  store i64 %.val, ptr %i.j, align 8, !tbaa !180
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !57
  %i.ay = getelementptr i8, ptr %i.ax, i64 508
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = and i8 %i.az, 8
  %.not77 = icmp eq i8 %i.ba, 0
  br i1 %.not77, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !183
  %i.bc = icmp eq ptr %i.bb, %i.e
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bd, ptr noundef nonnull @.str.142) #41
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %i.a, ptr %3, align 8, !tbaa !191
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !193
  %i.be = call i32 @rb_fiberptr_blocking(ptr noundef %i.g) #17
  %.not.i83 = icmp eq i32 %i.be, 0
  %..i84 = select i1 %.not.i83, ptr %i.g, ptr null
  store ptr %..i84, ptr %i.ak, align 8, !tbaa !194
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.bf = load i8, ptr %i.am, align 8             ; 2 uses
  %i.bg = and i8 %i.bf, 3
  %i.bh = and i8 %i.bf, -4
  %i.bi = or disjoint i8 %i.bh, 2
  store i8 %i.bi, ptr %i.am, align 8
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !56 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 208    ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !195
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !195
  call fastcc void @rb_check_deadlock(ptr noundef %i.bj)
  store i64 %i.a, ptr %i.ao, align 8, !tbaa !196
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !73
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 2 uses
  store ptr %i.bn, ptr %i.ap, align 8, !tbaa !72
  store ptr %i.al, ptr %i.bn, align 8, !tbaa !73
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !72
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.bp = getelementptr i8, ptr %i.bo, i64 216
  call fastcc void @thread_sched_to_waiting_until_wakeup(ptr noundef %i.bp, ptr noundef nonnull %i.e)
  %i.bq = load ptr, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %i.br = load ptr, ptr %i.al, align 8, !tbaa !73 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !72
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !73
  %i.bt = load i64, ptr %i.j, align 8, !tbaa !180
  %.not78 = icmp eq i64 %i.bt, 0
  br i1 %.not78, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.e, ptr %i.ah, align 8, !tbaa !183
  store i64 %.val, ptr %i.j, align 8, !tbaa !180
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.bv = getelementptr i8, ptr %i.bu, i64 208    ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !195
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !195
  %i.by = load i8, ptr %i.am, align 8
  %i.bz = and i8 %i.by, -4
  %i.ca = or disjoint i8 %i.bz, %i.bg
  store i8 %i.ca, ptr %i.am, align 8
  store i64 0, ptr %i.ao, align 8, !tbaa !196
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  br i1 %.not80, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load i64, ptr %i.j, align 8, !tbaa !180
  %i.cc = icmp eq i64 %i.cb, %.val
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = load ptr, ptr %i.aq, align 8, !tbaa !67 ; 6 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 48
  %.val.i = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 4 uses
  %i.cf = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.cf, align 8, !tbaa !25
  %i.cg = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !46 ; 2 uses
  %i.ci = and i64 %i.ch, 8192
  %.not.i.i.i85 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i85, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = lshr i64 %i.ch, 15
  %i.ck = and i64 %i.cj, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cl = getelementptr i8, ptr %i.cg, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.w, %bb.v
  %.0.i.i.i = phi i64 [ %i.ck, %bb.v ], [ %i.cm, %bb.w ]
  %.not.i86 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i86, label %bb.x, label %bb.y, !prof !49

bb.x:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.cn = getelementptr i8, ptr %i.cd, i64 32
  %i.co = load atomic volatile i32, ptr %i.cn monotonic, align 8
  %i.cp = getelementptr i8, ptr %i.cd, i64 36
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !50
  %i.cr = xor i32 %i.cq, -1
  %i.cs = and i32 %i.co, %i.cr
  %.not16.i = icmp eq i32 %i.cs, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.z, !prof !49

bb.y:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.ct = getelementptr i8, ptr %.val.i, i64 248  ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8
  %i.cv = and i8 %i.cu, -65
  store i8 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr i8, ptr %i.cd, i64 32
  %i.cx = atomicrmw volatile or ptr %i.cw, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cy = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.cy, 0
  br i1 %.not13.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr i8, ptr %i.cd, i64 32
  %i.da = load atomic volatile i32, ptr %i.cz monotonic, align 8
  %i.db = getelementptr i8, ptr %i.cd, i64 36
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !50
  %i.dd = xor i32 %i.dc, -1
  %i.de = and i32 %i.da, 10
  %i.df = and i32 %i.de, %i.dd
  %.not17.i = icmp eq i32 %i.df, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dg = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.dg, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.dg) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.x, %bb.aa, %bb.ab, %bb.ac
  %i.di = load i64, ptr %i.j, align 8, !tbaa !180
  %.not81 = icmp eq i64 %i.di, 0
  br i1 %.not81, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %vm_check_ints_blocking.exit
  store ptr %i.e, ptr %i.ah, align 8, !tbaa !183
  store i64 %.val, ptr %i.j, align 8, !tbaa !180
  br label %bb.ah

bb.ae:                                            ; preds = %bb.r
  %i.dj = load ptr, ptr %i.aq, align 8, !tbaa !67 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 32     ; 3 uses
  %i.dl = load atomic volatile i32, ptr %i.dk monotonic, align 4
  %i.dm = getelementptr i8, ptr %i.dj, i64 36     ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !50
  %i.do = xor i32 %i.dn, -1
  %i.dp = and i32 %i.dl, 10
  %i.dq = and i32 %i.dp, %i.do
  %.not89 = icmp eq i32 %i.dq, 0
  br i1 %.not89, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = load atomic volatile i32, ptr %i.dk monotonic, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.0.i87 = phi i32 [ %i.dr, %bb.af ], [ %i.dv, %bb.ag ] ; 3 uses
  %i.ds = load i32, ptr %i.dm, align 4, !tbaa !50
  %i.dt = and i32 %i.ds, %.0.i87
  %i.du = cmpxchg volatile ptr %i.dk, i32 %.0.i87, i32 %i.dt seq_cst seq_cst, align 4 ; 2 uses
  %i.dv = extractvalue { i32, i1 } %i.du, 0
  %.not.i88 = extractvalue { i32, i1 } %i.du, 1
  br i1 %.not.i88, label %threadptr_get_interrupts.exit, label %bb.ag, !llvm.loop !197

threadptr_get_interrupts.exit:                    ; preds = %bb.ag
  %i.dw = icmp eq i32 %.093, 0
  %i.dx = load i32, ptr %i.dm, align 4, !tbaa !50
  %i.dy = xor i32 %i.dx, -1
  %i.dz = and i32 %.0.i87, %i.dy
  %..0 = select i1 %i.dw, i32 %i.dz, i32 %.093
  br label %bb.ah

bb.ah:                                            ; preds = %threadptr_get_interrupts.exit, %bb.ae, %vm_check_ints_blocking.exit, %bb.ad
  %.1 = phi i32 [ %.093, %vm_check_ints_blocking.exit ], [ %.093, %bb.ad ], [ %..0, %threadptr_get_interrupts.exit ], [ %.093, %bb.ae ] ; 3 uses
  %i.ea = load i64, ptr %i.j, align 8, !tbaa !180
  %.not74 = icmp eq i64 %i.ea, %.val
  br i1 %.not74, label %._crit_edge, label %bb.h, !llvm.loop !198

._crit_edge:                                      ; preds = %bb.ah
  %.not75 = icmp eq i32 %.1, 0
  br i1 %.not75, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  %i.eb = getelementptr i8, ptr %i.e, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !67
  %i.ed = getelementptr i8, ptr %i.ec, i64 32
  store i32 %.1, ptr %i.ed, align 8, !tbaa !199
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %bb.ai
  %i.ee = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.e, ptr %i.ee, align 8, !tbaa !183
  %i.ef = getelementptr i8, ptr %i.e, i64 360     ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i, label %mutex_locked.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = getelementptr i8, ptr %i.j, i64 16
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !185
  br label %mutex_locked.exit

mutex_locked.exit:                                ; preds = %bb.aj, %bb.ak
  store ptr %i.j, ptr %i.ef, align 8, !tbaa !184
  br label %bb.al

bb.al:                                            ; preds = %mutex_locked.exit, %do_mutex_trylock.exit.thread
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_mutex_owned_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 56
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !182
  %i.e = icmp eq i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.i = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  %i.k = and i64 %i.j, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !169  ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr i8, ptr %i.i, i64 32       ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %i.r, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.t, label %rb_mut_owned_p.exit, label %.preheader.i.i.i, !prof !49

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.u = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174  ; 2 uses
  %i.w = icmp eq ptr %i.v, @mutex_data_type
  br i1 %i.w, label %rb_mut_owned_p.exit, label %.preheader.i.i.i, !llvm.loop !179

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.x = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @mutex_data_type) #17
  br label %rb_mut_owned_p.exit

rb_mut_owned_p.exit:                              ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %i.x, %.critedge.i.i.i ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.s, %bb.d ]
  %.val1.i = load i64, ptr %.1.i.i.i, align 8, !tbaa !180
  %i.y = icmp eq i64 %.val1.i, %.val.i
  %i.z = select i1 %i.y, i64 20, i64 0
  ret i64 %i.z
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_mut_owned_p(ptr noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val = load i64, ptr %i.a, align 8, !tbaa !182
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !169  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.q, label %mutex_ptr.exit, label %.preheader.i.i, !prof !49

end_hunk_2
begin_hunk_3_@rb_mut_owned_p:bb.a
  %i.w = select i1 %i.v, i64 20, i64 0
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_mutex_unlock(i64 noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !169  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.q, label %mutex_args_init.exit, label %.preheader.i.i.i, !prof !49

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.r = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !174  ; 2 uses
  %i.t = icmp eq ptr %i.s, @mutex_data_type
  br i1 %i.t, label %mutex_args_init.exit, label %.preheader.i.i.i, !llvm.loop !179

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_args_init.exit

mutex_args_init.exit:                             ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val2.val = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 56
  %.val2.val3 = load i64, ptr %i.y, align 8, !tbaa !182
  %i.z = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef %.1.i.i.i, ptr noundef %.val2.val, i64 noundef %.val2.val3) ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %do_mutex_unlock.exit, label %bb.e

bb.e:                                             ; preds = %mutex_args_init.exit
  %i.aa = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.z) #41
  unreachable

do_mutex_unlock.exit:                             ; preds = %mutex_args_init.exit
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_mutex_sleep(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call i64 @rb_mut_sleep(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %1)
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_mut_sleep(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.rb_mutex_sleep_arguments, align 8 ; 5 uses
  %i.a = icmp eq i64 %2, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @rb_time_interval(i64 noundef %2) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.c
  %i.g = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i.i, label %bb.d, label %.critedge.i.i.i, !prof !173

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !169  ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.p, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.r, label %mutex_ptr.exit.i, label %.preheader.i.i.i, !prof !49

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.f
  %.016.i.i.i = phi ptr [ %i.t, %bb.f ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.s = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !174  ; 2 uses
  %i.u = icmp eq ptr %i.t, @mutex_data_type
  br i1 %i.u, label %mutex_ptr.exit.i, label %.preheader.i.i.i, !llvm.loop !179

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.c
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_ptr.exit.i

mutex_ptr.exit.i:                                 ; preds = %bb.f, %.critedge.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.v, %.critedge.i.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.q, %bb.f ]
  %i.w = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val3.val.i = load ptr, ptr %i.w, align 8, !tbaa !11
  %i.x = getelementptr i8, ptr %0, i64 56
  %.val3.val4.i = load i64, ptr %i.x, align 8, !tbaa !182
  %i.y = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef %.1.i.i.i, ptr noundef %.val3.val.i, i64 noundef %.val3.val4.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %rb_mut_unlock.exit, label %bb.g

bb.g:                                             ; preds = %mutex_ptr.exit.i
  %i.z = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.y) #41
  unreachable

rb_mut_unlock.exit:                               ; preds = %mutex_ptr.exit.i
  %i.aa = tail call i64 @time(ptr noundef null) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %1, ptr %3, align 8, !tbaa !200
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.ab, align 8, !tbaa !202
  %i.ac = ptrtoint ptr %3 to i64
  %i.ad = call i64 @rb_ec_ensure(ptr noundef nonnull %0, ptr noundef nonnull @mutex_sleep_begin, i64 noundef %i.ac, ptr noundef nonnull @mutex_lock_uninterruptible, i64 noundef %1) #17
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !11 ; 4 uses
  %i.ae = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.af = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %i.ah = and i64 %i.ag, 8192
  %.not.i.i.i12 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_mut_unlock.exit
  %i.ai = lshr i64 %i.ag, 15
  %i.aj = and i64 %i.ai, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.i:                                             ; preds = %rb_mut_unlock.exit
  %i.ak = getelementptr i8, ptr %i.af, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %i.al, %bb.i ]
  %.not.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i, label %bb.j, label %bb.k, !prof !49

bb.j:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load atomic volatile i32, ptr %i.am monotonic, align 8
  %i.ao = getelementptr i8, ptr %0, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !50
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %i.an, %i.aq
  %.not16.i = icmp eq i32 %i.ar, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.l, !prof !49

bb.k:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.as = getelementptr i8, ptr %.val.i, i64 248  ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, -65
  store i8 %i.au, ptr %i.as, align 8
  %i.av = getelementptr i8, ptr %0, i64 32
  %i.aw = atomicrmw volatile or ptr %i.av, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ax = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.ax, 0
  br i1 %.not13.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %0, i64 32
  %i.az = load atomic volatile i32, ptr %i.ay monotonic, align 8
  %i.ba = getelementptr i8, ptr %0, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !50
  %i.bc = xor i32 %i.bb, -1
  %i.bd = and i32 %i.az, 10
  %i.be = and i32 %i.bd, %i.bc
  %.not17.i = icmp eq i32 %i.be, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.bf, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.bf) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.j, %bb.m, %bb.n, %bb.o
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %rb_long2num_inline.exit, label %bb.p

bb.p:                                             ; preds = %vm_check_ints_blocking.exit
  %i.bh = call i64 @time(ptr noundef null) #17
  %i.bi = sub i64 %i.bh, %i.aa                    ; 3 uses
  %i.bj = add i64 %i.bi, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.bj, -1
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = shl nsw i64 %i.bi, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %rb_long2num_inline.exit

bb.r:                                             ; preds = %bb.p
  %i.bm = call i64 @rb_int2big(i64 noundef %i.bi) #17
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.r, %bb.q, %vm_check_ints_blocking.exit
  %.0 = phi i64 [ 4, %vm_check_ints_blocking.exit ], [ %i.bl, %bb.q ], [ %i.bm, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_mutex_synchronize(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.mutex_args, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %0, ptr %3, align 8, !tbaa !186
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !169  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.q, label %mutex_args_init.exit, label %.preheader.i.i.i, !prof !49

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.r = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !174  ; 2 uses
  %i.t = icmp eq ptr %i.s, @mutex_data_type
  br i1 %i.t, label %mutex_args_init.exit, label %.preheader.i.i.i, !llvm.loop !179

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_args_init.exit

mutex_args_init.exit:                             ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.p, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.1.i.i.i, ptr %i.v, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !147
  store volatile ptr %i.x, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %i.y, align 8, !tbaa !189
  %i.z = call fastcc i64 @do_mutex_lock(ptr noundef %3, i32 noundef 1) ; 0 uses
  %i.aa = ptrtoint ptr %3 to i64
  %i.ab = call i64 @rb_ec_ensure(ptr noundef %.0..0..0..0..0..0..0..0..i.i, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @do_mutex_unlock_safe, i64 noundef %i.aa) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i64 %i.ab
}

declare i64 @rb_ec_ensure(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @do_mutex_unlock_safe(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !tbaa !189 ; 2 uses
  %i.d = getelementptr i8, ptr %.val1, i64 48
  %.val1.val = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %.val1, i64 56
  %.val1.val2 = load i64, ptr %i.e, align 8, !tbaa !182
  %i.f = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef %.val, ptr noundef %.val1.val, i64 noundef %.val1.val2) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %do_mutex_unlock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.f) #41
  unreachable

do_mutex_unlock.exit:                             ; preds = %bb.a
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_mut_synchronize(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.mutex_args, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 %1, ptr %2, align 8, !tbaa !186
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.p, label %mutex_ptr.exit, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @mutex_data_type
  br i1 %i.s, label %mutex_ptr.exit, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_ptr.exit

mutex_ptr.exit:                                   ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.1.i.i, ptr %i.u, align 8, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.v, align 8, !tbaa !189
end_hunk_3
begin_hunk_4_@rb_szqueue_push:bb.a
bb.n:                                             ; preds = %rb_num2long_inline.exit.i
  %i.ay = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aw, i64 1000000000) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  %i.ba = extractvalue { i64, i1 } %i.ay, 0
  %.0.i.i.i = select i1 %i.az, i64 -1, i64 %i.ba
  br label %queue_timeout2hrtime.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.bb = tail call double @rb_num2dbl(i64 noundef %4) #17 ; 3 uses
  %i.bc = fcmp ult double %i.bb, f0x43E0000000000000
  %i.bd = fcmp ugt double %i.bb, 0.000000e+00
  %i.be = fmul double %i.bb, 1.000000e+09
  %i.bf = fptoui double %i.be to i64
  %storemerge.i.i = select i1 %i.bd, i64 %i.bf, i64 0
  %storemerge9.i.i = select i1 %i.bc, i64 %storemerge.i.i, i64 -1
  br label %queue_timeout2hrtime.exit.thread

queue_timeout2hrtime.exit:                        ; preds = %bb.l
  %.val49 = load i64, ptr %i.af, align 1, !tbaa !209 ; 2 uses
  %.not.i.i3650 = icmp eq i64 %.val49, 0
  br i1 %.not.i.i3650, label %._crit_edge, label %check_array.exit.i37.us.preheader, !prof !211

queue_timeout2hrtime.exit.thread:                 ; preds = %rb_num2long_inline.exit.i, %bb.n, %bb.o
  %.08.i = phi i64 [ %storemerge9.i.i, %bb.o ], [ %.0.i.i.i, %bb.n ], [ 0, %rb_num2long_inline.exit.i ]
  %i.bg = tail call i64 @rb_hrtime_now()
  %.0.i7.i = tail call noundef i64 @llvm.uadd.sat.i64(i64 %.08.i, i64 %i.bg) ; 2 uses
  %.val4967 = load i64, ptr %i.af, align 1, !tbaa !209 ; 2 uses
  %.not.i.i365068 = icmp eq i64 %.val4967, 0
  br i1 %.not.i.i365068, label %._crit_edge, label %check_array.exit.i37.preheader, !prof !211

check_array.exit.i37.preheader:                   ; preds = %queue_timeout2hrtime.exit.thread
  %i.bh = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = getelementptr i8, ptr %0, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = getelementptr i8, ptr %0, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bo = getelementptr i8, ptr %.1.i.i, i64 40
  %i.bp = getelementptr i8, ptr %.1.i.i, i64 48   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.br = getelementptr i8, ptr %.1.i.i, i64 36   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bu = ptrtoint ptr %6 to i64
  %i.bv = ptrtoint ptr %5 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %check_array.exit.i37

check_array.exit.i37.us.preheader:                ; preds = %queue_timeout2hrtime.exit
  %i.bx = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bz = getelementptr i8, ptr %0, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cb = getelementptr i8, ptr %0, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ce = getelementptr i8, ptr %.1.i.i, i64 40
  %i.cf = getelementptr i8, ptr %.1.i.i, i64 48   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ch = getelementptr i8, ptr %.1.i.i, i64 36   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ck = ptrtoint ptr %6 to i64
  %i.cl = ptrtoint ptr %5 to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %check_array.exit.i37.us

check_array.exit.i37.us:                          ; preds = %check_array.exit.i37.us.preheader, %.critedge.us
  %.val51.us = phi i64 [ %.val.us, %.critedge.us ], [ %.val49, %check_array.exit.i37.us.preheader ] ; 2 uses
  %i.cn = inttoptr i64 %.val51.us to ptr          ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !46 ; 2 uses
  %i.cp = and i64 %i.co, 8192
  %.not.i1.i38.us = icmp eq i64 %i.cp, 0
  br i1 %.not.i1.i38.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %check_array.exit.i37.us
  %i.cq = lshr i64 %i.co, 15
  %i.cr = and i64 %i.cq, 127
  br label %queue_length.exit40.us

bb.q:                                             ; preds = %check_array.exit.i37.us
  %i.cs = getelementptr i8, ptr %i.cn, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !48
  br label %queue_length.exit40.us

queue_length.exit40.us:                           ; preds = %bb.q, %bb.p
  %.0.i.i39.us = phi i64 [ %i.cr, %bb.p ], [ %i.ct, %bb.q ]
  %i.cu = load i64, ptr %i.ao, align 1, !tbaa !210
  %.not31.us = icmp slt i64 %.0.i.i39.us, %i.cu
  br i1 %.not31.us, label %.split.us, label %bb.r

bb.r:                                             ; preds = %queue_length.exit40.us
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !46
  %i.cw = and i64 %i.cv, 131072
  %.not32.us = icmp eq i64 %i.cw, 0
  br i1 %.not32.us, label %.critedge.us, label %.split53.us

.critedge.us:                                     ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 %1, ptr %5, align 8, !tbaa !191
  %i.cx = load ptr, ptr %i.bz, align 8, !tbaa !11
  store ptr %i.cx, ptr %i.by, align 8, !tbaa !193
  %i.cy = load ptr, ptr %i.cb, align 8, !tbaa !190 ; 2 uses
  %i.cz = call i32 @rb_fiberptr_blocking(ptr noundef %i.cy) #17
  %.not.i.us = icmp eq i32 %i.cz, 0
  %..i.us = select i1 %.not.i.us, ptr %i.cy, ptr null
  store ptr %..i.us, ptr %i.ca, align 8, !tbaa !194
  store i64 0, ptr %i.cm, align 8
  store ptr %.1.i.i, ptr %i.cd, align 8, !tbaa !48
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !73
  %i.da = load ptr, ptr %i.cf, align 8, !tbaa !72 ; 2 uses
  store ptr %i.da, ptr %i.cg, align 8, !tbaa !72
  store ptr %i.cc, ptr %i.da, align 8, !tbaa !73
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !72
  %i.db = load i32, ptr %i.ch, align 4, !tbaa !207
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.ch, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i64 %1, ptr %6, align 8, !tbaa !212
  store i64 4, ptr %i.ci, align 8, !tbaa !214
  store i64 0, ptr %i.cj, align 8, !tbaa !215
  %i.dd = call i64 @rb_ensure(ptr noundef nonnull @queue_sleep, i64 noundef %i.ck, ptr noundef nonnull @szqueue_sleep_done, i64 noundef %i.cl) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.val.us = load i64, ptr %i.af, align 8, !tbaa !209 ; 2 uses
  %.not.i.i36.us = icmp eq i64 %.val.us, 0
  br i1 %.not.i.i36.us, label %._crit_edge, label %check_array.exit.i37.us, !prof !216

._crit_edge:                                      ; preds = %.critedge, %.critedge.us, %queue_timeout2hrtime.exit.thread, %queue_timeout2hrtime.exit
  %i.de = load i64, ptr @rb_eTypeError, align 8, !tbaa !144
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.de, ptr noundef nonnull @.str.162, i64 noundef %1) #41
  unreachable

check_array.exit.i37:                             ; preds = %check_array.exit.i37.preheader, %.critedge
  %.val51 = phi i64 [ %.val, %.critedge ], [ %.val4967, %check_array.exit.i37.preheader ] ; 2 uses
  %i.df = inttoptr i64 %.val51 to ptr             ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !46 ; 2 uses
  %i.dh = and i64 %i.dg, 8192
  %.not.i1.i38 = icmp eq i64 %i.dh, 0
  br i1 %.not.i1.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %check_array.exit.i37
  %i.di = lshr i64 %i.dg, 15
  %i.dj = and i64 %i.di, 127
  br label %queue_length.exit40

bb.t:                                             ; preds = %check_array.exit.i37
  %i.dk = getelementptr i8, ptr %i.df, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !48
  br label %queue_length.exit40

queue_length.exit40:                              ; preds = %bb.s, %bb.t
  %.0.i.i39 = phi i64 [ %i.dj, %bb.s ], [ %i.dl, %bb.t ]
  %i.dm = load i64, ptr %i.ao, align 1, !tbaa !210
  %.not31 = icmp slt i64 %.0.i.i39, %i.dm
  br i1 %.not31, label %.split.us, label %bb.u

bb.u:                                             ; preds = %queue_length.exit40
  %i.dn = load i64, ptr %i.bh, align 8, !tbaa !46
  %i.do = and i64 %i.dn, 131072
  %.not32 = icmp eq i64 %i.do, 0
  br i1 %.not32, label %bb.v, label %.split53.us

.split53.us:                                      ; preds = %bb.u, %bb.r
  call fastcc void @raise_closed_queue_error() #47
  unreachable

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 %1, ptr %5, align 8, !tbaa !191
  %i.dp = load ptr, ptr %i.bj, align 8, !tbaa !11
  store ptr %i.dp, ptr %i.bi, align 8, !tbaa !193
  %i.dq = load ptr, ptr %i.bl, align 8, !tbaa !190 ; 2 uses
  %i.dr = call i32 @rb_fiberptr_blocking(ptr noundef %i.dq) #17
  %.not.i = icmp eq i32 %i.dr, 0
  %..i = select i1 %.not.i, ptr %i.dq, ptr null
  store ptr %..i, ptr %i.bk, align 8, !tbaa !194
  store i64 0, ptr %i.bw, align 8
  store ptr %.1.i.i, ptr %i.bn, align 8, !tbaa !48
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !73
  %i.ds = load ptr, ptr %i.bp, align 8, !tbaa !72 ; 2 uses
  store ptr %i.ds, ptr %i.bq, align 8, !tbaa !72
  store ptr %i.bm, ptr %i.ds, align 8, !tbaa !73
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !72
  %i.dt = load i32, ptr %i.br, align 4, !tbaa !207
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.br, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i64 %1, ptr %6, align 8, !tbaa !212
  store i64 %4, ptr %i.bs, align 8, !tbaa !214
  store i64 %.0.i7.i, ptr %i.bt, align 8, !tbaa !215
  %i.dv = call i64 @rb_ensure(ptr noundef nonnull @queue_sleep, i64 noundef %i.bu, ptr noundef nonnull @szqueue_sleep_done, i64 noundef %i.bv) #17 ; 0 uses
  %i.dw = call i64 @rb_hrtime_now()
  %.not33 = icmp ult i64 %i.dw, %.0.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.not33, label %.critedge, label %.loopexit, !llvm.loop !217

.critedge:                                        ; preds = %bb.v
  %.val = load i64, ptr %i.af, align 8, !tbaa !209 ; 2 uses
  %.not.i.i36 = icmp eq i64 %.val, 0
  br i1 %.not.i.i36, label %._crit_edge, label %check_array.exit.i37, !prof !216

.split.us:                                        ; preds = %queue_length.exit40, %queue_length.exit40.us
  %i.dx = phi ptr [ %i.bx, %queue_length.exit40.us ], [ %i.bh, %queue_length.exit40 ]
  %.us-phi = phi i64 [ %.val51.us, %queue_length.exit40.us ], [ %.val51, %queue_length.exit40 ]
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !46
  %i.dz = and i64 %i.dy, 131072
  %.not.i41 = icmp eq i64 %i.dz, 0
  br i1 %.not.i41, label %queue_do_push.exit, label %bb.w

bb.w:                                             ; preds = %.split.us
  call fastcc void @raise_closed_queue_error() #47
  unreachable

queue_do_push.exit:                               ; preds = %.split.us
  %i.ea = call i64 @rb_ary_push(i64 noundef %.us-phi, i64 noundef %2) #17 ; 0 uses
  call fastcc void @sync_wakeup(ptr noundef nonnull readonly %.1.i.i, i64 noundef 1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %queue_do_push.exit, %bb.k
  %.3 = phi i64 [ 4, %bb.k ], [ %1, %queue_do_push.exit ], [ 4, %bb.v ]
  ret i64 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @builtin_inline_class_84(ptr readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.p, label %mutex_ptr.exit, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @mutex_data_type
  br i1 %i.s, label %mutex_ptr.exit, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_ptr.exit

mutex_ptr.exit:                                   ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %.val = load i64, ptr %.1.i.i, align 8, !tbaa !180
  %.not = icmp eq i64 %.val, 0
  %i.u = select i1 %.not, i64 0, i64 20
  ret i64 %i.u
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_mut_lock(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.mutex_args, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 %1, ptr %2, align 8, !tbaa !186
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.p, label %mutex_ptr.exit, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @mutex_data_type
  br i1 %i.s, label %mutex_ptr.exit, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_ptr.exit

mutex_ptr.exit:                                   ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.1.i.i, ptr %i.u, align 8, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.v, align 8, !tbaa !189
  %i.w = call fastcc i64 @do_mutex_lock(ptr noundef %2, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_mut_unlock(ptr noundef readonly captures(none) %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.p, label %mutex_ptr.exit, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @mutex_data_type
  br i1 %i.s, label %mutex_ptr.exit, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_ptr.exit

mutex_ptr.exit:                                   ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %0, i64 48
  %.val3.val = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.v = getelementptr i8, ptr %0, i64 56
  %.val3.val4 = load i64, ptr %i.v, align 8, !tbaa !182
end_hunk_4
begin_hunk_5_@rb_thread_terminate_all:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !230  ; 2 uses
  %.not = icmp eq ptr %i.j, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.44, ptr noundef %i.j, ptr noundef nonnull %0) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 360        ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %rb_threadptr_unlock_all_locking_mutexes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !185
  store ptr %i.n, ptr %i.k, align 8, !tbaa !184
  %i.o = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef nonnull %i.l, ptr noundef nonnull %0, i64 noundef 0) ; 2 uses
  %.not9.i = icmp eq ptr %i.o, null
  br i1 %.not9.i, label %bb.d, label %bb.f, !llvm.loop !225

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.o) #48
  unreachable

rb_threadptr_unlock_all_locking_mutexes.exit:     ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0.6 = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 3 uses
  store ptr %.0..0..0..0.6, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 0, ptr %i.p, align 8, !tbaa !231
  store i64 36, ptr %1, align 8, !tbaa !233
  %i.q = getelementptr i8, ptr %.0..0..0..0.6, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !235
  %i.t = getelementptr i8, ptr %.0..0..0..0.6, i64 48
  %.0.1.val = load ptr, ptr %i.t, align 8, !tbaa !11 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.g

bb.g:                                             ; preds = %rb_threadptr_unlock_all_locking_mutexes.exit
  %i.u = getelementptr i8, ptr %.0.1.val, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = getelementptr i8, ptr %.0.1.val, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.g, %rb_threadptr_unlock_all_locking_mutexes.exit
  %.0.i2.i = phi ptr [ %i.v, %bb.g ], [ null, %rb_threadptr_unlock_all_locking_mutexes.exit ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.x, %bb.g ], [ null, %rb_threadptr_unlock_all_locking_mutexes.exit ]
  %i.y = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.z = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.z, label %bb.h, label %rb_ec_vm_lock_rec.exit

bb.h:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.aa = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.h
  %.0.i = phi i32 [ %i.ab, %bb.h ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %.0.i, ptr %i.ac, align 4, !tbaa !236
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = tail call ptr @llvm.stacksave.p0()
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ad)
  %.not20 = icmp eq i32 %i.ah, 0
  br i1 %.not20, label %.thread, label %bb.y, !prof !49

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %1, ptr %i.q, align 8, !tbaa !234
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.z
  %i.ai = getelementptr i8, ptr %i.f, i64 184     ; 3 uses
  %.011.i = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 2 uses
  %.not12.i = icmp eq ptr %.011.i, %i.ai
  br i1 %.not12.i, label %terminate_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %rb_threadptr_interrupt.exit.i
  %.013.i = phi ptr [ %.0.i22, %rb_threadptr_interrupt.exit.i ], [ %.011.i, %bb.i ] ; 8 uses
  %.not8.i = icmp eq ptr %.013.i, %0
  br i1 %.not8.i, label %rb_threadptr_interrupt.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr i8, ptr %.013.i, i64 280
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !25
  %i.al = call i64 @rb_ary_push(i64 noundef %i.ak, i64 noundef 3) #17 ; 0 uses
  %i.am = getelementptr i8, ptr %.013.i, i64 248  ; 2 uses
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = and i8 %i.an, -65
  store i8 %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr i8, ptr %.013.i, i64 296  ; 2 uses
  %i.aq = call i32 @pthread_mutex_lock(ptr noundef %i.ap) #17 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %rb_native_mutex_lock.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.aq) #41
  unreachable

rb_native_mutex_lock.exit.i.i.i:                  ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %.013.i, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %i.au = atomicrmw volatile or ptr %i.at, i32 2 seq_cst, align 4 ; 0 uses
  %i.av = getelementptr i8, ptr %.013.i, i64 336
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i3.i.i.i, label %threadptr_set_interrupt_locked.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %rb_native_mutex_lock.exit.i.i.i
  %i.ax = getelementptr i8, ptr %.013.i, i64 344
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !77
  call void %i.aw(ptr noundef %i.ay) #17, !inline_history !237
  br label %threadptr_set_interrupt_locked.exit.i.i.i

threadptr_set_interrupt_locked.exit.i.i.i:        ; preds = %bb.l, %rb_native_mutex_lock.exit.i.i.i
  %i.az = call i32 @pthread_mutex_unlock(ptr noundef %i.ap) #17 ; 2 uses
  %.not.i4.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i4.i.i.i, label %rb_threadptr_interrupt.exit.i, label %bb.m

bb.m:                                             ; preds = %threadptr_set_interrupt_locked.exit.i.i.i
  call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.az) #41
  unreachable

rb_threadptr_interrupt.exit.i:                    ; preds = %threadptr_set_interrupt_locked.exit.i.i.i, %.lr.ph.i
  %.0.i22 = load ptr, ptr %.013.i, align 8, !tbaa !73 ; 2 uses
  %.not.i23 = icmp eq ptr %.0.i22, %i.ai
  br i1 %.not.i23, label %terminate_all.exit, label %.lr.ph.i, !llvm.loop !238

terminate_all.exit:                               ; preds = %rb_threadptr_interrupt.exit.i, %bb.i
  %i.ba = call i32 @rb_ractor_living_thread_num(ptr noundef %i.f) #17
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %terminate_all.exit
  %i.bc = getelementptr i8, ptr %0, i64 40
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %vm_check_ints_blocking.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 1000000000, ptr %i.d, align 8, !tbaa !144
  store volatile i32 1, ptr %i.b, align 4, !tbaa !7
  %.val.i = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.bd = getelementptr i8, ptr %.val.i, i64 104
  %.val.val.i = load i32, ptr %i.bd, align 8, !tbaa !65
  %i.be = icmp sgt i32 %.val.val.i, 0
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call fastcc void @native_cond_sleep(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  br label %native_sleep.exit

bb.p:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.bg = getelementptr i8, ptr %i.bf, i64 216
  %i.bh = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.bg, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %i.d) ; 0 uses
  br label %native_sleep.exit

native_sleep.exit:                                ; preds = %bb.o, %bb.p
  %.0..0..0..0.7 = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 6 uses
  %i.bi = getelementptr i8, ptr %.0..0..0..0.7, i64 48
  %.val.i25 = load ptr, ptr %i.bi, align 8, !tbaa !11 ; 4 uses
  %i.bj = getelementptr i8, ptr %.val.i25, i64 280
  %.val15.i = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bk = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46 ; 2 uses
  %i.bm = and i64 %i.bl, 8192
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %native_sleep.exit
  %i.bn = lshr i64 %i.bl, 15
  %i.bo = and i64 %i.bn, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.r:                                             ; preds = %native_sleep.exit
  %i.bp = getelementptr i8, ptr %i.bk, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.r, %bb.q
  %.0.i.i.i = phi i64 [ %i.bo, %bb.q ], [ %i.bq, %bb.r ]
  %.not.i26 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i26, label %bb.s, label %bb.t, !prof !49

bb.s:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.br = getelementptr i8, ptr %.0..0..0..0.7, i64 32
  %i.bs = load atomic volatile i32, ptr %i.br monotonic, align 8
  %i.bt = getelementptr i8, ptr %.0..0..0..0.7, i64 36
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !50
  %i.bv = xor i32 %i.bu, -1
  %i.bw = and i32 %i.bs, %i.bv
  %.not16.i = icmp eq i32 %i.bw, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.u, !prof !49

bb.t:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bx = getelementptr i8, ptr %.val.i25, i64 248 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8
  %i.bz = and i8 %i.by, -65
  store i8 %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr i8, ptr %.0..0..0..0.7, i64 32
  %i.cb = atomicrmw volatile or ptr %i.ca, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cc = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i25, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.cc, 0
  br i1 %.not13.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr i8, ptr %.0..0..0..0.7, i64 32
  %i.ce = load atomic volatile i32, ptr %i.cd monotonic, align 8
  %i.cf = getelementptr i8, ptr %.0..0..0..0.7, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !50
  %i.ch = xor i32 %i.cg, -1
  %i.ci = and i32 %i.ce, 10
  %i.cj = and i32 %i.ci, %i.ch
  %.not17.i = icmp eq i32 %i.cj, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ck = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i25) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.ck, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ck) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.s, %bb.v, %bb.w, %bb.x
  store volatile i32 0, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.cm = call i32 @rb_ractor_living_thread_num(ptr noundef %i.f) #17
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.n, label %.loopexit, !llvm.loop !239

bb.y:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  %i.co = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2) ; 0 uses
  %.0..0..0..0.5 = load volatile i32, ptr %i.b, align 4, !tbaa !7
  %.not21 = icmp eq i32 %.0..0..0..0.5, 0
  br i1 %.not21, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store volatile i32 0, ptr %i.b, align 4, !tbaa !7
  br label %bb.i

.loopexit:                                        ; preds = %vm_check_ints_blocking.exit, %terminate_all.exit, %bb.y
  %i.cp = load ptr, ptr %i.s, align 8, !tbaa !235
  %.0..0..0..0.4 = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.cq = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #16

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #17

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !231  ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !231
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !236  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !11 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.b, %bb.a
  %.0.i2.i.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.l, align 8, !tbaa !123
  %i.m = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %i.m, label %bb.c, label %rb_ec_vm_lock_rec.exit.i

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.n = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.c, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.o, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.d

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #17
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.d
  %i.p = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.q)
  ret i32 %i.d
}

declare i32 @rb_ractor_living_thread_num(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_free_native_thread(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %native_thread_destroy_atfork.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  tail call void @free(ptr noundef %i.d) #17
  %i.e = getelementptr i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98
  tail call void @ruby_xfree(ptr noundef %i.f) #17
  tail call void @ruby_xfree(ptr noundef nonnull %i.b) #17
  br label %native_thread_destroy_atfork.exit

native_thread_destroy_atfork.exit:                ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @ruby_thread_init_stack(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @native_thread_init_stack(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @native_thread_init_stack(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %union.pthread_attr_t, align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %union.pthread_attr_t, align 8      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %4 = alloca %struct.rlimit, align 8             ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = tail call i64 @pthread_self() #46        ; 4 uses
  %i.h = load i64, ptr @native_main_thread.0, align 8, !tbaa !240
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %native_thread_init_main_thread_stack.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.g, ptr @native_main_thread.0, align 8, !tbaa !240
  %i.i = load i64, ptr @native_main_thread.1, align 8, !tbaa !242
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %native_thread_init_main_thread_stack.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !144
  %i.j = call i32 @pthread_getattr_np(i64 noundef %i.g, ptr noundef nonnull %3) #17
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @pthread_attr_getstack(ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #17
  %.not21.i.i = icmp eq i32 %i.k, 0
  br i1 %.not21.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.m = load i64, ptr %i.d, align 8, !tbaa !144
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %i.c, align 8, !tbaa !52
  %i.o = call i32 @pthread_attr_getguardsize(ptr noundef nonnull %3, ptr noundef nonnull %i.b) #17
  %.not22.i.i = icmp eq i32 %i.o, 0
  br i1 %.not22.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.b, align 8, !tbaa !144
  %i.q = load i64, ptr %i.d, align 8, !tbaa !144
  %i.r = sub i64 %i.q, %i.p
  store i64 %i.r, ptr %i.d, align 8, !tbaa !144
  %i.s = call i32 @pthread_attr_destroy(ptr noundef nonnull %3) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.t = load i64, ptr %i.d, align 8, !tbaa !144  ; 2 uses
  store i64 %i.t, ptr @native_main_thread.1, align 8, !tbaa !242
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  store ptr %i.u, ptr @native_main_thread.2, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
end_hunk_5
begin_hunk_6_@thread_create_core:bb.a
  br label %.backedge.i.i.i

.thread59.i.i.i:                                  ; preds = %bb.ag, %bb.aq
  %i.ln = tail call ptr @rb_errno_ptr() #17, !inline_history !264
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !7
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread59.i.i.i, %nt_stack_chunk_get_stack.exit48.i.i.i, %bb.ac, %nt_stack_chunk_get_stack.exit.i.i.i
  %.026.i.i = phi ptr [ null, %.thread59.i.i.i ], [ null, %bb.ac ], [ %i.hf, %nt_stack_chunk_get_stack.exit48.i.i.i ], [ %i.eg, %nt_stack_chunk_get_stack.exit.i.i.i ]
  %.025.i.i = phi ptr [ null, %.thread59.i.i.i ], [ null, %bb.ac ], [ %i.hn, %nt_stack_chunk_get_stack.exit48.i.i.i ], [ %i.ep, %nt_stack_chunk_get_stack.exit.i.i.i ] ; 3 uses
  %.5.i.i.i = phi i32 [ %i.lo, %.thread59.i.i.i ], [ %i.he, %bb.ac ], [ 0, %nt_stack_chunk_get_stack.exit48.i.i.i ], [ 0, %nt_stack_chunk_get_stack.exit.i.i.i ] ; 2 uses
  %i.lp = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @nt_machine_stack_lock) #17, !inline_history !264 ; 2 uses
  %.not.i55.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i55.i.i.i, label %nt_alloc_stack.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %.thread.i.i.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.lp) #41, !inline_history !264
  unreachable

nt_alloc_stack.exit.i.i:                          ; preds = %.thread.i.i.i
  %.not.i7.i = icmp eq i32 %.5.i.i.i, 0
  br i1 %.not.i7.i, label %native_thread_create.exit, label %native_thread_create.exit.thread

native_thread_create.exit:                        ; preds = %nt_alloc_stack.exit.i.i
  %i.lq = load ptr, ptr %i.dt, align 8, !tbaa !57
  %i.lr = getelementptr i8, ptr %i.lq, i64 9520
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !162
  %i.lt = lshr i64 %i.ls, 3
  %i.lu = load ptr, ptr %i.s, align 8, !tbaa !67
  tail call void @rb_ec_initialize_vm_stack(ptr noundef %i.lu, ptr noundef %.026.i.i, i64 noundef %i.lt) #17, !inline_history !264
  %i.lv = getelementptr i8, ptr %i.du, i64 9528
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !154
  %i.lx = add i64 %i.lw, -16                      ; 3 uses
  %i.ly = ptrtoint ptr %.025.i.i to i64
  %i.lz = add i64 %i.lx, %i.ly
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = load ptr, ptr %i.s, align 8, !tbaa !67  ; 2 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 176
  store ptr %i.ma, ptr %i.mc, align 8, !tbaa !244
  %i.md = getelementptr i8, ptr %i.mb, i64 192
  store i64 %i.lx, ptr %i.md, align 8, !tbaa !245
  %i.me = getelementptr i8, ptr %i.d, i64 192
  store ptr %.025.i.i, ptr %i.me, align 8, !tbaa !153
  %i.mf = tail call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #50, !inline_history !264 ; 6 uses
  %i.mg = getelementptr i8, ptr %i.d, i64 200     ; 2 uses
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !97
  %i.mh = getelementptr i8, ptr %.025.i.i, i64 %i.lx
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = and i64 %i.mi, -16
  %i.mk = inttoptr i64 %i.mj to ptr
  %i.ml = getelementptr i8, ptr %i.mk, i64 -8     ; 2 uses
  store ptr %i.ml, ptr %i.mf, align 8, !tbaa !265
  store ptr null, ptr %i.ml, align 8, !tbaa !52
  %i.mm = load ptr, ptr %i.mf, align 8, !tbaa !265
  %i.mn = getelementptr i8, ptr %i.mm, i64 -8     ; 2 uses
  store ptr %i.mn, ptr %i.mf, align 8, !tbaa !265
  store ptr @co_start, ptr %i.mn, align 8, !tbaa !52
  %i.mo = load ptr, ptr %i.mf, align 8, !tbaa !265
  %i.mp = getelementptr i8, ptr %i.mo, i64 -48    ; 2 uses
  store ptr %i.mp, ptr %i.mf, align 8, !tbaa !265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mp, i8 0, i64 48, i1 false)
  %i.mq = load ptr, ptr %i.mg, align 8, !tbaa !97
  %i.mr = getelementptr i8, ptr %i.mq, i64 8
  store ptr %i.d, ptr %i.mr, align 8, !tbaa !267
  %i.ms = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.mt = getelementptr i8, ptr %i.ms, i64 216
  tail call fastcc void @thread_sched_to_ready(ptr noundef %i.mt, ptr noundef nonnull %i.d), !inline_history !264
  %i.mu = load ptr, ptr %i.dt, align 8, !tbaa !57
  %i.mv = tail call fastcc i32 @native_thread_check_and_create_shared(ptr noundef %i.mu), !inline_history !264 ; 2 uses
  %.not = icmp eq i32 %i.mv, 0
  br i1 %.not, label %bb.as, label %native_thread_create.exit.thread

native_thread_create.exit.thread:                 ; preds = %nt_alloc_stack.exit.i.i, %native_thread_alloc.exit.i.i, %native_thread_create.exit
  %.0.i5458 = phi i32 [ %i.mv, %native_thread_create.exit ], [ %.5.i.i.i, %nt_alloc_stack.exit.i.i ], [ %i.dq, %native_thread_alloc.exit.i.i ]
  %i.mw = load i8, ptr %i.ca, align 8
  %i.mx = or i8 %i.mw, 3
  store i8 %i.mx, ptr %i.ca, align 8
  %i.my = load ptr, ptr %i.cl, align 8, !tbaa !56
  tail call void @rb_ractor_living_threads_remove(ptr noundef %i.my, ptr noundef nonnull %i.d) #17
  %i.mz = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  %i.na = tail call ptr @strerror(i32 noundef %.0.i5458) #17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.mz, ptr noundef nonnull @.str.192, ptr noundef %i.na) #41
  unreachable

bb.as:                                            ; preds = %native_thread_create.exit.thread59, %native_thread_create.exit
  ret i64 %0
}

declare i64 @rb_thread_alloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_thread_create_ractor(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.thread_create_params, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 2, ptr %3, align 8, !tbaa !248
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.c, align 8, !tbaa !255
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.d, align 8, !tbaa !256
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.e, align 8, !tbaa !251
  %i.f = load i64, ptr @rb_cThread, align 8, !tbaa !144
  %i.g = tail call i64 @rb_thread_alloc(i64 noundef %i.f) #17 ; 2 uses
  %i.h = call fastcc i64 @thread_create_core(i64 noundef %i.g, ptr noundef %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i64 %i.g
}

; Function Attrs: noinline nounwind sspstrong uwtable
define hidden i64 @rb_hrtime_now() local_unnamed_addr #20 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #17
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %getclockofday.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rb_timespec_now(ptr noundef nonnull %0) #17
  br label %getclockofday.exit

getclockofday.exit:                               ; preds = %bb.a, %bb.b
  %.val = load i64, ptr %0, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.c, align 8, !tbaa !55
  %i.d = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val, i64 1000000000) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = call i64 @llvm.uadd.sat.i64(i64 %i.f, i64 %.val1)
  %.0.i2.i = select i1 %i.e, i64 -1, i64 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret i64 %.0.i2.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_thread_sleep_forever() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11
  tail call fastcc void @sleep_forever(ptr noundef %.val.i, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sleep_forever(ptr noundef %0, i32 noundef range(i32 1, 14) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248        ; 6 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i32 %1, 1                            ; 2 uses
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = add nuw nsw i32 %i.c, 1                  ; 3 uses
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = and i8 %i.b, -4
  %i.g = or disjoint i8 %i.f, %i.e
  store i8 %i.g, ptr %i.a, align 8
  %.not19 = icmp samesign ult i32 %1, 8
  br i1 %.not19, label %bb.b, label %vm_check_ints_blocking.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !11 ; 4 uses
  %i.k = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.k, align 8, !tbaa !25
  %i.l = inttoptr i64 %.val15.i to ptr            ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = and i64 %i.m, 8192
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.m, 15
  %i.p = and i64 %i.o, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.r, %bb.d ]
  %.not.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.s = getelementptr i8, ptr %i.i, i64 32
  %i.t = load atomic volatile i32, ptr %i.s monotonic, align 8
  %i.u = getelementptr i8, ptr %i.i, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %i.t, %i.w
  %.not16.i = icmp eq i32 %i.x, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.g, !prof !49

bb.f:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.y = getelementptr i8, ptr %.val.i, i64 248   ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, -65
  store i8 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr i8, ptr %i.i, i64 32
  %i.ac = atomicrmw volatile or ptr %i.ab, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.ad, 0
  br i1 %.not13.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.i, i64 32
  %i.af = load atomic volatile i32, ptr %i.ae monotonic, align 8
  %i.ag = getelementptr i8, ptr %i.i, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  %i.ai = xor i32 %i.ah, -1
  %i.aj = and i32 %i.af, 10
  %i.ak = and i32 %i.aj, %i.ai
  %.not17.i = icmp eq i32 %i.ak, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.al, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.al) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.j, %bb.i, %bb.h, %bb.e, %bb.a
  %i.an = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.ao = and i32 %1, 4
  %.not20 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr i8, ptr %0, i64 48
  %i.aq = and i32 %1, 2
  %.not22 = icmp eq i32 %i.aq, 0
  br i1 %.not20, label %vm_check_ints_blocking.exit.split.us, label %vm_check_ints_blocking.exit.split

vm_check_ints_blocking.exit.split.us:             ; preds = %vm_check_ints_blocking.exit, %vm_check_ints_blocking.exit34.us
  %i.ar = load i8, ptr %i.a, align 8
  %i.as = and i8 %i.ar, 3
  %i.at = zext nneg i8 %i.as to i32
  %i.au = icmp eq i32 %i.d, %i.at
  br i1 %i.au, label %bb.k, label %.split.us

bb.k:                                             ; preds = %vm_check_ints_blocking.exit.split.us
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !56 ; 3 uses
  br i1 %.not, label %.critedge.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.av, i64 208    ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !195
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !195
  tail call fastcc void @rb_check_deadlock(ptr noundef %i.av)
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.ba = getelementptr i8, ptr %i.az, i64 216
  tail call fastcc void @thread_sched_to_waiting_until_wakeup(ptr noundef %i.ba, ptr noundef nonnull %0)
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.bc = getelementptr i8, ptr %i.bb, i64 208    ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !195
  %i.be = add i32 %i.bd, -1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !195
  br label %bb.m

.critedge.us:                                     ; preds = %bb.k
  %i.bf = getelementptr i8, ptr %i.av, i64 216
  tail call fastcc void @thread_sched_to_waiting_until_wakeup(ptr noundef %i.bf, ptr noundef nonnull %0)
  br label %bb.m

bb.m:                                             ; preds = %.critedge.us, %bb.l
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !67 ; 6 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 48
  %.val.i23.us = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 4 uses
  %i.bi = getelementptr i8, ptr %.val.i23.us, i64 280
  %.val15.i24.us = load i64, ptr %i.bi, align 8, !tbaa !25
  %i.bj = inttoptr i64 %.val15.i24.us to ptr      ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !46 ; 2 uses
  %i.bl = and i64 %i.bk, 8192
  %.not.i.i.i25.us = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i25.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = lshr i64 %i.bk, 15
  %i.bn = and i64 %i.bm, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i26.us

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %i.bj, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i26.us

rb_threadptr_pending_interrupt_empty_p.exit.i26.us: ; preds = %bb.o, %bb.n
  %.0.i.i.i27.us = phi i64 [ %i.bn, %bb.n ], [ %i.bp, %bb.o ]
  %.not.i28.us = icmp eq i64 %.0.i.i.i27.us, 0
  br i1 %.not.i28.us, label %bb.q, label %bb.p, !prof !49

bb.p:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i26.us
  %i.bq = getelementptr i8, ptr %.val.i23.us, i64 248 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = and i8 %i.br, -65
  store i8 %i.bs, ptr %i.bq, align 8
  %i.bt = getelementptr i8, ptr %i.bg, i64 32
  %i.bu = atomicrmw volatile or ptr %i.bt, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i26.us
  %i.bv = getelementptr i8, ptr %i.bg, i64 32
  %i.bw = load atomic volatile i32, ptr %i.bv monotonic, align 8
  %i.bx = getelementptr i8, ptr %i.bg, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !50
  %i.bz = xor i32 %i.by, -1
  %i.ca = and i32 %i.bw, %i.bz
  %.not16.i33.us = icmp eq i32 %i.ca, 0
  br i1 %.not16.i33.us, label %vm_check_ints_blocking.exit34.us, label %bb.r, !prof !49

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cb = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i23.us, i32 noundef 1), !inline_history !51 ; 3 uses
  %.not13.i29.us = icmp eq i32 %i.cb, 0
  br i1 %.not13.i29.us, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr i8, ptr %i.bg, i64 32
  %i.cd = load atomic volatile i32, ptr %i.cc monotonic, align 8
  %i.ce = getelementptr i8, ptr %i.bg, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !50
  %i.cg = xor i32 %i.cf, -1
  %i.ch = and i32 %i.cd, 10
  %i.ci = and i32 %i.ch, %i.cg
  %.not17.i32.us = icmp eq i32 %i.ci, 0
  br i1 %.not17.i32.us, label %vm_check_ints_blocking.exit34.us, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cj = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i23.us) #17, !inline_history !51 ; 2 uses
  %.not14.i30.us = icmp eq i64 %i.cj, 4
  br i1 %.not14.i30.us, label %vm_check_ints_blocking.exit34.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.cj) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit34.us

vm_check_ints_blocking.exit34.us:                 ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %.0.i31.us = phi i32 [ 0, %bb.q ], [ %i.cb, %bb.t ], [ %i.cb, %bb.u ], [ 0, %bb.s ]
  %.not21.us = icmp ne i32 %.0.i31.us, 0
  %or.cond.us = and i1 %.not22, %.not21.us
  br i1 %or.cond.us, label %.split.us, label %vm_check_ints_blocking.exit.split.us, !llvm.loop !268

vm_check_ints_blocking.exit.split:                ; preds = %vm_check_ints_blocking.exit
  %i.cl = load i8, ptr %i.a, align 8
  %i.cm = and i8 %i.cl, 3
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = icmp eq i32 %i.d, %i.cn
  br i1 %i.co, label %bb.v, label %.split.us

bb.v:                                             ; preds = %vm_check_ints_blocking.exit.split
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !56 ; 3 uses
  br i1 %.not, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr i8, ptr %i.cp, i64 208    ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !195
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !195
  tail call fastcc void @rb_check_deadlock(ptr noundef %i.cp)
  %i.ct = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.cu = getelementptr i8, ptr %i.ct, i64 216
  tail call fastcc void @thread_sched_to_waiting_until_wakeup(ptr noundef %i.cu, ptr noundef nonnull %0)
  %i.cv = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.cw = getelementptr i8, ptr %i.cv, i64 208    ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !195
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !195
  br label %.split.us

.critedge:                                        ; preds = %bb.v
  %i.cz = getelementptr i8, ptr %i.cp, i64 216
  tail call fastcc void @thread_sched_to_waiting_until_wakeup(ptr noundef %i.cz, ptr noundef nonnull %0)
  br label %.split.us

.split.us:                                        ; preds = %vm_check_ints_blocking.exit.split.us, %vm_check_ints_blocking.exit34.us, %vm_check_ints_blocking.exit.split, %.critedge, %bb.w
  %i.da = and i8 %i.b, 3
  %i.db = load i8, ptr %i.a, align 8
  %i.dc = and i8 %i.db, -4
  %i.dd = or disjoint i8 %i.dc, %i.da
  store i8 %i.dd, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_thread_sleep_deadly() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11
  tail call fastcc void @sleep_forever(ptr noundef %.val.i, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_thread_wait_for(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 1000000000) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 1000) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = tail call i64 @llvm.uadd.sat.i64(i64 %i.g, i64 %i.j)
  %i.l = select i1 %i.f, i1 true, i1 %i.i
  %.0.i4.i = select i1 %i.l, i64 -1, i64 %i.k
  %i.m = tail call fastcc i32 @sleep_hrtime(ptr noundef %.val.i, i64 noundef %.0.i4.i, i32 noundef 2) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @sleep_hrtime(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !144
  %i.b = getelementptr i8, ptr %0, i64 248        ; 7 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = tail call i64 @rb_hrtime_now()
  %.0.i = tail call noundef i64 @llvm.uadd.sat.i64(i64 %i.d, i64 %1) ; 2 uses
  %i.e = load i8, ptr %i.b, align 8
  %i.f = and i8 %i.e, -4
  %i.g = or disjoint i8 %i.f, 1
  store i8 %i.g, ptr %i.b, align 8
  %i.h = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !11 ; 4 uses
  %i.k = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.k, align 8, !tbaa !25
  %i.l = inttoptr i64 %.val15.i to ptr            ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = and i64 %i.m, 8192
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i64 %i.m, 15
  %i.p = and i64 %i.o, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.p, %bb.b ], [ %i.r, %bb.c ]
  %.not.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.s = getelementptr i8, ptr %i.i, i64 32
  %i.t = load atomic volatile i32, ptr %i.s monotonic, align 8
  %i.u = getelementptr i8, ptr %i.i, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %i.t, %i.w
  %.not16.i = icmp eq i32 %i.x, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.f, !prof !49

bb.e:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.y = getelementptr i8, ptr %.val.i, i64 248   ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, -65
  store i8 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr i8, ptr %i.i, i64 32
  %i.ac = atomicrmw volatile or ptr %i.ab, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.ad, 0
  br i1 %.not13.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.i, i64 32
  %i.af = load atomic volatile i32, ptr %i.ae monotonic, align 8
  %i.ag = getelementptr i8, ptr %i.i, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  %i.ai = xor i32 %i.ah, -1
  %i.aj = and i32 %i.af, 10
  %i.ak = and i32 %i.aj, %i.ai
  %.not17.i = icmp eq i32 %i.ak, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.al, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.al) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.d, %bb.g, %bb.h, %bb.i
  %i.an = load i8, ptr %i.b, align 8              ; 2 uses
  %i.ao = and i8 %i.an, 3
  %i.ap = icmp eq i8 %i.ao, 1
  br i1 %i.ap, label %.lr.ph, label %hrtime_update_expire.exit.thread

.lr.ph:                                           ; preds = %vm_check_ints_blocking.exit
  %i.aq = getelementptr i8, ptr %0, i64 40
  %i.ar = getelementptr i8, ptr %0, i64 24
  %.not11 = icmp samesign ult i32 %2, 2
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %hrtime_update_expire.exit
  %.val.i15 = load ptr, ptr %i.aq, align 8, !tbaa !64
  %i.as = getelementptr i8, ptr %.val.i15, i64 104
  %.val.val.i = load i32, ptr %i.as, align 8, !tbaa !65
  %i.at = icmp sgt i32 %.val.val.i, 0
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @native_cond_sleep(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %native_sleep.exit

bb.l:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.av = getelementptr i8, ptr %i.au, i64 216
  %i.aw = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.av, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %i.a) ; 0 uses
  br label %native_sleep.exit

native_sleep.exit:                                ; preds = %bb.k, %bb.l
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !67  ; 6 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 48
  %.val.i16 = load ptr, ptr %i.ay, align 8, !tbaa !11 ; 4 uses
  %i.az = getelementptr i8, ptr %.val.i16, i64 280
  %.val15.i17 = load i64, ptr %i.az, align 8, !tbaa !25
  %i.ba = inttoptr i64 %.val15.i17 to ptr         ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = and i64 %i.bb, 8192
  %.not.i.i.i18 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %native_sleep.exit
  %i.bd = lshr i64 %i.bb, 15
  %i.be = and i64 %i.bd, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i19

bb.n:                                             ; preds = %native_sleep.exit
  %i.bf = getelementptr i8, ptr %i.ba, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i19

rb_threadptr_pending_interrupt_empty_p.exit.i19:  ; preds = %bb.n, %bb.m
  %.0.i.i.i20 = phi i64 [ %i.be, %bb.m ], [ %i.bg, %bb.n ]
  %.not.i21 = icmp eq i64 %.0.i.i.i20, 0
  br i1 %.not.i21, label %bb.o, label %bb.p, !prof !49

bb.o:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i19
  %i.bh = getelementptr i8, ptr %i.ax, i64 32
  %i.bi = load atomic volatile i32, ptr %i.bh monotonic, align 8
  %i.bj = getelementptr i8, ptr %i.ax, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !50
  %i.bl = xor i32 %i.bk, -1
  %i.bm = and i32 %i.bi, %i.bl
  %.not16.i26 = icmp eq i32 %i.bm, 0
  br i1 %.not16.i26, label %vm_check_ints_blocking.exit27.thread, label %bb.q, !prof !49

bb.p:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i19
  %i.bn = getelementptr i8, ptr %.val.i16, i64 248 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = and i8 %i.bo, -65
  store i8 %i.bp, ptr %i.bn, align 8
  %i.bq = getelementptr i8, ptr %i.ax, i64 32
  %i.br = atomicrmw volatile or ptr %i.bq, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bs = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i16, i32 noundef 1), !inline_history !51 ; 4 uses
  %.not13.i22 = icmp eq i32 %i.bs, 0
  br i1 %.not13.i22, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr i8, ptr %i.ax, i64 32
  %i.bu = load atomic volatile i32, ptr %i.bt monotonic, align 8
  %i.bv = getelementptr i8, ptr %i.ax, i64 36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !50
  %i.bx = xor i32 %i.bw, -1
  %i.by = and i32 %i.bu, 10
  %i.bz = and i32 %i.by, %i.bx
  %.not17.i25 = icmp eq i32 %i.bz, 0
  br i1 %.not17.i25, label %vm_check_ints_blocking.exit27.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ca = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i16) #17, !inline_history !51 ; 2 uses
  %.not14.i23 = icmp eq i64 %i.ca, 4
  br i1 %.not14.i23, label %vm_check_ints_blocking.exit27, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ca) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit27

vm_check_ints_blocking.exit27:                    ; preds = %bb.s, %bb.t
  %.not = icmp ne i32 %i.bs, 0
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %vm_check_ints_blocking.exit27.hrtime_update_expire.exit.thread.loopexit_crit_edge, label %vm_check_ints_blocking.exit27.thread

vm_check_ints_blocking.exit27.hrtime_update_expire.exit.thread.loopexit_crit_edge: ; preds = %vm_check_ints_blocking.exit27
  %.pre.pre = load i8, ptr %i.b, align 8
  br label %hrtime_update_expire.exit.thread

vm_check_ints_blocking.exit27.thread:             ; preds = %bb.r, %bb.o, %vm_check_ints_blocking.exit27
  %.0.i2433 = phi i32 [ %i.bs, %vm_check_ints_blocking.exit27 ], [ 0, %bb.o ], [ 0, %bb.r ]
  %i.cc = call i64 @rb_hrtime_now()               ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, %.0.i
  %.pre.pre38 = load i8, ptr %i.b, align 8        ; 3 uses
  br i1 %i.cd, label %hrtime_update_expire.exit.thread, label %hrtime_update_expire.exit

hrtime_update_expire.exit:                        ; preds = %vm_check_ints_blocking.exit27.thread
  %i.ce = sub nuw i64 %.0.i, %i.cc
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !144
  %i.cf = and i8 %.pre.pre38, 3
  %i.cg = icmp eq i8 %i.cf, 1
  br i1 %i.cg, label %bb.j, label %hrtime_update_expire.exit.thread, !llvm.loop !269

hrtime_update_expire.exit.thread:                 ; preds = %hrtime_update_expire.exit, %vm_check_ints_blocking.exit27.thread, %vm_check_ints_blocking.exit27.hrtime_update_expire.exit.thread.loopexit_crit_edge, %vm_check_ints_blocking.exit
  %i.ch = phi i8 [ %i.an, %vm_check_ints_blocking.exit ], [ %.pre.pre, %vm_check_ints_blocking.exit27.hrtime_update_expire.exit.thread.loopexit_crit_edge ], [ %.pre.pre38, %vm_check_ints_blocking.exit27.thread ], [ %.pre.pre38, %hrtime_update_expire.exit ]
  %.1 = phi i32 [ 1, %vm_check_ints_blocking.exit ], [ %i.bs, %vm_check_ints_blocking.exit27.hrtime_update_expire.exit.thread.loopexit_crit_edge ], [ 1, %hrtime_update_expire.exit ], [ %.0.i2433, %vm_check_ints_blocking.exit27.thread ]
  %i.ci = and i8 %i.c, 3
  %i.cj = and i8 %i.ch, -4
  %i.ck = or disjoint i8 %i.cj, %i.ci
  store i8 %i.ck, ptr %i.b, align 8
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ec_check_ints(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  %i.b = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.c = inttoptr i64 %.val15.i to ptr            ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = and i64 %i.d, 8192
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 15
  %i.g = and i64 %i.f, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %.not.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load atomic volatile i32, ptr %i.j monotonic, align 8
  %i.l = getelementptr i8, ptr %0, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %i.k, %i.n
  %.not16.i = icmp eq i32 %i.o, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.f, !prof !49

bb.e:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.p = getelementptr i8, ptr %.val.i, i64 248   ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, -65
  store i8 %i.r, ptr %i.p, align 8
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = atomicrmw volatile or ptr %i.s, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load atomic volatile i32, ptr %i.v monotonic, align 8
  %i.x = getelementptr i8, ptr %0, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !50
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %i.w, 10
  %i.ab = and i32 %i.aa, %i.z
  %.not17.i = icmp eq i32 %i.ab, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.ac, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ac) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.d, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_thread_check_ints() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !11 ; 4 uses
  %i.e = getelementptr i8, ptr %.val.i.i, i64 280
  %.val15.i.i = load i64, ptr %i.e, align 8, !tbaa !25
  %i.f = inttoptr i64 %.val15.i.i to ptr          ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = and i64 %i.g, 8192
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.g, 15
  %i.j = and i64 %i.i, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i.i

rb_threadptr_pending_interrupt_empty_p.exit.i.i:  ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %.not.i.i = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i.i
  %i.m = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.n = load atomic volatile i32, ptr %i.m monotonic, align 8
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = xor i32 %i.p, -1
  %i.r = and i32 %i.n, %i.q
  %.not16.i.i = icmp eq i32 %i.r, 0
  br i1 %.not16.i.i, label %rb_ec_check_ints.exit, label %bb.f, !prof !49

bb.e:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i.i
  %i.s = getelementptr i8, ptr %.val.i.i, i64 248 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = and i8 %i.t, -65
  store i8 %i.u, ptr %i.s, align 8
  %i.v = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.w = atomicrmw volatile or ptr %i.v, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i.i, i32 noundef 1), !inline_history !51
  %.not13.i.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.z = load atomic volatile i32, ptr %i.y monotonic, align 8
  %i.aa = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !50
  %i.ac = xor i32 %i.ab, -1
  %i.ad = and i32 %i.z, 10
  %i.ae = and i32 %i.ad, %i.ac
  %.not17.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not17.i.i, label %rb_ec_check_ints.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i.i) #17, !inline_history !51 ; 2 uses
  %.not14.i.i = icmp eq i64 %i.af, 4
  br i1 %.not14.i.i, label %rb_ec_check_ints.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.af) #17, !inline_history !51 ; 0 uses
  br label %rb_ec_check_ints.exit

rb_ec_check_ints.exit:                            ; preds = %bb.d, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_thread_check_trap_pending() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_signal_buff_size() #17
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare i32 @rb_signal_buff_size() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_thread_interrupted(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ruby_threadptr_data_type) #17
  %i.b = getelementptr i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %i.e = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.f = getelementptr i8, ptr %i.c, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.e, 10
  %i.j = and i32 %i.i, %i.h
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  ret i32 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_thread_sleep(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = sext i32 %0 to i64
  %i.c = shl nsw i64 %i.b, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = tail call { i64, i64 } @rb_time_timeval(i64 noundef %i.d) #17 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !147
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 1000000000) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 1000) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0
  %i.q = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.p)
  %i.r = select i1 %i.l, i1 true, i1 %i.o
  %.0.i4.i.i = select i1 %i.r, i64 -1, i64 %i.q
  %i.s = tail call fastcc i32 @sleep_hrtime(ptr noundef %.val.i.i, i64 noundef %.0.i4.i.i, i32 noundef 2) ; 0 uses
  ret void
}

declare { i64, i64 } @rb_time_timeval(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_thread_schedule() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call fastcc void @rb_thread_schedule_limits(i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.e = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.e, %i.h
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %rb_vm_check_ints.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.k = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i, i32 noundef 0) ; 0 uses
  br label %rb_vm_check_ints.exit

rb_vm_check_ints.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_thread_schedule_limits(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_thread_alone.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %rb_thread_alone.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  br label %rb_thread_alone.exit

rb_thread_alone.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.c, %bb.a ], [ %i.h, %bb.c ], [ null, %bb.b ]
  %i.i = call i32 @rb_ractor_living_thread_num(ptr noundef %.0.i.i.i) #17
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %rb_ractor_thread_switch.exit, label %bb.d

bb.d:                                             ; preds = %rb_thread_alone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !11 ; 15 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 252   ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !100
  %.not7 = icmp ult i32 %i.n, %0
  br i1 %.not7, label %rb_ractor_thread_switch.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val.i, i64 48    ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = getelementptr i8, ptr %i.p, i64 200
  %i.r = call i32 @_setjmp(ptr noundef %i.q) #45  ; 0 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.t = getelementptr i8, ptr %i.s, i64 184
  %i.u = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !270
  store ptr %i.u, ptr %i.t, align 8, !tbaa !69
  %i.v = getelementptr i8, ptr %.val.i, i64 24    ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 8 uses
  %i.x = getelementptr i8, ptr %i.w, i64 216      ; 5 uses
  %i.y = call i32 @pthread_mutex_lock(ptr noundef %i.x) #17 ; 2 uses
  %.not.i.i.i8 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i8, label %thread_sched_lock_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.y) #41
  unreachable

thread_sched_lock_.exit.i:                        ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.w, i64 272      ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %thread_sched_lock_.exit.i
  %i.ab = load ptr, ptr @rb_internal_thread_event_hooks, align 8, !tbaa !70
  %.not16.i = icmp eq ptr %i.ab, null
  br i1 %.not16.i, label %bb.i, label %bb.h, !prof !49

bb.h:                                             ; preds = %bb.g
  call fastcc void @rb_thread_execute_hooks(i32 noundef 8, ptr noundef nonnull %.val.i)
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi ptr [ %.pre.i, %bb.h ], [ %i.aa, %bb.g ] ; 7 uses
  %i.ad = getelementptr i8, ptr %.val.i, i64 40   ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.ac, %i.z
  br i1 %.not.i.i18.i, label %thread_sched_deq.exit.i.thread.i, label %thread_sched_deq.exit.i.i
end_hunk_6
begin_hunk_7_@ubf_select:bb.a
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %timer_thread_wakeup_locked.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @timer_th, i64 20), align 4, !tbaa !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 1, ptr %i.a, align 8, !tbaa !144
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.preheader.i.i.i.i.i, label %timer_thread_wakeup_force.exit.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.h, %bb.i
  %i.w = call i64 @write(i32 noundef %i.u, ptr noundef nonnull %i.a, i64 noundef 8) #17
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %timer_thread_wakeup_force.exit.i.i.i

bb.i:                                             ; preds = %.preheader.i.i.i.i.i
  %i.y = tail call ptr @rb_errno_ptr() #17
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7    ; 2 uses
  switch i32 %i.z, label %bb.j [
    i32 4, label %.preheader.i.i.i.i.i
    i32 11, label %timer_thread_wakeup_force.exit.i.i.i
  ]

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @async_bug_fd(ptr noundef nonnull @.str.132, i32 noundef %i.z, i32 noundef %i.u) #47
  unreachable

timer_thread_wakeup_force.exit.i.i.i:             ; preds = %bb.i, %.preheader.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %timer_thread_wakeup_locked.exit.i.i

timer_thread_wakeup_locked.exit.i.i:              ; preds = %timer_thread_wakeup_force.exit.i.i.i, %bb.g, %ractor_sched_lock_.exit.i.i
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef %i.m) #17 ; 2 uses
  %.not.i.i3.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i3.i.i, label %register_ubf_list.exit, label %bb.k

bb.k:                                             ; preds = %timer_thread_wakeup_locked.exit.i.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.aa) #41
  unreachable

register_ubf_list.exit:                           ; preds = %timer_thread_wakeup_locked.exit.i.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_nogvl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_fiber_scheduler_blocking_operation_state, align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.rb_blocking_region_buffer, align 4 ; 4 uses
  %i.c = and i32 %4, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @rb_fiber_scheduler_current() #17 ; 2 uses
  %.not41 = icmp eq i64 %i.d, 4
  br i1 %.not41, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.e = call i64 @rb_fiber_scheduler_blocking_operation_wait(i64 noundef %i.d, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5) #17
  %i.f = icmp eq i64 %i.e, 36
  br i1 %i.f, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !271
  call void @rb_errno_set(i32 noundef %i.h) #17
  %i.i = load ptr, ptr %5, align 8, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.u

select.unfold:                                    ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.thread

.thread:                                          ; preds = %select.unfold, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val = load ptr, ptr %i.l, align 8, !tbaa !11  ; 10 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %rb_ec_vm_ptr.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.m = getelementptr i8, ptr %.val, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  br label %rb_ec_vm_ptr.exit

rb_ec_vm_ptr.exit:                                ; preds = %.thread, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ null, %.thread ] ; 3 uses
  %i.o = getelementptr i8, ptr %.0.i, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.q = icmp ne ptr %i.p, %.val                  ; 2 uses
  %magicptr = ptrtoint ptr %2 to i64
  switch i64 %magicptr, label %rb_thread_resolve_unblock_function.exit.thread.fold.split [
    i64 -1, label %rb_thread_resolve_unblock_function.exit.thread
    i64 0, label %bb.g
  ]

rb_thread_resolve_unblock_function.exit.thread.fold.split: ; preds = %rb_ec_vm_ptr.exit
  br label %rb_thread_resolve_unblock_function.exit.thread

rb_thread_resolve_unblock_function.exit.thread:   ; preds = %rb_ec_vm_ptr.exit, %rb_thread_resolve_unblock_function.exit.thread.fold.split
  %.05463 = phi ptr [ %.val, %rb_ec_vm_ptr.exit ], [ %3, %rb_thread_resolve_unblock_function.exit.thread.fold.split ] ; 2 uses
  %.05561 = phi ptr [ @ubf_select, %rb_ec_vm_ptr.exit ], [ %2, %rb_thread_resolve_unblock_function.exit.thread.fold.split ] ; 2 uses
  %i.r = getelementptr i8, ptr %.val, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.t = call i32 @rb_ractor_living_thread_num(ptr noundef %i.s) #17
  %i.u = icmp ne i32 %i.t, 1
  %or.cond.not69 = select i1 %i.u, i1 true, i1 %i.q
  %i.v = and i32 %4, 2
  %.not43 = icmp eq i32 %i.v, 0
  %or.cond45 = or i1 %.not43, %or.cond.not69
  br i1 %or.cond45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_thread_resolve_unblock_function.exit.thread
  %i.w = getelementptr i8, ptr %.0.i, i64 504
  store volatile i32 1, ptr %i.w, align 8, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %rb_ec_vm_ptr.exit, %bb.f, %rb_thread_resolve_unblock_function.exit.thread
  %.05464 = phi ptr [ %.05463, %bb.f ], [ %.05463, %rb_thread_resolve_unblock_function.exit.thread ], [ %3, %rb_ec_vm_ptr.exit ]
  %.05562 = phi ptr [ %.05561, %bb.f ], [ %.05561, %rb_thread_resolve_unblock_function.exit.thread ], [ null, %rb_ec_vm_ptr.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile ptr %.0.i, ptr %i.b, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.x = and i32 %4, 1                            ; 2 uses
  %i.y = call fastcc i32 @blocking_region_begin(ptr noundef %.val, ptr noundef %6, ptr noundef %.05562, ptr noundef %.05464, i32 noundef %i.x)
  %.not44 = icmp eq i32 %i.y, 0
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %.val, i64 48      ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ab = getelementptr i8, ptr %i.aa, i64 200
  %i.ac = call i32 @_setjmp(ptr noundef %i.ab) #45 ; 0 uses
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ae = getelementptr i8, ptr %i.ad, i64 184
  %i.af = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !274
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !69
  %i.ag = getelementptr i8, ptr %.val, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ai = getelementptr i8, ptr %i.ah, i64 216
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.ai, ptr noundef %.val)
  %i.aj = call ptr %0(ptr noundef %1) #17
  %i.ak = call i32 @rb_errno() #17
  call fastcc void @blocking_region_end(ptr noundef %.val, ptr noundef %6)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.039 = phi ptr [ %i.aj, %bb.h ], [ null, %bb.g ]
  %.0 = phi i32 [ %i.ak, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.0..0..0..0. = load volatile ptr, ptr %i.b, align 8, !tbaa !145
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.0..0..0..0., i64 504
  store volatile i32 0, ptr %i.al, align 8, !tbaa !167
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = icmp eq i32 %i.x, 0
  br i1 %i.am, label %bb.l, label %vm_check_ints_blocking.exit

bb.l:                                             ; preds = %bb.k
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !11 ; 4 uses
  %i.an = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.an, align 8, !tbaa !25
  %i.ao = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = and i64 %i.ap, 8192
  %.not.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = lshr i64 %i.ap, 15
  %i.as = and i64 %i.ar, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.n:                                             ; preds = %bb.l
  %i.at = getelementptr i8, ptr %i.ao, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi i64 [ %i.as, %bb.m ], [ %i.au, %bb.n ]
  %.not.i47 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i47, label %bb.o, label %bb.p, !prof !49

bb.o:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.av = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.aw = load atomic volatile i32, ptr %i.av monotonic, align 8
  %i.ax = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  %i.az = xor i32 %i.ay, -1
  %i.ba = and i32 %i.aw, %i.az
  %.not16.i = icmp eq i32 %i.ba, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.q, !prof !49

bb.p:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bb = getelementptr i8, ptr %.val.i, i64 248  ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = and i8 %i.bc, -65
  store i8 %i.bd, ptr %i.bb, align 8
  %i.be = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.bf = atomicrmw volatile or ptr %i.be, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bg = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.bg, 0
  br i1 %.not13.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.bi = load atomic volatile i32, ptr %i.bh monotonic, align 8
  %i.bj = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !50
  %i.bl = xor i32 %i.bk, -1
  %i.bm = and i32 %i.bi, 10
  %i.bn = and i32 %i.bm, %i.bl
  %.not17.i = icmp eq i32 %i.bn, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bo = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.bo, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.bo) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.t, %bb.s, %bb.r, %bb.o, %bb.k
  call void @rb_errno_set(i32 noundef %.0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %vm_check_ints_blocking.exit
  %.3 = phi ptr [ %.039, %vm_check_ints_blocking.exit ], [ %i.i, %bb.d ]
  ret ptr %.3
}

declare i64 @rb_fiber_scheduler_current() local_unnamed_addr #4

declare i64 @rb_fiber_scheduler_blocking_operation_wait(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_errno_set(i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @blocking_region_begin(ptr noundef %0, ptr noundef nonnull initializes((0, 4)) %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248        ; 3 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 3
  %i.d = zext nneg i8 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !275
  %.not.i = icmp eq i32 %4, 0
  %i.e = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 296        ; 5 uses
  br i1 %.not.i, label %rb_native_mutex_unlock.exit.us.i, label %rb_native_mutex_unlock.exit.i

rb_native_mutex_unlock.exit.us.i:                 ; preds = %bb.a, %bb.d
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = getelementptr i8, ptr %i.g, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  %i.l = xor i32 %i.k, -1
  %i.m = and i32 %i.i, %i.l
  %.not.i.us.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.us.i, label %rb_vm_check_ints.exit.us.i, label %bb.b, !prof !49

bb.b:                                             ; preds = %rb_native_mutex_unlock.exit.us.i
  %i.n = getelementptr i8, ptr %i.g, i64 48
  %.val.i.us.i = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.o = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.us.i, i32 noundef 0) ; 0 uses
  br label %rb_vm_check_ints.exit.us.i

rb_vm_check_ints.exit.us.i:                       ; preds = %bb.b, %rb_native_mutex_unlock.exit.us.i
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i13.us.i = icmp eq i32 %i.p, 0
  br i1 %.not.i13.us.i, label %rb_native_mutex_lock.exit.us.i, label %.split26.us.i

rb_native_mutex_lock.exit.us.i:                   ; preds = %rb_vm_check_ints.exit.us.i
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 144
  %i.s = load i8, ptr %i.r, align 8, !tbaa !76
  %.not12.us.i = icmp eq i8 %i.s, 0
  br i1 %.not12.us.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %rb_native_mutex_lock.exit.us.i
  %i.t = getelementptr i8, ptr %i.q, i64 32
  %i.u = load atomic volatile i32, ptr %i.t monotonic, align 8
  %i.v = getelementptr i8, ptr %i.q, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !50
  %i.x = xor i32 %i.w, -1
  %i.y = and i32 %i.u, %i.x
  %.not18.us.i = icmp eq i32 %i.y, 0
  br i1 %.not18.us.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i14.us.i = icmp eq i32 %i.z, 0
  br i1 %.not.i14.us.i, label %rb_native_mutex_unlock.exit.us.i, label %.split29.us.i, !llvm.loop !277

rb_native_mutex_unlock.exit.i:                    ; preds = %bb.a, %bb.f
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = getelementptr i8, ptr %i.aa, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.ac, %i.af
  %.not17.i = icmp eq i32 %i.ag, 0
  br i1 %.not17.i, label %rb_vm_check_ints.exit.i, label %unblock_function_set.exit.thread

rb_vm_check_ints.exit.i:                          ; preds = %rb_native_mutex_unlock.exit.i
  %i.ah = tail call i32 @pthread_mutex_lock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i13.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i13.i, label %rb_native_mutex_lock.exit.i, label %.split26.us.i

.split26.us.i:                                    ; preds = %rb_vm_check_ints.exit.i, %rb_vm_check_ints.exit.us.i
  %.us-phi.i = phi i32 [ %i.p, %rb_vm_check_ints.exit.us.i ], [ %i.ah, %rb_vm_check_ints.exit.i ]
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %.us-phi.i) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %rb_vm_check_ints.exit.i
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !67  ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 144
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !76
  %.not12.i = icmp eq i8 %i.ak, 0
  br i1 %.not12.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %rb_native_mutex_lock.exit.i
  %i.al = getelementptr i8, ptr %i.ai, i64 32
  %i.am = load atomic volatile i32, ptr %i.al monotonic, align 8
  %i.an = getelementptr i8, ptr %i.ai, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !50
  %i.ap = xor i32 %i.ao, -1
  %i.aq = and i32 %i.am, %i.ap
  %.not18.i = icmp eq i32 %i.aq, 0
  br i1 %.not18.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call i32 @pthread_mutex_unlock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i14.i, label %rb_native_mutex_unlock.exit.i, label %.split29.us.i, !llvm.loop !277

.split29.us.i:                                    ; preds = %bb.f, %bb.d
  %.us-phi30.i = phi i32 [ %i.z, %bb.d ], [ %i.ar, %bb.f ]
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %.us-phi30.i) #41
  unreachable

.critedge.i:                                      ; preds = %bb.e, %rb_native_mutex_lock.exit.i, %bb.c, %rb_native_mutex_lock.exit.us.i
  %i.as = getelementptr i8, ptr %0, i64 336
  store ptr %2, ptr %i.as, align 8, !tbaa !75
  %i.at = getelementptr i8, ptr %0, i64 344
  store ptr %3, ptr %i.at, align 8, !tbaa !77
  %i.au = tail call i32 @pthread_mutex_unlock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i15.i = icmp eq i32 %i.au, 0
  br i1 %.not.i15.i, label %unblock_function_set.exit, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.au) #41
  unreachable

unblock_function_set.exit:                        ; preds = %.critedge.i
  %i.av = getelementptr i8, ptr %0, i64 256
  store ptr %1, ptr %i.av, align 8, !tbaa !278
  %i.aw = load i8, ptr %i.a, align 8
  %i.ax = and i8 %i.aw, -4
  %i.ay = or disjoint i8 %i.ax, 1
  store i8 %i.ay, ptr %i.a, align 8
  %i.az = getelementptr i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !56
  tail call void @rb_ractor_blocking_threads_inc(ptr noundef %i.ba, ptr noundef nonnull @.str.47, i32 noundef 1535) #17
  br label %unblock_function_set.exit.thread

unblock_function_set.exit.thread:                 ; preds = %rb_native_mutex_unlock.exit.i, %unblock_function_set.exit
  %.0 = phi i32 [ 1, %unblock_function_set.exit ], [ 0, %rb_native_mutex_unlock.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @thread_sched_to_waiting(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %thread_sched_lock_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.a) #41
  unreachable

thread_sched_lock_.exit:                          ; preds = %bb.a
  %i.b = load ptr, ptr @rb_internal_thread_event_hooks, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %thread_sched_lock_.exit
  tail call fastcc void @rb_thread_execute_hooks(i32 noundef 8, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %thread_sched_lock_.exit
  %i.c = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr i8, ptr %i.f, i64 104      ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !65   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %native_thread_dedicated_inc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.d, i64 160      ; 2 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef %i.j) #17 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %ractor_sched_lock_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.k) #41
  unreachable

ractor_sched_lock_.exit.i.i:                      ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.d, i64 264      ; 2 uses
  %i.m = load <2 x i32>, ptr %i.l, align 8, !tbaa !7
  %i.n = add <2 x i32> %i.m, <i32 -1, i32 1>
  store <2 x i32> %i.n, ptr %i.l, align 8, !tbaa !7
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef %i.j) #17 ; 2 uses
  %.not.i.i8.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i8.i.i, label %ractor_sched_lock_.exit.ractor_sched_unlock_.exit_crit_edge.i.i, label %bb.g

ractor_sched_lock_.exit.ractor_sched_unlock_.exit_crit_edge.i.i: ; preds = %ractor_sched_lock_.exit.i.i
  %.pre.i.i = load i32, ptr %i.g, align 8, !tbaa !65
  br label %native_thread_dedicated_inc.exit.i

bb.g:                                             ; preds = %ractor_sched_lock_.exit.i.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.o) #41
  unreachable

native_thread_dedicated_inc.exit.i:               ; preds = %ractor_sched_lock_.exit.ractor_sched_unlock_.exit_crit_edge.i.i, %bb.d
  %i.p = phi i32 [ %.pre.i.i, %ractor_sched_lock_.exit.ractor_sched_unlock_.exit_crit_edge.i.i ], [ %i.h, %bb.d ]
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.g, align 8, !tbaa !65
  %i.r = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58   ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %thread_sched_deq.exit.i.thread.i, label %thread_sched_deq.exit.i.i

thread_sched_deq.exit.i.thread.i:                 ; preds = %native_thread_dedicated_inc.exit.i
  %i.t = getelementptr i8, ptr %0, i64 40
  store ptr null, ptr %i.t, align 8, !tbaa !74
  br label %bb.h

thread_sched_deq.exit.i.i:                        ; preds = %native_thread_dedicated_inc.exit.i
  %i.u = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !73   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !72
  store ptr %i.w, ptr %i.v, align 8, !tbaa !73
  %i.y = getelementptr i8, ptr %i.s, i64 -72      ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !60
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !60
  store ptr %i.s, ptr %i.u, align 8, !tbaa !72
  store ptr %i.s, ptr %i.s, align 8, !tbaa !73
  %i.ac = getelementptr i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !74
  tail call fastcc void @thread_sched_wakeup_running_thread(ptr noundef %i.y, i1 noundef zeroext false)
  %.not.i.i6 = icmp eq ptr %1, %i.y
  br i1 %.not.i.i6, label %thread_sched_to_waiting_common.exit, label %bb.h

bb.h:                                             ; preds = %thread_sched_deq.exit.i.i, %thread_sched_deq.exit.i.thread.i
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !57
  tail call fastcc void @thread_sched_setup_running_threads(ptr noundef nonnull %0, ptr noundef %i.ad, ptr noundef null, ptr noundef nonnull %1, ptr noundef null)
  br label %thread_sched_to_waiting_common.exit

thread_sched_to_waiting_common.exit:              ; preds = %thread_sched_deq.exit.i.i, %bb.h
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #17 ; 2 uses
  %.not.i.i7 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i7, label %thread_sched_unlock_.exit, label %bb.i

bb.i:                                             ; preds = %thread_sched_to_waiting_common.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.ae) #41
  unreachable

thread_sched_unlock_.exit:                        ; preds = %thread_sched_to_waiting_common.exit
  ret void
}

declare i32 @rb_errno() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @blocking_region_end(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef %i.a) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %rb_native_mutex_lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.b) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 336
  store ptr null, ptr %i.c, align 8, !tbaa !75
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef %i.a) #17 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.d, 0
  br i1 %.not.i3.i, label %unblock_function_clear.exit, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_lock.exit.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.d) #41
  unreachable

unblock_function_clear.exit:                      ; preds = %rb_native_mutex_lock.exit.i
  %i.e = getelementptr i8, ptr %0, i64 56         ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %unregister_ubf_list.exit, label %bb.d

bb.d:                                             ; preds = %unblock_function_clear.exit
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @ubf_list_lock) #17 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i11, label %rb_native_mutex_lock.exit.i12, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.g) #41
  unreachable

rb_native_mutex_lock.exit.i12:                    ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
end_hunk_7
begin_hunk_8_@rb_thread_io_blocking_call:bb.a
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  br label %rb_io_blocking_operation_enter.exit

bb.c:                                             ; preds = %thread_io_mn_schedulable.exit
  %i.af = getelementptr i8, ptr %0, i64 216
  store ptr %.phi.trans.insert.i, ptr %i.af, align 8, !tbaa !59
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !284
  br label %rb_io_blocking_operation_enter.exit

rb_io_blocking_operation_enter.exit:              ; preds = %.rb_io_blocking_operations.exit_crit_edge.i, %bb.c
  %i.ag = phi ptr [ %.pre.i, %.rb_io_blocking_operations.exit_crit_edge.i ], [ %.phi.trans.insert.i, %bb.c ] ; 2 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.phi.trans.insert.i, ptr %i.ah, align 8, !tbaa !72
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr %4, ptr %i.ai, align 8, !tbaa !72
  store ptr %4, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.0..0..0..0.29 = load volatile ptr, ptr %i.b, align 8, !tbaa !147 ; 3 uses
  store ptr %.0..0..0..0.29, ptr %i.g, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.aj, align 8, !tbaa !231
  store i64 36, ptr %5, align 8, !tbaa !233
  %i.ak = getelementptr i8, ptr %.0..0..0..0.29, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !234
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !235
  %i.an = getelementptr i8, ptr %.0..0..0..0.29, i64 48
  %.0.2.val = load ptr, ptr %i.an, align 8, !tbaa !11 ; 3 uses
  %.not.i.i46 = icmp eq ptr %.0.2.val, null
  br i1 %.not.i.i46, label %rb_ec_ractor_ptr.exit.i, label %bb.d

bb.d:                                             ; preds = %rb_io_blocking_operation_enter.exit
  %i.ao = getelementptr i8, ptr %.0.2.val, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = getelementptr i8, ptr %.0.2.val, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.d, %rb_io_blocking_operation_enter.exit
  %.0.i2.i = phi ptr [ %i.ap, %bb.d ], [ null, %rb_io_blocking_operation_enter.exit ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.ar, %bb.d ], [ null, %rb_io_blocking_operation_enter.exit ]
  %i.as = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.as, align 8, !tbaa !123
  %i.at = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.at, label %bb.e, label %rb_ec_vm_lock_rec.exit

bb.e:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.au = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.av = load i32, ptr %i.au, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.e
  %.0.i = phi i32 [ %i.av, %bb.e ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 %.0.i, ptr %i.aw, align 4, !tbaa !236
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = call ptr @llvm.stacksave.p0()
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ax)
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.3 = load volatile ptr, ptr %i.g, align 8, !tbaa !147
  %i.bc = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.3)
  br label %bb.z

bb.g:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %5, ptr %i.ak, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store volatile i32 0, ptr %i.h, align 4, !tbaa !7
  %i.bd = shl i32 %3, 1
  br i1 %.not.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.0..0..0..0.18.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %.0..0..0..0.19.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.be = call fastcc i32 @blocking_region_begin(ptr noundef %.0..0..0..0.18.us, ptr noundef %6, ptr noundef nonnull @ubf_select, ptr noundef %.0..0..0..0.19.us, i32 noundef 0) ; 0 uses
  %.0..0..0..0.20.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bf = getelementptr i8, ptr %.0..0..0..0.20.us, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !67
  %i.bh = getelementptr i8, ptr %i.bg, i64 200
  %i.bi = call i32 @_setjmp(ptr noundef %i.bh) #45 ; 0 uses
  %.0..0..0..0.21.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bj = getelementptr i8, ptr %.0..0..0..0.21.us, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67
  %i.bl = getelementptr i8, ptr %i.bk, i64 184
  %i.bm = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !299
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !69
  %.0..0..0..0.22.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bn = getelementptr i8, ptr %.0..0..0..0.22.us, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.bp = getelementptr i8, ptr %i.bo, i64 216
  %.0..0..0..0.23.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.bp, ptr noundef %.0..0..0..0.23.us)
  %i.bq = call i64 %1(ptr noundef %2) #17
  store volatile i64 %i.bq, ptr %i.d, align 8, !tbaa !144
  %i.br = call ptr @rb_errno_ptr() #17
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  store volatile i32 %i.bs, ptr %i.e, align 4, !tbaa !7
  %.0..0..0..0.24.us = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  call fastcc void @blocking_region_end(ptr noundef %.0..0..0..0.24.us, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %thread_io_wait_events.exit.thread

.split:                                           ; preds = %bb.g, %.split.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.0..0..0..0.18 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %.0..0..0..0.19 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bt = call fastcc i32 @blocking_region_begin(ptr noundef %.0..0..0..0.18, ptr noundef %6, ptr noundef nonnull @ubf_select, ptr noundef %.0..0..0..0.19, i32 noundef 0) ; 0 uses
  %.0..0..0..0.20 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.bu = getelementptr i8, ptr %.0..0..0..0.20, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !67
  %i.bw = getelementptr i8, ptr %i.bv, i64 200
  %i.bx = call i32 @_setjmp(ptr noundef %i.bw) #45 ; 0 uses
  %.0..0..0..0.21 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.by = getelementptr i8, ptr %.0..0..0..0.21, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !67
  %i.ca = getelementptr i8, ptr %i.bz, i64 184
  %i.cb = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !299
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !69
  %.0..0..0..0.22 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.cc = getelementptr i8, ptr %.0..0..0..0.22, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !56
  %i.ce = getelementptr i8, ptr %i.cd, i64 216
  %.0..0..0..0.23 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.ce, ptr noundef %.0..0..0..0.23)
  %i.cf = call i64 %1(ptr noundef %2) #17
  store volatile i64 %i.cf, ptr %i.d, align 8, !tbaa !144
  %i.cg = call ptr @rb_errno_ptr() #17
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  store volatile i32 %i.ch, ptr %i.e, align 4, !tbaa !7
  %.0..0..0..0.24 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  call fastcc void @blocking_region_end(ptr noundef %.0..0..0..0.24, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.0..0..0..0.13 = load volatile i64, ptr %i.d, align 8, !tbaa !144
  %.0..0..0..0.10 = load volatile i32, ptr %i.e, align 4, !tbaa !7
  %i.ci = and i64 %.0..0..0..0.13, 4294967295
  %.not.i47 = icmp eq i64 %i.ci, 4294967295
  %cond.i = icmp eq i32 %.0..0..0..0.10, 11
  %.0.i48 = and i1 %.not.i47, %cond.i
  br i1 %.0.i48, label %bb.h, label %thread_io_wait_events.exit.thread

bb.h:                                             ; preds = %.split
  %.0..0..0..0.25 = load volatile ptr, ptr %i.c, align 8, !tbaa !63 ; 4 uses
  %i.cj = getelementptr i8, ptr %.0..0..0..0.25, i64 40
  %.val.i.i = load ptr, ptr %i.cj, align 8, !tbaa !64
  %i.ck = getelementptr i8, ptr %.val.i.i, i64 104
  %.val.val.i.i = load i32, ptr %i.ck, align 8, !tbaa !65
  %i.cl = icmp sgt i32 %.val.val.i.i, 0
  br i1 %i.cl, label %thread_io_wait_events.exit.thread, label %thread_io_mn_schedulable.exit.i

thread_io_mn_schedulable.exit.i:                  ; preds = %bb.h
  %i.cm = getelementptr i8, ptr %.0..0..0..0.25, i64 440
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !297
  %.not.i50 = icmp eq i32 %i.cn, 0
  br i1 %.not.i50, label %thread_io_wait_events.exit.thread, label %thread_io_wait_events.exit

thread_io_wait_events.exit:                       ; preds = %thread_io_mn_schedulable.exit.i
  %i.co = getelementptr i8, ptr %.0..0..0..0.25, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !56
  %i.cq = getelementptr i8, ptr %i.cp, i64 216
  %i.cr = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.cq, ptr noundef nonnull %.0..0..0..0.25, i32 noundef %i.x, i32 noundef %i.bd, ptr noundef null)
  br i1 %i.cr, label %thread_io_wait_events.exit.thread, label %bb.i

bb.i:                                             ; preds = %thread_io_wait_events.exit
  %.0..0..0..0.30 = load volatile ptr, ptr %i.b, align 8, !tbaa !147 ; 6 uses
  %i.cs = getelementptr i8, ptr %.0..0..0..0.30, i64 48
  %.val.i51 = load ptr, ptr %i.cs, align 8, !tbaa !11 ; 4 uses
  %i.ct = getelementptr i8, ptr %.val.i51, i64 280
  %.val15.i = load i64, ptr %i.ct, align 8, !tbaa !25
  %i.cu = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !46 ; 2 uses
  %i.cw = and i64 %i.cv, 8192
  %.not.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = lshr i64 %i.cv, 15
  %i.cy = and i64 %i.cx, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cz = getelementptr i8, ptr %i.cu, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.cy, %bb.j ], [ %i.da, %bb.k ]
  %.not.i52 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i52, label %bb.l, label %bb.m, !prof !49

bb.l:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.db = getelementptr i8, ptr %.0..0..0..0.30, i64 32
  %i.dc = load atomic volatile i32, ptr %i.db monotonic, align 8
  %i.dd = getelementptr i8, ptr %.0..0..0..0.30, i64 36
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !50
  %i.df = xor i32 %i.de, -1
  %i.dg = and i32 %i.dc, %i.df
  %.not16.i = icmp eq i32 %i.dg, 0
  br i1 %.not16.i, label %.split.backedge, label %bb.n, !prof !49

.split.backedge:                                  ; preds = %bb.l, %bb.o, %bb.p, %bb.q
  br label %.split

bb.m:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.dh = getelementptr i8, ptr %.val.i51, i64 248 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 8
  %i.dj = and i8 %i.di, -65
  store i8 %i.dj, ptr %i.dh, align 8
  %i.dk = getelementptr i8, ptr %.0..0..0..0.30, i64 32
  %i.dl = atomicrmw volatile or ptr %i.dk, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dm = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i51, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.dm, 0
  br i1 %.not13.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dn = getelementptr i8, ptr %.0..0..0..0.30, i64 32
  %i.do = load atomic volatile i32, ptr %i.dn monotonic, align 8
  %i.dp = getelementptr i8, ptr %.0..0..0..0.30, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !50
  %i.dr = xor i32 %i.dq, -1
  %i.ds = and i32 %i.do, 10
  %i.dt = and i32 %i.ds, %i.dr
  %.not17.i = icmp eq i32 %i.dt, 0
  br i1 %.not17.i, label %.split.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.du = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i51) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.du, 4
  br i1 %.not14.i, label %.split.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.du) #17, !inline_history !51 ; 0 uses
  br label %.split.backedge

thread_io_wait_events.exit.thread:                ; preds = %.split, %thread_io_wait_events.exit, %thread_io_mn_schedulable.exit.i, %bb.h, %.split.us
  %.0..0..0..0.31 = load volatile ptr, ptr %i.b, align 8, !tbaa !147 ; 6 uses
  %i.dw = getelementptr i8, ptr %.0..0..0..0.31, i64 48
  %.val.i54 = load ptr, ptr %i.dw, align 8, !tbaa !11 ; 4 uses
  %i.dx = getelementptr i8, ptr %.val.i54, i64 280
  %.val15.i55 = load i64, ptr %i.dx, align 8, !tbaa !25
  %i.dy = inttoptr i64 %.val15.i55 to ptr         ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !46 ; 2 uses
  %i.ea = and i64 %i.dz, 8192
  %.not.i.i.i56 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i56, label %bb.s, label %bb.r

bb.r:                                             ; preds = %thread_io_wait_events.exit.thread
  %i.eb = lshr i64 %i.dz, 15
  %i.ec = and i64 %i.eb, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i57

bb.s:                                             ; preds = %thread_io_wait_events.exit.thread
  %i.ed = getelementptr i8, ptr %i.dy, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i57

rb_threadptr_pending_interrupt_empty_p.exit.i57:  ; preds = %bb.s, %bb.r
  %.0.i.i.i58 = phi i64 [ %i.ec, %bb.r ], [ %i.ee, %bb.s ]
  %.not.i59 = icmp eq i64 %.0.i.i.i58, 0
  br i1 %.not.i59, label %bb.t, label %bb.u, !prof !49

bb.t:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i57
  %i.ef = getelementptr i8, ptr %.0..0..0..0.31, i64 32
  %i.eg = load atomic volatile i32, ptr %i.ef monotonic, align 8
  %i.eh = getelementptr i8, ptr %.0..0..0..0.31, i64 36
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !50
  %i.ej = xor i32 %i.ei, -1
  %i.ek = and i32 %i.eg, %i.ej
  %.not16.i64 = icmp eq i32 %i.ek, 0
  br i1 %.not16.i64, label %vm_check_ints_blocking.exit65, label %bb.v, !prof !49

bb.u:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i57
  %i.el = getelementptr i8, ptr %.val.i54, i64 248 ; 2 uses
  %i.em = load i8, ptr %i.el, align 8
  %i.en = and i8 %i.em, -65
  store i8 %i.en, ptr %i.el, align 8
  %i.eo = getelementptr i8, ptr %.0..0..0..0.31, i64 32
  %i.ep = atomicrmw volatile or ptr %i.eo, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.eq = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i54, i32 noundef 1), !inline_history !51
  %.not13.i60 = icmp eq i32 %i.eq, 0
  br i1 %.not13.i60, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr i8, ptr %.0..0..0..0.31, i64 32
  %i.es = load atomic volatile i32, ptr %i.er monotonic, align 8
  %i.et = getelementptr i8, ptr %.0..0..0..0.31, i64 36
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !50
  %i.ev = xor i32 %i.eu, -1
  %i.ew = and i32 %i.es, 10
  %i.ex = and i32 %i.ew, %i.ev
  %.not17.i63 = icmp eq i32 %i.ex, 0
  br i1 %.not17.i63, label %vm_check_ints_blocking.exit65, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ey = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i54) #17, !inline_history !51 ; 2 uses
  %.not14.i61 = icmp eq i64 %i.ey, 4
  br i1 %.not14.i61, label %vm_check_ints_blocking.exit65, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ey) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit65

vm_check_ints_blocking.exit65:                    ; preds = %bb.t, %bb.w, %bb.x, %bb.y
  %.0..0..0..0. = load volatile i32, ptr %i.h, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.z

bb.z:                                             ; preds = %bb.f, %vm_check_ints_blocking.exit65
  %.0 = phi i32 [ %.0..0..0..0., %vm_check_ints_blocking.exit65 ], [ %i.bc, %bb.f ] ; 2 uses
  %i.fa = load ptr, ptr %i.am, align 8, !tbaa !235
  %.0..0..0..0.5 = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.fb = getelementptr i8, ptr %.0..0..0..0.5, i64 24
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.0..0..0..0.32 = load volatile ptr, ptr %i.b, align 8, !tbaa !147
  %i.fc = getelementptr i8, ptr %.0..0..0..0.32, i64 48
  %.0.32.val = load ptr, ptr %i.fc, align 8, !tbaa !11
  store volatile ptr %.0.32.val, ptr %i.c, align 8, !tbaa !63
  %.0..0..0..0.6 = load volatile i8, ptr %i.f, align 1, !tbaa !296, !range !102, !noundef !103
  %.0..0..0..0.26 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.fd = getelementptr i8, ptr %.0..0..0..0.26, i64 208
  store i8 %.0..0..0..0.6, ptr %i.fd, align 8, !tbaa !295
  call fastcc void @rb_io_blocking_operation_exit(ptr noundef %0, ptr noundef nonnull %4)
  %.not45 = icmp eq i32 %.0, 0
  br i1 %.not45, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.0..0..0..0.33 = load volatile ptr, ptr %i.b, align 8, !tbaa !147
  %i.fe = getelementptr i8, ptr %.0..0..0..0.33, i64 24
  %.0.33.val = load ptr, ptr %i.fe, align 8, !tbaa !234 ; 2 uses
  %i.ff = getelementptr i8, ptr %.0.33.val, i64 64
  store i32 %.0, ptr %i.ff, align 8, !tbaa !231
  %i.fg = getelementptr i8, ptr %.0.33.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.fg)
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.0..0..0..0.11 = load volatile i32, ptr %i.e, align 4, !tbaa !7
  %i.fh = icmp eq i32 %.0..0..0..0.11, 110
  br i1 %i.fh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fi = load i64, ptr @rb_eIOTimeoutError, align 8, !tbaa !144
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fi, ptr noundef nonnull @.str.45) #41
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %.0..0..0..0.12 = load volatile i32, ptr %i.e, align 4, !tbaa !7
  %i.fj = call ptr @rb_errno_ptr() #17
  store i32 %.0..0..0..0.12, ptr %i.fj, align 4, !tbaa !7
  %.0..0..0..0.14 = load volatile i64, ptr %i.d, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.0..0..0..0.14
}

declare ptr @rb_errno_ptr() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_io_blocking_operation_exit(ptr noundef %0, ptr noundef initializes((16, 24)) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.mutex_args, align 8         ; 7 uses
  %3 = alloca %struct.io_blocking_operation_arguments, align 8 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 232
  %i.c = load i64, ptr %i.b, align 8, !tbaa !300  ; 5 uses
  %i.d = getelementptr i8, ptr %1, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !282
  %i.e = and i64 %i.c, -5
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %0, ptr %3, align 8, !tbaa !291
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !294
  %i.g = ptrtoint ptr %3 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 %i.c, ptr %2, align 8, !tbaa !186
  %i.h = and i64 %i.c, 7
  %.not8 = icmp eq i64 %i.h, 0
  br i1 %.not8, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %.critedge.i.i.i.i, !prof !301

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %bb.b
  %i.i = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  %i.k = and i64 %i.j, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %.critedge.i.i.i.i, !prof !173

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !169  ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr i8, ptr %i.i, i64 32       ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i.i:                 ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.t, label %rb_mutex_synchronize.exit, label %.preheader.i.i.i.i, !prof !49

.preheader.i.i.i.i:                               ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %bb.e
  %.016.i.i.i.i = phi ptr [ %i.v, %bb.e ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.016.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i.i
  %i.u = getelementptr i8, ptr %.016.i.i.i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174  ; 2 uses
  %i.w = icmp eq ptr %i.v, @mutex_data_type
  br i1 %i.w, label %rb_mutex_synchronize.exit, label %.preheader.i.i.i.i, !llvm.loop !179

.critedge.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %bb.b
  %i.x = call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @mutex_data_type) #17
  br label %rb_mutex_synchronize.exit

rb_mutex_synchronize.exit:                        ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %.critedge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.x, %.critedge.i.i.i.i ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ], [ %i.s, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.1.i.i.i.i, ptr %i.y, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !147
  store volatile ptr %i.aa, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, ptr %i.ab, align 8, !tbaa !189
  %i.ac = call fastcc i64 @do_mutex_lock(ptr noundef %2, i32 noundef 1) ; 0 uses
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = call i64 @rb_ec_ensure(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, ptr noundef nonnull @io_blocking_operation_exit, i64 noundef %i.g, ptr noundef nonnull @do_mutex_unlock_safe, i64 noundef %i.ad) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.af = getelementptr i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.af, align 8, !tbaa !72 ; 2 uses
  %i.ag = getelementptr i8, ptr %.val, i64 8
  store ptr %.val7, ptr %i.ag, align 8, !tbaa !72
  store ptr %.val, ptr %.val7, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_mutex_synchronize.exit
  ret void
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_thread_io_blocking_region(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_thread_io_blocking_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_thread_call_with_gvl(ptr noundef nonnull readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_native_thread)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ruby_debug_breakpoint() #17
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !302
  %i.e = call i64 @fwrite(ptr nonnull @.str.46, i64 61, i64 1, ptr %i.d) #51 ; 0 uses
  call void @exit(i32 noundef 1) #48
  unreachable
end_hunk_8
begin_hunk_9_@rb_fd_dup:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !350
  %i.g = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.f, i64 noundef %spec.store.select) #53 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !350
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.i, i64 range(i64 -17179869184, 17179869177) %spec.store.select, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_fd_select(i32 noundef %0, ptr noundef captures(address_is_null) %1, ptr noundef captures(address_is_null) %2, ptr noundef captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, -1
  %i.b = add i32 %0, 63
  %i.c = sdiv i32 %i.b, 64
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3                      ; 3 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !348    ; 2 uses
  %i.g = add i32 %i.f, 63
  %i.h = sdiv i32 %i.g, 64
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %spec.store.select1.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 128) ; 3 uses
  %i.k = icmp ugt i64 %i.e, %spec.store.select1.i
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !350
  %i.n = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.m, i64 noundef %i.e) #53 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !350
  %i.o = getelementptr i8, ptr %i.n, i64 %spec.store.select1.i
  %i.p = sub nuw nsw i64 %i.e, %spec.store.select1.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.p, i1 false)
  %.pre.i = load i32, ptr %1, align 8, !tbaa !348
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ %.pre.i, %bb.c ], [ %i.f, %bb.b ]
  %.not.i = icmp slt i32 %i.a, %i.q
  br i1 %.not.i, label %rb_fd_resize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %0, ptr %1, align 8, !tbaa !348
  br label %rb_fd_resize.exit

rb_fd_resize.exit:                                ; preds = %bb.d, %bb.e
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.r, align 8, !tbaa !350
  br label %bb.f

bb.f:                                             ; preds = %rb_fd_resize.exit, %bb.a
  %.017 = phi ptr [ %.val24, %rb_fd_resize.exit ], [ null, %bb.a ]
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i32 %0, -1
  %i.t = add i32 %0, 63
  %i.u = sdiv i32 %i.t, 64
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 3                      ; 3 uses
  %i.x = load i32, ptr %2, align 8, !tbaa !348    ; 2 uses
  %i.y = add i32 %i.x, 63
  %i.z = sdiv i32 %i.y, 64
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %spec.store.select1.i25 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 128) ; 3 uses
  %i.ac = icmp ugt i64 %i.w, %spec.store.select1.i25
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !350
  %i.af = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.ae, i64 noundef %i.w) #53 ; 2 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !350
  %i.ag = getelementptr i8, ptr %i.af, i64 %spec.store.select1.i25
  %i.ah = sub nuw nsw i64 %i.w, %spec.store.select1.i25
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 0, i64 %i.ah, i1 false)
  %.pre.i27 = load i32, ptr %2, align 8, !tbaa !348
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi i32 [ %.pre.i27, %bb.h ], [ %i.x, %bb.g ]
  %.not.i26 = icmp slt i32 %i.s, %i.ai
  br i1 %.not.i26, label %rb_fd_resize.exit28, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %0, ptr %2, align 8, !tbaa !348
  br label %rb_fd_resize.exit28

rb_fd_resize.exit28:                              ; preds = %bb.i, %bb.j
  %i.aj = getelementptr i8, ptr %2, i64 8
  %.val23 = load ptr, ptr %i.aj, align 8, !tbaa !350
  br label %bb.k

bb.k:                                             ; preds = %rb_fd_resize.exit28, %bb.f
  %.016 = phi ptr [ %.val23, %rb_fd_resize.exit28 ], [ null, %bb.f ]
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = add i32 %0, -1
  %i.al = add i32 %0, 63
  %i.am = sdiv i32 %i.al, 64
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 3                    ; 3 uses
  %i.ap = load i32, ptr %3, align 8, !tbaa !348   ; 2 uses
  %i.aq = add i32 %i.ap, 63
  %i.ar = sdiv i32 %i.aq, 64
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 3
  %spec.store.select1.i29 = tail call i64 @llvm.umax.i64(i64 %i.at, i64 128) ; 3 uses
  %i.au = icmp ugt i64 %i.ao, %spec.store.select1.i29
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %3, i64 8         ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !350
  %i.ax = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.aw, i64 noundef %i.ao) #53 ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !350
  %i.ay = getelementptr i8, ptr %i.ax, i64 %spec.store.select1.i29
  %i.az = sub nuw nsw i64 %i.ao, %spec.store.select1.i29
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.az, i1 false)
  %.pre.i31 = load i32, ptr %3, align 8, !tbaa !348
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = phi i32 [ %.pre.i31, %bb.m ], [ %i.ap, %bb.l ]
  %.not.i30 = icmp slt i32 %i.ak, %i.ba
  br i1 %.not.i30, label %rb_fd_resize.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %0, ptr %3, align 8, !tbaa !348
  br label %rb_fd_resize.exit32

rb_fd_resize.exit32:                              ; preds = %bb.n, %bb.o
  %i.bb = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.bb, align 8, !tbaa !350
  br label %bb.p

bb.p:                                             ; preds = %rb_fd_resize.exit32, %bb.k
  %.0 = phi ptr [ %.val, %rb_fd_resize.exit32 ], [ null, %bb.k ]
  %i.bc = tail call i32 @select(i32 noundef %0, ptr noundef %.017, ptr noundef %.016, ptr noundef %.0, ptr noundef %4) #17
  ret i32 %i.bc
}

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_thread_fd_select(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.select_set, align 8         ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  store volatile ptr %i.e, ptr %i.c, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.val.i, ptr %i.g, align 8, !tbaa !351
  %i.h = getelementptr i8, ptr %.val.i, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 48
  %.val.i27 = load ptr, ptr %i.j, align 8, !tbaa !11 ; 4 uses
  %i.k = getelementptr i8, ptr %.val.i27, i64 280
  %.val15.i = load i64, ptr %i.k, align 8, !tbaa !25
  %i.l = inttoptr i64 %.val15.i to ptr            ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = and i64 %i.m, 8192
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i64 %i.m, 15
  %i.p = and i64 %i.o, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.p, %bb.b ], [ %i.r, %bb.c ]
  %.not.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.s = getelementptr i8, ptr %i.i, i64 32
  %i.t = load atomic volatile i32, ptr %i.s monotonic, align 8
  %i.u = getelementptr i8, ptr %i.i, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %i.t, %i.w
  %.not16.i = icmp eq i32 %i.x, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.f, !prof !49

bb.e:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.y = getelementptr i8, ptr %.val.i27, i64 248 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, -65
  store i8 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr i8, ptr %i.i, i64 32
  %i.ac = atomicrmw volatile or ptr %i.ab, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i27, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.ad, 0
  br i1 %.not13.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.i, i64 32
  %i.af = load atomic volatile i32, ptr %i.ae monotonic, align 8
  %i.ag = getelementptr i8, ptr %i.i, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  %i.ai = xor i32 %i.ah, -1
  %i.aj = and i32 %i.af, 10
  %i.ak = and i32 %i.aj, %i.ai
  %.not17.i = icmp eq i32 %i.ak, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i27) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.al, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.al) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.d, %bb.g, %bb.h, %bb.i
  store i32 %0, ptr %5, align 8, !tbaa !354
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.an, align 8, !tbaa !355
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.ao, align 8, !tbaa !356
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.ap, align 8, !tbaa !357
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %4, ptr %i.aq, align 8, !tbaa !358
  %i.ar = icmp ne ptr %1, null                    ; 2 uses
  %i.as = icmp ne ptr %2, null
  %i.at = icmp ne ptr %3, null
  %i.au = or i1 %i.as, %i.at
  %or.cond5 = or i1 %i.ar, %i.au
  br i1 %or.cond5, label %bb.m, label %bb.j

bb.j:                                             ; preds = %vm_check_ints_blocking.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !147
  store volatile ptr %i.av, ptr %i.b, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aw = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.aw, align 8, !tbaa !11
  tail call fastcc void @sleep_forever(ptr noundef %.val.i.i, i32 noundef 2)
  br label %bb.ai

bb.l:                                             ; preds = %bb.j
  %i.ax = load i64, ptr %4, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !147
  store volatile ptr %i.ba, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i28 = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i28, i64 48
  %.val.i.i29 = load ptr, ptr %i.bb, align 8, !tbaa !11
  %i.bc = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ax, i64 1000000000) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  %i.be = extractvalue { i64, i1 } %i.bc, 0
  %i.bf = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.az, i64 1000) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  %i.bh = extractvalue { i64, i1 } %i.bf, 0
  %i.bi = tail call i64 @llvm.uadd.sat.i64(i64 %i.be, i64 %i.bh)
  %i.bj = select i1 %i.bd, i1 true, i1 %i.bg
  %.0.i4.i.i = select i1 %i.bj, i64 -1, i64 %i.bi
  %i.bk = tail call fastcc i32 @sleep_hrtime(ptr noundef %.val.i.i29, i64 noundef %.0.i4.i.i, i32 noundef 2) ; 0 uses
  br label %bb.ai

bb.m:                                             ; preds = %vm_check_ints_blocking.exit
  br i1 %i.ar, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bl = add i32 %0, -1
  %i.bm = add i32 %0, 63
  %i.bn = sdiv i32 %i.bm, 64
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 3                    ; 3 uses
  %i.bq = load i32, ptr %1, align 8, !tbaa !348   ; 2 uses
  %i.br = add i32 %i.bq, 63
  %i.bs = sdiv i32 %i.br, 64
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 3
  %spec.store.select1.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 128) ; 3 uses
  %i.bv = icmp ugt i64 %i.bp, %spec.store.select1.i
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !350
  %i.by = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.bx, i64 noundef %i.bp) #53 ; 2 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !350
  %i.bz = getelementptr i8, ptr %i.by, i64 %spec.store.select1.i
  %i.ca = sub nuw nsw i64 %i.bp, %spec.store.select1.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bz, i8 0, i64 %i.ca, i1 false)
  %.pre.i = load i32, ptr %1, align 8, !tbaa !348
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cb = phi i32 [ %.pre.i, %bb.o ], [ %i.bq, %bb.n ] ; 2 uses
  %.not.i30 = icmp slt i32 %i.bl, %i.cb
  br i1 %.not.i30, label %rb_fd_resize.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %0, ptr %1, align 8, !tbaa !348
  br label %rb_fd_resize.exit

rb_fd_resize.exit:                                ; preds = %bb.p, %bb.q
  %.val.i31 = phi i32 [ %i.cb, %bb.p ], [ %0, %bb.q ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %.not22 = icmp eq ptr %i.cc, %1
  br i1 %.not22, label %bb.t, label %bb.r

bb.r:                                             ; preds = %rb_fd_resize.exit
  %i.cd = add i32 %.val.i31, 63
  %i.ce = sdiv i32 %i.cd, 64
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 3
  %spec.store.select.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 128) ; 2 uses
  store i32 %.val.i31, ptr %i.cc, align 8, !tbaa !348
  %i.ch = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %spec.store.select.i) #50 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !350
  %i.cj = getelementptr i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ch, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ck, i64 range(i64 -17179869184, 17179869177) %spec.store.select.i, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.cm, align 8, !tbaa !359
  store i32 0, ptr %i.cl, align 8, !tbaa !360
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %rb_fd_resize.exit
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = add i32 %0, -1
  %i.co = add i32 %0, 63
  %i.cp = sdiv i32 %i.co, 64
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 3                    ; 3 uses
  %i.cs = load i32, ptr %2, align 8, !tbaa !348   ; 2 uses
  %i.ct = add i32 %i.cs, 63
  %i.cu = sdiv i32 %i.ct, 64
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 3
  %spec.store.select1.i32 = call i64 @llvm.umax.i64(i64 %i.cw, i64 128) ; 3 uses
  %i.cx = icmp ugt i64 %i.cr, %spec.store.select1.i32
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !350
  %i.da = call nonnull ptr @ruby_xrealloc(ptr noundef %i.cz, i64 noundef %i.cr) #53 ; 2 uses
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !350
  %i.db = getelementptr i8, ptr %i.da, i64 %spec.store.select1.i32
  %i.dc = sub nuw nsw i64 %i.cr, %spec.store.select1.i32
  call void @llvm.memset.p0.i64(ptr align 1 %i.db, i8 0, i64 %i.dc, i1 false)
  %.pre.i34 = load i32, ptr %2, align 8, !tbaa !348
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dd = phi i32 [ %.pre.i34, %bb.v ], [ %i.cs, %bb.u ] ; 2 uses
  %.not.i33 = icmp slt i32 %i.cn, %i.dd
  br i1 %.not.i33, label %rb_fd_resize.exit35, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %0, ptr %2, align 8, !tbaa !348
  br label %rb_fd_resize.exit35

rb_fd_resize.exit35:                              ; preds = %bb.w, %bb.x
  %.val.i36 = phi i32 [ %i.dd, %bb.w ], [ %0, %bb.x ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %.not24 = icmp eq ptr %i.de, %2
  br i1 %.not24, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %rb_fd_resize.exit35
  %i.df = add i32 %.val.i36, 63
  %i.dg = sdiv i32 %i.df, 64
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 3
  %spec.store.select.i37 = call i64 @llvm.umax.i64(i64 %i.di, i64 128) ; 2 uses
  store i32 %.val.i36, ptr %i.de, align 8, !tbaa !348
  %i.dj = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %spec.store.select.i37) #50 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !350
  %i.dl = getelementptr i8, ptr %2, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dj, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.dm, i64 range(i64 -17179869184, 17179869177) %spec.store.select.i37, i1 false)
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 56
end_hunk_9
begin_hunk_10_@rb_thread_fd_select:bb.a
  %.not26 = icmp eq ptr %i.eg, %3
  br i1 %.not26, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %rb_fd_resize.exit41
  %i.eh = add i32 %.val.i42, 63
  %i.ei = sdiv i32 %i.eh, 64
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 3
  %spec.store.select.i43 = call i64 @llvm.umax.i64(i64 %i.ek, i64 128) ; 2 uses
  store i32 %.val.i42, ptr %i.eg, align 8, !tbaa !348
  %i.el = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %spec.store.select.i43) #50 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.el, ptr %i.em, align 8, !tbaa !350
  %i.en = getelementptr i8, ptr %3, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.el, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.eo, i64 range(i64 -17179869184, 17179869177) %spec.store.select.i43, i1 false)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr null, ptr %i.eq, align 8, !tbaa !363
  store i32 0, ptr %i.ep, align 8, !tbaa !364
  br label %bb.ah

bb.ah:                                            ; preds = %rb_fd_resize.exit41, %bb.af, %bb.ag
  %i.er = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.es = call i64 @rb_ensure(ptr noundef nonnull @do_select, i64 noundef %i.er, ptr noundef nonnull @select_set_free, i64 noundef %i.er) #17
  %i.et = trunc i64 %i.es to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.l, %bb.k
  %.0 = phi i32 [ %i.et, %bb.ah ], [ 0, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @do_select(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.rb_blocking_region_buffer, align 4 ; 4 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.e = getelementptr i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !358  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %timeout_prepare.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !365
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val8.i = load i64, ptr %i.g, align 8, !tbaa !367
  %i.h = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val.i, i64 1000000000) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val8.i, i64 1000) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.j, i64 %i.m)
  %i.o = select i1 %i.i, i1 true, i1 %i.l
  %.0.i4.i.i = select i1 %i.o, i64 -1, i64 %i.n   ; 2 uses
  store i64 %.0.i4.i.i, ptr %i.b, align 8, !tbaa !144
  %i.p = call i64 @rb_hrtime_now()
  %.0.i.i = call noundef i64 @llvm.uadd.sat.i64(i64 %i.p, i64 %.0.i4.i.i)
  br label %timeout_prepare.exit

timeout_prepare.exit:                             ; preds = %bb.a, %bb.b
  %.063 = phi i64 [ 0, %bb.a ], [ %.0.i.i, %bb.b ]
  %storemerge.i = phi ptr [ null, %bb.a ], [ %i.b, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i64 %.063, ptr %i.c, align 8, !tbaa !144
  %i.q = getelementptr i8, ptr %i.d, i64 8        ; 8 uses
  %i.r = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  %i.t = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %.not.i35 = icmp eq ptr %storemerge.i, null     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr i8, ptr %i.d, i64 40
  %i.w = getelementptr i8, ptr %i.d, i64 48
  %i.x = getelementptr i8, ptr %i.d, i64 56
  %i.y = getelementptr i8, ptr %i.d, i64 64
  %i.z = getelementptr i8, ptr %i.d, i64 72
  %i.aa = getelementptr i8, ptr %i.d, i64 80
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %timeout_prepare.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !351 ; 2 uses
  %i.ac = call fastcc i32 @blocking_region_begin(ptr noundef %i.ab, ptr noundef %1, ptr noundef nonnull @ubf_select, ptr noundef %i.ab, i32 noundef 1)
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !351
  %i.ae = getelementptr i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = getelementptr i8, ptr %i.af, i64 200
  %i.ah = call i32 @_setjmp(ptr noundef %i.ag) #45 ; 0 uses
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !351
  %i.aj = getelementptr i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = getelementptr i8, ptr %i.ak, i64 184
  %i.am = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !368
  store ptr %i.am, ptr %i.al, align 8, !tbaa !69
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !351 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.aq = getelementptr i8, ptr %i.ap, i64 216
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.aq, ptr noundef %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !351
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 32
  %i.av = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.aw = getelementptr i8, ptr %i.at, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !50
  %i.ay = xor i32 %i.ax, -1
  %i.az = and i32 %i.av, 10
  %i.ba = and i32 %i.az, %i.ay
  %.not66 = icmp eq i32 %i.ba, 0
  br i1 %.not66, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.d, align 8, !tbaa !354
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !355
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !356
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !357
  br i1 %.not.i35, label %rb_hrtime2timeval.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load i64, ptr %storemerge.i, align 8, !tbaa !144 ; 2 uses
  %i.bg = udiv i64 %i.bf, 1000000000
  store i64 %i.bg, ptr %2, align 8, !tbaa !365
  %i.bh = urem i64 %i.bf, 1000000000
  %.lhs.trunc.i = trunc nuw nsw i64 %i.bh to i32
  %i.bi = udiv i32 %.lhs.trunc.i, 1000
  %.zext.i = zext nneg i32 %i.bi to i64
  store i64 %.zext.i, ptr %i.u, align 8, !tbaa !367
  br label %rb_hrtime2timeval.exit

rb_hrtime2timeval.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %2, %bb.f ], [ null, %bb.e ]
  %i.bj = call i32 @rb_fd_select(i32 noundef %i.bb, ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef %i.be, ptr noundef %.0.i)
  store volatile i32 %i.bj, ptr %i.a, align 4, !tbaa !7
  %.0..0..0.59 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.bk = icmp slt i32 %.0..0..0.59, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_hrtime2timeval.exit
  %i.bl = call ptr @rb_errno_ptr() #17
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %rb_hrtime2timeval.exit, %bb.g, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.bm, %bb.g ], [ 0, %rb_hrtime2timeval.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !351
  call fastcc void @blocking_region_end(ptr noundef %i.bn, ptr noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.1 = phi i32 [ %.0, %bb.h ], [ 0, %bb.c ]      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !351
  %i.bp = getelementptr i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !67 ; 6 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 48
  %.val.i36 = load ptr, ptr %i.br, align 8, !tbaa !11 ; 4 uses
  %i.bs = getelementptr i8, ptr %.val.i36, i64 280
  %.val15.i = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bt = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !46 ; 2 uses
  %i.bv = and i64 %i.bu, 8192
  %.not.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = lshr i64 %i.bu, 15
  %i.bx = and i64 %i.bw, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.k:                                             ; preds = %bb.i
  %i.by = getelementptr i8, ptr %i.bt, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.bx, %bb.j ], [ %i.bz, %bb.k ]
  %.not.i37 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i37, label %bb.l, label %bb.m, !prof !49

bb.l:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.ca = getelementptr i8, ptr %i.bq, i64 32
  %i.cb = load atomic volatile i32, ptr %i.ca monotonic, align 8
  %i.cc = getelementptr i8, ptr %i.bq, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !50
  %i.ce = xor i32 %i.cd, -1
  %i.cf = and i32 %i.cb, %i.ce
  %.not16.i = icmp eq i32 %i.cf, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.n, !prof !49

bb.m:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.cg = getelementptr i8, ptr %.val.i36, i64 248 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = and i8 %i.ch, -65
  store i8 %i.ci, ptr %i.cg, align 8
  %i.cj = getelementptr i8, ptr %i.bq, i64 32
  %i.ck = atomicrmw volatile or ptr %i.cj, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cl = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i36, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.cl, 0
  br i1 %.not13.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr i8, ptr %i.bq, i64 32
  %i.cn = load atomic volatile i32, ptr %i.cm monotonic, align 8
  %i.co = getelementptr i8, ptr %i.bq, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !50
  %i.cq = xor i32 %i.cp, -1
  %i.cr = and i32 %i.cn, 10
  %i.cs = and i32 %i.cr, %i.cq
  %.not17.i = icmp eq i32 %i.cs, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ct = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i36) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.ct, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ct) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.l, %bb.o, %bb.p, %bb.q
  %.0..0..0..0. = load volatile i64, ptr %i.c, align 8, !tbaa !144 ; 3 uses
  %.0..0..0.62 = load volatile i32, ptr %i.a, align 4, !tbaa !7 ; 2 uses
  %i.cv = icmp slt i32 %.0..0..0.62, 0
  br i1 %i.cv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %vm_check_ints_blocking.exit
  switch i32 %.1, label %.critedge [
    i32 4, label %bb.s
    i32 85, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  br i1 %.not.i35, label %wait_retryable.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = call i64 @rb_hrtime_now()
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %.0..0..0..0., i64 %i.cw)
  br label %hrtime_update_expire.exit18.sink.split.i

bb.u:                                             ; preds = %vm_check_ints_blocking.exit
  %i.cx = icmp eq i32 %.0..0..0.62, 0
  br i1 %i.cx, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  br i1 %.not.i35, label %wait_retryable.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = call i64 @rb_hrtime_now()               ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %.0..0..0..0.
  br i1 %i.cz, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = sub nuw i64 %.0..0..0..0., %i.cy
  br label %hrtime_update_expire.exit18.sink.split.i

hrtime_update_expire.exit18.sink.split.i:         ; preds = %bb.x, %bb.t
  %.sink.i = phi i64 [ %i.da, %bb.x ], [ %spec.select.i, %bb.t ]
  store i64 %.sink.i, ptr %storemerge.i, align 8, !tbaa !144
  br label %wait_retryable.exit

wait_retryable.exit:                              ; preds = %hrtime_update_expire.exit18.sink.split.i, %bb.v, %bb.s
  %i.db = load ptr, ptr %i.r, align 8, !tbaa !355 ; 3 uses
  %.not32 = icmp eq ptr %i.db, null
  br i1 %.not32, label %bb.z, label %bb.y

bb.y:                                             ; preds = %wait_retryable.exit
  %.val.i41 = load i32, ptr %i.v, align 8, !tbaa !348 ; 2 uses
  %i.dc = add i32 %.val.i41, 63
  %i.dd = sdiv i32 %i.dc, 64
  %i.de = sext i32 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 3
  %spec.store.select.i = call i64 @llvm.umax.i64(i64 %i.df, i64 128) ; 2 uses
  store i32 %.val.i41, ptr %i.db, align 8, !tbaa !348
  %i.dg = getelementptr i8, ptr %i.db, i64 8      ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !350
  %i.di = call nonnull ptr @ruby_xrealloc(ptr noundef %i.dh, i64 noundef %spec.store.select.i) #53 ; 2 uses
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !350
  %i.dj = load ptr, ptr %i.w, align 8, !tbaa !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.di, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.dj, i64 range(i64 -17179869184, 17179869177) %spec.store.select.i, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %wait_retryable.exit, %bb.y
  %i.dk = load ptr, ptr %i.s, align 8, !tbaa !356 ; 3 uses
  %.not33 = icmp eq ptr %i.dk, null
  br i1 %.not33, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val.i42 = load i32, ptr %i.x, align 8, !tbaa !348 ; 2 uses
  %i.dl = add i32 %.val.i42, 63
  %i.dm = sdiv i32 %i.dl, 64
  %i.dn = sext i32 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 3
  %spec.store.select.i43 = call i64 @llvm.umax.i64(i64 %i.do, i64 128) ; 2 uses
  store i32 %.val.i42, ptr %i.dk, align 8, !tbaa !348
  %i.dp = getelementptr i8, ptr %i.dk, i64 8      ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !350
  %i.dr = call nonnull ptr @ruby_xrealloc(ptr noundef %i.dq, i64 noundef %spec.store.select.i43) #53 ; 2 uses
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !350
  %i.ds = load ptr, ptr %i.y, align 8, !tbaa !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dr, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ds, i64 range(i64 -17179869184, 17179869177) %spec.store.select.i43, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.dt = load ptr, ptr %i.t, align 8, !tbaa !357 ; 3 uses
  %.not34 = icmp eq ptr %i.dt, null
  br i1 %.not34, label %.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val.i44 = load i32, ptr %i.z, align 8, !tbaa !348 ; 2 uses
  %i.du = add i32 %.val.i44, 63
  %i.dv = sdiv i32 %i.du, 64
  %i.dw = sext i32 %i.dv to i64
  %i.dx = shl nsw i64 %i.dw, 3
  %spec.store.select.i45 = call i64 @llvm.umax.i64(i64 %i.dx, i64 128) ; 2 uses
  store i32 %.val.i44, ptr %i.dt, align 8, !tbaa !348
  %i.dy = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !350
  %i.ea = call nonnull ptr @ruby_xrealloc(ptr noundef %i.dz, i64 noundef %spec.store.select.i45) #53 ; 2 uses
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !350
  %i.eb = load ptr, ptr %i.aa, align 8, !tbaa !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.eb, i64 range(i64 -17179869184, 17179869177) %spec.store.select.i45, i1 false)
  br label %.backedge

.backedge:                                        ; preds = %bb.ac, %bb.ab
  br label %bb.c, !llvm.loop !369

.critedge:                                        ; preds = %bb.u, %bb.r, %bb.w
  %i.ec = load ptr, ptr %i.q, align 8, !tbaa !351
  %i.ed = getelementptr i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !67 ; 6 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 48
  %.val.i46 = load ptr, ptr %i.ef, align 8, !tbaa !11 ; 4 uses
  %i.eg = getelementptr i8, ptr %.val.i46, i64 280
  %.val15.i47 = load i64, ptr %i.eg, align 8, !tbaa !25
  %i.eh = inttoptr i64 %.val15.i47 to ptr         ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !46 ; 2 uses
  %i.ej = and i64 %i.ei, 8192
  %.not.i.i.i48 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i48, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.ek = lshr i64 %i.ei, 15
  %i.el = and i64 %i.ek, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i49

bb.ae:                                            ; preds = %.critedge
  %i.em = getelementptr i8, ptr %i.eh, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i49

rb_threadptr_pending_interrupt_empty_p.exit.i49:  ; preds = %bb.ae, %bb.ad
  %.0.i.i.i50 = phi i64 [ %i.el, %bb.ad ], [ %i.en, %bb.ae ]
  %.not.i51 = icmp eq i64 %.0.i.i.i50, 0
  br i1 %.not.i51, label %bb.af, label %bb.ag, !prof !49

bb.af:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i49
  %i.eo = getelementptr i8, ptr %i.ee, i64 32
  %i.ep = load atomic volatile i32, ptr %i.eo monotonic, align 8
  %i.eq = getelementptr i8, ptr %i.ee, i64 36
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !50
  %i.es = xor i32 %i.er, -1
  %i.et = and i32 %i.ep, %i.es
  %.not16.i56 = icmp eq i32 %i.et, 0
  br i1 %.not16.i56, label %vm_check_ints_blocking.exit57, label %bb.ah, !prof !49

bb.ag:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i49
  %i.eu = getelementptr i8, ptr %.val.i46, i64 248 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 8
  %i.ew = and i8 %i.ev, -65
  store i8 %i.ew, ptr %i.eu, align 8
  %i.ex = getelementptr i8, ptr %i.ee, i64 32
  %i.ey = atomicrmw volatile or ptr %i.ex, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ez = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i46, i32 noundef 1), !inline_history !51
  %.not13.i52 = icmp eq i32 %i.ez, 0
  br i1 %.not13.i52, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fa = getelementptr i8, ptr %i.ee, i64 32
  %i.fb = load atomic volatile i32, ptr %i.fa monotonic, align 8
  %i.fc = getelementptr i8, ptr %i.ee, i64 36
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !50
  %i.fe = xor i32 %i.fd, -1
  %i.ff = and i32 %i.fb, 10
  %i.fg = and i32 %i.ff, %i.fe
  %.not17.i55 = icmp eq i32 %i.fg, 0
  br i1 %.not17.i55, label %vm_check_ints_blocking.exit57, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fh = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i46) #17, !inline_history !51 ; 2 uses
  %.not14.i53 = icmp eq i64 %i.fh, 4
  br i1 %.not14.i53, label %vm_check_ints_blocking.exit57, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.fh) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit57

vm_check_ints_blocking.exit57:                    ; preds = %bb.af, %bb.ai, %bb.aj, %bb.ak
  %.0..0..0.60 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.fj = icmp slt i32 %.0..0..0.60, 0
  br i1 %i.fj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %vm_check_ints_blocking.exit57
  %i.fk = call ptr @rb_errno_ptr() #17
  store i32 %.1, ptr %i.fk, align 4, !tbaa !7
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %vm_check_ints_blocking.exit57
  %.0..0..0.61 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.fl = sext i32 %.0..0..0.61 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.fl
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @select_set_free(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = getelementptr i8, ptr %i.a, i64 40
  %i.c = getelementptr i8, ptr %i.a, i64 48       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350
  tail call void @ruby_xfree(ptr noundef %i.d) #17
  store i32 0, ptr %i.b, align 8, !tbaa !348
  store ptr null, ptr %i.c, align 8, !tbaa !350
  %i.e = getelementptr i8, ptr %i.a, i64 56
  %i.f = getelementptr i8, ptr %i.a, i64 64       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !350
  tail call void @ruby_xfree(ptr noundef %i.g) #17
  store i32 0, ptr %i.e, align 8, !tbaa !348
  store ptr null, ptr %i.f, align 8, !tbaa !350
  %i.h = getelementptr i8, ptr %i.a, i64 72
  %i.i = getelementptr i8, ptr %i.a, i64 80       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !350
  tail call void @ruby_xfree(ptr noundef %i.j) #17
  store i32 0, ptr %i.h, align 8, !tbaa !348
  store ptr null, ptr %i.i, align 8, !tbaa !350
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_thread_wait_for_single_fd(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @thread_io_wait(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @thread_io_wait(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.pollfd], align 4       ; 6 uses
  %i.a = alloca i32, align 4                      ; 15 uses
  %6 = alloca %struct.rb_io_blocking_operation, align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i32 %2, ptr %5, align 4, !tbaa !370
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = trunc i32 %3 to i16                      ; 2 uses
  store i16 %i.f, ptr %i.e, align 4, !tbaa !372
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 3 uses
  store i16 0, ptr %i.g, align 2, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 12 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !282
  %i.k = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.l = getelementptr i8, ptr %i.k, i64 496
  %i.m = load i64, ptr %i.l, align 8, !tbaa !203  ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 240        ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !284
  %.not.i.i = icmp eq i64 %i.o, %i.m
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 208 ; 5 uses
  br i1 %.not.i.i, label %.rb_io_blocking_operations.exit_crit_edge.i, label %bb.c

.rb_io_blocking_operations.exit_crit_edge.i:      ; preds = %bb.b
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  br label %rb_io_blocking_operation_enter.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %1, i64 216
  store ptr %.phi.trans.insert.i, ptr %i.p, align 8, !tbaa !59
  store i64 %i.m, ptr %i.n, align 8, !tbaa !284
  br label %rb_io_blocking_operation_enter.exit

rb_io_blocking_operation_enter.exit:              ; preds = %.rb_io_blocking_operations.exit_crit_edge.i, %bb.c
  %i.q = phi ptr [ %.pre.i, %.rb_io_blocking_operations.exit_crit_edge.i ], [ %.phi.trans.insert.i, %bb.c ] ; 2 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.phi.trans.insert.i, ptr %i.r, align 8, !tbaa !72
  %i.s = getelementptr i8, ptr %i.q, i64 8
  store ptr %6, ptr %i.s, align 8, !tbaa !72
  store ptr %6, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %rb_io_blocking_operation_enter.exit, %bb.a
  %i.t = icmp eq ptr %4, null                     ; 2 uses
  br i1 %i.t, label %bb.e, label %thread_io_wait_events.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr i8, ptr %.val.i.i, i64 104
  %.val.val.i.i = load i32, ptr %i.v, align 8, !tbaa !65
  %i.w = icmp sgt i32 %.val.val.i.i, 0
  %.not.i.i38 = icmp eq i32 %3, 0
  %or.cond.i.i = or i1 %.not.i.i38, %i.w
  br i1 %or.cond.i.i, label %thread_io_wait_events.exit.thread, label %thread_io_mn_schedulable.exit.i

thread_io_mn_schedulable.exit.i:                  ; preds = %bb.e
  %i.x = getelementptr i8, ptr %0, i64 440
  %i.y = load i32, ptr %i.x, align 8, !tbaa !297
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %thread_io_wait_events.exit.thread, label %thread_io_wait_events.exit

thread_io_wait_events.exit:                       ; preds = %thread_io_mn_schedulable.exit.i
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = getelementptr i8, ptr %i.aa, i64 216
  %i.ac = shl i32 %3, 1
  %i.ad = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.ab, ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ac, ptr noundef null)
  br i1 %i.ad, label %thread_io_wait_events.exit.thread, label %bb.f

bb.f:                                             ; preds = %thread_io_wait_events.exit
  store i16 %i.f, ptr %i.g, align 2, !tbaa !373
  %i.ae = call ptr @rb_errno_ptr() #17
  store i32 0, ptr %i.ae, align 4, !tbaa !7
  br label %bb.as

thread_io_wait_events.exit.thread:                ; preds = %bb.e, %thread_io_mn_schedulable.exit.i, %bb.d, %thread_io_wait_events.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.af, align 8, !tbaa !231
  store i64 36, ptr %7, align 8, !tbaa !233
  %i.ag = getelementptr i8, ptr %i.i, i64 24      ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !234
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !235
  %i.aj = getelementptr i8, ptr %i.i, i64 48      ; 4 uses
  %.0.1.val = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 3 uses
  %.not.i.i39 = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i39, label %rb_ec_ractor_ptr.exit.i, label %bb.g

bb.g:                                             ; preds = %thread_io_wait_events.exit.thread
  %i.ak = getelementptr i8, ptr %.0.1.val, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = getelementptr i8, ptr %.0.1.val, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.g, %thread_io_wait_events.exit.thread
  %.0.i2.i = phi ptr [ %i.al, %bb.g ], [ null, %thread_io_wait_events.exit.thread ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.an, %bb.g ], [ null, %thread_io_wait_events.exit.thread ]
  %i.ao = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.ao, align 8, !tbaa !123
  %i.ap = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.ap, label %bb.h, label %rb_ec_vm_lock_rec.exit

bb.h:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.aq = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.h
  %.0.i = phi i32 [ %i.ar, %bb.h ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 %.0.i, ptr %i.as, align 4, !tbaa !236
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.au = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.au, ptr %i.at, align 8
  %i.av = call ptr @llvm.stacksave.p0()
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.at)
  %.not31 = icmp eq i32 %i.ax, 0
  br i1 %.not31, label %bb.j, label %bb.i, !prof !49

bb.i:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  %i.ay = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  br label %bb.ar

bb.j:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %7, ptr %i.ag, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 4 uses
  %i.az = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.az, align 8, !tbaa !25
  %i.ba = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = and i64 %i.bb, 8192
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = lshr i64 %i.bb, 15
  %i.be = and i64 %i.bd, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bf = getelementptr i8, ptr %i.ba, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.be, %bb.k ], [ %i.bg, %bb.l ]
  %.not.i40 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i40, label %bb.m, label %bb.n, !prof !49

bb.m:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bh = getelementptr i8, ptr %i.i, i64 32
  %i.bi = load atomic volatile i32, ptr %i.bh monotonic, align 8
  %i.bj = getelementptr i8, ptr %i.i, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !50
  %i.bl = xor i32 %i.bk, -1
  %i.bm = and i32 %i.bi, %i.bl
  %.not16.i = icmp eq i32 %i.bm, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.o, !prof !49

bb.n:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bn = getelementptr i8, ptr %.val.i, i64 248  ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = and i8 %i.bo, -65
  store i8 %i.bp, ptr %i.bn, align 8
  %i.bq = getelementptr i8, ptr %i.i, i64 32
  %i.br = atomicrmw volatile or ptr %i.bq, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bs = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.bs, 0
  br i1 %.not13.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr i8, ptr %i.i, i64 32
  %i.bu = load atomic volatile i32, ptr %i.bt monotonic, align 8
  %i.bv = getelementptr i8, ptr %i.i, i64 36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !50
  %i.bx = xor i32 %i.bw, -1
  %i.by = and i32 %i.bu, 10
  %i.bz = and i32 %i.by, %i.bx
  %.not17.i = icmp eq i32 %i.bz, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.ca, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ca) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.m, %bb.p, %bb.q, %bb.r
  br i1 %i.t, label %timeout_prepare.exit, label %bb.s

bb.s:                                             ; preds = %vm_check_ints_blocking.exit
  %.val.i43 = load i64, ptr %4, align 8, !tbaa !365
  %i.cc = getelementptr i8, ptr %4, i64 8
  %.val8.i = load i64, ptr %i.cc, align 8, !tbaa !367
  %i.cd = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val.i43, i64 1000000000) ; 2 uses
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  %i.cf = extractvalue { i64, i1 } %i.cd, 0
  %i.cg = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val8.i, i64 1000) ; 2 uses
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  %i.ci = extractvalue { i64, i1 } %i.cg, 0
  %i.cj = call i64 @llvm.uadd.sat.i64(i64 %i.cf, i64 %i.ci)
  %i.ck = select i1 %i.ce, i1 true, i1 %i.ch
  %.0.i4.i.i = select i1 %i.ck, i64 -1, i64 %i.cj ; 2 uses
  store i64 %.0.i4.i.i, ptr %i.d, align 8, !tbaa !144
  %i.cl = call i64 @rb_hrtime_now()
  %.0.i.i = call noundef i64 @llvm.uadd.sat.i64(i64 %i.cl, i64 %.0.i4.i.i)
  br label %timeout_prepare.exit

timeout_prepare.exit:                             ; preds = %vm_check_ints_blocking.exit, %bb.s
  %.077 = phi i64 [ 0, %vm_check_ints_blocking.exit ], [ %.0.i.i, %bb.s ] ; 3 uses
  %storemerge.i = phi ptr [ null, %vm_check_ints_blocking.exit ], [ %i.d, %bb.s ] ; 3 uses
  %i.cm = getelementptr i8, ptr %i.i, i64 32      ; 6 uses
  %i.cn = getelementptr i8, ptr %i.i, i64 36      ; 4 uses
  %.not.i57 = icmp eq ptr %storemerge.i, null     ; 2 uses
  br label %wait_retryable.exit

wait_retryable.exit:                              ; preds = %wait_retryable.exit.backedge, %timeout_prepare.exit
  %i.co = call fastcc i32 @wait_for_single_fd_blocking_region(ptr noundef %0, ptr noundef %5, ptr noundef %storemerge.i, ptr noundef %i.b)
  store volatile i32 %i.co, ptr %i.a, align 4, !tbaa !7
  %.val.i44 = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 4 uses
  %i.cp = getelementptr i8, ptr %.val.i44, i64 280
  %.val15.i45 = load i64, ptr %i.cp, align 8, !tbaa !25
  %i.cq = inttoptr i64 %.val15.i45 to ptr         ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !46 ; 2 uses
  %i.cs = and i64 %i.cr, 8192
  %.not.i.i.i46 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i46, label %bb.u, label %bb.t

bb.t:                                             ; preds = %wait_retryable.exit
  %i.ct = lshr i64 %i.cr, 15
  %i.cu = and i64 %i.ct, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i47

bb.u:                                             ; preds = %wait_retryable.exit
  %i.cv = getelementptr i8, ptr %i.cq, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i47

rb_threadptr_pending_interrupt_empty_p.exit.i47:  ; preds = %bb.u, %bb.t
  %.0.i.i.i48 = phi i64 [ %i.cu, %bb.t ], [ %i.cw, %bb.u ]
  %.not.i49 = icmp eq i64 %.0.i.i.i48, 0
  br i1 %.not.i49, label %bb.v, label %bb.w, !prof !49

bb.v:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i47
  %i.cx = load atomic volatile i32, ptr %i.cm monotonic, align 8
  %i.cy = load i32, ptr %i.cn, align 4, !tbaa !50
  %i.cz = xor i32 %i.cy, -1
  %i.da = and i32 %i.cx, %i.cz
  %.not16.i54 = icmp eq i32 %i.da, 0
  br i1 %.not16.i54, label %vm_check_ints_blocking.exit55, label %bb.x, !prof !49

bb.w:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i47
  %i.db = getelementptr i8, ptr %.val.i44, i64 248 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = and i8 %i.dc, -65
  store i8 %i.dd, ptr %i.db, align 8
  %i.de = atomicrmw volatile or ptr %i.cm, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.df = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i44, i32 noundef 1), !inline_history !51
  %.not13.i50 = icmp eq i32 %i.df, 0
  br i1 %.not13.i50, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dg = load atomic volatile i32, ptr %i.cm monotonic, align 8
  %i.dh = load i32, ptr %i.cn, align 4, !tbaa !50
  %i.di = xor i32 %i.dh, -1
  %i.dj = and i32 %i.dg, 10
  %i.dk = and i32 %i.dj, %i.di
  %.not17.i53 = icmp eq i32 %i.dk, 0
  br i1 %.not17.i53, label %vm_check_ints_blocking.exit55, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dl = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i44) #17, !inline_history !51 ; 2 uses
  %.not14.i51 = icmp eq i64 %i.dl, 4
  br i1 %.not14.i51, label %vm_check_ints_blocking.exit55, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.dl) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit55

vm_check_ints_blocking.exit55:                    ; preds = %bb.v, %bb.y, %bb.z, %bb.aa
  %i.dn = load volatile i32, ptr %i.b, align 4, !tbaa !7
  %.0..0..0.76 = load volatile i32, ptr %i.a, align 4, !tbaa !7 ; 2 uses
  %i.do = icmp slt i32 %.0..0..0.76, 0
  br i1 %i.do, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %vm_check_ints_blocking.exit55
  switch i32 %i.dn, label %bb.ai [
    i32 4, label %bb.ac
    i32 85, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  br i1 %.not.i57, label %wait_retryable.exit.backedge, label %bb.ad

wait_retryable.exit.backedge:                     ; preds = %bb.ac, %bb.af, %hrtime_update_expire.exit18.sink.split.i
  br label %wait_retryable.exit, !llvm.loop !374

bb.ad:                                            ; preds = %bb.ac
  %i.dp = call i64 @rb_hrtime_now()
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %.077, i64 %i.dp)
  br label %hrtime_update_expire.exit18.sink.split.i

bb.ae:                                            ; preds = %vm_check_ints_blocking.exit55
  %i.dq = icmp eq i32 %.0..0..0.76, 0
  br i1 %i.dq, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i57, label %wait_retryable.exit.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = call i64 @rb_hrtime_now()               ; 2 uses
  %i.ds = icmp ugt i64 %i.dr, %.077
  br i1 %i.ds, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = sub nuw i64 %.077, %i.dr
  br label %hrtime_update_expire.exit18.sink.split.i

hrtime_update_expire.exit18.sink.split.i:         ; preds = %bb.ah, %bb.ad
  %.sink.i = phi i64 [ %i.dt, %bb.ah ], [ %spec.select.i, %bb.ad ]
  store i64 %.sink.i, ptr %storemerge.i, align 8, !tbaa !144
  br label %wait_retryable.exit.backedge

bb.ai:                                            ; preds = %bb.ae, %bb.ab, %bb.ag
  %.val.i58 = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 4 uses
  %i.du = getelementptr i8, ptr %.val.i58, i64 280
  %.val15.i59 = load i64, ptr %i.du, align 8, !tbaa !25
  %i.dv = inttoptr i64 %.val15.i59 to ptr         ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !46 ; 2 uses
  %i.dx = and i64 %i.dw, 8192
  %.not.i.i.i60 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i60, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = lshr i64 %i.dw, 15
  %i.dz = and i64 %i.dy, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i61

bb.ak:                                            ; preds = %bb.ai
  %i.ea = getelementptr i8, ptr %i.dv, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i61

rb_threadptr_pending_interrupt_empty_p.exit.i61:  ; preds = %bb.ak, %bb.aj
  %.0.i.i.i62 = phi i64 [ %i.dz, %bb.aj ], [ %i.eb, %bb.ak ]
  %.not.i63 = icmp eq i64 %.0.i.i.i62, 0
  br i1 %.not.i63, label %bb.al, label %bb.am, !prof !49

bb.al:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i61
  %i.ec = load atomic volatile i32, ptr %i.cm monotonic, align 8
  %i.ed = load i32, ptr %i.cn, align 4, !tbaa !50
  %i.ee = xor i32 %i.ed, -1
  %i.ef = and i32 %i.ec, %i.ee
  %.not16.i68 = icmp eq i32 %i.ef, 0
  br i1 %.not16.i68, label %vm_check_ints_blocking.exit69, label %bb.an, !prof !49

bb.am:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i61
  %i.eg = getelementptr i8, ptr %.val.i58, i64 248 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 8
  %i.ei = and i8 %i.eh, -65
  store i8 %i.ei, ptr %i.eg, align 8
  %i.ej = atomicrmw volatile or ptr %i.cm, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ek = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i58, i32 noundef 1), !inline_history !51
  %.not13.i64 = icmp eq i32 %i.ek, 0
  br i1 %.not13.i64, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.el = load atomic volatile i32, ptr %i.cm monotonic, align 8
  %i.em = load i32, ptr %i.cn, align 4, !tbaa !50
  %i.en = xor i32 %i.em, -1
  %i.eo = and i32 %i.el, 10
  %i.ep = and i32 %i.eo, %i.en
  %.not17.i67 = icmp eq i32 %i.ep, 0
  br i1 %.not17.i67, label %vm_check_ints_blocking.exit69, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.eq = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i58) #17, !inline_history !51 ; 2 uses
  %.not14.i65 = icmp eq i64 %i.eq, 4
  br i1 %.not14.i65, label %vm_check_ints_blocking.exit69, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.eq) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit69

vm_check_ints_blocking.exit69:                    ; preds = %bb.al, %bb.ao, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.i, %vm_check_ints_blocking.exit69
  %i.es = phi i32 [ 0, %vm_check_ints_blocking.exit69 ], [ %i.ay, %bb.i ]
  %i.et = load ptr, ptr %i.ai, align 8, !tbaa !235
  %.0..0..0..0.4 = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.eu = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.f
  %.029 = phi i32 [ 0, %bb.f ], [ %i.es, %bb.ar ] ; 2 uses
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call fastcc void @rb_io_blocking_operation_exit(ptr noundef nonnull %1, ptr noundef nonnull %6)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.not33 = icmp eq i32 %.029, 0
  br i1 %.not33, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ev = getelementptr i8, ptr %i.i, i64 24
  %.val = load ptr, ptr %i.ev, align 8, !tbaa !234 ; 2 uses
  %i.ew = getelementptr i8, ptr %.val, i64 64
  store i32 %.029, ptr %i.ew, align 8, !tbaa !231
  %i.ex = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.ex)
  unreachable

bb.aw:                                            ; preds = %bb.au
  %.0..0..0.71 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.ey = icmp slt i32 %.0..0..0.71, 0
  br i1 %i.ey, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load volatile i32, ptr %i.b, align 4, !tbaa !7
  %i.fa = call ptr @rb_errno_ptr() #17
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !7
  br label %bb.bh

bb.ay:                                            ; preds = %bb.aw
  %i.fb = load i16, ptr %i.g, align 2, !tbaa !373 ; 4 uses
  %i.fc = and i16 %i.fb, 32
  %.not34 = icmp eq i16 %i.fc, 0
  br i1 %.not34, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fd = call ptr @rb_errno_ptr() #17
  store i32 9, ptr %i.fd, align 4, !tbaa !7
  br label %bb.bh

bb.ba:                                            ; preds = %bb.ay
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  %i.fe = and i16 %i.fb, 217
  %.not35 = icmp eq i16 %i.fe, 0
  br i1 %.not35, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.0..0..0.72 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.ff = or i32 %.0..0..0.72, 1
  store volatile i32 %i.ff, ptr %i.a, align 4, !tbaa !7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fg = and i16 %i.fb, 780
  %.not36 = icmp eq i16 %i.fg, 0
  br i1 %.not36, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.0..0..0.73 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.fh = or i32 %.0..0..0.73, 4
  store volatile i32 %i.fh, ptr %i.a, align 4, !tbaa !7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fi = and i16 %i.fb, 2
  %.not37 = icmp eq i16 %i.fi, 0
  br i1 %.not37, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.0..0..0.74 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.fj = or i32 %.0..0..0.74, 2
  store volatile i32 %i.fj, ptr %i.a, align 4, !tbaa !7
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.0..0..0.75 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.az, %bb.ax
  %.0 = phi i32 [ -1, %bb.ax ], [ -1, %bb.az ], [ %.0..0..0.75, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_thread_io_wait(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !298
  %i.c = tail call fastcc i32 @thread_io_wait(ptr noundef %0, ptr noundef %1, i32 noundef %i.b, i32 noundef %2, ptr noundef %3)
  ret i32 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_check_signal(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_signal_buff_size() #17
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %threadptr_trap_interrupt.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef %i.c) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %rb_native_mutex_lock.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.d) #41
  unreachable

rb_native_mutex_lock.exit.i.i:                    ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = atomicrmw volatile or ptr %i.g, i32 8 seq_cst, align 4 ; 0 uses
  %i.i = getelementptr i8, ptr %0, i64 336
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i3.i.i, label %threadptr_set_interrupt_locked.exit.i.i, label %bb.d

bb.d:                                             ; preds = %rb_native_mutex_lock.exit.i.i
  %i.k = getelementptr i8, ptr %0, i64 344
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  tail call void %i.j(ptr noundef %i.l) #17, !inline_history !375
  br label %threadptr_set_interrupt_locked.exit.i.i

threadptr_set_interrupt_locked.exit.i.i:          ; preds = %bb.d, %rb_native_mutex_lock.exit.i.i
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef %i.c) #17 ; 2 uses
  %.not.i4.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i4.i.i, label %threadptr_trap_interrupt.exit, label %bb.e

bb.e:                                             ; preds = %threadptr_set_interrupt_locked.exit.i.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.m) #41
  unreachable

threadptr_trap_interrupt.exit:                    ; preds = %threadptr_set_interrupt_locked.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @threadptr_trap_interrupt(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef %i.a) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %rb_native_mutex_lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.b) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = atomicrmw volatile or ptr %i.e, i32 8 seq_cst, align 4 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.h, null
  br i1 %.not.i3.i, label %threadptr_set_interrupt_locked.exit.i, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_lock.exit.i
  %i.i = getelementptr i8, ptr %0, i64 344
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77
end_hunk_10
begin_hunk_11_@queue_do_pop:bb.a
  %.not34 = icmp eq i64 %i.l, 0
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.160) #41
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = tail call i64 @rb_equal(i64 noundef 1, i64 noundef %4) #17
  %i.o = and i64 %i.n, -5
  %.not35 = icmp eq i64 %i.o, 0
  br i1 %.not35, label %bb.h, label %.loopexit36

bb.h:                                             ; preds = %bb.g, %rb_array_len.exit
  %i.p = icmp eq i64 %4, 4
  br i1 %i.p, label %queue_timeout2hrtime.exit.split.us.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = trunc i64 %4 to i1
  br i1 %i.q, label %rb_num2long_inline.exit.i, label %bb.k

rb_num2long_inline.exit.i:                        ; preds = %bb.i
  %i.r = ashr i64 %4, 1                           ; 2 uses
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %queue_timeout2hrtime.exit.split.preheader, label %bb.j

bb.j:                                             ; preds = %rb_num2long_inline.exit.i
  %i.t = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.r, i64 1000000000) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %.0.i.i.i = select i1 %i.u, i64 -1, i64 %i.v
  br label %queue_timeout2hrtime.exit.split.preheader

bb.k:                                             ; preds = %bb.i
  %i.w = tail call double @rb_num2dbl(i64 noundef %4) #17 ; 3 uses
  %i.x = fcmp ult double %i.w, f0x43E0000000000000
  %i.y = fcmp ugt double %i.w, 0.000000e+00
  %i.z = fmul double %i.w, 1.000000e+09
  %i.aa = fptoui double %i.z to i64
  %storemerge.i.i = select i1 %i.y, i64 %i.aa, i64 0
  %storemerge9.i.i = select i1 %i.x, i64 %storemerge.i.i, i64 -1
  br label %queue_timeout2hrtime.exit.split.preheader

queue_timeout2hrtime.exit.split.preheader:        ; preds = %bb.k, %bb.j, %rb_num2long_inline.exit.i
  %.08.i = phi i64 [ %storemerge9.i.i, %bb.k ], [ %.0.i.i.i, %bb.j ], [ 0, %rb_num2long_inline.exit.i ]
  %i.ab = tail call i64 @rb_hrtime_now()
  %.0.i7.i = tail call noundef i64 @llvm.uadd.sat.i64(i64 %.08.i, i64 %i.ab) ; 2 uses
  %i.ac = inttoptr i64 %1 to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr i8, ptr %0, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = getelementptr i8, ptr %0, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aj = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = ptrtoint ptr %6 to i64
  %i.ao = ptrtoint ptr %5 to i64
  br label %queue_timeout2hrtime.exit.split

queue_timeout2hrtime.exit.split.us.preheader:     ; preds = %bb.h
  %i.ap = inttoptr i64 %1 to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr i8, ptr %0, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.at = getelementptr i8, ptr %0, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aw = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ba = ptrtoint ptr %6 to i64
  %i.bb = ptrtoint ptr %5 to i64
  br label %queue_timeout2hrtime.exit.split.us

queue_timeout2hrtime.exit.split.us:               ; preds = %queue_timeout2hrtime.exit.split.us.preheader, %bb.o
  %i.bc = load i64, ptr %i.a, align 1, !tbaa !209 ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !46 ; 2 uses
  %i.bf = and i64 %i.be, 8192
  %.not.i29.us = icmp eq i64 %i.bf, 0
  br i1 %.not.i29.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %queue_timeout2hrtime.exit.split.us
  %i.bg = lshr i64 %i.be, 15
  %i.bh = and i64 %i.bg, 127
  br label %rb_array_len.exit31.us

bb.m:                                             ; preds = %queue_timeout2hrtime.exit.split.us
  %i.bi = getelementptr i8, ptr %i.bd, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !48
  br label %rb_array_len.exit31.us

rb_array_len.exit31.us:                           ; preds = %bb.m, %bb.l
  %.0.i30.us = phi i64 [ %i.bh, %bb.l ], [ %i.bj, %bb.m ]
  %i.bk = icmp eq i64 %.0.i30.us, 0
  br i1 %i.bk, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %rb_array_len.exit31.us
  %i.bl = load i64, ptr %i.ap, align 8, !tbaa !46
  %i.bm = and i64 %i.bl, 131072
  %.not.us = icmp eq i64 %i.bm, 0
  br i1 %.not.us, label %bb.o, label %.loopexit36

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 %1, ptr %5, align 8, !tbaa !191
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !11
  store ptr %i.bn, ptr %i.aq, align 8, !tbaa !193
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !190 ; 2 uses
  %i.bp = call i32 @rb_fiberptr_blocking(ptr noundef %i.bo) #17
  %.not.i32.us = icmp eq i32 %i.bp, 0
  %..i.us = select i1 %.not.i32.us, ptr %i.bo, ptr null
  store ptr %..i.us, ptr %i.as, align 8, !tbaa !194
  store ptr %2, ptr %i.av, align 8, !tbaa !48
  store ptr %2, ptr %i.au, align 8, !tbaa !73
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !72 ; 2 uses
  store ptr %i.bq, ptr %i.ax, align 8, !tbaa !72
  store ptr %i.au, ptr %i.bq, align 8, !tbaa !73
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !72
  %i.br = load ptr, ptr %i.av, align 8, !tbaa !48
  %i.bs = getelementptr i8, ptr %i.br, i64 32     ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !206
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 1, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i64 %1, ptr %6, align 8, !tbaa !212
  store i64 4, ptr %i.ay, align 8, !tbaa !214
  store i64 0, ptr %i.az, align 8, !tbaa !215
  %i.bv = call i64 @rb_ensure(ptr noundef nonnull @queue_sleep, i64 noundef %i.ba, ptr noundef nonnull @queue_sleep_done, i64 noundef %i.bb) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %queue_timeout2hrtime.exit.split.us

queue_timeout2hrtime.exit.split:                  ; preds = %bb.s, %queue_timeout2hrtime.exit.split.preheader
  %i.bw = load i64, ptr %i.a, align 1, !tbaa !209 ; 2 uses
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !46 ; 2 uses
  %i.bz = and i64 %i.by, 8192
  %.not.i29 = icmp eq i64 %i.bz, 0
  br i1 %.not.i29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %queue_timeout2hrtime.exit.split
  %i.ca = lshr i64 %i.by, 15
  %i.cb = and i64 %i.ca, 127
  br label %rb_array_len.exit31

bb.q:                                             ; preds = %queue_timeout2hrtime.exit.split
  %i.cc = getelementptr i8, ptr %i.bx, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !48
  br label %rb_array_len.exit31

rb_array_len.exit31:                              ; preds = %bb.p, %bb.q
  %.0.i30 = phi i64 [ %i.cb, %bb.p ], [ %i.cd, %bb.q ]
  %i.ce = icmp eq i64 %.0.i30, 0
  br i1 %i.ce, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %rb_array_len.exit31
  %i.cf = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.cg = and i64 %i.cf, 131072
  %.not = icmp eq i64 %i.cg, 0
  br i1 %.not, label %bb.s, label %.loopexit36

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 %1, ptr %5, align 8, !tbaa !191
  %i.ch = load ptr, ptr %i.ae, align 8, !tbaa !11
  store ptr %i.ch, ptr %i.ad, align 8, !tbaa !193
  %i.ci = load ptr, ptr %i.ag, align 8, !tbaa !190 ; 2 uses
  %i.cj = call i32 @rb_fiberptr_blocking(ptr noundef %i.ci) #17
  %.not.i32 = icmp eq i32 %i.cj, 0
  %..i = select i1 %.not.i32, ptr %i.ci, ptr null
  store ptr %..i, ptr %i.af, align 8, !tbaa !194
  store ptr %2, ptr %i.ai, align 8, !tbaa !48
  store ptr %2, ptr %i.ah, align 8, !tbaa !73
  %i.ck = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  store ptr %i.ck, ptr %i.ak, align 8, !tbaa !72
  store ptr %i.ah, ptr %i.ck, align 8, !tbaa !73
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !72
  %i.cl = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.cm = getelementptr i8, ptr %i.cl, i64 32     ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 1, !tbaa !206
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 1, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i64 %1, ptr %6, align 8, !tbaa !212
  store i64 %4, ptr %i.al, align 8, !tbaa !214
  store i64 %.0.i7.i, ptr %i.am, align 8, !tbaa !215
  %i.cp = call i64 @rb_ensure(ptr noundef nonnull @queue_sleep, i64 noundef %i.an, ptr noundef nonnull @queue_sleep_done, i64 noundef %i.ao) #17 ; 0 uses
  %i.cq = call i64 @rb_hrtime_now()
  %.not26 = icmp ult i64 %i.cq, %.0.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.not26, label %queue_timeout2hrtime.exit.split, label %.thread

.thread:                                          ; preds = %bb.s
  %.pre = load i64, ptr %i.a, align 8, !tbaa !209
  br label %.loopexit

.loopexit:                                        ; preds = %rb_array_len.exit31, %rb_array_len.exit31.us, %.thread
  %i.cr = phi i64 [ %i.bc, %rb_array_len.exit31.us ], [ %.pre, %.thread ], [ %i.bw, %rb_array_len.exit31 ]
  %i.cs = call i64 @rb_ary_shift(i64 noundef %i.cr) #17
  br label %.loopexit36

.loopexit36:                                      ; preds = %bb.r, %bb.n, %.loopexit, %bb.g
  %.1 = phi i64 [ 4, %bb.g ], [ %i.cs, %.loopexit ], [ 4, %bb.n ], [ 4, %bb.r ]
  ret i64 %.1
}

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @queue_sleep(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !212
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !214
  %i.g = getelementptr i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !215  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.j, ptr %i.b, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !11 ; 8 uses
  %i.l = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef %.val.i.i) #17 ; 2 uses
  %.not.i = icmp eq i64 %i.l, 4
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i64 @rb_fiber_scheduler_block(i64 noundef %i.l, i64 noundef %i.d, i64 noundef %i.f) #17 ; 0 uses
  br label %rb_thread_sleep_deadly_allow_spurious_wakeup.exit

bb.c:                                             ; preds = %bb.a
  %.not9.i = icmp eq i64 %i.h, 0
  br i1 %.not9.i, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.val.i.i, i64 248 ; 6 uses
  %i.o = load i8, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.p = tail call i64 @rb_hrtime_now()
  %.0.i.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 range(i64 1, 0) %i.h, i64 %i.p)
  store i64 %.0.i.i.i, ptr %i.a, align 8, !tbaa !144
  %i.q = load i8, ptr %i.n, align 8
  %i.r = and i8 %i.q, -4
  %i.s = or disjoint i8 %i.r, 1
  store i8 %i.s, ptr %i.n, align 8
  %i.t = getelementptr i8, ptr %.val.i.i, i64 48  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 48
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !11 ; 4 uses
  %i.w = getelementptr i8, ptr %.val.i.i.i, i64 280
  %.val15.i.i.i = load i64, ptr %i.w, align 8, !tbaa !25
  %i.x = inttoptr i64 %.val15.i.i.i to ptr        ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %i.z = and i64 %i.y, 8192
  %.not.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = lshr i64 %i.y, 15
  %i.ab = and i64 %i.aa, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i.i.i

rb_threadptr_pending_interrupt_empty_p.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i64 [ %i.ab, %bb.e ], [ %i.ad, %bb.f ]
  %.not.i.i.i = icmp eq i64 %.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i.i.i
  %i.ae = getelementptr i8, ptr %i.u, i64 32
  %i.af = load atomic volatile i32, ptr %i.ae monotonic, align 8
  %i.ag = getelementptr i8, ptr %i.u, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  %i.ai = xor i32 %i.ah, -1
  %i.aj = and i32 %i.af, %i.ai
  %.not16.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not16.i.i.i, label %vm_check_ints_blocking.exit.i.i, label %bb.i, !prof !49

bb.h:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i.i.i
  %i.ak = getelementptr i8, ptr %.val.i.i.i, i64 248 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = and i8 %i.al, -65
  store i8 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr i8, ptr %i.u, i64 32
  %i.ao = atomicrmw volatile or ptr %i.an, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i.i.i, i32 noundef 1), !inline_history !51
  %.not13.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not13.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %i.u, i64 32
  %i.ar = load atomic volatile i32, ptr %i.aq monotonic, align 8
  %i.as = getelementptr i8, ptr %i.u, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !50
  %i.au = xor i32 %i.at, -1
  %i.av = and i32 %i.ar, 10
  %i.aw = and i32 %i.av, %i.au
  %.not17.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not17.i.i.i, label %vm_check_ints_blocking.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i.i.i) #17, !inline_history !51 ; 2 uses
  %.not14.i.i.i = icmp eq i64 %i.ax, 4
  br i1 %.not14.i.i.i, label %vm_check_ints_blocking.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ax) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit.i.i

vm_check_ints_blocking.exit.i.i:                  ; preds = %bb.l, %bb.k, %bb.j, %bb.g
  %i.az = load i8, ptr %i.n, align 8              ; 2 uses
  %i.ba = and i8 %i.az, 3
  %i.bb = icmp eq i8 %i.ba, 1
  br i1 %i.bb, label %.lr.ph.i.i, label %sleep_hrtime_until.exit.i

.lr.ph.i.i:                                       ; preds = %vm_check_ints_blocking.exit.i.i
  %i.bc = getelementptr i8, ptr %.val.i.i, i64 40
  %i.bd = getelementptr i8, ptr %.val.i.i, i64 24
  br label %bb.m

bb.m:                                             ; preds = %hrtime_update_expire.exit.i.i, %.lr.ph.i.i
  %.val.i15.i.i = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.be = getelementptr i8, ptr %.val.i15.i.i, i64 104
  %.val.val.i.i.i = load i32, ptr %i.be, align 8, !tbaa !65
  %i.bf = icmp sgt i32 %.val.val.i.i.i, 0
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call fastcc void @native_cond_sleep(ptr noundef nonnull %.val.i.i, ptr noundef nonnull %i.a)
  br label %native_sleep.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bh = getelementptr i8, ptr %i.bg, i64 216
  %i.bi = call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.bh, ptr noundef nonnull %.val.i.i, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %i.a) ; 0 uses
  br label %native_sleep.exit.i.i

native_sleep.exit.i.i:                            ; preds = %bb.o, %bb.n
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !67  ; 6 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 48
  %.val.i16.i.i = load ptr, ptr %i.bk, align 8, !tbaa !11 ; 4 uses
  %i.bl = getelementptr i8, ptr %.val.i16.i.i, i64 280
  %.val15.i17.i.i = load i64, ptr %i.bl, align 8, !tbaa !25
  %i.bm = inttoptr i64 %.val15.i17.i.i to ptr     ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !46 ; 2 uses
  %i.bo = and i64 %i.bn, 8192
  %.not.i.i.i18.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i18.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %native_sleep.exit.i.i
  %i.bp = lshr i64 %i.bn, 15
  %i.bq = and i64 %i.bp, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i19.i.i

bb.q:                                             ; preds = %native_sleep.exit.i.i
  %i.br = getelementptr i8, ptr %i.bm, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i19.i.i

rb_threadptr_pending_interrupt_empty_p.exit.i19.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i20.i.i = phi i64 [ %i.bq, %bb.p ], [ %i.bs, %bb.q ]
  %.not.i21.i.i = icmp eq i64 %.0.i.i.i20.i.i, 0
  br i1 %.not.i21.i.i, label %bb.r, label %bb.s, !prof !49

bb.r:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i19.i.i
  %i.bt = getelementptr i8, ptr %i.bj, i64 32
  %i.bu = load atomic volatile i32, ptr %i.bt monotonic, align 8
  %i.bv = getelementptr i8, ptr %i.bj, i64 36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !50
  %i.bx = xor i32 %i.bw, -1
  %i.by = and i32 %i.bu, %i.bx
  %.not16.i26.i.i = icmp eq i32 %i.by, 0
  br i1 %.not16.i26.i.i, label %vm_check_ints_blocking.exit27.i.i, label %bb.t, !prof !49

bb.s:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i19.i.i
  %i.bz = getelementptr i8, ptr %.val.i16.i.i, i64 248 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8
  %i.cb = and i8 %i.ca, -65
  store i8 %i.cb, ptr %i.bz, align 8
  %i.cc = getelementptr i8, ptr %i.bj, i64 32
  %i.cd = atomicrmw volatile or ptr %i.cc, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i16.i.i, i32 noundef 1), !inline_history !51
  %.not13.i22.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not13.i22.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr i8, ptr %i.bj, i64 32
  %i.cg = load atomic volatile i32, ptr %i.cf monotonic, align 8
  %i.ch = getelementptr i8, ptr %i.bj, i64 36
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !50
  %i.cj = xor i32 %i.ci, -1
  %i.ck = and i32 %i.cg, 10
  %i.cl = and i32 %i.ck, %i.cj
  %.not17.i25.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not17.i25.i.i, label %vm_check_ints_blocking.exit27.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cm = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i16.i.i) #17, !inline_history !51 ; 2 uses
  %.not14.i23.i.i = icmp eq i64 %i.cm, 4
  br i1 %.not14.i23.i.i, label %vm_check_ints_blocking.exit27.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.cm) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit27.i.i

vm_check_ints_blocking.exit27.i.i:                ; preds = %bb.w, %bb.v, %bb.u, %bb.r
  %i.co = call i64 @rb_hrtime_now()               ; 2 uses
  %i.cp = icmp ugt i64 %i.co, %i.h
  %.pre.pre.i.i = load i8, ptr %i.n, align 8      ; 3 uses
  br i1 %i.cp, label %sleep_hrtime_until.exit.i, label %hrtime_update_expire.exit.i.i

hrtime_update_expire.exit.i.i:                    ; preds = %vm_check_ints_blocking.exit27.i.i
  %i.cq = sub nuw i64 %i.h, %i.co
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !144
  %i.cr = and i8 %.pre.pre.i.i, 3
  %i.cs = icmp eq i8 %i.cr, 1
  br i1 %i.cs, label %bb.m, label %sleep_hrtime_until.exit.i, !llvm.loop !456

sleep_hrtime_until.exit.i:                        ; preds = %hrtime_update_expire.exit.i.i, %vm_check_ints_blocking.exit27.i.i, %vm_check_ints_blocking.exit.i.i
  %i.ct = phi i8 [ %i.az, %vm_check_ints_blocking.exit.i.i ], [ %.pre.pre.i.i, %vm_check_ints_blocking.exit27.i.i ], [ %.pre.pre.i.i, %hrtime_update_expire.exit.i.i ]
  %i.cu = and i8 %i.o, 3
  %i.cv = and i8 %i.ct, -4
  %i.cw = or disjoint i8 %i.cv, %i.cu
  store i8 %i.cw, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %rb_thread_sleep_deadly_allow_spurious_wakeup.exit

bb.x:                                             ; preds = %bb.c
  tail call fastcc void @sleep_forever(ptr noundef %.val.i.i, i32 noundef 1)
  br label %rb_thread_sleep_deadly_allow_spurious_wakeup.exit

rb_thread_sleep_deadly_allow_spurious_wakeup.exit: ; preds = %bb.b, %sleep_hrtime_until.exit.i, %bb.x
  ret i64 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @queue_sleep_done(i64 noundef %0) #29 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = getelementptr i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !72
  store ptr %i.e, ptr %i.d, align 8, !tbaa !73
  %i.g = getelementptr i8, ptr %i.a, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  %i.j = load i32, ptr %i.i, align 1, !tbaa !206
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 1, !tbaa !206
  ret i64 0
}

declare i64 @rb_ary_shift(i64 noundef) local_unnamed_addr #4

declare double @rb_num2dbl(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #36

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @queue_mark_and_move(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.a) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @queue_memsize(ptr readnone captures(none) %0) #8 {
bb.a:
  ret i64 36
}

declare void @rb_gc_mark_and_move(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @szqueue_mark_and_move(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.a) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @szqueue_memsize(ptr readnone captures(none) %0) #8 {
bb.a:
  ret i64 64
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sync_wakeup(ptr noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %.not28 = icmp eq ptr %i.a, %0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.pn.in30 = phi ptr [ %.pn32, %bb.j ], [ %i.a, %bb.a ] ; 8 uses
  %.01629 = phi i64 [ %.1, %bb.j ], [ %1, %bb.a ] ; 2 uses
  %.01531 = getelementptr i8, ptr %.pn.in30, i64 -24
  %.pn32 = load ptr, ptr %.pn.in30, align 8, !tbaa !73 ; 4 uses
  %i.b = getelementptr i8, ptr %.pn.in30, i64 8   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.d = getelementptr i8, ptr %.pn32, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !72
  store ptr %.pn32, ptr %i.c, align 8, !tbaa !73
  store ptr %.pn.in30, ptr %i.b, align 8, !tbaa !72
  store ptr %.pn.in30, ptr %.pn.in30, align 8, !tbaa !73
  %i.e = getelementptr i8, ptr %.pn.in30, i64 -16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193  ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 248
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 3
  %.not20 = icmp eq i8 %i.i, 3
  br i1 %.not20, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.f, i64 432
  %i.k = load i64, ptr %i.j, align 8, !tbaa !228  ; 2 uses
  %.not21 = icmp eq i64 %i.k, 4
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.pn.in30, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !194  ; 2 uses
  %.not22 = icmp eq ptr %i.m, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %.01531, align 8, !tbaa !191
  %i.o = tail call i64 @rb_fiberptr_self(ptr noundef nonnull %i.m) #17
  %i.p = tail call i64 @rb_fiber_scheduler_unblock(i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.o) #17 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr i8, ptr %i.f, i64 296      ; 2 uses
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef %i.q) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %rb_native_mutex_lock.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.r) #41
  unreachable

rb_native_mutex_lock.exit.i.i:                    ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.f, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %i.v = atomicrmw volatile or ptr %i.u, i32 2 seq_cst, align 4 ; 0 uses
  %i.w = getelementptr i8, ptr %i.f, i64 336
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i3.i.i, label %threadptr_set_interrupt_locked.exit.i.i, label %bb.g

bb.g:                                             ; preds = %rb_native_mutex_lock.exit.i.i
  %i.y = getelementptr i8, ptr %i.f, i64 344
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77
  tail call void %i.x(ptr noundef %i.z) #17, !inline_history !229
  br label %threadptr_set_interrupt_locked.exit.i.i

threadptr_set_interrupt_locked.exit.i.i:          ; preds = %bb.g, %rb_native_mutex_lock.exit.i.i
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef %i.q) #17 ; 2 uses
  %.not.i4.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i4.i.i, label %rb_threadptr_interrupt.exit, label %bb.h

bb.h:                                             ; preds = %threadptr_set_interrupt_locked.exit.i.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.aa) #41
  unreachable

rb_threadptr_interrupt.exit:                      ; preds = %threadptr_set_interrupt_locked.exit.i.i
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.ac = getelementptr i8, ptr %i.ab, i64 248    ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = and i8 %i.ad, -4
  store i8 %i.ae, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %rb_threadptr_interrupt.exit, %bb.d
  %i.af = add i64 %.01629, -1                     ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
end_hunk_11
begin_hunk_12_@rb_io_prep_stdin

declare i64 @rb_io_prep_stdout() local_unnamed_addr #4

declare i64 @rb_io_prep_stderr() local_unnamed_addr #4

declare i64 @rb_fiber_scheduler_set(i64 noundef) local_unnamed_addr #4

declare i64 @rb_vm_make_jump_tag_but_local_jump(i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_ractor_atexit(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_ractor_atexit_exception(ptr noundef) local_unnamed_addr #4

declare void @rb_write_error_str(i64 noundef) local_unnamed_addr #4

declare void @rb_ec_error_print(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @rb_ruby_debug_ptr() local_unnamed_addr #4

declare void @rb_ractor_teardown(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @ruby_stop(i32 noundef) local_unnamed_addr #3

declare void @rb_ec_clear_current_thread_trace_func(ptr noundef) local_unnamed_addr #4

declare void @rb_fiber_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @thread_sched_to_dead(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %thread_sched_lock_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.a) #41
  unreachable

thread_sched_lock_.exit:                          ; preds = %bb.a
  %i.b = load ptr, ptr @rb_internal_thread_event_hooks, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %thread_sched_lock_.exit
  tail call fastcc void @rb_thread_execute_hooks(i32 noundef 8, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %thread_sched_lock_.exit
  %i.c = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i.i, label %thread_sched_deq.exit.i.thread.i, label %thread_sched_deq.exit.i.i

thread_sched_deq.exit.i.thread.i:                 ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !74
  br label %bb.e

thread_sched_deq.exit.i.i:                        ; preds = %bb.d
  %i.f = getelementptr i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr i8, ptr %.val.i, i64 104
  %.val.val.i = load i32, ptr %i.g, align 8, !tbaa !65
  %i.h = icmp slt i32 %.val.val.i, 1
  %i.i = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !73   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !72
  store ptr %i.k, ptr %i.j, align 8, !tbaa !73
  %i.m = getelementptr i8, ptr %i.d, i64 -72      ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !60
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !60
  store ptr %i.d, ptr %i.i, align 8, !tbaa !72
  store ptr %i.d, ptr %i.d, align 8, !tbaa !73
  %i.q = getelementptr i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.q, align 8, !tbaa !74
  tail call fastcc void @thread_sched_wakeup_running_thread(ptr noundef %i.m, i1 noundef zeroext %i.h)
  %.not.i.i6 = icmp eq ptr %1, %i.m
  br i1 %.not.i.i6, label %thread_sched_wakeup_next_thread.exit.i, label %bb.e

bb.e:                                             ; preds = %thread_sched_deq.exit.i.i, %thread_sched_deq.exit.i.thread.i
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57
  tail call fastcc void @thread_sched_setup_running_threads(ptr noundef nonnull %0, ptr noundef %i.s, ptr noundef null, ptr noundef nonnull %1, ptr noundef null)
  br label %thread_sched_wakeup_next_thread.exit.i

thread_sched_wakeup_next_thread.exit.i:           ; preds = %bb.e, %thread_sched_deq.exit.i.i
  %i.t = load ptr, ptr @rb_internal_thread_event_hooks, align 8, !tbaa !70
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %thread_sched_to_dead_common.exit, label %bb.f, !prof !49

bb.f:                                             ; preds = %thread_sched_wakeup_next_thread.exit.i
  tail call fastcc void @rb_thread_execute_hooks(i32 noundef 16, ptr noundef nonnull %1)
  br label %thread_sched_to_dead_common.exit

thread_sched_to_dead_common.exit:                 ; preds = %thread_sched_wakeup_next_thread.exit.i, %bb.f
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #17 ; 2 uses
  %.not.i.i7 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i7, label %thread_sched_unlock_.exit, label %bb.g

bb.g:                                             ; preds = %thread_sched_to_dead_common.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.u) #41
  unreachable

thread_sched_unlock_.exit:                        ; preds = %thread_sched_to_dead_common.exit
  ret void
}

declare void @rb_vm_lock_body() local_unnamed_addr #4

declare void @rb_vm_unlock_body() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @thread_do_start_proc(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 392
  %i.b = getelementptr i8, ptr %0, i64 400        ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !48
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !390  ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 48         ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 128
  store i64 4, ptr %i.j, align 8, !tbaa !341
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.g, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val.i.i.i = load i32, ptr %i.l, align 8, !tbaa !246
  switch i32 %.val.i.i.i, label %bb.c [
    i32 0, label %vm_proc_ep.exit.i
    i32 1, label %vm_proc_ep.exit.i
    i32 3, label %bb.b
    i32 2, label %rb_vm_proc_local_ep.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !48
  %.phi.trans.insert = inttoptr i64 %i.m to ptr
  %.phi.trans.insert80 = getelementptr i8, ptr %.phi.trans.insert, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !171
  br label %tailrecurse.i.i

bb.c:                                             ; preds = %tailrecurse.i.i
  unreachable

vm_proc_ep.exit.i:                                ; preds = %tailrecurse.i.i, %tailrecurse.i.i
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %rb_vm_proc_local_ep.exit, label %bb.d

bb.d:                                             ; preds = %vm_proc_ep.exit.i
  %i.p = tail call ptr @rb_vm_ep_local_ep(ptr noundef nonnull %i.o) #17
  %.pre81 = load ptr, ptr %i.h, align 8, !tbaa !67
  br label %rb_vm_proc_local_ep.exit

rb_vm_proc_local_ep.exit:                         ; preds = %tailrecurse.i.i, %vm_proc_ep.exit.i, %bb.d
  %i.q = phi ptr [ %.pre81, %bb.d ], [ %i.i, %vm_proc_ep.exit.i ], [ %i.i, %tailrecurse.i.i ] ; 8 uses
  %.0.i = phi ptr [ %i.p, %bb.d ], [ null, %vm_proc_ep.exit.i ], [ null, %tailrecurse.i.i ]
  %i.r = getelementptr i8, ptr %i.q, i64 104
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !485
  %i.s = getelementptr i8, ptr %i.q, i64 112
  store i64 0, ptr %i.s, align 8, !tbaa !486
  %i.t = getelementptr i8, ptr %i.q, i64 48
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !11 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i, i64 280
  %.val15.i = load i64, ptr %i.u, align 8, !tbaa !25
  %i.v = inttoptr i64 %.val15.i to ptr            ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46   ; 2 uses
  %i.x = and i64 %i.w, 8192
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_vm_proc_local_ep.exit
  %i.y = lshr i64 %i.w, 15
  %i.z = and i64 %i.y, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.f:                                             ; preds = %rb_vm_proc_local_ep.exit
  %i.aa = getelementptr i8, ptr %i.v, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.z, %bb.e ], [ %i.ab, %bb.f ]
  %.not.i41 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i41, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.ac = getelementptr i8, ptr %i.q, i64 32
  %i.ad = load atomic volatile i32, ptr %i.ac monotonic, align 8
  %i.ae = getelementptr i8, ptr %i.q, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !50
  %i.ag = xor i32 %i.af, -1
  %i.ah = and i32 %i.ad, %i.ag
  %.not16.i = icmp eq i32 %i.ah, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.i, !prof !49

bb.h:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.ai = getelementptr i8, ptr %.val.i, i64 248  ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = and i8 %i.aj, -65
  store i8 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr i8, ptr %i.q, i64 32
  %i.am = atomicrmw volatile or ptr %i.al, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.an, 0
  br i1 %.not13.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.q, i64 32
  %i.ap = load atomic volatile i32, ptr %i.ao monotonic, align 8
  %i.aq = getelementptr i8, ptr %i.q, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !50
  %i.as = xor i32 %i.ar, -1
  %i.at = and i32 %i.ap, 10
  %i.au = and i32 %i.at, %i.as
  %.not17.i = icmp eq i32 %i.au, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.av, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.av) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  %i.ax = getelementptr i8, ptr %0, i64 416
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !254
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %bb.m, label %bb.w

bb.m:                                             ; preds = %vm_check_ints_blocking.exit
  %i.ba = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56
  %.val = load i64, ptr %i.bb, align 8, !tbaa !487
  %i.bc = load i64, ptr @cThGroup, align 8, !tbaa !144
  %i.bd = tail call i64 @rb_obj_alloc(i64 noundef %i.bc) #17 ; 2 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !56
  %i.bf = getelementptr i8, ptr %i.be, i64 328
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !403
  %i.bg = getelementptr i8, ptr %0, i64 264
  store i64 %i.bd, ptr %i.bg, align 8, !tbaa !253
  %i.bh = tail call i64 @rb_fix2int(i64 noundef %i.c) #17 ; 2 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %sext75 = shl i64 %i.bh, 32                     ; 2 uses
  %i.bj = ashr exact i64 %sext75, 32              ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 2305843009213693951
  br i1 %i.bk, label %bb.n, label %rbimpl_size_mul_or_raise.exit, !prof !139

bb.n:                                             ; preds = %bb.m
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.bj) #41
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.m
  %i.bl = ashr exact i64 %sext75, 29
  %i.bm = alloca i8, i64 %i.bl, align 16          ; 2 uses
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !56
  call void @rb_ractor_receive_parameters(ptr noundef %i.bn, ptr noundef %i.bo, i32 noundef %i.bi, ptr noundef nonnull %i.bm) #17
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !67  ; 6 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 48
  %.val.i43 = load ptr, ptr %i.bq, align 8, !tbaa !11 ; 4 uses
  %i.br = getelementptr i8, ptr %.val.i43, i64 280
  %.val15.i44 = load i64, ptr %i.br, align 8, !tbaa !25
  %i.bs = inttoptr i64 %.val15.i44 to ptr         ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !46 ; 2 uses
  %i.bu = and i64 %i.bt, 8192
  %.not.i.i.i45 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bv = lshr i64 %i.bt, 15
  %i.bw = and i64 %i.bv, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i46

bb.p:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bx = getelementptr i8, ptr %i.bs, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i46

rb_threadptr_pending_interrupt_empty_p.exit.i46:  ; preds = %bb.p, %bb.o
  %.0.i.i.i47 = phi i64 [ %i.bw, %bb.o ], [ %i.by, %bb.p ]
  %.not.i48 = icmp eq i64 %.0.i.i.i47, 0
  br i1 %.not.i48, label %bb.q, label %bb.r, !prof !49

bb.q:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i46
  %i.bz = getelementptr i8, ptr %i.bp, i64 32
  %i.ca = load atomic volatile i32, ptr %i.bz monotonic, align 8
  %i.cb = getelementptr i8, ptr %i.bp, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !50
  %i.cd = xor i32 %i.cc, -1
  %i.ce = and i32 %i.ca, %i.cd
  %.not16.i53 = icmp eq i32 %i.ce, 0
  br i1 %.not16.i53, label %vm_check_ints_blocking.exit54, label %bb.s, !prof !49

bb.r:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i46
  %i.cf = getelementptr i8, ptr %.val.i43, i64 248 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = and i8 %i.cg, -65
  store i8 %i.ch, ptr %i.cf, align 8
  %i.ci = getelementptr i8, ptr %i.bp, i64 32
  %i.cj = atomicrmw volatile or ptr %i.ci, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ck = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i43, i32 noundef 1), !inline_history !51
  %.not13.i49 = icmp eq i32 %i.ck, 0
  br i1 %.not13.i49, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr i8, ptr %i.bp, i64 32
  %i.cm = load atomic volatile i32, ptr %i.cl monotonic, align 8
  %i.cn = getelementptr i8, ptr %i.bp, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !50
  %i.cp = xor i32 %i.co, -1
  %i.cq = and i32 %i.cm, 10
  %i.cr = and i32 %i.cq, %i.cp
  %.not17.i52 = icmp eq i32 %i.cr, 0
  br i1 %.not17.i52, label %vm_check_ints_blocking.exit54, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cs = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i43) #17, !inline_history !51 ; 2 uses
  %.not14.i50 = icmp eq i64 %i.cs, 4
  br i1 %.not14.i50, label %vm_check_ints_blocking.exit54, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.cs) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit54

vm_check_ints_blocking.exit54:                    ; preds = %bb.q, %bb.t, %bb.u, %bb.v
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.cv = getelementptr i8, ptr %0, i64 408
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !48
  %i.cx = call i64 @rb_vm_invoke_proc_with_self(ptr noundef %i.cu, ptr noundef %i.g, i64 noundef %.val, i32 noundef %i.bi, ptr noundef nonnull %i.bm, i32 noundef %i.cw, i64 noundef 0) #17
  br label %bb.aq

bb.w:                                             ; preds = %vm_check_ints_blocking.exit
  %i.cy = inttoptr i64 %i.c to ptr                ; 6 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !46 ; 2 uses
  %i.da = and i64 %i.cz, 8192
  %.not.i.i = icmp eq i64 %i.da, 0                ; 3 uses
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = lshr i64 %i.cz, 15
  %i.dc = and i64 %i.db, 127
  br label %rb_array_len.exit.i

bb.y:                                             ; preds = %bb.w
  %i.dd = getelementptr i8, ptr %i.cy, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !48
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.y, %bb.x
  %.0.i.i = phi i64 [ %i.dc, %bb.x ], [ %i.de, %bb.y ] ; 8 uses
  %i.df = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.df, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.z

bb.z:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #48
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.dg = trunc nsw i64 %.0.i.i to i32
  %i.dh = icmp slt i64 %.0.i.i, 8
  br i1 %i.dh, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %RARRAY_LENINT.exit
  %i.di = icmp ugt i64 %.0.i.i, 2305843009213693951
  br i1 %i.di, label %bb.ab, label %rbimpl_size_mul_or_raise.exit55, !prof !139

bb.ab:                                            ; preds = %bb.aa
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %.0.i.i) #41
  unreachable

rbimpl_size_mul_or_raise.exit55:                  ; preds = %bb.aa
  %i.dj = shl nuw i64 %.0.i.i, 3
  %i.dk = and i64 %i.dj, 34359738360              ; 2 uses
  %i.dl = alloca i8, i64 %i.dk, align 16          ; 2 uses
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %rbimpl_size_mul_or_raise.exit55
  %i.dm = getelementptr i8, ptr %i.cy, i64 16
  br label %rbimpl_size_mul_or_raise.exit58

bb.ad:                                            ; preds = %rbimpl_size_mul_or_raise.exit55
  %i.dn = getelementptr i8, ptr %i.cy, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !48
  br label %rbimpl_size_mul_or_raise.exit58

rbimpl_size_mul_or_raise.exit58:                  ; preds = %bb.ad, %bb.ac
  %.0.i57 = phi ptr [ %i.dm, %bb.ac ], [ %i.do, %bb.ad ]
  %.not.i59 = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i59, label %ruby_nonempty_memcpy.exit, label %bb.ae

bb.ae:                                            ; preds = %rbimpl_size_mul_or_raise.exit58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dl, ptr readonly align 1 %.0.i57, i64 range(i64 -17179869184, 17179869177) %i.dk, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit58, %bb.ae
  store i64 4, ptr %i.b, align 8, !tbaa !48
  br label %rb_array_const_ptr.exit62

bb.af:                                            ; preds = %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = getelementptr i8, ptr %i.cy, i64 16
  br label %rb_array_const_ptr.exit62

bb.ah:                                            ; preds = %bb.af
  %i.dq = getelementptr i8, ptr %i.cy, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !48
  br label %rb_array_const_ptr.exit62

rb_array_const_ptr.exit62:                        ; preds = %bb.ah, %bb.ag, %ruby_nonempty_memcpy.exit
  %.039 = phi ptr [ %i.dl, %ruby_nonempty_memcpy.exit ], [ %i.dp, %bb.ag ], [ %i.dr, %bb.ah ]
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !67  ; 6 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 48
  %.val.i63 = load ptr, ptr %i.dt, align 8, !tbaa !11 ; 4 uses
  %i.du = getelementptr i8, ptr %.val.i63, i64 280
  %.val15.i64 = load i64, ptr %i.du, align 8, !tbaa !25
  %i.dv = inttoptr i64 %.val15.i64 to ptr         ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !46 ; 2 uses
  %i.dx = and i64 %i.dw, 8192
  %.not.i.i.i65 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i65, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %rb_array_const_ptr.exit62
  %i.dy = lshr i64 %i.dw, 15
  %i.dz = and i64 %i.dy, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i66

bb.aj:                                            ; preds = %rb_array_const_ptr.exit62
  %i.ea = getelementptr i8, ptr %i.dv, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i66

rb_threadptr_pending_interrupt_empty_p.exit.i66:  ; preds = %bb.aj, %bb.ai
  %.0.i.i.i67 = phi i64 [ %i.dz, %bb.ai ], [ %i.eb, %bb.aj ]
  %.not.i68 = icmp eq i64 %.0.i.i.i67, 0
  br i1 %.not.i68, label %bb.ak, label %bb.al, !prof !49

bb.ak:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i66
  %i.ec = getelementptr i8, ptr %i.ds, i64 32
  %i.ed = load atomic volatile i32, ptr %i.ec monotonic, align 8
  %i.ee = getelementptr i8, ptr %i.ds, i64 36
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !50
  %i.eg = xor i32 %i.ef, -1
  %i.eh = and i32 %i.ed, %i.eg
  %.not16.i73 = icmp eq i32 %i.eh, 0
  br i1 %.not16.i73, label %vm_check_ints_blocking.exit74, label %bb.am, !prof !49

bb.al:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i66
  %i.ei = getelementptr i8, ptr %.val.i63, i64 248 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 8
  %i.ek = and i8 %i.ej, -65
  store i8 %i.ek, ptr %i.ei, align 8
  %i.el = getelementptr i8, ptr %i.ds, i64 32
  %i.em = atomicrmw volatile or ptr %i.el, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.en = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i63, i32 noundef 1), !inline_history !51
  %.not13.i69 = icmp eq i32 %i.en, 0
  br i1 %.not13.i69, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eo = getelementptr i8, ptr %i.ds, i64 32
  %i.ep = load atomic volatile i32, ptr %i.eo monotonic, align 8
  %i.eq = getelementptr i8, ptr %i.ds, i64 36
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !50
  %i.es = xor i32 %i.er, -1
  %i.et = and i32 %i.ep, 10
  %i.eu = and i32 %i.et, %i.es
  %.not17.i72 = icmp eq i32 %i.eu, 0
  br i1 %.not17.i72, label %vm_check_ints_blocking.exit74, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ev = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i63) #17, !inline_history !51 ; 2 uses
  %.not14.i70 = icmp eq i64 %i.ev, 4
  br i1 %.not14.i70, label %vm_check_ints_blocking.exit74, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ev) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit74

vm_check_ints_blocking.exit74:                    ; preds = %bb.ak, %bb.an, %bb.ao, %bb.ap
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.ey = getelementptr i8, ptr %0, i64 408
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !48
  %i.fa = call i64 @rb_vm_invoke_proc(ptr noundef %i.ex, ptr noundef %i.g, i32 noundef %i.dg, ptr noundef %.039, i32 noundef %i.ez, i64 noundef 0) #17
  br label %bb.aq

bb.aq:                                            ; preds = %vm_check_ints_blocking.exit74, %vm_check_ints_blocking.exit54
  %.0 = phi i64 [ %i.cx, %vm_check_ints_blocking.exit54 ], [ %i.fa, %vm_check_ints_blocking.exit74 ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_setname_np(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #40

declare i64 @rb_proc_location(i64 noundef) local_unnamed_addr #4

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #4

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i32 @RB_FIX2INT(i64 noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = tail call i64 @rb_fix2int(i64 noundef %0) #17
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

declare void @rb_ractor_receive_parameters(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_vm_invoke_proc_with_self(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_vm_invoke_proc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @thread_cleanup_func_before_exec(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = or i8 %i.b, 3
  store i8 %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr i8, ptr %i.e, i64 176
  %i.g = getelementptr i8, ptr %0, i64 296        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef %i.g) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %rb_native_mutex_lock.exit.preheader.i, label %bb.b

rb_native_mutex_lock.exit.preheader.i:            ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 368        ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %.not.i48.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i48.i, label %ccan_list_pop_.exit.thread.i, label %ccan_list_pop_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.h) #41
  unreachable

ccan_list_pop_.exit.i:                            ; preds = %rb_native_mutex_lock.exit.preheader.i, %ccan_list_pop_.exit.i
  %i.k = phi ptr [ %i.p, %ccan_list_pop_.exit.i ], [ %i.j, %rb_native_mutex_lock.exit.preheader.i ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !72
  store ptr %i.n, ptr %i.m, align 8, !tbaa !73
  tail call void @ruby_xfree(ptr noundef nonnull %i.k) #17
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %.not.i4.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i4.i, label %ccan_list_pop_.exit.thread.i, label %ccan_list_pop_.exit.i, !llvm.loop !488

ccan_list_pop_.exit.thread.i:                     ; preds = %ccan_list_pop_.exit.i, %rb_native_mutex_lock.exit.preheader.i
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef %i.g) #17 ; 2 uses
  %.not.i5.i = icmp eq i32 %i.q, 0
  br i1 %.not.i5.i, label %threadptr_interrupt_exec_cleanup.exit, label %bb.c

bb.c:                                             ; preds = %ccan_list_pop_.exit.thread.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.q) #41
  unreachable

threadptr_interrupt_exec_cleanup.exit:            ; preds = %ccan_list_pop_.exit.thread.i
  tail call void @rb_threadptr_root_fiber_terminate(ptr noundef nonnull %0) #17
  ret void
}

declare void @rb_threadptr_root_fiber_terminate(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @co_start(ptr readnone captures(none) %0, ptr noundef %1) #24 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !267  ; 12 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 216      ; 3 uses
  %i.g = getelementptr i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr i8, ptr %i.e, i64 272      ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.j, %i.i
  %i.k = select i1 %.not.i, ptr null, ptr %i.c
  tail call fastcc void @thread_sched_setup_running_threads(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.c, ptr noundef null, ptr noundef %i.k)
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %thread_sched_unlock_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.l) #41
  unreachable

thread_sched_unlock_.exit:                        ; preds = %bb.a
  %i.m = load ptr, ptr @rb_internal_thread_event_hooks, align 8, !tbaa !70
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %thread_sched_unlock_.exit
  tail call fastcc void @rb_thread_execute_hooks(i32 noundef 4, ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %thread_sched_unlock_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !144
  call fastcc void @native_thread_init_stack(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  call fastcc void @thread_start_func_2(ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.n = call i32 @pthread_mutex_lock(ptr noundef %i.f) #17 ; 2 uses
  %.not.i.i31 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i31, label %thread_sched_lock_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.n) #41
  unreachable

thread_sched_lock_.exit:                          ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.c, i64 40       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 104
  %.val.val = load i32, ptr %i.q, align 8, !tbaa !65
  %i.r = icmp sgt i32 %.val.val, 0
  store ptr null, ptr %i.o, align 8, !tbaa !64
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !56
  call void @rb_current_ec_set(ptr noundef null) #17
  %i.t = getelementptr i8, ptr %i.s, i64 312
  store ptr null, ptr %i.t, align 8, !tbaa !88
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %thread_sched_lock_.exit
  %i.u = getelementptr i8, ptr %i.c, i64 188
  store i8 1, ptr %i.u, align 4, !tbaa !152
  br label %bb.l

bb.g:                                             ; preds = %thread_sched_lock_.exit
  %i.v = getelementptr i8, ptr %i.e, i64 256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74   ; 8 uses
  %.not29 = icmp eq ptr %i.w, null
  br i1 %.not29, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.w, i64 40       ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %.not30 = icmp eq ptr %i.y, null
  br i1 %.not30, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.c, i64 188
  store i8 1, ptr %i.z, align 4, !tbaa !152
  %i.aa = getelementptr i8, ptr %i.c, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = getelementptr i8, ptr %i.w, i64 56      ; 3 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 64
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !72
  store ptr %i.ac, ptr %i.ac, align 8, !tbaa !73
  %i.ae = getelementptr i8, ptr %i.w, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67 ; 3 uses
end_hunk_12
begin_hunk_13_@thread_join:bb.a
  %.not31 = icmp eq i64 %i.ag, 4
  br i1 %.not31, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ag, label %bb.j [
    i64 17, label %bb.m
    i64 5, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.ai = call fastcc i32 @RB_FIX2INT(i64 noundef %i.ag)
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.242, i32 noundef %i.ai) #48
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aj = icmp eq i64 %i.ag, 0
  %i.ak = and i64 %i.ag, 6
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = or i1 %i.aj, %i.al
  br i1 %i.am, label %imemo_throw_data_p.exit.thread, label %imemo_throw_data_p.exit

imemo_throw_data_p.exit:                          ; preds = %bb.k
  %i.an = inttoptr i64 %i.ag to ptr
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !46
  %i.ap = and i64 %i.ao, 31
  %i.aq = icmp eq i64 %i.ap, 26
  br i1 %i.aq, label %bb.l, label %imemo_throw_data_p.exit.thread

bb.l:                                             ; preds = %imemo_throw_data_p.exit
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.243) #48
  unreachable

imemo_throw_data_p.exit.thread:                   ; preds = %bb.k, %imemo_throw_data_p.exit
  call void @rb_exc_raise(i64 noundef %i.ag) #41
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.i, %bb.g
  %i.ar = getelementptr i8, ptr %0, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.m
  %.1 = phi i64 [ %i.as, %bb.m ], [ 4, %bb.f ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @thread_join_sleep(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !502  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !500
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !452  ; 8 uses
  %i.g = getelementptr i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !504  ; 5 uses
  %.not = icmp eq ptr %i.h, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !144
  %i.j = tail call i64 @rb_hrtime_now()
  %.0.i = tail call noundef i64 @llvm.uadd.sat.i64(i64 %i.i, i64 %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.027 = phi i64 [ %.0.i, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.k = getelementptr i8, ptr %i.c, i64 272
  %i.l = getelementptr i8, ptr %i.c, i64 248      ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, 3
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %hrtime_update_expire.exit, label %thread_finished.exit.lr.ph

thread_finished.exit.lr.ph:                       ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.q = getelementptr i8, ptr %i.f, i64 248      ; 8 uses
  %i.r = getelementptr i8, ptr %i.f, i64 40
  %i.s = getelementptr i8, ptr %i.f, i64 24       ; 4 uses
  %i.t = getelementptr i8, ptr %i.f, i64 48
  br label %thread_finished.exit

thread_finished.exit:                             ; preds = %thread_finished.exit.lr.ph, %vm_check_ints_blocking.exit
  %i.u = load i64, ptr %i.k, align 8, !tbaa !405
  %.not43 = icmp eq i64 %i.u, 36
  br i1 %.not43, label %bb.d, label %hrtime_update_expire.exit

bb.d:                                             ; preds = %thread_finished.exit
  %i.v = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef %i.f) #17 ; 4 uses
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not33 = icmp eq i64 %i.v, 4
  br i1 %.not33, label %sleep_forever.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.p, align 8, !tbaa !80
  %i.x = tail call i64 @rb_fiber_scheduler_block(i64 noundef %i.v, i64 noundef %i.w, i64 noundef 4) #17 ; 0 uses
  br label %.critedge

sleep_forever.exit:                               ; preds = %bb.e
  %i.y = load i8, ptr %i.q, align 8               ; 2 uses
  %i.z = and i8 %i.y, -4
  %i.aa = or disjoint i8 %i.z, 2
  store i8 %i.aa, ptr %i.q, align 8
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !56  ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 208    ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !195
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !195
  tail call fastcc void @rb_check_deadlock(ptr noundef %i.ab)
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.ag = getelementptr i8, ptr %i.af, i64 216
  tail call fastcc void @thread_sched_to_waiting_until_wakeup(ptr noundef %i.ag, ptr noundef nonnull %i.f)
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.ai = getelementptr i8, ptr %i.ah, i64 208    ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !195
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !195
  %i.al = and i8 %i.y, 3
  %i.am = load i8, ptr %i.q, align 8
  %i.an = and i8 %i.am, -4
  %i.ao = or disjoint i8 %i.an, %i.al
  store i8 %i.ao, ptr %i.q, align 8
  br label %.critedge

bb.g:                                             ; preds = %bb.d
  %i.ap = tail call i64 @rb_hrtime_now()          ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, %.027
  br i1 %i.aq, label %.hrtime_update_expire.exit_crit_edge44, label %bb.h, !llvm.loop !505

bb.h:                                             ; preds = %bb.g
  %i.ar = sub nuw i64 %.027, %i.ap                ; 2 uses
  store i64 %i.ar, ptr %i.h, align 8, !tbaa !144
  %.not35 = icmp eq i64 %i.v, 4
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = uitofp i64 %i.ar to double
  %i.at = fdiv double %i.as, 1.000000e+09
  %i.au = tail call i64 @rb_float_new(double noundef %i.at) #17
  %i.av = load i64, ptr %i.p, align 8, !tbaa !80
  %i.aw = tail call i64 @rb_fiber_scheduler_block(i64 noundef %i.v, i64 noundef %i.av, i64 noundef %i.au) #17 ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ax = load i8, ptr %i.q, align 8
  %i.ay = and i8 %i.ax, -4
  %i.az = or disjoint i8 %i.ay, 1
  store i8 %i.az, ptr %i.q, align 8
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.ba = getelementptr i8, ptr %.val.i, i64 104
  %.val.val.i = load i32, ptr %i.ba, align 8, !tbaa !65
  %i.bb = icmp sgt i32 %.val.val.i, 0
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @native_cond_sleep(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.bd = getelementptr i8, ptr %i.bc, i64 216
  %i.be = tail call fastcc zeroext i1 @thread_sched_wait_events(ptr noundef %i.bd, ptr noundef nonnull %i.f, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %i.h) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.i, %bb.f, %sleep_forever.exit
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !67  ; 6 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 48
  %.val.i37 = load ptr, ptr %i.bg, align 8, !tbaa !11 ; 4 uses
  %i.bh = getelementptr i8, ptr %.val.i37, i64 280
  %.val15.i = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.bi = inttoptr i64 %.val15.i to ptr           ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !46 ; 2 uses
  %i.bk = and i64 %i.bj, 8192
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.bl = lshr i64 %i.bj, 15
  %i.bm = and i64 %i.bl, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

bb.n:                                             ; preds = %.critedge
  %i.bn = getelementptr i8, ptr %i.bi, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i

rb_threadptr_pending_interrupt_empty_p.exit.i:    ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi i64 [ %i.bm, %bb.m ], [ %i.bo, %bb.n ]
  %.not.i38 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i38, label %bb.o, label %bb.p, !prof !49

bb.o:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bp = getelementptr i8, ptr %i.bf, i64 32
  %i.bq = load atomic volatile i32, ptr %i.bp monotonic, align 8
  %i.br = getelementptr i8, ptr %i.bf, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !50
  %i.bt = xor i32 %i.bs, -1
  %i.bu = and i32 %i.bq, %i.bt
  %.not16.i = icmp eq i32 %i.bu, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.q, !prof !49

bb.p:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.bv = getelementptr i8, ptr %.val.i37, i64 248 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8
  %i.bx = and i8 %i.bw, -65
  store i8 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr i8, ptr %i.bf, i64 32
  %i.bz = atomicrmw volatile or ptr %i.by, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i37, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.ca, 0
  br i1 %.not13.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr i8, ptr %i.bf, i64 32
  %i.cc = load atomic volatile i32, ptr %i.cb monotonic, align 8
  %i.cd = getelementptr i8, ptr %i.bf, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !50
  %i.cf = xor i32 %i.ce, -1
  %i.cg = and i32 %i.cc, 10
  %i.ch = and i32 %i.cg, %i.cf
  %.not17.i = icmp eq i32 %i.ch, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ci = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i37) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.ci, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.ci) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.o, %bb.r, %bb.s, %bb.t
  %i.ck = load i8, ptr %i.q, align 8
  %i.cl = and i8 %i.ck, -4
  store i8 %i.cl, ptr %i.q, align 8
  %i.cm = load i8, ptr %i.l, align 8
  %i.cn = and i8 %i.cm, 3
  %i.co = icmp eq i8 %i.cn, 3
  br i1 %i.co, label %hrtime_update_expire.exit, label %thread_finished.exit

.hrtime_update_expire.exit_crit_edge44:           ; preds = %bb.g
  br label %hrtime_update_expire.exit, !llvm.loop !505

hrtime_update_expire.exit:                        ; preds = %thread_finished.exit, %vm_check_ints_blocking.exit, %.hrtime_update_expire.exit_crit_edge44, %bb.c
  %.2 = phi i64 [ 0, %.hrtime_update_expire.exit_crit_edge44 ], [ 20, %bb.c ], [ 20, %vm_check_ints_blocking.exit ], [ 20, %thread_finished.exit ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @remove_from_join_list(i64 noundef %0) #42 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !502  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 248
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 3
  %.not = icmp eq i8 %i.f, 3
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 384
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.d ]  ; 2 uses
  %i.h = load ptr, ptr %.0, align 8, !tbaa !451   ; 4 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !500
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.c, !llvm.loop !506

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !480
  store ptr %i.k, ptr %.0, align 8, !tbaa !451
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.a
  ret i64 4
}

declare i64 @rb_float_new(double noundef) local_unnamed_addr #4

declare i64 @rb_check_id(ptr noundef) local_unnamed_addr #4

declare i64 @rb_to_id(i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_key_err_raise(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #43 {
bb.a:
  %i.a = tail call i64 @rb_key_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #17
  tail call void @rb_exc_raise(i64 noundef %i.a) #41
  unreachable
}

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_key_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_new() local_unnamed_addr #4

declare void @rb_id_table_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @thread_keys_i(i64 noundef %0, i64 %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = tail call i64 @rb_id2sym(i64 noundef %0) #17
  %i.c = tail call i64 @rb_ary_push(i64 noundef %i.a, i64 noundef %i.b) #17 ; 0 uses
  ret i32 0
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_to_symbol(i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rb_thread_local_storage(i64 noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = and i64 %i.b, 33554432
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_hash_new() #17
  %i.e = tail call i64 @rb_ivar_set(i64 noundef %0, i64 noundef 3521, i64 noundef %i.d) #17 ; 0 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !46
  %i.g = or i64 %i.f, 33554432
  store i64 %i.g, ptr %i.a, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i64 @rb_ivar_get(i64 noundef %0, i64 noundef 3521) #17
  ret i64 %i.h
}

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ivar_get(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @keys_i(i64 noundef %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %0) #17 ; 0 uses
  ret i32 0
}

declare i64 @rb_vm_thread_backtrace(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_vm_thread_backtrace_locations(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #4

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #32

declare i64 @rb_class_path(i64 noundef) local_unnamed_addr #4

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #4

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @queue_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 36, ptr noundef nonnull @queue_data_type) #17 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !169
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !59
  store ptr %i.h, ptr %i.h, align 8, !tbaa !58
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_queue_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @queue_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @queue_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @queue_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 11 uses
  %i.u = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.v = getelementptr i8, ptr %i.u, i64 496
  %i.w = load i64, ptr %i.v, align 8, !tbaa !203  ; 2 uses
  %i.x = getelementptr i8, ptr %.1.i.i, i64 16    ; 2 uses
  %i.y = load i64, ptr %i.x, align 1, !tbaa !204
  %i.z = icmp eq i64 %i.y, %i.w
  br i1 %i.z, label %queue_ptr.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  store i64 %i.w, ptr %i.x, align 1, !tbaa !204
  %i.aa = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr %.1.i.i, ptr %i.aa, align 8, !tbaa !59
  store ptr %.1.i.i, ptr %.1.i.i, align 8, !tbaa !58
  %i.ab = getelementptr i8, ptr %.1.i.i, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !206
  br label %queue_ptr.exit

queue_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i, %bb.e
  %i.ac = icmp slt i32 %0, 0
  br i1 %i.ac, label %bb.f, label %.preheader.split.split

.preheader.split.split:                           ; preds = %queue_ptr.exit
  %.not.not = icmp eq i32 %0, 0                   ; 2 uses
  br i1 %.not.not, label %rb_scan_args_set.exit, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.ad = icmp eq i32 %0, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us, %queue_ptr.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #41
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.ae = load i64, ptr %1, align 8, !tbaa !144
  %i.af = tail call i64 @rb_to_array(i64 noundef %i.ae) #17
  br label %rb_scan_args_set.exit

rb_scan_args_set.exit:                            ; preds = %.preheader.split.split, %bb.g
  %.sink = phi i64 [ %i.af, %bb.g ], [ 4, %.preheader.split.split ]
  %i.ag = getelementptr i8, ptr %.1.i.i, i64 24   ; 2 uses
  %i.ah = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #17 ; 4 uses
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !144
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = and i64 %i.ah, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %rb_obj_write.exit, label %bb.h

bb.h:                                             ; preds = %rb_scan_args_set.exit
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.ah) #17
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_scan_args_set.exit, %bb.h
  %i.am = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr %.1.i.i, ptr %i.am, align 8, !tbaa !59
  store ptr %.1.i.i, ptr %.1.i.i, align 8, !tbaa !58
  br i1 %.not.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %rb_obj_write.exit
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !209
  %i.ao = tail call i64 @rb_ary_concat(i64 noundef %i.an, i64 noundef %.sink) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %rb_obj_write.exit
  ret i64 %2
}

declare void @rb_undef_method(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @undumpable(i64 noundef %0) #24 {
bb.a:
  %i.a = load i64, ptr @rb_eTypeError, align 8, !tbaa !144
  %i.b = tail call i64 @rb_obj_class(i64 noundef %0) #17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.286, i64 noundef %i.b) #41
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_queue_close(i64 noundef returned %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7                            ; 2 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @queue_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @queue_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @queue_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 7 uses
  %i.u = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.v = getelementptr i8, ptr %i.u, i64 496
  %i.w = load i64, ptr %i.v, align 8, !tbaa !203  ; 2 uses
  %i.x = getelementptr i8, ptr %.1.i.i, i64 16    ; 2 uses
  %i.y = load i64, ptr %i.x, align 1, !tbaa !204
  %i.z = icmp eq i64 %i.y, %i.w
  br i1 %i.z, label %queue_ptr.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  store i64 %i.w, ptr %i.x, align 1, !tbaa !204
  %i.aa = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr %.1.i.i, ptr %i.aa, align 8, !tbaa !59
  store ptr %.1.i.i, ptr %.1.i.i, align 8, !tbaa !58
  %i.ab = getelementptr i8, ptr %.1.i.i, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !206
  br label %queue_ptr.exit

queue_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i, %bb.e
  %i.ac = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %i.ae = and i64 %i.ad, 131072
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %queue_ptr.exit
  %i.af = icmp ne i64 %0, 0
  %i.ag = icmp eq i64 %i.b, 0
  %.not4.i = and i1 %i.af, %i.ag
  br i1 %.not4.i, label %bb.g, label %RB_FL_SET.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = or disjoint i64 %i.ad, 131072
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !46
  br label %RB_FL_SET.exit

RB_FL_SET.exit:                                   ; preds = %bb.f, %bb.g
  tail call fastcc void @sync_wakeup(ptr noundef nonnull readonly %.1.i.i, i64 noundef 9223372036854775807)
  br label %bb.h

bb.h:                                             ; preds = %RB_FL_SET.exit, %queue_ptr.exit
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_queue_closed_p(i64 noundef %0) #23 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = and i64 %i.b, 131072
  %.not = icmp eq i64 %i.c, 0
  %i.d = select i1 %.not, i64 0, i64 20
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_queue_push(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @queue_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @queue_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @queue_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.u = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.v = getelementptr i8, ptr %i.u, i64 496
  %i.w = load i64, ptr %i.v, align 8, !tbaa !203  ; 2 uses
  %i.x = getelementptr i8, ptr %.1.i.i, i64 16    ; 2 uses
  %i.y = load i64, ptr %i.x, align 1, !tbaa !204
  %i.z = icmp eq i64 %i.y, %i.w
  br i1 %i.z, label %queue_ptr.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  store i64 %i.w, ptr %i.x, align 1, !tbaa !204
  %i.aa = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr %.1.i.i, ptr %i.aa, align 8, !tbaa !59
  store ptr %.1.i.i, ptr %.1.i.i, align 8, !tbaa !58
  %i.ab = getelementptr i8, ptr %.1.i.i, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !206
  br label %queue_ptr.exit

queue_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i, %bb.e
  %i.ac = inttoptr i64 %0 to ptr
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = and i64 %i.ad, 131072
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %queue_ptr.exit
  tail call fastcc void @raise_closed_queue_error() #47
end_hunk_13
