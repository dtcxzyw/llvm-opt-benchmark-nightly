Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/acct?download=true
inline.NumInlined: 84
inline.NumDeleted: 55
begin_hunk_0
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.47 }
%union.anon.47 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.48 }
%union.anon.48 = type { i64 }
%struct.path = type { ptr, ptr }
%struct.vma_iterator = type { %struct.ma_state }
%struct.ma_state = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, i64, i32, i8, i8, i8, i8, i32 }
%struct.kstatfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i64, i64, i64, [4 x i64] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@__UNIQUE_ID_addressable_kernel_acct_sysctls_init_639 = internal global ptr @kernel_acct_sysctls_init, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"kern_acct_table\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"acct\00", align 1
@acct_parm = internal global [3 x i32] [i32 4, i32 2, i32 30], align 4
@kern_acct_table = internal constant [1 x { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr }] [{ ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr } { ptr @.str.2, ptr @acct_parm, i32 12, i16 420, [2 x i8] zeroinitializer, ptr @proc_dointvec, ptr null, ptr null, ptr null }], align 16
@acct_on_mutex = internal global %struct.mutex zeroinitializer, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@init_fs_pin.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"&p->wait\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@system_percpu_wq = external dso_local local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"\016Process accounting paused\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\016Process accounting resumed\0A\00", align 1
@percpu_down_read_trylock.__UNIQUE_ID_addressable___SCK__preempt_schedule_374 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__preempt_count = external dso_local global i32, section ".data..percpu..hot..__preempt_count", align 4
@percpu_up_read.__UNIQUE_ID_addressable___SCK__preempt_schedule_375 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_addressable_kernel_acct_sysctls_init_639, ptr @percpu_down_read_trylock.__UNIQUE_ID_addressable___SCK__preempt_schedule_374, ptr @percpu_up_read.__UNIQUE_ID_addressable___SCK__preempt_schedule_375], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @kernel_acct_sysctls_init() #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @__register_sysctl_init(ptr noundef @.str, ptr noundef @kern_acct_table, ptr noundef @.str.1, i64 noundef 1) #11
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_acct(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call fastcc i64 @__se_sys_acct(i64 noundef %i.b) #12, !srcloc !17
  ret i64 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_acct(i64 noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.path, align 8               ; 7 uses
  %i.a = inttoptr i64 %0 to ptr
  %i.b = tail call zeroext i1 @capable(i32 noundef 20) #11
  br i1 %i.b, label %bb.b, label %__do_sys_acct.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mutex_lock(ptr noundef @acct_on_mutex) #11
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !11
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = tail call ptr @task_active_pid_ns(ptr noundef %i.d) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = tail call ptr @getname_flags(ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 2 uses
  %i.g = tail call ptr @file_open_name(ptr noundef %i.f, i32 noundef 33793, i16 noundef zeroext 0) #11 ; 5 uses
  %i.h = icmp ugt ptr %i.g, inttoptr (i64 -4096 to ptr) ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %i.g to i64
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 64       ; 2 uses
  %i.k = tail call ptr @mnt_clone_internal(ptr noundef %i.j) #11 ; 4 uses
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = ptrtoint ptr %i.k to i64
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  store ptr %i.k, ptr %1, align 8
  %i.n = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i49.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i49.i.i, label %dget.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.n, i64 128
  tail call void @lockref_get(ptr noundef %i.o) #11
  br label %dget.exit.i.i

dget.exit.i.i:                                    ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.d, i64 1992
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call ptr @dentry_open(ptr noundef nonnull %1, i32 noundef 33793, ptr noundef %i.r) #11 ; 11 uses
  %i.t = icmp ugt ptr %i.s, inttoptr (i64 -4096 to ptr)
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %dget.exit.i.i
  %i.u = ptrtoint ptr %i.s to i64
  br label %bb.p

bb.j:                                             ; preds = %dget.exit.i.i
  %i.v = getelementptr i8, ptr %i.s, i64 32
  %.val48.i.i = load ptr, ptr %i.v, align 8       ; 2 uses
  %i.w = load i16, ptr %.val48.i.i, align 8
  %i.x = icmp slt i16 %i.w, -28672
  br i1 %i.x, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %.val48.i.i, i64 40
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 80
  %i.ab = load i64, ptr %i.aa, align 16
  %i.ac = and i64 %i.ab, 2151677952
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %i.z, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = and i32 %i.ag, 512
  %.not42.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not42.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr i8, ptr %i.s, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 262144
  %.not43.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not43.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.am = call noalias noundef align 8 dereferenceable_or_null(280) ptr @__kmalloc_cache_noprof(ptr noundef %i.al, i32 noundef 3520, i64 noundef 280) #15 ; 17 uses
  %.not44.i.i = icmp eq ptr %i.am, null
  br i1 %.not44.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %i.am, i64 72
  store volatile i64 1, ptr %i.an, align 8
  call void @__init_waitqueue_head(ptr noundef nonnull %i.am, ptr noundef @.str.8, ptr noundef @init_fs_pin.__key) #11
  %i.ao = getelementptr i8, ptr %i.am, i64 32
  %i.ap = getelementptr i8, ptr %i.am, i64 64
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  store ptr @acct_pin_kill, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.am, i64 136
  store ptr %i.s, ptr %i.aq, align 8
  %i.ar = load volatile i64, ptr @jiffies, align 64
  %i.as = getelementptr i8, ptr %i.am, i64 128
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %i.am, i64 144
  store ptr %i.e, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.am, i64 96     ; 3 uses
  call void @mutex_init_generic(ptr noundef %i.au) #11
  %i.av = getelementptr i8, ptr %i.am, i64 152
  store i64 4503599625273344, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %i.am, i64 160    ; 3 uses
  store volatile ptr %i.aw, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %i.am, i64 168
  store volatile ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %i.am, i64 176
  store ptr @close_work, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.am, i64 184
  store i32 0, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.am, i64 192
  call void @__init_swait_queue_head(ptr noundef %i.ba, ptr noundef @.str.11, ptr noundef @init_completion.__key) #11
  call void @mutex_lock(ptr noundef %i.au) #11
  %i.bb = load ptr, ptr %i.j, align 8
  call void @pin_insert(ptr noundef nonnull %i.am, ptr noundef %i.bb) #11
  call void @__rcu_read_lock() #11
  %i.bc = getelementptr i8, ptr %i.e, i64 192     ; 2 uses
  %i.bd = call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.bc, ptr nonnull %i.am, ptr elementtype(ptr) %i.bc) #14, !srcloc !18
  call void @mutex_unlock(ptr noundef %i.au) #11
  call void @pin_kill(ptr noundef %i.bd) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.d
  %.061.i.i = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.s, %bb.i ], [ %i.s, %bb.m ], [ %i.s, %bb.n ], [ null, %bb.o ], [ %i.s, %bb.l ], [ %i.s, %bb.k ], [ %i.s, %bb.j ] ; 3 uses
  %.0.i.i = phi i64 [ %i.i, %bb.d ], [ %i.m, %bb.f ], [ %i.u, %bb.i ], [ -5, %bb.m ], [ -12, %bb.n ], [ 0, %bb.o ], [ -22, %bb.l ], [ -22, %bb.k ], [ -13, %bb.j ]
  call void @putname(ptr noundef %i.f) #11
  %.not.i.i.i = icmp eq ptr %.061.i.i, null
  %i.be = icmp ugt ptr %.061.i.i, inttoptr (i64 -4096 to ptr)
  %spec.select.i.i.i = or i1 %.not.i.i.i, %i.be
  br i1 %spec.select.i.i.i, label %__free_fput_sync.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__fput_sync(ptr noundef nonnull %.061.i.i) #11
  br label %__free_fput_sync.exit.i.i

__free_fput_sync.exit.i.i:                        ; preds = %bb.q, %bb.p
  call void @path_put(ptr noundef nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %.not.i45.i.i = icmp eq ptr %i.g, null
  %spec.select.i46.i.i = or i1 %.not.i45.i.i, %i.h
  br i1 %spec.select.i46.i.i, label %acct_on.exit.i, label %bb.r

bb.r:                                             ; preds = %__free_fput_sync.exit.i.i
  call void @fput(ptr noundef nonnull %i.g) #11
  br label %acct_on.exit.i

acct_on.exit.i:                                   ; preds = %bb.r, %__free_fput_sync.exit.i.i
  call void @mutex_unlock(ptr noundef @acct_on_mutex) #11
  %sext.i = shl i64 %.0.i.i, 32
  %i.bf = ashr exact i64 %sext.i, 32
  br label %__do_sys_acct.exit

bb.s:                                             ; preds = %bb.b
  tail call void @__rcu_read_lock() #11
  %i.bg = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !11
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = tail call ptr @task_active_pid_ns(ptr noundef %i.bh) #11
  %i.bj = getelementptr i8, ptr %i.bi, i64 192
  %i.bk = load ptr, ptr %i.bj, align 64
  tail call void @pin_kill(ptr noundef %i.bk) #11
  br label %__do_sys_acct.exit

__do_sys_acct.exit:                               ; preds = %bb.a, %acct_on.exit.i, %bb.s
  %.03.i = phi i64 [ -1, %bb.a ], [ %i.bf, %acct_on.exit.i ], [ 0, %bb.s ]
  ret i64 %.03.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_acct(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = tail call fastcc i64 @__se_sys_acct(i64 noundef %i.c) #12, !srcloc !19
  ret i64 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acct_exit_ns(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #11
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 64
  tail call void @pin_kill(ptr noundef %i.b) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pin_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acct_collect(i64 noundef %0, i32 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.vma_iterator, align 8       ; 7 uses
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr                 ; 12 uses
  %i.c = getelementptr i8, ptr %i.b, i64 2096
  %i.d = load ptr, ptr %i.c, align 16             ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 944      ; 8 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 1400
  %i.g = load ptr, ptr %i.f, align 8              ; 6 uses
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.h = getelementptr i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 80, i1 false)
  store ptr %i.h, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 1, ptr %i.j, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #14
          to label %__mmap_lock_trace_start_locking.exit.i [label %bb.d], !srcloc !21

bb.d:                                             ; preds = %bb.c
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %i.g, i1 noundef zeroext false) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %bb.d, %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 464      ; 2 uses
  tail call void @down_read(ptr noundef %i.k) #11
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #14
          to label %mmap_read_lock.exit [label %bb.e], !srcloc !21

bb.e:                                             ; preds = %__mmap_lock_trace_start_locking.exit.i
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %i.g, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %__mmap_lock_trace_start_locking.exit.i, %bb.e
  %i.l = call ptr @mas_find(ptr noundef nonnull %2, i64 noundef -1) #11 ; 2 uses
  %.not2127 = icmp eq ptr %i.l, null
  br i1 %.not2127, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %mmap_read_lock.exit, %.lr.ph
  %i.m = phi ptr [ %i.s, %.lr.ph ], [ %i.l, %mmap_read_lock.exit ] ; 2 uses
  %.028 = phi i64 [ %i.r, %.lr.ph ], [ 0, %mmap_read_lock.exit ]
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = load i64, ptr %i.m, align 64
  %i.q = add i64 %i.o, %.028
  %i.r = sub i64 %i.q, %i.p                       ; 2 uses
  %i.s = call ptr @mas_find(ptr noundef nonnull %2, i64 noundef -1) #11 ; 2 uses
  %.not21 = icmp eq ptr %i.s, null
  br i1 %.not21, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.t = lshr i64 %i.r, 10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %mmap_read_lock.exit
  %.0.lcssa = phi i64 [ 0, %mmap_read_lock.exit ], [ %i.t, %._crit_edge.loopexit ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #14
          to label %mmap_read_unlock.exit [label %bb.f], !srcloc !21

bb.f:                                             ; preds = %._crit_edge
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %i.g, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %._crit_edge, %bb.f
  call void @up_read(ptr noundef %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %mmap_read_unlock.exit
  %.1 = phi i64 [ %.0.lcssa, %mmap_read_unlock.exit ], [ 0, %bb.b ]
  %i.u = getelementptr i8, ptr %i.b, i64 2104
  %i.v = load ptr, ptr %i.u, align 8
  call void @_raw_spin_lock_irq(ptr noundef %i.v) #11
  %i.w = getelementptr i8, ptr %i.d, i64 960
  store i64 %.1, ptr %i.w, align 8
  br label %bb.h

.critedge:                                        ; preds = %bb.a
  %i.x = getelementptr i8, ptr %i.b, i64 2104
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.y) #11
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g
  %i.z = getelementptr i8, ptr %i.b, i64 1432
  %.val = load i32, ptr %i.z, align 8
  %i.aa = icmp sgt i32 %.val, -1
  br i1 %i.aa, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.d, i64 952
  store i64 %0, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.b, i64 44
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 64
  %.not22 = icmp eq i32 %i.ae, 0
  br i1 %.not22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.e, align 8
  %i.ag = or i32 %i.af, 1
  store i32 %i.ag, ptr %i.e, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.ah = getelementptr i8, ptr %i.b, i64 44      ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = and i32 %i.ai, 256
  %.not23 = icmp eq i32 %i.aj, 0
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i32, ptr %i.e, align 8
  %i.al = or i32 %i.ak, 2
  store i32 %i.al, ptr %i.e, align 8
  %.pre = load i32, ptr %i.ah, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = phi i32 [ %.pre, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %i.an = and i32 %i.am, 512
  %.not24 = icmp eq i32 %i.an, 0
  br i1 %.not24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@path_put
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @file_open_name(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mnt_clone_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acct_pin_kill(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96         ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.a) #11
  tail call fastcc void @fill_ac(ptr noundef %0) #12, !srcloc !32
  %i.b = getelementptr i8, ptr %0, i64 152
  %i.c = load ptr, ptr @system_percpu_wq, align 8
  %i.d = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.c, ptr noundef %i.b) #11 ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 184
  tail call void @wait_for_completion(ptr noundef %i.e) #11
  %i.f = getelementptr i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 192      ; 2 uses
  %i.i = tail call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.h, ptr null, ptr %0, ptr elementtype(i64) %i.h) #14, !srcloc !33 ; 0 uses
  tail call void @mutex_unlock(ptr noundef %i.a) #11
  tail call void @pin_remove(ptr noundef %0) #11
  %i.j = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.k = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decq $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.j, ptr elementtype(i64) %i.j) #14, !srcloc !14 ; 2 uses
  %i.l = icmp ult i8 %i.k, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc nuw i8 %i.k to i1
  %.not.i = icmp ne ptr %0, null
  %or.cond.not.i = and i1 %.not.i, %i.m
  br i1 %or.cond.not.i, label %bb.b, label %acct_put.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 80
  tail call void @kvfree_call_rcu(ptr noundef %i.n, ptr noundef nonnull %0) #11
  br label %acct_put.exit

acct_put.exit:                                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @close_work(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -152
  %i.b = getelementptr i8, ptr %0, i64 -16
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  tail call fastcc void @acct_write_process(ptr noundef %i.a) #12, !srcloc !34
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 112
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 %i.g(ptr noundef %i.c, ptr noundef null) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__fput_sync(ptr noundef %i.c) #11
  %i.i = getelementptr i8, ptr %0, i64 32
  tail call void @complete(ptr noundef %i.i) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pin_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__fput_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @getname_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @fill_ac(ptr noundef initializes((121, 122)) %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !11
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 2096     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16             ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 944
  %i.f = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %i.g = load volatile i64, ptr @jiffies, align 64
  %i.h = getelementptr i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp slt i64 %i.j, 0
  %i.l = getelementptr i8, ptr %0, i64 121        ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %0, i64 120
  %i.n = load i8, ptr %i.m, align 8, !range !15, !noundef !16
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.aa

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.l, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %i.p = getelementptr i8, ptr %0, i64 217
  store i8 2, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %0, i64 252
  %i.r = getelementptr i8, ptr %i.b, i64 2008
  %i.s = tail call i64 @sized_strscpy(ptr noundef %i.q, ptr noundef %i.r, i64 noundef 17) #11 ; 0 uses
  %i.t = tail call i64 @ktime_get() #11
  %i.u = getelementptr i8, ptr %i.b, i64 1592
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 1816
  %i.x = load i64, ptr %i.w, align 8
  %i.y = sub i64 %i.t, %i.x                       ; 5 uses
  %i.z = udiv i64 %i.y, 10000000                  ; 4 uses
  %i.aa = icmp ugt i64 %i.y, 81919999999
  br i1 %i.aa, label %.lr.ph.i, label %encode_comp_t.exit.thread

encode_comp_t.exit.thread:                        ; preds = %bb.d
  %i.ab = trunc nuw nsw i64 %i.z to i16
  %i.ac = getelementptr i8, ptr %0, i64 232
  store i16 %i.ab, ptr %i.ac, align 8
  br label %encode_comp2_t.exit.thread

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01422.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %bb.d ]
  %.01521.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.z, %bb.d ] ; 3 uses
  %i.ad = lshr i64 %.01521.i, 3                   ; 4 uses
  %i.ae = add nuw nsw i32 %.01422.i, 1            ; 3 uses
  %i.af = icmp samesign ugt i64 %.01521.i, 65535
  br i1 %i.af, label %.lr.ph.i, label %bb.e, !llvm.loop !35

bb.e:                                             ; preds = %.lr.ph.i
  %i.ag = and i64 %.01521.i, 4
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %encode_comp_t.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add nuw nsw i64 %i.ad, 1
  %i.aj = icmp eq i64 %i.ad, 8191                 ; 2 uses
  %spec.select.i = select i1 %i.aj, i64 1024, i64 %i.ai
  %i.ak = zext i1 %i.aj to i32
  %spec.select20.i = add nuw i32 %i.ae, %i.ak
  br label %encode_comp_t.exit

encode_comp_t.exit:                               ; preds = %bb.e, %bb.f
  %.116.i = phi i64 [ %i.ad, %bb.e ], [ %spec.select.i, %bb.f ]
  %.1.i = phi i32 [ %i.ae, %bb.e ], [ %spec.select20.i, %bb.f ]
  %.1.fr.i = freeze i32 %.1.i                     ; 2 uses
  %i.al = icmp sgt i32 %.1.fr.i, 7
  %i.am = shl i32 %.1.fr.i, 13
  %i.an = trunc nuw nsw i64 %.116.i to i32
  %i.ao = add i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i16
  %spec.select35.i = select i1 %i.al, i16 -1, i16 %i.ap
  %i.aq = getelementptr i8, ptr %0, i64 232
  store i16 %spec.select35.i, ptr %i.aq, align 8
  %i.ar = icmp ugt i64 %i.y, 5242879999999
  %i.as = zext i1 %i.ar to i32                    ; 2 uses
  %i.at = icmp ugt i64 %i.y, 10485759999999
  br i1 %i.at, label %.lr.ph.i75, label %encode_comp2_t.exit.thread

.lr.ph.i75:                                       ; preds = %encode_comp_t.exit, %.lr.ph.i75
  %.01321.i = phi i32 [ %i.av, %.lr.ph.i75 ], [ %i.as, %encode_comp_t.exit ]
  %.01420.i = phi i64 [ %i.au, %.lr.ph.i75 ], [ %i.z, %encode_comp_t.exit ] ; 3 uses
  %i.au = lshr i64 %.01420.i, 1                   ; 4 uses
  %i.av = add nuw nsw i32 %.01321.i, 1            ; 3 uses
  %i.aw = icmp samesign ugt i64 %.01420.i, 2097151
  br i1 %i.aw, label %.lr.ph.i75, label %bb.g, !llvm.loop !36

bb.g:                                             ; preds = %.lr.ph.i75
  %i.ax = and i64 %.01420.i, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %encode_comp2_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = add nuw nsw i64 %i.au, 1
  %i.ba = icmp eq i64 %i.au, 1048575              ; 2 uses
  %spec.select.i76 = select i1 %i.ba, i64 524288, i64 %i.az
  %i.bb = zext i1 %i.ba to i32
  %spec.select19.i = add nuw i32 %i.av, %i.bb
  br label %encode_comp2_t.exit

encode_comp2_t.exit.thread:                       ; preds = %encode_comp_t.exit, %encode_comp_t.exit.thread
  %.1.i74.ph = phi i32 [ 0, %encode_comp_t.exit.thread ], [ %i.as, %encode_comp_t.exit ]
  %i.bc = shl nuw nsw i32 %.1.i74.ph, 19
  %i.bd = trunc nuw nsw i64 %i.z to i32
  %i.be = and i32 %i.bd, 524287
  %i.bf = or disjoint i32 %i.be, %i.bc
  br label %bb.i

encode_comp2_t.exit:                              ; preds = %bb.g, %bb.h
  %.115.i = phi i64 [ %i.au, %bb.g ], [ %spec.select.i76, %bb.h ]
  %.1.i74 = phi i32 [ %i.av, %bb.g ], [ %spec.select19.i, %bb.h ]
  %.1.i74.fr = freeze i32 %.1.i74                 ; 2 uses
  %i.bg = icmp sgt i32 %.1.i74.fr, 31
  %i.bh = shl i32 %.1.i74.fr, 19
  %i.bi = trunc nuw nsw i64 %.115.i to i32
  %i.bj = and i32 %i.bi, 524287
  %i.bk = or disjoint i32 %i.bj, %i.bh
  %spec.select = select i1 %i.bg, i32 16777215, i32 %i.bk
  br label %bb.i

bb.i:                                             ; preds = %encode_comp2_t.exit, %encode_comp2_t.exit.thread
  %i.bl = phi i32 [ %i.bf, %encode_comp2_t.exit.thread ], [ %spec.select, %encode_comp2_t.exit ] ; 2 uses
  %i.bm = lshr i32 %i.bl, 16
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr i8, ptr %0, i64 269
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = trunc i32 %i.bl to i16
  %i.bq = getelementptr i8, ptr %0, i64 270
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = udiv i64 %i.y, 1000000000
  %i.bs = tail call i64 @ktime_get_real_seconds() #11
  %i.bt = sub i64 %i.bs, %i.br                    ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 4294967294
  %i.bv = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 0)
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = select i1 %i.bu, i32 -1, i32 %i.bw
  %i.by = getelementptr i8, ptr %0, i64 224
  store i32 %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %0, i64 246
  store i16 100, ptr %i.bz, align 2
  %i.ca = getelementptr i8, ptr %i.b, i64 2104    ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.cb) #11
  %i.cc = load ptr, ptr %i.c, align 16
  %i.cd = getelementptr i8, ptr %i.cc, i64 424
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = tail call i32 @tty_devnum(ptr noundef nonnull %i.ce) #11 ; 2 uses
  %i.cg = lshr i32 %i.cf, 12
  %i.ch = and i32 %i.cg, 65280
  %i.ci = or i32 %i.ch, %i.cf
  %i.cj = trunc i32 %i.ci to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ck = phi i16 [ %i.cj, %bb.j ], [ 0, %bb.i ]
  %i.cl = getelementptr i8, ptr %0, i64 222
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = getelementptr i8, ptr %i.d, i64 968
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = udiv i64 %i.cn, 10000000                ; 2 uses
  %i.cp = icmp ugt i64 %i.cn, 81919999999
  br i1 %i.cp, label %.lr.ph.i78, label %.thread30.i77

.thread30.i77:                                    ; preds = %bb.k
  %i.cq = trunc nuw nsw i64 %i.co to i16
  br label %encode_comp_t.exit87

.lr.ph.i78:                                       ; preds = %bb.k, %.lr.ph.i78
  %.01422.i79 = phi i32 [ %i.cs, %.lr.ph.i78 ], [ 0, %bb.k ]
  %.01521.i80 = phi i64 [ %i.cr, %.lr.ph.i78 ], [ %i.co, %bb.k ] ; 3 uses
  %i.cr = lshr i64 %.01521.i80, 3                 ; 4 uses
  %i.cs = add nuw nsw i32 %.01422.i79, 1          ; 3 uses
  %i.ct = icmp samesign ugt i64 %.01521.i80, 65535
  br i1 %i.ct, label %.lr.ph.i78, label %bb.l, !llvm.loop !35

bb.l:                                             ; preds = %.lr.ph.i78
  %i.cu = and i64 %.01521.i80, 4
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = add nuw nsw i64 %i.cr, 1
  %i.cx = icmp eq i64 %i.cr, 8191                 ; 2 uses
  %spec.select.i81 = select i1 %i.cx, i64 1024, i64 %i.cw
  %i.cy = zext i1 %i.cx to i32
  %spec.select20.i82 = add nuw i32 %i.cs, %i.cy
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.116.i83 = phi i64 [ %i.cr, %bb.l ], [ %spec.select.i81, %bb.m ]
  %.1.i84 = phi i32 [ %i.cs, %bb.l ], [ %spec.select20.i82, %bb.m ]
  %.1.fr.i85 = freeze i32 %.1.i84                 ; 2 uses
  %i.cz = icmp sgt i32 %.1.fr.i85, 7
  %i.da = shl i32 %.1.fr.i85, 13
  %i.db = trunc nuw nsw i64 %.116.i83 to i32
  %i.dc = add i32 %i.da, %i.db
  %i.dd = trunc i32 %i.dc to i16
  %spec.select35.i86 = select i1 %i.cz, i16 -1, i16 %i.dd
  br label %encode_comp_t.exit87

encode_comp_t.exit87:                             ; preds = %.thread30.i77, %bb.n
  %i.de = phi i16 [ %i.cq, %.thread30.i77 ], [ %spec.select35.i86, %bb.n ]
  %i.df = getelementptr i8, ptr %0, i64 228
  store i16 %i.de, ptr %i.df, align 4
  %i.dg = getelementptr i8, ptr %i.d, i64 976
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.di = udiv i64 %i.dh, 10000000                ; 2 uses
  %i.dj = icmp ugt i64 %i.dh, 81919999999
  br i1 %i.dj, label %.lr.ph.i89, label %.thread30.i88

.thread30.i88:                                    ; preds = %encode_comp_t.exit87
  %i.dk = trunc nuw nsw i64 %i.di to i16
  br label %encode_comp_t.exit98

.lr.ph.i89:                                       ; preds = %encode_comp_t.exit87, %.lr.ph.i89
  %.01422.i90 = phi i32 [ %i.dm, %.lr.ph.i89 ], [ 0, %encode_comp_t.exit87 ]
  %.01521.i91 = phi i64 [ %i.dl, %.lr.ph.i89 ], [ %i.di, %encode_comp_t.exit87 ] ; 3 uses
  %i.dl = lshr i64 %.01521.i91, 3                 ; 4 uses
  %i.dm = add nuw nsw i32 %.01422.i90, 1          ; 3 uses
  %i.dn = icmp samesign ugt i64 %.01521.i91, 65535
  br i1 %i.dn, label %.lr.ph.i89, label %bb.o, !llvm.loop !35

bb.o:                                             ; preds = %.lr.ph.i89
  %i.do = and i64 %.01521.i91, 4
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dq = add nuw nsw i64 %i.dl, 1
  %i.dr = icmp eq i64 %i.dl, 8191                 ; 2 uses
  %spec.select.i92 = select i1 %i.dr, i64 1024, i64 %i.dq
  %i.ds = zext i1 %i.dr to i32
  %spec.select20.i93 = add nuw i32 %i.dm, %i.ds
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.116.i94 = phi i64 [ %i.dl, %bb.o ], [ %spec.select.i92, %bb.p ]
  %.1.i95 = phi i32 [ %i.dm, %bb.o ], [ %spec.select20.i93, %bb.p ]
  %.1.fr.i96 = freeze i32 %.1.i95                 ; 2 uses
  %i.dt = icmp sgt i32 %.1.fr.i96, 7
  %i.du = shl i32 %.1.fr.i96, 13
  %i.dv = trunc nuw nsw i64 %.116.i94 to i32
  %i.dw = add i32 %i.du, %i.dv
  %i.dx = trunc i32 %i.dw to i16
  %spec.select35.i97 = select i1 %i.dt, i16 -1, i16 %i.dx
  br label %encode_comp_t.exit98

encode_comp_t.exit98:                             ; preds = %.thread30.i88, %bb.q
  %i.dy = phi i16 [ %i.dk, %.thread30.i88 ], [ %spec.select35.i97, %bb.q ]
  %i.dz = getelementptr i8, ptr %0, i64 230
  store i16 %i.dy, ptr %i.dz, align 2
  %i.ea = load i32, ptr %i.e, align 8
  %i.eb = trunc i32 %i.ea to i8
  store i8 %i.eb, ptr %i.f, align 8
  %i.ec = getelementptr i8, ptr %i.d, i64 960
  %i.ed = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, 8191
  br i1 %i.ee, label %.lr.ph.i100, label %.thread30.i99

.thread30.i99:                                    ; preds = %encode_comp_t.exit98
  %i.ef = trunc nuw nsw i64 %i.ed to i16
  br label %encode_comp_t.exit109

.lr.ph.i100:                                      ; preds = %encode_comp_t.exit98, %.lr.ph.i100
  %.01422.i101 = phi i32 [ %i.eh, %.lr.ph.i100 ], [ 0, %encode_comp_t.exit98 ]
  %.01521.i102 = phi i64 [ %i.eg, %.lr.ph.i100 ], [ %i.ed, %encode_comp_t.exit98 ] ; 3 uses
  %i.eg = lshr i64 %.01521.i102, 3                ; 4 uses
  %i.eh = add nuw nsw i32 %.01422.i101, 1         ; 3 uses
  %i.ei = icmp ugt i64 %.01521.i102, 65535
  br i1 %i.ei, label %.lr.ph.i100, label %bb.r, !llvm.loop !35

bb.r:                                             ; preds = %.lr.ph.i100
  %i.ej = and i64 %.01521.i102, 4
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = add nuw nsw i64 %i.eg, 1
  %i.em = icmp eq i64 %i.eg, 8191                 ; 2 uses
  %spec.select.i103 = select i1 %i.em, i64 1024, i64 %i.el
  %i.en = zext i1 %i.em to i32
  %spec.select20.i104 = add nuw i32 %i.eh, %i.en
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.116.i105 = phi i64 [ %i.eg, %bb.r ], [ %spec.select.i103, %bb.s ]
  %.1.i106 = phi i32 [ %i.eh, %bb.r ], [ %spec.select20.i104, %bb.s ]
  %.1.fr.i107 = freeze i32 %.1.i106               ; 2 uses
  %i.eo = icmp sgt i32 %.1.fr.i107, 7
  %i.ep = shl i32 %.1.fr.i107, 13
  %i.eq = trunc nuw nsw i64 %.116.i105 to i32
  %i.er = add i32 %i.ep, %i.eq
end_hunk_1
