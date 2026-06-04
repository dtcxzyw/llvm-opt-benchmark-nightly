inline.NumInlined: 1399
inline.NumDeleted: 321
begin_hunk_0
@.str.72 = private unnamed_addr constant [21 x i8] c"report_on_exception=\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"ignore_deadlock\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"ignore_deadlock=\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"handle_interrupt\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"pending_interrupt?\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"terminate\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"[]=\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"key?\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"priority=\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"thread_variable_get\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"thread_variable_set\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"thread_variables\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"thread_variable?\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"alive?\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"stop?\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"backtrace\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"backtrace_locations\00", align 1
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
end_hunk_0
begin_hunk_1_@sleep_hrtime:bb.a
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
end_hunk_1
begin_hunk_2_@blocking_region_end:bb.a
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
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !72
  store ptr %i.j, ptr %i.i, align 8, !tbaa !73
  store ptr %i.e, ptr %i.h, align 8, !tbaa !72
  store ptr %i.e, ptr %i.e, align 8, !tbaa !73
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @ubf_list_lock) #17 ; 2 uses
  %.not.i3.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i3.i13, label %unregister_ubf_list.exit, label %bb.f

bb.f:                                             ; preds = %rb_native_mutex_lock.exit.i12
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.l) #41
  unreachable

unregister_ubf_list.exit:                         ; preds = %unblock_function_clear.exit, %rb_native_mutex_lock.exit.i12
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr i8, ptr %i.n, i64 216
  tail call fastcc void @thread_sched_to_running(ptr noundef %i.o, ptr noundef nonnull %0)
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !56   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 312      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88
  %i.s = getelementptr i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.r, %i.t
  br i1 %.not, label %rb_ractor_thread_switch.exit, label %bb.g

bb.g:                                             ; preds = %unregister_ubf_list.exit
  %i.u = getelementptr i8, ptr %0, i64 252
  store i32 0, ptr %i.u, align 4, !tbaa !100
  store ptr %i.t, ptr %i.q, align 8, !tbaa !88
  br label %rb_ractor_thread_switch.exit

rb_ractor_thread_switch.exit:                     ; preds = %unregister_ubf_list.exit, %bb.g
  %i.v = getelementptr i8, ptr %0, i64 256
  store ptr null, ptr %i.v, align 8, !tbaa !278
  tail call void @rb_ractor_blocking_threads_dec(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.47, i32 noundef 1557) #17
  %i.w = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.x = load i8, ptr %i.w, align 8               ; 2 uses
  %i.y = and i8 %i.x, 3
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_ractor_thread_switch.exit
  %i.aa = load i32, ptr %1, align 4, !tbaa !275
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = and i8 %i.ab, 3
  %i.ad = and i8 %i.x, -4
  %i.ae = or disjoint i8 %i.ac, %i.ad
  store i8 %i.ae, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_ractor_thread_switch.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_thread_call_without_gvl2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_nogvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_thread_call_without_gvl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_nogvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_thread_io_blocking_operation(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.rb_io_blocking_operation, align 8 ; 8 uses
  %4 = alloca %struct.io_blocking_operation_arguments, align 8 ; 5 uses
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #17
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !279  ; 5 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.0..0..0..0..0..0..i, ptr %i.h, align 8, !tbaa !282
  %i.i = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.j = getelementptr i8, ptr %i.i, i64 496
  %i.k = load i64, ptr %i.j, align 8, !tbaa !203  ; 2 uses
  %i.l = getelementptr i8, ptr %i.e, i64 240      ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !284
  %.not.i.i = icmp eq i64 %i.m, %i.k
  %.phi.trans.insert.i = getelementptr i8, ptr %i.e, i64 208 ; 5 uses
  br i1 %.not.i.i, label %.rb_io_blocking_operations.exit_crit_edge.i, label %bb.b

.rb_io_blocking_operations.exit_crit_edge.i:      ; preds = %bb.a
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  br label %rb_io_blocking_operation_enter.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.e, i64 216
  store ptr %.phi.trans.insert.i, ptr %i.n, align 8, !tbaa !59
  store i64 %i.k, ptr %i.l, align 8, !tbaa !284
  br label %rb_io_blocking_operation_enter.exit

rb_io_blocking_operation_enter.exit:              ; preds = %.rb_io_blocking_operations.exit_crit_edge.i, %bb.b
  %i.o = phi ptr [ %.pre.i, %.rb_io_blocking_operations.exit_crit_edge.i ], [ %.phi.trans.insert.i, %bb.b ] ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.phi.trans.insert.i, ptr %i.p, align 8, !tbaa !72
  %i.q = getelementptr i8, ptr %i.o, i64 8
  store ptr %3, ptr %i.q, align 8, !tbaa !72
  store ptr %3, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.e, ptr %4, align 8, !tbaa !291
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !294
  %i.s = ptrtoint ptr %4 to i64
  %i.t = call i64 @rb_ensure(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @rb_thread_io_blocking_operation_ensure, i64 noundef %i.s) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i64 %i.t
}

declare void @rb_io_check_closed(ptr noundef) local_unnamed_addr #4

declare i64 @rb_io_taint_check(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_thread_io_blocking_operation_ensure(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !294
  tail call fastcc void @rb_io_blocking_operation_exit(ptr noundef %i.b, ptr noundef %i.d)
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @rb_thread_mn_schedulable(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ruby_threadptr_data_type) #17
  %i.b = getelementptr i8, ptr %i.a, i64 208
  %i.c = load i8, ptr %i.b, align 8, !tbaa !295, !range !102, !noundef !103
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_thread_io_blocking_call(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 23 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %4 = alloca %struct.rb_io_blocking_operation, align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.rb_blocking_region_buffer, align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store volatile ptr %.0..0..0..0..0..0..i, ptr %i.b, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0.27 = load volatile ptr, ptr %i.b, align 8, !tbaa !147
  %i.k = getelementptr i8, ptr %.0..0..0..0.27, i64 48
  %.0.27.val = load ptr, ptr %i.k, align 8, !tbaa !11
  store volatile ptr %.0.27.val, ptr %i.c, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i64 36, ptr %i.d, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i32 0, ptr %i.e, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.0..0..0..0.15 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.l = getelementptr i8, ptr %.0..0..0..0.15, i64 208
  %i.m = load i8, ptr %i.l, align 8, !tbaa !295, !range !102, !noundef !103
  store volatile i8 %i.m, ptr %i.f, align 1, !tbaa !296
  %.0..0..0..0.16 = load volatile ptr, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %i.n = getelementptr i8, ptr %.0..0..0..0.16, i64 40
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.o = getelementptr i8, ptr %.val.i, i64 104
  %.val.val.i = load i32, ptr %i.o, align 8, !tbaa !65
  %i.p = icmp sgt i32 %.val.val.i, 0
  %.not.i = icmp eq i32 %3, 0                     ; 2 uses
  %or.cond.i = or i1 %.not.i, %i.p
  br i1 %or.cond.i, label %thread_io_mn_schedulable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %.0..0..0..0.16, i64 440
  %i.r = load i32, ptr %i.q, align 8, !tbaa !297
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i8
  br label %thread_io_mn_schedulable.exit

thread_io_mn_schedulable.exit:                    ; preds = %bb.a, %bb.b
  %i.u = phi i8 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %.0..0..0..0.17 = load volatile ptr, ptr %i.c, align 8, !tbaa !63
  %i.v = getelementptr i8, ptr %.0..0..0..0.17, i64 208
  store i8 %i.u, ptr %i.v, align 8, !tbaa !295
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !298
  %i.y = call ptr @rb_errno_ptr() #17
  store i32 0, ptr %i.y, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.0..0..0..0.28 = load volatile ptr, ptr %i.b, align 8, !tbaa !147
  store ptr %.0..0..0..0.28, ptr %i.z, align 8, !tbaa !282
  %i.aa = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.ab = getelementptr i8, ptr %i.aa, i64 496
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !203 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !284
  %.not.i.i = icmp eq i64 %i.ae, %i.ac
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 208 ; 5 uses
  br i1 %.not.i.i, label %.rb_io_blocking_operations.exit_crit_edge.i, label %bb.c

.rb_io_blocking_operations.exit_crit_edge.i:      ; preds = %thread_io_mn_schedulable.exit
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

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !278  ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr %0(ptr noundef %1) #17
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.b, i64 344
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !52
  %i.j = getelementptr i8, ptr %i.b, i64 336
  %.sroa.0.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !52
  call fastcc void @blocking_region_end(ptr noundef nonnull %i.b, ptr noundef %i.g)
  %i.k = call ptr %0(ptr noundef %1) #17
  %i.l = call fastcc i32 @blocking_region_begin(ptr noundef nonnull %i.b, ptr noundef %i.g, ptr noundef %.sroa.0.0.copyload, ptr noundef %.sroa.4.0.copyload, i32 noundef 0)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.g, !prof !139

bb.f:                                             ; preds = %bb.e
  call void @rb_assert_failure(ptr noundef nonnull @.str.47, i32 noundef 2093, ptr noundef nonnull @__func__.rb_thread_call_with_gvl, ptr noundef nonnull @.str.48) #48
  unreachable

bb.g:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@do_select:bb.a
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
  %8 = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.et, ptr %8, align 8, !tbaa !234
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
  %i.eu = getelementptr i8, ptr %i.i, i64 24
  %.val = load ptr, ptr %i.eu, align 8, !tbaa !234 ; 2 uses
  %i.ev = getelementptr i8, ptr %.val, i64 64
  store i32 %.029, ptr %i.ev, align 8, !tbaa !231
  %i.ew = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.ew)
  unreachable

bb.aw:                                            ; preds = %bb.au
  %.0..0..0.71 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.ex = icmp slt i32 %.0..0..0.71, 0
  br i1 %i.ex, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ey = load volatile i32, ptr %i.b, align 4, !tbaa !7
  %i.ez = call ptr @rb_errno_ptr() #17
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !7
  br label %bb.bh

bb.ay:                                            ; preds = %bb.aw
  %i.fa = load i16, ptr %i.g, align 2, !tbaa !373 ; 4 uses
  %i.fb = and i16 %i.fa, 32
  %.not34 = icmp eq i16 %i.fb, 0
  br i1 %.not34, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fc = call ptr @rb_errno_ptr() #17
  store i32 9, ptr %i.fc, align 4, !tbaa !7
  br label %bb.bh

bb.ba:                                            ; preds = %bb.ay
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  %i.fd = and i16 %i.fa, 217
  %.not35 = icmp eq i16 %i.fd, 0
  br i1 %.not35, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.0..0..0.72 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.fe = or i32 %.0..0..0.72, 1
  store volatile i32 %i.fe, ptr %i.a, align 4, !tbaa !7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ff = and i16 %i.fa, 780
  %.not36 = icmp eq i16 %i.ff, 0
  br i1 %.not36, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.0..0..0.73 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.fg = or i32 %.0..0..0.73, 4
  store volatile i32 %i.fg, ptr %i.a, align 4, !tbaa !7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fh = and i16 %i.fa, 2
  %.not37 = icmp eq i16 %i.fh, 0
  br i1 %.not37, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.0..0..0.74 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.fi = or i32 %.0..0..0.74, 2
  store volatile i32 %i.fi, ptr %i.a, align 4, !tbaa !7
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
  tail call void %i.h(ptr noundef %i.j) #17, !inline_history !224
  br label %threadptr_set_interrupt_locked.exit.i

threadptr_set_interrupt_locked.exit.i:            ; preds = %bb.c, %rb_native_mutex_lock.exit.i
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef %i.a) #17 ; 2 uses
  %.not.i4.i = icmp eq i32 %i.k, 0
  br i1 %.not.i4.i, label %threadptr_set_interrupt.exit, label %bb.d

bb.d:                                             ; preds = %threadptr_set_interrupt_locked.exit.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.k) #41
  unreachable

