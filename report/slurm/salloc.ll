Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/salloc?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
begin_hunk_0
@.str.14 = private unnamed_addr constant [53 x i8] c"Interrupted by signal. Allocation request rescinded.\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Unable to allocate resources: %m\00", align 1
@immediate_exit = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"Job submit/allocate failed: %m\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Granted job allocation %u\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"HETJOB: Hetjob ID %u+%u (%pI) on nodes %s\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"Job component count mismatch, submit/response count mismatch (%d != %d)\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"SLURM_PACK_SIZE\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"SLURM_HET_SIZE\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"SLURM_NTASKS\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"SLURM_NPROCS\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"SLURM_CLUSTER_NAME\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"SLURM_STEPMGR\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"%s:%d %s: pthread_cond_broadcast(): %m\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"salloc.c\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"Allocation was revoked for %pI before command could be run\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Unable to clean up allocation for %pI: %m\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"waitpid for %s failed: %m\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Relinquishing job allocation %u\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"Unable to clean up job allocation %pI: %m\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"Command \22%s\22 was terminated by signal %d\00", align 1
@_proc_alloc.elem = internal unnamed_addr global i32 0, align 4
@.str.36 = private unnamed_addr constant [22 x i8] c"SLURM_WORKING_CLUSTER\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"%s:[%s]:%d:%d\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"%s:%s:%d:%d\00", align 1
@__func__._proc_alloc = private unnamed_addr constant [12 x i8] c"_proc_alloc\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"Something is wrong with the boot of the nodes.\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"Waiting for resource configuration\00", align 1
@.str.41 = private unnamed_addr constant [55 x i8] c"Waited %f sec and still waiting: next sleep for %f sec\00", align 1
@__func__._wait_nodes_ready = private unnamed_addr constant [18 x i8] c"_wait_nodes_ready\00", align 1
@allocation_revoked = internal unnamed_addr global i1 false, align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Nodes %s are ready for job\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"Job allocation %u has been revoked\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Nodes %s are still not ready\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"SLURM_EXIT_ERROR\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"SLURM_EXIT_ERROR has zero value\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"SLURM_EXIT_IMMEDIATE\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"SLURM_EXIT_IMMEDIATE has zero value\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"SLURM_SPANK_%s\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"unable to set %s in environment\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [20 x i8] c"%s: fork failed: %m\00", align 1
@__func__._fork_command = private unnamed_addr constant [14 x i8] c"_fork_command\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"%s: Unable to find command \22%s\22\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"%s: Unable to exec command \22%s\22: %m\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"Pending job allocation %u\00", align 1
@__func__._pending_callback = private unnamed_addr constant [18 x i8] c"_pending_callback\00", align 1
@_cli_filter_post_submit_run = internal unnamed_addr global i1 false, align 1
@__func__._job_complete_handler = private unnamed_addr constant [22 x i8] c"_job_complete_handler\00", align 1
@.str.56 = private unnamed_addr constant [52 x i8] c"Ignoring job_complete for job %u because we are %pI\00", align 1
@last_timeout = internal unnamed_addr global i64 0, align 8
@.str.57 = private unnamed_addr constant [72 x i8] c"Job %u has exceeded its time limit and its allocation has been revoked.\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"Job allocation %u has been revoked.\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Sending signal %d to command \22%s\22, pid %d\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"%ps is finished.\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"job has been suspended\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"job has been resumed\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"Job allocation time limit to be reached at %s\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"Node failure on %s\00", align 1
@switch.table.main = private unnamed_addr constant [9 x i8] c"\00\00\00\01\01\01\01\01\00", align 4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 256) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.log_options_t, align 8      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %3 = alloca %struct.slurm_allocation_callbacks_t, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) @__const.main.logopt, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4
  %i.e = tail call i32 @getpid() #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  tail call void @slurm_init(ptr noundef null) #12
  %i.f = load ptr, ptr %1, align 8
  %i.g = tail call ptr @xbasename(ptr noundef %i.f) #12
  %i.h = tail call i32 @log_init(ptr noundef %i.g, ptr noundef nonnull byval(%struct.log_options_t) align 8 @__const.main.logopt, i32 noundef 0, ptr noundef null) #12 ; 0 uses
  %i.i = tail call i32 @cli_filter_init() #12
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.1) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @conmgr_init(i32 noundef 0, i32 noundef 3, i32 noundef 0) #12
  %i.j = tail call i32 @conmgr_run(i1 noundef zeroext false) #12 ; 0 uses
  tail call void @salloc_sig_init() #12
  %i.k = load ptr, ptr %1, align 8
  store ptr %i.k, ptr @argvzero, align 8
  %i.l = tail call ptr @getenv(ptr noundef nonnull @.str.45) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.l, ptr noundef null, i32 noundef 10) #12, !inline_history !11
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.46) #12 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.n, ptr @error_exit, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.q = tail call ptr @getenv(ptr noundef nonnull @.str.47) #12 ; 2 uses
  %.not8.i = icmp eq ptr %i.q, null
  br i1 %.not8.i, label %_set_exit_code.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.q, ptr noundef null, i32 noundef 10) #12, !inline_history !11
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.48) #12 ; 0 uses
  br label %_set_exit_code.exit

