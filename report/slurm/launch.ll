Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/launch?download=true
inline.NumInlined: 25
inline.NumDeleted: 15
begin_hunk_0
@error_exit = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open stdout file: %m\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"stdout and stderr sharing a file\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not open stderr file: %m\00", align 1
@MPIR_being_debugged = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"launch.c\00", align 1
@__func__.launch_setup_srun_opt = private unnamed_addr constant [22 x i8] c"launch_setup_srun_opt\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"configuration file not specified\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"launch_create_job_step: no job given\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Minimum node count > maximum node count (%d > %d)\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Minimum node count > allocated node count (%d > %d)\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"requesting job %u_%u, user %u, nodes %u including (%s)\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"requesting job %u, user %u, nodes %u including (%s)\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"cpus %u, tasks %u, name %s, relative %u\00", align 1
@srun_destroy_sig_lock = external global %union.pthread_mutex_t, align 8
@.str.12 = private unnamed_addr constant [29 x i8] c"%s: pthread_mutex_lock(): %m\00", align 1
@__func__.launch_create_job_step = private unnamed_addr constant [23 x i8] c"launch_create_job_step\00", align 1
@srun_destroy_sig = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"%s: pthread_mutex_unlock(): %m\00", align 1
@srun_begin_time = external local_unnamed_addr global i64, align 8
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str.14 = private unnamed_addr constant [37 x i8] c"Unable to create step for job %u: %m\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"Resources allocated for job %u and being configured, please wait\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"Job %u step creation temporarily disabled, retrying (%s)\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Step completed in JobId=%u, retrying\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Job %u step creation still disabled, retrying (%s)\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Cancelled pending step for job %u\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Submitted step %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Step created for %ps\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"No step_layout given for pending step for job %u\00", align 1
@totalview_jobid = external global ptr, align 8
@.str.24 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@totalview_stepid = external global ptr, align 8
@het_job_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@__func__.launch_step_launch = private unnamed_addr constant [19 x i8] c"launch_step_launch\00", align 1
@local_job_list = internal unnamed_addr global ptr null, align 8
@local_global_rc = internal unnamed_addr global ptr null, align 8
@launch_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@opt_save = internal unnamed_addr global ptr null, align 8
@.str.25 = private unnamed_addr constant [30 x i8] c"Application launch failed: %m\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Application launch add failed: %m\00", align 1
@MPIR_debug_state = external global i32, align 4
@.str.27 = private unnamed_addr constant [45 x i8] c"%ps aborted before step completely launched.\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"%s: local_job_list does not exist yet\00", align 1
@__func__.launch_fwd_signal = private unnamed_addr constant [18 x i8] c"launch_fwd_signal\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"Could not open multi_prog config file %s\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"Could not stat multi_prog config file %s\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"Multi_prog config file %s is too large\00", align 1
@__func__._load_multi = private unnamed_addr constant [12 x i8] c"_load_multi\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"Error reading multi_prog config file %s\00", align 1
@__func__._create_job_step_create_request = private unnamed_addr constant [32 x i8] c"_create_job_step_create_request\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"gres/gpu:%d\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"Ignoring --whole since --cpus-per-gpu used\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c"Implicitly setting --exact, because --cpus-per-gpu given.\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"interactive step launch request\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"external launcher step request\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"gres/gpu:%lu\00", align 1
@opt = external local_unnamed_addr global %struct.slurm_opt_t, align 8
@.str.39 = private unnamed_addr constant [16 x i8] c"SLURM_STEP_GRES\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Ignoring --whole since -c/--cpus-per-task used\00", align 1
@.str.41 = private unnamed_addr constant [62 x i8] c"Implicitly setting --exact, because -c/--cpus-per-task given.\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"gres/gpu:\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@sropt = external local_unnamed_addr global %struct.srun_opt_t, align 8
@.str.44 = private unnamed_addr constant [19 x i8] c"gres/gpu:single:%d\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"%scpu:%u\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"gres/gpu\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"CpuBindType=%s\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"%s: job env is NULL\00", align 1
@__func__._build_user_env = private unnamed_addr constant [16 x i8] c"_build_user_env\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"Node %s, %d tasks started\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"No tasks started on node %s: %s\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"%s: Could not locate task state for %ps\00", align 1
@__func__._task_start = private unnamed_addr constant [12 x i8] c"_task_start\00", align 1
@MPIR_proctable_size = external local_unnamed_addr global i32, align 4
@.str.58 = private unnamed_addr constant [33 x i8] c"%s: task_id too large (%u >= %d)\00", align 1
@MPIR_proctable = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [47 x i8] c"%s: Could not update task state for task ID %u\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"mpir_use_nodeaddr\00", align 1
@_task_finish.reduce_task_exit_msg = internal unnamed_addr global i32 -1, align 4
@_task_finish.msg_printed = internal unnamed_addr global i1 false, align 4
@_task_finish.oom_printed = internal unnamed_addr global i1 false, align 4
@_task_finish.last_task_exit_rc = internal unnamed_addr global i32 0, align 4
@.str.61 = private unnamed_addr constant [44 x i8] c"Ignoring exit message from unrecognized %ps\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"SLURM_SRUN_REDUCE_TASK_EXIT_MSG\00", align 1
@.str.63 = private unnamed_addr constant [66 x i8] c"Received task exit notification for %d %s of %ps (status=0x%04x).\00", align 1
@__func__._task_finish = private unnamed_addr constant [13 x i8] c"_task_finish\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"%s: %s %s: Out Of Memory\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"%s: %s %s: Completed\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"%s: %s %s: Exited with exit code %d\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"%s: %s %s: %s%s\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"%s: Could not find task state for %ps\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@.str.72 = private unnamed_addr constant [37 x i8] c"bit_alloc: memory allocation failure\00", align 1
@__func__._task_array_to_string = private unnamed_addr constant [22 x i8] c"_task_array_to_string\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.74 = private unnamed_addr constant [41 x i8] c"Could not identify host name for task %u\00", align 1
@__func__._hostset_to_string = private unnamed_addr constant [19 x i8] c"_hostset_to_string\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"First task exited. Terminating job in %ds\00", align 1
@srun_max_timer_lock = external global %union.pthread_mutex_t, align 8
@__func__._setup_max_wait_timer = private unnamed_addr constant [22 x i8] c"_setup_max_wait_timer\00", align 1
@srun_max_timer = external local_unnamed_addr global i8, align 1
@_wait_all_het_job_comps_started.start_cnt = internal unnamed_addr global i32 0, align 4
@_wait_all_het_job_comps_started.total_cnt = internal unnamed_addr global i32 -1, align 4
@start_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@__func__._wait_all_het_job_comps_started = private unnamed_addr constant [32 x i8] c"_wait_all_het_job_comps_started\00", align 1
@start_cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@.str.77 = private unnamed_addr constant [39 x i8] c"%s:%d %s: pthread_cond_broadcast(): %m\00", align 1
@__func__._step_signal = private unnamed_addr constant [13 x i8] c"_step_signal\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"Terminating %ps\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @location_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @task_state_list, align 8  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @list_destroy(ptr noundef nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr @task_state_list, align 8
  ret i32 0
}