threadptr_set_interrupt.exit:                     ; preds = %threadptr_set_interrupt_locked.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_thread_stop_timer_thread() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i64, ptr @timer_th, align 8, !tbaa !140
  %i.c = load i64, ptr @current_fork_gen, align 8, !tbaa !142
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@rb_thread_shield_wait:bb.a
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_thread_shield_release(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @thread_shield_data_type) #17 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %thread_shield_get_mutex.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  %i.d = inttoptr i64 %0 to ptr
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.231, ptr noundef %i.d) #41
  unreachable

thread_shield_get_mutex.exit:                     ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = and i64 %i.e, 7
  %.not3 = icmp eq i64 %i.f, 0
  br i1 %.not3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %.critedge.i.i.i.i, !prof !301

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %thread_shield_get_mutex.exit
  %i.g = load i64, ptr %i.b, align 8, !tbaa !46
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %.critedge.i.i.i.i, !prof !173

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.i = getelementptr i8, ptr %i.b, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !169  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i.i:                 ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.q, label %mutex_args_init.exit.i, label %.preheader.i.i.i.i, !prof !49

.preheader.i.i.i.i:                               ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %bb.e
  %.016.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.016.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i.i
  %i.r = getelementptr i8, ptr %.016.i.i.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !174  ; 2 uses
  %i.t = icmp eq ptr %i.s, @mutex_data_type
  br i1 %i.t, label %mutex_args_init.exit.i, label %.preheader.i.i.i.i, !llvm.loop !179

.critedge.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %thread_shield_get_mutex.exit
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_args_init.exit.i

mutex_args_init.exit.i:                           ; preds = %bb.e, %.critedge.i.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val2.val.i = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 56
  %.val2.val3.i = load i64, ptr %i.y, align 8, !tbaa !182
  %i.z = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef %.1.i.i.i.i, ptr noundef %.val2.val.i, i64 noundef %.val2.val3.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %rb_mutex_unlock.exit, label %bb.f

bb.f:                                             ; preds = %mutex_args_init.exit.i
  %i.aa = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.z) #41
  unreachable

rb_mutex_unlock.exit:                             ; preds = %mutex_args_init.exit.i
  %i.ab = inttoptr i64 %0 to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ad = and i64 %i.ac, 4294963200
  %.not = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not, i64 0, i64 20
  ret i64 %i.ae
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_thread_shield_destroy(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @thread_shield_data_type) #17 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = inttoptr i64 %0 to ptr                   ; 3 uses
  br i1 %.not.i, label %bb.b, label %thread_shield_get_mutex.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.231, ptr noundef %i.c) #41
  unreachable

thread_shield_get_mutex.exit:                     ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !390
  %i.g = and i64 %i.e, 7
  %.not4 = icmp eq i64 %i.g, 0
  br i1 %.not4, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %.critedge.i.i.i.i, !prof !301

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %thread_shield_get_mutex.exit
  %i.h = load i64, ptr %i.b, align 8, !tbaa !46
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %.critedge.i.i.i.i, !prof !173

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.j = getelementptr i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !169  ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i.i:                 ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.r, label %mutex_args_init.exit.i, label %.preheader.i.i.i.i, !prof !49

.preheader.i.i.i.i:                               ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %bb.e
  %.016.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.016.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i.i
  %i.s = getelementptr i8, ptr %.016.i.i.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !174  ; 2 uses
  %i.u = icmp eq ptr %i.t, @mutex_data_type
  br i1 %i.u, label %mutex_args_init.exit.i, label %.preheader.i.i.i.i, !llvm.loop !179

.critedge.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %thread_shield_get_mutex.exit
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_args_init.exit.i

mutex_args_init.exit.i:                           ; preds = %bb.e, %.critedge.i.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.v, %.critedge.i.i.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !147
  store volatile ptr %i.x, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val2.val.i = load ptr, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 56
  %.val2.val3.i = load i64, ptr %i.z, align 8, !tbaa !182
  %i.aa = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef %.1.i.i.i.i, ptr noundef %.val2.val.i, i64 noundef %.val2.val3.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %rb_mutex_unlock.exit, label %bb.f

bb.f:                                             ; preds = %mutex_args_init.exit.i
  %i.ab = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.aa) #41
  unreachable

rb_mutex_unlock.exit:                             ; preds = %mutex_args_init.exit.i
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !46
  %i.ad = and i64 %i.ac, 4294963200
  %.not = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not, i64 0, i64 20
  ret i64 %i.ae
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_frame_last_func() #17
  %i.b = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i32 noundef 0, i64 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.exec_recursive_params, align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %8 = alloca %struct.exec_recursive_params, align 8
  %.not = icmp eq i64 %5, 0
  %. = select i1 %.not, i64 154, i64 %5
  %i.h = tail call i64 @rb_id2sym(i64 noundef %.) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.j, ptr %i.d, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr i8, ptr %.val.i.i, i64 48  ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.m = getelementptr i8, ptr %.val.i, i64 80
  %.val.val.i = load i64, ptr %i.m, align 8, !tbaa !346 ; 8 uses
  %i.n = icmp eq i64 %.val.val.i, 4
  br i1 %i.n, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %.val.val.i, 0
  %i.p = and i64 %.val.val.i, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit14.i

rbimpl_RB_TYPE_P_fastpath.exit14.i:               ; preds = %bb.b
  %i.s = inttoptr i64 %.val.val.i to ptr
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46
  %i.u = and i64 %i.t, 31
  %i.v = icmp eq i64 %i.u, 8
  br i1 %i.v, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14.i, %bb.b, %bb.a
  %i.w = tail call i64 @rb_ident_hash_new() #17   ; 2 uses
  %.val15.i = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.x = getelementptr i8, ptr %.val15.i, i64 80
  store i64 %i.w, ptr %i.x, align 8, !tbaa !346
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14.i
  %i.y = tail call i64 @rb_hash_aref(i64 noundef %.val.val.i, i64 noundef %i.h) #17 ; 5 uses
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = and i64 %i.y, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.ae = inttoptr i64 %i.y to ptr
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 8
  br i1 %i.ah, label %recursive_list_access.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d, %bb.c, %.thread.i
  %.01219.i = phi i64 [ %i.w, %.thread.i ], [ %.val.val.i, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.val.val.i, %bb.c ], [ %.val.val.i, %bb.d ]
  %i.ai = tail call i64 @rb_ident_hash_new() #17  ; 2 uses
  %i.aj = tail call i64 @rb_hash_aset(i64 noundef %.01219.i, i64 noundef %i.h, i64 noundef %i.ai) #17 ; 0 uses
  br label %recursive_list_access.exit