bb.j:                                             ; preds = %bb.h
  store i32 %i.s, ptr @immediate_exit, align 4
  br label %_set_exit_code.exit

_set_exit_code.exit:                              ; preds = %bb.g, %bb.i, %bb.j
  %i.v = tail call i32 @spank_init_allocator() #12
  %.not336 = icmp eq i32 %i.v, 0
  br i1 %.not336, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_set_exit_code.exit
  %i.w = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.x = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.x) #13
  unreachable

bb.l:                                             ; preds = %_set_exit_code.exit
  %i.y = tail call i32 @atexit(ptr noundef nonnull @spank_fini) #12
  %.not337 = icmp eq i32 %i.y, 0
  br i1 %.not337, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3) #12 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.am
  %.0239474 = phi ptr [ %1, %bb.n ], [ %.1240, %bb.am ] ; 5 uses
  %.0241473 = phi i32 [ 0, %bb.n ], [ %i.ch, %bb.am ] ; 4 uses
  %.0242472 = phi i32 [ %0, %bb.n ], [ %.1243, %bb.am ] ; 5 uses
  %.0265471 = phi ptr [ null, %bb.n ], [ %.1266, %bb.am ] ; 2 uses
  %.0267470 = phi ptr [ null, %bb.n ], [ %spec.select, %bb.am ] ; 2 uses
  %.0269469 = phi ptr [ null, %bb.n ], [ %i.bz, %bb.am ] ; 2 uses
  store i32 -1, ptr %i.d, align 4
  %i.ab = call i32 @initialize_and_process_args(i32 noundef %.0242472, ptr noundef %.0239474, ptr noundef nonnull %i.d, i32 noundef %.0241473) #12
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ad = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4) #12 ; 0 uses
  %i.ae = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.ae) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.af = load i32, ptr %i.d, align 4             ; 3 uses
  %i.ag = icmp sgt i32 %i.af, -1
  %i.ah = icmp slt i32 %i.af, %.0242472
  %or.cond418 = and i1 %i.ag, %i.ah
  br i1 %or.cond418, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0239474, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call i32 @xstrcmp(ptr noundef %i.ak, ptr noundef nonnull @.str.5) #12
  %.not411.a = icmp eq i32 %i.al, 0
  br i1 %.not411.a, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.am = load i32, ptr %i.d, align 4             ; 2 uses
  %i.an = sub nsw i32 %.0242472, %i.am
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0239474, i64 %i.ao
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.not338.not = phi i1 [ true, %bb.s ], [ false, %bb.r ], [ false, %bb.q ]
  %.1245 = phi i1 [ false, %bb.s ], [ true, %bb.r ], [ true, %bb.q ]
  %.1243 = phi i32 [ %i.an, %bb.s ], [ %.0242472, %bb.r ], [ %.0242472, %bb.q ]
  %.1240 = phi ptr [ %i.ap, %bb.s ], [ %.0239474, %bb.r ], [ %.0239474, %bb.q ]
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 364), align 4 ; 2 uses
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 360), align 8 ; 2 uses
  %i.at = icmp ne i32 %i.as, 0
  %or.cond = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.au = load i32, ptr %2, align 8
  %i.av = sub i32 %i.aq, %i.as
  %i.aw = add i32 %i.av, %i.au
  store i32 %i.aw, ptr %2, align 8
  store i8 1, ptr %i.aa, align 4
  %i.ax = call i32 @log_alter(ptr noundef nonnull byval(%struct.log_options_t) align 8 %2, i32 noundef 0, ptr noundef null) #12 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ay = call i32 @spank_init_post_opt() #12
  %.not412.a = icmp eq i32 %i.ay, 0
  br i1 %.not412.a, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.6) #12 ; 0 uses
  %i.ba = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.ba) #13
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 672), align 8
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i, label %_set_spank_env.exit

.lr.ph.i:                                         ; preds = %bb.x, %bb.z
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 664), align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call i32 (ptr, ...) @setenvfs(ptr noundef nonnull @.str.49, ptr noundef %i.bf) #12
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 664), align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.50, ptr noundef %i.bk) #12 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 672), align 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i, label %_set_spank_env.exit, !llvm.loop !12