declare void @list_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @launch_get_slurm_step_layout(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.b, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define dso_local void @launch_set_stdio_fds(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 794
  %i.b = load i8, ptr %i.a, align 2
  switch i8 %i.b, label %bb.c [
    i8 1, label %bb.d
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @slurm_conf_lock() #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.e = load i16, ptr %i.d, align 8
  %.not = icmp eq i16 %i.e, 0
  %. = select i1 %.not, i32 1601, i32 1089
  tail call void @slurm_conf_unlock() #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.1 = phi i32 [ %., %bb.c ], [ 1601, %bb.b ], [ 1089, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %.not.i = icmp eq i32 %i.k, -1
  br i1 %.not.i, label %_is_local_file.exit, label %.thread75

_is_local_file.exit:                              ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, -3
  %narrow.i = icmp ult i32 %i.n, -2
  br i1 %narrow.i, label %bb.f, label %bb.k

.thread75:                                        ; preds = %bb.e, %bb.d
  store i32 0, ptr %1, align 4
  br label %bb.h

bb.f:                                             ; preds = %_is_local_file.exit
  %i.o = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.h, i32 noundef 0) #17 ; 2 uses
  store i32 %i.o, ptr %1, align 4
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str) #17 ; 0 uses
  %i.r = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.r) #18
  unreachable