recursive_list_access.exit:                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ak = phi i64 [ %i.ai, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.y, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !392
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 %1, ptr %i.am, align 8, !tbaa !394
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i64 %2, ptr %i.an, align 8, !tbaa !395
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %3, ptr %i.ao, align 8, !tbaa !396
  %.not38 = icmp eq i32 %4, 0
  br i1 %.not38, label %bb.e, label %recursive_check.exit

recursive_check.exit:                             ; preds = %recursive_list_access.exit
  %i.ap = tail call i64 @rb_id2sym(i64 noundef 3169) #17
  %i.aq = tail call i64 @rb_hash_lookup2(i64 noundef %i.ak, i64 noundef %i.ap, i64 noundef 36) #17
  %.not91 = icmp eq i64 %i.aq, 36                 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %recursive_check.exit, %recursive_list_access.exit
  %or.cond = phi i1 [ true, %recursive_list_access.exit ], [ %.not91, %recursive_check.exit ]
  %i.ar = phi i1 [ false, %recursive_list_access.exit ], [ %.not91, %recursive_check.exit ]
  %i.as = tail call i64 @rb_hash_lookup2(i64 noundef %i.ak, i64 noundef %1, i64 noundef 36) #17 ; 6 uses
  %i.at = icmp eq i64 %i.as, 36
  br i1 %i.at, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %recursive_check.exit50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = icmp eq i64 %i.as, 0
  %i.av = and i64 %i.as, 7
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = or i1 %i.au, %i.aw
  br i1 %i.ax, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48, label %rbimpl_RB_TYPE_P_fastpath.exit.i47

rbimpl_RB_TYPE_P_fastpath.exit.i47:               ; preds = %bb.g
  %i.ay = inttoptr i64 %i.as to ptr
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.ba = and i64 %i.az, 31
  %i.bb = icmp eq i64 %i.ba, 8
  br i1 %i.bb, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48

rbimpl_RB_TYPE_P_fastpath.exit.thread.i48:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i47, %bb.g
  %i.bc = icmp eq i64 %2, %i.as
  br i1 %i.bc, label %recursive_check.exit50, label %bb.k

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i47
  %i.bd = tail call i64 @rb_hash_lookup(i64 noundef %i.as, i64 noundef %2) #17
  %i.be = icmp eq i64 %i.bd, 4
  br i1 %i.be, label %bb.k, label %recursive_check.exit50

recursive_check.exit50:                           ; preds = %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48, %bb.f
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %recursive_check.exit50
  tail call void @rb_throw_obj(i64 noundef %i.ak, i64 noundef %i.ak) #41
  unreachable

bb.j:                                             ; preds = %recursive_check.exit50
  %i.bf = tail call i64 %0(i64 noundef %1, i64 noundef %3, i32 noundef 1) #17
  br label %bb.al

bb.k:                                             ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i48, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store ptr %0, ptr %6, align 8, !tbaa !397
  br i1 %i.ar, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.bg = tail call i64 @rb_id2sym(i64 noundef 3169) #17
  %i.bh = tail call i64 @rb_hash_aset(i64 noundef %i.ak, i64 noundef %i.bg, i64 noundef 20) #17 ; 0 uses
  tail call fastcc void @recursive_push(i64 noundef %i.ak, i64 noundef %1, i64 noundef %2)
  %i.bi = ptrtoint ptr %6 to i64
  %i.bj = call i64 @rb_catch_protect(i64 noundef %i.ak, ptr noundef nonnull @exec_recursive_i, i64 noundef %i.bi, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !392 ; 2 uses
  %i.bl = load i64, ptr %i.am, align 8, !tbaa !394 ; 2 uses
  %i.bm = load i64, ptr %i.an, align 8, !tbaa !395 ; 2 uses
  %.not.i51 = icmp eq i64 %i.bm, 0
  br i1 %.not.i51, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = call i64 @rb_hash_lookup2(i64 noundef %i.bk, i64 noundef %i.bl, i64 noundef 36) #17 ; 6 uses
  %i.bo = icmp eq i64 %i.bn, 36
  br i1 %i.bo, label %bb.ak, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp eq i64 %i.bn, 0
  %i.bq = and i64 %i.bn, 7
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = or i1 %i.bp, %i.br
  br i1 %i.bs, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53, label %rbimpl_RB_TYPE_P_fastpath.exit.i52

rbimpl_RB_TYPE_P_fastpath.exit.i52:               ; preds = %bb.n
  %i.bt = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !46
  %i.bv = and i64 %i.bu, 31
  %i.bw = icmp eq i64 %i.bv, 8
  br i1 %i.bw, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i52
  %i.bx = call i64 @rb_hash_delete_entry(i64 noundef %i.bn, i64 noundef %i.bm) #17 ; 0 uses
  %i.by = load i64, ptr %i.bt, align 8, !tbaa !46 ; 2 uses
  %i.bz = and i64 %i.by, 32768
  %.not.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = lshr i64 %i.by, 16
  %i.cb = and i64 %i.ca, 15
  br label %RHASH_EMPTY_P.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cc = add i64 %i.bn, 24
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !398
  br label %RHASH_EMPTY_P.exit.i

RHASH_EMPTY_P.exit.i:                             ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi i64 [ %i.cb, %bb.p ], [ %i.cf, %bb.q ]
  %i.cg = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.cg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53, label %bb.r

rbimpl_RB_TYPE_P_fastpath.exit.thread.i53:        ; preds = %RHASH_EMPTY_P.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i52, %bb.n, %bb.l
  %i.ch = call i64 @rb_hash_delete_entry(i64 noundef %i.bk, i64 noundef %i.bl) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %RHASH_EMPTY_P.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i53
  %i.ci = load i64, ptr %i.al, align 8, !tbaa !392
  %i.cj = call i64 @rb_id2sym(i64 noundef 3169) #17
  %i.ck = call i64 @rb_hash_delete_entry(i64 noundef %i.ci, i64 noundef %i.cj) #17 ; 0 uses
  %i.cl = load i32, ptr %i.e, align 4, !tbaa !7   ; 2 uses
  %.not44 = icmp eq i32 %i.cl, 0
  br i1 %.not44, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cm = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.cm, ptr %i.c, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24
  %.val46 = load ptr, ptr %i.cn, align 8, !tbaa !234 ; 2 uses
  %i.co = getelementptr i8, ptr %.val46, i64 64
  store i32 %i.cl, ptr %i.co, align 8, !tbaa !231
  %i.cp = getelementptr i8, ptr %.val46, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.cp)
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cq = load i64, ptr %i.al, align 8, !tbaa !392
  %i.cr = icmp eq i64 %i.bj, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.aj

bb.u:                                             ; preds = %bb.t
  %i.cs = call i64 %0(i64 noundef %1, i64 noundef %3, i32 noundef 1) #17
  br label %bb.aj

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store volatile i64 36, ptr %i.f, align 8, !tbaa !144
  tail call fastcc void @recursive_push(i64 noundef %i.ak, i64 noundef %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.ct, ptr %i.b, align 8, !tbaa !147
  %.0..0..0..0..0..0..i59 = load volatile ptr, ptr %i.b, align 8, !tbaa !147 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.0..0..0..0..0..0..i59, ptr %i.g, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.cu, align 8, !tbaa !231
  store i64 36, ptr %7, align 8, !tbaa !233
  %i.cv = getelementptr i8, ptr %.0..0..0..0..0..0..i59, i64 24 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !234
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !235
  %i.cy = getelementptr i8, ptr %.0..0..0..0..0..0..i59, i64 48
  %.0.2.val = load ptr, ptr %i.cy, align 8, !tbaa !11 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.2.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr i8, ptr %.0.2.val, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !57
  %i.db = getelementptr i8, ptr %.0.2.val, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.w, %bb.v
  %.0.i2.i = phi ptr [ %i.da, %bb.w ], [ null, %bb.v ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.dc, %bb.w ], [ null, %bb.v ]
  %i.dd = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.dd, align 8, !tbaa !123
  %i.de = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.de, label %bb.x, label %rb_ec_vm_lock_rec.exit

bb.x:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.df = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.x
  %.0.i60 = phi i32 [ %i.dg, %bb.x ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 %.0.i60, ptr %i.dh, align 4, !tbaa !236
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dj = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.dj, ptr %i.di, align 8
  %i.dk = tail call ptr @llvm.stacksave.p0()
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.di)
  %.not39 = icmp eq i32 %i.dm, 0
  br i1 %.not39, label %bb.z, label %bb.y, !prof !49

bb.y:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.3 = load volatile ptr, ptr %i.g, align 8, !tbaa !147
  %i.dn = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.3)
  %.0..0..0..0.5.pre = load ptr, ptr %i.g, align 8, !tbaa !147
  br label %bb.aa

bb.z:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %7, ptr %i.cv, align 8, !tbaa !234
  %i.do = call i64 %0(i64 noundef %1, i64 noundef %3, i32 noundef 0) #17
  store volatile i64 %i.do, ptr %i.f, align 8, !tbaa !144
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dp = phi i32 [ %i.dn, %bb.y ], [ 0, %bb.z ]  ; 2 uses
  %.0..0..0.5 = phi ptr [ %.0..0..0..0.5.pre, %bb.y ], [ %.0..0..0..0..0..0..i59, %bb.z ]
  %i.dq = load ptr, ptr %i.cx, align 8, !tbaa !235
  %9 = getelementptr i8, ptr %.0..0..0.5, i64 24
  store ptr %i.dq, ptr %9, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %10 = load i64, ptr %i.al, align 8, !tbaa !392  ; 2 uses
  %11 = load i64, ptr %i.am, align 8, !tbaa !394  ; 2 uses
  %12 = load i64, ptr %i.an, align 8, !tbaa !395  ; 2 uses
  %.not.i61 = icmp eq i64 %12, 0
  br i1 %.not.i61, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = call i64 @rb_hash_lookup2(i64 noundef %10, i64 noundef %11, i64 noundef 36) #17 ; 6 uses
  %i.ds = icmp eq i64 %i.dr, 36
  br i1 %i.ds, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = icmp eq i64 %i.dr, 0
  %i.du = and i64 %i.dr, 7
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = or i1 %i.dt, %i.dv
  br i1 %i.dw, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, label %rbimpl_RB_TYPE_P_fastpath.exit.i62

rbimpl_RB_TYPE_P_fastpath.exit.i62:               ; preds = %bb.ac
  %i.dx = inttoptr i64 %i.dr to ptr               ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !46
  %i.dz = and i64 %i.dy, 31
  %i.ea = icmp eq i64 %i.dz, 8
  br i1 %i.ea, label %bb.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63

bb.ad:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i62
  %i.eb = call i64 @rb_hash_delete_entry(i64 noundef %i.dr, i64 noundef %12) #17 ; 0 uses
  %i.ec = load i64, ptr %i.dx, align 8, !tbaa !46 ; 2 uses
  %i.ed = and i64 %i.ec, 32768
  %.not.i.i.i.i66 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i.i66, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ee = lshr i64 %i.ec, 16
  %i.ef = and i64 %i.ee, 15
  br label %RHASH_EMPTY_P.exit.i67

bb.af:                                            ; preds = %bb.ad
  %i.eg = add i64 %i.dr, 24
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !398
  br label %RHASH_EMPTY_P.exit.i67

RHASH_EMPTY_P.exit.i67:                           ; preds = %bb.af, %bb.ae
  %.0.i.i.i68 = phi i64 [ %i.ef, %bb.ae ], [ %i.ej, %bb.af ]
  %i.ek = icmp eq i64 %.0.i.i.i68, 0
  br i1 %i.ek, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, label %bb.ag

rbimpl_RB_TYPE_P_fastpath.exit.thread.i63:        ; preds = %RHASH_EMPTY_P.exit.i67, %rbimpl_RB_TYPE_P_fastpath.exit.i62, %bb.ac, %bb.aa
  %i.el = call i64 @rb_hash_delete_entry(i64 noundef %10, i64 noundef %11) #17 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i63, %RHASH_EMPTY_P.exit.i67
  %.not41 = icmp eq i32 %i.dp, 0
  br i1 %.not41, label %recursive_pop.exit69, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !147
  store volatile ptr %i.em, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i70 = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.en = getelementptr i8, ptr %.0..0..0..0..0..0..i70, i64 24
  %.val = load ptr, ptr %i.en, align 8, !tbaa !234 ; 2 uses
  %i.eo = getelementptr i8, ptr %.val, i64 64
  store i32 %i.dp, ptr %i.eo, align 8, !tbaa !231
  %i.ep = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.ep)
  unreachable

recursive_pop.exit69:                             ; preds = %bb.ag
  %.0..0..0..0.6 = load volatile i64, ptr %i.f, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.u, %bb.t, %recursive_pop.exit69
  %.2.ph = phi i64 [ %.0..0..0..0.6, %recursive_pop.exit69 ], [ %i.cs, %bb.u ], [ %i.bj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %6, i64 40, i1 true), !tbaa.struct !402
  br label %bb.al

bb.ak:                                            ; preds = %bb.m, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.eq = load i64, ptr @rb_eTypeError, align 8, !tbaa !144
  %i.er = call i64 @rb_thread_current()
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eq, ptr noundef nonnull @.str.232, i64 noundef %i.h, i64 noundef %i.er) #41
  unreachable