_set_spank_env.exit:                              ; preds = %bb.z, %bb.x
  %i.bp = icmp eq i32 %.0241473, 0                ; 2 uses
  br i1 %i.bp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_set_spank_env.exit
  call void @set_submit_dir_env(ptr noundef nonnull @work_dir, i1 noundef zeroext false) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_set_spank_env.exit
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 112), align 8 ; 2 uses
  %.not413.a = icmp eq ptr %i.bq, null
  br i1 %.not413.a, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = call i32 @chdir(ptr noundef nonnull %i.bq) #12
  %.not414.a = icmp eq i32 %i.br, 0
  br i1 %.not414.a, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 112), align 8
  %i.bt = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %i.bs) #12 ; 0 uses
  %i.bu = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.bu) #13
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.bv = load ptr, ptr @work_dir, align 8        ; 2 uses
  %.not415.a = icmp eq ptr %i.bv, null
  br i1 %.not415.a, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.bv, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 112), align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.bw = icmp eq ptr %.0269469, null
  %i.bx = icmp ne ptr %.0265471, null
  %or.cond3 = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond3, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.by = call ptr @list_create(ptr noundef null) #12 ; 2 uses
  call void @list_append(ptr noundef %i.by, ptr noundef nonnull %.0269469) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1266 = phi ptr [ %.0265471, %bb.ag ], [ %i.by, %bb.ah ] ; 10 uses
  %i.bz = call ptr @slurm_opt_create_job_desc(ptr noundef nonnull @opt, i1 noundef zeroext true) #12 ; 18 uses
  %.not.i420.a = icmp eq ptr %i.bz, null
  br i1 %.not.i420.a, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ca = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.ca) #13
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cb = load i16, ptr getelementptr inbounds nuw (i8, ptr @saopt, i64 10), align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 764
  store i16 %i.cb, ptr %i.cc, align 4
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 72), align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store ptr %i.cd, ptr %i.ce, align 8
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 64), align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  store i32 %i.cf, ptr %i.cg, align 4
  %or.cond5 = and i1 %i.bp, %.1245
  %..0241473 = select i1 %or.cond5, i32 -1, i32 %.0241473
  call void @set_env_from_opts(ptr noundef nonnull @opt, ptr noundef nonnull %i.b, i32 noundef %..0241473) #12
  %.not416.a = icmp eq ptr %.1266, null           ; 6 uses
  br i1 %.not416.a, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @list_append(ptr noundef nonnull %.1266, ptr noundef nonnull %i.bz) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not417 = icmp eq ptr %.0267470, null
  %spec.select = select i1 %.not417, ptr %i.bz, ptr %.0267470 ; 2 uses
  %i.ch = add nuw nsw i32 %.0241473, 1            ; 2 uses
  br i1 %.not338.not, label %bb.o, label %bb.an, !llvm.loop !13

bb.an:                                            ; preds = %bb.am
  store i32 %i.ch, ptr @het_job_limit, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 448 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not.i421 = icmp eq ptr %i.cj, null
  br i1 %.not.i421, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 72), align 8
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.cl, null
  br i1 %.not14.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cm = call ptr @xbasename(ptr noundef nonnull %i.cl) #12
  %i.cn = call ptr @xstrdup(ptr noundef %i.cm) #12 ; 2 uses
  store ptr %i.cn, ptr %i.ci, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.co = phi ptr [ %i.cn, %bb.ap ], [ null, %bb.ao ], [ %i.cj, %bb.an ]
  br i1 %.not416.a, label %_match_job_name.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cp = call ptr @list_iterator_create(ptr noundef nonnull %.1266) #12 ; 3 uses
  %i.cq = call ptr @list_next(ptr noundef %i.cp) #12 ; 2 uses
  %.not1618.i = icmp eq ptr %i.cq, null
  br i1 %.not1618.i, label %._crit_edge.i, label %.lr.ph.i422