bb.h:                                             ; preds = %bb.f, %.thread75
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not4.i = icmp eq ptr %i.aa, null
  br i1 %.not4.i, label %launch_get_slurm_step_layout.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %launch_get_slurm_step_layout.exit

launch_get_slurm_step_layout.exit:                ; preds = %bb.i, %bb.j
  %i.af = phi ptr [ %i.ae, %bb.j ], [ null, %bb.i ]
  %i.ag = load ptr, ptr %i.f, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = tail call i32 @slurm_step_layout_host_id(ptr noundef %i.af, i32 noundef %i.ai) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.aj, ptr %i.ak, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %launch_get_slurm_step_layout.exit, %_is_local_file.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread79, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %.not.i65 = icmp eq i32 %i.aq, -1
  br i1 %.not.i65, label %_is_local_file.exit68, label %.thread79

_is_local_file.exit68:                            ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add i32 %i.as, -3
  %narrow.i67 = icmp ult i32 %i.at, -2
  br i1 %narrow.i67, label %bb.m, label %.critedge

.thread79:                                        ; preds = %bb.l, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.au, align 4
  br label %bb.q

bb.m:                                             ; preds = %_is_local_file.exit68
  %i.av = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.an, i32 noundef %.1, i32 noundef 420) #17 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = tail call ptr @__errno_location() #19
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.al, align 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call i32 @mkdirpath(ptr noundef %i.bb, i32 noundef 493, i1 noundef zeroext false) #17 ; 0 uses
  %i.bd = load ptr, ptr %i.al, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.be, i32 noundef %.1, i32 noundef 420) #17 ; 2 uses
  store i32 %i.bf, ptr %i.aw, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = phi i32 [ %i.bf, %bb.n ], [ %i.av, %bb.m ]
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1) #17 ; 0 uses
  %i.bj = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.bj) #18
  unreachable

bb.q:                                             ; preds = %bb.o, %.thread79
  %i.bk = load ptr, ptr %i.al, align 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not59 = icmp eq ptr %i.bl, null
  br i1 %.not59, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not60 = icmp eq ptr %i.bo, null
  br i1 %.not60, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = tail call i32 @xstrcmp(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bo) #17
  %.not61 = icmp eq i32 %i.bp, 0
  br i1 %.not61, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call i32 @get_log_level() #17
  %i.br = icmp sgt i32 %i.bq, 6
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.2) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i32, ptr %i.bv, align 4
  br label %.sink.split

.critedge:                                        ; preds = %_is_local_file.exit68, %bb.r, %bb.q, %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.cc = load i32, ptr %i.cb, align 4
  %.not.i69 = icmp eq i32 %i.cc, -1
  br i1 %.not.i69, label %_is_local_file.exit72, label %.sink.split