bb.al:                                            ; preds = %bb.aj, %bb.j
  %.033 = phi i64 [ %i.bf, %bb.j ], [ %.2.ph, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i64 %.033
}

declare i64 @rb_frame_last_func() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive_paired(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_memory_id(i64 noundef %2) #46
  %i.b = tail call i64 @rb_frame_last_func() #17
  %i.c = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %i.a, i64 noundef %3, i32 noundef 0, i64 noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_memory_id(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive_outer(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_frame_last_func() #17
  %i.b = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i32 noundef 1, i64 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_exec_recursive_outer_mid(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i32 noundef 1, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_exec_recursive_paired_outer(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_memory_id(i64 noundef %2) #46
  %i.b = tail call i64 @rb_frame_last_func() #17
  %i.c = tail call fastcc i64 @exec_recursive(ptr noundef %0, i64 noundef %1, i64 noundef %i.a, i64 noundef %3, i32 noundef 1, i64 noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Thread_Mutex() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.e = getelementptr i8, ptr %.val.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.f, i64 1168
  %i.h = tail call i32 @pthread_mutex_init(ptr noundef %i.g, ptr noundef null) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %rb_native_mutex_initialize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.7, i32 noundef %i.h) #41
  unreachable

rb_native_mutex_initialize.exit:                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val.i, i64 296
  %i.j = tail call i32 @pthread_mutex_init(ptr noundef %i.i, ptr noundef null) #17 ; 2 uses
  %.not.i2 = icmp eq i32 %i.j, 0
  br i1 %.not.i2, label %rb_native_mutex_initialize.exit3, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_initialize.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.7, i32 noundef %i.j) #41
  unreachable

rb_native_mutex_initialize.exit3:                 ; preds = %rb_native_mutex_initialize.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Thread() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.57, i64 noundef 5) #17
  %i.f = tail call i64 @rb_id2sym(i64 noundef %i.e) #17
  store i64 %i.f, ptr @sym_never, align 8, !tbaa !144
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.58, i64 noundef 9) #17
  %i.h = tail call i64 @rb_id2sym(i64 noundef %i.g) #17
  store i64 %i.h, ptr @sym_immediate, align 8, !tbaa !144
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.59, i64 noundef 11) #17
  %i.j = tail call i64 @rb_id2sym(i64 noundef %i.i) #17
  store i64 %i.j, ptr @sym_on_blocking, align 8, !tbaa !144
  %i.k = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.k, ptr noundef nonnull @.str.60, ptr noundef nonnull @thread_s_new, i32 noundef -1) #17
  %i.l = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.l, ptr noundef nonnull @.str.61, ptr noundef nonnull @thread_start, i32 noundef -2) #17
  %i.m = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.m, ptr noundef nonnull @.str.62, ptr noundef nonnull @thread_start, i32 noundef -2) #17
  %i.n = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.n, ptr noundef nonnull @.str.63, ptr noundef nonnull @rb_thread_s_main, i32 noundef 0) #17
  %i.o = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.o, ptr noundef nonnull @.str.64, ptr noundef nonnull @thread_s_current, i32 noundef 0) #17
  %i.p = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.p, ptr noundef nonnull @.str.65, ptr noundef nonnull @thread_stop, i32 noundef 0) #17
  %i.q = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.q, ptr noundef nonnull @.str.66, ptr noundef nonnull @rb_thread_s_kill, i32 noundef 1) #17
  %i.r = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.r, ptr noundef nonnull @.str.50, ptr noundef nonnull @rb_thread_exit, i32 noundef 0) #17
  %i.s = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.s, ptr noundef nonnull @.str.67, ptr noundef nonnull @thread_s_pass, i32 noundef 0) #17
  %i.t = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.t, ptr noundef nonnull @.str.68, ptr noundef nonnull @thread_list, i32 noundef 0) #17
  %i.u = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.u, ptr noundef nonnull @.str.69, ptr noundef nonnull @rb_thread_s_abort_exc, i32 noundef 0) #17
  %i.v = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.v, ptr noundef nonnull @.str.70, ptr noundef nonnull @rb_thread_s_abort_exc_set, i32 noundef 1) #17
  %i.w = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.w, ptr noundef nonnull @.str.71, ptr noundef nonnull @rb_thread_s_report_exc, i32 noundef 0) #17
  %i.x = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.x, ptr noundef nonnull @.str.72, ptr noundef nonnull @rb_thread_s_report_exc_set, i32 noundef 1) #17
  %i.y = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.y, ptr noundef nonnull @.str.73, ptr noundef nonnull @rb_thread_s_ignore_deadlock, i32 noundef 0) #17
  %i.z = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.z, ptr noundef nonnull @.str.74, ptr noundef nonnull @rb_thread_s_ignore_deadlock_set, i32 noundef 1) #17
  %i.aa = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.aa, ptr noundef nonnull @.str.75, ptr noundef nonnull @rb_thread_s_handle_interrupt, i32 noundef 1) #17
  %i.ab = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_singleton_method(i64 noundef %i.ab, ptr noundef nonnull @.str.76, ptr noundef nonnull @rb_thread_s_pending_interrupt_p, i32 noundef -1) #17
  %i.ac = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.76, ptr noundef nonnull @rb_thread_pending_interrupt_p, i32 noundef -1) #17
  %i.ad = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.77, ptr noundef nonnull @thread_initialize, i32 noundef -2) #17
  %i.ae = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.78, ptr noundef nonnull @thread_raise_m, i32 noundef -1) #17
  %i.af = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.af, ptr noundef nonnull @.str.79, ptr noundef nonnull @thread_join_m, i32 noundef -1) #17
  %i.ag = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ag, ptr noundef nonnull @.str.80, ptr noundef nonnull @thread_value, i32 noundef 0) #17
  %i.ah = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ah, ptr noundef nonnull @.str.66, ptr noundef nonnull @rb_thread_kill, i32 noundef 0) #17
  %i.ai = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ai, ptr noundef nonnull @.str.81, ptr noundef nonnull @rb_thread_kill, i32 noundef 0) #17
  %i.aj = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.aj, ptr noundef nonnull @.str.50, ptr noundef nonnull @rb_thread_kill, i32 noundef 0) #17
  %i.ak = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.ak, ptr noundef nonnull @.str.82, ptr noundef nonnull @rb_thread_run, i32 noundef 0) #17
  %i.al = load i64, ptr @rb_cThread, align 8, !tbaa !144
  tail call void @rb_define_method(i64 noundef %i.al, ptr noundef nonnull @.str.83, ptr noundef nonnull @rb_thread_wakeup, i32 noundef 0) #17