.lr.ph.i422:                                      ; preds = %bb.ar, %bb.at
  %i.cr = phi ptr [ %i.cv, %bb.at ], [ %i.cq, %bb.ar ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 448 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not17.i = icmp eq ptr %i.ct, null
  br i1 %.not17.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i422
  %i.cu = call ptr @xstrdup(ptr noundef %i.co) #12
  store ptr %i.cu, ptr %i.cs, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i422
  %i.cv = call ptr @list_next(ptr noundef %i.cp) #12 ; 2 uses
  %.not16.i = icmp eq ptr %i.cv, null
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i422, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.at, %bb.ar
  call void @list_iterator_destroy(ptr noundef %i.cp) #12
  br label %_match_job_name.exit

_match_job_name.exit:                             ; preds = %bb.aq, %._crit_edge.i
  %i.cw = call i32 @tcgetattr(i32 noundef 0, ptr noundef nonnull @saved_tty_attributes) #12
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.az, label %bb.au

bb.au:                                            ; preds = %_match_job_name.exit
  %i.cy = call i32 @tcgetpgrp(i32 noundef 0) #12
  %i.cz = icmp slt i32 %i.cy, 0
  %i.da = load i8, ptr getelementptr inbounds nuw (i8, ptr @saopt, i64 8), align 4, !range !19, !noundef !20
  %i.db = trunc nuw i8 %i.da to i1                ; 2 uses
  br i1 %i.cz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %i.db, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.9) #12 ; 0 uses
  %i.dd = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.dd) #13
  unreachable

bb.ax:                                            ; preds = %bb.au
  br i1 %i.db, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.de = call i32 @getpgrp() #12
  %i.df = call i32 @tcgetpgrp(i32 noundef 0) #12
  %i.dg = icmp eq i32 %i.de, %i.df
  br i1 %i.dg, label %.thread, label %bb.az

.thread:                                          ; preds = %bb.ay
  store i1 true, ptr @is_interactive, align 4
  br label %bb.ba

bb.az:                                            ; preds = %bb.av, %bb.ay, %bb.ax, %_match_job_name.exit
  %.b335.pr = load i1, ptr @is_interactive, align 4
  br i1 %.b335.pr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.thread, %bb.az
  %i.dh = call i32 @atexit(ptr noundef nonnull @_reset_input_mode) #12 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 96), align 8 ; 3 uses
  %.not339 = icmp eq ptr %i.di, null
  br i1 %.not339, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not416.a, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dj = call i32 @slurmdb_get_first_het_job_cluster(ptr noundef nonnull %.1266, ptr noundef nonnull %i.di, ptr noundef nonnull @working_cluster_rec) #12
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.dk = call i32 @slurmdb_get_first_avail_cluster(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.di, ptr noundef nonnull @working_cluster_rec) #12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0248 = phi i32 [ %i.dj, %bb.bd ], [ %i.dk, %bb.be ]
  %.not341 = icmp eq i32 %.0248, 0
  br i1 %.not341, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 96), align 8
  call void @print_db_notok(ptr noundef %i.dl, i1 noundef zeroext false) #12
  %i.dm = load i32, ptr @error_exit, align 4
  call void @exit(i32 noundef %i.dm) #13
  unreachable

bb.bh:                                            ; preds = %bb.bf, %bb.bb
  br i1 %.not416.a, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dn = call i32 @list_for_each(ptr noundef nonnull %.1266, ptr noundef nonnull @_set_cluster_name, ptr noundef null) #12 ; 0 uses
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 264), align 8
  %i.dp = call ptr @xstrdup(ptr noundef %i.do) #12
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bz, i64 480
  store ptr %i.dp, ptr %i.dq, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_timeout_handler, ptr %i.dr, align 8
  store ptr @_job_complete_handler, ptr %3, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_job_suspend_handler, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @_user_msg_handler, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_node_fail_handler, ptr %i.du, align 8
  %i.dv = load i8, ptr getelementptr inbounds nuw (i8, ptr @saopt, i64 8), align 4, !range !19, !noundef !20
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dx = getelementptr inbounds nuw i8, ptr %spec.select, i64 488 ; 2 uses
  %i.dy = call ptr @slurm_allocation_msg_thr_create(ptr noundef nonnull %i.dx, ptr noundef nonnull %3) #12 ; 2 uses
  br i1 %.not416.a, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dz = call i32 @list_for_each(ptr noundef nonnull %.1266, ptr noundef nonnull @_copy_other_port, ptr noundef nonnull %i.dx) #12 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bk
  %.0256 = phi ptr [ null, %bb.bk ], [ %i.dy, %bb.bm ], [ %i.dy, %bb.bl ] ; 4 uses
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 504), align 8
  %i.eb = call ptr @xstrdup(ptr noundef %i.ea) #12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bz, i64 144
  store ptr %i.eb, ptr %i.ec, align 8
  %i.ed = call i64 @time(ptr noundef null) #12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.by, %bb.bn
  %.0255 = phi i32 [ 0, %bb.bn ], [ %i.eu, %bb.by ] ; 4 uses
  br i1 %.not416.a, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i1 true, ptr @is_het_job, align 1
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 312), align 8
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load i32, ptr @salloc_sig_eventfd, align 4
  %i.eh = call ptr @slurm_allocate_het_job_blocking(ptr noundef nonnull %.1266, i64 noundef %i.ef, ptr noundef nonnull @_pending_callback, i32 noundef %i.eg) #12 ; 2 uses
  %.not344.a = icmp eq ptr %i.eh, null
  br i1 %.not344.a, label %bb.br, label %bb.bz