_is_local_file.exit72:                            ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = add i32 %i.ce, -3
  %narrow.i71 = icmp ult i32 %i.cf, -2
  br i1 %narrow.i71, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_is_local_file.exit72
  %i.cg = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bz, i32 noundef %.1, i32 noundef 420) #17 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i32 %i.cg, ptr %i.ch, align 4
  %i.ci = tail call ptr @__errno_location() #19
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp eq i32 %i.cj, 2
  br i1 %i.ck, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cl = load ptr, ptr %i.bx, align 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call i32 @mkdirpath(ptr noundef %i.cm, i32 noundef 493, i1 noundef zeroext false) #17 ; 0 uses
  %i.co = load ptr, ptr %i.bx, align 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.cp, i32 noundef %.1, i32 noundef 420) #17 ; 2 uses
  store i32 %i.cq, ptr %i.ch, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cr = phi i32 [ %i.cq, %bb.y ], [ %i.cg, %bb.x ]
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ct = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3) #17 ; 0 uses
  %i.cu = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.cu) #18
  unreachable

.sink.split:                                      ; preds = %.critedge, %bb.w, %bb.v
  %.sink90 = phi i64 [ 28, %bb.v ], [ 24, %bb.w ], [ 24, %.critedge ]
  %.sink = phi i32 [ %i.bw, %bb.v ], [ 2, %bb.w ], [ 2, %.critedge ]
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.sink90
  store i32 %.sink, ptr %i.cv, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %_is_local_file.exit72, %bb.z
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @slurm_conf_lock() local_unnamed_addr #1

declare void @slurm_conf_unlock() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #4

declare i32 @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare i32 @slurm_step_layout_host_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare i32 @mkdirpath(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @get_log_level() local_unnamed_addr #1

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @launch_step_retry_errno(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.c = icmp eq <4 x i32> %i.b, <i32 11, i32 2037, i32 2016, i32 2059>
  %i.d = icmp eq i32 %0, 5004
  %i.e = bitcast <4 x i1> %i.c to i4
  %i.f = icmp ne i4 %i.e, 0
  %op.rdx = or i1 %i.f, %i.d
  ret i1 %op.rdx
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @launch_setup_srun_opt(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) initializes((72, 80)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i8, ptr %i.c, align 4, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr @MPIR_being_debugged, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 2
  %i.i = sext i32 %i.h to i64
  %i.j = tail call ptr @slurm_xcalloc(i64 noundef %i.i, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.4, i32 noundef 1243, ptr noundef nonnull @__func__.launch_setup_srun_opt) #17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.j, ptr %i.k, align 8
  ret i32 0
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @launch_handle_multi_prog_verify(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.5) #17 ; 0 uses
  %i.j = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.j) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.m, i32 noundef 0) #17 ; 5 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.29, ptr noundef %i.p) #17 ; 0 uses
  %i.r = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.r) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = call i32 @fstat(i32 noundef %i.n, ptr noundef nonnull %2) #17
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.30, ptr noundef %i.u) #17 ; 0 uses
  %i.w = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.w) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %i.z = icmp sgt i64 %i.y, 536870912
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.l, align 8
  %i.ab = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.31, ptr noundef %i.aa) #17 ; 0 uses
  %i.ac = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.ac) #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = add nsw i64 %i.y, 1
  %i.ae = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.ad, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.4, i32 noundef 474, ptr noundef nonnull @__func__._load_multi) #17 ; 3 uses
  %i.af = tail call i64 @read(i32 noundef %i.n, ptr noundef %i.ae, i64 noundef %i.y) #17
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %.not27.i = icmp eq i32 %i.ag, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i32 %.02328.i, %i.an        ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai
  %i.ak = sub nsw i64 %i.y, %i.ai
  %i.al = tail call i64 @read(i32 noundef %i.n, ptr noundef nonnull %i.aj, i64 noundef %i.ak) #17
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !12

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.an = phi i32 [ %i.am, %bb.k ], [ %i.ag, %bb.j ] ; 2 uses
  %.02328.i = phi i32 [ %i.ah, %bb.k ], [ 0, %bb.j ]
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.k
end_hunk_0
begin_hunk_1_@_task_finish:bb.a
  %i.ce = icmp slt i64 %i.cd, 0
  %i.cf = icmp ult i64 %.0.i.i, 32768
  %i.cg = and i1 %i.cf, %i.ce
  br i1 %i.cg, label %bb.t, label %bb.u, !llvm.loop !24