end_hunk_4
begin_hunk_5_@rb_thread_exit:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %.val.i, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = tail call i64 @rb_thread_kill(i64 noundef %i.f) ; 0 uses
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @thread_s_pass(i64 %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call fastcc void @rb_thread_schedule_limits(i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 32
  %i.e = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %i.e, %i.h
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %rb_thread_schedule.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.k = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i, i32 noundef 0) ; 0 uses
  br label %rb_thread_schedule.exit

rb_thread_schedule.exit:                          ; preds = %bb.a, %bb.b
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @thread_list(i64 %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_ractor_thread_list() #17
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_thread_s_abort_exc(i64 %0) #27 {
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
  %i.e = getelementptr i8, ptr %.val.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.f, i64 508
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 2
  %.not = icmp eq i8 %i.i, 0
  %i.j = select i1 %.not, i64 0, i64 20
  ret i64 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noundef i64 @rb_thread_s_abort_exc_set(i64 %0, i64 noundef returned %1) #31 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = and i64 %1, -5
  %.not = icmp eq i64 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %.val.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr i8, ptr %i.g, i64 508      ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = select i1 %.not, i8 0, i8 2
  %i.k = and i8 %i.i, -3
  %i.l = or disjoint i8 %i.k, %i.j
  store i8 %i.l, ptr %i.h, align 4
  ret i64 %1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_thread_s_report_exc(i64 %0) #27 {
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
  %i.e = getelementptr i8, ptr %.val.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.f, i64 508
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 4
  %.not = icmp eq i8 %i.i, 0
  %i.j = select i1 %.not, i64 0, i64 20
  ret i64 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noundef i64 @rb_thread_s_report_exc_set(i64 %0, i64 noundef returned %1) #31 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = and i64 %1, -5
  %.not = icmp eq i64 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %.val.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr i8, ptr %i.g, i64 508      ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = select i1 %.not, i8 0, i8 4
  %i.k = and i8 %i.i, -5
  %i.l = or disjoint i8 %i.k, %i.j
  store i8 %i.l, ptr %i.h, align 4
  ret i64 %1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_thread_s_ignore_deadlock(i64 %0) #27 {
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
  %i.e = getelementptr i8, ptr %.val.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.f, i64 508
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 8
  %.not = icmp eq i8 %i.i, 0
  %i.j = select i1 %.not, i64 0, i64 20
  ret i64 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noundef i64 @rb_thread_s_ignore_deadlock_set(i64 %0, i64 noundef returned %1) #31 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = and i64 %1, -5
  %.not = icmp eq i64 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %.val.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr i8, ptr %i.g, i64 508      ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = select i1 %.not, i8 0, i8 8
  %i.k = and i8 %i.i, -9
  %i.l = or disjoint i8 %i.k, %i.j
  store i8 %i.l, ptr %i.h, align 4
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_thread_s_handle_interrupt(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 14 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 36, ptr %i.b, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store volatile ptr %.0..0..0..0..0..0..i, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.18 = load volatile ptr, ptr %i.c, align 8, !tbaa !147
  %i.i = getelementptr i8, ptr %.0..0..0..0.18, i64 48
  %.0.18.val = load ptr, ptr %i.i, align 8, !tbaa !11
  store volatile ptr %.0.18.val, ptr %i.d, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i64 4, ptr %i.e, align 8, !tbaa !144
  %i.j = tail call i32 @rb_block_given_p() #17
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.235) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i64 @rb_to_hash_type(i64 noundef %1) #17 ; 7 uses
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %i.l, 7
  %i.o = icmp eq i64 %i.n, 0
  %.not3.i = and i1 %i.m, %i.o
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit:                               ; preds = %bb.c
  %i.p = inttoptr i64 %i.l to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !46
  %i.r = and i64 %i.q, 2048
  %.not39 = icmp eq i64 %i.r, 0
  br i1 %.not39, label %bb.e, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %bb.c, %RB_OBJ_FROZEN.exit
  %i.s = tail call i64 @rb_hash_compare_by_id_p(i64 noundef %i.l) #17
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %RB_OBJ_FROZEN.exit.thread
  store i64 4, ptr %i.b, align 8, !tbaa !144
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %RB_OBJ_FROZEN.exit.thread, %RB_OBJ_FROZEN.exit
  %i.t = ptrtoint ptr %i.b to i64
  call void @rb_hash_foreach(i64 noundef %i.l, ptr noundef nonnull @handle_interrupt_arg_check_i, i64 noundef %i.t) #17
  %i.u = load i64, ptr %i.b, align 8, !tbaa !144  ; 8 uses
  %i.v = icmp eq i64 %i.u, 36
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = call i64 @rb_yield(i64 noundef 4) #17
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.x = and i64 %i.u, -5
  %.not40 = icmp eq i64 %i.x, 0
  br i1 %.not40, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.l, ptr %i.b, align 8, !tbaa !144
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.u, 0
  %i.z = and i64 %i.u, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.i
  %i.ac = inttoptr i64 %i.u to ptr
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = and i64 %i.ad, 31
  %i.af = icmp eq i64 %i.ae, 8
  br i1 %i.af, label %bb.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  call void @rb_obj_freeze_inline(i64 noundef %i.u) #17
  %.pre = load i64, ptr %i.b, align 8, !tbaa !144
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.j, %bb.h
  %i.ag = phi i64 [ %i.u, %bb.i ], [ %i.u, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %.pre, %bb.j ], [ %i.l, %bb.h ]
  %.0..0..0..0.7 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.ah = getelementptr i8, ptr %.0..0..0..0.7, i64 288
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !260
  %i.aj = call i64 @rb_ary_push(i64 noundef %i.ai, i64 noundef %i.ag) #17 ; 0 uses
  %.0..0..0..0.8 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.ak = getelementptr i8, ptr %.0..0..0..0.8, i64 280
  %.0.8.val = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.al = inttoptr i64 %.0.8.val to ptr           ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.an = and i64 %i.am, 8192
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ao = lshr i64 %i.am, 15
  %i.ap = and i64 %i.ao, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.aq = getelementptr i8, ptr %i.al, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit

rb_threadptr_pending_interrupt_empty_p.exit:      ; preds = %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.ap, %bb.k ], [ %i.ar, %bb.l ]
  %.not41 = icmp eq i64 %.0.i.i, 0
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit
  %.0..0..0..0.9 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.as = getelementptr i8, ptr %.0..0..0..0.9, i64 248 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, -65
  store i8 %i.au, ptr %i.as, align 8
  %.0..0..0..0.10 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.av = getelementptr i8, ptr %.0..0..0..0.10, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = getelementptr i8, ptr %i.aw, i64 32
  %i.ay = atomicrmw volatile or ptr %i.ax, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.0..0..0..0.11 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.az = getelementptr i8, ptr %.0..0..0..0.11, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  store ptr %i.ba, ptr %i.f, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.bb, align 8, !tbaa !231
  store i64 36, ptr %2, align 8, !tbaa !233
  %i.bc = getelementptr i8, ptr %i.ba, i64 24     ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !234
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !235
  %i.bf = getelementptr i8, ptr %i.ba, i64 48
  %.0.1.val = load ptr, ptr %i.bf, align 8, !tbaa !11 ; 3 uses
  %.not.i.i32 = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i32, label %rb_ec_ractor_ptr.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr i8, ptr %.0.1.val, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = getelementptr i8, ptr %.0.1.val, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.o, %bb.n
  %.0.i2.i = phi ptr [ %i.bh, %bb.o ], [ null, %bb.n ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.bj, %bb.o ], [ null, %bb.n ]
  %i.bk = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.bk, align 8, !tbaa !123
  %i.bl = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.bl, label %bb.p, label %rb_ec_vm_lock_rec.exit

bb.p:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.bm = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.p
  %.0.i33 = phi i32 [ %i.bn, %bb.p ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %.0.i33, ptr %i.bo, align 4, !tbaa !236
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bq = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.bq, ptr %i.bp, align 8
  %i.br = call ptr @llvm.stacksave.p0()
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.bp)
  %.not28 = icmp eq i32 %i.bt, 0                  ; 2 uses
  br i1 %.not28, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.f, align 8, !tbaa !147
  %i.bu = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %.0..0..0..0.4.pre = load ptr, ptr %i.f, align 8, !tbaa !147
  br label %bb.s

bb.r:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %2, ptr %i.bc, align 8, !tbaa !234
  %i.bv = call i64 @rb_yield(i64 noundef 4) #17
  store volatile i64 %i.bv, ptr %i.e, align 8, !tbaa !144
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0..0..0.4 = phi ptr [ %i.ba, %bb.r ], [ %.0..0..0..0.4.pre, %bb.q ]
  %i.bw = phi i32 [ 0, %bb.r ], [ %i.bu, %bb.q ]
  %i.bx = load ptr, ptr %i.be, align 8, !tbaa !235
  %3 = getelementptr i8, ptr %.0..0..0.4, i64 24
  store ptr %i.bx, ptr %3, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.0..0..0..0.12 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.by = getelementptr i8, ptr %.0..0..0..0.12, i64 288
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !260
  %i.ca = call i64 @rb_ary_pop(i64 noundef %i.bz) #17 ; 0 uses
  %.0..0..0..0.13 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.cb = getelementptr i8, ptr %.0..0..0..0.13, i64 280
  %.0.13.val = load i64, ptr %i.cb, align 8, !tbaa !25
  %i.cc = inttoptr i64 %.0.13.val to ptr          ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !46 ; 2 uses
  %i.ce = and i64 %i.cd, 8192
  %.not.i.i34 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i34, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = lshr i64 %i.cd, 15
  %i.cg = and i64 %i.cf, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit36

bb.u:                                             ; preds = %bb.s
  %i.ch = getelementptr i8, ptr %i.cc, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit36

rb_threadptr_pending_interrupt_empty_p.exit36:    ; preds = %bb.t, %bb.u
  %.0.i.i35 = phi i64 [ %i.cg, %bb.t ], [ %i.ci, %bb.u ]
  %.not42 = icmp eq i64 %.0.i.i35, 0
  br i1 %.not42, label %bb.w, label %bb.v

bb.v:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit36
  %.0..0..0..0.14 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.cj = getelementptr i8, ptr %.0..0..0..0.14, i64 248 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8
  %i.cl = and i8 %i.ck, -65
  store i8 %i.cl, ptr %i.cj, align 8
  %.0..0..0..0.15 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.cm = getelementptr i8, ptr %.0..0..0..0.15, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !67
  %i.co = getelementptr i8, ptr %i.cn, i64 32
  %i.cp = atomicrmw volatile or ptr %i.co, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %rb_threadptr_pending_interrupt_empty_p.exit36
  %.0..0..0..0.16 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.cq = getelementptr i8, ptr %.0..0..0..0.16, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !67 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 32
  %i.ct = load atomic volatile i32, ptr %i.cs monotonic, align 4
  %i.cu = getelementptr i8, ptr %i.cr, i64 36
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !50
  %i.cw = xor i32 %i.cv, -1
  %i.cx = and i32 %i.ct, %i.cw
  %.not.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i, label %rb_vm_check_ints.exit, label %bb.x, !prof !49

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr i8, ptr %i.cr, i64 48
  %.val.i = load ptr, ptr %i.cy, align 8, !tbaa !11
  %i.cz = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i, i32 noundef 0) ; 0 uses
  br label %rb_vm_check_ints.exit

rb_vm_check_ints.exit:                            ; preds = %bb.w, %bb.x
  br i1 %.not28, label %bb.z, label %bb.y

bb.y:                                             ; preds = %rb_vm_check_ints.exit
  %.0..0..0..0.17 = load volatile ptr, ptr %i.d, align 8, !tbaa !63
  %i.da = getelementptr i8, ptr %.0..0..0..0.17, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !67
  %i.dc = getelementptr i8, ptr %i.db, i64 24
  %.val = load ptr, ptr %i.dc, align 8, !tbaa !234 ; 2 uses
  %i.dd = getelementptr i8, ptr %.val, i64 64
  store i32 %i.bw, ptr %i.dd, align 8, !tbaa !231
  %i.de = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.de)
  unreachable

bb.z:                                             ; preds = %rb_vm_check_ints.exit
  %.0..0..0..0.6 = load volatile i64, ptr %i.e, align 8, !tbaa !144
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.f
  %.0 = phi i64 [ %i.w, %bb.f ], [ %.0..0..0..0.6, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_thread_s_pending_interrupt_p(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
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
  %i.e = getelementptr i8, ptr %.val.i, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = tail call i64 @rb_thread_pending_interrupt_p(i32 noundef %0, ptr noundef %1, i64 noundef %i.f)
  ret i64 %i.g
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_thread_pending_interrupt_p(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ruby_threadptr_data_type) #17
  %i.b = getelementptr i8, ptr %i.a, i64 280      ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %rb_threadptr_pending_interrupt_include_p.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit

rb_threadptr_pending_interrupt_empty_p.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not15 = icmp eq i64 %.0.i.i, 0
  br i1 %.not15, label %rb_threadptr_pending_interrupt_include_p.exit, label %bb.e

bb.e:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.f, label %rb_check_arity.exit

bb.f:                                             ; preds = %bb.e
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #41
  unreachable

rb_check_arity.exit:                              ; preds = %bb.e
  %.not9 = icmp eq i32 %0, 0
  br i1 %.not9, label %rb_threadptr_pending_interrupt_include_p.exit, label %bb.g

bb.g:                                             ; preds = %rb_check_arity.exit
  %i.k = load i64, ptr %1, align 8, !tbaa !144    ; 2 uses
  %i.l = load i64, ptr @rb_cModule, align 8, !tbaa !144
  %i.m = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.k, i64 noundef %i.l) #17
  %.not10 = icmp eq i64 %i.m, 0
  br i1 %.not10, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.n = load i64, ptr @rb_eTypeError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.236) #41
  unreachable

.preheader:                                       ; preds = %bb.g, %RARRAY_AREF.exit.i
  %.09.i = phi i32 [ %i.af, %RARRAY_AREF.exit.i ], [ 0, %bb.g ] ; 2 uses
  %i.o = sext i32 %.09.i to i64                   ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !25
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %i.s = and i64 %i.r, 8192
  %.not.i.i12 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i12, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %.preheader
  %i.t = getelementptr i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = icmp sgt i64 %i.u, %i.o
  br i1 %i.v, label %bb.i, label %rb_threadptr_pending_interrupt_include_p.exit

rb_array_len.exit.thread.i:                       ; preds = %.preheader
  %i.w = lshr i64 %i.r, 15
  %i.x = and i64 %i.w, 127
  %i.y = icmp sgt i64 %i.x, %i.o
  br i1 %i.y, label %.thread.i, label %rb_threadptr_pending_interrupt_include_p.exit