bb.bq:                                            ; preds = %bb.bo
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 312), align 8
  %i.ej = sext i32 %i.ei to i64
  %i.ek = load i32, ptr @salloc_sig_eventfd, align 4
  %i.el = call ptr @slurm_allocate_resources_blocking(ptr noundef nonnull %i.bz, i64 noundef %i.ej, ptr noundef nonnull @_pending_callback, i32 noundef %i.ek) #12 ; 2 uses
  %.not343 = icmp eq ptr %i.el, null
  br i1 %.not343, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.em = tail call ptr @__errno_location() #14
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %.not345 = icmp eq i32 %i.en, 2007
  br i1 %.not345, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eo = icmp ne i32 %i.en, 11
  %i.ep = icmp samesign ugt i32 %.0255, 9
  %or.cond7 = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond7, label %bb.bz, label %bb.bu

end_hunk_0
begin_hunk_1_@main:bb.a
  br i1 %.not394.a, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.kx = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.30, ptr noundef nonnull @my_job_id) #12 ; 0 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq
  %i.ky = call i32 @pthread_mutex_unlock(ptr noundef nonnull @my_job_id_lock) #12 ; 2 uses
  %.not395 = icmp eq i32 %i.ky, 0
  br i1 %.not395, label %bb.if, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.kz = tail call ptr @__errno_location() #14
  store i32 %i.ky, ptr %i.kz, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.ft:                                            ; preds = %bb.fi
  store i32 1, ptr @allocation_state, align 4
  %i.la = call i32 @pthread_cond_broadcast(ptr noundef nonnull @allocation_state_cond) #12 ; 2 uses
  %.not379 = icmp eq i32 %i.la, 0
  br i1 %.not379, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.lb = tail call ptr @__errno_location() #14
  store i32 %i.la, ptr %i.lb, align 4
  %i.lc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 574, ptr noundef nonnull @__func__.main) #12 ; 0 uses
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.ld = call i32 @pthread_mutex_unlock(ptr noundef nonnull @allocation_state_lock) #12 ; 2 uses
  %.not380 = icmp eq i32 %i.ld, 0
  br i1 %.not380, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.le = tail call ptr @__errno_location() #14
  store i32 %i.ld, ptr %i.le, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.fx:                                            ; preds = %bb.fv
  %.b334 = load i1, ptr @is_interactive, align 4
  br i1 %.b334, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.lf = call ptr @xsignal_ignore(i32 noundef 20) #12 ; 0 uses
  %i.lg = call ptr @xsignal_ignore(i32 noundef 21) #12 ; 0 uses
  %i.lh = call ptr @xsignal_ignore(i32 noundef 22) #12 ; 0 uses
  %i.li = call i32 @getpid() #12                  ; 4 uses
  %i.lj = call i32 @setpgid(i32 noundef %i.li, i32 noundef %i.li) #12 ; 0 uses
  %i.lk = call i32 @tcsetpgrp(i32 noundef 0, i32 noundef %i.li) #12 ; 0 uses
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  %.0254 = phi i32 [ %i.li, %bb.fy ], [ %i.e, %bb.fx ]
  %i.ll = call i32 @pthread_mutex_lock(ptr noundef nonnull @allocation_state_lock) #12 ; 2 uses
  %.not381 = icmp eq i32 %i.ll, 0
  br i1 %.not381, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.lm = tail call ptr @__errno_location() #14
  store i32 %i.ll, ptr %i.lm, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.ln = call i32 @pthread_mutex_lock(ptr noundef nonnull @command_pid_lock) #12 ; 2 uses
  %.not382 = icmp eq i32 %i.ln, 0
  br i1 %.not382, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.lo = tail call ptr @__errno_location() #14
  store i32 %i.ln, ptr %i.lo, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.gd:                                            ; preds = %bb.gb
  %i.lp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 72), align 8 ; 3 uses
  %i.lq = call i32 @fork() #12                    ; 3 uses
  %i.lr = icmp slt i32 %i.lq, 0
  br i1 %i.lr, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.ls = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__._fork_command) #12 ; 0 uses
  br label %_fork_command.exit

bb.gf:                                            ; preds = %bb.gd
  %i.lt = icmp eq i32 %i.lq, 0
  br i1 %i.lt, label %bb.gg, label %_fork_command.exit