bb.u:                                             ; preds = %bb.t
  %i.ch = icmp ugt i64 %.0.i.i, 32767
  %.pre.i.i = load ptr, ptr %i.a, align 8         ; 2 uses
  br i1 %i.ch, label %bb.v, label %_hostset_to_string.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 65534
  store i16 43, ptr %i.ci, align 1
  br label %_hostset_to_string.exit.i

_hostset_to_string.exit.i:                        ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @hostset_destroy(ptr noundef %i.bt) #17
  br label %_task_ids_to_host_list.exit

_task_ids_to_host_list.exit:                      ; preds = %launch_get_slurm_step_layout.exit.thread.i, %bb.p, %_hostset_to_string.exit.i
  %.024.i = phi ptr [ %i.bm, %launch_get_slurm_step_layout.exit.thread.i ], [ %i.bs, %bb.p ], [ %.pre.i.i, %_hostset_to_string.exit.i ] ; 2 uses
  store ptr %.024.i, ptr %i.d, align 8
  br label %.critedge97

.critedge97:                                      ; preds = %bb.j, %.split, %bb.m, %_task_ids_to_host_list.exit
  %i.cj = phi ptr [ null, %.split ], [ null, %bb.j ], [ null, %bb.m ], [ %i.at, %_task_ids_to_host_list.exit ] ; 5 uses
  %i.ck = phi ptr [ null, %.split ], [ null, %bb.j ], [ null, %bb.m ], [ %.024.i, %_task_ids_to_host_list.exit ] ; 5 uses
  %i.cl = call i32 @pthread_mutex_lock(ptr noundef nonnull @launch_lock) #17 ; 2 uses
  %.not80 = icmp eq i32 %i.cl, 0
  br i1 %.not80, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge97
  %i.cm = tail call ptr @__errno_location() #19
  store i32 %i.cl, ptr %i.cm, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._task_finish) #18
  unreachable

bb.x:                                             ; preds = %.critedge97
  %i.cn = load i32, ptr %i.u, align 8             ; 5 uses
  %i.co = and i32 %i.cn, 255
  %i.cp = icmp eq i32 %i.co, 253
  br i1 %i.cp, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %.b77 = load i1, ptr @_task_finish.oom_printed, align 4
  br i1 %.b77, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.64, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj) #17 ; 0 uses
  %.pre = load i32, ptr %i.u, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cr = phi i32 [ %.pre, %bb.z ], [ %i.cn, %bb.y ]
  store i1 true, ptr @_task_finish.oom_printed, align 4
  %i.cs = load ptr, ptr @local_global_rc, align 8
  store i32 %i.cr, ptr %i.cs, align 4
  br label %bb.av