.thread.i:                                        ; preds = %rb_array_len.exit.thread.i
  %i.z = getelementptr i8, ptr %i.q, i64 16
  br label %RARRAY_AREF.exit.i

bb.i:                                             ; preds = %rb_array_len.exit.i
  %i.aa = getelementptr i8, ptr %i.q, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.i, %.thread.i
  %.0.i.i.i = phi ptr [ %i.z, %.thread.i ], [ %i.ab, %bb.i ]
  %i.ac = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.o
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !144
end_hunk_5
begin_hunk_6_@nt_start:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  store ptr null, ptr %i.o, align 8, !tbaa !265
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr i8, ptr %i.c, i64 160      ; 3 uses
  %i.q = getelementptr i8, ptr %i.c, i64 280      ; 2 uses
  %i.r = getelementptr i8, ptr %i.c, i64 216
  %i.s = getelementptr i8, ptr %i.c, i64 296      ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 96
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_native_thread) ; 2 uses
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !263  ; 12 uses
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 216      ; 4 uses
  %i.aa = getelementptr i8, ptr %i.w, i64 56      ; 3 uses
  %i.ab = getelementptr i8, ptr %i.w, i64 64
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !72
  store ptr %i.aa, ptr %i.aa, align 8, !tbaa !73
  %i.ac = getelementptr i8, ptr %i.w, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67 ; 3 uses
  %.not8.i = icmp eq ptr %i.ad, null
  br i1 %.not8.i, label %ruby_thread_set_native.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_current_ec_set(ptr noundef nonnull %i.ad) #17
  %i.ae = getelementptr i8, ptr %i.y, i64 312
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !88
  br label %ruby_thread_set_native.exit

ruby_thread_set_native.exit:                      ; preds = %bb.d, %bb.e
  store ptr %i.w, ptr %i.u, align 8, !tbaa !63
  %i.af = tail call i32 @pthread_mutex_lock(ptr noundef %i.z) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %thread_sched_lock_.exit, label %bb.f

bb.f:                                             ; preds = %ruby_thread_set_native.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.af) #41
  unreachable

thread_sched_lock_.exit:                          ; preds = %ruby_thread_set_native.exit
  %i.ag = getelementptr i8, ptr %i.y, i64 256
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.ai = icmp eq ptr %i.ah, %i.w
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %thread_sched_lock_.exit
  %i.aj = getelementptr i8, ptr %i.w, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !57
  %i.al = getelementptr i8, ptr %i.y, i64 272     ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %.not.i39 = icmp eq ptr %i.am, %i.al
  %i.an = select i1 %.not.i39, ptr null, ptr %i.w
  tail call fastcc void @thread_sched_setup_running_threads(ptr noundef %i.z, ptr noundef %i.ak, ptr noundef nonnull %i.w, ptr noundef null, ptr noundef %i.an)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %thread_sched_lock_.exit
  tail call fastcc void @thread_sched_wait_running_turn(ptr noundef %i.z, ptr noundef nonnull %i.w, i1 noundef zeroext false)
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef %i.z) #17 ; 2 uses
  %.not.i.i40 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i40, label %thread_sched_unlock_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.ao) #41
  unreachable

thread_sched_unlock_.exit:                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !144
  call fastcc void @native_thread_init_stack(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a)
  call fastcc void @thread_start_func_2(ptr noundef nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

.critedge:                                        ; preds = %bb.c, %thread_sched_unlock_.exit45
  %i.ap = tail call i32 @pthread_mutex_lock(ptr noundef %i.p) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %ractor_sched_lock_.exit.i, label %bb.j

bb.j:                                             ; preds = %.critedge
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.ap) #41
  unreachable

ractor_sched_lock_.exit.i:                        ; preds = %.critedge, %ccan_list_pop_.exit.thread.i
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !58  ; 6 uses
  %.not.i.i41 = icmp eq ptr %i.aq, %i.q
  br i1 %.not.i.i41, label %ccan_list_pop_.exit.thread.i, label %ccan_list_pop_.exit.i

ccan_list_pop_.exit.i:                            ; preds = %ractor_sched_lock_.exit.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.au, align 8, !tbaa !72
  store ptr %i.at, ptr %i.as, align 8, !tbaa !73
  %i.av = getelementptr i8, ptr %i.aq, i64 -296
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %ccan_list_pop_.exit.thread.i, label %bb.l

ccan_list_pop_.exit.thread.i:                     ; preds = %ccan_list_pop_.exit.i, %ractor_sched_lock_.exit.i
  %i.ax = tail call i32 @pthread_cond_wait(ptr noundef %i.r, ptr noundef %i.p) #17 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i14.i, label %ractor_sched_lock_.exit.i, label %bb.k, !llvm.loop !473

bb.k:                                             ; preds = %ccan_list_pop_.exit.thread.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.14, i32 noundef %i.ax) #41
  unreachable

bb.l:                                             ; preds = %ccan_list_pop_.exit.i
  %i.ay = load i32, ptr %i.s, align 8, !tbaa !447
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr %i.s, align 8, !tbaa !447
  %i.ba = tail call i32 @pthread_mutex_unlock(ptr noundef %i.p) #17 ; 2 uses
  %.not.i.i15.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i15.i, label %ractor_sched_deq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.ba) #41
  unreachable

ractor_sched_deq.exit:                            ; preds = %bb.l
  %i.bb = getelementptr i8, ptr %i.aq, i64 -80    ; 2 uses
  %i.bc = tail call i32 @pthread_mutex_lock(ptr noundef %i.bb) #17 ; 2 uses
  %.not.i.i42 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i42, label %thread_sched_lock_.exit43, label %bb.n

bb.n:                                             ; preds = %ractor_sched_deq.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.bc) #41
  unreachable

thread_sched_lock_.exit43:                        ; preds = %ractor_sched_deq.exit
  %i.bd = getelementptr i8, ptr %i.aq, i64 -40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !74 ; 8 uses
  %.not37 = icmp eq ptr %i.be, null
  br i1 %.not37, label %bb.r, label %bb.o

bb.o:                                             ; preds = %thread_sched_lock_.exit43
  %i.bf = getelementptr i8, ptr %i.be, i64 40     ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !64
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !98
  %i.bj = getelementptr i8, ptr %i.be, i64 56     ; 3 uses
  %i.bk = getelementptr i8, ptr %i.be, i64 64
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !72
  store ptr %i.bj, ptr %i.bj, align 8, !tbaa !73
  %i.bl = getelementptr i8, ptr %i.be, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67 ; 3 uses
  %.not8.i.i = icmp eq ptr %i.bm, null
  br i1 %.not8.i.i, label %thread_sched_switch0.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr i8, ptr %i.be, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !56
  tail call void @rb_current_ec_set(ptr noundef nonnull %i.bm) #17
  %i.bp = getelementptr i8, ptr %i.bo, i64 312
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !88
  br label %thread_sched_switch0.exit

thread_sched_switch0.exit:                        ; preds = %bb.p, %bb.q
  store ptr %i.be, ptr %i.u, align 8, !tbaa !63
  store ptr %0, ptr %i.bf, align 8, !tbaa !64
  %i.bq = getelementptr i8, ptr %i.be, i64 200
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !97
  %i.bs = tail call ptr @coroutine_transfer(ptr noundef %i.bi, ptr noundef %i.br) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %thread_sched_lock_.exit43, %bb.o, %thread_sched_switch0.exit
  %i.bt = tail call i32 @pthread_mutex_unlock(ptr noundef %i.bb) #17 ; 2 uses
  %.not.i.i44 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i44, label %thread_sched_unlock_.exit45, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.bt) #41
  unreachable

thread_sched_unlock_.exit45:                      ; preds = %bb.r
  %i.bu = load i32, ptr %i.l, align 8, !tbaa !65
  %.not38 = icmp eq i32 %i.bu, 0
  br i1 %.not38, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %thread_sched_unlock_.exit45, %thread_sched_unlock_.exit
  ret ptr null
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc void @thread_start_func_2(ptr noundef %0) unnamed_addr #20 {
bb.a:
  %1 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 4, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 320
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !230  ; 6 uses
  %i.j = getelementptr i8, ptr %i.g, i64 352
  %.val = load i32, ptr %i.j, align 8, !tbaa !384
  %i.k = icmp eq i32 %.val, 2
  br i1 %i.k, label %bb.b, label %rb_vm_unlock.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.c, label %rb_vm_lock.exit

bb.c:                                             ; preds = %bb.b
  tail call void @rb_vm_lock_body() #17
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !56
  br label %rb_vm_lock.exit

rb_vm_lock.exit:                                  ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.g, %bb.b ], [ %.pre, %bb.c ]
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  tail call void @rb_vm_ractor_blocking_cnt_dec(ptr noundef %i.o, ptr noundef %i.m, ptr noundef nonnull @.str.47, i32 noundef 677) #17
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %i.q = tail call i64 @rb_io_prep_stdin() #17
  %i.r = getelementptr i8, ptr %i.p, i64 408
  store i64 %i.q, ptr %i.r, align 8, !tbaa !474
  %i.s = tail call i64 @rb_io_prep_stdout() #17
  %i.t = getelementptr i8, ptr %i.p, i64 416
  store i64 %i.s, ptr %i.t, align 8, !tbaa !475
  %i.u = tail call i64 @rb_io_prep_stderr() #17
  %i.v = getelementptr i8, ptr %i.p, i64 424
  store i64 %i.u, ptr %i.v, align 8, !tbaa !476
  %i.w = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !146
  %.not.i.i88 = icmp eq ptr %i.w, null
  br i1 %.not.i.i88, label %bb.d, label %rb_vm_unlock.exit

bb.d:                                             ; preds = %rb_vm_lock.exit
  tail call void @rb_vm_unlock_body() #17
  br label %rb_vm_unlock.exit

rb_vm_unlock.exit:                                ; preds = %bb.d, %rb_vm_lock.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.x = getelementptr i8, ptr %0, i64 48         ; 12 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67   ; 3 uses
  store ptr %i.y, ptr %i.e, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.z, align 8, !tbaa !231
  store i64 36, ptr %3, align 8, !tbaa !233
  %i.aa = getelementptr i8, ptr %i.y, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !234
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !235
  %i.ad = getelementptr i8, ptr %i.y, i64 48
  %.0.8.val = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 3 uses
  %.not.i.i89 = icmp eq ptr %.0.8.val, null
  br i1 %.not.i.i89, label %rb_ec_ractor_ptr.exit.i, label %bb.e