bb.gg:                                            ; preds = %bb.gf
  %i.lu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 112), align 8 ; 2 uses
  %.not.i426 = icmp eq ptr %i.lu, null
  %i.lv = load ptr, ptr @work_dir, align 8
  %i.lw = select i1 %.not.i426, ptr %i.lv, ptr %i.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.lx = load ptr, ptr %i.lp, align 8
  %i.ly = call ptr @search_path(ptr noundef %i.lw, ptr noundef %i.lx, i1 noundef zeroext true, i32 noundef 1, i1 noundef zeroext true) #12 ; 4 uses
  store ptr %i.ly, ptr %i.a, align 8
  %.not6.i = icmp eq ptr %i.ly, null
  br i1 %.not6.i, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.lz = load ptr, ptr %i.lp, align 8
  %i.ma = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__._fork_command, ptr noundef %i.lz) #12 ; 0 uses
  %i.mb = load i32, ptr @error_exit, align 4
  call void @_exit(i32 noundef %i.mb) #13
  unreachable

bb.gi:                                            ; preds = %bb.gg
  %i.mc = call i32 @getpid() #12
  %i.md = call i32 @setpgid(i32 noundef %i.mc, i32 noundef 0) #12 ; 0 uses
  %i.me = call ptr @xsignal_default(i32 noundef 2) #12 ; 0 uses
  %i.mf = call ptr @xsignal_default(i32 noundef 3) #12 ; 0 uses
  %i.mg = call ptr @xsignal_default(i32 noundef 21) #12 ; 0 uses
  %i.mh = call ptr @xsignal_default(i32 noundef 22) #12 ; 0 uses
  %i.mi = call i32 @execvp(ptr noundef nonnull %i.ly, ptr noundef nonnull %i.lp) #12 ; 0 uses
  %i.mj = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__._fork_command, ptr noundef nonnull %i.ly) #12 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  %i.mk = load i32, ptr @error_exit, align 4
  call void @_exit(i32 noundef %i.mk) #13
  unreachable

_fork_command.exit:                               ; preds = %bb.ge, %bb.gf
  store i32 %i.lq, ptr @command_pid, align 4
  %i.ml = call i32 @pthread_mutex_unlock(ptr noundef nonnull @command_pid_lock) #12 ; 2 uses
  %.not383 = icmp eq i32 %i.ml, 0
  br i1 %.not383, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_fork_command.exit
  %i.mm = tail call ptr @__errno_location() #14
  store i32 %i.ml, ptr %i.mm, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.gk:                                            ; preds = %_fork_command.exit
  %i.mn = call i32 @pthread_cond_broadcast(ptr noundef nonnull @allocation_state_cond) #12 ; 2 uses
  %.not384 = icmp eq i32 %i.mn, 0
  br i1 %.not384, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.mo = tail call ptr @__errno_location() #14
  store i32 %i.mn, ptr %i.mo, align 4
  %i.mp = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 597, ptr noundef nonnull @__func__.main) #12 ; 0 uses
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.mq = call i32 @pthread_mutex_unlock(ptr noundef nonnull @allocation_state_lock) #12 ; 2 uses
  %.not385 = icmp eq i32 %i.mq, 0
  br i1 %.not385, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.mr = tail call ptr @__errno_location() #14
  store i32 %i.mq, ptr %i.mr, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.ms = load i32, ptr @command_pid, align 4     ; 3 uses
  %i.mt = icmp sgt i32 %i.ms, 0
  br i1 %i.mt, label %bb.gp, label %bb.gx

bb.gp:                                            ; preds = %bb.go
  %i.mu = call i32 @setpgid(i32 noundef %i.ms, i32 noundef %i.ms) #12 ; 0 uses
  %.b333 = load i1, ptr @is_interactive, align 4
  br i1 %.b333, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.mv = load i32, ptr @command_pid, align 4
  %i.mw = call i32 @tcsetpgrp(i32 noundef 0, i32 noundef %i.mv) #12 ; 0 uses
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.mx = load i32, ptr @command_pid, align 4
  %i.my = call i32 @waitpid(i32 noundef %i.mx, ptr noundef nonnull %i.c, i32 noundef 2) #12
  %i.mz = call i32 @pthread_mutex_lock(ptr noundef nonnull @exit_flag_lock) #12 ; 2 uses
  %.not386480 = icmp eq i32 %i.mz, 0
  br i1 %.not386480, label %.lr.ph482, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge.backedge, %bb.gr
  %.lcssa = phi i32 [ %i.mz, %bb.gr ], [ %i.nj, %.critedge.backedge ]
  %i.na = tail call ptr @__errno_location() #14
  store i32 %.lcssa, ptr %i.na, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.main) #13
  unreachable