bb.ab:                                            ; preds = %bb.x
  %i.ct = and i32 %i.cn, 127                      ; 2 uses
  switch i32 %i.ct, label %bb.am [
    i32 0, label %bb.ac
    i32 127, label %bb.av
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cu = lshr i32 %i.cn, 8
  %i.cv = and i32 %i.cu, 255                      ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cx = call i32 @get_log_level() #17
  %i.cy = icmp sgt i32 %i.cx, 3
  br i1 %i.cy, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj) #17
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.cz = load i32, ptr @_task_finish.reduce_task_exit_msg, align 4
  %i.da = icmp ne i32 %i.cz, 0
  %.b75 = load i1, ptr @_task_finish.msg_printed, align 4
  %or.cond3.not = select i1 %i.da, i1 %.b75, i1 false
  %i.db = load i32, ptr @_task_finish.last_task_exit_rc, align 4
  %.not88 = icmp eq i32 %i.cn, %i.db
  %or.cond98 = select i1 %or.cond3.not, i1 %.not88, i1 false
  br i1 %or.cond98, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.66, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj, i32 noundef %i.cv) #17 ; 0 uses
  store i1 true, ptr @_task_finish.msg_printed, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ad, %bb.ae, %bb.ag
  %.0 = phi i32 [ 0, %bb.af ], [ 0, %bb.ag ], [ 1, %bb.ae ], [ 1, %bb.ad ] ; 4 uses
  %i.dd = load ptr, ptr @local_global_rc, align 8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4            ; 3 uses
  %i.df = and i32 %i.de, 255
  %.not89 = icmp eq i32 %i.df, 253
  br i1 %.not89, label %bb.av, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = and i32 %i.de, 127                      ; 2 uses
  %i.dh = shl nuw nsw i32 %i.dg, 24
  %sext90 = add nuw i32 %i.dh, 16777216
  %i.di = icmp sgt i32 %sext90, 33554431
  br i1 %i.di, label %bb.av, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = icmp eq i32 %i.dg, 0
  br i1 %i.dj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dk = lshr i32 %i.de, 8
  %i.dl = and i32 %i.dk, 255
  %i.dm = icmp samesign ugt i32 %i.cv, %i.dl
  br i1 %i.dm, label %bb.al, label %bb.av

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dn = load i32, ptr %i.u, align 8
  store i32 %i.dn, ptr %i.dd, align 4
  br label %bb.av

bb.am:                                            ; preds = %bb.ab
  %i.do = call ptr @strsignal(i32 noundef %i.ct) #17 ; 2 uses
  %i.dp = load i32, ptr %i.u, align 8
  %i.dq = and i32 %i.dp, 128
  %.not82 = icmp eq i32 %i.dq, 0
  %spec.store.select = select i1 %.not82, ptr @.str.47, ptr @.str.67 ; 2 uses
  %i.dr = call i32 @srun_job_state(ptr noundef nonnull %i.i) #17
  %i.ds = icmp ugt i32 %i.dr, 3
  br i1 %i.ds, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dt = call i32 @get_log_level() #17
  %i.du = icmp sgt i32 %i.dt, 3
  br i1 %i.du, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj, ptr noundef %i.do, ptr noundef nonnull %spec.store.select) #17
  br label %bb.as