bb.e:                                             ; preds = %rb_vm_unlock.exit
  %i.ae = getelementptr i8, ptr %.0.8.val, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ag = getelementptr i8, ptr %.0.8.val, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.e, %rb_vm_unlock.exit
  %.0.i2.i = phi ptr [ %i.af, %bb.e ], [ null, %rb_vm_unlock.exit ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.ah, %bb.e ], [ null, %rb_vm_unlock.exit ]
  %i.ai = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.ai, align 8, !tbaa !123
  %i.aj = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.aj, label %bb.f, label %rb_ec_vm_lock_rec.exit

bb.f:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.ak = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !121
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.f
  %.0.i90 = phi i32 [ %i.al, %bb.f ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i90, ptr %i.am, align 4, !tbaa !236
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ao, ptr %i.an, align 8
  %i.ap = tail call ptr @llvm.stacksave.p0()
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.an)
  %.not = icmp eq i32 %i.ar, 0                    ; 2 uses
  br i1 %.not, label %rb_ec_hooks.exit, label %bb.g, !prof !49

bb.g:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.9 = load volatile ptr, ptr %i.e, align 8, !tbaa !147
  %i.as = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.9)
  br label %thread_do_start.exit

rb_ec_hooks.exit:                                 ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.10 = load ptr, ptr %i.e, align 8, !tbaa !147
  %4 = getelementptr i8, ptr %.0..0..0..0.10, i64 24
  store ptr %3, ptr %4, align 8, !tbaa !234
  %i.at = load ptr, ptr %i.x, align 8, !tbaa !67  ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %.val87 = load ptr, ptr %i.au, align 8, !tbaa !11, !nonnull !103, !noundef !103
  %i.av = getelementptr i8, ptr %.val87, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !327
  %i.az = and i32 %i.ay, 1024
  %.not79 = icmp eq i32 %i.az, 0
  br i1 %.not79, label %bb.i, label %bb.h, !prof !49

bb.h:                                             ; preds = %rb_ec_hooks.exit
  %i.ba = getelementptr i8, ptr %i.aw, i64 16
  %i.bb = getelementptr i8, ptr %0, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 1024, ptr %2, align 8, !tbaa !332
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.at, ptr %i.bd, align 8, !tbaa !334
  %i.be = getelementptr i8, ptr %i.at, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !328
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !335
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bc, ptr %i.bh, align 8, !tbaa !336
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store i64 36, ptr %i.bj, align 8, !tbaa !337
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 36, ptr %i.bk, align 8, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.bl, align 8, !tbaa !339
  call void @rb_exec_event_hooks(ptr noundef nonnull %2, ptr noundef %i.ba, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_ec_hooks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bm = getelementptr i8, ptr %0, i64 448
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !406 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4
  br i1 %i.bo, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = tail call i64 @pthread_self() #46, !inline_history !477
  %i.bq = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !46
  %i.bs = and i64 %i.br, 8192
  %.not.i.i.i91 = icmp eq i64 %i.bs, 0
  %i.bt = getelementptr i8, ptr %i.bq, i64 24     ; 2 uses
  br i1 %.not.i.i.i91, label %RSTRING_PTR.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !48
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.k, %bb.j
  %i.bv = phi ptr [ %i.bu, %bb.k ], [ %i.bt, %bb.j ]
  %i.bw = call i32 @pthread_setname_np(i64 noundef %i.bp, ptr noundef %i.bv) #17, !inline_history !477 ; 0 uses
  br label %native_set_thread_name.exit.i

bb.l:                                             ; preds = %bb.i
  %i.bx = getelementptr i8, ptr %0, i64 416
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !254
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %threadptr_invoke_proc_location.exit.i.i, label %native_set_thread_name.exit.i

threadptr_invoke_proc_location.exit.i.i:          ; preds = %bb.l
  %i.ca = getelementptr i8, ptr %0, i64 392
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !48
  %i.cc = call i64 @rb_proc_location(i64 noundef %i.cb) #17, !inline_history !477 ; 3 uses
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !144
  %.not.i.i93 = icmp eq i64 %i.cc, 4
  br i1 %.not.i.i93, label %native_set_thread_name.exit.i, label %bb.m

bb.m:                                             ; preds = %threadptr_invoke_proc_location.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cd = inttoptr i64 %i.cc to ptr               ; 5 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !46
  %i.cf = and i64 %i.ce, 8192
  %.not.i.i.i.i = icmp eq i64 %i.cf, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr i8, ptr %i.cd, i64 16
  br label %RARRAY_AREF.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.ch = getelementptr i8, ptr %i.cd, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !48
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi ptr [ %i.cg, %bb.n ], [ %i.ci, %bb.o ]
  %i.cj = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !144
  %i.ck = inttoptr i64 %i.cj to ptr               ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !46
  %i.cm = and i64 %i.cl, 8192
  %.not.i12.i.i = icmp eq i64 %i.cm, 0
  %i.cn = getelementptr i8, ptr %i.ck, i64 24     ; 2 uses
  br i1 %.not.i12.i.i, label %RSTRING_PTR.exit13.i.i, label %bb.p

bb.p:                                             ; preds = %RARRAY_AREF.exit.i.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !48
  br label %RSTRING_PTR.exit13.i.i

RSTRING_PTR.exit13.i.i:                           ; preds = %bb.p, %RARRAY_AREF.exit.i.i
  %i.cp = phi ptr [ %i.co, %bb.p ], [ %i.cn, %RARRAY_AREF.exit.i.i ] ; 3 uses
  %i.cq = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.cp, i32 noundef 47) #54, !inline_history !477 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.cq, null
  br i1 %.not10.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %RSTRING_PTR.exit13.i.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 1      ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !48
  %.not11.i.i = icmp eq i8 %i.cs, 0
  %spec.select.i.i = select i1 %.not11.i.i, ptr %i.cp, ptr %i.cr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %RSTRING_PTR.exit13.i.i
  %.0.i.i = phi ptr [ %i.cp, %RSTRING_PTR.exit13.i.i ], [ %spec.select.i.i, %bb.q ]
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr i8, ptr %i.cd, i64 16
  br label %RARRAY_AREF.exit16.i.i

bb.t:                                             ; preds = %bb.r
  %i.cu = getelementptr i8, ptr %i.cd, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !48
  br label %RARRAY_AREF.exit16.i.i

RARRAY_AREF.exit16.i.i:                           ; preds = %bb.t, %bb.s
  %.0.i.i15.i.i = phi ptr [ %i.ct, %bb.s ], [ %i.cv, %bb.t ]
  %i.cw = getelementptr i8, ptr %.0.i.i15.i.i, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !144 ; 3 uses
  %i.cy = trunc i64 %i.cx to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %RARRAY_AREF.exit16.i.i
  %i.cz = call i64 @rb_fix2int(i64 noundef %i.cx) #17, !inline_history !477
  br label %rb_num2int_inline.exit.i.i

bb.v:                                             ; preds = %RARRAY_AREF.exit16.i.i
  %i.da = call i64 @rb_num2int(i64 noundef %i.cx) #17, !inline_history !477
  br label %rb_num2int_inline.exit.i.i

rb_num2int_inline.exit.i.i:                       ; preds = %bb.v, %bb.u
  %.0.i17.i.i = phi i64 [ %i.cz, %bb.u ], [ %i.da, %bb.v ]
  %i.db = trunc i64 %.0.i17.i.i to i32
  %i.dc = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull @.str.200, ptr noundef nonnull %.0.i.i, i32 noundef %i.db) #17, !inline_history !477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr %i.a, ptr %i.c, align 8, !tbaa !478
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #17, !inline_history !477, !srcloc !479
  %i.dd = load ptr, ptr %i.c, align 8, !tbaa !478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.de = load volatile i64, ptr %i.dd, align 8, !tbaa !144 ; 0 uses
  %i.df = icmp ugt i32 %i.dc, 15
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %rb_num2int_inline.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 42, ptr %i.dg, align 2, !tbaa !48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 0, ptr %i.dh, align 1, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %rb_num2int_inline.exit.i.i
  %i.di = tail call i64 @pthread_self() #46, !inline_history !477
  %i.dj = call i32 @pthread_setname_np(i64 noundef %i.di, ptr noundef nonnull %i.b) #17, !inline_history !477 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %native_set_thread_name.exit.i

native_set_thread_name.exit.i:                    ; preds = %bb.x, %threadptr_invoke_proc_location.exit.i.i, %bb.l, %RSTRING_PTR.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.dk = getelementptr i8, ptr %0, i64 416
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !254
  switch i32 %i.dl, label %thread_do_start.exit [
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
    i32 0, label %bb.ab
  ]

bb.y:                                             ; preds = %native_set_thread_name.exit.i
  %i.dm = call fastcc i64 @thread_do_start_proc(ptr noundef nonnull %0), !inline_history !477
  br label %thread_do_start.exit

bb.z:                                             ; preds = %native_set_thread_name.exit.i
  %i.dn = call fastcc i64 @thread_do_start_proc(ptr noundef nonnull %0), !inline_history !477 ; 2 uses
  %i.do = load ptr, ptr %i.x, align 8, !tbaa !67
  call void @rb_ractor_atexit(ptr noundef %i.do, i64 noundef %i.dn) #17, !inline_history !477
  br label %thread_do_start.exit

bb.aa:                                            ; preds = %native_set_thread_name.exit.i
  %i.dp = getelementptr i8, ptr %0, i64 392
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !48
  %i.dr = getelementptr i8, ptr %0, i64 400
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !48
end_hunk_6
begin_hunk_7_@co_start:bb.a
bb.k:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr i8, ptr %i.c, i64 188
  store i8 1, ptr %i.ak, align 4, !tbaa !152
  br label %bb.l

bb.l:                                             ; preds = %thread_sched_switch0.exit, %bb.k, %bb.f
  %.sink38 = phi i64 [ 200, %thread_sched_switch0.exit ], [ 96, %bb.k ], [ 96, %bb.f ]
  %.sink37 = phi ptr [ %i.w, %thread_sched_switch0.exit ], [ %i.p, %bb.k ], [ %i.p, %bb.f ]
  %.sink = phi ptr [ %i.ab, %thread_sched_switch0.exit ], [ %1, %bb.k ], [ %1, %bb.f ]
  %i.al = getelementptr i8, ptr %.sink37, i64 %.sink38
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !489
  %i.an = call ptr @coroutine_transfer(ptr noundef %.sink, ptr noundef %i.am) #17 ; 0 uses
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.191) #48
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @native_thread_check_and_create_shared(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160        ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef %i.a) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %rb_native_mutex_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.b) #41
  unreachable