.lr.ph482:                                        ; preds = %bb.gr, %.critedge.backedge
  %i.nb = phi i32 [ %i.ni, %.critedge.backedge ], [ %i.my, %bb.gr ] ; 2 uses
  %i.nc = load i8, ptr @exit_flag, align 1, !range !19, !noundef !20
  %i.nd = call i32 @pthread_mutex_unlock(ptr noundef nonnull @exit_flag_lock) #12 ; 2 uses
  %.not387.a = icmp eq i32 %i.nd, 0
  br i1 %.not387.a, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph482
  %i.ne = tail call ptr @__errno_location() #14
  store i32 %i.nd, ptr %i.ne, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.gt:                                            ; preds = %.lr.ph482
  %i.nf = load i32, ptr %i.c, align 4
  %i.ng = and i32 %i.nf, 255
  %4 = icmp eq i32 %i.ng, 127
  br i1 %4, label %.critedge.backedge, label %5

5:                                                ; preds = %bb.gt
  %6 = icmp eq i32 %i.nb, -1                      ; 2 uses
  %7 = icmp eq i8 %i.nc, 0
  %8 = and i1 %6, %7
  br i1 %8, label %.critedge.backedge, label %bb.gu

.critedge.backedge:                               ; preds = %5, %bb.gt
  %i.nh = load i32, ptr @command_pid, align 4
  %i.ni = call i32 @waitpid(i32 noundef %i.nh, ptr noundef nonnull %i.c, i32 noundef 2) #12
  %i.nj = call i32 @pthread_mutex_lock(ptr noundef nonnull @exit_flag_lock) #12 ; 2 uses
  %.not386 = icmp eq i32 %i.nj, 0
  br i1 %.not386, label %.lr.ph482, label %.critedge._crit_edge, !llvm.loop !18

bb.gu:                                            ; preds = %5
  br i1 %6, label %bb.gv, label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  %i.nk = tail call ptr @__errno_location() #14
  %i.nl = load i32, ptr %i.nk, align 4
  %.not390 = icmp eq i32 %i.nl, 4
  br i1 %.not390, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.nm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 72), align 8
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.32, ptr noundef %i.nn) #12 ; 0 uses
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gu, %bb.gv, %bb.gw, %bb.go
  %.0252 = phi i32 [ -1, %bb.go ], [ -1, %bb.gw ], [ -1, %bb.gv ], [ %i.nb, %bb.gu ] ; 2 uses
  %.b = load i1, ptr @is_interactive, align 4
  br i1 %.b, label %bb.gy, label %.thread429

bb.gy:                                            ; preds = %bb.gx
  %i.np = call i32 @tcsetpgrp(i32 noundef 0, i32 noundef %.0254) #12 ; 0 uses
  br label %.thread429

