Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/controller?download=true
inline.NumInlined: 31
inline.NumDeleted: 19
begin_hunk_0_@_open_ports:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.f ] ; 3 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1304), align 8
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = add i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i16
  %i.q = tail call i32 @slurm_init_msg_engine_port(i16 noundef zeroext %i.p) #18
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 48), align 8
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %i.q, ptr %i.s, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 40), align 8 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %.loopexit, !llvm.loop !17

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.w = tail call ptr @getenv(ptr noundef nonnull @.str.128) #18 ; 2 uses
  store ptr %i.w, ptr %i.a, align 8
  %i.x = tail call ptr @getenv(ptr noundef nonnull @.str.126) #18
  %i.y = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.x, ptr noundef null, i32 noundef 10) #18, !inline_history !0 ; 2 uses
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 40), align 8
  %sext = shl i64 %i.y, 32
  %i.aa = ashr exact i64 %sext, 32
  %i.ab = tail call ptr @slurm_xcalloc(i64 noundef %i.aa, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.65, i32 noundef 1955, ptr noundef nonnull @__func__._open_ports) #18
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 48), align 8
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 40), align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call ptr @slurm_xcalloc(i64 noundef %i.ad, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.65, i32 noundef 1957, ptr noundef nonnull @__func__._open_ports) #18
  store ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 56), align 8
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 40), align 8 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph33, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph33, %bb.g
  %i.ah = phi i32 [ %i.af, %bb.g ], [ %i.ap, %.lr.ph33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit

.lr.ph33:                                         ; preds = %bb.g, %.lr.ph33
  %i.ai = phi ptr [ %i.ao, %.lr.ph33 ], [ %i.w, %bb.g ]
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.lr.ph33 ], [ 0, %bb.g ] ; 2 uses
  %i.aj = call i64 @strtol(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef 10) #18
  %i.ak = trunc i64 %i.aj to i32
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 48), align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv44
  store i32 %i.ak, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  store ptr %i.ao, ptr %i.a, align 8
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 40), align 8 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next45, %i.aq
  br i1 %i.ar, label %.lr.ph33, label %._crit_edge, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %._crit_edge
  %i.as = phi i32 [ %i.ah, %._crit_edge ], [ %i.k, %bb.f ], [ %i.t, %.lr.ph ]
  %.not38 = icmp eq i32 %i.as, 0
  br i1 %.not38, label %._crit_edge37, label %.lr.ph36

._crit_edge37:                                    ; preds = %bb.j, %.loopexit
  %i.at = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @listeners) #18 ; 2 uses
  %.not26 = icmp eq i32 %i.at, 0
  br i1 %.not26, label %bb.l, label %bb.k

.lr.ph36:                                         ; preds = %.loopexit, %bb.j
  %.034 = phi i64 [ %i.bh, %bb.j ], [ 0, %.loopexit ] ; 4 uses
  %i.au = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.65, i32 noundef 1969, ptr noundef nonnull @__func__._open_ports) #18 ; 2 uses
  %i.av = trunc i64 %.034 to i32
  store i32 %i.av, ptr %i.au, align 4
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 48), align 8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.034
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = tail call i32 @http_switch_con_type() #18
  %i.ba = tail call i32 @http_switch_con_flags() #18
  %i.bb = or i32 %i.ba, 1536
  %i.bc = tail call i32 @conmgr_process_fd_listen(i32 noundef %i.ay, i32 noundef %i.az, ptr noundef null, ptr noundef nonnull @_open_ports.events, i32 noundef %i.bb, ptr noundef nonnull %i.au) #18 ; 2 uses
  switch i32 %i.bc, label %bb.i [
    i32 0, label %bb.j
    i32 1016, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph36
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.150, ptr noundef nonnull @__func__._open_ports) #19
  unreachable

bb.i:                                             ; preds = %.lr.ph36
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 48), align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.034
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = tail call ptr @slurm_strerror(i32 noundef %i.bc) #18
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__._open_ports, i32 noundef %i.bf, ptr noundef %i.bg) #19
  unreachable

bb.j:                                             ; preds = %.lr.ph36
  %i.bh = add nuw i64 %.034, 1                    ; 2 uses
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @listeners, i64 40), align 8
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp ult i64 %i.bh, %i.bj
  br i1 %i.bk, label %.lr.ph36, label %._crit_edge37, !llvm.loop !19

bb.k:                                             ; preds = %._crit_edge37
  %i.bl = tail call ptr @__errno_location() #20
  store i32 %i.at, ptr %i.bl, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__._open_ports) #19
  unreachable

bb.l:                                             ; preds = %._crit_edge37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_slurmctld_state_loc() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1432), align 8 ; 7 uses
  %i.b = call i32 @stat(ptr noundef %i.a, ptr noundef nonnull %0) #18
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @mkdir(ptr noundef %i.a, i32 noundef 493) #18
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.88, ptr noundef %i.a) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.89, ptr noundef %i.a) #19
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 61440
  %i.l = icmp eq i32 %i.k, 16384
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.90, ptr noundef %i.a) #19
  unreachable

bb.g:                                             ; preds = %.critedge
  %i.m = tail call i32 @access(ptr noundef %i.a, i32 noundef 7) #18
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.91, ptr noundef %i.a) #19
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_work_dir() unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1288), align 8 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 47
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = tail call ptr @xstrdup(ptr noundef nonnull %i.b) #18 ; 7 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 47) #22 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 0, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = tail call i32 @access(ptr noundef nonnull %i.e, i32 noundef 2) #18
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %bb.g, label %.thread11

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i32 @chdir(ptr noundef nonnull %i.e) #18
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread11, label %bb.h

.thread11:                                        ; preds = %bb.g, %bb.f
  %0 = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.264, ptr noundef nonnull %i.e) #18 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread

bb.h:                                             ; preds = %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread14

.thread:                                          ; preds = %bb.b, %bb.a, %.thread11
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1432), align 8
  %i.m = call i32 @access(ptr noundef %i.l, i32 noundef 2) #18
  %.not7 = icmp eq i32 %i.m, 0
  br i1 %.not7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1432), align 8
  %i.o = call i32 @chdir(ptr noundef %i.n) #18
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %.thread14

bb.j:                                             ; preds = %bb.i, %.thread
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1432), align 8
  %i.r = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.264, ptr noundef %i.q) #18 ; 0 uses
  %i.s = call i32 @access(ptr noundef nonnull @.str.265, i32 noundef 2) #18
  %.not8 = icmp eq i32 %i.s, 0
  br i1 %.not8, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = call i32 @chdir(ptr noundef nonnull @.str.265) #18
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.266) #18 ; 0 uses
  br label %.thread14

bb.m:                                             ; preds = %bb.k
  %i.w = call i32 @get_log_level() #18
  %i.x = icmp sgt i32 %i.w, 2
  br i1 %i.x, label %bb.n, label %.thread14

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.267) #18
  br label %.thread14

.thread14:                                        ; preds = %bb.h, %bb.i, %bb.l, %bb.n, %bb.m
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @test_core_limit() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_test_thread_limit() unnamed_addr #5 {
bb.a:
  %0 = alloca [1 x %struct.rlimit], align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.a = call i32 @getrlimit(i32 noundef 7, ptr noundef nonnull %0) #18
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.262) #18 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 16               ; 3 uses
  %.not = icmp ne i64 %i.d, -1
  %i.e = load i32, ptr @max_server_threads, align 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = icmp ult i64 %i.d, %i.f
  %or.cond = select i1 %.not, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nuw nsw i64 %i.d to i32
  store i32 %i.h, ptr @max_server_threads, align 4
  %i.i = call i32 @get_log_level() #18
  %i.j = icmp sgt i32 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr @max_server_threads, align 4 ; 2 uses
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.263, i32 noundef %i.k, i32 noundef %i.k) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  ret void
}

declare i32 @slurmscriptd_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @run_command_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @slurm_with_slurmdbd() local_unnamed_addr #2

declare void @init_job_conf() local_unnamed_addr #2

declare i32 @gethostname_short(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @gethostname(ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @cred_g_init() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_controller_index() unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 296), align 8 ; 2 uses
  %.not28 = icmp eq i32 %i.c, 0
  %.pre34 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 304), align 8 ; 2 uses
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.d = phi i32 [ %i.p, %bb.e ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.q, %bb.e ], [ %.pre34, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 288), align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @xstrcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 256), ptr noundef nonnull %i.g) #18
  %.not20 = icmp eq i32 %i.k, 0
  br i1 %.not20, label %.loopexit.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 304), align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @xstrcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 192), ptr noundef %i.n) #18
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %.loopexit.loopexit, label %._crit_edge32

._crit_edge32:                                    ; preds = %bb.d
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 304), align 8
  %.pre33 = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 296), align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge32, %.lr.ph, %bb.b
  %i.p = phi i32 [ %i.d, %.lr.ph ], [ %i.d, %bb.b ], [ %.pre33, %._crit_edge32 ] ; 2 uses
  %i.q = phi ptr [ %i.e, %.lr.ph ], [ %i.e, %bb.b ], [ %.pre, %._crit_edge32 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = zext i32 %i.p to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.t = phi ptr [ %.pre34, %bb.a ], [ %i.q, %bb.e ]
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call ptr @xstrchr(ptr noundef %i.u, i32 noundef 44) #18
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 304), align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @xstrdup(ptr noundef %i.x) #18 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8
  %i.z = call ptr @strtok_r(ptr noundef %i.y, ptr noundef nonnull @.str.184, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not1524 = icmp eq ptr %i.z, null
  br i1 %.not1524, label %.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.f, %bb.h
  %.025 = phi ptr [ %i.ac, %bb.h ], [ %i.z, %bb.f ] ; 2 uses
  %i.aa = call i32 @xstrcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 256), ptr noundef nonnull %.025) #18
  %.not16 = icmp eq i32 %i.aa, 0
  br i1 %.not16, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph27
  %i.ab = call i32 @xstrcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @slurmctld_config, i64 192), ptr noundef nonnull %.025) #18
  %.not17 = icmp eq i32 %i.ab, 0
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not15 = icmp eq ptr %i.ac, null
  br i1 %.not15, label %.thread, label %.lr.ph27, !llvm.loop !21

.thread:                                          ; preds = %bb.h, %bb.f
  call void @slurm_xfree(ptr noundef nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph27, %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.d, %bb.c
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge, %.thread, %bb.i
  %.1 = phi i32 [ 0, %bb.i ], [ -1, %.thread ], [ -1, %._crit_edge ], [ %i.ad, %.loopexit.loopexit ]
  ret i32 %.1
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare i32 @select_g_init() local_unnamed_addr #2

declare i32 @gres_init() local_unnamed_addr #2

declare i32 @preempt_g_init() local_unnamed_addr #2

declare i32 @acct_gather_conf_init() local_unnamed_addr #2

declare i32 @jobacct_gather_init() local_unnamed_addr #2

declare i32 @job_submit_g_init(i1 noundef zeroext) local_unnamed_addr #2

declare i32 @prep_g_init(ptr noundef) local_unnamed_addr #2

declare i32 @node_features_g_init() local_unnamed_addr #2

declare i32 @mpi_g_daemon_init() local_unnamed_addr #2

declare i32 @metrics_g_init() local_unnamed_addr #2
end_hunk_0