rb_native_mutex_lock.exit:                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 264        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !385  ; 4 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %rb_native_mutex_lock.exit
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !441
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !383
  %i.j = getelementptr i8, ptr %i.i, i64 266
  %i.k = load i8, ptr %i.j, align 2, !tbaa !149, !range !102, !noundef !103
  %i.l = xor i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i32
  %spec.select = sub i32 %i.g, %i.m
  %i.n = icmp ult i32 %i.d, %spec.select
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 276
  %i.p = load i32, ptr %i.o, align 4, !tbaa !150
  %i.q = icmp ult i32 %i.d, %i.p
  br i1 %i.q, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.d, %rb_native_mutex_lock.exit
  %i.r = add i32 %i.d, 1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !385
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef %i.a) #17 ; 2 uses
  %.not.i19 = icmp eq i32 %i.s, 0
  br i1 %.not.i19, label %rb_native_mutex_unlock.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.s) #41
  unreachable

rb_native_mutex_unlock.exit:                      ; preds = %.critedge
  %i.t = tail call noalias nonnull dereferenceable(120) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 120) #49 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr @condattr_monotonic, align 8, !tbaa !52
  %i.w = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.u, ptr noundef %i.v) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %native_thread_alloc.exit, label %bb.f

bb.f:                                             ; preds = %rb_native_mutex_unlock.exit
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.10, i32 noundef %i.w) #41
  unreachable

native_thread_alloc.exit:                         ; preds = %rb_native_mutex_unlock.exit
  %i.x = tail call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #50
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store ptr %i.x, ptr %i.y, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %0, ptr %i.z, align 8, !tbaa !136
  %i.aa = tail call fastcc i32 @native_thread_create0(ptr noundef nonnull %i.t)
  br label %rb_native_mutex_unlock.exit21

bb.g:                                             ; preds = %bb.c, %bb.d
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef %i.a) #17 ; 2 uses
  %.not.i20 = icmp eq i32 %i.ab, 0
  br i1 %.not.i20, label %rb_native_mutex_unlock.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.ab) #41
  unreachable

rb_native_mutex_unlock.exit21:                    ; preds = %bb.g, %native_thread_alloc.exit
  %.0 = phi i32 [ %i.aa, %native_thread_alloc.exit ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @ruby_annotate_mmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_kill(i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @rb_ractor_blocking_threads_inc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @rb_ractor_blocking_threads_dec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @io_blocking_operation_exit(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !294  ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !73  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val11 = load ptr, ptr %i.d, align 8, !tbaa !72 ; 2 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  store ptr %.val11, ptr %i.e, align 8, !tbaa !72
  store ptr %.val, ptr %.val11, align 8, !tbaa !73
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !342  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 432
  %i.l = load i64, ptr %i.k, align 8, !tbaa !228  ; 2 uses
  %.not = icmp eq i64 %i.l, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.h, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !190
  %i.o = load i64, ptr %i.f, align 8, !tbaa !490
  %i.p = tail call i64 @rb_fiberptr_self(ptr noundef %i.n) #17
  %i.q = tail call i64 @rb_fiber_scheduler_unblock(i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.p) #17 ; 0 uses
  br label %rb_thread_wakeup.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %i.j, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !80
  %i.t = tail call i64 @rb_thread_wakeup_alive(i64 noundef %i.s)
  %i.u = and i64 %i.t, -5
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.d, label %rb_thread_wakeup.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.54) #41
  unreachable

rb_thread_wakeup.exit:                            ; preds = %bb.c, %bb.b
  ret i64 4
}

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(ptr) #41

declare i64 @rb_ary_delete_at(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @rb_current_box() local_unnamed_addr #4

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_exec_event_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_make_exception(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_ec_setup_exception(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_fiber_scheduler_fiber_interrupt(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @rb_id_table_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @rb_id_table_delete(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @rb_id_table_create(i64 noundef) local_unnamed_addr #4

declare i32 @rb_id_table_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @wait_for_single_fd_blocking_region(ptr noundef %0, ptr noundef nonnull %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.rb_blocking_region_buffer, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !7
  store volatile i32 0, ptr %3, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.b = call fastcc i32 @blocking_region_begin(ptr noundef %0, ptr noundef %5, ptr noundef nonnull @ubf_select, ptr noundef %0, i32 noundef 1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr i8, ptr %i.d, i64 200
  %i.f = call i32 @_setjmp(ptr noundef %i.e) #45  ; 0 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.h = getelementptr i8, ptr %i.g, i64 184
  %i.i = call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !491
  store ptr %i.i, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = getelementptr i8, ptr %i.k, i64 216
  call fastcc void @thread_sched_to_waiting(ptr noundef %i.l, ptr noundef %0)
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.p = getelementptr i8, ptr %i.m, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50
  %i.r = xor i32 %i.q, -1
  %i.s = and i32 %i.o, 10
  %i.t = and i32 %i.s, %i.r
  %.not14 = icmp eq i32 %i.t, 0
  br i1 %.not14, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %rb_hrtime2timespec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %2, align 8, !tbaa !144    ; 2 uses
  %i.v = udiv i64 %i.u, 1000000000
  store i64 %i.v, ptr %4, align 8, !tbaa !53
  %i.w = urem i64 %i.u, 1000000000
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !55
  br label %rb_hrtime2timespec.exit

rb_hrtime2timespec.exit:                          ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %4, %bb.d ], [ null, %bb.c ]
  %i.y = call i32 @ppoll(ptr noundef nonnull %1, i64 noundef 1, ptr noundef %.0.i, ptr noundef null) #17
  store volatile i32 %i.y, ptr %i.a, align 4, !tbaa !7
  %.0..0..0..0. = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %i.z = icmp slt i32 %.0..0..0..0., 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_hrtime2timespec.exit
  %i.aa = call ptr @rb_errno_ptr() #17
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  store volatile i32 %i.ab, ptr %3, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %rb_hrtime2timespec.exit, %bb.e, %bb.b
  call fastcc void @blocking_region_end(ptr noundef nonnull %0, ptr noundef %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.0..0..0..0.1 = load volatile i32, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.0..0..0..0.1
}

declare i32 @ppoll(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @timer_thread_func(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.rb_internal_thread_event_data, align 8 ; 4 uses
  %i.a = alloca [1 x i64], align 8                ; 3 uses
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @ruby_nt_serial)
  store i32 -1, ptr %i.b, align 4, !tbaa !7
  %i.c = load atomic volatile i32, ptr @system_working seq_cst, align 4
  %.not177 = icmp eq i32 %i.c, 0
  br i1 %.not177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = getelementptr i8, ptr %0, i64 160        ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 320        ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 352
  %i.i = getelementptr i8, ptr %0, i64 216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %timer_thread_polling.exit
  %i.j = call i32 @rb_signal_buff_size() #17
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %timer_thread_check_signal.exit, !prof !139

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !166  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %timer_thread_check_signal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @threadptr_trap_interrupt(ptr noundef nonnull %i.l)
  br label %timer_thread_check_signal.exit

timer_thread_check_signal.exit:                   ; preds = %bb.b, %bb.c, %bb.d
  %i.m = call i64 @rb_hrtime_now()                ; 2 uses
  %i.n = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timer_th, i64 240)) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %rb_native_mutex_lock.exit.i, label %bb.e

bb.e:                                             ; preds = %timer_thread_check_signal.exit
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.n) #41
  unreachable

rb_native_mutex_lock.exit.i:                      ; preds = %timer_thread_check_signal.exit, %timer_thread_wakeup_thread.exit.i
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @timer_th, i64 224), align 8, !tbaa !58 ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.o, getelementptr inbounds nuw (i8, ptr @timer_th, i64 224)
  %i.p = getelementptr i8, ptr %i.o, i64 -32      ; 4 uses
  %.not1.i.i = icmp eq ptr %i.p, null
  %.not.i2.i = or i1 %.not.i.i.i, %.not1.i.i
  br i1 %.not.i2.i, label %timer_thread_deq_wakeup.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %rb_native_mutex_lock.exit.i
  %i.q = load i32, ptr %i.p, align 8, !tbaa !469
  %i.r = and i32 %i.q, 1
  %.not12.i.i = icmp eq i32 %i.r, 0
  br i1 %.not12.i.i, label %timer_thread_deq_wakeup.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.o, i64 -24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !471  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.m
  %i.v = sub nuw i64 %i.t, %i.m
  %i.w = icmp ult i64 %i.v, 1000000
  %.0.i13.i.i = select i1 %i.u, i1 true, i1 %i.w
  br i1 %.0.i13.i.i, label %timer_thread_deq_wakeup.exit.i, label %timer_thread_deq_wakeup.exit.thread.i

timer_thread_deq_wakeup.exit.i:                   ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.o, i64 8        ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72   ; 2 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !72
  store ptr %i.z, ptr %i.y, align 8, !tbaa !73
  store ptr %i.o, ptr %i.x, align 8, !tbaa !72
  store ptr %i.o, ptr %i.o, align 8, !tbaa !73
  store i32 0, ptr %i.p, align 8, !tbaa !469
  %i.ab = getelementptr i8, ptr %i.o, i64 -8
  store i32 0, ptr %i.ab, align 8, !tbaa !492
  %i.ac = ptrtoint ptr %i.p to i64
  %i.ad = add i64 %i.ac, -136                     ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 9 uses
  %i.af = getelementptr i8, ptr %i.o, i64 -16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !493
  %.not.i4 = icmp eq i64 %i.ad, 0
  br i1 %.not.i4, label %timer_thread_deq_wakeup.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %timer_thread_deq_wakeup.exit.i
  %i.ah = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @timer_th, i64 240)) #17 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i3.i, label %rb_native_mutex_unlock.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.ah) #41
  unreachable

rb_native_mutex_unlock.exit.i:                    ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.ae, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 7 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 216    ; 3 uses
  %i.al = call i32 @pthread_mutex_lock(ptr noundef %i.ak) #17 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i, label %thread_sched_lock_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %rb_native_mutex_unlock.exit.i
  call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.al) #41
  unreachable

thread_sched_lock_.exit.i.i:                      ; preds = %rb_native_mutex_unlock.exit.i
  %i.am = getelementptr i8, ptr %i.aj, i64 256    ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.an, %i.ae
  br i1 %.not.i.i4.i, label %timer_thread_wakeup_thread_locked.exit.i.i, label %bb.k

bb.k:                                             ; preds = %thread_sched_lock_.exit.i.i
  %i.ao = getelementptr i8, ptr %i.ae, i64 184
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !459
  %i.aq = icmp eq i32 %i.ap, %i.ag
  br i1 %i.aq, label %bb.l, label %timer_thread_wakeup_thread_locked.exit.i.i

end_hunk_7