bb.ap:                                            ; preds = %bb.am
  %i.dv = load i32, ptr @_task_finish.reduce_task_exit_msg, align 4
  %i.dw = icmp ne i32 %i.dv, 0
  %.b = load i1, ptr @_task_finish.msg_printed, align 4
  %or.cond5.not = select i1 %i.dw, i1 %.b, i1 false
  br i1 %or.cond5.not, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dx = load i32, ptr %i.u, align 8
  %i.dy = load i32, ptr @_task_finish.last_task_exit_rc, align 4
  %.not84 = icmp eq i32 %i.dx, %i.dy
  br i1 %.not84, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.68, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj, ptr noundef %i.do, ptr noundef nonnull %spec.store.select) #17 ; 0 uses
  store i1 true, ptr @_task_finish.msg_printed, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.an, %bb.ao
  %i.ea = load i32, ptr %i.u, align 8             ; 2 uses
  %i.eb = load ptr, ptr @local_global_rc, align 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ed = and i32 %i.ec, 255
  %.not85 = icmp eq i32 %i.ed, 253
  br i1 %.not85, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = and i32 %i.ea, 127
  %i.ef = and i32 %i.ec, 127                      ; 2 uses
  %i.eg = shl nuw nsw i32 %i.ef, 24
  %sext86 = add nuw i32 %i.eg, 16777216
  %i.eh = icmp slt i32 %sext86, 33554432
  %i.ei = icmp samesign ugt i32 %i.ee, %i.ef
  %or.cond99 = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond99, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 %i.ea, ptr %i.eb, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.ab, %bb.as, %bb.au, %bb.at, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.aa
  %.1 = phi i32 [ 0, %bb.aa ], [ %.0, %bb.ai ], [ %.0, %bb.al ], [ %.0, %bb.ak ], [ %.0, %bb.ah ], [ 0, %bb.ab ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.as ]
  call void @slurm_xfree(ptr noundef nonnull %i.c) #17
  call void @slurm_xfree(ptr noundef nonnull %i.d) #17
  %i.ej = load ptr, ptr @task_state_list, align 8
  %i.ek = call ptr @task_state_find(ptr noundef nonnull %i.g, ptr noundef %i.ej) #17 ; 2 uses
  %.not91 = icmp eq ptr %i.ek, null
  br i1 %.not91, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.el = load i32, ptr %0, align 8               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  %.not92.not = icmp eq i32 %.1, 0
  %1 = zext i1 %.not92.not to i32
  %2 = or disjoint i32 %1, 2
  %.not8.i = icmp eq i32 %i.el, 0
  br i1 %.not8.i, label %_update_task_exit_state.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aw
  %wide.trip.count.i110 = zext i32 %i.el to i64
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %.lr.ph.i111, %.lr.ph.preheader.i
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i113, %.lr.ph.i111 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i112
  %i.ep = load i32, ptr %i.eo, align 4
  call void @task_state_update(ptr noundef nonnull %i.ek, i32 noundef %i.ep, i32 noundef %2) #17
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i110
  br i1 %exitcond.not.i114, label %_update_task_exit_state.exit, label %.lr.ph.i111, !llvm.loop !25

bb.ax:                                            ; preds = %bb.av
  %i.eq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__._task_finish, ptr noundef nonnull %i.g) #17 ; 0 uses
  br label %_update_task_exit_state.exit

_update_task_exit_state.exit:                     ; preds = %.lr.ph.i111, %bb.aw, %bb.ax
  %i.er = load ptr, ptr @task_state_list, align 8
  %i.es = call zeroext i1 @task_state_first_abnormal_exit(ptr noundef %i.er) #17
  br i1 %i.es, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %_update_task_exit_state.exit
  %i.et = load ptr, ptr @opt_save, align 8        ; 2 uses
  %.not.i116 = icmp eq ptr %i.et, null
  br i1 %.not.i116, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 116
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -2
  br i1 %i.ey, label %bb.ba, label %_kill_on_bad_exit.exit

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ez = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 636), align 4
  %i.fa = zext i16 %i.ez to i32
  br label %_kill_on_bad_exit.exit

_kill_on_bad_exit.exit:                           ; preds = %bb.az, %bb.ba
  %.0.i117 = phi i32 [ %i.fa, %bb.ba ], [ %i.ex, %bb.az ]
  %.not93 = icmp eq i32 %.0.i117, 0
  br i1 %.not93, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_kill_on_bad_exit.exit
  %i.fb = call fastcc i32 @_step_signal(i32 noundef 991) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_kill_on_bad_exit.exit, %_update_task_exit_state.exit
  %i.fc = load ptr, ptr @task_state_list, align 8
  %i.fd = call zeroext i1 @task_state_first_exit(ptr noundef %i.fc) #17
  %i.fe = load ptr, ptr @opt_save, align 8        ; 2 uses
  %i.ff = icmp ne ptr %i.fe, null
  %or.cond7 = select i1 %i.fd, i1 %i.ff, i1 false
  br i1 %or.cond7, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  %i.fj = load i32, ptr %i.fi, align 8
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %i.fl = call i32 @get_log_level() #17
  %i.fm = icmp sgt i32 %i.fl, 3
  br i1 %i.fm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fn = load ptr, ptr @opt_save, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 128
  %i.fr = load i32, ptr %i.fq, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.76, i32 noundef %i.fr) #17
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.fs = call i32 @pthread_mutex_lock(ptr noundef nonnull @srun_max_timer_lock) #17 ; 2 uses
  %.not.i118 = icmp eq i32 %i.fs, 0
  br i1 %.not.i118, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ft = tail call ptr @__errno_location() #19
  store i32 %i.fs, ptr %i.ft, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._setup_max_wait_timer) #18
  unreachable