.thread429:                                       ; preds = %bb.es, %bb.ej, %bb.ef, %bb.de, %bb.dn, %bb.ec, %bb.fa, %bb.gy, %bb.gx
  %.7 = phi ptr [ %i.fq, %bb.de ], [ null, %bb.ec ], [ %.6, %bb.gy ], [ %.6, %bb.gx ], [ %.3260, %bb.ef ], [ %.3260, %bb.fa ], [ %.2259, %bb.dn ], [ %.3260, %bb.ej ], [ %i.im, %bb.es ]
  %.1253 = phi i32 [ -1, %bb.de ], [ -1, %bb.ec ], [ %.0252, %bb.gy ], [ %.0252, %bb.gx ], [ -1, %bb.ef ], [ -1, %bb.fa ], [ -1, %bb.dn ], [ -1, %bb.ej ], [ -1, %bb.es ]
  %i.nq = call i32 @pthread_mutex_lock(ptr noundef nonnull @allocation_state_lock) #12 ; 2 uses
  %.not399.a = icmp eq i32 %i.nq, 0
  br i1 %.not399.a, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %.thread429
  %i.nr = tail call ptr @__errno_location() #14
  store i32 %i.nq, ptr %i.nr, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.ha:                                            ; preds = %.thread429
  %i.ns = load i32, ptr @allocation_state, align 4
  %.not400.a = icmp eq i32 %i.ns, 2
  br i1 %.not400.a, label %bb.hp, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.nt = call i32 @pthread_mutex_unlock(ptr noundef nonnull @allocation_state_lock) #12 ; 2 uses
  %.not401.a = icmp eq i32 %i.nt, 0
  br i1 %.not401.a, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.nu = tail call ptr @__errno_location() #14
  store i32 %i.nt, ptr %i.nu, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.hd:                                            ; preds = %bb.hb
  %i.nv = call i32 @pthread_mutex_lock(ptr noundef nonnull @my_job_id_lock) #12 ; 2 uses
  %.not402.a = icmp eq i32 %i.nv, 0
  br i1 %.not402.a, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.nw = tail call ptr @__errno_location() #14
  store i32 %i.nv, ptr %i.nw, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.hf:                                            ; preds = %bb.hd
  %i.nx = call i32 @get_log_level() #12
  %i.ny = icmp sgt i32 %i.nx, 2
  br i1 %i.ny, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.nz = load i32, ptr getelementptr inbounds nuw (i8, ptr @my_job_id, i64 8), align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef %i.nz) #12
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.oa = load i32, ptr %i.c, align 4
  %i.ob = call i32 @slurm_complete_job(ptr noundef nonnull @my_job_id, i32 noundef %i.oa) #12
  %.not403.a = icmp eq i32 %i.ob, 0
  br i1 %.not403.a, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.oc = tail call ptr @__errno_location() #14
  %i.od = load i32, ptr %i.oc, align 4
  %.not404.a = icmp eq i32 %i.od, 2021
  br i1 %.not404.a, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.oe = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.34, ptr noundef nonnull @my_job_id) #12 ; 0 uses
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hh, %bb.hi, %bb.hj
  %i.of = call i32 @pthread_mutex_unlock(ptr noundef nonnull @my_job_id_lock) #12 ; 2 uses
  %.not405.a = icmp eq i32 %i.of, 0
  br i1 %.not405.a, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.og = tail call ptr @__errno_location() #14
  store i32 %i.of, ptr %i.og, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.oh = call i32 @pthread_mutex_lock(ptr noundef nonnull @allocation_state_lock) #12 ; 2 uses
  %.not406.a = icmp eq i32 %i.oh, 0
  br i1 %.not406.a, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.oi = tail call ptr @__errno_location() #14
  store i32 %i.oh, ptr %i.oi, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.ho:                                            ; preds = %bb.hm
  store i32 2, ptr @allocation_state, align 4
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ha, %bb.ho
  %i.oj = call i32 @pthread_cond_broadcast(ptr noundef nonnull @allocation_state_cond) #12 ; 2 uses
  %.not407.a = icmp eq i32 %i.oj, 0
  br i1 %.not407.a, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.ok = tail call ptr @__errno_location() #14
  store i32 %i.oj, ptr %i.ok, align 4
  %i.ol = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 649, ptr noundef nonnull @__func__.main) #12 ; 0 uses
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.om = call i32 @pthread_mutex_unlock(ptr noundef nonnull @allocation_state_lock) #12 ; 2 uses
  %.not408.a = icmp eq i32 %i.om, 0
  br i1 %.not408.a, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.on = tail call ptr @__errno_location() #14
  store i32 %i.om, ptr %i.on, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.main) #13
  unreachable

bb.ht:                                            ; preds = %bb.hr
  call void @slurm_free_resource_allocation_response_msg(ptr noundef %.7) #12
  %.not409.a = icmp eq ptr %.0256, null
  br i1 %.not409.a, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @slurm_allocation_msg_thr_destroy(ptr noundef nonnull %.0256) #12
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.not410 = icmp eq i32 %.1253, -1
  br i1 %.not410, label %bb.ie, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.oo = load i32, ptr %i.c, align 4             ; 3 uses
  %i.op = and i32 %i.oo, 127                      ; 2 uses
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.or = lshr i32 %i.oo, 8
  %i.os = and i32 %i.or, 255
  br label %bb.ie

bb.hy:                                            ; preds = %bb.hw
  %i.ot = and i32 %i.oo, 255
  %i.ou = icmp eq i32 %i.ot, 127
  br i1 %i.ou, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  call void @salloc_sig_forward(i32 noundef 9) #12
  br label %bb.ie

bb.ia:                                            ; preds = %bb.hy
  %.not579 = icmp eq i32 %i.op, 127
  br i1 %.not579, label %bb.ie, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ov = call i32 @get_log_level() #12
  %i.ow = icmp sgt i32 %i.ov, 3
  br i1 %i.ow, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.ox = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opt, i64 72), align 8
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = load i32, ptr %i.c, align 4
  %i.pa = and i32 %i.oz, 127
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.35, ptr noundef %i.oy, i32 noundef %i.pa) #12
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %i.pb = load i32, ptr %i.c, align 4
  %i.pc = and i32 %i.pb, 127
  %switch.tableidx = add nsw i32 %i.pc, -1        ; 2 uses
  %i.pd = icmp ult i32 %switch.tableidx, 9
  br i1 %i.pd, label %switch.lookup, label %bb.ie

switch.lookup:                                    ; preds = %bb.id
  %i.pe = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.main, i64 %i.pe
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.ie

end_hunk_1