bb.bi:                                            ; preds = %bb.bg
  store i8 1, ptr @srun_max_timer, align 1
  %i.fu = call i32 @pthread_mutex_unlock(ptr noundef nonnull @srun_max_timer_lock) #17 ; 2 uses
  %.not5.i = icmp eq i32 %i.fu, 0
  br i1 %.not5.i, label %_setup_max_wait_timer.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fv = tail call ptr @__errno_location() #19
  store i32 %i.fu, ptr %i.fv, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__._setup_max_wait_timer) #18
  unreachable

_setup_max_wait_timer.exit:                       ; preds = %bb.bi
  %i.fw = load ptr, ptr @opt_save, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 128
  %i.ga = load i32, ptr %i.fz, align 8
  %i.gb = call i32 @alarm(i32 noundef %i.ga) #17  ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %_setup_max_wait_timer.exit, %bb.bd, %bb.bc
  %i.gc = load i32, ptr %i.u, align 8
  store i32 %i.gc, ptr @_task_finish.last_task_exit_rc, align 4
  %i.gd = call i32 @pthread_mutex_unlock(ptr noundef nonnull @launch_lock) #17 ; 2 uses
  %.not94 = icmp eq i32 %i.gd, 0
  br i1 %.not94, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ge = tail call ptr @__errno_location() #19
  store i32 %i.gd, ptr %i.ge, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__._task_finish) #18
  unreachable

bb.bm:                                            ; preds = %bb.bk, %_find_srun_job.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret void
}

declare void @update_job_state(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slurm_step_launch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @slurm_step_launch_abort(ptr noundef) local_unnamed_addr #1

declare void @slurm_step_launch_wait_finish(ptr noundef) local_unnamed_addr #1

declare i32 @slurm_step_launch_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_step_launch_wait_start(ptr noundef) local_unnamed_addr #1

declare i32 @mpir_set_multi_name(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @mpir_set_executable_names(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @mpir_dump_proctable() local_unnamed_addr #1

declare void @MPIR_Breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @launch_step_terminate() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_step_signal(i32 noundef 9)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_step_signal(i32 noundef range(i32 9, 992) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @local_job_list, align 8   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @get_log_level() #17
  %i.c = icmp sgt i32 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__._step_signal) #17
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.d = tail call ptr @list_iterator_create(ptr noundef nonnull %i.a) #17 ; 3 uses
  %i.e = tail call ptr @list_next(ptr noundef %i.d) #17 ; 2 uses
  %.not1214 = icmp eq ptr %i.e, null
  br i1 %.not1214, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.f = trunc nuw nsw i32 %0 to i16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.g = phi ptr [ %i.e, %.lr.ph ], [ %i.k, %bb.g ] ; 2 uses
  %.015 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.g ]
  %i.h = tail call i32 @get_log_level() #17
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.g) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = tail call i32 @slurm_kill_job_step(ptr noundef nonnull %i.g, i16 noundef zeroext %i.f, i16 noundef zeroext 0) #17 ; 2 uses
  %.not13 = icmp eq i32 %i.j, 0
  %spec.select = select i1 %.not13, i32 %.015, i32 %i.j ; 2 uses
  %i.k = tail call ptr @list_next(ptr noundef %i.d) #17 ; 2 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %._crit_edge, label %bb.e, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %spec.select, %bb.g ]
  tail call void @list_iterator_destroy(ptr noundef %i.d) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  %.08 = phi i32 [ %.0.lcssa, %._crit_edge ], [ -1, %bb.c ], [ -1, %bb.b ]
end_hunk_1
